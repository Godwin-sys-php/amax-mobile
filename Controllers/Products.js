const moment = require("moment");
const Orders = require("../Models/Orders");
const Products = require("../Models/Products");
const Countries = require("../Models/Countries");
const Sizes = require("../Models/Sizes");
const Selections = require("../Models/Selections");
const SelectionsItem = require("../Models/SelectionsItem");
const jwt = require("jsonwebtoken");

require("dotenv").config();

exports.createOneProduct = async (req, res) => {
  try {
    const now = moment();
    const toInsert = {
      idCategorie: req.body.idCategorie,
      idSupplier: 1,
      name: req.body.name,
      nameOfCategorie: req.categorie.name,
      unit: req.body.unit,
      description: req.body.description,
      dosageForm: req.body.dosageForm,
      activeSubstance: req.body.activeSubstance,
      dosage: req.body.dosage,
      manufacturer: req.body.manufacturer,
      imageUrl: `${req.protocol}://${req.get("host")}/Images-Products/${
        req.file.filename
      }`,
      price: req.body.price,
      available: req.body.available,
      requirePrescription: req.body.requirePrescription,
      timestamp: now.unix(),
    };

    await Products.insertOne(toInsert);
    return res.status(200).json({ create: true });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.editOneProduct = async (req, res) => {
  try {
    const toSet = {
      idCategorie: req.body.idCategorie,
      idSupplier: req.body.idSupplier,
      name: req.body.name,
      nameOfCategorie: req.categorie.name,
      unit: req.body.unit,
      description: req.body.description,
      dosageForm: req.body.dosageForm,
      activeSubstance: req.body.activeSubstance,
      dosage: req.body.dosage,
      manufacturer: req.body.manufacturer,
      imageUrl: req.productImage,
      price: req.body.price,
      available: req.body.available,
      requirePrescription: req.body.requirePrescription,
    };

    await Products.update(toSet, { idProduct: req.params.idProduct });
    return res.status(200).json({ update: true });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.checkCart = async (req, res) => {
  try {
    const products = req.body.products;
    let arr2Return = [];
    let arrOfEdit = [];
    // for (let index in products) {
    //   const product = await Products.findOne({
    //     idProduct: products[index].idProduct,
    //   });
    //   if (!product || product.available === 0) {
    //     arrOfEdit.push({ action: "REMOVE", index: index });
    //   } else {
    //     let product2check = products[index];
    //     if (
    //       JSON.stringify({ ...product, quantity: product2check.quantity }) ===
    //       JSON.stringify(product2check)
    //     ) {
    //       console.log(products[index].quantity);
    //       arr2Return.push(products[index]);
    //     } else {
    //       arr2Return.push({ ...product, quantity: products[index].quantity });
    //       arrOfEdit.push({ action: "EDIT", index: index });
    //     }
    //   }
    // }
    const communes = await Products.customQuery("SELECT * FROM communes", []);
    return res
      .status(200)
      .json({
        checked: true,
        edited: arrOfEdit.length > 0,
        edit: arrOfEdit,
        newCart: products,
        communes: communes,
      });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.search = async (req, res) => {
  try {
    const query = `%${req.query.query}%`;

    const products = await Products.customQuery(
      "SELECT * FROM products WHERE name LIKE ? OR nameOfCountry LIKE ? OR nameOfTeam LIKE ? OR gender LIKE ? OR type LIKE ? OR championship LIKE ? OR brand LIKE ? OR years LIKE ?",
      [query, query, query, query, query, query, query, query]
    );

    console.log(products);

    return res.status(200).json({ find: true, result: products });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.getAllProducts = async (req, res) => {
  try {
    const products = await Products.customQuery("SELECT * FROM products", []);
    return res.status(200).json({ find: true, result: products });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getHomePage = async (req, res) => {
  try {
    const selections = await Selections.customQuery(
      "SELECT * FROM selections",
      []
    );
    // for (let index in selections) {
    //   let productsArr = [];
    //   const items = await SelectionsItem.find({
    //     idSelection: selections[index].idSelection,
    //   });
    //   for (let i in items) {
    //     const product = await Products.findOne({
    //       idProduct: items[i].idProduct,
    //     });
    //     productsArr.push(product);
    //   }
    //   arr.push({ ...selections[index], items: productsArr });
    // }
    // let arrCustomSelection = [];
    // if (req.headers.authorization) {
    //   const token = req.headers.authorization.split(" ")[1];
    //   const decodedToken = jwt.verify(token, process.env.TOKEN_CUSTOMER);
    //   const customSelections = await Orders.customQuery(
    //     "SELECT DISTINCT idProduct FROM ordersItem WHERE idCustomer = ? ORDER BY idItem DESC LIMIT 8",
    //     [decodedToken.idCustomer]
    //   );
    //   console.log(customSelections);
    //   for (let index in customSelections) {
    //     const productData = await Products.findOne({
    //       idProduct: customSelections[index].idProduct,
    //     });
    //     arrCustomSelection.push(productData);
    //   }
    //   return res
    //     .status(200)
    //     .json({
    //       find: true,
    //       result: arr,
    //       customSelections: arrCustomSelection,
    //     });
    // }
    return res.status(200).json({ find: true, result: selections });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};


exports.postHomePage = async (req, res) => {
  try {
    console.log(req.body);
    console.log("hey");
    const {token, platform} = req.body;

    if (token !== null && platform !== null) {
      const checkToken = await Selections.customQuery("SELECT * FROM notificationTokens WHERE token = ?", [token]);
  
      if (checkToken.length === 0) {
        await Selections.customQuery("INSERT INTO notificationTokens SET token = ?, platform = ?, timestamp = ?", [token, platform, moment().unix()]);
      }  
    }
    const selections = await Selections.customQuery(
      "SELECT * FROM selections",
      []
    );
    return res.status(200).json({ find: true, result: selections, });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};


exports.getProductsOfOneSelection = async (req, res) => {
  try {
    const selectionData = await Selections.findOne({ idSelection: req.params.idSelection });
    const items = await SelectionsItem.find({
      idSelection: req.params.idSelection,
    });
    let arr = [];
    for (let index in items) {
      const product = await Products.findOne({
        idProduct: items[index].idProduct,
      });
      arr.push(product);
    }
    return res.status(200).json({ find: true, result: arr, selection: selectionData });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
}

exports.getOneProduct = async (req, res) => {
  try {
    const sizes = await Sizes.find({ idProduct: req.params.idProduct });
    return res.status(200).json({ find: true, result: req.product, sizes, });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.deleteOneProduct = async (req, res) => {
  try {
    await Products.delete({ idProduct: req.params.idProduct });
    return res.status(200).json({ delete: true });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};
