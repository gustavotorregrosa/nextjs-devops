FROM node:18.14-alpine
WORKDIR /dist/src/app
RUN npm cache clean --force
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
