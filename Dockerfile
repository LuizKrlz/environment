FROM luizkrlz/environment

RUN yarn global add create-react-app

RUN apk update && apk add -f \
    zip \
    libgtk-3-0 \
    libgconf-2-4 \
    libasound2 \
    libxtst6 \
    libxss1 \
    libnss3 \
    libgtk2.0-0 \
    xvfb \
    apt-transport-https

RUN curl -fSL "https://github.com/infinitered/reactotron/releases/download/v2.0.0/Reactotron-linux-x64.zip" -o /tmp/reactotron.zip \
    && unzip /tmp/reactotron.zip -d /opt \
    && ln -sf /opt/Reactotron/Reactotron /usr/local/bin/Reactotron \
    && rm -f /tmp/reactotron.zip

RUN Xvfb -screen 1280x2000x32 :0 & export DISPLAY=:0

EXPOSE 3000 9090