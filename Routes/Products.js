const limits = require('../Middlewares/Limits/limits');

const router = require('express').Router();

const productCtrl = require('../Controllers/Products');

const authAdmin = require('../Middlewares/Auth/authAdmin');
const authMedium = require('../Middlewares/Auth/authAdmin');
const validatorProduct = require('../Middlewares/Validators/validatorProduct');
const uploadProductImage = require('../Middlewares/Uploads/uploadProductImage');
const existProduct = require('../Middlewares/Exists/existProduct');

router.post("/", limits(50, 2), authMedium, validatorProduct, uploadProductImage, productCtrl.createOneProduct); // Rajoute un produit au catalogue
router.post("/home", limits(1000, 2), productCtrl.postHomePage); // Récupère la page d'accueil
router.post("/check-cart", limits(50, 2), productCtrl.checkCart); // Vérifie la forme du panier

router.put('/:idProduct', limits(50, 2), authMedium, existProduct, validatorProduct, uploadProductImage, productCtrl.editOneProduct); // Modifie un produit du catalogue

router.get("/", limits(1000, 2), productCtrl.getAllProducts); // Récupère tout les produits du catalogue
router.get("/search", limits(1000, 2), productCtrl.search); // Cherche un produit
router.get("/home", limits(1000, 2), productCtrl.getHomePage); // Récupère la page d'accueil
router.get("/one/:idProduct", limits(1000, 2), existProduct, productCtrl.getOneProduct); // Récupère un produit du catalogue
router.get("/selection/:idSelection", limits(1000, 2), productCtrl.getProductsOfOneSelection); // Récupère les produits d'une sélection
router.delete("/:idProduct", limits(50, 2), authAdmin);

module.exports = router;