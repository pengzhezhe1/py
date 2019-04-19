<template>
    <div class="container">
        <div id="cart" @click="jump(list)">
            <a class="text-white">课程清单
                <i id="shopping-amount">{{$store.getters.optCartCount}}</i>
                <img src="images/live_lesson/shop_car.png">
            </a>
        </div>
        <header class="row text-center">
            <div class="col-2">
                <img src="images/live_lesson/logo.png" class="w-100"/>
            </div>
            <div class="col-7 navbar navbar-light navbar-expand-lg">
                <button class="navbar-toggler justify-content-end" data-toggle="collapse" data-target="#content" type="button">
                    <span class="navbar-toggler-icon border-0"></span>
                </button>
                <div class="collapse navbar-collapse p-0 row w-100 justify-content-end mr-4" id="content">
                    <ul class="navbar-nav nav nav-pills w-100 justify-content-end">
                        <li class="nav-item"><a href="#" class="nav-link">首页</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">精品课程</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">校内课程</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">阳光市场</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">阳光学习网</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-3 d-flex justify-content-end pt-3" id="log">
                <span>睿智云校欢迎您，</span>
                <router-link :to="'/Login'" class="pr-2">登录</router-link>
                <router-link :to="'/Login'">注册</router-link>
            </div>
        </header>
        <main class="pt-5 pb-5">
            <div class="pb-3 pt-3">
                <p class="h6 text-dark">睿智云校 &gt; <span @click="to_live">直播课程</span> &gt; {{list[0].cname}}</p>
            </div>
            <div class="row">
                <div class="col-7">
                    <img src="images/live_lesson/zbk1.jpg"/>
                </div>
                <div class="col-5">
                    <p>优惠价：<span>￥{{list[0].price}}</span></p>
                    <p>适合年级：{{list[0].grade}}</p>
                    <p>课程科目：{{list[0].sub}}</p>
                    <p>总课时：<span>{{list[0].hour}}</span>课时(60分钟/课时)</p>
                    <p>购买截至：{{list[0].deadlines | datetimeFilter}}</p>
                    <p>剩余人数：{{list[0].remain}}人</p>
                    <a href="#" class="btn text-white bg-info mr-4">立即购买</a>
                    <a href="#" class="btn text-white bg-info" @click="addcart">加入清单</a>
                </div>
            </div>
            <div>
                <a href="#" @click="show" class="on">课程简介</a>
                <a href="#" @click="show1">留言评论</a>
            </div>
            <div id="con">
                <table class="w-100 text-center">
                    <tr class="bg-info">
                        <th>课程名称</th>
                        <th>上课日期</th>
                        <th>上课时间</th>
                        <th>学习状态</th>
                    </tr>
                    <tr v-for="item of times">
                        <td>{{item.tname}}</td>
                        <td>{{item.tdate | datetimeFilter}}</td>
                        <td>{{item.ttime}}</td>
                        <td>
                            <a href="#" class="btn p-2 text-white">查看回放</a>
                        </td>
                    </tr>
                </table>
                <div class="text-center mt-4">
                  <img src="images/live_lesson/zbkxq_2.jpg">   
                </div>
                
            </div>
            <div style='display:none'>
                <div>
                    <textarea maxlength="500" v-model="text" class="border-0" ></textarea>
                    <p class="text-right">还可以输入<span>{{length}}</span>个字</p>
                </div>
                <div class="row pb-5">
                    <div class="col-3 d-flex">
                      <!-- <span>星级</span> -->
                        <Row class="w-100">
                            <i-col span="12">
                                <Rate show-text :value.sync="valueText"></Rate>
                            </i-col>
                        </Row>
                    </div>
                    <div class="col-7">
                        <ul class="list-unstyled d-flex flex-wrap" @click="addText">
                            <li>讲的通俗易懂</li>
                            <li>很有帮助</li>
                            <li>上课很生动</li>
                            <li>内容条理清晰</li>
                            <li>讲的很实用</li>
                            <li>满满都是干货</li>
                            <li>学习氛围很好</li>
                            <li>语言风格很有味道</li>
                        </ul>
                    </div>
                    <div class="col-2 text-right">
                        <input type="button" value="评论" class="bg-info text-white pr-4 pl-4" @click="addComment">
                    </div>
                </div> 
                <div>
                    <p>全部评论({{cons.length}})</p>
                    <div v-for="(item,i) of cons" class="comlist">
                        <div>
                            <span>第{{i+1}}楼</span>
                            <span>发表事件：{{item.ctime | datetimeFilter}}</span>
                        </div>
                        <div>{{item.content}}</div>
                    </div>
                </div> 
            </div> 
        </main>
        <footer class="bg-info pt-5 pb-5">
            <div class="row d-flex">
                <div class="col-2 text-center">
                    <ul class="list-unstyled">
                        <li class="text-white">新手指南</li>
                        <li>老师帮助</li>
                        <li>学生帮助</li>
                        <li>平台公告</li>
                    </ul>
                </div>
                <div class="col-2 text-center">
                        <ul class="list-unstyled">
                            <li class="text-white">网站条款</li>
                            <li>会员条款</li>
                            <li>版权声明</li>
                            <li>免责声明</li>
                        </ul>
                </div>
                <div class="col-2 text-center">
                        <ul class="list-unstyled">
                            <li class="text-white">服务热线</li>
                            <li>4008-267-897</li>
                        </ul>
                </div>
                <div class="col-6 text-center">
                    <ul class="list-unstyled d-flex justify-content-around">
                        <li>
                            <img src="images/live_lesson/qcode1.png" class="w-75"/>
                        </li>
                        <li>
                            <img src="images/live_lesson/zydy.png" class="w-75"/>
                        </li>
                        <li>
                            <img src="images/live_lesson/qcode2.png" class="w-75"/>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</template>
