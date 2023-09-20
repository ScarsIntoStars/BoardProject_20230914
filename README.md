# BoardProject_20230914
```sql
CREATE TABLE board_table (
    id            bigint    not null auto_increment primary key,
    boardTitle    varchar(50),
    boardWriter   varchar(30),
    boardContents text,
    boardPassword varchar(30),
    boardHits     bigint             default 0,
    createdAt     timestamp not null default current_timestamp,
    fileAttached  varchar(3)         default 0
);

CREATE TABLE comment_table (
    id            bigint    not null auto_increment primary key,
    commentText   text      not null,
    boardId       bigint    not null,
    commentWriter varchar(30),
    createdAt     timestamp not null default current_timestamp,
    FOREIGN KEY (boardId) references board_table (id)
);

CREATE TABLE board_file_table (
    id               bigint primary key auto_increment not null,
    boardId          bigint                            not null,
    originalFileName varchar(50),
    storedFileName   varchar(50),
    createdAt        timestamp                         not null default current_timestamp,
    foreign key (boardId) references board_table (id)
);
```
