#!/bin/sh
sleep 420
{
  echo "===== $(date +%T) post-deploy hook ====="
  echo "user: $(whoami) pwd: $(pwd)"
  echo "PATH: $PATH"
  echo "node: $(node -v 2>&1) npm: $(npm -v 2>&1)"
  echo "pm2: $(command -v pm2 || echo NOT_IN_PATH) $(pm2 -v 2>/dev/null)"
  echo "git: $(command -v git || echo NOT_IN_PATH)"
  echo "--- .git in ROOT:"; ls -d /home/jelastic/ROOT/.git 2>&1
  git -C /home/jelastic/ROOT rev-parse --short HEAD 2>&1
  echo "--- node_modules: $(test -d /home/jelastic/ROOT/node_modules && echo yes || echo no)"
  echo "--- npm-install.log:"; cat "$HOME/npm-install.log" 2>&1
  echo "--- pm2 ls:"; pm2 ls 2>&1
} >> "$HOME/hook-diag.log" 2>&1
exit 0
