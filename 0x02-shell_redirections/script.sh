#!/bin/bash

commands=(
  'echo Hello, World' 
  'echo "\"(Ôo)'"\''' 
  'cat /etc/passwd'
  'cat /etc/passwd /etc/hosts'
  'tail /etc/passwd'
  'head /etc/passwd'
  'head -3 iacta | tail -1'
  "echo \"Best School\" > \"\*\\\\\'\\\"Holberton School\\\"\'\\\\\*$\?\*\*\*\*\*:)\""
  'ls -la > ls_cwd_content'
  'tail -1 iacta >> iacta'
  'find . -name "*.js" -type f -delete'
  'find . -type d -path './*' -print | wc -l'
  'ls -t | head'
  'sort | uniq -u'
  'grep -i "root" /etc/passwd'
  'grep -c "bin" /etc/passwd'
  'grep -iA 3 "root" /etc/passwd'
  'grep -v "bin" /etc/passwd'
  'grep "^[[:alpha:]]" /etc/ssh/sshd_config'
  'tr Ac Ze'
  'tr -d "cC"'
  'rev'
  'cat /etc/passwd | cut -d: -f1,6 | sort'
  'find . -empty -printf %f"\n"'
  'find -type f -name "*.gif" -printf "%f\n" | rev | cut -d'.' -f 2- | rev | LC_ALL=C sort -f'
  'cut -c1 - | paste -sd ""'
  'tail -n +2 | cut -f1 | sort | uniq -c | sort -rn | head -n+11 | cut -b 9- '
)

file_names=(
  '0-hello_world' 
  '1-confused_smiley'
  '2-hellofile'
  '3-twofiles'
  '4-lastlines'
  '5-firstlines'
  '6-third_line'
  '7-file'
  '8-cwd_state'
  '9-duplicate_last_line'
  '10-no_more_js'
  '11-directories'
  '12-newest_files'
  '13-unique'
  '14-findthatword'
  '15-countthatword'
  '16-whatsnext'
  '17-hidethisword'
  '18-letteronly'
  '19-AZ'
  '20-hiago'
  '21-reverse'
  '22-users_and_homes'
  '100-empty_casks'
  '101-gifs'
  '102-acrostic'
  '103-the_biggest_fan'
)

length=${#file_names[@]}

function submit_tasks() {

  for ((i = 0; i <= "${length}"; i++)); do
    echo '#!/bin/bash' >"${file_names[i]}"
    echo "${commands[i]}" >>"${file_names[i]}"
    chmod +x "${file_names[i]}"

    git add .
    git commit -m "finished task ${i}"
    git push
  done

}

if [[ "${#file_names[@]}" == "${#commands[@]}" ]]; then
  submit_tasks
else
  echo 'file_name and commands length are not equal'
fi

