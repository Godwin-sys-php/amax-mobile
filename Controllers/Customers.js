const moment = require("moment");
const Customers = require("../Models/Customers");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

require("dotenv").config();

exports.login = (req, res) => {
  Customers.findOne({ phoneNumber: req.body.phoneNumber })
    .then((customer) => {
      console.log(customer);
      console.log(req.body.password);
      if (!customer) {
        res.status(404).json({ phoneNumber: false, password: false });
      } else {
        bcrypt
          .compare(req.body.password, customer.password)
          .then(async (valid) => {
            if (!valid) {
              res.status(401).json({ phoneNumber: true, password: false });
            } else {
              if (customer.verified) {
                res.status(200).json({
                  logged: true,
                  verified: true,
                  idCustomer: customer.idCustomer,
                  customer: customer,
                  token: jwt.sign(
                    { idCustomer: customer.idCustomer },
                    process.env.TOKEN_CUSTOMER,
                    {
                      expiresIn: "200000d",
                    }
                  ),
                });
              } else {
                await Customers.update(
                  {
                    codeSended: Math.floor(
                      1000 + Math.random() * 9000
                    ).toString(),
                  },
                  { idCustomer: customer.idCustomer }
                );
                return res
                  .status(200)
                  .json({
                    logged: true,
                    verified: false,
                    idCustomer: customer.idCustomer,
                  });
              }
            }
          })
          .catch((error) => {
            console.log(error);
            res.status(500).json({ error: true, errorMessage: error });
          });
      }
    })
    .catch((error) => {
      console.log(error);
      res.status(500).json({ error: true, errorMessage: error });
    });
};

exports.deleteAccount = (req, res) => {
  Customers.findOne({ phoneNumber: req.body.phoneNumber })
    .then((customer) => {
      console.log(customer);
      console.log(req.body.password);
      if (!customer) {
        res.status(404).json({ phoneNumber: false, password: false });
      } else {
        bcrypt
          .compare(req.body.password, customer.password)
          .then(async (valid) => {
            if (!valid) {
              res.status(401).json({ phoneNumber: true, password: false });
            } else {
              await Customers.delete({ idCustomer: customer.idCustomer });
                res.status(200).json({
                  deleted: true,
                });
            }
          })
          .catch((error) => {
            console.log(error);
            res.status(500).json({ error: true, errorMessage: error });
          });
      }
    })
    .catch((error) => {
      console.log(error);
      res.status(500).json({ error: true, errorMessage: error });
    });
};

exports.createOneCustomer = async (req, res) => {
  try {
    const now = moment();
    const password = await bcrypt.hash(req.body.password, 10);
    const toInsert = {
      name: req.body.name,
      gender: req.body.gender,
      phoneNumber: req.body.phoneNumber,
      password: password,
      verified: true,
      codeSended: Math.floor(1000 + Math.random() * 9000).toString(),
      timestamp: now.unix(),
    };

    const result = await Customers.insertOne(toInsert);

    const user = await Customers.findOne({ idCustomer: result.insertId });

    return res.status(200).json({
      create: true,
      idCustomer: req.body.idUser,
      verified: true,
      customer: user,
      token: jwt.sign(
        { idCustomer: user.idCustomer },
        process.env.TOKEN_CUSTOMER,
        {
          expiresIn: "200000d",
        }
      ),
    });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.forgotPassword = async (req, res) => {
  try {
    const customer = await Customers.customQuery(
      "SELECT * FROM customers WHERE phoneNumber = ?",
      [req.body.phoneNumber]
    );
    if (customer.length === 0) {
      return res.status(400).json({ cantFindCustomer: true });
    }
    const backup = Math.floor(100000 + Math.random() * 900000).toString();
    console.log("BACKUP: ", backup);
    const encryptedBackup = await bcrypt.hash(backup, 10);
    await Customers.update(
      {
        password: encryptedBackup,
      },
      { idCustomer: customer[0].idCustomer }
    );
    return res.status(200).json({ changed: true });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.resendCode = async (req, res) => {
  try {
    await Customers.update(
      {
        codeSended: Math.floor(1000 + Math.random() * 9000).toString(),
      },
      { idCustomer: req.body.idCustomer }
    );
    return res.status(200).json({ resended: true });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.verifyAccount = async (req, res) => {
  try {
    console.log(req.body);
    const user = await Customers.customQuery(
      "SELECT * FROM customers WHERE idCustomer = ? AND codeSended = ?",
      [req.body.idUser, req.body.code]
    );
    if (user.length === 0) {
      return res.status(200).json({ incorrect: true });
    } else {
      await Customers.update(
        {
          verified: true,
        },
        { idCustomer: req.body.idUser }
      );
      return res.status(200).json({
        verified: true,
        idCustomer: req.body.idUser,
        customer: user[0],
        token: jwt.sign(
          { idCustomer: user[0].idCustomer },
          process.env.TOKEN_CUSTOMER,
          {
            expiresIn: "200000d",
          }
        ),
      });
    }
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.editOneCustomer = async (req, res) => {
  try {
    if (req.body.password !== null) {
      const password = await bcrypt.hash(req.body.password, 10);
      const toSet = {
        name: req.body.name,
        password: password,
      };

      await Customers.update(toSet, { idCustomer: req.params.idCustomer });
      return res.status(200).json({ update: true });
    } else {
      const toSet = {
        name: req.body.name,
      };

      await Customers.update(toSet, { idCustomer: req.params.idCustomer });
      return res.status(200).json({ update: true });
    }
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getAllCustomers = async (req, res) => {
  try {
    const customers = await Customers.customQuery(
      "SELECT idCustomer, name, phoneNumber, verified, codeSended, timestamp FROM customers",
      []
    );
    return res.status(200).json({ find: true, result: customers });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.getOneCustomer = async (req, res) => {
  try {
    const customer = await Customers.findOne({
      idCustomer: req.params.idCustomer,
    });
    return res
      .status(200)
      .json({ find: true, result: { ...customer, password: undefined } });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};
