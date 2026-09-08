#!/bin/sh
set -eu
command -v python3 >/dev/null 2>&1 || { echo 'Kennel requires Python 3.9+ and Kujo 1.3.1+.' >&2; exit 1; }
installer_dir=$(mktemp -d)
trap 'rm -rf "$installer_dir"' EXIT HUP INT TERM
curl --fail --silent --show-error --proto '=https' --connect-timeout 10 --max-time 60 https://kennel.kujolang.ai/install.py -o "$installer_dir/install.py"
python3 - "$installer_dir/install.py" <<'PY'
import hashlib, pathlib, sys
if hashlib.sha256(pathlib.Path(sys.argv[1]).read_bytes()).hexdigest() != '98e9e70d816985a254d74cb067c03e0a2c248076ef2cd733d5549c4133c0eea4':
    raise SystemExit('Installer checksum mismatch; download install.sh again.')
PY
python3 "$installer_dir/install.py" "$@"
