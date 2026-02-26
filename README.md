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
const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
    const bupa = await cds.connect.to('API_BUSINESS_PARTNER');

    this.on('READ', 'A_BusinessPartner', async (req) => {
        return bupa.run(req.query);
    });
});
```

---

## 🔄 Runtime Flow

Client → CAP Handler → External SAP API → Response

---

## 🧠 What You Learned

- How to implement handlers
- How to forward queries
- How CAP acts as middleware