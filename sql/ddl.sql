DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';
# 文章表
DROP TABLE IF EXISTS exam.article;
CREATE TABLE exam.article (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  title VARCHAR(255) UNIQUE
  COMMENT '文章标题',
  zhaiyao VARCHAR(255) NOT NULL
  COMMENT '文摘摘要',
  content     VARCHAR(255) NOT NULL 
  COMMENT '文摘内容',
  time VARCHAR(255)
  COMMENT '发布时间'
)
  COMMENT '文章表';


INSERT INTO exam.user VALUES (NULL, 'a', 'a', 'admin');

SELECT *
FROM exam.user;