FROM node:current-alpine

# build front end

COPY back /back

COPY front /front

WORKDIR /front

RUN npm i && npm run-script build && mv ./build/* ../back/public

WORKDIR /back

RUN npm i 

# run start

CMD npm run-script start