#!/bin/bash

function shutdown {
  kill -s SIGTERM $JAVA_PID
  wait $JAVA_PID
}

echo "Starting Selenium Server Headless..."

Xvfb $DISPLAY -screen 0 $GEOMETRY -nolisten tcp & XVFB_PID=$!
java -jar /opt/selenium/selenium.jar -host 0.0.0.0 -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver & JAVA_PID=$!
trap shutdown SIGTERM SIGINT
wait $JAVA_PID

# xvfb-run --server-args="-screen 0 1920x1080x8" java -jar /opt/selenium/selenium.jar -host 0.0.0.0 -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver

