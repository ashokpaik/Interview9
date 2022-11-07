FROM python:3.10-slim
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest /Interview9/tests/test_*.py", "-v", "--junitxml=testreports/report.xml"]
CMD tail -f /dev/null