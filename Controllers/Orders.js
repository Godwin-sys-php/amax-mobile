const moment = require("moment");
const Orders = require("../Models/Orders");
const OrdersItem = require("../Models/OrdersItem");
const Products = require("../Models/Products");

async function ordersInLoadingCustomer(idCustomer) {
  const orders = await Orders.customQuery(
    "SELECT * FROM orders WHERE idCustomer = ? AND status != 'done' ORDER BY idOrder DESC",
    [idCustomer]
  );
  let arr = [];
  for (let index in orders) {
    const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
    arr.push({ ...orders[index], items: items });
  }
  return arr;
}

function financial(x) {
  return Number(Number.parseFloat(x).toFixed(2));
}

exports.createOrder = async (req, res) => {
  try {
    console.log("order");
    const now = moment();
    const toInsert = {
      idCustomer: req.customer.idCustomer,
      orderId: "lqdfjqsdf",
      nameOfCustomer: req.customer.name,
      genderOfCustomer: req.customer.gender,
      phoneNumberOfCustomer: req.customer.phoneNumber,
      commune: req.commune.name,
      address: req.body.address,
      reference: req.body.reference,
      comment: req.body.comment,
      invoiceUrl: null,
      creationDate: now.unix(),
      lastUpdate: now.unix(),
      total: financial(req.total),
      deliveryFees: financial(req.commune.deliveryFees),
      serviceFees: financial(req.total * 0.03),
      whyRefused: null,
      status: "queued",
      deliveryTimestamp: req.body.deliveryTimestamp,
      slot: req.body.slot,
    };
    const result = await Orders.insertOne(toInsert);
    let bulk2Insert = [];
    for (let index in req.items) {
      const el = req.items[index];
      bulk2Insert.push([
        null,
        result.insertId,
        req.customer.idCustomer,
        el.idSupplier,
        el.idProduct,
        el.idSize,
        el.nameOfProduct,
        el.nameOfSize,
        el.price,
        el.number,
        el.name
      ]);
    }
    await OrdersItem.customQuery("INSERT INTO ordersItem VALUES ?", [
      bulk2Insert,
    ]);


    const orders = await Orders.customQuery(
      "SELECT * FROM orders WHERE status != 'done'",
      []
    );
    let arr = [];
    for (let index in orders) {
      const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
      let arr2 = [];
      for (let index in items) {
        const product = await Products.findOne({
          idProduct: items[index].idProduct,
        });
        arr2.push({ ...items[index], productInfo: product });
      }
      arr.push({ ...orders[index], items: arr2 });
    }

    req.app
      .get("socketService")
      .broadcastEmiter("new-order", arr);
    return res.status(200).json({ create: true });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.cancelOrder = async (req, res) => {
  try {
    if (req.order.status === "queued") {
      await Orders.delete({ idOrder: req.params.idOrder });
      await OrdersItem.delete({ idOrder: req.params.idOrder });
      return res.status(200).json({ delete: true });
    }
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.acceptOrder = async (req, res) => {
  try {
    if (req.order.status === "queued" || req.order.status === "refused") {
      await Orders.update(
        { status: "accepted" },
        { idOrder: req.params.idOrder }
      );

      const orders = await Orders.customQuery(
        "SELECT * FROM orders WHERE status != 'done'",
        []
      );
      let arr = [];
      for (let index in orders) {
        const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
        let arr2 = [];
        for (let index in items) {
          const product = await Products.findOne({
            idProduct: items[index].idProduct,
          });
          arr2.push({ ...items[index], productInfo: product });
        }
        arr.push({ ...orders[index], items: arr2 });
      }

      const ordersCustomer = await ordersInLoadingCustomer(req.order.idCustomer);
      req.app
        .get("socketService")
        .broadcastEmiter(req.order.idCustomer, ordersCustomer);

      return res.status(200).json({ update: true, orders: arr, });
    }
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.orderOut = async (req, res) => {
  try {
    if (req.order.status === "accepted") {
      await Orders.update({ status: "out" }, { idOrder: req.params.idOrder });

      const orders = await Orders.customQuery(
        "SELECT * FROM orders WHERE status != 'done'",
        []
      );
      let arr = [];
      for (let index in orders) {
        const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
        let arr2 = [];
        for (let index in items) {
          const product = await Products.findOne({
            idProduct: items[index].idProduct,
          });
          arr2.push({ ...items[index], productInfo: product });
        }
        arr.push({ ...orders[index], items: arr2 });
      }

      const ordersCustomer = await ordersInLoadingCustomer(req.order.idCustomer);
      req.app
        .get("socketService")
        .broadcastEmiter(req.order.idCustomer, ordersCustomer);

      return res.status(200).json({ update: true, orders: arr });
    }
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.declineOrder = async (req, res) => {
  try {
    if (req.order.status === "queued" || req.order.status === "accepted" && req.body.whyRefused) {
      await Orders.update(
        { status: "refused", whyRefused: req.body.whyRefused },
        { idOrder: req.params.idOrder }
      );

      const orders = await Orders.customQuery(
        "SELECT * FROM orders WHERE status != 'done'",
        []
      );
      let arr = [];
      for (let index in orders) {
        const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
        let arr2 = [];
        for (let index in items) {
          const product = await Products.findOne({
            idProduct: items[index].idProduct,
          });
          arr2.push({ ...items[index], productInfo: product });
        }
        arr.push({ ...orders[index], items: arr2 });
      }

      const ordersCustomer = await ordersInLoadingCustomer(req.order.idCustomer);
      req.app
        .get("socketService")
        .broadcastEmiter(req.order.idCustomer, ordersCustomer);

      return res.status(200).json({ update: true, orders: arr });
    }
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.closeOrder = async (req, res) => {
  try {
    if (req.order.status === "accepted" || req.order.status === "refused") {
      await Orders.update(
        { status: "closed" },
        { idOrder: req.params.idOrder }
      );

      const orders = await Orders.customQuery(
        "SELECT * FROM orders WHERE status != 'done'",
        []
      );
      let arr = [];
      for (let index in orders) {
        const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
        let arr2 = [];
        for (let index in items) {
          const product = await Products.findOne({
            idProduct: items[index].idProduct,
          });
          arr2.push({ ...items[index], productInfo: product });
        }
        arr.push({ ...orders[index], items: arr2 });
      }

      const ordersCustomer = await ordersInLoadingCustomer(req.order.idCustomer);
      req.app
        .get("socketService")
        .broadcastEmiter(req.order.idCustomer, ordersCustomer);

      return res.status(200).json({ update: true, orders: arr });
    }
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getNotDoneOrders = async (req, res) => {
  try {
    const orders = await Orders.customQuery(
      "SELECT * FROM orders WHERE status != 'done'",
      []
    );
    let arr = [];
    for (let index in orders) {
      const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
      let arr2 = [];
      for (let index in items) {
        const product = await Products.findOne({
          idProduct: items[index].idProduct,
        });
        arr2.push({ ...items[index], productInfo: product });
      }
      arr.push({ ...orders[index], items: arr2 });
    }
    return res.status(200).json({ find: true, result: arr });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.getOrdersCustomer = async (req, res) => {
  try {
    const orders = await Orders.customQuery(
      "SELECT * FROM orders WHERE idCustomer = ? ORDER BY idOrder DESC",
      [req.params.idCustomer]
    );
    let arr = [];
    for (let index in orders) {
      const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
      arr.push({ ...orders[index], items: items });
    }
    return res.status(200).json({ find: true, result: arr });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getOrdersInLoadingCustomer = async (req, res) => {
  try {
    const orders = await Orders.customQuery(
      "SELECT * FROM orders WHERE idCustomer = ? AND status != 'done' ORDER BY idOrder DESC",
      [req.params.idCustomer]
    );
    let arr = [];
    for (let index in orders) {
      const items = await OrdersItem.find({ idOrder: orders[index].idOrder });
      arr.push({ ...orders[index], items: items });
    }
    return res.status(200).json({ find: true, result: arr });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.getOneOrder = async (req, res) => {
  try {
    const order = await Orders.findOne({ idOrder: req.params.idOrder });
    const items = await OrdersItem.find({ idOrder: req.params.idOrder });
    let arr = [];
    for (let index in items) {
      const product = await Products.findOne({
        idProduct: items[index].idProduct,
      });
      arr.push({ ...items[index], info: product });
    }

    return res
      .status(200)
      .json({ find: true, result: { ...order, items: arr } });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};
