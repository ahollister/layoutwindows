# Position active window top left

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
  wmctrl -r :ACTIVE: -e 0,100,110,1765,940
else
  wmctrl -r :ACTIVE: -e 0,100,150,1765,940
fi
