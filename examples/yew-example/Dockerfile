FROM ghcr.io/velnbur/trunk:master as builder

WORKDIR /usr/src/
COPY . .

RUN trunk build --release

# -----
FROM nginx:stable-alpine

COPY --from=builder /usr/src/dist /bin/www
COPY configs/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
