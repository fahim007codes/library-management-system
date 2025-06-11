## Design Decisions

- The ER diagram was translated into a normalized relational schema using standard PK-FK relationships.
- PostgreSQL was chosen for robust relational data handling.
- Docker Compose allows easy orchestration of the Flask app and PostgreSQL database.
- Connection pooling could be added later using `SQLAlchemy` or `psycopg2.pool`.

## Setup Instructions

1. Clone the repo.
2. Run `docker-compose up`.
3. Access the Flask app on `http://localhost:5000`.

## API Endpoints

- `GET /api/books` — returns list of books.


## Neo4j Graph Modeling

We converted the relational model to a graph model using:

- Nodes: `Book`, `Author`, `Member`
- Relationships:
  - `(:Book)-[:WRITTEN_BY]->(:Author)`
  - `(:Member)-[:BORROWED]->(:Book)`

This graph approach improves traversal queries such as:
- Getting all books borrowed by a user.
- Discovering all authors a user has read.
- Recommending books based on shared authorship or borrowers.

## Sample Endpoints

- `GET /api/members/alice@example.com/borrowed-books`
- `GET /api/books/1234567890/author`

## Run with Docker

```bash
docker-compose up
