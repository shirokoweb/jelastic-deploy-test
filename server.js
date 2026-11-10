require('http').createServer((req, res) => res.end('version 7\n')).listen(process.env.PORT || 3000)
