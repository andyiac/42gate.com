#!/bin/sh

echo 'clean index file'
rm developer/index.html
rm designer/index.html
rm productor/index.html
rm index.html
echo 'clean done'

echo 'build start'

cat src/index-header.html >> developer/index.html
md2html docs/developer.md >> developer/index.html
cat src/index-footer.html >> developer/index.html

cat src/index-header.html >> designer/index.html
md2html docs/designer.md >> designer/index.html
cat src/index-footer.html >> designer/index.html

cat src/index-header.html >> productor/index.html
md2html docs/productor.md >> productor/index.html
cat src/index-footer.html >> productor/index.html

cat src/index-header.html >> index.html
md2html docs/index.md >> index.html
md2html docs/developer.md >> index.html
md2html docs/designer.md >> index.html
md2html docs/productor.md >> index.html
cat src/index-footer.html >> index.html

echo 'build end'
