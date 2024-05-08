const ProductsCategorie = require('../../Models/ProductsCategorie');

module.exports = (req, res, next) => {
  ProductsCategorie.findOne({ idCategorie: req.params.idCategorie })
    .then((categorie) => {
      req.categorie = categorie;
      categorie ? next() : res.status(400).json({ categorieNotFound: true });
    })
    .catch((error) => {
      res.status(500).json({ error: true, errorMessage: error });
    });
};