import express from "express";
import {
  getUsers,
  getUserByName,
  createUser,
  updateUser,
  deleteUser,
  getUserLogin,
  updateBalance,
} from "../controllers/UserControllers.js";
import {
  getInvoice,
  getInvoiceId,
  createInvoice,
} from "../controllers/InvoiceControllers.js";

const router = express.Router();
//Users
router.get("/users", getUsers);
router.get("/users/:id", getUserByName);
router.post("/users", createUser);
router.patch("/users/:id", updateUser);
router.delete("/users/:id", deleteUser);
///Login
router.post("/login", getUserLogin);
//UpdateBalance
router.patch("/users/balance/:username", updateBalance);
//Car

//Leasing

///Invoice
router.get("/invoice", getInvoice);
router.get("/invoice/:id_invoice", getInvoiceId);
router.post("/invoice", createInvoice);

//Transaksi

//Payment

export default router;
