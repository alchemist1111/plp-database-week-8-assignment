from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from db import mysql.connector
from db import get_db_connection

app = FastAPI()

# Pydantic model for Contact
class Contact(BaseModel):
    name: str
    email: str
    phone_number: str

# CREATE - Add a new contact
@app.post("/contacts/")
def create_contact(contact: Contact):
    connection = get_db_connection()
    if not connection:
        raise HTTPException(status_code=500, detail="Database connection failed")
    
    cursor = connection.cursor()
    query = "INSERT INTO contacts (name, email, phone_number) VALUES (%s, %s, %s)"
    cursor.execute(query, (contact.name, contact.email, contact.phone_number))
    connection.commit()
    
    cursor.close()
    connection.close()
    
    return {"message": "Contact added successfully"}

# READ - Get a contact by ID
@app.get("/contacts/{contact_id}")
def read_contact(contact_id: int):
    connection = get_db_connection()
    if not connection:
        raise HTTPException(status_code=500, detail="Database connection failed")
    
    cursor = connection.cursor(dictionary=True)
    query = "SELECT * FROM contacts WHERE id = %s"
    cursor.execute(query, (contact_id,))
    
    contact = cursor.fetchone()
    cursor.close()
    connection.close()
    
    if contact:
        return contact
    else:
        raise HTTPException(status_code=404, detail="Contact not found")

# UPDATE - Update contact details
@app.put("/contacts/{contact_id}")
def update_contact(contact_id: int, contact: Contact):
    connection = get_db_connection()
    if not connection:
        raise HTTPException(status_code=500, detail="Database connection failed")
    
    cursor = connection.cursor()
    query = "UPDATE contacts SET name = %s, email = %s, phone_number = %s WHERE id = %s"
    cursor.execute(query, (contact.name, contact.email, contact.phone_number, contact_id))
    connection.commit()
    
    cursor.close()
    connection.close()
    
    return {"message": "Contact updated successfully"}

# DELETE - Delete a contact by ID
@app.delete("/contacts/{contact_id}")
def delete_contact(contact_id: int):
    connection = get_db_connection()
    if not connection:
        raise HTTPException(status_code=500, detail="Database connection failed")
    
    cursor = connection.cursor()
    query = "DELETE FROM contacts WHERE id = %s"
    cursor.execute(query, (contact_id,))
    connection.commit()
    
    cursor.close()
    connection.close()
    
    return {"message": "Contact deleted successfully"}
