#!/bin/bash
echo "running neko"
neko bin/neko/test.n
echo "running php"
php -f bin/php/index.php
echo "running js"
./deps/phantomjs/bin/phantomjs bin/js/test.js
