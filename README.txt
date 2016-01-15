Enter ‘chmod +x LTInstall_General’ and press [Enter].

The agent must be installed and run with administrative privileges.  This can be accomplished either by using the sudo command as shown or by simply logging in with root or another account with these permissions. To use the sudo command, enter ‘sudo ./LTInstall_General’ and press [Enter]. You will be prompted for your password.

Enter your administrative password and press [Enter].

The installer will automatically attempt to detect if your operating system is 32bit or 64bit.  If it cannot detect it, you will be prompted to choose between a 32bit or 64bit version. This must correspond to your operating system.  Enter ‘1’ for 32bit or ‘2’ for 64bit and press [Enter].
The agent will install in /usr/lib/labtech.  These directories will be created for you, if they do not exist.  During installation, the installer will start the LTAgentMonitor.  This runs in the background and is designed to keep the Linux agent running and restart it if it goes down.    The LTAgentMonitor will see that the agent is not running and start it.  The agent is now completely installed.

Verify the LTAgentMonitor and Agent are running.  Enter ‘ps –ef | grep Agent’ and press [Enter]. You should see LTAgentMonitor and LTLinuxAgent


----------------------------------------------------------------------------------------------------------------------------------------------
    Once installed, verify that the following files were created in the /usr/lib/labtech directory.  Enter ‘cd /usr/lib/labtech’ and press [Enter] and then enter ‘ls –l’ and press [Enter].
        AgentRegistry: Modifiable configuration items.
        AgentInternals: Configuration items.  These items should NOT be altered.
        Configuration: Agent template information
        LTLinuxAgent: This is the executable for the agent.
        LTUninstall_General: This script is used to uninstall the agent.  This script can be run from any directory. 
        LTAgentMonitorLog.txt: This log records activity of the agent monitor used to start the agent when the agent is not running.
        LTErrors.txt: This file is located in /var/log. This is the agent’s log and is used to see what the agent is doing and for diagnosing problems. This log does not need any maintenance. It will remove older lines in order to keep its size from becoming too large. This log shows agent activities, including communication between the agent and the server, both before and after encryption/decryption. For additional information on logs, please refer to Linux Logs.
        systray:  This is the directory for the LabTech tray. This directory contains the following files:
            LTSystray:  This is the system tray executable.  The LabTech tray is not started automatically.  It must be started manually by entering its name.  It must be run by non-administrative accounts. It may output error messages if run with root privileges.
            SystrayLog.txt: This file will not exist until the LabTech tray is started.  It records LabTech tray errors and other important events.
            Images:  All other files in this directory are image files used by the LabTech tray as icons. 
    The next step is to start the LabTech tray.  It should not be started as administrator.  Change to a local account, then enter ‘cd /usr/lib/labtech/systray’ and press [Enter] if not already in directory. 

NOTE:  Text-only, non-graphical Linux systems cannot run graphical programs, like the LabTech tray.  For those systems, commands which the agent delegates to the LabTech Tray cannot be run.

    Enter ./LTSystray and press [Enter] to start the LabTech tray. The LabTech tray icon should display in your system tray and will look similar to the following.  This may appear at the top or bottom of your screen. In the image below, the Tray is indicated by the green robot head.
