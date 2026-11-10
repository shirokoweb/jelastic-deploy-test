require('http').createServer((req, res) => res.end('version 8\n')).listen(process.env.PORT || 3000)
