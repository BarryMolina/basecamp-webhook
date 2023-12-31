FROM node:18
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
COPY . .
# Build app
EXPOSE 3000
CMD ["npm", "start"]
