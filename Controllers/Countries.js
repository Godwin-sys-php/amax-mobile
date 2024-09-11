const Countries = require("../Models/Countries");
const Teams = require("../Models/Teams");
const Products = require("../Models/Products");
const moment = require("moment");

exports.createOneCountry = async (req, res) => {
  try {
    const now = moment();
    const toInsert = {
      name: req.body.name,
      imageUrl: `${req.protocol}://${req.get("host")}/Images-Countries/${
        req.file.filename
      }`,
      timestamp: now.unix(),
    };

    const countries = await Countries.findAll();

    await Countries.insertOne(toInsert);
    return res.status(200).json({ create: true, data: countries, });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
}

exports.editOneCountry = async (req, res) => {
  try {
    const toSet = {
      name: req.body.name,
    };

    await Countries.update(toSet, { idCountry: req.body.idCountry });
    const countries = await Countries.findAll();

    return res.status(200).json({ edit: true, data: countries, });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
}

exports.deleteOneCountry = async (req, res) => {
  try {
    await Countries.delete({ idCountry: req.params.idCountry });
    const countries = await Countries.findAll();

    return res.status(200).json({ delete: true, data: countries, });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
}

exports.getAllCountries = async (req, res) => {
  try {
    const countries = await Countries.findAll();

    return res.status(200).json({ result: countries, find: true, });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
}

exports.getOneCountry = async (req, res) => {
  try {
    const country = await Countries.find({ idCountry: req.params.idCountry });
    const products = await Products.find({ idCountry: req.params.idCountry });

    return res.status(200).json({ find: true, country: country[0], result: products,});
  } catch (error) {
    return res.status(500).json({ error: true });
  }
}