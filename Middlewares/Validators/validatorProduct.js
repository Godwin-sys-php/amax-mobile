const Products = require("../../Models/Products");
const Countries = require("../../Models/Countries");
const Teams = require("../../Models/Teams");

module.exports = async (req, res, next) => {
  try {
    console.log(req.body);
    req.body.price = Number(req.body.price);
    req.body.available = JSON.parse(req.body.available);
    req.body.canEditName = JSON.parse(req.body.canEditName);
    req.body.canEditNumber = JSON.parse(req.body.canEditNumber);

    console.log(req.body);
    if (
      req.body.idCategorie &&
      req.body.name.length >= 2 &&
      req.body.name.length <= 150 &&

      typeof req.body.price === "number" &&
      req.body.price > 0 &&
      req.body.price &&

      typeof req.body.available === "boolean" &&
      typeof req.body.canEditName === "boolean" &&
      typeof req.body.canEditNumber === "boolean" &&

      req.body.gender.length >= 2 &&
      req.body.gender.length <= 150 &&

      req.body.championship.length >= 2 &&
      req.body.championship.length <= 300 &&

      req.body.type.length >= 2 &&
      req.body.type.length < 100 &&

      req.body.years.length >= 2 &&
      req.body.years.length < 100 &&

      req.body.brand.length >= 2 &&
      req.body.brand.length < 100
    ) {

      const country = await Countries.findOne({ idCountry: req.body.idCountry });
      if (!country) {
        return res.status(400).json({ countryNotFound: true });
      }

      const team = await Teams.findOne({ idTeam: req.body.idTeam });
      if (!team) {
        return res.status(400).json({ teamNotFound: true });
      }


      const product =
        req.method === "POST"
          ? await Products.findOne({ name: req.body.name })
          : await Products.customQuery(
              "SELECT * FROM products WHERE name = ? AND idProduct != ?",
              [req.body.name, req.params.idProduct]
            );
      if (product) {
        return res.status(400).json({ productAlreadyExist: true });
      }

      return next();
    } else {
      return res.status(400).json({ invalidForm: true });
    }
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};
