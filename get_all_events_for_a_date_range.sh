#!/usr/bin/env bash
clear
echo Getting All Events for a Date Range
echo
echo Request
echo curl -g "https://api.authy.com/protected/json/reporting/events?query[time][gte]=\$REPORTING_DATE_BEGIN&query[time][lte]=\$REPORTING_DATE_END&page=\$REPORTING_PAGE&per_page=\$REPORTING_NUM_PER_PAGE"
echo -H "X-Authy-API-Key: \$REPORTING_AUTHY_API_KEY"
echo
echo Response
curl -g "https://api.authy.com/protected/json/reporting/events?query[time][gte]=$REPORTING_DATE_BEGIN&query[time][lte]=$REPORTING_DATE_END&page=$REPORTING_PAGE&per_page=$REPORTING_NUM_PER_PAGE" \
-H "X-Authy-API-Key: $REPORTING_AUTHY_API_KEY" | underscore print --outfmt pretty
echo
