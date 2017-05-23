#!/usr/bin/env bash
clear
echo Getting Phone Verifications for a Country Code
echo
echo Request
echo curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_started][event][eq]=phone_verification_started&scope[objects.phone_verification.country_code][eq]=\$REPORTING_USER_COUNTRY&interval=hour&page=1"
echo -H "X-Authy-API-Key: \$REPORTING_AUTHY_API_KEY"
echo
echo Response
curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_started][event][eq]=phone_verification_started&scope[objects.phone_verification.country_code][eq]=$REPORTING_USER_COUNTRY&interval=hour&page=1" \
-H "X-Authy-API-Key: $REPORTING_AUTHY_API_KEY"