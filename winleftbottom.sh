# Position active window bottom left

wmctrl -r :ACTIVE: -b remove,fullscreen
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz

current_window=`xdotool getwindowfocus getwindowname`
if [[ 
  $current_window == *"Firefox"* ||
  $current_window == *"Spotify"* ||
  $current_window == *"Visual Studio"* ||
  $current_window == *"Slack"*
]]; 
then
  wmctrl -r :ACTIVE: -e 0,100,1130,1765,940
else
  wmctrl -r :ACTIVE: -e 0,100,1170,1765,940
fi
