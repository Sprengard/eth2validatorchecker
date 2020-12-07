#!/bin/bash
# poll beaconcha.in API to get
# 1 wenn attested
# 0 wenn missed or scheduled

# fill in:
# the mailadress you want to get the notifications
mailadress=#
# the number of your Validator as of #666 in  https://beaconcha.in/validator/666
validatornr=#




status=$(curl -s -X GET "https://beaconcha.in/api/v1/validator/"$validatornr"/attestations" -H "accept: application/json" | jq '.' | sed -n 17p | cut -c 17-17)

if [ $status = 0 ]
then
        mail -s "VALIDATOR Attestation missed!!!!" $mailadress < /dev/null
        echo missed
else
        echo attested
fi
