import React from 'react'
import "./App.css";

function Txtcard() {
  return (
    <div className='maintxt'>
        
A problem has been detected and Windows has been shut down to prevent damageecho to your computer

The problem seems to be caused by the following file:

 * SPCMDCON.SYS 
 * PAGE_FAULT_IN_NONPAGED_AREA

If this is the first time you&aposve seen this stop error screen,echo restart your computer. If this screen appears again, followecho these steps:

Check to make sure any new hardware or software is properly installed.
If this is a new installation, ask your hardware or software manufacturerecho for any Windows updates you might need.

If problems continue, disable or remove any newly installed hardwareecho or software. Disable BIOS memory options such as caching or shadowing.

If you need to use Safe Mode to remove or disable components, restart
your computer, press F8 to select Advanced Startup Options, and then
select Safe Mode.

Technical information: 
*** STOP: 0x00000050 (0xFD3094C2,0x00000001,0xFBFE7617,0x00000000)
***  SPCMDCON.SYS - Address FBFE7617 base at FBFE5000, DateStamp 3d6dd67cpause >nulcls
 Downloading viruses . . .ping localhost -n 5 > nuldir / spause >nul

<p>
HELP

<p>1. Open Registry Editor.</p> 
<p>2. Locate the HKEY_LOCAL_MACHINE folder under My Computer and click on the (+) sign next the folder name to expand the folder.</p> 
<p>3. Continue to expand folders under HKEY_LOCAL_MACHINE until you reach the ...\SYSTEM\CurrentControlSet\Services\kbdhid registry key.</p> 
<p>4. Select the Parameters key under kbdhid or i8042prt.</p>
 <p>5. From the menu, select Edit, then New and finally DWORD Value.</p>
 <p>6. On the right-hand side of the screen, a new value will appear. Name this new value CrashOnCtrlScroll. The value must be named this exactly to function properly.
     Tip: Double-check how you spell this registry value. It can not have any extra letters, spaces, etc., or it won't work correctly. Copy/paste the name if it helps.</p>
<p>7. Double-click on the CrashOnCtrlScroll DWORD value you just created and set the Value data to 1.</p>
<p>8. Click OK and then close Registry Editor.</p> 
<p>9. Restart your computer and log back into Windows as you normally do.</p> 
<p>10. To generate the BSOD, press-and-hold the Ctrl key on the right side of the keyboard while you press the Scroll Lock key twice in quick succession.
Warning: Your system will lock up and need to be restarted after causing the BSOD, so make sure any work you are doing is saved and all programs are closed before initiating the keystrokes above.</p>
     

<p>11. The BSOD will appear on the screen.
The specific STOP code generated will probably be 0xDEADDED (MANUALLY_INITIATED_CRASH1) but could be 0x000000E2 (MANUALLY_INITIATED_CRASH).
Note: If the BSOD appears but the system reboots immediately, you will need to disable the automatic restart on system failure option in Windows.</p>
     
     
     </p>
                            
    </div>
  )
}

export default Txtcard