from pages.base import WebPage
from pages.elements import WebElement


class IkeaPage(WebPage):

    def __init__(self, web_driver, url=''):
        url = 'https://www.ikea.com/ru/ru/'
        super().__init__(web_driver, url)

    title = WebElement(xpath='/html/body/title')


