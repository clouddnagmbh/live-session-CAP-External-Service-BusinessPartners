# 🧩 02 – Add Service Definition

This branch introduces a custom CAP service definition that exposes selected entities from the imported external model.

⚠️ No runtime handler logic exists yet.

---

## 🎯 Objectives of This Step

- Create a CAP service definition
- Use projections on external entities
- Introduce a controlled service layer

---

## 🗂 Relevant Files

```
srv/
├── external/API_BUSINESS_PARTNER.cds
└── service.cds
```

---

## 🏗 Service Definition Concept

Example structure:

```
using { API_BUSINESS_PARTNER as external } from './external/API_BUSINESS_PARTNER';

service BusinessPartnerService {
  entity Suppliers as projection on external.A_BusinessPartner;
}
```

---

## 🧠 What You Learned

- How to define CAP services
- How projections work
- Why a service abstraction layer is important