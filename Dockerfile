FROM public.ecr.aws/docker/library/node:16-alpine3.13

#Nuevo cambio 2

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

USER node
CMD [ "npm", "start" ]