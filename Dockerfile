FROM nginx

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get -y install nodejs

COPY package.json /app
RUN npm install

# Bundle app source
COPY . /app


