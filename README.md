# 🚀 12 – Build and Deploy to Cloud Foundry

This branch covers the steps to build and deploy the SAP CAP project to the
**Cloud Foundry Runtime** in **SAP BTP**.

---

## 🎯 Objectives

- **Authenticate** with SAP BTP via the Cloud Foundry CLI
- **Build and Deploy** the project using the CAP development stack
- **Verify** the status of services and running applications in the targeted
  space

---

## 🛠 Deployment Steps

### 1. Log in to Cloud Foundry

Before deploying, you must authenticate with your BTP subaccount. The `--sso`
flag is used for a browser-based login.

```bash
cf login --sso
```

**API Endpoint:** Ensure you are targeting the correct region (e.g.
`api.cf.us10-001.hana.ondemand.com`).

**Passcode:** Retrieve your temporary authentication code from the URL provided
in the terminal.

### 2. Build and Deploy

The CAP CLI provides a streamlined command to build the MTA (Multi-Target
Application) archive and push it to the cloud environment.

```bash
cds up
```

This command handles the creation of service instances (DB, XSUAA, etc.) and
starts the application server. As seen in the logs, the application `bupa-srv`
is staged and started.

## 📸 Verification

### List Service Instances

Verify that all required backing services—such as **HANA**, **XSUAA**, and
**Destination** have been successfully created and bound.

```Bash
cf services
```

### Check Application Status

Confirm that the `bupa-srv` and other modules are in a `started` state and
retrieve the public route (URL).

```Bash
cf apps
```

**Note:** In the screenshots, the `bupa-db-deployer` shows as `stopped`. This is
expected behavior for deployer tasks once they have successfully finished
pushing the database schema to HANA.

## 🗂 Relevant Files

```
mta.yaml          # The deployment descriptor for CF
package.json      # CAP project configurations
mta_archives/     # Generated MTAR file after build
```

## 🧠 What You Learned

- How to use the CF CLI to target a specific BTP Org and Space
- Using `cds up` for rapid, automated deployment of CAP projects
- How to interpret the lifecycle of deployer applications vs. service
  applications
