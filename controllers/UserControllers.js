import User from "../models/UserModel.js";

export const getUsers = async (req, res) => {
  try {
    const response = await User.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getUserByName = async (req, res) => {
  try {
    const response = await User.findOne({
      where: {
        username: req.body.username,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createUser = async (req, res) => {
  try {
    await User.create(req.body);
    res.status(201).json({ msg: "User Created" });
  } catch (error) {
    console.log(error.message);
  }
};

export const updateUser = async (req, res) => {
  try {
    await User.update(req.body, {
      where: {
        username: req.params.username,
      },
    });
    res.status(200).json({ msg: "User Updated" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteUser = async (req, res) => {
  try {
    await User.destroy(req.body, {
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json({ msg: "User Deleted" });
  } catch (error) {
    console.log(error.message);
  }
};

export const getUserLogin = async (req, res) => {
  try {
    var response = await User.count({
      where: {
        username: req.body.username,
        password: req.body.password,
      },
    });
    if (response == 0) {
      await User.create(req.body);
      response = await User.findOne({
        where: {
          username: req.body.username,
          password: req.body.password,
        },
      });
    } else {
      response = await User.findOne({
        where: {
          username: req.body.username,
          password: req.body.password,
        },
      });
    }
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const updateBalance = async (req, res) => {
  try {
    await User.update(req.body, {
      where: {
        username: req.params.username,
      },
    });

    var response = await User.findOne({
      where: {
        username: req.body.username,
      },
    });
    var responsejson = {
      username: response.username,
      balance: response.balance,
    };
    res.status(200).json(responsejson);
  } catch (error) {
    console.log(error.message);
  }
};
