import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Car = db.define(
  "car",
  {
    brandname: DataTypes.STRING,
    GroupModelName: DataTypes.INTEGER,
    ModelName: DataTypes.INTEGER,
    Year: DataTypes.INTEGER,
    Price: DataTypes.INTEGER,
  },
  {
    freezeTableName: true,
  }
);

export default Car;

(async () => {
  await db.sync();
})();
