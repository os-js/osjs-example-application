FROM osjs/osjs

WORKDIR /usr/src/osjs

RUN npm i -g watch-cli

COPY ./package.json ./src/packages/osjs-example-application/package.json
RUN cd ./src/packages/osjs-example-application && npm i

COPY ./dev/start.sh ./start.sh
RUN chmod +x ./start.sh

COPY . ./src/packages/osjs-example-application/
RUN cd ./src/packages/osjs-example-application && npm run build

RUN npm run package:discover

CMD ["./start.sh"]