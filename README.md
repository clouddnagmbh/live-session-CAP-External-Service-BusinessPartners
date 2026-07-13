# 🚀 11 – Configure SAP Build Work Zone

This branch prepares the Fiori UI for deployment to SAP BTP via the HTML5 Application Repository and SAP Build Work Zone.

---

## 🎯 Objectives

- Run `cds add workzone`
- Enhance `mta.yaml` with the UI deployment modules
- Add the app router configuration (`xs-app.json`)

---

## 🗂 Relevant Files

```
package.json
mta.yaml
app/business-partners-example/xs-app.json
app/business-partners-example/ui5.yaml
app/business-partners-example/webapp/manifest.json
```

---

## ⚙️ Behind the Scenes

- `package.json` → `destinations`, `html5-repo` and `workzone` are enabled in `cds.requires`
- `mta.yaml` → HTML5 app module, app content deployer, destination content deployer and the required `destination` / `html5-apps-repo` resources are added
- `xs-app.json` → route configuration for the app router is created in the UI folder

---

## 🧠 What You Learned

- How the HTML5 Application Repository serves UIs on SAP BTP
- How `cds add workzone` wires the UI deployment into the MTA descriptor
