# [TEB1103] Data and Information Management

![Database](https://img.shields.io/badge/Database-Oracle_SQL-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Implementation-CC0000?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)

Repository for **TEB1103** — May 2025 Semester.  
This repository contains the full database design, implementation, and reporting for **MR. D.I.Y. (M) SDN. BHD.** (SSM: 200901017574).

---

## 👩‍💻 Author

Created by **Aina** for TEB1103 – Data and Information Management.

* **Course:** Bachelor of Computer Science (Hons)
* **University:** Universiti Teknologi PETRONAS (UTP)
* **Subject:** TEB1103 — Data and Information Management
* **Semester:** May 2025

---

## 👥 Final Project Team

* **Aina (me)**
* **Iskandar**
* **Joel** 
* **Riknesh**

---

## 🧪 Final Project: MR. D.I.Y. Database Management System

### 📌 Project Overview
This project involves the creation of a high-scale Relational Database Management System (RDBMS) modeled after MR. D.I.Y.'s retail operations. The system is architected to manage diverse business functions ranging from warehouse logistics and procurement to customer loyalty and audit activities.

### 📁 Repository Contents
* **`mr_diy_create_tables.sql`**: DDL scripts to initialize the entire schema, including 21 main entities and 44 explosion tables.
* **`mr_diy_insert_tables.sql`**: DML scripts containing structured sample data for all implemented tables.
* **`mr_diy_drop_tables.sql`**: Cleanup script using `CASCADE CONSTRAINTS` for safe schema reset.
* **`mr_diy_current_stock_report.sql`**: Query scripts for inventory management and restocking decisions.
* **`MrDIY_report.docx`**: Technical documentation containing the Enhanced Entity-Relationship Diagram (EERD) and Data Specifications.

### 📊 Database Architecture
The database is built on a complex relational model featuring:
* **21 Primary Entities**: Including Person, Product, Warehouse, SalesTransaction, and AuditActivity.
* **44 Explosion Tables**: Supporting Many-to-Many (M:N) relationships such as `WarehouseProductStock`, `EmployeeTrainingEnrollment`, and `AuditLoyaltyProgramCompliance`.
* **Data Integrity**: Implementation of multi-attribute Primary Keys, Foreign Key constraints, and specific `CHECK` constraints (e.g., Weight > 0).

---

## 🧠 Technical Highlights
* **Advanced Relational Mapping**: Handles complex retail scenarios like product returns linked to specific deliveries and procurement cycles.
* **Business Intelligence Views**: Includes predefined views like `View_ProductComplaints` to identify high-severity issues and correlate them with current stock levels.
* **Normalization**: The schema is designed to ensure data consistency across branches, regions, and warehouses.

---

## ⚙️ Execution Guide

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/4stralyn/TEB1103_DIM_22011738.git](https://github.com/4stralyn/TEB1103_DIM_22011738.git)