<script>

    export default {
        data(){
            return{
               text:"",
               cid:this.$route.query.id,
               list:[{cname:''}],
               times:[],
               count:0,
               pno:0,
               pageSize:10,
               cons:[], //评论列表
               length:500,
               valueText: 3,
               valueCustomText: 3.8
            }
        },
        created() {
            this.show();
            this.getDetails();
            this.getTime();
            this.load();
        },
        methods: {
            addText(e){
                var t=e.target;
                this.text+=t.innerHTML+" ";
            },
            load(){
                var uname=sessionStorage.getItem("name");
                setTimeout(function(){   
                    var log=document.getElementById("log");
                    if(uname){
                        var html=`<span>睿智云校欢迎您，${uname}</span><a href="#">注销</a>`;
                        log.innerHTML=html;
                        $("#log>a").on("click",function(){
                            sessionStorage.removeItem("uname");
                            alert("退出成功");
                            location.href="#/live_lesson"
                        })
                }},100) 
                //1:在data 添加几个数据
                //2:获取pno，pageSize
                this.pno++;
                var ps=this.pageSize;
                //3：正则表达式验证pno和pageSize是否正确
                var reg=/^[0-9]{1,}$/;
                if(!reg.test(this.pno)){
                    alert("页码格式不正确");
                    return;
                };
                // 4：如果不正确提示
                // 5：创建url 发送ajax请求
                 var url="http://127.0.0.1:3000/getComment?cid="+this.cid+"&pno="+this.pno;
                 this.axios.get(url).then(result=>{
                     this.cons=result.data.data;
                     console.log(this.cons)
                 })

            },
            //添加评论
            addComment(){
                var cid=this.cid;
                var text=this.text;
                var val=this.valueCustomText;
                //去除评论两端空格
                var size=text.trim().length;
                if(size==0){
                    alert("评论内容不能为空");
                    return
                }
                var postData=this.qs.stringify({
                    cid,
                    content:text,
                    val
                });
                var url="http://127.0.0.1:3000/addcomment";
                this.axios.post(url,postData).then(result=>{
                    alert("添加成功");
                    this.text="";
                    this.pno=0;
                    this.load();
                })
            },
            //课程列表页面传参
            jump(list){
                this.$router.push("/ShopCart?id="+list[0].id)
            },
            //跳转直播课程列表
            to_live(){
                this.$router.push("/live_lesson");
            },
            addcart(){
                var cid=this.cid;
                var cname=this.list[0].cname;
                var price=this.list[0].price;
                var hour=this.list[0].hour;
                var url="http://127.0.0.1:3000/addcart?cid="+cid+"&cname="+cname+"&price="+price+"&hour="+hour;
                this.axios.get(url).then(result=>{ 
                    
                    if(result.data.code==1){
                        this.$store.commit("increment");
                    }else if(result.data.code==-1){
                        alert("此课程已添加至购物车")
                    }else{
                        alert("请登录")
                    }
                })
            },
             getTime(){
                 var id=this.cid;
                 var url="http://127.0.0.1:3000/getTime?id="+id;
                 this.axios.get(url).then(result=>{  
                      this.times=result.data;
                 });
            },
            getDetails(){
                var id=this.cid;
                var url="http://127.0.0.1:3000/getDetails?id="+id;
                this.axios.get(url).then(result=>{  
                    this.list=result.data;
                });
            },
            show(){
                $("#con").show()
                $("#con").next().hide() 
                $($("#con").prev().children()['0']).addClass("on");
                $($("#con").prev().children()['1']).removeClass("on");
            },
            show1(){
                $("#con").hide()
                $("#con").next().show() 
                $($("#con").prev().children()['1']).addClass("on");
                $($("#con").prev().children()['0']).removeClass("on");
                var leng=500;
                $("textarea").keyup(()=>{
                    leng=500-$("textarea")[0].value.length;
                     this.length=leng      
                })
                
            }
        }
    }
