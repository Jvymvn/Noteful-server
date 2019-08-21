CREATE TABLE folders(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL
);

CREATE TABLE notes(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    modified TIMESTAMP DEFAULT now() NOT NULL,
    folder_id INTEGER REFERENCES folders(id) on DELETE CASCADE NOT NULL,
    content TEXT
);