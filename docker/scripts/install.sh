#!/bin/bash

echo "--- Config ---"
echo "$M2SETUP_DB_HOST"
echo "$M2SETUP_DB_NAME"
echo "$M2SETUP_DB_USER"
echo "$M2SETUP_DB_PASSWORD"
echo "$M2SETUP_BASE_URL"

/app/bin/magento setup:install --backend-frontname $M2SETUP_BACKEND_FRONTNAME \
    --db-host $M2SETUP_DB_HOST \
    --db-name $M2SETUP_DB_NAME \
    --db-user $M2SETUP_DB_USER \
    --db-password $M2SETUP_DB_PASSWORD \
    --base-url $M2SETUP_BASE_URL \
    --timezone "Europe/Paris" \
    --currency "EUR" \
    --admin-user $M2SETUP_ADMIN_USER \
    --admin-password $M2SETUP_ADMIN_PASSWORD \
    --admin-email $M2SETUP_ADMIN_EMAIL \
    --admin-firstname $M2SETUP_ADMIN_FIRSTNAME \
    --admin-lastname $M2SETUP_ADMIN_LASTNAME \
    --language "fr_FR" \
    --use-rewrites=1

/app/bin/magento deploy:mode:set developer
php -d memory-limit=2G /app/bin/magento sampledata:deploy
/app/bin/magento set:up
/app/bin/magento cache:clean