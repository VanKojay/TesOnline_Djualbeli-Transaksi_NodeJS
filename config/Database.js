import { Sequelize } from "sequelize";

const db = new Sequelize("djualbeli", "root", "", {
  host: "localhost",
  dialect: "mysql",
  define: {
    timestamps: true,
  },
  logging: true,
});

export default db;
