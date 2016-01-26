#!/usr/bin/env python
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.PhantomJS("/node_modules/phantomjs/lib/phantom/bin/phantomjs")
driver.get("http://google.com")
print "title is:" + driver.title
