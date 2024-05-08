const Teams = require("../Models/Teams");
const Products = require("../Models/Products");
const moment = require("moment");

exports.createOneTeam = async (req, res) => {
  try {
    const now = moment();
    const toInsert = {
      name: req.body.name,
      imageUrl: `${req.protocol}://${req.get("host")}/Images-Teams/${
        req.file.filename
      }`,
      timestamp: now.unix(),
    };

    const teams = await Teams.findAll();

    await Teams.insertOne(toInsert);
    return res.status(200).json({ create: true, data: teams });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.editOneTeam = async (req, res) => {
  try {
    const toSet = {
      name: req.body.name,
    };

    await Teams.update(toSet, { idTeam: req.body.idTeam });
    const teams = await Teams.findAll();

    return res.status(200).json({ edit: true, data: teams });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.deleteOneTeam = async (req, res) => {
  try {
    await Teams.delete({ idTeam: req.params.idTeam });
    const teams = await Teams.findAll();

    return res.status(200).json({ delete: true, data: teams });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getAllTeams = async (req, res) => {
  try {
    const teams = await Teams.findAll();

    return res.status(200).json({ data: teams });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getOneTeam = async (req, res) => {
  try {
    const team = await Teams.findOne({ idTeam: req.params.idTeam });
    const products = await Products.find({ idTeam: req.params.idTeam });

    console.log(products);

    return res.status(200).json({ find: true, team: team, result: products });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};