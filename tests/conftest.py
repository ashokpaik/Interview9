import pytest
from selenium import webdriver
from selenium.webdriver.chrome.service import Service


driver = None


@pytest.fixture(scope="class")
def setup(request):
    global driver
    chrome_obj = Service("/usr/bin/chromedriver")
    driver = webdriver.Chrome(service=chrome_obj)
    driver.get("https://rahulshettyacademy.com/angularpractice/")
    request.cls.driver = driver
    yield
    driver.close()






