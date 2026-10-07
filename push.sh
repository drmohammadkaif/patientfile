#!/usr/bin/env bash
# Usage: ./push.sh https://github.com/YOUR-USERNAME/patientfile.git
set -e
if [ -z "$1" ]; then echo "Give your GitHub repo URL. Example: ./push.sh https://github.com/you/patientfile.git"; exit 1; fi
if grep -q "YOUR_ACCESS_KEY_HERE" public/index.html; then echo "Note: Web3Forms key is not set yet in public/index.html (emails won't be saved until you set it)."; fi
[ -d .git ] || git init -b main
git add .
git commit -m "PatientFile maintenance page" || true
git remote remove origin 2>/dev/null || true
git remote add origin "$1"
git push -u origin main
echo "Done. Now connect this repo in Cloudflare Pages."
