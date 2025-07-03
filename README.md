# Olympics Database CLI Application

A command-line interface application for managing and querying an Olympics database system. This project provides an interactive way to explore Olympic sports data, athlete information, venue details, and business partnerships.

## Overview

The Olympics Database CLI is a Python-based application that connects to a MySQL database containing comprehensive Olympic Games information. It allows users to perform various queries and operations on Olympic data including athletes, sports, venues, awards, inventory, and business partnerships.

## Features

- **Interactive CLI Interface**: User-friendly command-line interface with menu-driven operations
- **Comprehensive Database**: Contains data about athletes, sports, venues, awards, inventory, and businesses
- **Query Operations**: Support for complex SQL queries with joins and aggregations
- **Data Management**: Insert, update, and delete operations for maintaining database records
- **Error Handling**: Robust error handling with rollback capabilities
- **Parameterized Queries**: Protection against SQL injection attacks

## Database Schema

The database consists of the following main entities:

### Core Tables
- **SPORTSPEOPLE**: Athletes and coaches information
- **SPORTS**: Sports categories and divisions
- **AWARDS**: Medal information and achievements
- **PLAYING_ARENA**: Venue and facility details
- **INVENTORY**: Equipment and supplies management
- **AUDIENCE**: Spectator information
- **BUSINESSES**: Sponsor and partner companies
- **EMPLOYEES**: Staff and management details

### Relationship Tables
- **SECURED_BY**: Athletes and their awards
- **PARTICIPATES_IN**: Athlete participation in sports
- **MADE_PURCHASES_FROM**: Audience purchases from businesses
- **TRAINING**: Coach-athlete relationships
- **CONDUCTS**: Management team responsibilities

## Prerequisites

- Python 3.7 or higher
- MySQL Server 5.7 or higher
- Required Python packages:
  ```
  pymysql
  ```

## Installation

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd Olympics_DB
   ```

2. **Install required packages**:
   ```bash
   pip install pymysql
   ```

3. **Set up MySQL database**:
   ```bash
   mysql -u root -p < Phase4_olympics.sql
   ```

4. **Run the application**:
   ```bash
   python olympics.py
   ```

## Usage

1. **Start the application**:
   ```bash
   python olympics.py
   ```

2. **Enter MySQL credentials** when prompted:
   - Username: Your MySQL username
   - Password: Your MySQL password

3. **Select operations** from the menu (1-11)

4. **Follow prompts** for each operation

## Available Operations

### 1. Query Operations
- **Option 1**: Get sportspeople older than a specific age
- **Option 2**: Get names of sportspeople from a particular country
- **Option 3**: Count total medals won by a country
- **Option 4**: Find inventory items containing 'ball'
- **Option 5**: Count distinct athletes by sex, award level, year, and country
- **Option 6**: Find award-winning athletes with multiple filters
- **Option 7**: Analyze audience purchases by country and enterprise

### 2. Data Management Operations
- **Option 8**: Add new audience member
- **Option 9**: Update inventory quantity
- **Option 10**: Remove a sport from the database

### 3. System Operations
- **Option 11**: Logout and exit

## Database Structure

### Key Relationships
- Athletes can participate in multiple sports
- Sports can have multiple divisions (Singles, Doubles, Mixed)
- Awards are linked to specific sports and secured by athletes
- Venues host different sports with specific equipment
- Businesses sponsor events and sell to audiences
- Management teams oversee different aspects of operations

### Sample Queries

**Find athletes older than 30:**
```sql
SELECT * FROM SPORTSPEOPLE 
WHERE TIMESTAMPDIFF(YEAR, DOB, CURDATE()) > 30;
```

**Count medals by country:**
```sql
SELECT SP.Country, COUNT(*) AS Total_Medals
FROM AWARDS A
JOIN SECURED_BY SB ON A.AWsports_ID = SB.SEC_awssports_ID
JOIN SPORTSPEOPLE SP ON SB.SEC_sportspeople_ID = SP.Sportspeople_ID
WHERE SP.Country = 'USA'
GROUP BY SP.Country;
```

## Security Features

- **Parameterized Queries**: All user inputs are sanitized using parameterized queries
- **Input Validation**: Comprehensive validation for all user inputs
- **Error Handling**: Graceful error handling with transaction rollback
- **Connection Management**: Proper database connection handling

## NOTE:
- please download and view the pdf files for better image quality.
