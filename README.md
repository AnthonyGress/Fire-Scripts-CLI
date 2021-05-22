# Fire-Scripts-Cli
A CLI tool to use ADB commands to modify any firestick.

![Fire Scripts CLI Splash](https://github.com/techx-guy/Fire-Scripts-CLI/blob/main/Fire%20Scripts%20CLI%20Splash.png)

Depends on ADB, must be installed into /bin/bash
On Mac: 
1. Install HomeBrew <br>
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  
2. Install ADB <br>
  brew install android-platform-tools




1. Install ADB and make sure it is in the /bin/bash directory (or /bin/zsh)
2. Make sure you are on the same WiFi network as your Firestick. 
3. Find your IP address on your firestick in Firestick Settings > My Fire TV > About > Network
4. Go to Firestick Settings > My Fire TV > Developer Options and turn on ADB debugging and Apps from Unknown Sources.
5. Run any script and it will ask you to input the IP address. (If you are already connected over ADB, just hit enter)

Set Screensaver
  Lets you set a custom screensaver app, cutome time-on duration, and custom time-off. I have included a modified application called "Website Daydream" that changes the default wallpaper to the website https://clients3.google.com/cast/chromecast/home
  
After installing Website Daydream, install the application called Activity launcher (https://www.f-droid.org/en/packages/de.szalkowski.activitylauncher/). Open it, and just touch the website daydream app in order for it to work.
  
Check Screensaver
  Gets the current values for your screensaver and prints them out.
  
Batch-Install
  Installs ALL files with .apk extension in the current directory onto your firestick.
  
Debloat
  Disables ALL unnecesscary Amazon services that are not needed for core functionality.
