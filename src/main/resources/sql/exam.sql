CREATE  database `exam`;

USE exam;

CREATE TABLE `teacher`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '教师id',
  `username` VARCHAR (128) NOT NULL COMMENT '教师用户名',
  `password` VARCHAR (128) NOT NULL COMMENT '教师密码',
  `email` VARCHAR (128) COMMENT '教师邮箱',
  `phone` VARCHAR(128) COMMENT '教师手机'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '教师表';



CREATE TABLE `student`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '学生id',
  `username` VARCHAR (128) NOT NULL COMMENT '学生用户名',
  `password` VARCHAR (128) NOT NULL COMMENT '学生密码',
  `email` VARCHAR(128) COMMENT '学生邮箱',
  `phone` VARCHAR(128) COMMENT '学生手机'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '学生表';

CREATE TABLE `subject` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '题目id',
  `subject_name` VARCHAR (128) NOT NULL COMMENT '题目名称',
  `course_id` INT  COMMENT '科目id',
  `type_id` INT NOT NULL  COMMENT '题目分类',
  `score` INT NOT NULL  COMMENT '题目分值',
  `answer_select` VARCHAR (128) NOT NULL COMMENT '答案选项',
  `answer` INT NOT NULL COMMENT '正确答案'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '题目表';

CREATE TABLE `course`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '科目id',
  `course_name`VARCHAR (128) NOT NULL COMMENT '科目名称'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '科目表';

CREATE TABLE `subject_type`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '分类id',
  `type_name`VARCHAR (128) NOT NULL COMMENT '分类名称'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '分类表';

CREATE TABLE `paper_main`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '试卷主表id',
  `model_id` INT NOT NULL COMMENT '模板id',
  `student_id` INT NOT NULL COMMENT '应试学生id',
  `grade` DOUBLE NOT NULL DEFAULT 0 COMMENT '学生总分'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '试卷主表';

CREATE TABLE `paper_sub` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '试卷附表id',
  `paper_main_id` INT NOT NULL COMMENT '试卷id',
  `subject_id` INT NOT NULL COMMENT '题目id',
  `student_sub_grade` DOUBLE NOT NULL COMMENT '学生得分',
  `paper_sub_type` INT NOT NULL DEFAULT 0 COMMENT '得分情况：0->全错、1->半对、2->全对',
  `student_id`INT NOT NULL COMMENT '应试学生id'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '试卷附表';

CREATE TABLE `model_main`(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '模板主表id',
  `model_name` VARCHAR (128) NOT NULL COMMENT '模板名称',
  `teacher_id` INT NOT NULL COMMENT '教师id'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '模板主表';

CREATE TABLE `model_sub`(
   `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '模板附表id',
   `model_main_id` INT NOT NULL COMMENT '模板主板id',
   `model_sub_course_id` INT NOT NULL COMMENT '科目分类id',
   `model_type_id` INT NOT NULL COMMENT '分类id',
   `type_grade` DOUBLE DEFAULT 0 COMMENT '分类总分'
)ENGINE=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT = '模板附表';