How To Run Tests
----------------

1) Install all requirements:

    ```bash
    pip3 install -r requirements
    ```
   
   ```bash
    python -m pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org pytest
    ```

2) Download Selenium WebDriver from https://chromedriver.chromium.org/downloads (choose version which is compatible with your browser)

3) Run tests:

    ```bash
    python -m pytest -v -s --driver Chrome --driver-path .\chrome\chromedriver.exe .\tests\test_search_smoke.py --alluredir=allureress
    ``` 
   
Note:
~/chrome in this example is the file of Selenium WebDriver downloaded and unarchived on step #2.



python -m pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org pytest, pytest-selenium, termcolor, allure-python-commons, allure-pytest, requests_html, pytelegrambotapi
