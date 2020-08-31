FROM node:lts

WORKDIR /app/my-website


COPY ./my-website /app/my-website
RUN yarn install
RUN yarn build

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY --from=0 /app/my-website/build/ .

CMD ["nginx", "-g", "daemon off;"]

