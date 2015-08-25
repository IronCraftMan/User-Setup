--
--  AppDelegate.applescript
--  User Setup
--
--  Created by Cole on 6/15/15.
--  Copyright © 2015 Cole. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
        
        set version to "0.3"
        
        set resources to path to resource "Base.lproj"
        set res to POSIX path of resources
        

        display dialog "User Setup will now setup App Store and Disk Utility debug prefs." buttons {"Canel", "Ok"} default button 2
            if the button returned of the result is "Ok" then
    #        do shell script "defaults write com.apple.appstore ShowDebugMenu -bool true"
    
    #       do shell script "defaults write com.apple.DiskUtility advanced-image-options 1"
    
    #       do shell script "defaults write com.apple.DiskUtility DUDebugMenuEnabled 1"
    
    # do shell script "defaults write com.apple.Safari IncludeInternalDebugMenu 1"
    
    
    set finderPrefs to path to resource "com.apple.finder.plist"
    do shell script "mv " & finderPrefs "~/Desktop/tmp" # (commented for debug) "~/Library/Prefences" do shell script "killall Finder"
    
    
    
    
    # set default terminal window:
    # set termPrefs to path to resource "finderPrefs" do shell script "mv " &
    # defaults write com.apple.Terminal "Default Window Settings" -string "X"

    # TM local backups sudo tmutil disablelocal   (enable local: "sudo tmutil enablelocal")
    
    else
    tell me to quit
end if



        
        
        
        
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script