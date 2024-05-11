# E-Commerce-website-with-Springboot


<a href="https://github.com/AtharvaKulkarniIT/E-Commerce-website-with-Springboot"><img src="https://visitor-badge.laobi.icu/badge?page_id=AtharvaKulkarniIT.E-Commerce-website-with-Springboot" alt="Visitors"/></a>
[![GitHub Forks](https://img.shields.io/github/forks/AtharvaKulkarniIT/E-Commerce-website-with-Springboot.svg?style=social&label=Fork&maxAge=2592000)](https://www.github.com/AtharvaKulkarniIT/E-Commerce-website-with-Springboot/fork)
<a href="https://github.com/AtharvaKulkarniIT/E-Commerce-website-with-Springboot/stargazers"><img src="https://img.shields.io/github/stars/AtharvaKulkarniIT/E-Commerce-website-with-Springboot" alt="Stars Badge"/></a>

This project utilizes Spring Boot, JDBC, JSP and Servlet technologies to create an E-Commerce platform.

📝 **Features:**
- ADMIN MODULE + USER MODULE
- MVC Architecture
- CRUD Operations
- Intuitive and responsive user interface design 


⚙️  **How To Run**

**Prerequisites:**
- IntelliJ IDEA (Ultimate or Community Edition)
- MySQL Database
- XAMPP

1. **Clone the Repository:**
   - Clone this repository to your local machine.

2. **Database Setup:**
   - Create a database named `springproject`.
   - Import the `springproject.sql` file into the database to create all necessary tables.

3. **Open Project in IntelliJ IDEA:**
   - Open IntelliJ IDEA.
   - Navigate to File > Open and select the project directory.

4. **Install Required Plugins:**
   - Ensure you have the following plugins installed in IntelliJ IDEA:
     - Spring Assistant
     - Tomcat and TomEE Integration (for deploying the application locally)

5. **Configure MySQL Driver:**
   - Download the MySQL JDBC driver and add it to your project dependencies.
   - Alternatively, you can add it to your Maven or Gradle build file.

6. **Run the Project:**
   - Right-click on the project and select Run 'Application'.
   - Open: [http://localhost:8080/](http://localhost:8080/)

## MVC Architecture

MVC (Model-View-Controller) is a software architectural pattern commonly used for developing user interfaces. In MVC:
- **Model**: Represents the data and business logic of the application. It interacts with the database and performs CRUD operations.
- **View**: Represents the presentation layer of the application. It displays data to the user and sends user inputs to the controller.
- **Controller**: Acts as an intermediary between the model and the view. It processes user requests, retrieves data from the model and updates the view accordingly.


## MVC Workflow
- The `AdminController.java` and `UserController.java` files contain mapping-based functions that return file names.
- JSP files located in `src/main/webapp/views` directory are executed accordingly.

### Log In Credentials
- **ADMIN Module:** [http://localhost:8080/admin](http://localhost:8080/admin)
  - Username: admin
  - Password: 123 (Default; can be changed in the database)
- **USER Module:**
  - Username: Atharva
  - Password: 1234

## Screenshots

**Home Page:**
![Home Page](https://drive.google.com/uc?export=download&id=1pq8LM6aPkWictoTSVVSODnIFyufgHGK4)

</br>

**Products:**
![Products](https://drive.google.com/uc?export=download&id=1di43hKR2_-9TBvyykXq7TkgfC5a8Ydam)

</br>

**Admin:**
![Admin](https://drive.google.com/uc?export=download&id=1LU6TidlLKq9p2ZXT7SM2JHEM1U5ltzqt)

## Acknowledgements

This project was created with reference to [E-commerce website](https://github.com/jaygajera17/E-commerce-project-springBoot/tree/main). We appreciate their contribution to the development community.

## Contributions 

Feel free to explore and contribute to this project!
