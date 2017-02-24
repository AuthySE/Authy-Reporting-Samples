#!/usr/bin/env bash
clear
echo Getting Phone Verfications Started for a Country Code by the Minute
echo
echo Request
echo curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_started][event][eq]=phone_verification_started&scope[objects.phone_verification.country_code][eq]=\$REPORTING_USER_COUNTRY&page=\$REPORTING_PAGE&interval=minute"
echo -H "X-Authy-API-Key: \$REPORTING_AUTHY_API_KEY"
echo
echo Response
curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_started][event][eq]=phone_verification_started&scope[objects.phone_verification.country_code][eq]=$REPORTING_COUNTRY_CODE&page=$REPORTING_PAGE&interval=minute" \
-H "X-Authy-API-Key: $REPORTING_AUTHY_API_KEY" | underscore print --outfmt pretty
echo