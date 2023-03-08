# Specify the base image
FROM node:14.17-alpine

# Create a working directory
WORKDIR /app

# Clone the GitHub repository
RUN apk --no-cache add git && \
    git clone https://github.com/SHAIK2300/experiment2.git .

# Install dependencies
RUN npm install

# Build the React application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the React application
CMD ["npm", "start"]
