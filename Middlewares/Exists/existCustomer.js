const Customers = require('../../Models/Customers');

module.exports = (req, res, next) => {
  Customers.findOne({ idCustomer: req.params.idCustomer })
    .then((customer) => {
      req.customer = customer;
      customer ? next() : res.status(400).json({ customerNotFound: true });
    })
    .catch((error) => {
      res.status(500).json({ error: true, errorMessage: error });
    });
};