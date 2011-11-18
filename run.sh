#!/bin/bash
echo "===================="
echo "==  running neko  =="
echo "====/==============="
neko bin/neko/test.n
echo "==================="
echo "==  running php  =="
echo "==================="
php -f bin/php/index.php
echo "=================="
echo "==  running js  =="
echo "=================="
./deps/phantomjs/bin/phantomjs bin/js/test.js
