1. Make sure the outputs are declared in the remote state before you are importing.
2. If you use a diffrent new powershell window, access env variables dont exists. Need
to configure again or perform aws configure.
$env:AWS_ACCESS_KEY_ID="XXX"
$env:AWS_SECRET_ACCESS_KEY="YYY"
3. No need of providing dynamodb table incase the remote state is using dynamodb locking.
