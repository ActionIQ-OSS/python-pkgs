#!/bin/sh

START=$PWD

HERE=$(cd $(dirname $(readlink $0 || echo $0)) && pwd)
cd $HERE

OUT=index.html

cat > $OUT << HEADER
<html>
  <head>
    <title>Index of python-pkgs</title>
  </head>
  <body>
    <h1>Index of python-pkgs</h1>
HEADER

for sdist in *.tar.gz *.zip *.tgz *.whl
do
  if [ -r "$sdist" ]
  then
    echo "    <a href=\"$sdist\">$sdist</a><br/>" >> $OUT
  fi
done

cat >> $OUT << FOOTER
  </body>
</html>
FOOTER

cd $START
