DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaign;


CREATE TABLE category(
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR NOT NULL
);

SELECT * FROM category;


CREATE TABLE subcategory(
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR NOT NULL
);

SELECT * FROM subcategory;


CREATE TABLE contacts(
  contact_id INTEGER PRIMARY KEY,
  First_Name VARCHAR,
  Last_Name VARCHAR,
  email VARCHAR
);

SELECT * FROM contacts;


CREATE TABLE campaign(
  cf_id INTEGER PRIMARY KEY,
  contact_id INTEGER NOT NULL,
  company_name VARCHAR(100) NOT NULL,
  description VARCHAR NOT NULL,
  goal NUMERIC(10,2) NOT NULL,
  pledge NUMERIC(10,2) NOT NULL,
  outcome VARCHAR(50) NOT NULL,
  backers_count INTEGER NOT NULL,
  country VARCHAR(10) NOT NULL,
  currency VARCHAR NOT NULL,
  lauch_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR(10) NOT NULL,
  subcategory_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)	
);

SELECT * FROM campaign;
