-- drop database db22z17;
create database if not exists db22z17;

use db22z17;

-- create table if not exists categories (
--     id bigint auto_increment not null,
--     name varchar(150) unique,
--     slug varchar(150) unique,
--     created_at datetime,
--     updated_at datetime,
--     primary key (id)
-- );

-- create table if not exists tags (
--     id bigint auto_increment not null,
--     name varchar(150) unique,
--     slug varchar(150) unique,
--     created_at datetime,
--     updated_at datetime,
--     primary key (id)
-- );


-- select * from categories where created_at>'1996-03-24 14:04:22';
-- explain select * from categories where created_at>'1996-03-24 14:04:22';

-- select * from posts where category_id>7 and category_id<53;
-- explain select * from posts where category_id>7 and category_id<53;

-- select * from posts where created_at>'1996-03-24 14:04:22';
explain select * from posts where category_id>3 and category_id<5 order by category_id;
explain select * from posts where created_at='1996-03-23 15:04:22' order by created_at;
explain select * from posts where category_id>3 and category_id='1996-03-23 15:04:22' order by category_id;
explain select * from posts where category_id>3 and user_id=1 order by category_id;
-- create index index_category_id on posts(category_id);

-- posts_category_id_created_at_index


-- create index category_id_index on posts(category_id);
-- drop index category_id_index on posts;


-- explain select * from users;
-- select * from users;




select * from categories;
select * from posts;
select * from users;
select * from tags;
select * from post_tag;