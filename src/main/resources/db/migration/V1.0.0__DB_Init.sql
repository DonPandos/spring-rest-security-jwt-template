CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    role_id INT8 NOT NULL
);

CREATE TABLE roles (
    id SERIAL NOT NULL PRIMARY KEY,
    role VARCHAR NOT NULL
);

CREATE TABLE permissions (
    id SERIAL NOT NULL PRIMARY KEY,
    permission VARCHAR NOT NULL
);

CREATE TABLE role_permissions (
    id SERIAL NOT NULL PRIMARY KEY,
    role_id INT8 NOT NULL,
    permission_id INT8 NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (permission_id) REFERENCES permissions(id)
);