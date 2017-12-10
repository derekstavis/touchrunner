function __touchrunner_list_tasks
  if test -f ./package.json
    set -l list_scripts 'Object.keys(require("./package.json").scripts).forEach(n => console.log(n))'
    node -e "$list_scripts" ^/dev/null
  end
end
