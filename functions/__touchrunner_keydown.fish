function __touchrunner_keydown -a index
  set -l tasks (__touchrunner_list_tasks)
  commandline -r "npm run $tasks[$index]"
  commandline -f execute
end
