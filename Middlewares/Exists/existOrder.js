const Orders = require('../../Models/Orders');

module.exports = (req, res, next) => {
  Orders.findOne({ idOrder: req.params.idOrder })
    .then((order) => {
      req.order = order;
      order ? next() : res.status(400).json({ orderNotFound: true });
    })
    .catch((error) => {
      res.status(500).json({ error: true, errorMessage: error });
    });
};