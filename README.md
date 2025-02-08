# Cloud Engineer Coding Assessment

## Overview
This repository contains solutions for the Cloud Engineer Coding Assessment. The assessment includes two tasks:

1. **ARM Template Deployment**: Deploy multiple Azure Storage Accounts with different replication types using a single parameter file.
2. **PowerShell Script for Windows Update**: A script that runs Windows updates with an option to restart or ignore restart.

## Repository Structure
```
|-- storage_accounts.json          # ARM Template for deploying storage accounts
|-- storage_accounts.parameters.json  # Parameter file for the ARM template
|-- windows_update.ps1             # PowerShell script to run Windows update
|-- README.md                      # Documentation of the project
```

---

## **Solution 1: ARM Template for Deploying Storage Accounts**

### **Overview:**
This ARM template enables the deployment of multiple Azure Storage Accounts with different replication types using a single parameter file.

### **Files:**
- [`storage_accounts.json`](./storage_accounts.json): ARM template.
- [`storage_accounts.parameters.json`](./storage_accounts.parameters.json): Parameter file for storage account deployment.

### **Deployment Instructions:**
To deploy the ARM template, use the following Azure CLI command:
```sh
az deployment group create --resource-group <ResourceGroup> --template-file storage_accounts.json --parameters storage_accounts.parameters.json
```
Replace `<ResourceGroup>` with the appropriate Azure resource group name.

---

## **Solution 2: PowerShell Script to Run Windows Updates**

### **Overview:**
This PowerShell script automates the Windows Update process and allows the user to choose whether to restart the system after updates.

### **File:**
- [`windows_update.ps1`](./windows_update.ps1): PowerShell script for running Windows updates.

### **Execution Instructions:**
1. Open PowerShell **as Administrator**.
2. Navigate to the directory where `windows_update.ps1` is located.
3. Run the script:
   ```powershell
   .\windows_update.ps1
   ```
4. When prompted, enter `Yes` to restart the system after updates or `No` to skip the restart.

---


## **Author**
**Mxolisi Tshezi**

