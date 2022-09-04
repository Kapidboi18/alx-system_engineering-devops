#!/usr/bin/env bash

echo '#!/bin/bash
su betty
' >0-iam_betty
chmod +x 0-iam_betty

git add .
git commit -m "task 0"
git push

echo '#!/bin/bash
whoami
' >1-who_am_i
chmod +x 1-who_am_i

git add .
git commit -m "task 1"
git push

echo '#!/bin/bash
groups
' >2-groups
chmod +x 2-groups

git add .
git commit -m "task 2"
git push

echo '#!/bin/bash
chown betty hello
' >3-new_owner
chmod +x 3-new_owner

git add .
git commit -m "task 3"
git push

echo '#!/bin/bash
touch hello
' >4-empty
chmod +x 4-empty

git add .
git commit -m "task 4"
git push

echo '#!/bin/bash
chmod u+x hello
' >5-execute
chmod +x 5-execute

git add .
git commit -m "task 5"
git push

echo '#!/bin/bash
chmod ug+x,o+r hello
' >6-multiple_permissions
chmod +x 6-multiple_permissions

git add .
git commit -m "task 6"
git push

echo '#!/bin/bash
chmod ugo+x hello
' >7-everybody
chmod +x 7-everybody

git add .
git commit -m "task 7"
git push

echo '#!/bin/bash
chmod 007 hello
' >8-James_Bond
chmod +x 8-James_Bond

git add .
git commit -m "task 8"
git push

echo '#!/bin/bash
chmod 753 hello
' >9-John_Doe
chmod +x 9-John_Doe

git add .
git commit -m "task 9"
git push

echo '#!/bin/bash
chmod --reference=olleh hello
' >10-mirror_permissions
chmod +x 10-mirror_permissions

git add .
git commit -m "task 10"
git push

echo '#!/bin/bash
chmod ugo+x */
' >11-directories_permissions
chmod +x 11-directories_permissions

git add .
git commit -m "task 11"
git push

echo '#!/bin/bash
mkdir -m 751 my_dir
' >12-directory_permissions
chmod +x 12-directory_permissions

git add .
git commit -m "task 12"
git push

echo '#!/bin/bash
chgrp school hello
' >13-change_group
chmod +x 13-change_group

git add .
git commit -m "task 13"
git push

echo '#!/bin/bash
chown vincent:staff *
' >100-change_owner_and_group
chmod +x 100-change_owner_and_group

git add .
git commit -m "task 14"
git push

echo '#!/bin/bash
chown -h vincent:staff _hello
' >101-symbolic_link_permissions
chmod +x 101-symbolic_link_permissions

git add .
git commit -m "task 15"
git push

echo '#!/bin/bash
chown --from=guillaume betty hello
' >102-if_only
chmod +x 102-if_only

git add .
git commit -m "task 16"
git push

echo '#!/bin/bash
telnet towel.blinkenlights.nl
' >103-Star_Wars
chmod +x 103-Star_Wars

git add .
git commit -m "task 17"
git push
