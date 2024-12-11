#!/bin/bash

sketchybar --add event aerospace_workspace_change

function getLabel() {
  ws="$1"
  label="$(aerospace list-windows --workspace $ws | awk -F '|' '!seen[$2]++ {print $2}')"

  if [ -z "$label" ]; then
    echo "Idle" 
  else
    echo "{$label}"
  fi
}

function getLabelSize() {
  echo 11; 
}

# Beginning of the loop
counter=0
for sid in $(aerospace list-workspaces --all); do

  if [ $counter -eq 5 ]; then
    break
  fi

  sketchybar --add item space.$sid left \
      --subscribe space.$sid aerospace_workspace_change \
      --set space.$sid \
      background.color=0x44ffffff \
      background.corner_radius=5 \
      background.height=20 \
      background.drawing=off \
      icon=$sid. \
      icon.highlight_color=0xfffff68f \
      label.highlight_color=0xfffff68f \
      icon.padding_left=8 \
      icon.padding_right=2 \
      label.padding_right=8 \
      label="$(getLabel $sid)" \
      label.font.size="$(getLabelSize)" \
      click_script="aerospace workspace $sid" \
      script="$CONFIG_DIR/plugins/aerospace.sh $sid"

  ((counter++))
done
# Ending of the loop

spaces=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
  background.border_width=2
  background.drawing=on
)

sketchybar --add bracket spaces '/space\..*/' \
           --set spaces "${spaces[@]}"        \
