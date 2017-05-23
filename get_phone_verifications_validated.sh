#!/usr/bin/env bash
clear
echo Getting Validated Phone Verifications
echo
echo Request
echo curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_code_is_valid][event][eq]=phone_verification_code_is_valid&scope[objects.phone_verification.country_code][eq]=\$REPORTING_USER_COUNTRY&interval=\$REPORTING_INTERVAL&page=\$REPORTING_PAGE"
echo -H "X-Authy-API-Key: \$REPORTING_AUTHY_API_KEY"
echo
echo Response
curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_code_is_valid][event][eq]=phone_verification_code_is_valid&scope[objects.phone_verification.country_code][eq]=$REPORTING_USER_COUNTRY&interval=hour&page=$REPORTING_PAGE" \
-H "X-Authy-API-Key: $REPORTING_AUTHY_API_KEY"
echo
