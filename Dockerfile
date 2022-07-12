FROM node:16.4.2-slim as base

LABEL "com.github.actions.name"="Toshiki Vuepress Deploy"
LABEL "com.github.actions.description"="Easy GitHub action for automating Vuepress builds to GitHub's Gh-Pages branch!"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/andatoshiki/toshiki-vuepress-deploy"
LABEL "homepage"="https://github.com/andatoshiki/toshiki-vuepress-deploy"
LABEL "maintainer"="andatoshiki <andatoshiki@outlook.com>"

RUN apt-get update && apt-get install -y git jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
