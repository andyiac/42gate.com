#!/bin/sh

echo 'clean index file'
rm developer/index.html
rm designer/index.html
rm productor/index.html
echo 'clean done'

echo 'build start'
md2html docs/developer.md >> developer/index.html
md2html docs/designer.md >> designer/index.html
md2html docs/productor.md >> productor/index.html

echo 'build end'
