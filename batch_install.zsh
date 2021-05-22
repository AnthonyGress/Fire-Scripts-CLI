#!/bin/zsh
#Branding
pwd="$(dirname "$(which "$0")")"
cat $pwd/PenroseASCII.txt
#BatchInstall Function
BatchInstall(){
  for file in $pwd/*.apk; do adb install $file; done
}
#Ask for IP
echo -e "\r"
echo "What is your Name & What is your Quest?"
echo "Also...What is your Fire TV's IP Address?"
read ip1
echo -e "\r"
#Connect over ADB
adb connect $ip1
if [ -z "$ip1" ]; then
  BatchInstall
else
  adb connect $ip1:5555
  BatchInstall
fi
