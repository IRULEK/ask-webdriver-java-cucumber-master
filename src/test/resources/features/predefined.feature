@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Search engine via Gibiru
    Given I open url "http://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Google" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "Google"
    Then I wait for 3 sec

  @predefined3
  Scenario: Search engine via Duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Google" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[@id='links_wrapper']" to be present
    Then element with xpath "//div[@id='links_wrapper']" should contain text "Google"
    Then I wait for 3 sec

  @predefined4
  Scenario: Search engine via Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then element with xpath "//input[@class='input-search']" should be present
    When I type "Google" into element with xpath "//input[@class='input-search']"
    Then I click on element with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Google"
    Then I wait for 3 sec

  @predefined5
  Scenario: Search engine via Searchencrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//input[@class='search-bar__search']" should be present
    When I type "Google" into element with xpath "//input[@class='search-bar__search']"
    Then I click on element with xpath "//button[@class='search-bar__submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Google"
    Then I wait for 3 sec

  @predefined6
  Scenario: Search engine via Startpage
    Given I open url "https://www.startpage.com"
    Then I should see page title contains "Startpage"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Google" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@id='search-btn']"
    Then I wait for element with xpath "//iframe[@id='master-1']//div[@id='adBlock']" to be present
    Then element with xpath "//iframe[@id='master-1']//div[@id='adBlock']" should contain text "Google"
    Then I wait for 3 sec

  @predefined7
  Scenario: Search engine via Yandex
    Given I open url "https://www.yandex.com"
    Then I should see page title contains "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Google" into element with xpath "//input[@id='text']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='content i-bem']" to be present
    Then element with xpath "//div[@class='content i-bem']" should contain text "Google"
    Then I wait for 3 sec

  @predefined8
  Scenario: Search engine via Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@class='search-form__input']" should be present
    When I type "Google" into element with xpath "//input[@class='search-form__input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//section[@class='mainline web__mainline']" to be present
    Then element with xpath "//section[@class='mainline web__mainline']" should contain text "Google"
    Then I wait for 3 sec

  @predefined9
  Scenario: Search engine via Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title contains "Wiki"
    Then element with xpath "//tbody/tr[3]/td[1]/div[1]/input[1]" should be present
    When I type "Google" into element with xpath "//tbody/tr[3]/td[1]/div[1]/input[1]"
    Then I click on element with xpath "//input[@type='submit']"
    Then I wait for element with xpath "//div[@class='gsc-wrapper']" to be present
    Then element with xpath "//div[@class='gsc-wrapper']" should contain text "Google"
    Then I wait for 3 sec

  @predefined10
  Scenario: Search engine via giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "giveWater"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Google" into element with xpath "//input[@id='site-search']"
    Then I click on element with xpath "//section[@id='main']//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "Google"
    Then I wait for 3 sec

  @predefined11
  Scenario: Search engine via Ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "Google" into element with xpath "//input[@id='fld_q']"
    Then I click on element with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    Then element with xpath "//div[@id='div_results']" should contain text "Google"
    Then I wait for 3 sec