const ProductsCategorie = require("../../Models/ProductsCategorie");

module.exports = async (req, res, next) => {
  try {
    if (req.body.name.length >= 2 && req.body.name.length <= 150) {
      const check = req.method === "POST" ? await ProductsCategorie.findOne({ name: req.body.name }) : await ProductsCategorie.customQuery("SELECT * FROM productsCategorie WHERE name = ? AND idCategorie != ?", [req.body.name, req.params.idCategorie]);
      if (check.length > 0) {
        return res.status(400).json({ categorieAlreadyExist: true, });
      }
      return next();
    } else {
      return res.status(400).json({ invalidForm: true, });
    }
  } catch (error) {
    return res.status(500).json({ error: true, });
  }
};