*** Setting ***
Library      Collections
Library      DateTime
Library      String
Library      RequestsLibrary
Library      JSONLibrary
Library      REST
Library      SeleniumLibrary    run_on_failure=None    plugins=SeleniumTestability;True;30 Seconds;False;True, ${CURDIR}/../keywords/qa-common/plugins/SeleniumCaptureScreen.py, ${CURDIR}/../keywords/qa-common/plugins/SeleniumRetryRunKeyword.py
Library      AppiumLibrary    run_on_failure=No Operation
Library      DatabaseLibrary
Library      Dialogs
# Library      FakerLibrary    locale=en_US
Library      TemplatedData
Library      pabot.PabotLib
Library      OperatingSystem
Library      ImapLibrary2
Library      html2text
Library      yaml
Library      CSVLibrary
Library      TestRail