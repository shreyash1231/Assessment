CREATE TABLE Role (
  id INT PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

CREATE TABLE Conversation (
  id CHAR(36) PRIMARY KEY,  
  title VARCHAR(100) NOT NULL,
  created_at DATETIME,
  modified_at DATETIME,
  active_version_id CHAR(36),
  active BOOLEAN DEFAULT FALSE
);

CREATE TABLE Version (
  id CHAR(36) PRIMARY KEY,
  root_message_id CHAR(36),
  conversation_id CHAR(36) NOT NULL,
  parent_version_id CHAR(36),
  FOREIGN KEY (conversation_id) REFERENCES Conversation(id),
  FOREIGN KEY (parent_version_id) REFERENCES Version(id)
);

CREATE TABLE Message (
  id CHAR(36) PRIMARY KEY,
  content TEXT NOT NULL,
  role_id INT NOT NULL,
  created_at DATETIME,
  version_id CHAR(36) NOT NULL,
  FOREIGN KEY (role_id) REFERENCES Role(id),
  FOREIGN KEY (version_id) REFERENCES Version(id)
);

ALTER TABLE Conversation 
  ADD FOREIGN KEY (active_version_id) REFERENCES Version(id);
