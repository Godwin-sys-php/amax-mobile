const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const moment = require("moment");
const Users = require("../Models/Users");

require("dotenv").config();

exports.login = (req, res) => {
  Users.findOne({ username: req.body.username })
    .then((user) => {
      console.log(req.body.password);
      if (!user) {
        res.status(404).json({ username: false, password: false });
      } else {
        bcrypt
          .compare(req.body.password, user.password)
          .then((valid) => {
            if (!valid) {
              res.status(401).json({ username: true, password: false });
            } else {
              res.status(200).json({
                idUser: user.idUser,
                token: jwt.sign({ idUser: user.idUser }, process.env.TOKEN, {
                  expiresIn: "2d",
                }),
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

exports.createOneUser = async (req, res) => {
  try {
    const now = moment();
    const password = await bcrypt.hash(req.body.password, 10);
    const toInsert = {
      name: req.body.name,
      username: req.body.username,
      level: req.body.level,
      password: password,
      timestamp: now.unix(),
    };
    await Users.insertOne(toInsert);
    return res.status(200).json({ create: true });
  } catch (error) {
    return res.status(500).json({ error: true });
  }
};

exports.editOneUser = async (req, res) => {
  try {
    console.log(req.body);
    const admins = await Users.find({ level: 1 });
    if (admins.length === 1 && req.body.level !== 1 && admins[0].idUser == req.params.idUser) {
      return res.status(200).json({ lastAdmin: true });
    }
    console.log("here");
    if (req.body.password.length >= 8) {
      console.log("here");
      console.log("here");
      const password = await bcrypt.hash(req.body.password, 10);
      const toUpdate = {
        name: req.body.name,
        usermane: req.body.pseudo,
        level: req.body.level,
        password: password,
      };

      await Users.update(toUpdate, { idUser: req.params.idUser });
      return res.status(200).json({ update: true });
    } else {
      const toUpdate = {
        name: req.body.name,
        username: req.body.username,
        level: req.body.level,
      };

      await Users.update(toUpdate, { idUser: req.params.idUser });
      return res.status(200).json({ update: true });
    }
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: true });
  }
};

exports.getAllUsers = async(req, res) => {
  try {
    const users = await Users.customQuery("SELECT idUser, name, username, level, timestamp FROM users", []);
    return res.status(200).json({ find: true, result: users });
  } catch (error) {
    return res.status(500).json({ error: true, })
  }
};

exports.getOneUser = (req, res) => {
  Users.findOne({ idUser: req.params.idUser })
    .then(user => {
      res.status(200).json({ find: true, result: {...user, password: null} });
    })
    .catch(error => {
      res.status(500).json({ error: true, });
    });
};

exports.deleteOneUser = async (req, res) => {
  const users = await Users.customQuery("SELECT * FROM users", []);
  const admins = await Users.customQuery("SELECT * FROM users WHERE level = 1", []);
  if (users.length === 1 || (admins.length === 1 && req.searchedUser.level === 1)) {
    return users.length === 1 ? res.status(400).json({ lastUser: true, }) : res.status(400).json({ lastAdmin: true, });
  } else {

    try {
      await Users.delete({ idUser: req.params.idUser, })
      return res.status(200).json({ delete: true });
    } catch (error) {
      return res.status(500).json({ error: true, });
    }
  }
}

