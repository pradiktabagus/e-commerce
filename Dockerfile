FROM node:16

#create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#isntall dependencies
COPY package*.json .
COPY yarn*.lock .
RUN yarn install

#copying
COPY . .

#BUILDING Image
RUN yarn build
EXPOSE 3000

#running app
CMD ["yarn", "dev"]