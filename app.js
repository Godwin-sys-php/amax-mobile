const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const xss = require("xss");
const _ = require("lodash");
const fileUpload = require("express-fileupload");
const path = require("path");

const usersRoutes = require("./Routes/Users");
const productsRoutes = require("./Routes/Products");
const customersRoutes = require("./Routes/Customers");
const ordersRoutes = require("./Routes/Orders");
const countriesRoutes = require("./Routes/Countries");
const teamsRoutes = require("./Routes/Teams");
const SocketService = require("./Utils/socket");
const moment = require("moment");

const app = express();

const server = require("http").Server(app);
app.set("socketService", new SocketService(server));

app.use(cors());
app.use(fileUpload({ createParentPath: true }));
app.use(bodyParser.urlencoded({ limit: "50mb", extended: true }));
app.use(bodyParser.json({ limit: "50mb", extended: true }));

app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content, Accept, Content-Type, Authorization"
  );
  res.setHeader(
    "Access-Control-Allow-Methods",
    "GET, POST, PUT, DELETE, PATCH, OPTIONS"
  );
  next();
});

app.use((req, res, next) => {
  if (Object.keys(req.body).length > 0) {
    for (let index in req.body) {
      if (_.isString(req.body[index])) {
        req.body[index] = req.body[index].trim();
        req.body[index] = xss(req.body[index]);
      }
    }
    next();
  } else {
    next();
  }
});

app.use(
  "/Images-Products",
  express.static(path.join(__dirname, "Images-Products"))
);

app.use(
  "/Images-Selections",
  express.static(path.join(__dirname, "Images-Selections"))
);

app.use("/Images-Teams", express.static(path.join(__dirname, "Images-Teams")));

app.use(
  "/Images-Countries",
  express.static(path.join(__dirname, "Images-Countries"))
);

app.use("/users", usersRoutes);
app.use("/products", productsRoutes);
app.use("/customers", customersRoutes);
app.use("/orders", ordersRoutes);
app.use("/countries", countriesRoutes);
app.use("/teams", teamsRoutes);

app.get("/currentTimestamp", (req, res) => {
  const timestamp = Math.floor(Date.now() / 1000); // Timestamp en secondes
  const date = moment.unix(timestamp).utcOffset(1, "hours");

  let jourDeLaSemaine = date.day();
  let heureDuJour = date.hour();

  // Si la commande est passée après 17h, elle est considérée pour le jour suivant
  if (heureDuJour >= 17) {
    date.add(1, "days");
    jourDeLaSemaine = date.day(); // Mettre à jour le jour de la semaine
  }

  // Ignorer les commandes passées le dimanche
  if (jourDeLaSemaine === 0) {
    date.add(1, "days");
    jourDeLaSemaine = date.day(); // Mettre à jour le jour de la semaine
  }

  // Ajouter des jours en fonction du jour de la semaine
  let joursAajouter = 1;
  switch (jourDeLaSemaine) {
    case 1: // Lundi
      joursAajouter = 2; // Livraison Mercredi
      break;
    case 2: // Mardi
      joursAajouter = 3; // Livraison Jeudi
      break;
    case 3: // Mercredi
      joursAajouter = 4; // Livraison Vendredi
      break;
    case 4: // Jeudi
      joursAajouter = 5; // Livraison Samedi
      break;
    case 5: // Vendredi
    case 6: // Samedi
      joursAajouter = 4; // Livraison Mardi
      break;
    case 0: // Dimanche
      joursAajouter = 3; // Livraison Mercredi
      break;
  }

  // Ajouter le nombre de jours nécessaire à la livraison
  date.add(joursAajouter, "days");

  // Formater la date de livraison
  const dateLivraison = date.locale("fr").format("dddd, DD MMMM YYYY");

  return res.json({ timestamp: date.unix(), dateLivraison: dateLivraison });
});

server.listen(4200, function () {
  console.debug(`listening on port 4200`);
});
