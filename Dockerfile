FROM node:alpine AS app-build

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build


FROM nginx:alpine AS app-deploy

COPY --from=app-build /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
