# Set the base image.
FROM node:14.15.1 
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#COPY package.json /usr/src/app/
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

#Add packages needed to build native dependencies
RUN apk add --no-cache --virtual .gyp \
python \
make \
g++ \
git \
&& npm install --quit && npm cache clean --force \
&& apk del .gyp
RUN apk add --no-cache vim curl
COPY . .
#WORKDIR /home/syam_jampana/node_modules
#COPY package*.json ./
#RUN npm install
#COPY . .
#ENV PATH /home/syam_jampana/dockerchallenge/casestudy1/node_modules/.bin:$PATH
EXPOSE 3000
CMD ["npm", "start"]
#ENTRYPOINT /home/syam_jampana/dockerchallenge/casestudy1/entrypoint.sh
