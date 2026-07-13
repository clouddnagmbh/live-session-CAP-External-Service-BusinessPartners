# 🧩 Consuming External Services – Business Partners

This repository is structured as a step-by-step workshop demonstrating how to consume an external SAP OData V2 service ([Business Partner (A2X)](https://api.sap.com/api/API_BUSINESS_PARTNER/overview)) within an SAP Cloud Application Programming Model (CAP) application — and how to deploy the result to SAP BTP, Cloud Foundry runtime.

Each branch represents a dedicated stage of the development process.
The `main` branch contains the final, completed version of the application.

The project shows how to:
- Import an external OData service definition (EDMX)
- Expose a projection on the external entities
- Delegate queries to the remote service in a custom handler
- Add a Fiori Elements UI
- Configure SAP HANA, XSUAA and Destinations for production
- Deploy the application as an MTA to SAP BTP

---

## 🚀 Step-by-Step Workshop Branches

| Phase | Branch | Key Focus |
| :--- | :--- | :--- |
| **01** | [`01-external-service`](../../tree/01-external-service) | Import the `API_BUSINESS_PARTNER` EDMX with `cds import` |
| **02** | [`02-service-definition`](../../tree/02-service-definition) | Expose a projection on `A_BusinessPartner` |
| **03** | [`03-consuming-external-service`](../../tree/03-consuming-external-service) | Configure `cds.requires` with the sandbox URL and API key (`.env`) |
| **04** | [`04-service-handler`](../../tree/04-service-handler) | Delegate `READ` requests to the remote service via `cds.connect.to` |
| **05** | [`05-fiori-ui`](../../tree/05-fiori-ui) | Generate a List Report app with the Fiori Application Generator |
| **06** | [`06-hana`](../../tree/06-hana) | `cds add hana` for production persistence |
| **07** | [`07-xsuaa`](../../tree/07-xsuaa) | `cds add xsuaa` for production authentication |
| **08** | [`08-destination-cap`](../../tree/08-destination-cap) | Production credentials via a named destination |
| **09** | [`09-destination-btp`](../../tree/09-destination-btp) | Create the destination in the SAP BTP subaccount |
| **10** | [`10-mta`](../../tree/10-mta) | `cds add mta` deployment descriptor |
| **11** | [`11-workzone`](../../tree/11-workzone) | `cds add workzone` UI deployment configuration |
| **12** | [`12-deployment`](../../tree/12-deployment) | `cf login --sso` and `cds up` |

---

## 🧩 Project Architecture Overview

The final application (main branch) consists of:
- **srv/external/** → imported `API_BUSINESS_PARTNER` model (EDMX + CDS)
- **srv/** → service definition (projection) & delegation handler
- **app/business-partners-example/** → Fiori Elements List Report
- **mta.yaml** → deployment descriptor (HANA, XSUAA, Destination, HTML5 Repo)

High-level flow:
1. Client calls the OData endpoint / Fiori UI
2. CAP service handler delegates the query to the remote service
3. Sandbox (development) or Destination (production) provides connectivity
4. The result is returned via OData V4

---

## ▶️ Running the Application Locally

```bash
npm install
cds watch
```

Create a `.env` file based on `.env.example` and add your API key from the
[SAP Business Accelerator Hub](https://api.sap.com/api/API_BUSINESS_PARTNER/overview).

The service will be available at:
`http://localhost:4004/odata/v4/business`

---

## ☁️ Deploying to SAP BTP

```bash
cf login --sso
cds up
```

---

## 🛠 Technologies Used

- SAP Cloud Application Programming Model (CAP)
- Node.js
- OData V2 (consumption) / OData V4 (exposure)
- SAP Fiori Elements / SAPUI5
- SAP HANA Cloud, XSUAA, Destination Service
- SAP Business Accelerator Hub Sandbox

---

## 🔀 How to Use These Branches

You can explore a specific step locally by checking out the branch:
`git checkout 01-external-service`

Or start directly with the completed implementation:
`git checkout main`
