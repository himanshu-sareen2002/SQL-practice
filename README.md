# SQL Project
Internship Task 4
# 📊 SQL Database Management Project - Task 4

## 📁 Project Title
**Comprehensive SQL Operations on Multiple Schemas and Tables**

## 🧑‍💻 Author
**Himanshu Sareen**  
Data Analyst Intern  
Elevate Labs

## 📄 Description
This project showcases fundamental and advanced SQL operations across various databases and tables. It includes data selection, transformation, table creation, constraints, indexing, and data formatting, simulating real-world database handling tasks.

---

## 🛠️ Tools Used
- **MySQL Workbench** / SQL IDE
- **SQL (Structured Query Language)**

---

## 🧩 Key Operations Performed

### 🔹 Data Retrieval & Joins
- `SELECT`, `DISTINCT`, and aliasing (`AS`)
- Multi-table data joins (manual joins using aliases)

### 🔹 Table Creation & Insertion
- Use of `CREATE TABLE`, `INSERT INTO` with values
- Tables include:
  - `student_information`
  - `courses_data`
  - `exam_info`, `exam_info_2`, `exam_info_3`
  - `cust_info`, `cust_info_2`
  - `purchases`

### 🔹 Constraints & Keys
- `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, and `CHECK` constraints
- Addition and removal of constraints using `ALTER TABLE`

### 🔹 Data Modification
- Column modification with `ALTER TABLE MODIFY`
- Use of `TRUNCATE` to remove data

### 🔹 Indexing
- Creating and dropping unique indexes

### 🔹 String & Numeric Functions
- `CHAR_LENGTH`, `CONCAT`, `ROUND`, `POWER`, `SQRT`, `DIV`

### 🔹 Date Formatting
- Using `DATE_FORMAT` for readable date outputs

---

## 🔍 Example Queries

```sql
SELECT GPA AS "Grade Point Average" FROM student_information;

SELECT CONCAT(FirstNames, " ", LastNames) AS NewCustomersNames
FROM cust_info_2;

SELECT POWER(Scores, 3) AS CubeScores
FROM exam_info;

SELECT DATE_FORMAT(PurchaseDate, "%y-%M-%D") AS FormatedDate
FROM purchases;
