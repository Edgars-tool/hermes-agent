$ErrorActionPreference = 'Stop'

$env:LINEAR_HERMES_CLIENT_ID = (op item get sonp4yna6g2tgxxc6zemjpr6hy --vault Personal --fields label='憑證' --reveal).Trim()
$env:LINEAR_HERMES_CLIENT_SECRET = (op item get rz7fdju72nk25zabw2yupaqube --vault edgarstool --fields label='憑證' --reveal).Trim()
$env:LINEAR_HERMES__SIGNING_SECRET = (op item get iegev5hqkl23vpznv65bdxcn7e --vault edgarstool --fields label='憑證' --reveal).Trim()
$env:HERMES_LINEAR_AIG_CLIENT_CREDENTIALS_SCOPE = 'read,write,app:assignable,app:mentionable'

python scripts\linear_aig_smoke.py --doctor-only --client-credentials-token