</script>
<style scoped>
/*星星样式*/
.ivu-col-span-12{
    width:100% !important;
}
/*评论内容样式*/
.comlist{
    color:#4d4b4b;
    padding-left: 10px;
}
.comlist>div:first-child>span{
    padding-right:40px;
}
.comlist>div:last-child{
    padding:20px 0;
}
#shopping-amount{
    display: inline-block;
    width:16px;
    height:16px;
    background:red;
    border-radius: 50%;
    position: absolute;
    top:82px;
    left:15px;
    font-size:12px;
    text-align: center;
    line-height: 16px;
}
#cart{
    width:32px;
    height:113px;
    position: fixed;
    right:0;
    top:40%;
    background-color:#369ED1;
    text-align: center;
    padding-top:2px;
    border-radius: 10px;
}
#cart:hover{
    cursor: pointer;
}
/*头部样式*/
#content ul li{
    padding-right:10px;
}
#content a{
    color:#145599;
    font-weight: bold;
    font-size: 20px;
}
header>div:last-child a,header>div:last-child router-link{
    color:#145599;
    font-weight: bold;
    font-size:18px;
}
header a:hover{
    color: #369ED1 !important;
} 
/*课程详情样式*/
main>div:first-child>p:hover{
    cursor:pointer;
}
main>div:nth-child(2)>div:last-child p{
    color:black;
    font-size: 18px;
    padding-bottom: 15px;
}
main>div:nth-child(2)>div:last-child>p>span{
    font-size:25px;
    color:#EFAA47;
}
 main>div:nth-child(3) a{
    display: inline-block;
    padding:20px 40px;
    color:black;
} 
 main>div:nth-child(3) a:target{
    border-bottom:4px solid #369ED1;
    color:#369ED1 !important; 
} 
.on{
    border-bottom:4px solid #369ED1;
    color:#369ED1 !important;
}
main>div:nth-child(4)>table{
    border:1px solid #999999;
}
main>div:nth-child(4)>table a{
    background-color:#EFAA47;
    padding:5px 10px !important;
}
main>div:nth-child(4)>table>tr:first-child{
    height:50px;
} 
#con{
    margin-top:20px;
}
#con>table>tr+tr:nth-child(odd){
    background-color: #369ED1;
}
#con>table tr{
    height:50px;
}
/*评论板块*/
#con+div{
    background-color: white;
}
#con+div>div:first-child{
    border:1px solid #D8D8D8;
    margin-top:30px;
    margin-bottom: 15px;
}
#con+div>div:first-child>p>span{
    color:tomato;
    font-weight: bold;
}
#con+div>div:nth-child(2)>div:nth-child(2)>ul>li{
    color:#999999;
    border:1px solid #999999;
    border-radius: 15px;
    padding:5px;
    font-size: 14px;
    margin-right:15px;
    margin-bottom: 15px
}
footer li{
    padding-bottom: 10px;
}
</style>