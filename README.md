## Overview

This repository contains solutions for the ARM Template and PowerShell Assement :

1. **Section 1 -ARM Templates - ARM Template Deployment(Chose Problem 3)**: Deploy multiple Azure Storage Accounts with different replication types using a single parameter file.
2. **Section 2:Powershell - PowerShell Script for Windows Update(Chose Problem 1)**: A script that runs Windows updates with an option to restart or ignore restart.

## Repository Structure

```
|-- storage_accounts.json          # ARM Template for deploying storage accounts
|-- storage_accounts.parameters.json  # Parameter file for the ARM template
|-- windows_update.ps1             # PowerShell script to run Windows update
|-- README.md                      # Documentation of the project
```

---

## **Section 1 Solution (Chose Problem 3): ARM Template for Deploying Storage Accounts**

### **Overview:**

This ARM template enables the deployment of multiple Azure Storage Accounts with different replication types using a single parameter file.

### **Files:**

- [`storage_accounts.json`](./storage_accounts.json): ARM template.
- [`storage_accounts.parameters.json`](./storage_accounts.parameters.json): Parameter file for storage account deployment.

### **Deployment Instructions:**

Use the following Azure CLI command:

```sh
az deployment group create --resource-group <ResourceGroup> --template-file storage_accounts.json --parameters storage_accounts.parameters.json
```

Replace `<ResourceGroup>` with the appropriate Azure resource group name.

---

## **Section 2 Solution  (Chose Problem 1): PowerShell Script to Run Windows Updates**

### **Overview:**

This PowerShell script automates the Windows Update process and allows the user to choose whether to restart the system after updates.

### **File:**

- [`windows_update.ps1`](./windows_update.ps1): PowerShell script for running Windows updates.

### **Execution Instructions:**

1. Ensure proper Permisions.
2. Run the script:
   ```powershell
   .\windows_update.ps1
   ```
3. When prompted, enter `Yes` to restart the system after updates or `No` to skip the restart.

---

## **Author**

**Mxolisi Tshezi**
