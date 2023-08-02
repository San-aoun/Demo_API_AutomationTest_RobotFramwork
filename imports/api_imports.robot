*** Settings ***

Resource    ${CURDIR}/library.robot
Variables   ${CURDIR}/../testdata/test_data.yaml

Resource    ${CURDIR}/../keywords/api/authentication/login.robot
Resource    ${CURDIR}/../keywords/endpoint/account_management.robot
