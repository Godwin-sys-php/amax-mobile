const limits = require('../Middlewares/Limits/limits');

const router = require('express').Router();

const countriesCtrl = require('../Controllers/Countries');

router.get("/", limits(1000, 2), countriesCtrl.getAllCountries); // Récupère tout les pays
router.get("/:idCountry", limits(1000, 2), countriesCtrl.getOneCountry); // Récupère un pays

module.exports = router;