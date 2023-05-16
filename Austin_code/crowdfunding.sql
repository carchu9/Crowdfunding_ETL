CREATE TABLE category (
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR
)

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) PRIMARY KEY,
	sub_category VARCHAR
)

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
)
drop table campaign
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT4,
	pledged FLOAT4,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(5),
	subcategory_id VARCHAR(8),
	CONSTRAINT fk_contact
		FOREIGN KEY(contact_id)
			REFERENCES contacts(contact_id),
	CONSTRAINT fk_category
		FOREIGN KEY(category_id)
			REFERENCES category(category_id),
	CONSTRAINT fk_subcategory
		FOREIGN KEY(subcategory_id)
			REFERENCES subcategory(subcategory_id)
	
)

SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM contacts

SELECT * FROM campaign