import express from "express";
import { loginController } from "../controllers/login.controllers.js";

const router = express.Router()

router.post("/", loginController.login)


export default router