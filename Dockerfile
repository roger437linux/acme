FROM node:alpine
WORKDIR /api
COPY . .
RUN npm i
RUN npx prisma generate
EXPOSE 8080
CMD [ "node", "server.js" ]
