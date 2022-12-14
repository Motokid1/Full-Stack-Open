FROM node:16

WORKDIR /usr/src/app

COPY . .

ARG REACT_APP_BACKEND_URL
ENV REACT_APP_BACKEND_URL=$REACT_APP_BACKEND_URL

RUN npm install

CMD ["npm", "start"]