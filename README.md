DB設計

messages table

| Column   | Type       | Options           |
| :------- | ---------: | :---------------: |
| content  | string     |                   |
| image    | string     |                   |
| user     | references | foreign_key: true |
| group    | references | foreign_key: true |

Association
・belongs_to :groups
・belongs_to :users

users table

| Column             	 | Type   	  | Options 		 	    |
| :--------- 			 | ---------: | :---------------------: |
| name		   			 | string     | null:false  	        |
| email        			 | string     | unique: true            |
| encrypted_password 	 | string     | null:false 				|
| reset_password_token	 | string     | null:false 				|
| reset_password_sent_at | datetime   |  						|
| remember_created_at 	 | datetime   |  						|
| sign_in_count      	 | integer    | default: 0, null: false |
| current_sign_in_at 	 | datetime   |  						|
| last_sign_in_at 		 | datetime   |  						|
| current_sign_in_ip 	 | string     |  						|
| last_sign_in_ip 		 | string     |  						|

Association
・has_many :messeges
・has_many :groups, through: :messeges

groups table

| Column     | Type    	  | Options     	  |
| :--------- | ---------: | :---------------: |
| name       | string  	  | null:false  	  |
| user       | references | foreign_key: true |
| message    | references | foreign_key: true |

Association
・has_many :messeges
・has_many :users,  through: messeges