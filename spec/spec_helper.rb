$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'speed_tests'
require 'watir-webdriver'
require 'watirmark'
require 'watirmark/configuration'
require 'headless'

TEST_ELEMENTS_URL="file://"+File.dirname(__FILE__) + "/test_elements.html"

