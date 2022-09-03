#!/usr/bin/env bash

echo '#!/bin/bash' > 0-current_working_directory
echo 'pwd' >> 0-current_working_directory
chmod +x 0-current_working_directory

git add .
git commit -m 'finished task 0'
git push

echo '#!/bin/bash' > 1-listit
echo 'ls' >> 1-listit
chmod +x 1-listit

git add .
git commit -m 'finished task 1'
git push

echo '#!/bin/bash' > 2-bring_me_home
echo 'cd ~' >> 2-bring_me_home
chmod +x 2-bring_me_home

git add .
git commit -m 'finished task 2'
git push

echo '#!/bin/bash' > 3-listfiles
echo 'ls -l' >> 3-listfiles
chmod +x 3-listfiles

git add .
git commit -m 'finished task 3'
git push


echo '#!/bin/bash' > 4-listmorefiles
echo 'ls -al' >> 4-listmorefiles
chmod +x 4-listmorefiles

git add .
git commit -m 'finished task 4'
git push



echo '#!/bin/bash' > 5-listfilesdigitonly
echo 'ls -anl' >> 5-listfilesdigitonly
chmod +x 5-listfilesdigitonly

git add .
git commit -m 'finished task 5'
git push


echo '#!/bin/bash' > 6-firstdirectory
echo 'mkdir /tmp/my_first_directory' >> 6-firstdirectory
chmod +x 6-firstdirectory

git add .
git commit -m 'finished task 6'
git push


echo '#!/bin/bash' > 7-movethatfile
echo 'mv /tmp/betty /tmp/my_first_directory' >> 7-movethatfile
chmod +x 7-movethatfile

git add .
git commit -m 'finished task 7'
git push


echo '#!/bin/bash' > 8-firstdelete
echo 'rm /tmp/my_first_directory/betty' >> 8-firstdelete
chmod +x 8-firstdelete

git add .
git commit -m 'finished task 8'
git push


echo '#!/bin/bash' > 9-firstdirdeletion
echo 'rm -r /tmp/my_first_directory' >> 9-firstdirdeletion
chmod +x 9-firstdirdeletion

git add .
git commit -m 'finished task 9'
git push


echo '#!/bin/bash' > 10-back
echo 'cd -' >> 10-back
chmod +x 10-back

git add .
git commit -m 'finished task 10'
git push


echo '#!/bin/bash' > 11-lists
echo 'ls -al . .. /boot' >> 11-lists
chmod +x 11-lists

git add .
git commit -m 'finished task 11'
git push

echo '#!/bin/bash' > 12-file_type
echo 'file /tmp/iamafile' >> 12-file_type
chmod +x 12-file_type

git add .
git commit -m 'finished task 12'
git push

echo '#!/bin/bash' > 13-symbolic_link
echo 'ln -s /bin/ls __ls__' >> 13-symbolic_link
chmod +x 13-symbolic_link

git add .
git commit -m 'finished task 13'
git push

echo '#!/bin/bash' > 14-copy_html
echo 'cp -nu *.html ..' >> 14-copy_html
chmod +x 14-copy_html

git add .
git commit -m 'finished task 14'
git push
