DROP DATABASE IF EXISTS tagger_db;
CREATE DATABASE tagger_db;
SET DATABASE = tagger_db;

CREATE TABLE test_table (
    id UUID PRIMARY KEY,
    created_at DATE
);