SET NAMES UTF8;
DROP DATABASE IF EXISTS rz;
CREATE DATABASE rz CHARSET=UTF8;
USE rz;
--用户表
CREATE TABLE rz_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(25),
    upwd VARCHAR(32)
);
--用户数据
INSERT INTO rz_login VALUES(null,'tom',md5('123'));
INSERT INTO rz_login VALUES(null,'jerry',md5('111'));
INSERT INTO rz_login VALUES(null,'lily',md5('222'));
INSERT INTO rz_login VALUES(null,'davi',md5('333'));
INSERT INTO rz_login VALUES(null,'amy',md5('444'));
INSERT INTO rz_login VALUES(null,'dingding',md5('555'));
INSERT INTO rz_login VALUES(null,'dangdang',md5('666'));
--课程表
CREATE TABLE rz_course(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(32),
    price DECIMAL(4),
    grade VARCHAR(16),
    sub VARCHAR(8),
    hour INT,
    deadlines DATETIME,
    remain INT,
    class_id INT
);
--课程详情数据
INSERT INTO rz_course VALUES(null,"小学六年级升初一英语暑期直播班",496,"六年级","英语",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学六年级升初一数学暑期直播班",496,"六年级","数学",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学五年级升六年级英语暑期直播班",496,"五年级","英语",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学五年级升六年级数学暑期直播班",496,"五年级","数学",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学四年级升五年级英语暑期直播班",496,"四年级","英语",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学四年级升五年级数学暑期直播班",496,"四年级","数学",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学三年级升四年级英语暑期直播班",496,"三年级","英语",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学三年级升四年级数学暑期直播班",496,"三年级","数学",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"小学三年级升四年级语文暑期直播班",496,"三年级","语文",10,"2019-06-25",41,10);
INSERT INTO rz_course VALUES(null,"初一数学-平移的性质",496,"初一","数学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初一数学-平行线知识点",496,"初一","数学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初一数学-同位角、内错角、同旁内角",496,"初一","数学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初二科学知识点巩固",496,"初二","科学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"八年级英语春季精品班",2295,"八年级","英语",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"八年级语文春季精品班",496,"八年级","语文",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"八年级数学春季精品班",496,"八年级","数学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初一升初二英语暑期直播班",496,"初一","英语",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初一升初二语文暑期直播班",496,"初一","语文",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初一升初二数学暑期直播班",496,"初一","数学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初二升初三英语暑期直播班",496,"初二","英语",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"初二升初三数学暑期直播班",496,"初二","数学",10,"2019-06-25",41,20);
INSERT INTO rz_course VALUES(null,"高一数学暑期直播班",496,"高一","数学",10,"2019-06-25",41,30);
INSERT INTO rz_course VALUES(null,"高二英语暑期直播班",496,"高二","英语",10,"2019-06-25",41,30);
INSERT INTO rz_course VALUES(null,"高二数学暑期直播班",496,"高二","数学",10,"2019-06-25",41,30);
INSERT INTO rz_course VALUES(null,"高一英语暑期直播班",496,"高一","英语",10,"2019-06-25",41,30);
INSERT INTO rz_course VALUES(null,"高二语文暑期直播班",496,"高二","语文",10,"2019-06-25",41,30);
--课程图片表
CREATE TABLE rz_course_pic(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    pic VARCHAR(64)
);
--课程图片数据
INSERT INTO rz_course_pic VALUES(null,1,"http://127.0.0.1:3000/images/live_lesson/201807100910588299.png");
INSERT INTO rz_course_pic VALUES(null,2,"http://127.0.0.1:3000/images/live_lesson/201807100908354236.png");
INSERT INTO rz_course_pic VALUES(null,3,"http://127.0.0.1:3000/images/live_lesson/201807100910588299.png");
INSERT INTO rz_course_pic VALUES(null,4,"http://127.0.0.1:3000/images/live_lesson/201807100908354236.png");
INSERT INTO rz_course_pic VALUES(null,5,"http://127.0.0.1:3000/images/live_lesson/201807100910588299.png");
INSERT INTO rz_course_pic VALUES(null,8,"http://127.0.0.1:3000/images/live_lesson/201807100908354236.png");
INSERT INTO rz_course_pic VALUES(null,9,"http://127.0.0.1:3000/images/live_lesson/201807100908354236.png");
INSERT INTO rz_course_pic VALUES(null,10,"http://127.0.0.1:3000/images/live_lesson/201806261043082303.png");
INSERT INTO rz_course_pic VALUES(null,11,"http://127.0.0.1:3000/images/live_lesson/201806261042391843.png");
INSERT INTO rz_course_pic VALUES(null,12,"http://127.0.0.1:3000/images/live_lesson/201806261042105175.png");
INSERT INTO rz_course_pic VALUES(null,13,"http://127.0.0.1:3000/images/live_lesson/201806221432011620.png");
INSERT INTO rz_course_pic VALUES(null,14,"http://127.0.0.1:3000/images/live_lesson/201806261031498286.png");
INSERT INTO rz_course_pic VALUES(null,15,"http://127.0.0.1:3000/images/live_lesson/201806261030046508.png");
INSERT INTO rz_course_pic VALUES(null,16,"http://127.0.0.1:3000/images/live_lesson/201806261030591774.png");
INSERT INTO rz_course_pic VALUES(null,17,"http://127.0.0.1:3000/images/live_lesson/201807100910588299.png");
INSERT INTO rz_course_pic VALUES(null,18,"http://127.0.0.1:3000/images/live_lesson/201806261030046508.png");
INSERT INTO rz_course_pic VALUES(null,19,"http://127.0.0.1:3000/images/live_lesson/201806261030591774.png");
INSERT INTO rz_course_pic VALUES(null,20,"http://127.0.0.1:3000/images/live_lesson/201807100910588299.png");
INSERT INTO rz_course_pic VALUES(null,21,"http://127.0.0.1:3000/images/live_lesson/201806261030591774.png");
INSERT INTO rz_course_pic VALUES(null,22,"http://127.0.0.1:3000/images/live_lesson/lesson_pic.jpg");
INSERT INTO rz_course_pic VALUES(null,23,"http://127.0.0.1:3000/images/live_lesson/lesson_pic.jpg");
INSERT INTO rz_course_pic VALUES(null,24,"http://127.0.0.1:3000/images/live_lesson/lesson_pic.jpg");
INSERT INTO rz_course_pic VALUES(null,25,"http://127.0.0.1:3000/images/live_lesson/lesson_pic.jpg");
--年级段表
CREATE TABLE class(
    id INT PRIMARY KEY AUTO_INCREMENT,
    lname VARCHAR(8)
);
INSERT INTO class VALUES(10,"小学");
INSERT INTO class VALUES(20,"初中");
INSERT INTO class VALUES(30,"高中");
--课程事件安排表
CREATE TABLE rz_course_time(
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    tname VARCHAR(32),
    tdate DATE,
    ttime TIME
);
INSERT INTO rz_course_time VALUES(null,1,"英语课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,1,"英语课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,1,"英语课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,1,"英语课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,2,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,2,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,2,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,2,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,2,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,3,"英语课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,3,"英语课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,3,"英语课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,3,"英语课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,3,"英语课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,4,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,4,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,4,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,4,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,4,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,5,"英语课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,5,"英语课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,5,"英语课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,5,"英语课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,5,"英语课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,10,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,10,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,10,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,10,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,10,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,11,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,11,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,11,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,11,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,11,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,12,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,12,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,12,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,12,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,12,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,13,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,13,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,13,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,13,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,13,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,14,"英语课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,14,"英语课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,14,"英语课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,14,"英语课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,14,"英语课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,15,"语文课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,15,"语文课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,15,"语文课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,15,"语文课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,15,"语文课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,22,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,22,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,22,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,22,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,22,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,23,"英语课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,23,"英语课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,23,"英语课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,23,"英语课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,23,"英语课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,24,"数学课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,24,"数学课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,24,"数学课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,24,"数学课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,24,"数学课","2019-3-29","19:0-20:0");

INSERT INTO rz_course_time VALUES(null,25,"英语课","2019-3-1","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,25,"英语课","2019-3-8","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,25,"英语课","2019-3-15","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,25,"英语课","2019-3-22","19:0-20:0");
INSERT INTO rz_course_time VALUES(null,25,"英语课","2019-3-29","19:0-20:0");

#创建购物车表
CREATE TABLE rz_cart(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    cid INT,
    cname VARCHAR(32),
    price DECIMAL(4),
    hour INT
);

#创建课程评论表
CREATE TABLE   rz_comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT,
    content VARCHAR(500),
    ctime DATETIME,
    val INT
);
#智慧教室
CREATE TABLE rz_class(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nj VARCHAR(32),
    mc VARCHAR(64),
    image VARCHAR(256)
);
INSERT INTO rz_class VALUES
(null,'小学',"萧山区新街小学",'http://127.0.0.1:3000/images/school/xinjiexiaoxue.png'),
(null,'小学',"萧山区宁围小学",'http://127.0.0.1:3000/images/school/ningweixiaoxue.png'),
(null,'小学',"萧山区长山小学",'http://127.0.0.1:3000/images/school/changshanxiaoxue.png'),
(null,'小学',"萧山区浦阳镇中心小学",'http://127.0.0.1:3000/images/school/puyangxiaoxue.png'),
(null,'小学',"萧山区新街第三小学",'http://127.0.0.1:3000/images/school/xinjiesanxiao.png'),
(null,'小学',"萧山区新街第四小学",'http://127.0.0.1:3000/images/school/xinjiesixiao.png'),
(null,'小学',"杭州市萧山区高桥小学",'http://127.0.0.1:3000/images/school/gaoqiaoxiaoxue.png'),
(null,'小学',"杭州市萧山区回澜小学",'http://127.0.0.1:3000/images/school/huilanxiaoxue.png'),
(null,'小学',"高桥金帆实验学校",'http://127.0.0.1:3000/images/school/zhjs0003.jpg'),
(null,'初中',"高桥金帆实验学校",'http://127.0.0.1:3000/images/school/zhjs0003.jpg'),
(null,'初中',"高桥初中",'http://127.0.0.1:3000/images/school/zhjs0004.jpg'),
(null,'初中',"朝晖初级中学",'http://127.0.0.1:3000/images/school/zhjs0005.jpg'),
(null,'初中',"临江第一初级中学",'http://127.0.0.1:3000/images/school/zhjs0006.jpg'),
(null,'初中',"石塘初级中学",'http://127.0.0.1:3000/images/school/zhjs0007.jpg'),
(null,'初中',"金山初中",'http://127.0.0.1:3000/images/school/zhjs0008.jpg'),
(null,'初中',"宿迁市洋河新区仓集中学",'http://127.0.0.1:3000/images/school/changji.jpg'),
(null,'初中',"宁围初级中学",'http://127.0.0.1:3000/images/school/zhjs0010.jpg'),
(null,'初中',"北干初中",'http://127.0.0.1:3000/images/school/zhjs0011.jpg'),
(null,'初中',"杭州市萧山区南阳初级中学",'http://127.0.0.1:3000/images/school/nanyangchuzhong.png'),
(null,'初中',"杭州市萧山区万向初级中学",'http://127.0.0.1:3000/images/school/wangxiangchuzhong.png'),
(null,'初中',"杭州市萧山区义桥实验学校",'http://127.0.0.1:3000/images/school/yiqiao.png'),
(null,'初中',"青岛市城阳区实验中学",'http://127.0.0.1:3000/images/school/qingdaoshiyan.png'),
(null,'初中',"萧山区虎山路初级中学",'http://127.0.0.1:3000/images/school/hushangluchuzhong.png'),
(null,'初中',"萧山区衙前镇初级中学",'http://127.0.0.1:3000/images/school/yaqianchuzhong.png'),
(null,'初中',"浙江省严州中学梅城校区",'http://127.0.0.1:3000/images/school/yanzhouzhongxue.png'),
(null,'初中',"浙江省杭州市萧山区新街初级中学",'http://127.0.0.1:3000/images/school/xinjiechuzhong.png'),
(null,'高中',"萧山区第二高级中学",'http://127.0.0.1:3000/images/school/zhjs0009.jpg'),
(null,'高中',"萧山区第十一高级中学",'http://127.0.0.1:3000/images/school/xsyz.jpg'),
(null,'高中',"温州第八中学",'http://127.0.0.1:3000/images/school/wenzhoubazhong.png'),
(null,'其他',"萧山区第四中等职业学校",'http://127.0.0.1:3000/images/school/upfile121071.jpg'),
(null,'其他',"浙江电大萧山学院",'http://127.0.0.1:3000/images/school/dianda.jpg'),
(null,'其他',"萧山区教师进修学校",'http://127.0.0.1:3000/images/school/jiaoshijinxiu.jpg'),
(null,'其他',"杭州市萧山区第二中等职业学校",'http://127.0.0.1:3000/images/school/erzhi.png'),
(null,'其他',"杭州市萧山区第三中等职业学校",'http://127.0.0.1:3000/images/school/sanzhi.png'),
(null,'其他',"杭州市萧山区青少年素质教育实践基地",'http://127.0.0.1:3000/images/school/shijianjidi.png'),
(null,'其他',"杭州市萧山卫生中等专业学校",'http://127.0.0.1:3000/images/school/weishengxuexiao.png');

CREATE TABLE dynamic(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(64),
    title VARCHAR(32),
    dtime DATETIME,
    content VARCHAR(128)
);
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018091008584805.jpg","融文创产业建设大潮 促睿智教育快速发展","2018/9/7 17:30:11","2018年9月6日，杭州市召开了打造国际文化创意中心暨加快推进之江文化产业带建设大会，并正式发布了《关于加快建设国际文化创意中心的实施意见》");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018070718293267.jpg","岱山县教育界领导莅临睿智教育考察指导","2018/7/7 18:21:54","  7月7日上午，舟山市岱山县教育局余志君局长、装备科虞卓");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018062515402806.jpg","智慧云教学系统的教学研讨会顺利举行","2018/6/25 15:34:15","6月22日，睿智教育智慧云教学系统的教学研讨会在虎山路初中顺利举行。重庆万州第三中学的老师们不远万里来到虎山路初中听胡老师给他们讲解智慧云教");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018062515311612.jpg","智慧云教学系统让学科竞赛更加高效","2018/6/25 15:12:47"," 6月22日，宁围初中举办了七年级的数学学科竞赛。在45分钟的学科竞赛中，傅剑平老师两个班级的学生在睿智教育平板进行了答题。 ");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018061509422159.jpg","浙江大学经济学院高培中心叶宏伟主任莅临睿智教育洽谈合作","2018/6/15 9:39:26","智慧教育是教育发展的大趋势，随着智能教育应用及教育大数据的发展和普及，智慧教育慢慢由K12教育向幼儿教育及继续教育领域扩展，越来越多的教育人");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018061509322757.jpg","萧山第十高级中学校长及老师莅临睿智教育参观指导","2018/6/15 9:26:34","6月14日，杭州市萧山区第十高级中学徐文太校长带队参观了睿智教育产品的应用场景。作为一所区教育局直属的高中，杭州市萧山区第十高级中学一直致力");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018053116292401.jpg","长水痘，耽误学习？睿智教育有高招","2018/5/31 16:25:55","千防万防，依然没防住，脸上、手上、腿上都长出了一颗颗水痘。   到了春季，水痘进入了高发期，很多同学都长出了水痘。");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018053018280362.jpg","萧山区智慧教室应用专题培训班实践活动顺利进行","2018/5/30 18:22:15","随着智慧教室应用在杭州萧山区的普及，越来越多的学校、老师开始参与到应用中去。5月30日上午，萧山区进修学校智慧教室应用专题培训班在浦阳小学和");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018042511082916.jpg","睿智教育参与2018浙江省教育信息化装备展示会","2018/4/19 9:59:45","4月18日，2018浙江省教育信息化装备展示会");
INSERT INTO dynamic VALUES(null,"http://127.0.0.1:3000/images/active/2018041909561578.jpg","睿智云教学系统助力义桥镇智慧课堂教学展示活动","2018/4/19 9:49:01","4月12日，义桥镇智慧课堂教学展示活动在义桥实验学校顺利举行");
