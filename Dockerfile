FROM node:4.4
MAINTAINER Gayatri S Ajith <gayatri@schogini.com>
ENV REDIS_HOST=redis
EXPOSE 8080
RUN npm install -g nodemon
RUN apt-get update && apt-get install -y nano curl wget
COPY server.js .
CMD ["nodemon", "-L", "server.js"]
#CMD ["node", "server.js"]
