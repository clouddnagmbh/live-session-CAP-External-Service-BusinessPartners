# ⚙️ 04 – Add Service Handler

This branch adds runtime logic to forward requests to the external API.
The CAP service now actively connects to the external OData service.

---

## 🎯 Objectives

- Implement service handler
- Use cds.connect.to()
- Forward OData queries dynamically

---

## 🗂 Relevant Files

```
srv/
├── service.cds
└── service.js
```

---

## 🧠 Handler Logic

Conceptual implementation:

```
import cds from '@sap/cds';

export class BusinessService extends cds.ApplicationService {
    async init() {
        const bupa = await cds.connect.to('API_BUSINESS_PARTNER');

        this.on('READ', 'A_BusinessPartner', async (req) => {
            return bupa.run(req.query);
        });

        return super.init();
    }
}
```

---

## 🔄 Runtime Flow

Client → CAP Handler → External SAP API → Response

---

## 🧠 What You Learned

- How to implement handlers
- How to forward queries
- How CAP acts as middleware