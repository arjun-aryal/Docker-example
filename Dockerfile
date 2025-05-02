FROM node

RUN mkdir /app
# working dir
WORKDIR /app

# copy package.json and package-lock.json?
COPY package*.json /app

# install dependencies 
RUN npm install

# copy app
COPY . /app

#expose port
EXPOSE 5050

#run app
CMD [ "npm","start" ]
