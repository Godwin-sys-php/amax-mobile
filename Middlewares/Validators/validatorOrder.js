const Products = require("../../Models/Products");

module.exports = async (req, res, next) => {
  try {
    if (
      req.body.idCommune &&
      req.body.address.length >= 3 &&
      req.body.address.length <= 300 &&
      req.body.reference.length >= 0 &&
      req.body.reference.length <= 300 &&
      req.body.comment.length >= 0 &&
      req.body.comment.length <= 300 &&
      req.body.deliveryTimestamp &&
      req.body.slot &&
      typeof req.body.items === "object" &&
      req.body.items.length >= 1
    ) {
      let items2Send = [];
      let total2Send = 0;
      const commune = await Products.customQuery(
        "SELECT * FROM communes WHERE idCommune = ?",
        [req.body.idCommune]
      );
      console.log(commune);
      if (commune.length === 0) {
        return res.status(400).json({ invalidForm: true });
      }
      req.commune = commune[0];
      for (let index in req.body.items) {
        const el = req.body.items[index];
        if (el.idProduct && el.price && el.sizeData) {
          const product = await Products.findOne({ idProduct: el.idProduct });
          if (!product) {
            return res.status(400).json({ invalidForm: true });
          } else {
            total2Send += el.price;
            items2Send.push({
              idSupplier: product.idSupplier,
              idProduct: product.idProduct,
              nameOfProduct: product.name,
              price: el.price,
              number: el.realNumber ? el.realNumber : null,
              name: el.realName ? el.realName : null,
              idSize: el.sizeData.idSize,
              nameOfSize: el.sizeData.name,
            });
            continue;
          }
        } else {
          return res.status(400).json({ invalidForm: true });
        }
      }
      req.items = items2Send;
      req.total = total2Send;
      return next();
    } else {
      return res.status(400).json({ invalidForm: true });
    }
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};
