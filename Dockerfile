FROM node:lts

WORKDIR /app/website

EXPOSE 3000 35729
COPY ./docs /app/docs
COPY ./website /app/website
RUN yarn install

RUN echo $(wc -c node_modules/@docusaurus/mdx-loader/src/remark/rightToc/search.js)

RUN wc -c node_modules/@docusaurus/mdx-loader/src/remark/rightToc/search.js | grep 1776 -q && mv custom_node_modules/search.js node_modules/@docusaurus/mdx-loader/src/remark/rightToc/search.js || echo "\n\nUpdate custom_node_modules/search.js\n\n"

RUN echo $(wc -c node_modules/@docusaurus/mdx-loader/src/index.js)

RUN wc -c node_modules/@docusaurus/mdx-loader/src/index.js | grep 2214 -q && mv custom_node_modules/index.js node_modules/@docusaurus/mdx-loader/src/index.js || echo "\n\nUpdate custom_node_modules/index.js\n\n"


CMD ["yarn", "start"]
