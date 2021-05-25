# Set the base image.
FROM node:14.15.1 
#COPY package.json package-lock.json /home/syam_jampana/dockerchallenge/casestudy1/node_modules
RUN npm install
#ENV PATH /home/syam_jampana/dockerchallenge/casestudy1/node_modules/.bin:$PATH
EXPOSE 3000
CMD ["npm", "start"]
#ENTRYPOINT /home/syam_jampana/dockerchallenge/casestudy1/entrypoint.sh
