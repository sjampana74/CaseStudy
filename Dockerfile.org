# Set the base image.
FROM node:14.15.1 
WORKDIR /home/syam_jampana/node_modules
COPY package*.json ./
RUN npm install
COPY . .
#ENV PATH /home/syam_jampana/dockerchallenge/casestudy1/node_modules/.bin:$PATH
EXPOSE 3000
CMD ["npm", "start"]
#ENTRYPOINT /home/syam_jampana/dockerchallenge/casestudy1/entrypoint.sh
