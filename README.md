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
It is the best that you don't run this script on the validator system itself

Fill in your #Validator and your Mailaddress.
```bash
nano eth2validatorchecker.sh
```

Mark it as executable
```bash
chmod +x eth2validatorchecker.sh
```

Poll it regulary via crontab.
```bash
crontab -e
```

Add the following line, I propose around 5 s
```bash
*/5 * * * * /path/to/eth2validatorchecker/eth2validatorchecker.sh
```
