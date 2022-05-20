FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app 
# this run is used to run linux commands in the image

COPY . /d/app

# set default dir so that next commands executes in /d/app dir
WORKDIR /d/app

# will execute npm install in /d/app because of WORKDIR
RUN npm install

# no need for /d/app/server.js because of WORKDIR
CMD ["node", "server.js"]

