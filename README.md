# 🏘️ Collaborative Real Estate Platform – XML Data Pipeline Project

This project simulates a **collaborative real estate platform** through the design and implementation of an XML-based data system. It includes modular XML schema design, sample data creation, and XSLT-based transformations for seven real-world scenarios, producing structured outputs in HTML, XML, and JSON formats.

---

## 📁 Project Structure

```
├── 1_schema/           # XML Schema definitions
├── 2_data/             # Sample XML data
├── 3_xslt_scenario/    # XSLT stylesheets for each scenario
├── 4_outputs/          # Output files (HTML/JSON) generated from transformations
├── 6_report/           # Final project report (PDF)
├── 7_json_schema/      # Scenario 7 JSON output or schema
```

---

## 🔧 Tools & Technologies

- **Languages/Formats:** XML, XSD, XSLT, XPath, JSON  
- **Editor:** Visual Studio Code  
- **Extensions Used:** XML Language Support (Red Hat), XSLT/XPath, Live Server  
- **Online Tools:** FreeFormatter, JSONLint  

---

## 🧩 Modeling Approach

The platform models various entities involved in real estate workflows:
- **User**: UserID, Name, Email, Role (Buyer, Seller, Agent, etc.)
- **Property**: PropertyID, Type, Location, Price, Status, AgentID
- **Booking**: BookingID, UserID, PropertyID, Date, Time
- **Transaction**: TransactionID, BuyerID, SellerID, PropertyID, Date, Amount
- **Service**: ServiceID, Type, ProviderName, Contact, AvailableDates
- **Agency**: AgencyID, AgencyName, AgentIDs (list)

### Key Modeling Decisions
- Modular schema with reusable complex types
- ID-based relationships to avoid deep nesting
- Explicit handling of optional elements using `minOccurs="0"`
- Enumerations for controlled vocabularies (e.g., roles, property types)

---

## 📚 Implemented Scenarios

| # | Scenario                    | Output Format | Description |
|---|-----------------------------|---------------|-------------|
| 1 | Property Listings           | HTML          | Display all properties in a structured table |
| 2 | User Bookings               | HTML          | Join users and properties to show scheduled visits |
| 3 | Transactions                | HTML          | Show completed transactions with buyer/seller info |
| 4 | Services                    | HTML          | List service providers and availability |
| 5 | Agent Properties            | HTML          | Group properties by responsible agents |
| 6 | XML to External Format      | XML/HTML      | Transform internal data to a public-facing format |
| 7 | XML to JSON Transformation  | JSON          | Convert property data into JSON format for APIs |

---

## 🧠 Modeling Challenge & Solution

**Challenge:** Maintaining clean schema design while linking multiple entities (users, properties, services, etc.)  
**Solution:**  
- Adopted flat structures with ID-based referencing across entities  
- XSLT with XPath enables dynamic joins during transformations  
- Keeps schema reusable, readable, and scalable

---

## 📄 Project Report

The full report detailing modeling principles, toolset, scenarios, and implementation notes can be found in the `6_report/` directory.

Topics covered:
- Working environment and toolchain
- Modeling choices, advantages, and trade-offs
- Walkthrough of each scenario (with one complex one explained in depth)

---

## 📎 License

This project is for academic and educational use only. All rights reserved to the contributors.
