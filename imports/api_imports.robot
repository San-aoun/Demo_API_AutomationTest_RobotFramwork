*** Settings ***

Resource    ${CURDIR}/library.robot
Variables   ${CURDIR}/../testdata/test_data.yaml

Resource    ${CURDIR}/../keywords/api/authentication/login_user/login.robot
Resource    ${CURDIR}/../keywords/api/authentication/get_user/getSingleUser.robot
Resource    ${CURDIR}/../keywords/api/authentication/update_user/updateUser.robot
Resource    ${CURDIR}/../keywords/endpoint/account_management.robot
