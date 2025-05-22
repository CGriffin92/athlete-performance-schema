# athlete-performance-schema
SQL schema for a normalized athlete database
# 🏋️ Athlete Onboarding & Mobility Database Schema

This project demonstrates my ability to design a relational database schema focused on athlete tracking — specifically capturing onboarding data and mobility assessments. The schema is normalized and structured to allow easy expansion for additional performance and health data. Note : The tables given in this repository are a snippet of the companies data for privacy.

---

## 🗂️ Tables Included

### 1. `athlete_onboarding`

Stores each athlete’s initial intake information.

| Column Name | Data Type | Description |
|------------------|-----------|----------------------------------------|
| onboarding_id | INT | Primary Key — unique for each athlete |
| name | VARCHAR | Athlete's full name |
| date_of_birth | DATE | Athlete's date of birth |
| sport | VARCHAR | Sport or discipline (e.g., Football) |
| onboarding_date | DATE | When the athlete was onboarded |

---

### 2. `mobility_cervical`

Captures range of motion metrics for the cervical spine (neck) during onboarding or check-ins.

| Column Name | Data Type | Description |
|----------------------|-----------|-----------------------------------------------|
| id | INT | Primary Key |
| user_id | INT | Foreign Key → `athlete_onboarding(onboarding_id)` |
| extension | INT | Degrees of neck extension |
| flexion | INT | Degrees of neck flexion |
| lateral_flexion_l | INT | Left-side lateral flexion (degrees) |
| lateral_flexion_r | INT | Right-side lateral flexion (degrees) |
| rotation_l | INT | Left rotation (degrees) |
| rotation_r | INT | Right rotation (degrees) |

---

## 🧠 Design Highlights

- **Normalization**: Separated athlete identity data from performance metrics.
- **Referential Integrity**: Foreign keys ensure mobility data stays linked to the correct athlete.
- **Scalability**: This schema can easily grow to include additional mobility, strength, or performance modules.

---

## 📂 Files

- `schema.sql`: Full SQL code to create both tables and their relationships.
- `data_sample.csv`: Sample data that reflects how these tables work together.

---

## 🛠️ Tools Used

- MySQL / MySQL Workbench
- SQL (DDL – Data Definition Language)

---

## 📌 Purpose

This schema can be used by sports management companies, coaches, or rehabilitation specialists to track athlete readiness, mobility baselines, and onboarding trends.

---

