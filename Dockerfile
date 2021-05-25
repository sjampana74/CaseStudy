# Set the base image.
FROM node:14.15.1 
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]
EXPOSE 3000
#ENTRYPOINT /home/syam_jampana/dockerchallenge/casestudy1/entrypoint.sh
