#!/bin/zsh
#Branding
pwd="$(dirname "$(which "$0")")"
cat $pwd/PenroseASCII.txt
#Timer Value
echo "How many minutes until the screensaver starts?"
read timerValue
timerValue=$[ timerValue*60000 ]
#Set Custom Screensaver function
SetScreensaver(){
  adb shell settings put secure screensaver_components uk.co.liamnewmarch.daydream/uk.co.liamnewmarch.daydream.WebsiteDaydreamService & echo "Set Custom Screensaver"
  echo -e "\r"
  adb shell settings put secure sleep_timeout 2147460000 & echo -e "Set Screensaver Timeout - Never"
  echo -e "\r"
  adb shell settings put system screen_off_timeout $timerValue & echo "Set Screen Off Timeout - $timerValue"
  echo -e "\r"
}
#Connect over ADB
if [ -z "$ip1" ]; then
  SetScreensaver
else
  adb connect $ip1
  SetScreensaver
fi
