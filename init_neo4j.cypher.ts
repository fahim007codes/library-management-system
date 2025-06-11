    // Clear existing data
MATCH (n) DETACH DELETE n;

// Create authors
CREATE (a1:Author {name: 'George Orwell'});
CREATE (a2:Author {name: 'J.K. Rowling'});

// Create books
CREATE (b1:Book {title: '1984', isbn: '1234567890', year: 1949, genre: 'Dystopian'});
CREATE (b2:Book {title: 'Harry Potter and the Philosopher\'s Stone', isbn: '1234567891', year: 1997, genre: 'Fantasy'});

// Create members
CREATE (m1:Member {name: 'Alice Smith', email: 'alice@example.com'});
CREATE (m2:Member {name: 'Bob Johnson', email: 'bob@example.com'});

// Create relationships
MATCH (b:Book {isbn: '1234567890'}), (a:Author {name: 'George Orwell'})
CREATE (b)-[:WRITTEN_BY]->(a);

MATCH (b:Book {isbn: '1234567891'}), (a:Author {name: 'J.K. Rowling'})
CREATE (b)-[:WRITTEN_BY]->(a);

MATCH (m:Member {email: 'alice@example.com'}), (b:Book {isbn: '1234567890'})
CREATE (m)-[:BORROWED {date: date('2025-06-01')}]->(b);

MATCH (m:Member {email: 'bob@example.com'}), (b:Book {isbn: '1234567891'})
CREATE (m)-[:BORROWED {date: date('2025-06-03')}]->(b);
