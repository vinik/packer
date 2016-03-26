#!/usr/bin/env bash
set -o errexit

unset GEM_PATH

for f in $(git ls-files '*.json' | grep -v /) ; do
  echo -en "$f "
  diff -q $f <(jq . < $f)
  echo "✓"
done

for f in $(git ls-files '*.yml') ; do
  echo -en "$f "
  ruby -ryaml -e "YAML.load_file('$f')"
  echo "✓"
done

for f in $(git grep -l '^#!/usr/bin/env bash') ; do
  if [[ ! -x "$f" ]] ; then continue ; fi
  echo -en "$f "
  bash -n $f
  echo "✓"
done

rubocop
./run-foodcritic cookbooks
