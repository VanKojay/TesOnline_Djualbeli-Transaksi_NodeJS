import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Leasing = db.define(
  "leasing",
  {
    LeasingName: DataTypes.STRING,
    Rates: DataTypes.FLOAT,
    Terms: DataTypes.INTEGER,
  },
  {
    freezeTableName: true,
  }
);

export default Leasing;

(async () => {
  await db.sync();
})();
