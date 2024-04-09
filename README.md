# MacOS_Dock_Profile_Builder
> [!WARNING]
> Do not run the program without editing the `.Text` file **FIRST**!!

> [!WARNING]
> Make sure to take a screenshot or take note of how your app dock is configured now, just in case you mess up.

> [!TIP]
> When cloning this `repo` you should clone it in your **User** folder or wherever your `terminal` opens up automatically so you can access this `dock profile switcher app` without having to 

# macOS install and use:
This is for those 'MacOS' users who want to change the layout and configuration of their Application Dock bar with different apps by the use of different profiles. There are two files required for this program to work:

# First steps:

* Use these 2 commands to clone and cd into the 'cd' into the repo.
```
git clone https://github.com/First-division/MacOS_Dock_Profile_Builder.git
cd MacOS_Dock_Profile_Builder
```
# Editing the DockProfiles.txt file:
* You MUST change the file `DockProfiles.txt` and change the text format with different profiles and applications in the order you want them from left to right on the Dock and up and down in the txt file. 

* to find out the exact order of your `App Dock` open your `favorite terminal` and type the command:

`defaults read com.apple.dock persistent-apps | grep _CFURLString | sed 's/.*\\//; s/\";//'`

This will give you a readout of all of the apps on your dock. Here is what an app (An (1) of them) string could look like:
* Example:
```
"_CFURLString" = "file:///Applications/Terminal.app/";
"_CFURLStringType" = 15;
```
Replace all of the contents with the readout of the command above

There will be many of these in order. Now it's time to use your favorite `text editor` and replace all the `example _CFURLString` 

# Getting Individual App Locations:
There is generally `1` way (other than finding app paths via the terminal)to copy the file location of your apps:
## The first way, follow these steps: 
  ```
  1. Open your Finder on Mac
  2. on the left-hand side of the window, find the applications folder
  3. find the app you want to copy
  4. and right click or use two fingers on the trackpad and click to open the context menu for that app
  5. find and click on the option called "copy"
  ```
This copies the `path` to that file. It should look something like this: `file:///System/Applications/Launchpad.app/`. If it doesn't, you can use that example and change everything after the `Applications/` to the app you want. `e.g`: `/Discord.app`

# Running the program:

You will run the `DockProfile.sh` file in the terminal using a command `AFTER` you edit the `txt file`.
Use the command:
```
./DockProfile.sh
```
And follow the steps to change the profile



