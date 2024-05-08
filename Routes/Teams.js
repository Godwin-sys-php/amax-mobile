const limits = require('../Middlewares/Limits/limits');

const router = require('express').Router();

const teamsCtrl = require('../Controllers/Teams');

router.get("/", limits(1000, 2), teamsCtrl.getAllTeams); // Récupère tout les pays
router.get("/:idTeam", limits(1000, 2), teamsCtrl.getOneTeam); // Récupère un pays

module.exports = router;