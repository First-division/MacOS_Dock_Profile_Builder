# MacOS_Dock_Profile_Builder
> [!WARNING]
> Do not use without editing txt file!!
> [!TIP]
> When cloning this `repo` you should clone it in your **User** folder or wherever your `terminal` opens up to automatically so you can access this `dock profile switcher app` without having to 

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

There will be many of these in order. Now it's time to use your favorite `text editor` and replace all the `example _CFURLString` 

# Getting Indivinual App locations:
with the ones you want your profiles to contain. if you want


3. The `DockProfile.sh` file is the file you will be running in the terminal using the command once you edit 




