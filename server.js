require('http').createServer((req, res) => res.end('version 6\n')).listen(process.env.PORT || 3000)
