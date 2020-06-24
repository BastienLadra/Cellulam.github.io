FROM starefossen/ruby-node:latest

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN gem install sass
COPY . ./
EXPOSE 3000

# start app
CMD ["grunt"]