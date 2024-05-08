const Customers = require("../../Models/Customers");

module.exports = async (req, res, next) => {
  try {
    if (req.method === "POST") {
      if ((req.body.name.length >= 2 && req.body.name.length <= 150) && (req.body.phoneNumber.length >= 10) && (req.body.password.length >= 8) && (req.body.gender === "M" || req.body.gender === "F" || req.body.gender === "X")) {
        const check = await Customers.findOne({ phoneNumber: req.body.phoneNumber, });
        if (check) {
          return res.status(400).json({ phoneNumberExist: true, });
        }
        next();
      } else {
        return res.status(400).json({ invalidForm: true, });
      }
    } else {
      if ((req.body.name.length >= 2 && req.body.name.length <= 150) && (req.body.phoneNumber.length >= 10)) {
        if (req.body.password !== null && req.body.password.length < 8) {
          return res.status(400).json({ invalidForm: true, });
        }
        const check = await Customers.findOne({ phoneNumber: req.body.phoneNumber, });
        if (check) {
          return res.status(400).json({ phoneNumberExist: true, });
        }
        next();
      } else {
        return res.status(400).json({ invalidForm: true, });
      }
    }
  } catch (error) {
    return res.status(500).json({ error: true, });
  }
};