# 🔍 Digital Detective: Cyber Crime Intelligence Platform

[![MySQL Version](https://img.shields.io/badge/MySQL-8.0%2B-blue?logo=mysql)](https://www.mysql.com/)
[![Schema](https://img.shields.io/badge/Database-3NF%20Normalized-green)](https://en.wikipedia.org/wiki/Third_normal_form)
[![Data](https://img.shields.io/badge/Records-50%2B%20Cases-orange)](#)
[![Losses](https://img.shields.io/badge/Financial%20Impact-%2410M%2B-red)](#)

---

## 🧠 Project Overview

**Digital Detective** is a cyber crime intelligence analytics system designed to transform raw, unstructured forensic logs into a structured relational database.

It enables:
- Cybercrime pattern detection  
- Financial loss tracking  
- Suspect profiling  
- Investigator performance analysis  
- Geographic hotspot identification  

---

## 🚨 Problem Statement

Real-world cybercrime logs are messy and inconsistent:

- Free-text incident descriptions break structured parsing  
- Duplicate suspect/victim data across multiple cases  
- Inconsistent city and region naming  
- Difficult manual analysis at scale  

---

## 💡 Solution

This project solves these issues using:

- ETL pipeline for data cleaning  
- Fully normalized **3NF relational database design**  
- Structured entity separation (cases, suspects, victims, investigators, etc.)  
- Optimized SQL analytics layer  

---

## 🏗️ Database Architecture

The system follows a strict **Third Normal Form (3NF)** design.

### Core Entities

- **Cyber Cases** → Central transactional table  
- **Locations** → Geographic intelligence layer  
- **Suspects** → Threat actor profiling  
- **Victims** → Impacted organizations tracking  
- **Investigators** → Performance evaluation system  
- **Evidence** → Digital forensic records  

### Relationship Flow

Cases act as the central hub connecting:
suspects → victims → investigators → locations → evidence

---

## 📊 Analytics Modules

The system includes pre-built analytical queries for intelligence extraction.

### 🔹 Threat Intelligence Analysis
- Crime type frequency
- Financial damage distribution
- Attack vector comparison  

---

### 🔹 Geographic Crime Mapping
- City-wise cybercrime density  
- Regional risk classification  
- Financial damage hotspots  

---

### 🔹 Suspect Profiling Engine
- Repeat offenders detection  
- Arrest status tracking  
- Financial damage attribution per suspect  

---

### 🔹 Investigator Performance Metrics
- Case success rate  
- Resolution time analysis  
- Workload distribution  

---

## ⚡ Performance Optimization

To ensure fast query execution:

- Indexing applied on high-frequency search columns  
- Optimized joins across relational tables  
- Reduced full table scans  
- Improved analytical query speed significantly  

---

## 🔧 Project Setup

### Requirements
- MySQL 8.0+
- MySQL Workbench / any SQL client

---

### Setup Steps

1. Clone the repository  
2. Import database schema into MySQL  
3. Load dataset into tables  
4. Run analytical query module  

---

## 📈 Key Insights

- Ransomware causes highest financial damage per incident  
- Mumbai & Delhi are major cybercrime hotspots  
- Few suspects account for repeated high-value attacks  
- Investigator efficiency varies significantly across units  

---

## 🧰 Tech Stack

- MySQL 8.0  
- SQL (Advanced Joins, Aggregations)  
- Data Modeling (3NF normalization)  
- ETL Pipeline Design  

---

## 👩‍💻 Author

**Aditi Paitandy**

GitHub: https://github.com/aditi-paitandy

---

## ⭐ Support

If you like this project:
- ⭐ Star the repository  
- 🍴 Fork it  
- 🔁 Share it with others  

---

> Built as a real-world cyber intelligence simulation system for advanced SQL + data engineering practice.
