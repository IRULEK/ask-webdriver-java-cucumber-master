# Test Automation Exercise - Cucumber
  # https://jira.portnov.com/browse/ACD-569
  # Author: Irina Tretiakova

  @cucumber
  Feature: Quote Test Scenarios
    Background:
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      Then I resize window to 1920 and 1080

    @cucumber1
    Scenario: Validate responsive UI behavior
      # Validate responsive UI behavior by resizing the browser window and validating some text on the page.
      # Given I open url "https://skryabin.com/market/quote.html"
      # Then I should see page title as "Get a Quote"
      # desktop mode
      # When I resize window to 1920 and 1080
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      Then element with xpath "//b[@id='currentDate']" should contain text "11/23/2022"
      # ipad mode
      When I resize window to 820 and 1180
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      Then element with xpath "//b[@id='currentDate']" should contain text "11/23/2022"
      # iphone mode
      When I resize window to 375 and 667
      Then element with xpath "//b[@id='location']" should not be displayed
      Then element with xpath "//b[@id='currentDate']" should contain text "11/23/2022"

    @cucumber2
    Scenario: Verify Username field
      #Verify that 2 and more char allowed in Username field, cannot be emty
      # Given I open url "https://skryabin.com/market/quote.html"
      # Then I should see page title as "Get a Quote"
      When I resize window to 1920 and 1080
      Then element with xpath "//input[@name='username']" should be present
      When I type "A" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters"
      Then I clear element with xpath "//input[@name='username']"
      Then element with xpath "//label[@id='username-error']" should contain text "This field is required"
      When I type "AA" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should not be displayed

    @cucumber3
    Scenario: Validate ”Email” field
    Verify that email format is correct and cannot be empty
      Then element with xpath "//input[@name='email']" should be present
      When I type "gmail" into element with xpath "//input[@name='email']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email"
      Then I clear element with xpath "//input[@name='email']"
      Then element with xpath "//label[@id='email-error']" should contain text "This field is required"
      Then I type "ira@gmail.com" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//input[@id='name']"
      Then I type "Irina" into element with xpath "//input[@id='firstName']"
      Then I type "Anatolevna" into element with xpath "//input[@id='middleName']"
      Then I type "Rurasun" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then I type "AAA" into element with xpath "//input[@name='username']"
      Then I type "11111" into element with xpath "//input[@id='password']"
      Then I type "11111" into element with xpath "//input[@id='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'I have read and accept Privacy Policy.')]/..//input[@type='checkbox']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed

    @cucumber4
    Scenario: Validate “Password” field and "Confirm Password" is disabled if Password field is empty.
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='password-error']" should contain text "This field is required."
      Then element with xpath "//input[@id='confirmPassword']" should be disabled
      When I type "1" into element with xpath "//input[@id='password']"
      Then element with xpath "//input[@id='confirmPassword']" should be enabled
      Then element with xpath "//label[@id='password-error']" should contain text "Please enter at least 5 characters."
      Then I clear element with xpath "//input[@id='password']"
      Then I type "11111" into element with xpath "//input[@id='password']"
      Then I type "11111" into element with xpath "//input[@id='confirmPassword']"
      Then I type "ira@gmail.com" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//input[@id='name']"
      Then I type "Irina" into element with xpath "//input[@id='firstName']"
      Then I type "Anatolevna" into element with xpath "//input[@id='middleName']"
      Then I type "Rurasun" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then I type "AAA" into element with xpath "//input[@name='username']"
      Then I click on element with xpath "//*[contains(text(),'I have read and accept Privacy Policy.')]/..//input[@type='checkbox']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed

    @cucumber5
    Scenario: Validate “Name” field behavior
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//div[@id='nameDialog']" should be displayed
      Then I type "Irina" into element with xpath "//input[@id='firstName']"
      Then I type "Anatolevna" into element with xpath "//input[@id='middleName']"
      Then I type "Rurasun" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name'][@value='Irina Anatolevna Rurasun']" should be present

    @cucumber6
    Scenario: Validate that Accepting Privacy Policy is required to submit the form, then check the field
      Then element with xpath "//*[contains(text(),'I have read and accept Privacy Policy.')]/..//input[@type='checkbox']" should be present
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
      Then I click on element with xpath "//input[@id='name']"
      Then I type "Irina" into element with xpath "//input[@id='firstName']"
      Then I type "Anatolevna" into element with xpath "//input[@id='middleName']"
      Then I type "Rurasun" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then I type "AAA" into element with xpath "//input[@name='username']"
      Then I type "ira@gmail.com" into element with xpath "//input[@name='email']"
      Then I type "11111" into element with xpath "//input[@id='password']"
      Then I type "11111" into element with xpath "//input[@id='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'I have read and accept Privacy Policy.')]/..//input[@type='checkbox']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed

    @cucumber8
    Scenario:Validate that after form submission entered fields values are present on the page.
    Validate that password is not displayed on the page
      Then I type "11111" into element with xpath "//input[@id='password']"
      Then I type "11111" into element with xpath "//input[@id='confirmPassword']"
      Then I type "ira@gmail.com" into element with xpath "//input[@name='email']"
      Then I click on element with xpath "//input[@id='name']"
      Then I type "Irina" into element with xpath "//input[@id='firstName']"
      Then I type "Anatolevna" into element with xpath "//input[@id='middleName']"
      Then I type "Rurasun" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then I type "AAA" into element with xpath "//input[@name='username']"
      Then I click on element with xpath "//*[contains(text(),'I have read and accept Privacy Policy.')]/..//input[@type='checkbox']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//b[contains(text(),'Irina')]" should be displayed
      Then element with xpath "//b[contains(text(),'Anatolevna')]" should be displayed
      Then element with xpath "//b[contains(text(),'Rurasun')]" should be displayed
      Then element with xpath "//b[contains(text(),'Irina')]" should be displayed
      Then element with xpath "//b[contains(text(),'ira@gmail.com')]" should be displayed
      Then element with xpath "//*" should not contain text "11111"
      Then element with xpath "//b[@name='password']" should contain text "[entered]"
