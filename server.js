require('http').createServer((req, res) => res.end('version 5\n')).listen(process.env.PORT || 3000)
