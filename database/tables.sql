BEGIN;

CREATE TYPE USER_TYPE_ENUM AS ENUM ('ADMIN', 'RACING_TEAM', 'DRIVER');

CREATE TABLE users
(
    userid    INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    login     TEXT           NOT NULL UNIQUE,
    password  TEXT           NOT NULL,
    type      USER_TYPE_ENUM NOT NULL,
    source_id INTEGER
);

CREATE TABLE log_table
(
    logid    INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    userid   INTEGER     NOT NULL REFERENCES users (userid),
    datetime timestamptz NOT NULL DEFAULT now()
);

COMMIT;