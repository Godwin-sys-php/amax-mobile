const router = require('express').Router();

const limits = require('../Middlewares/Limits/limits');

const existCustomer = require('../Middlewares/Exists/existCustomer');
const validatorCustomer = require('../Middlewares/Validators/validatorCustomer');
const authCustomerMostSecure = require('../Middlewares/Auth/authCustomerMostSecure');

const customerCtrl = require('../Controllers/Customers');
const authAdmin = require('../Middlewares/Auth/authAdmin');

router.post('/login', limits(50, 15), customerCtrl.login); // Connecte un client
router.post('/delete', limits(50, 15), customerCtrl.deleteAccount); // Connecte un client
router.post('/sign-up', limits(50, 15), validatorCustomer, customerCtrl.createOneCustomer); // Crée un client
router.post('/verify', limits(50, 15), customerCtrl.verifyAccount); // Vérifie un client
router.post('/resend', limits(5, 1), customerCtrl.resendCode); // Renvoie le otp
router.post('/forgot-password', limits(15, 1), customerCtrl.forgotPassword); // Renvoie le otp

router.put('/:idCustomer', limits(5, 15), authCustomerMostSecure, existCustomer, validatorCustomer, customerCtrl.editOneCustomer); // Modifie un client

router.get('/', limits(8000, 15), authAdmin, customerCtrl.getAllCustomers); // Récupère tout les clients
router.get('/:idUser', limits(8000, 15), existCustomer, authCustomerMostSecure, customerCtrl.getOneCustomer); // Récupère un client

module.exports = router;