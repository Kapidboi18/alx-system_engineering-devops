#!/bin/bash

commands=(
  "alias ls='rm *'"
  'echo hello $USER'
  'PATH=$PATH:/action'
  'echo $PATH |tr -s ":" "\n" |  wc -l'
  'printenv'
  'set'
  'BEST=School'
  'export BEST=School'
  'echo $(( 128 + $TRUEKNOWLEDGE ))'
  'echo $(( $POWER / $DIVIDE ))'
  'echo $(( BREATH ** LOVE ))'
  'echo $((2#$BINARY))'
  'printf %s"'"\n"'" {a..z}{a..z} | grep -v "oo"'
  'printf %0.2f"\n" $NUM'
  'printf "%x\n" $DECIMAL'
  "tr 'A-Za-z' 'N-ZA-Mn-za-m'"
  'cat -n | cut -b 6- | grep ^[13579] | cut -f2 '
  'printf "%o\n" $(( (5#$(echo $WATER | tr "[water]" "[01234]")) + (5#$(echo $STIR | tr "[stir.]" "[01234]" )) )) | tr "[01234567]" "[bestchol]" '
)

file_names=(
  '0-alias'
  '1-hello_you'
  '2-path'
  '3-paths'
  '4-global_variables'
  '5-local_variables'
  '6-create_local_variable'
  '7-create_global_variable'
  '8-true_knowledge'
  '9-divide_and_rule'
  '10-love_exponent_breath'
  '11-binary_to_decimal'
  '12-combinations'
  '13-print_float'
  '100-decimal_to_hexadecimal'
  '101-rot13'
  '102-odd'
  '103-water_and_stir'
)

length=${#file_names[@]}

function submit_tasks() {
  echo "# 0x03-shell_variables_expansions" > README.md
  for ((i = 0; i <= "${length}"; i++)); do
    echo '#!/bin/bash' >"${file_names[i]}"
    echo "${commands[i]}" >>"${file_names[i]}"
    chmod +x "${file_names[i]}"

    git add .
    git commit -m "finished task ${i}"
  done
  
  git push

}

if [[ "${#file_names[@]}" == "${#commands[@]}" ]]; then
  submit_tasks
else
  echo 'file_name and commands length are not equal'
fi
