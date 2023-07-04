CREATE TABLE IF NOT EXISTS users(
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  email VARCHAR(128) NOT NULL UNIQUE,
  password_hash VARCHAR NOT NULL,
  active INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks(
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(128) NOT NULL UNIQUE,
  status VARCHAR(10) NOT NULL,
  description TEXT NOT NULL,
  users_id INTEGER NOT NULL,
  FOREIGN KEY (users_id) REFERENCES users(id) ON DELETE CASCADE
);