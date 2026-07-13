# 🚀 12 – Build and Deploy to SAP BTP

This branch contains the final state of the application, built and deployed to the SAP BTP, Cloud Foundry runtime.

---

## 🎯 Objectives

- Log in to Cloud Foundry
- Build and deploy the application
- Verify the deployment

---

## ▶️ Commands

```bash
cf login --sso     # log in to Cloud Foundry
cds up             # build and deploy the MTA
```

Verify the deployment:

```bash
cf services        # list created service instances
cf apps            # check that all apps are running
```

Afterwards the application can be accessed via the route shown by `cf apps`.

---

## 🗂 Relevant Files

```
app/business-partners-example/dist/   → built UI artifacts
```

---

## 🧠 What You Learned

- How `cds up` builds and deploys the entire MTA in one step
- How to verify service instances and running applications
- How to access the deployed application in the browser
