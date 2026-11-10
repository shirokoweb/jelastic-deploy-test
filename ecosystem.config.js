module.exports = {
  apps: [{ name: 'tourets-test', script: 'server.js', instances: 1, exec_mode: 'fork', env: { PORT: 3000 } }]
}
