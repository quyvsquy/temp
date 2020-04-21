FROM ubuntu:18.04 as builder
WORKDIR /app
RUN apt-get update && apt-get install --no-install-recommends -y python3 python3-pip && \
python3 -m pip --no-cache-dir install --upgrade pip setuptools && \
python3 -m pip --no-cache-dir install numpy tensorflow matplotlib

FROM ubuntu:18.04 
ENV LANG C.UTF-8
WORKDIR /app
COPY --from=builder /app .