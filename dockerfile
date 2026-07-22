# buleprint for creating image 
# FROM node:20-alpine

# COPY ./backend .

# RUN npm install 
# node moudles folder deleted
#execute during building

# CMD [ "node", "server.js" ]
# docker build . -t <-name->
# docker run <-name->
# CMD during docker run <-name->
# docker run -p 4000:3000 <-name->
# -----

# Build the Frontend [dist folder]
# Copy the dist folder content in Backend/public folder
FROM node:20-alpine as frontend-builder

COPY ./Frontend /app

WORKDIR /app

RUN npm install

RUN npm run build

# Build the Backend
FROM node:20-alpine

COPY ./backend /app

WORKDIR /app

RUN npm install

COPY --from=frontend-builder /app/dist /app/public

CMD ["node", "server.js"]