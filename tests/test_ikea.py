from pages.ikea import IkeaPage

def test_ikea(web_browser):

    """
    1000 рублей
    """

    ikea_page = IkeaPage(web_browser)

    if ikea_page.title == 'Ikea Waiting Room':
        print('all ok')
