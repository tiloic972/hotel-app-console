FROM node:alpine
WORKDIR /usr/src/app/
COPY ./src/package.json /usr/src/app/
RUN npm install --quiet
RUN npm install -g nodemon --quiet
COPY ./src /usr/src/app/
EXPOSE 9090
CMD ["npm", "start"]