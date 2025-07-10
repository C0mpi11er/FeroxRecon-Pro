👨‍💻 Author

Matthew Ogbu – Offensive Security Analyst
---

### 🐚 recon.sh (Example Script)

```bash
#!/bin/bash

TARGET=$1
OUT_DIR="sample-reports"

mkdir -p $OUT_DIR

echo "[*] Starting Feroxbuster on $TARGET"
feroxbuster -u $TARGET -w wordlists/custom-top1000.txt -o "$OUT_DIR/$(echo $TARGET | sed 's|http[s]*://||g').json" -x php,html,txt -n -k -t 50
