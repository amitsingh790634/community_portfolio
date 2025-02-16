
#pull a base image that gives all required tools and libraries
FROM node:18-alpine

# create a folder where he app code will be stored
WORKDIR /app

#Copy the source code from your HOST machine to your container 
COPY . . 

#install requiremt files 
RUN npm install && npm run build

# given Expose port and this given by developer
EXPOSE 3000

# run the application
CMD ["npm", "run","dev"]
