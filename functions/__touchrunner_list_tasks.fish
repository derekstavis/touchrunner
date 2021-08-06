set -g __touchrunner_script 'Object.keys(require("./package.json").scripts).forEach(n => console.log(n))'

function __touchrunner_list_tasks
  set -l stat (stat -f "%m" "package.json")

  if test "$stat" != "$__touchrunner_mtime"
    set -g __touchrunner_mtime $stat
    set -g __touchrunner_packages (node -e "$__touchrunner_script" 2>/dev/null)
  end

  printf "%s\n" $__touchrunner_packages
end
