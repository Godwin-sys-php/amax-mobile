require('dotenv').config();

const jwt= require('jsonwebtoken');
const Customers = require('../../Models/Customers');

module.exports = (req, res, next) => {
  try {
    const token = req.headers.authorization.split(' ')[1];

    const decodedToken = jwt.verify(token, process.env.TOKEN_CUSTOMER);

    if (req.params.idCustomer == decodedToken.idCustomer) {
      Customers.findOne({ idCustomer: req.params.idCustomer })
        .then(customer => {
          if (customer && customer.verified === 1) {
            req.customer = customer;
            next();
          } else {
            res.status(400).json({ invalidToken: true });
          }
        })
        .catch(error => {
          res.status(500).json({ error: true, errorMessage: error });
        });
    } else {
      res.status(400).json({ invalidToken: true });
    }
  } catch (error) {
    res.status(500).json({ error: true, errorMessage: error });
  }
};