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
for sid in $(aerospace list-workspaces --monitor 1); do
  sketchybar --add item space.$sid left \
      --subscribe space.$sid aerospace_workspace_change \
      --set space.$sid \
      drawing=off \
      background.color=0x44ffffff \
      background.corner_radius=5 \
      background.height=20 \
      background.drawing=on \
      icon="$sid" \
      icon.highlight_color=0xfffff68f \
      label.highlight_color=0xfffff68f \
      icon.padding_left=4 \
      icon.padding_right=2 \
      label.padding_left=4 \
      label.padding_right=18 \
      label.font="sketchybar-app-font:Regular:16.0" \
      label.font.size="$(getLabelSize)" \
      click_script="aerospace workspace $sid" \
      script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
# Ending of the loop

# Load Icons on startup
for sid in $(aerospace list-workspaces --monitor 1 --empty no); do
  apps=$(aerospace list-windows --workspace "$sid" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

  sketchybar --set space.$sid drawing=on

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app; do
      icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
    done <<<"${apps}"
  else
    icon_strip=""
  fi
  sketchybar --set space.$sid label="$icon_strip"
done

sketchybar --add item space_separator left \
  --set space_separator icon="›" \
  icon.padding_left=4 \
  label.drawing=off \
  script="$PLUGIN_DIR/space_windows.sh" \
  --subscribe space_separator aerospace_workspace_change

spaces=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
  background.border_width=2
  background.drawing=on
)

sketchybar --add bracket spaces '/space\..*/' \
           --set spaces "${spaces[@]}"        \
