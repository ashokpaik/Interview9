import pytest
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

driver = None


@pytest.fixture(scope="class")
def setup(request):
    global driver
    #chrome_obj = Service("E:\SeleniumPython\chromedriver.exe")
    #driver = webdriver.Chrome(service=chrome_obj)
    driver = webdriver.Chrome(ChromeDriverManager().install())
    driver.get("https://rahulshettyacademy.com/angularpractice/")
    request.cls.driver = driver
    yield
    driver.close()


