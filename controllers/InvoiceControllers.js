import Invoice from "../models/InvoiceModel.js";

export const getInvoice = async (req, res) => {
  try {
    const response = await Invoice.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getInvoiceId = async (req, res) => {
  try {
    const response = await Invoice.findOne({
      where: {
        id_invoice: req.params.id_invoice,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createInvoice = async (req, res) => {
  try {
    await Invoice.create(req.body);
    res.status(201).json({ msg: "Invoice Created" });
  } catch (error) {
    console.log(error.message);
  }
};
