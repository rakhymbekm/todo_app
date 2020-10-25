#creating tables

CREATE TABLE User(
	ID INTEGER AUTO_INCREMENT UNIQUE NOT NULL,
	First_name VARCHAR(20),
	Last_name VARCHAR(20),
	Nickname VARCHAR(20) UNIQUE NOT NULL,
	Hash VARCHAR(100) NOT NULL
);

CREATE TABLE List(
	ID INTEGER AUTO_INCREMENT UNIQUE NOT NULL,
	Title VARCHAR(50) NOT NULL,
	Description TEXT
);

CREATE TABLE Item(
	ID INTEGER AUTO_INCREMENT UNIQUE NOT NULL,
	Title VARCHAR(50) NOT NULL,
	Completion_status TINYINT(1) DEFAULT 0 NOT NULL
);

CREATE TABLE Item_user_list(
	Item_ID INTEGER UNIQUE NOT NULL,
	User_ID INTEGER NOT NULL,
	List_ID INTEGER NOT NULL
);

#inserting user data

INSERT INTO User(
	First_name, 
	Last_name, 
	Nickname, 
	Hash
) VALUES (
	'Rakhymbek',
	'Berkinbay',
	'rberkinbay',
	'e122qdd3a1'
);

SET @user1_being_worked_on = LAST_INSERT_ID();

#inserting list data

INSERT INTO List(
	Title, 
	Description
) VALUES (
	'Home',
	'things I should do at home'
);


SET @list_being_worked_on = LAST_INSERT_ID();

#inserting tasks (todos)

INSERT INTO Item(
	Title
) VALUES (
	'Clean the room'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user1_being_worked_on,
	@list_being_worked_on
);

INSERT INTO Item(
	Title
) VALUES (
	'Cook a dinner'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user1_being_worked_on,
	@list_being_worked_on
);

INSERT INTO Item(
	Title
) VALUES (
	'Have a dinner'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user1_being_worked_on,
	@list_being_worked_on
);

# inserting another list data

INSERT INTO List(
	Title, 
	Description
) VALUES (
	'Uni',
	'things I should do at the university'
);

SET @list_being_worked_on = LAST_INSERT_ID();

#inserting tasks (todos)

INSERT INTO Item(
	Title
) VALUES (
	'Defend the presentation'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user1_being_worked_on,
	@list_being_worked_on
);

INSERT INTO Item(
	Title
) VALUES (
	'Visit my advisor'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user1_being_worked_on,
	@list_being_worked_on
);

#inserting the second user data

INSERT INTO User(
	First_name, 
	Last_name, 
	Nickname, 
	Hash
) VALUES (
	'Someone',
	'Somehow',
	'onehow',
	't179qfd1a5'
);

SET @user2_being_worked_on = LAST_INSERT_ID();

#inserting list data

INSERT INTO List(
	Title, 
	Description
) VALUES (
	'Shop',
	'things I should do when I do the shopping'
);

SET @list_being_worked_on = LAST_INSERT_ID();

#inserting tasks (todos)

INSERT INTO Item(
	Title
) VALUES (
	'Buy new watch'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user2_being_worked_on,
	@list_being_worked_on
);

INSERT INTO Item(
	Title
) VALUES (
	'Check out the new shop center'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user2_being_worked_on,
	@list_being_worked_on
);

INSERT INTO Item(
	Title
) VALUES (
	'Renew my hair style'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user2_being_worked_on,
	@list_being_worked_on
);

# inserting another list data

INSERT INTO List(
	Title, 
	Description
) VALUES (
	'Work',
	'things I should do at work'
);

SET @list_being_worked_on = LAST_INSERT_ID();

#inserting tasks (todos)

INSERT INTO Item(
	Title
) VALUES (
	'Complete the manager\'s task'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user2_being_worked_on,
	@list_being_worked_on
);

INSERT INTO Item(
	Title
) VALUES (
	'Write a report about how I\'ve done the task'
);

SET @last_inserted_item_id = LAST_INSERT_ID();

INSERT INTO Item_user_list(
	Item_ID,
	User_ID,
	List_ID
) VALUES (
	@last_inserted_item_id,
	@user2_being_worked_on,
	@list_being_worked_on
);