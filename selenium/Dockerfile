FROM java:8-jdk

RUN apt-get update && apt-get upgrade -y \
        && apt-get install -y libappindicator1 libxss1 libpango1.0-0 xdg-utils fonts-liberation libexif12 \
        && apt-get install -y xvfb \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /opt/selenium \
    && wget --no-verbose -O /opt/selenium/selenium.jar http://selenium-release.storage.googleapis.com/2.43/selenium-server-standalone-2.43.1.jar

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb \
    && rm google-chrome-stable_current_amd64.deb

RUN wget http://chromedriver.storage.googleapis.com/2.20/chromedriver_linux64.zip -O /tmp/chromedriver_linux64.zip \
    && unzip /tmp/chromedriver_linux64.zip -d /usr/local/bin \
    && chmod 755 /usr/local/bin/chromedriver \
    && rm /tmp/chromedriver_linux64.zip

ADD selenium-headless.sh /usr/local/bin/selenium-headless

ENV SCREEN_WIDTH 1920
ENV SCREEN_HEIGHT 1080
ENV SCREEN_DEPTH 8
ENV DISPLAY :99.0
ENV GEOMETRY "$SCREEN_WIDTH""x""$SCREEN_HEIGHT""x""$SCREEN_DEPTH"

CMD selenium-headless
