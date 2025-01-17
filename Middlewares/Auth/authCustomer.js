require('dotenv').config();

const jwt= require('jsonwebtoken');
const Customers = require('../../Models/Customers');

module.exports = (req, res, next) => {
  try {
    console.log("hefqljsdf");
    
    const token = req.headers.authorization.split(' ')[1];

    const decodedToken = jwt.verify(token, process.env.TOKEN_CUSTOMER);
      Customers.findOne({ idCustomer: decodedToken.idCustomer })
        .then(customer => {
          if (customer && customer.verified === 1) {
            req.customer = customer
            next();
          } else {
            console.log("error");
            res.status(400).json({ invalidToken: true });
          }
        })
        .catch(error => {
          console.log(error);
          res.status(500).json({ error: true, errorMessage: error });
        });
  } catch (error) {
    console.log(error);
    
    res.status(500).json({ error: true, errorMessage: error });
  }
};