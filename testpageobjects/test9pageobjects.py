from selenium.webdriver.common.by import By


class Test9pageobjects:

    def __init__(self, driver):
        self.driver = driver

    Name = (By.XPATH, "//input[@name='name']")

    def name(self):
        return self.driver.find_element(*Test9pageobjects.Name)

    Email = (By.NAME, "email")

    def email(self):
        return self.driver.find_element(*Test9pageobjects.Email)

    Password = (By.ID, "exampleInputPassword1")

    def password(self):
        return self.driver.find_element(*Test9pageobjects.Password)

    Check = (By.ID, "exampleCheck1")

    def check(self):
        return self.driver.find_element(*Test9pageobjects.Check)

    Select = (By.ID, "exampleFormControlSelect1")

    def select(self):
        return self.driver.find_element(*Test9pageobjects.Select)

    Radio = (By.ID, "inlineRadio2")

    def radio(self):
        return self.driver.find_element(*Test9pageobjects.Radio)

    Bday = (By.NAME, "bday")

    def bday(self):
        return self.driver.find_element(*Test9pageobjects.Bday)

    Btn = (By.CLASS_NAME, "btn-success")

    def btn(self):
        return self.driver.find_element(*Test9pageobjects.Btn)

    Alert = (By.CLASS_NAME, "alert-success")

    def alert(self):
        return self.driver.find_element(*Test9pageobjects.Alert)
