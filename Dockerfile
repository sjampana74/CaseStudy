# Set the base image.
FROM node:14.15.1 
WORKDIR /home/syam_jampana/node_modules
ENV PATH /home/syam_jampana/node_modules/.bin:$PATH
COPY package.json /var/lib/jenkins/workspace/reactapp1/
COPY package-lock.json /var/lib/jenkins/workspace/reactapp1/
#COPY package*.json /home/syam_jampana/node_modules/
#COPY package*.json /var/lib/jenkins/workspace/reactapp1/
#RUN npm install
COPY . /var/lib/jenkins/workspace/reactapp1/
EXPOSE 3000
CMD ["npm", "start"]
#ENTRYPOINT /home/syam_jampana/dockerchallenge/casestudy1/entrypoint.sh
