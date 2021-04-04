# Position active window bottom right

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
  wmctrl -r :ACTIVE: -e 0,1905,1130,1845,940
else
  wmctrl -r :ACTIVE: -e 0,1905,1170,1845,940
fi
