



A **Production-Structured Java Web Application** implementing full **CRUD operations** using:

* Servlets
* JSP
* JDBC
* DAO Pattern
* PostgreSQL
* MVC Architecture

This project is built **without using Spring or any heavy frameworks**, making it perfect for beginners who want to understand how Java web applications work internally.

---

# 📌 Project Objective

This project helps beginners understand:

* How MVC architecture works
* How to connect Java to PostgreSQL using JDBC
* How to implement DAO Pattern
* How to handle exceptions properly
* How to structure a real-world Maven WAR project
* How to deploy on Apache Tomcat

---

# 🏗️ Project Architecture (MVC)

The application follows the **Model-View-Controller (MVC)** pattern.

```
Controller (Servlet)
        ↓
Service / DAO Layer
        ↓
Database (PostgreSQL)
        ↑
View (JSP)
```

---

# 📂 Project Structure

```
crudapp1/
│
├── src/main/java/com/example/
│   ├── model/
│   │   └── Student.java
│   │
│   ├── dao/
│   │   ├── StudentDAO.java
│   │   ├── StudentDAOImpl.java
│   │   └── DAOException.java
│   │
│   ├── controller/
│   │   └── StudentServlet.java
│   │
│   └── util/
│       └── JDBCUtils.java
│
├── src/main/webapp/
│   ├── students-list.jsp
│   ├── students-form.jsp
│   └── error.jsp
│
└── pom.xml
```

---

# 🛠️ Technologies Used

| Technology        | Purpose                |
| ----------------- | ---------------------- |
| Java 17+          | Backend Logic          |
| Jakarta Servlet 6 | Controller Layer       |
| JSP               | View Layer             |
| JDBC              | Database Communication |
| PostgreSQL        | Database               |
| Maven             | Build Tool             |
| Bootstrap 5       | UI Styling             |
| Apache Tomcat 10+ | Deployment Server      |

---

# 🗄️ Step 1 – Database Setup

## 1️⃣ Install PostgreSQL

Download from:
👉 [https://www.postgresql.org/download/](https://www.postgresql.org/download/)

---

## 2️⃣ Create Database

Open PostgreSQL and run:

```sql
CREATE DATABASE cruddb1;
```

---

## 3️⃣ Create Students Table

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobile VARCHAR(10) NOT NULL
);
```

---

## 4️⃣ Update Database Credentials

Open:

```
JDBCUtils.java
```

Update:

```java
private static final String URL = "jdbc:postgresql://localhost:5432/cruddb1";
private static final String USER = "";
private static final String PASSWORD = "";
```
Please configure the PostgreSQL connection settings according to your respective credentials and confirm once completed.
---

# 💻 Step 2 – Clone the Project

```bash
git clone https://github.com/gosavishraddha/crudapp1.git
cd crudapp1
```

---

# 🔨 Step 3 – Build the Project

Make sure Maven is installed.

```bash
mvn clean install
```

After build, a WAR file will be generated in:

```
target/crudapp1.war
```

---

# 🚀 Step 4 – Deploy to Tomcat

## 1️⃣ Download Apache Tomcat 10+

[https://tomcat.apache.org/](https://tomcat.apache.org/)

## 2️⃣ Copy WAR file

Copy:

```
target/crudapp1.war
```

Paste into:

```
tomcat/webapps/
```

## 3️⃣ Start Tomcat

Run:

```
startup.bat   (Windows)
./startup.sh  (Mac/Linux)
```

---

# 🌐 Step 5 – Access Application

Open browser:

```
http://localhost:8080/crudapp1/students
```

---

# ✨ Application Features

✔ Add New Student
✔ View All Students
✔ Edit Student
✔ Delete Student
✔ Server-side Validation
✔ HTML5 Validation
✔ Custom Error Page
✔ DAO Pattern Implementation
✔ Custom Runtime Exception
✔ Try-with-resources
✔ Post-Redirect-Get (PRG)

---

# 🔍 Validation Rules

### 👤 Name

* 3–50 characters
* Only letters and spaces

### 📧 Email

* Must follow valid email format

### 📱 Mobile

* Exactly 10 digits

Validation is handled in:

* HTML5 form validation
* Servlet using Regex

---

# 🧠 Design Patterns Used

* MVC Pattern
* DAO Pattern
* Front Controller Pattern
* Post-Redirect-Get (PRG)

---

# 🔐 Exception Handling Strategy

### Custom Exception

`DAOException.java`

Wraps SQLExceptions into runtime exceptions.

### Centralized Error Page

`error.jsp`

Displays:

* Error Message
* Root Cause
* Stack Trace (for debugging)

---

# 📦 Maven Dependencies (pom.xml)

```xml
<dependencies>

    <!-- Servlet API -->
    <dependency>
        add dependency
    </dependency>

    <!-- PostgreSQL Driver -->
    <dependency>
       add dependency
    </dependency>

    <!-- JUnit (Testing) -->
    <dependency>
        add dependency
        
    </dependency>

</dependencies>
```

---

# 📸 Screenshots

<img width="1920" height="916" alt="Screenshot (115)" src="https://github.com/user-attachments/assets/997c4853-c9a5-4672-ad79-7723f821a301" />

<img width="1920" height="932" alt="add student" src="https://github.com/user-attachments/assets/38e58b9d-dafe-4a24-a7bb-7d9fb1cb2b02" />

<img width="1920" height="938" alt="edit student" src="https://github.com/user-attachments/assets/83adbb81-0e81-403f-9724-02a7c72872e8" />

<img width="1920" height="929" alt="error" src="https://github.com/user-attachments/assets/905d42a7-d374-4486-ad65-747184093705" />






---

# 🚀 Future Improvements

* Replace Scriptlets with JSTL + EL
* Add Pagination
* Add Search Feature
* Add Login Authentication
* Add Logging (SLF4J)
* Add Connection Pooling (HikariCP)
* Convert to Spring Boot + JPA

---

# 👩‍💻 Author

**Shraddha Gosavi**

GitHub:
[https://github.com/gosavishraddha](https://github.com/gosavishraddha)

---

# 📄 License

This project is developed for:

* Learning purposes
* Academic demonstrations
* Java Web development practice

---

# 🎯 Who Should Use This Project?

✅ Java Beginners
✅ Students learning Servlets & JSP
✅ Developers preparing for interviews
✅ Anyone wanting to understand MVC without Spring

---


