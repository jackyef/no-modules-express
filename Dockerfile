FROM node:18-alpine3.19

WORKDIR /usr/src/app

COPY dist/ ./dist/

EXPOSE 3000

CMD ["node", "dist/bundle.js"]
