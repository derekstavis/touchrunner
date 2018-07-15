function __touchrunner_keydown -a index
  set -l tasks (__touchrunner_list_tasks)
  set -l cmd "npm run"

  if test -n "$touchrunner_command"
    set cmd "$touchrunner_command"
  end

  commandline -r "$cmd $tasks[$index]"
  commandline -f execute
end
