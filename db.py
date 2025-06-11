import psycopg2

def get_connection():
    return psycopg2.connect(
        host="localhost",
        database="library_db",
        user="libraryuser",
        password="007@kkU007",
        port=5432  # Default PostgreSQL port
    )
