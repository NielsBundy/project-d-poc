DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS userRoom;

CREATE TABLE user (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT NOT NULL,
  hasFace BIT DEFAULT '0'
);

CREATE TABLE userRoom (
  roomNumber INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id)
)
