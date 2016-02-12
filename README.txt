----------------------------------------
              DISCLAIMER
This script (program) is still in early development stages and is written for English Windows Operating Systems. 
I will not be responsible for any adverse effects from running my software.
----------------------------------------- 

This is a Windows shell script that when pasted into a shell and ran will query ipify.com and save your current public IP address and timestamp to a file on the Desktop. It is intended to monitor changes in dynamically allocated IP addresses.

You will want to change the timing settings before pasting to the shell.
The time between checks can be changed by changing $s, in seconds. 
$t is the number of checks to perform.

To run, paste into PowerShell window and hit Enter. It will display the estimated run time and total number of records written in that PowerShell session. The record counter is at variable $line, so to reset it type $line = 0. 

-----------------------------------------
Note: I do not recommend running this program by opening it with PowerShell, as there are security issues with running unsigned scripts. Instead, open it with Notepad (or your favorite replacement) and copy the entire document to the Clipboard.