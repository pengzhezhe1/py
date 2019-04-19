const express=require("express");
const mysql=require("mysql");
const cors=require("cors");
var server=express();
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}));
const session=require("express-session");
server.use(session({
    secret:"128位随机字符串",
    resave:false,
    saveUninitialized:true,
    cookie:{
        maxAge:1000*60*60
    }
}));
server.use(express.static("public"));
const bodyParser=require("body-parser");
server.use(bodyParser.urlencoded({
    extended:false
}))
server.listen(3000);
var pool=mysql.createPool({
    host:'127.0.0.1',
    password:'',
    user:'root',
    database:'rz',
    port:3306,
    connectionLimit:20
});
//功能一：用户登录
//1：用户get 请求路径/login
server.get("/login",(req,res)=>{
    //2：获取二个参数 uname upwd
    var $uname=req.query.uname;
    var $upwd=req.query.upwd;
    //3：创建sql
    var sql="select id from rz_login where uname=? and upwd=md5(?)";
    //4：执行sql
    pool.query(sql,[$uname,$upwd],(err,result)=>{
        if(err) throw err;
        //5：获取数据库返回结果
        //6：返回客户数据
        if(result.length>0){
            var uid=result[0].id;
            req.session.uid=uid;
            res.send({code:1,msg:'success'})
        }else{
            res.send({code:-1,msg:'fail'})
        }
    });
});
//功能二：课程列表
//1：用户get 请求路径/live_lesson
server.get("/getLessons",(req,res)=>{
    //1：获取用户参数 pno pageSize
//    var pno=req.query.pno;
//    var pageSize=req.query.pageSize; 
  
//     if(!pno){var pno=1;}
//     if(!pageSize){var pageSize=16;} 
//2：为参数设置默认值 pno：1 pageSize：4  
//3：创建sql语句
    var sql="select l.id,l.cname,l.price,l.hour,l.class_id,p.pic from rz_course l,rz_course_pic p where l.id=p.course_id group by l.id;";
//3.1:计算开始记录数，几条记录
    // var offset=(pno-1)*pageSize;
    // pageSize=parseInt(pageSize);
//4：执行sql语句
pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
});
//5：获取数据库返回结果并且发送脚手架
})

//功能三：获取课程详情数据
server.get("/getDetails",(req,res)=>{
    var id=req.query.id;
    var sql="select cname,price,hour,class_id,grade,sub,deadlines,remain from rz_course where id=?;";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//获取上课时间表
server.get("/getTime",(req,res)=>{
    var id=req.query.id;
    var sql="select tname,tdate,ttime from rz_course_time where course_id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
//用户点击添加购物车按钮
server.get("/addcart",(req,res)=>{
    if(!req.session.uid){
        res.send({code:-2,data:[],msg:"请登录"});
        return;
    }
    var uid=req.session.uid;
    var cid=req.query.cid;
    var cname=req.query.cname;
    var price=req.query.price;
    var hour=req.query.hour;
    var sql="select id from rz_cart where uid=? and cid=?";
    pool.query(sql,[uid,cid],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            var sql=`insert into rz_cart values(
            null,${uid},${cid},'${cname}',${price},${hour})`;
            
        }else{
            res.send({code:-1,msg:"商品已添加"});
            return;
        } 
        pool.query(sql,(err,result)=>{
                if(err) throw err;
                res.send({code:1,msg:"添加成功"});
            })
    })
})
//查询购物车列表
server.get("/getShopCart",(req,res)=>{
    var uid=req.session.uid;
    console.log(uid)
    var sql="select id,cid,cname,price,hour from rz_cart where uid=?";
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
})
//删除购物车中某个商品
server.post("/removeItem",(req,res)=>{
    var id=req.body.id;
    id=parseInt(id);
    var sql="delete from rz_cart where id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"删除成功"});
        }else{
            res.send({code:-1,msg:"删除失败"});
        }
    })
})
//删除用户选中的多个商品
server.get("/removeMItem",(req,res)=>{
    var ids=req.query.ids;
    var sql="delete from rz_cart where id in("+ids+")";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"成功删除多个商品"})
        }else{
            res.send({code:-1,msg:"删除失败"})
        }
    })
})
//添加评论内容
server.post("/addcomment",(req,res)=>{
    var cid=req.body.cid;
    var content=req.body.content;
    var val=req.body.val;
    var sql= "INSERT INTO rz_comment VALUES(null,?,?,now(),?)";
    pool.query(sql,[cid,content,val],(err,result)=>{
      if(err)throw err;
      res.send({code:1,msg:"添加成功"})    
    })
})
//评论列表
server.get("/getComment",(req,res)=>{
    //1:参数 
    var cid = req.query.cid;
    var pno = req.query.pno;
    var pageSize = req.query.pageSize;
    if(!pno){
      pno = 1;
    }
    if(!pageSize){
      pageSize = 10;
    }
    //2:sql
    var sql = " SELECT id,cid,content,ctime";
    sql+=" FROM rz_comment";
    sql+=" WHERE cid = ?";
    sql+=" LIMIT ?,?";
    var offset = (pno-1)*pageSize;
    pageSize = parseInt(pageSize);
    pool.query(sql,[cid,offset,pageSize],(err,result)=>{
      if(err)throw err;
      res.send({code:1,data:result});
    })
    //3:result
  })

  //用户注册
  server.post("/addinfo",(req,res)=>{
      var uname=req.body.logname;
      var pwd=req.body.logpwd;
      var sql="insert into rz_login values(null,?,md5(?))";
      pool.query(sql,[uname,pwd],(err,result)=>{
          if(err) throw err;
          if(result.affectedRows>0){
              res.send({code:1,msg:"注册成功"})
              return
          }else{
              res.send({code:-1,msg:"注册失败"})
          }
      })
  })
  //学校列表
server.get('/school',(req,res)=>{
	var nj=req.query.nj
	var sql='select mc,image from rz_class where nj=?'
	pool.query(sql,[nj],(err,result)=>{
		if(err)throw err
		res.send(result)
	})
})
//获取动态表
server.get("/getDynamic",(req,res)=>{
    var sql="select id,pic,title,dtime,content from dynamic";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
})
//查找关键字
server.get("/getKeyword",(req,res)=>{
    var keyword=req.query.keyword;
    var sql="select l.id,l.cname,l.price,l.class_id,p.pic from rz_course l,rz_course_pic p where l.cname like concat('%',?,'%') and l.id=p.course_id group by l.id;";
    pool.query(sql,[keyword],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})