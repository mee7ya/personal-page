FROM node:23.11-alpine AS build

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN corepack enable

WORKDIR /app

COPY package.json ./
COPY pnpm-lock.yaml ./

RUN pnpm i --frozen-lockfile

COPY . ./

RUN pnpm build
RUN pnpm prune --prod

FROM node:23.11-alpine AS server

ENV NODE_ENV=production

WORKDIR /app

COPY --from=build app/build build/
COPY --from=build app/node_modules node_modules/
COPY --from=build app/package.json ./

CMD ["node", "build"]