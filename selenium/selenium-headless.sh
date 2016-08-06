echo "Starting Selenium Server Headless..."
xvfb-run --server-args="-screen 0 1920x1080x8" java -jar /opt/selenium/selenium.jar -host 0.0.0.0 -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver

