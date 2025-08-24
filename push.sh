#!/data/data/com.termux/files/usr/bin/bash
git add .
git commit -m "${2:-Add Mad Citizens Lab module}"
git push https://${1}@github.com/mathcal-S/AUMForge.git main
