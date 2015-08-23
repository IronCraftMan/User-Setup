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
        display dialog "User Setup will now setup App Store and Disk Utility debug prefs." buttons {"Canel", "Ok"} default button 2
        if the button returned of the result is "Ok" then
        do shell script "defaults write com.apple.appstore ShowDebugMenu -bool true"
        
        do shell script "defaults write com.apple.DiskUtility advanced-image-options 1"
        
        do shell script "defaults write com.apple.DiskUtility DUDebugMenuEnabled 1"
        
        
        
        else
            tell me to quit
        end if
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script