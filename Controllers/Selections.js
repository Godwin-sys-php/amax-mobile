const moment = require("moment");
const Selections = require("../Models/Selections");
const SelectionsItem = require("../Models/SelectionsItem");

exports.createSelection = async (req, res) => {
  try {
    const now = moment();
    const toInsert = {
      idUser: req.user.idUser,
      nameOfUser: req.user.name,
      name: req.body.name,
      timestamp: now.unix(),
    };
    await Selections.insertOne(toInsert);
    return res.status(200).json({ create: true, });
  } catch (error) {
    return res.status(500).json({ error: true, });
  }
}

exports.addProductToSelection = async (req, res) => {
  try {
    const toInsert = {
      idSelection: req.params.idSelection,
      idProduct: req.body.idProduct,
    };
    await SelectionsItem.insertOne(toInsert);
    return res.status(200).json({ create: true, });
  } catch (error) {
    return res.status(500).json({ error: true, });
  }
}

exports.deleteOneSelection = async (req, res) => {
  try {
    await Selections.delete({ idSelection: req.params.idSelection });
    await SelectionsItem.delete({ idSelection: req.params.idSelection });
    return res.status(200).json({ delete: true, });
  } catch (error) {
    return res.status(500).json({ error: true, });
  }
}

exports.deleteOneProductSelection = async (req, res) => {
  try {
    await SelectionsItem.delete({ idSelectionItem: req.params.idSelectionItem });
    return res.status(200).json({ delete: true, });
  } catch (error) {
    return res.status(500).json({ error: true, });
  }
}