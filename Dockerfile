FROM seleniumpytest
COPY . /Interview9
WORKDIR /Interview9
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junit-xml=report.xml"]
CMD tail -f /dev/null
