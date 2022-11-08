import pytest
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service


driver = None


@pytest.fixture(scope="class")
def setup(request):
    global driver
    chrome_options = Options()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--disable-dev-shm-usage')
    chrome_obj = Service("/usr/bin/chromedriver", chrome_options=chrome_options)
    driver = webdriver.Chrome(service=chrome_obj)
    driver.get("https://rahulshettyacademy.com/angularpractice/")
    request.cls.driver = driver
    yield
    driver.close()






