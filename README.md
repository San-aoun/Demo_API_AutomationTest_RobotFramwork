# Demo_API_AutomationTest_RobotFramwork
This is Demo for test API automation test by robot framework with API from open API :  https://reqres.in

# Steps and summaries:

1. Install IDE (visual studio)

2. Get access to necessary repositories/documents

3. Clone automation repository to your local

4. Install libraries that required to run automation code with command " pip install -r requirements.txt "

5. The comman for Test Execution: python -m robot -i "demo" -d Results testcases/functional_tests
### Architecture

/framework:

    imports/
        api_import.robot
        library.robot
    keywords/
        api/
            authentication/
                login.robot
        endpoint/
            account_management/
                resources/
                    login.json
            account_mamagement.robot
        testcases
            funtional_tests/
                login.robot
        testdata/
            test_data.yaml
    requirement.txt


