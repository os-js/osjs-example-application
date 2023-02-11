APP_NAME="osjs-example-application"

(cd ./src/packages/$APP_NAME && npm run watch) \
& (npx nodemon --ignore 'dist/**/*' --watch package-lock.json --watch src/server --watch package.json --watch src/packages src/server/index.js) \
& (watch -p "./src/packages/$APP_NAME/metadata.json" -c "npm run package:discover")