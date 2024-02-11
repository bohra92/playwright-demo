FROM mcr.microsoft.com/playwright:v1.40.0-jammy
# FROM playwright/chromium

# # copy project (including tests)
# COPY . /e2e

# WORKDIR /e2e

# # Install dependencies
# #RUN npm install
# # Install browsers
# RUN npx playwright install

# FROM node:20-bookworm

USER root


RUN mkdir /e2e
COPY . /e2e
WORKDIR /e2e

RUN npx -y playwright@1.41.1 install --with-deps

#copy project (including tests)
# Run playwright test
#CMD [ "npx", "playwright", "test" ]
RUN npx playwright test
# RUN apk update && apk add bash