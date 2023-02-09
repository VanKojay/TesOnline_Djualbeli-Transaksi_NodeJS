import { Sequelize } from "sequelize";
import db1 from "../config/Database.js";

const { DataTypes } = Sequelize;

const Invoice = db1.define(
  "invoice",
  {
    id_invoice: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
    // id_invoice: DataTypes.STRING,
    id_transaksi: DataTypes.STRING,
    term: DataTypes.INTEGER,
    jumlahTagihan: DataTypes.INTEGER,
    jumlahPembayaran: DataTypes.INTEGER,
    sisaPembayaran: DataTypes.INTEGER,
    tanggalInvoice: DataTypes.DATE,
    tanggalTerakhirBayar: DataTypes.DATE,
    status: DataTypes.STRING,
    // createdAt: DataTypes.DATE,
    // updatedAt: DataTypes.DATE,
    deletedAt: DataTypes.DATE,
  },
  {
    freezeTableName: true,
  }
);
// Invoice.removeAttribute("id");

export default Invoice;

(async () => {
  await db1.sync();
})();
