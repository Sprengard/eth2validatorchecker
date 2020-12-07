Simple Script to get Mail-Notifications if your validator misses attestations.

It uses the API from beaconcha.in

## Bash dependencies
- jq
- mailutils
- curl
```bash
apt update && apt upgrade && apt install jq mailutils curl
```

## Usage
Best you run this scipt not on the validator machine.

Fill in your #Validator and your Mailaddress.
```bash
nano eth2validatorchecker.sh
```
Poll it regulary via crontab.
```bash
crontab -e
```
Add the following line, i propose around 5s.
```bash
*/5 * * * * /path/to/eth2validatorchecker/eth2validatorchecker.sh
```


root@rootserveradmin:~/checkval/git/eth2validatorchecker# cat README.md
# eth2validatorchecker
Simple Script to get Mail-Notifications if your validator misses attestations.

It uses the API from beaconcha.in

## Bash dependencies
- jq
- mailutils
- curl
```bash
apt update && apt upgrade && apt install jq mailutils curl
```

## Usage
Best you run this scipt not on the validator machine.

Fill in your #Validator and your Mailaddress.
```bash
nano eth2validatorchecker.sh
```
Poll it regulary via crontab.
```bash
crontab -e
```
Add the following line, i propose around 5s.
```bash
*/5 * * * * /path/to/eth2validatorchecker/eth2validatorchecker.sh
```
