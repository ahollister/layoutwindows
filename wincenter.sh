# Position active window center

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
  wmctrl -r :ACTIVE: -e 0,1020,390,1800,1300
else
  wmctrl -r :ACTIVE: -e 0,1020,430,1800,1300
fi
