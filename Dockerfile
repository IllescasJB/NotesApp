FROM ubuntu:20.04
ENV TZ=America/Mexico_City
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3
RUN apt-get clean

# Download Flutter SDK from Flutter Github repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# SET Flutter envioroment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter doctor

RUN flutter channel master
RUN flutter upgrade
RUN flutter config --enable-web

# Copy files to container build
RUN mkdir /app/
COPY . /app/
WORKDIR /app/

RUN flutter build web

EXPOSE 5000

RUN ["chmod","+x","/app/server/server.sh"]

ENTRYPOINT [ "/app/server/server.sh"]