const db = require('../Utils/db');
const _ = require('lodash');

class Suppliers extends db {
  constructor() {
    super();
  }

  insertOne(toInsert) {
    return new Promise((resolve, reject) => {
      this.db.query(
        "INSERT INTO suppliers SET ?", toInsert,
        (error, results, fields) => {
          if (error) reject(error);
          resolve(results);
        }
      );
    });
  }

  findOne(params) {
    return new Promise((resolve, reject) => {
      this.db.query(
        "SELECT * FROM suppliers WHERE ?", params,
        (error, results, fields) => {
          if (error) reject(error);
          if (results.length < 1 || _.isNull(results) || _.isUndefined(results)) {
            resolve(null);
          } else {
            resolve(results[0]);
          }
        }
      );
    });
  }

  find(params) {
    return new Promise((resolve, reject) => {
      this.db.query(
        "SELECT * FROM suppliers WHERE ?", params,
        (error, results, fields) => {
          if (error) reject(error);
          resolve(results);
        }
      );
    });
  }

  findAll() {
    return new Promise((resolve, reject) => {
      this.db.query(
        "SELECT * FROM suppliers",
        (error, results, fields) => {
          if (error) reject(error);
          resolve(results);
        }
      );
    });
  }

  update(toSet, params) {
    return new Promise((resolve, reject) => {
      this.db.query(
        "UPDATE suppliers SET ? WHERE ?", [toSet, params],
        (error, results, fields) => {
          if (error) reject(error);
          resolve(results);
        }
      );
    });
  }

  delete(params) {
    return new Promise((resolve, reject) => {
      this.db.query(
        "DELETE FROM suppliers WHERE ?", params,
        (error, results, fields) => {
          if (error) reject(error);
          resolve(results);
        }
      );
    });
  }

  customQuery(query, params) {
    return new Promise((resolve, reject) => {
      this.db.query(
        query, params,
        (error, results, fields) => {
          if (error) reject(error);
          resolve(results);
        }
      );
    });
  }
}

module.exports = new Suppliers();