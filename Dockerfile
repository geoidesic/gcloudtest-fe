FROM nginx

WORKDIR /usr/share/nginx/html

# Install app dependencies
RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get -y install nodejs

COPY package.json /usr/share/nginx/html
RUN npm install


COPY index.html /usr/share/nginx/html


