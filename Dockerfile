FROM seleniumpytest
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "--html=/testreports/report.html", "-v", "--junit-xml=report.xml"]
COPY /testrports/report.html /Interview9/testreports/
CMD tail -f /dev/null