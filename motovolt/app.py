from flask import Flask, request, jsonify
import psycopg2

app = Flask(__name__)

# Database connection details
DATABASE_HOST = "localhost"
DATABASE_NAME = "your_database_name"
DATABASE_USERNAME = "your_database_username"
DATABASE_PASSWORD = "your_database_password"

def connect_db():
    try:
        connection = psycopg2.connect(host=DATABASE_HOST, database=DATABASE_NAME, user=DATABASE_USERNAME, password=DATABASE_PASSWORD)
        return connection
    except Exception as e:
        print(f"Error connecting to database: {e}")
        return None

@app.route("/register", methods=["POST"])
def register_user():
    if not request.is_json:
        return jsonify({"message": "Invalid request. Please send JSON data."}), 400
    data = request.get_json()
    model = data.get("model")
    ph_no = data.get("ph_no")
    address = data.get("address")
    pincode = data.get("pincode")
    if not model or not ph_no or not address or not pincode:
        return jsonify({"message": "Missing required fields."}), 400
    connection = connect_db()
    if not connection:
        return jsonify({"message": "Internal server error."}), 500
    try:
        cursor = connection.cursor()
        cursor.execute("INSERT INTO users (model, ph_no, address, pincode) VALUES (%s, %s, %s, %s)", (model, ph_no, address, pincode))
        connection.commit()
        cursor.close()
        return jsonify({"message": "User registered successfully."}), 201
    except Exception as e:
        print(f"Error storing data: {e}")
        return jsonify({"message": "Internal server error."}), 500
    finally:
        connection.close()

if __name__ == "__main__":
    app.run(debug=True)
