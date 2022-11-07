import pytest
from selenium.webdriver.common.by import By

from testdata.test9pagedata import Test9pagedata
from testpageobjects.test9pageobjects import Test9pageobjects
from utilities.BaseClass import BaseClass


class Test9page(BaseClass):

    @pytest.fixture(params=Test9pagedata.getTestData("Testcase1"))
    def getdata(self, request):
        return request.param

    def test9page(self, getdata):
        log = self.getLogger()
        log.info("Name is" + getdata["Fullname"])
        test9page = Test9pageobjects(self.driver)
        test9page.name().send_keys(getdata["Fullname"])
        test9page.email().send_keys(getdata["Email"])
        test9page.password().send_keys(getdata["Password"])
        test9page.check().click()
        test9page.select().send_keys("Female")
        test9page.radio().click()
        test9page.bday().send_keys(getdata["Birthday"])
        test9page.btn().click()
        msg=test9page.alert().text
        assert "Success" in msg
        self.driver.refresh()