FROM node:12-alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./package.json ./
RUN npm install
COPY . .

# Default command
CMD ["npm", "start"]