**Practice Lab: Using PowerShell to Configure Windows**

 

**Summary**

In this lab you will learn how to use PowerShell to Configure Windows.

 

**Note**: In Windows PowerShell, a hyphen (-) precedes each cmdlet parameter
name, as with the -Value parameter in the preceding code. When you copy text
from a file, word wrapping might separate the hyphen from the parameter name.
Therefore, inspect all copied cmdlets and parameters to ensure that they follow
the Windows PowerShell syntax requirements.

 

**Scenario**

Your supervisor, Mr. Meadows, wants you to use Windows PowerShell to test the
scripting environment. So you run several PowerShell commands on Win10-CL1 to get
familiar with the syntax and create a script to list all running services using
the PowerShell ISE.

 

Task 1: Use Windows PowerShell to configure a device

1.  Sign in to **Win10-CL1** as **SYSBAS\\Administrator** with the password
    **Pa55w.rd.**

2.  Select **Start** and type **PowerShell**. Select **Run as administrator**.
    In the User Account Control window select **Yes**.

3.  At the PowerShell window, type the following and then press **Enter**:

>   Get-ExecutionPolicy

1.  Confirm the current setting of the PowerShell execution policy is set to
    **Restricted.**

2.  If the execution policy is set to **Restricted**, change it to
    **Unrestricted** by running the following command at the PowerShell window:  
    Set-ExecutionPolicy Unrestricted

3.  Confirm that the execution policy is now **Unrestricted**.

4.  At the PowerShell window, launch Notepad by typing the following command and
    then press **Enter**:

>   Start-Process Notepad

1.  At the PowerShell window, type the following command and then press
    **Enter**:

>   Get-Process

1.  Review the list of all running processes. Identify that Notepad is running
    and note the Process ID.

2.  At the PowerShell window, type the following command and then press
    **Enter**:

>   Stop-Process -Id [ID]

1.  Verify that the Notepad window is no longer open.

2.  At the PowerShell window, list the application log entries by typing the
    following command and then press **Enter**:

>   Get-EventLog -LogName "Application"

1.  Select **Start** and type **Telnet**. Select **Turn Windows features on and
    off**.

2.  In the Windows Features window verify that **Telnet Client** is not
    selected.

3.  At the PowerShell Window, type the following command, and then press
    **Enter**:  
    Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient"  
    *Note: This will install the Telnet Client windows feature.*

4.  Select **Start** and type **Telnet**. Select **Open.**

5.  Close all open windows.

>    

Task 2: Use a Windows PowerShell Script


1.  Select **Start** and type **Powershell ISE**. Press **Enter**.

2.  In the Windows PowerShell ISE, open the script file
    **E:\\Labfiles\\Configure\\Services.ps1**.

3.  Read the script, and then note what the script is doing, according to the
    following note.

    -   _Note:_
    -   _Comments are green._
    -   _Variables are red._
    -   _Cmdlets are bright blue._
    -   _Text in quotation marks is dark red._

4.  Select line 3 in the script, and then select **Run selection (F8)**.  
    *Note: Only the command in line 3 will be executed.*

5.  Select **Run script (F5)**, and then read the output.  
    *Note: The output does not have multiple colors.*

6.  At the end of line 14, type **–ForegroundColor $color**.

7.  On the toolbar, select **Run script (F5)** in the Windows PowerShell ISE
    window. Select **OK** to save the file, and then read the output.  
    *Note: Running services are green, and services that are not running are
    red.*

8.  On line 16, type **Write-Host "A total of" \$services.count "services were
    evaluated"**.

9.  Select **Run script (F5)**, and in the Windows PowerShell ISE window select
    **OK**.

10.  Select **Show Command Add-on** in the PowerShell ISE toolbar.

11.  In the **Commands** pane, build a **Write-Host** cmdlet with the following
    options:

    -   BackgroundColor: **Gray**

    -   ForegroundColor: **Black**

    -   Object: **"Script execution is complete"**

12.  Select **Copy** and paste the command to line 17 of the script.

13. Select **Run script (F5)**, and in the Windows PowerShell ISE window select
    **OK**

14. Select **Start** and type **PowerShell**. Press **Enter**.

15. At the PowerShell window, type the following command and then press
    **Enter**:  
    Set-Location E:\\Labfiles\\Configure

16. At the PowerShell window, type the following and then press **Enter**:  
    .\\Services.ps1

17. Close all open windows.

 

**Results:** After completing the exercise you have learned how to manage
Windows 10 using PowerShell and PowerShell scripts.

**END OF LAB**