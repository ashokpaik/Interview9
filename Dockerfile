FROM python:3.10-slim
LABEL maintainer="####"
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install webdriver_manager
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null