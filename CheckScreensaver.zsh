#!/bin/zsh
#Branding
pwd="$(dirname "$(which "$0")")"
cat $pwd/PenroseASCII.txt
#Define CheckScreensaver Function
CheckScreensaver(){
  #Time until the TV screen goes blank after screensaver is active
  echo -e "\r"
  echo "Screensaver Timeout"
  ScreenTimeout=$(adb shell settings get secure sleep_timeout)
  if [ $ScreenTimeout==2147460000 ]
  then
    echo Never
  else
    echo $ScreenTimeout
  fi
  echo -e "\r"
  #Time until the Screensaver Start
  echo "Screen Off Timeout"
  OffTimeout=$(adb shell settings get system screen_off_timeout)
  echo $((OffTimeout/60000)) Minutes
  echo -e "\r"
  #Current Screensaver
  echo "Screensaver Application"
  Screensaver=$(adb shell settings get secure screensaver_components)
  if [ $Screensaver==uk.co.liamnewmarch.daydream/uk.co.liamnewmarch.daydream.WebsiteDaydreamService ]
  then
    echo Website Daydream
  elif [ $Screensaver==com.amazon.bueller.photos/.daydream.ScreenSaverService ]
  then
    echo Amazon Default
  else
    echo $Screensaver
  fi
  echo -e "\r"
}

#Ask for IP
echo -e "\r"
echo "What is your Name & What is your Quest?"
echo "Also...What is your Fire TV's IP Address?"
read ip1
echo -e "\r"
#Connect over ADB
if [ -z "$ip1" ]; then
  CheckScreensaver
else
  adb connect $ip1:5555
  CheckScreensaver
fi
