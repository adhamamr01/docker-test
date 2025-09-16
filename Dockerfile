FROM debian:stable-slim
# COPY source destination
COPY docker-test /bin/docker-test
CMD ["/bin/docker-test"]

ENV PORT=8991