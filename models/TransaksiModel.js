import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Transaksi = db.define(
  "transaksi",
  {
    username: DataTypes.STRING,
    id_leasing: DataTypes.STRING,
    id_mobil: DataTypes.INTEGER,
    term: DataTypes.INTEGER,
    harga: DataTypes.INTEGER,
    status: DataTypes.STRING,
  },
  {
    freezeTableName: true,
  }
);

export default Transaksi;

(async () => {
  await db.sync();
})();
