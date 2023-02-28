FROM node:18.14-alpine
WORKDIR /dist/src/app
RUN npm cache clean --force
COPY . .

ARG MY_VAR=test_2
ENV MY_VAR ${MY_VAR}


RUN npm install
RUN npm run build
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
