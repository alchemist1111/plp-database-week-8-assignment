# Contact Book API

This is a simple CRUD API built using FastAPI and MySQL. It allows you to perform basic CRUD operations on a contact book, including adding, updating, reading, and deleting contacts.

## How to Run the Project

1. Clone the repository:

        https://github.com/alchemist1111/plp-database-week-8-assignment# 

2. Create and activate virtual environment:

          python -m venv env

          env/scripts/activate

3. Install the dependencies:

          pip install fastapi uvicorn mysql-connector

          pip install python dotenv

4. Set up your MySQL database using the   `sourcecode.sql` file provided.

5. Run the application:

          uvicorn main:app --reload

6. Access the API at `http://127.0.0.1:8000`

## ERD

       https://dbdiagram.io/d/contact_bookdb-6807e5e01ca52373f5ef68fd

## How to Test

You can test the API using tools like Postman or cURL, or by using FastAPI's interactive docs at `http://127.0.0.1:8000/docs`.
