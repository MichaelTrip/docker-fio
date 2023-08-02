# Use the official Alpine 3.17 image as the base image
FROM alpine:3.17
LABEL maintainer="Michael trip <michael@alcatrash.org"



# Update package repositories and install fio
RUN apk update --no-cache && \
    apk upgrade --no-cache && \
    apk add fio bash netcat-openbsd mc  --no-cache

# Set the working directory
WORKDIR /data

# Sleep infinite
CMD ["sleep", "infinity"]
