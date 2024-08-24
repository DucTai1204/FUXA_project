# Use Node.js as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Clone the FUXA repository
RUN git clone https://github.com/frangoteam/FUXA.git .

# Install the necessary dependencies
RUN npm install

# Build the FUXA application
RUN npm run build

# Expose the FUXA port
EXPOSE 1881

# Run the FUXA server
CMD ["npm", "start"]
