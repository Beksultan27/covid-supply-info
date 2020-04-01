require('dotenv').config();

const nextConfig = {
	publicRuntimeConfig: {
		apiUrl: process.env.API_URL,
		mapKey: process.env.MAP_KEY,
		recaptchaSiteKey: process.env.RECAPTCHA_SITE_KEY,
		recaptchaSecretKey: process.env.RECAPTCHA_SECRET_KEY,
	},
};

module.exports = nextConfig;
