FROM node:8.12.0
# Create app directory
RUN mkdir -p /myapp
WORKDIR /myapp
# Bundle app source
COPY . /myapp
RUN npm install
EXPOSE 3003
CMD [ "npm", "start" ]