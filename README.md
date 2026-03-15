# Fitness Trainer API

REST API developed with Java and Spring Boot to manage trainers in a fitness system.  
This application allows creating, retrieving, updating, and deleting trainer records stored in a SQL Server database.

## 🚀 Technologies Used

- Java 17
- Spring Boot
- Spring Data JPA
- Hibernate
- Microsoft SQL Server
- Maven

## 📂 Project Structure

fitness-trainer-api/
├── database/                   # Database initialization scripts
│   ├── data.sql                # Initial data insertion (seeds)
│   └── schema.sql              # Table definitions
├── src/
│   └── main/
│       ├── java/com/fitnessac/fitnesssac_entrenamiento_service/
│       │   ├── controller/     
│       │   ├── entity/         
│       │   ├── repository/     
│       │   ├── FitnessTrainerApiApplication.java  
│       │   └── ServletInitializer.java             
│       └── resources/
│           ├── application.properties         # Main configuration
│           └── application-example.properties # Configuration template
└── pom.xml                     # Maven dependency management

## 🗄 Database Setup

Run the SQL scripts located in the `database` folder:

1. schema.sql – creates the database tables
2. data.sql – inserts sample trainer records

## ⚙️ Configuration

Copy application-example.properties to application.properties
and update your database credentials.

Example:
spring.datasource.url=jdbc:sqlserver://localhost:1433;databaseName=FitnessSAC
spring.datasource.username=your_username
spring.datasource.password=your_password

## ▶️ Running the Application

Clone the repository:
git clone https://github.com/your-username/fitness-trainer-api.git

Navigate to the project folder:
cd fitness-trainer-api

Run the application using Maven:
mvn spring-boot:run

The API will start at:
http://localhost:8080

## 📌 API Endpoints

| Method | Endpoint | Description |
|------|------|------|
| GET | /api/trainers | Get all trainers |
| GET | /api/trainers/{id} | Get trainer by ID |
| POST | /api/trainers | Create trainer |
| PUT | /api/trainers/{id} | Update trainer |
| DELETE | /api/trainers/{id} | Delete trainer |

## 🧪 Testing the API

You can test the API using:

- Postman
- Hoppscotch 
- Thunder Client (VS Code)

## 📖 Author
Developed by Jean Grober De la Cruz.
