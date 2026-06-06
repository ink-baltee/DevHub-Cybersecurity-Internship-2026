const crypto = require("crypto");
const winston = require("winston");

const logger = winston.createLogger({
    level: "warn",
    format: winston.format.combine(
        winston.format.timestamp(),
        winston.format.printf(({ timestamp, level, message }) => {
            return `${timestamp} [${level.toUpperCase()}]: ${message}`;
        })
    ),
    transports: [
        new winston.transports.Console(),
        new winston.transports.File({ filename: "security.log" })
    ]
});

const API_KEY = crypto.randomBytes(32).toString("hex");
console.log(`API Key generated: ${API_KEY}`);

const apiKeyAuth = (req, res, next) => {
    const apiKey = req.headers["x-api-key"];
    if (!apiKey || apiKey !== API_KEY) {
        logger.warn(`Unauthorized API access attempt - IP: ${req.ip}`);
        return res.status(401).json({ error: "Unauthorized - Invalid or missing API key" });
    }
    next();
};

module.exports = { apiKeyAuth };