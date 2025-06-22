# Windows 11 Pro Activation PowerShell Script

This PowerShell script automates the process of removing old license keys, clearing previous KMS configurations, and activating **Windows 11 Professional** using a public KMS server.

> ⚠️ This script is intended strictly for **educational and testing** purposes in environments where volume activation is legally permitted.

---

## 💻 Script Overview

The script runs the following commands in sequence:
````markdown
Write-Host "Uninstalling current product key..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /upk" -NoNewWindow -Wait

Write-Host "Clearing the product key from the registry..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /cpky" -NoNewWindow -Wait

Write-Host "Clearing any configured KMS server..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /ckms" -NoNewWindow -Wait

Write-Host "Installing new product key..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX" -NoNewWindow -Wait

Write-Host "Setting the KMS server to kms8.msguides.com..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /skms kms8.msguides.com" -NoNewWindow -Wait

Write-Host "Activating Windows..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /ato" -NoNewWindow -Wait

Write-Host "All commands completed." -ForegroundColor Green
````

Each command performs a distinct function in resetting and reconfiguring the Windows activation setup.

### Independent Malware Analysis
    https://www.virustotal.com/gui/file/fdb4afdd4e21a3efe16e5e91d585c27297c548e791c83884d387538c947f064e
    https://www.hybrid-analysis.com/sample/fdb4afdd4e21a3efe16e5e91d585c27297c548e791c83884d387538c947f064e
---

## 🧰 What This Script Does

1. **Uninstalls the current product key**

   ```powershell
   slmgr.vbs /upk
   ```

2. **Clears the product key from the registry**

   ```powershell
   slmgr.vbs /cpky
   ```

3. **Clears any previously configured KMS server**

   ```powershell
   slmgr.vbs /ckms
   ```

4. **Installs the official Microsoft KMS client key for Windows 11 Pro**

   ```powershell
   slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
   ```

5. **Sets the KMS server**

   ```powershell
   slmgr /skms kms8.msguides.com
   ```

6. **Activates Windows using the KMS server**

   ```powershell
   slmgr /ato
   ```

---

## 🚀 How to Use

### 1. **Download the Script**

Save `activatewin11pro.ps1` from this repository to your **Downloads** folder.

---

### 2. **Open PowerShell as Administrator**

> 🔒 This script must be run as **Administrator**.

To do this:

* Click the **Start Menu**
* Type `PowerShell`
* **Right-click** on **Windows PowerShell**
* Choose **"Run as administrator"**

---

### 3. **Navigate to the Downloads Folder**

In the PowerShell window, enter the following commands:

```powershell
cd ~
cd Downloads
```

This ensures you're in the directory where your script is saved.

---

### 4. **Run the Script with Execution Policy Bypass**

Now run the script using this command:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; .\activatewin11pro.ps1
```

---

### ❓ What Does That Command Do?

- `Set-ExecutionPolicy Bypass`: Temporarily allows script execution.
    
- `-Scope Process`: Applies only to the current PowerShell session (safe and non-permanent).
    
- `-Force`: Skips confirmation prompts.
    
- `.\activatewin11pro.ps1`: Executes the script file in the current folder.
    
---

## ✅ Confirm Activation

Once the script completes, confirm that Windows is activated:

1. Open **Settings**
2. Go to **System > Activation**
3. You should see **Product Activated Successfully**

---

## ⚠️ Disclaimer

This script uses Microsoft’s **public KMS client key** and connects to a third-party KMS server.

It is intended for:

* Lab/testing environments
* Virtual machines
* Educational demonstrations

**Do not use this script for unauthorized activation.**
You are responsible for ensuring legal and license-compliant usage.
