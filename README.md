DB設計

messages table

| Column   | Type    | Options     |
| :------- | ------: | :---------: |
| body     | text    |             |
| image    | string  |             |
| user_id  | integer | unique:true |
| group_id | integer | unique:true |

users table

|  Column    |   Type  |   Options   |
| :--------- | ------: | :---------: |
|    name    | string  | null:false  |
|  group_id  | integer | unique:true |
| message_id | integer | unique:true |

groups table

|   Column   |   Type  |  Options    |
| :--------- | ------: | :---------: |
|    name    |  string | null:false  |
|  user_id   | integer | unique:true |
| message_id | integer | unique:true |

Association
・has_many :groups, through: users
・has_many :messeges
・has_many :users