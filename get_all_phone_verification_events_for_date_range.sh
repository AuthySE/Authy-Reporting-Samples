#!/usr/bin/env bash
clear
echo Getting Phone Verifications for a Country Code
echo
echo Request
echo curl -g "https://api.authy.com/protected/json/reporting/events?query[time][gte]=\$REPORTING_DATE_BEGIN&query[time][lte]=\$REPORTING_DATE_END&query[event][gte]=phone_verification_&query[event][lt]=q"
echo -H "X-Authy-API-Key: \$REPORTING_AUTHY_API_KEY"
echo
echo Response
curl -g "https://api.authy.com/protected/json/reporting/events?query[time][gte]=$REPORTING_DATE_BEGIN&query[time][lte]=$REPORTING_DATE_END&query[event][gte]=phone_verification_&query[event][lt]=q" \
-H "X-Authy-API-Key: $REPORTING_AUTHY_API_KEY" | underscore print --outfmt pretty
echo
