# Motovolt
This the electric bikes selling app where user can purchase the electric bikes from store. The order placed will be displayed on the POSTgres panel of the shop.

## Flutter setup
*	Install flutter and dart 
*	Create project folder using the following command

```
flutter create motovolt
```

*	Copy `lib` , `pubspec.yaml` and `assets` files and folders to motovolt folder (replace and save it).

## Installation and Setup of PostgreSQL Flask

This document provides instructions on setting up a PostgreSQL database and a Flask application to interact with it.

### Prerequisites

* Python 3.6+
* PostgreSQL database server
* pip

### Installing Dependencies

1. Install Python and PostgreSQL according to their official installation guides.
2. Open a terminal and install the necessary Python libraries using `pip`:

```
pip install flask psycopg2
```

### Database Setup

1. Create a PostgreSQL database and user with appropriate permissions.
2. Connect to the database using a tool like pgAdmin or the command line.
3. Create a table to store your data. The table structure will depend on your specific application. Here's an example:

```
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  model VARCHAR(255) NOT NULL,
  ph_no VARCHAR(255) NOT NULL,
  address TEXT NOT NULL,
  pincode VARCHAR(255) NOT NULL
);
```

### Flask Application Setup

1. Create a new Python file for your Flask application.
2. Import the necessary libraries:

```
from flask import Flask, request, jsonify
import psycopg2
```

3. Define your database connection information:

```
DATABASE_HOST = "localhost"
DATABASE_NAME = "your_database_name"
DATABASE_USER = "your_database_user"
DATABASE_PASSWORD = "your_database_password"
```

4. Create the Flask app instance:

```
app = Flask(__name__)
```

5. Define a function to connect to the database:

```
def connect_db():
    try:
        conn = psycopg2.connect(host=DATABASE_HOST, database=DATABASE_NAME,
                                user=DATABASE_USER, password=DATABASE_PASSWORD)
        return conn
    except Exception as e:
        print(f"Error connecting to database: {e}")
        return None
```

6. Create routes for your application's functionalities, like receiving data and performing CRUD operations on the database. Here's an example of a route that receives JSON data and inserts it into the database:

```
@app.route("/order", methods=["POST"])
def receive_order():
    # Get JSON data from request
    data = request.get_json()

    # ... Validate and process data ...

    # Connect to database
    conn = connect_db()

    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    # ... Perform database operations ...

    # Close database connection
    conn.close()

    # ... Return appropriate response ...
```

7. Run the Flask application:

```
python your_app.py
```

This will start the Flask application and listen for incoming requests on the default port (5000 by default).

### Additional Notes

* This is a basic setup guide, and you may need to modify it depending on your specific needs.
* Remember to replace the placeholder values with your own database information.
* It is recommended to use environment variables for storing sensitive information like passwords.
* You can find more information about Flask and PostgreSQL integration in their respective documentation:
    * [https://flask.palletsprojects.com/](https://flask.palletsprojects.com/)
    * [https://www.psycopg.org/docs/](https://www.psycopg.org/docs/)

I hope this documentation helps you set up your PostgreSQL Flask application!

## Application setup
*   You need to create VPC in google cloud and download python
*   Install all the required python libraries - Flask, POSTgres
*   Setup flask server
*   Replace the localhost server address to flask VPC ip (where the flask server is running) in flutter app
*   Create apk from android studio and install it in your andriod/iOS device

## Programming languages and tools used
<p align="left"> <a href="https://dart.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="40" height="40"/> </a> <a href="https://flask.palletsprojects.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/pocoo_flask/pocoo_flask-icon.svg" alt="flask" width="40" height="40"/> </a> <a href="https://flutter.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="40" height="40"/> </a> <a href="https://cloud.google.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/google_cloud/google_cloud-icon.svg" alt="gcp" width="40" height="40"/> </a> <a href="https://www.postgresql.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a> <a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a> </p>

## Author
*	[Abhineet Raj](https://github.com/abhineetraj1)