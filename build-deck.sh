#!/usr/bin/env bash

topics_folder=topics
target_file=inaugural-presentation.md

topics=(
  deckset-configuration-commands.md
  title.md
  topics.md
  who-am-i.md
  philosophical-perspective-on-repair.md
  philosophical-perspective-on-repair--01-new-life.md
  philosophical-perspective-on-repair--02-second-life.md
  how-things-are-sealed.md
  how-to-diagnose-a-problem.md
  fear.md
  add-notes-to-repairs-for-others.md
  how-to-close-things.md
  resources.md
  conclusion.md
  in-closing.md
)

cat_command="cat "

for topic in "${topics[@]}"; do
  cat_command="${cat_command}$topics_folder/$topic "
done

cat_command="${cat_command} > $target_file"

eval $cat_command

open $target_file -a /Applications/Deckset.app/
