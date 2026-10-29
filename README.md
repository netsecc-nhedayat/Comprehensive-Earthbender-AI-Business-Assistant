# Earthbender AI Business Assistant — Functional Prototype

A responsive React + TypeScript prototype for demonstrating how Earthbender Fencing could manage enquiries, customers, draft quotations, jobs, site visits, analytics, reviews and follow-ups.

## Requirements
- Node.js 20.19+ or 22.12+ recommended (current Vite releases require a modern Node version)
- npm

## Run on Windows
1. Extract the ZIP to a folder, for example `C:\Users\HP\Desktop\Earthbender_AI_Business_Assistant`.
2. Open that folder in VS Code, or open PowerShell in that folder.
3. Run:
   ```powershell
   npm install
   npm run dev
   ```
4. Open the local URL printed by Vite, normally `http://localhost:5173`.
5. To check a production build, run:
   ```powershell
   npm run build
   npm run preview
   ```

## Main workflow to demonstrate
1. Open **Customer enquiries** and select a record (for example ENQ-2401).
2. Choose **Extract details**. Extraction is simulated and must be checked.
3. Choose **Edit enquiry** to correct fields or add customer-confirmed details.
4. Choose **Create customer** to link a customer record, or use an existing linked customer.
5. Choose **Draft quote**. In **Quotations**, edit line items, quantities, rates, assumptions and exclusions.
6. Change the quote status to **Approved** only after reviewing the estimate. This is an internal demo state; no quote is sent.
7. Choose **Convert to job** for an approved/accepted quote, then update the team, dates, progress and status in **Jobs & projects**.
8. Mark the job **Completed** to create a proposed customer follow-up task.
9. Open **Follow-ups & alerts** and complete the task, then open **Business analytics** to review the updated records.

## What is implemented
- Responsive multi-module navigation and polished desktop/mobile UI.
- Fictional seed records for customers, enquiries, quotations, jobs, site visits, reviews, tasks and pricing rules.
- Local browser persistence with `localStorage`.
- Shared record updates across enquiry, customer, quotation, job and task screens.
- Rule-based simulated enquiry extraction, missing-field detection and assistant responses.
- Local image and audio attachment previews; image interpretation and voice transcription are not connected.
- Itemized quote calculations with editable demo rates, discount and configurable tax percentage; incomplete quotes withhold the final total until critical inputs are verified.
- Quote-to-job conversion, job progress/status updates, completion follow-up task creation.
- Site visit scheduling, rescheduling, cancellation and staff/time double-booking checks.
- Editable review sentiment and draft-only response suggestions.
- Filterable records, charts derived from sample data, analytics CSV export and print-friendly quote view.
- Reset Demo Data confirmation.

## Simulated or not yet implemented
- AI is rule-based/simulated; there is no real LLM API or trained ML model.
- All business/customer/financial records are fictional and all prices are placeholders.
- No production backend, SQL database, authentication, role enforcement, encryption, audit service, backups or multi-user sync.
- No real email/SMS/phone, external calendar, CRM, accounting, payment or document-storage integrations.
- Uploaded-image understanding and voice transcription are not connected; no real image-analysis pipeline is implemented.
- Quote approval is a local demo status only. No quotation or customer response is sent externally.
- Charts summarize the current local sample records; the monthly labels are computed from the record dates.

## Notes
- Browser data persists on the same browser/device only. Use **Settings & integrations → Reset demo data** to restore the seed dataset.
- Replace sample pricing, company information, tax assumptions, service areas and policies with verified company-approved values before any real use.
- Before production: implement a backend and database, secure authentication and server-side authorization, input validation, protected file storage, logging, backups, integration secrets on the server, and security/privacy review.
