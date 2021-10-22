#! /bin/sh

echo "APP_ENV: ${APP_ENV}"

if [ ${APP_ENV} = ${APP_ENV_DEVELOPMENT} ]; then
    npm install --production=false
else
    npm install --production=true
    npm install typescript @types/react
    npm run build
    npm uninstall typescript @types/react
fi