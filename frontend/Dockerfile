FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install

# Copy all project files to the container
COPY . . 

RUN npm run build  # This should be after copying the source files

EXPOSE 3000
CMD ["npm", "start"]