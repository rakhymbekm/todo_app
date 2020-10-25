
#define which user's todos from which list must be shown

SELECT
	User.ID AS u_id,
	User.Nickname AS User,
	List.ID AS l_id,
	List.Title AS List

	FROM Item_user_list 

	JOIN User ON Item_user_list.User_ID = User.ID 

	JOIN List ON Item_user_list.List_ID = List.ID
;

# set the chosen user's id to the corresponding variable

SET @user_being_worked_on = 1;

#set the chosen list id to the corresponding variable

SET @list_being_worked_on = 2;


#showing all todos (tasks) by "requested" user and their list

SELECT
	Item.Title, 
	Item.Completion_status

	FROM Item_user_list 

	JOIN User ON Item_user_list.User_ID = User.ID 

	JOIN List ON Item_user_list.List_ID = List.ID

	JOIN Item ON Item_user_list.Item_ID = Item.ID

	WHERE 
		Item_user_list.User_ID = @user_being_worked_on 
		AND Item_user_list.List_ID = @list_being_worked_on
;
