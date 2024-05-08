const router = require("express").Router();

const limits = require('../Middlewares/Limits/limits');

const authCustomer = require("../Middlewares/Auth/authCustomer");
const authCustomerMostSecure = require("../Middlewares/Auth/authCustomerMostSecure");
const authCustomerForOrder = require("../Middlewares/Auth/authCustomerForOrder");
const validatorOrder = require("../Middlewares/Validators/validatorOrder");
const authMedium = require("../Middlewares/Auth/authMedium");
const existCustomer = require("../Middlewares/Exists/existCustomer");
const existOrder = require("../Middlewares/Exists/existOrder");

const orderCtrl = require("../Controllers/Orders");

router.post("/", limits(1000, 2), authCustomer, validatorOrder, orderCtrl.createOrder); // Rajoute une commande par un client enregistré

router.put("/:idOrder/accept", limits(1000, 2), authMedium, existOrder, orderCtrl.acceptOrder); // Accepte une commande par un utilisateur
router.put("/:idOrder/decline", authMedium, existOrder, orderCtrl.declineOrder); // Refuse une commande par un utilisateur
router.put("/:idOrder/out", authMedium, existOrder, orderCtrl.orderOut); // Marque une commande comme sortie une par un utilisateur
router.put("/:idOrder/close", limits(1000, 2), authMedium, existOrder, orderCtrl.closeOrder); // Clot une commande par un utilisateur
router.put("/:idOrder/cancel", limits(1000, 2), authCustomer, existOrder, orderCtrl.cancelOrder); // Annule une commande par un lcient avant que celle ci ne soit accepté

router.get("/special/not-done", limits(1000, 2), authMedium, orderCtrl.getNotDoneOrders); // Récupère les commandes non terminées par un utilisateur
router.get("/customer/:idCustomer", limits(1000, 2), existCustomer, authCustomerMostSecure, orderCtrl.getOrdersCustomer); // Récupère toutes les commandes d'un client
router.get("/customer/:idCustomer/inLoading", limits(1000, 2), existCustomer, authCustomerMostSecure, orderCtrl.getOrdersInLoadingCustomer); // Récupère toutes les commandes d'un client
router.get("/:idOrder", limits(1000, 2), existOrder, authCustomerForOrder, orderCtrl.getOneOrder); // Récupère une commande d'un client


module.exports = router;