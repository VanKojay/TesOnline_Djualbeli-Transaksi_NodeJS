import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Payment = db.define(
  "payment",
  {
    id_payment: DataTypes.INTEGER,
    id_invoice: DataTypes.STRING,
    jumlahBayar: DataTypes.INTEGER,
    jumlahTagihan: DataTypes.INTEGER,
    sisaPembayaran: DataTypes.INTEGER,
  },
  {
    freezeTableName: true,
  }
);

export default Payment;

(async () => {
  await db.sync();
})();
