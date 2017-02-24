#!/usr/bin/env bash
clear
echo Getting Phone Verifications for a Country Code
echo
echo Request
echo curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_started][event][eq]=phone_verification_started&report[phone_verification_code_is_invalid][event][eq]=phone_verification_code_is_invalid&report[phone_verification_code_is_valid][event][eq]=phone_verification_code_is_valid&scope[time][gte]=$REPORTING_DATE_BEGIN&interval=day&page=$REPORTING_PAGE"
echo -H "X-Authy-API-Key: \$REPORTING_AUTHY_API_KEY"
echo
echo Response
curl -g "https://api.authy.com/protected/json/reporting/date_histogram?report[phone_verification_started][event][eq]=phone_verification_started&report[phone_verification_code_is_invalid][event][eq]=phone_verification_code_is_invalid&report[phone_verification_code_is_valid][event][eq]=phone_verification_code_is_valid&scope[time][gte]=$REPORTING_DATE_BEGIN&interval=day&page=$REPORTING_PAGE" \
-H "X-Authy-API-Key: $REPORTING_AUTHY_API_KEY" | underscore print --outfmt pretty
echo
