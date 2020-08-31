FROM node:lts

WORKDIR /app/my-website


COPY ./docs /app/docs
COPY ./my-website /app/my-website
RUN yarn install

RUN echo $(wc -c node_modules/@docusaurus/mdx-loader/src/remark/rightToc/search.js)

RUN wc -c node_modules/@docusaurus/mdx-loader/src/remark/rightToc/search.js | grep 1776 -q && mv custom_node_modules/search.js node_modules/@docusaurus/mdx-loader/src/remark/rightToc/search.js || echo "\n\nUpdate custom_node_modules/search.js\n\n"

RUN echo $(wc -c node_modules/@docusaurus/mdx-loader/src/index.js)

RUN wc -c node_modules/@docusaurus/mdx-loader/src/index.js | grep 2214 -q && mv custom_node_modules/index.js node_modules/@docusaurus/mdx-loader/src/index.js || echo "\n\nUpdate custom_node_modules/index.js\n\n"
# RUN yarn build

# FROM nginx:latest
# WORKDIR /usr/share/nginx/html
# COPY --from=0 /app/my-website/build/ .

CMD ["yarn", "start"]
EXPOSE 3000
