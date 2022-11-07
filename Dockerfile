FROM python:3.10-slim
COPY . /Interview9
WORKDIR /Interview9/tests
RUN pip install --no-cache-dir -r requirements.txt
RUN install chromedriver latest
RUN ["pytest", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null