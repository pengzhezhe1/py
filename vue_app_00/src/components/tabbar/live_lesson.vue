<template>
<div class="container">
    <header class="text-center">
        <div class="row bg-white">
            <div class="col-6">
                <ul class="d-flex justify-content-start list-unstyled">
                    <li>
                        <span>服务热线：4008-267-897</span>
                        <b>|</b>
                    </li>
                    <li>
                        <a href="#">首页</a>
                        <b>|</b>
                    </li>
                    <li>
                        <a href="#">校内课程</a>
                        <b>|</b>
                    </li>
                    <li>
                        <a href="#">阳光市场</a>
                        <b>|</b>
                    </li>
                    <li>
                        <a href="#">阳光学习网</a>
                    </li>
                </ul>
            </div>
            <div class="col-6 d-flex justify-content-end" id="log">
                <span>睿智云校欢迎您，</span>
                <a href="#" @click="jump">登录</a>
                <a href="#" @click="jump">注册</a>
            </div>
        </div>
        <div class="row">
            <div class="col-6 text-left">
                <img src="images/live_lesson/logo.png" class="w-50"/>
            </div>
            <div class="col-6 text-right" id="side">
                <input type="text" class="p-0 mr-0 w-50 pl-2" v-model="keyword"/>
                <input type="button" value="搜索" class="bg-info text-white ml-0 pt-2 pb-2" @click="getKey"/>
                <div id="to_search">
                    <div class="text-left d-flex" v-for="item of search">
                        <img :src="item.pic" />
                        <div class="pt-2">
                            <h4 class="text-white pb-4">{{item.cname}}</h4>
                            <h3 class="text-info">￥{{item.price}}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="mt-4">
        <div class="row swipe pb-4">
            <div class="col-2 p-0 nav_left">
                <ul class="list-unstyled">
                    <li class="lesson_item">
                        <a href="#" class="d-flex justify-content-around">
                            <span>高中课程</span>
                            <strong class="cusfont cusfont-more"> &gt; </strong>
                        </a>
                        <div class="threeitem">
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">高一</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                    <a href="#">政治</a>
                                    <a href="#">历史</a>
                                    <a href="#">生物</a>
                                    <a href="#">物理</a>
                                    <a href="#">化学</a>
                                    <a href="#">地理</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">高二</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                    <a href="#">政治</a>
                                    <a href="#">历史</a>
                                    <a href="#">生物</a>
                                    <a href="#">物理</a>
                                    <a href="#">化学</a>
                                    <a href="#">地理</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">高三</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                    <a href="#">政治</a>
                                    <a href="#">历史</a>
                                    <a href="#">生物</a>
                                    <a href="#">物理</a>
                                    <a href="#">化学</a>
                                    <a href="#">地理</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson_item">
                        <a href="#" class="d-flex justify-content-around">
                            <span>初中课程</span>
                            <strong class="cusfont cusfont-more"> &gt; </strong>
                        </a>
                        <div class="threeitem">
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">初一</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                    <a href="#">政治</a>
                                    <a href="#">历史</a>
                                    <a href="#">生物</a>
                                    <a href="#">物理</a>
                                    <a href="#">化学</a>
                                    <a href="#">地理</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">初二</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                    <a href="#">政治</a>
                                    <a href="#">历史</a>
                                    <a href="#">生物</a>
                                    <a href="#">物理</a>
                                    <a href="#">化学</a>
                                    <a href="#">地理</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">初三</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                    <a href="#">政治</a>
                                    <a href="#">历史</a>
                                    <a href="#">生物</a>
                                    <a href="#">物理</a>
                                    <a href="#">化学</a>
                                    <a href="#">地理</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="lesson_item">
                        <a href="#" class="d-flex justify-content-around">
                            <span>小学课程</span>
                            <strong class="cusfont cusfont-more"> &gt; </strong>
                        </a>
                        <div class="threeitem">
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">三年级</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">四年级</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">五年级</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                </div>
                            </div>
                            <div class="threeles row">
                                <div class="threecls col-2">
                                    <a href="#">六年级</a>
                                </div>
                                <div class="threesub col-10">
                                    <a href="#">语文</a>
                                    <a href="#">数学</a>
                                    <a href="#">英语</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-10 p-0 nav_right">
                <img src="images/live_lesson/banner2018.png" class="w-100 h-103"/>
            </div>
        </div>
        <div class="lessall mt-4">
            <div class="banner">
                <img src="images/live_lesson/3AE7ED861379427BAC9E3ED1204E35ED.png">
                <span class="h4 mb-0">小学</span>
            </div>
            <div class="row mt-3 content pb-4">     
                <div class="col-lg-3 bg-white p-1" v-for="item of primary">
                    <router-link :to="'/le_details?id='+item.id"> 
                        <img :src="item.pic" class="w-100">
                        <p class="pt-3 pb-2 text-dark">{{item.cname}}</p>
                        <div class="d-flex justify-content-between">
                            <span class="text-dark">共{{item.hour}}课时</span>
                            <span class="text-danger h4">￥{{item.price.toFixed(2)}}</span>
                        </div>
                    </router-link> 
                </div>
            </div>
            <div class="banner">
                <img src="images/live_lesson/3AE7ED861379427BAC9E3ED1204E35ED.png">
                <span class="h4 mb-0">初中</span>
            </div>
            <div class="row mt-3 content pb-4">     
                <div class="col-lg-3 bg-white p-1" v-for="item of middle">
                    <router-link :to="'/le_details?id='+item.id">
                        <img :src="item.pic" class="w-100">
                        <p class="pt-3 pb-2 text-dark">{{item.cname}}</p>
                        <div class="d-flex justify-content-between">
                            <span class="text-dark">共{{item.hour}}课时</span>
                            <span class="text-danger h4">￥{{item.price.toFixed(2)}}</span>
                        </div>
                    </router-link> 
                </div>
            </div>
            <div class="banner">
                <img src="images/live_lesson/3AE7ED861379427BAC9E3ED1204E35ED.png">
                <span class="h4 mb-0">高中</span>
            </div>
            <div class="row mt-3 content pb-4">     
                <div class="col-lg-3 bg-white p-1" v-for="item of high">
                    <router-link :to="'/le_details?id='+item.id">
                        <img :src="item.pic" class="w-100">
                        <p class="pt-3 pb-2 text-dark">{{item.cname}}</p>
                        <div class="d-flex justify-content-between">
                            <span class="text-dark">共{{item.hour}}课时</span>
                            <span class="text-danger h4">￥{{item.price.toFixed(2)}}</span>
                        </div>
                    </router-link> 
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="row pt-5"> 
            <div class="col-3 text-center">
                <ul class="list-unstyled">
                    <li><a href="#">新手指南</a></li>
                    <li><a href="#">如何注册</a></li>
                    <li><a href="#">如何充值</a></li>
                    <li><a href="#">如何上课</a></li>
                </ul>
            </div>
            <div class="col-3 text-center">
                <ul class="list-unstyled">
                    <li><a href="#">网站条款</a></li>
                    <li><a href="#">会员条款</a></li>
                    <li><a href="#">版权声明</a></li>
                    <li><a href="#">免责声明</a></li>
                </ul>
            </div>
            <div class="col-6 text-center d-flex justify-content-around">
                <div>
                    <p>服务热线</p>
                    <p>4008-267-897</p>
                </div>
                <img src="images/live_lesson/qcode1.png">
                <img src="images/live_lesson/qcode2.png">
            </div>
        </div>
        <div class="text-center pt-5 pb-4">
            <p>阳光学习网?©2007-2018经营许可证编号： 浙B2-20090128 51La</p>
            <p>阳光学习网 属于 浙江睿智教育信息咨询股份有限公司 旗下产品</p>
        </div>
    </footer>
</div>
</template>
<script>
export default {
    data(){
        return {
            list:[], //模板中显示商品列表
            primary:[],
            middle:[],
            high:[],
            keyword:"",
            search:[]
        }
    },
    created() {
        //当组件创建成功后立即调用加载下一页方法
        this.loadMore()
    },
    methods:{
        getKey(){
            $("#to_search").show();
            var keyword=this.keyword;
            var url="http://127.0.0.1:3000/getKeyword?keyword="+keyword;
            this.axios.get(url).then(result=>{
                this.search=result.data;
                console.log(this.search)
            })
        },
        jump(){
            this.$router.push("/Login");
        },
        //加载下一页数据并且将数据显示在模板上
        loadMore(){
            var uname=sessionStorage.getItem("name");
                setTimeout(function(){   
                    var log=document.getElementById("log");
                    if(uname){
                        var html=`<span>睿智云校欢迎您，${uname}</span><a href="#">注销</a>`;
                        log.innerHTML=html;
                        $("#log>a").on("click",function(){
                            sessionStorage.removeItem("uname");
                            alert("退出成功");
                            location.href="#/home"
                        })
                }},100)

            //1：创建变量url请求地址
            var url="http://127.0.0.1:3000/getLessons"
            //2：发送ajax请求
            this.axios.get(url).then(result=>{
                this.list=result.data;
                for(var item of this.list){
                    if(item.class_id==10){
                        if(this.primary.length<4)
                           this.primary.push(item)  
                    }else if(item.class_id==20){
                        if(this.middle.length<4)
                        this.middle.push(item)
                    }else{
                        if(this.high.length<4)
                        this.high.push(item)
                    }
                }
            })
        }
    }
}
</script>
<style scoped>
#side{
    position: relative;
}
#to_search{
    width:400px;
    height:500px;
    position: absolute;
    z-index: 100;
    background:rgba(0,0,0,0.7);
    border-radius: 10px;
    top:60px;
    left:170px;
    overflow:scroll;
    display: none;
}
#to_search>div>img{
    width:150px;
    height:150px;
    padding:10px;
}
a:hover{
    text-decoration: none;
    color:#48AAFC;
}
header span,header a{
    font-size: 14px;
    color: #666666;
}
header b{
    color:#999;
    margin-right: 4px;
    font-weight: 400;
}
header>div:first-child>div:last-child>a{
    margin-left: 10px;
}
header>div:last-child>div:last-child>input{
    margin-top: 18px;
}
.container{
    background-color: #F5F7FA;
}
header>div:last-child{
    padding-top: 20px;
}
header>div:last-child>div:last-child>input:last-child{
    border:0;
    margin-left: -6px !important;
    padding:11px 11px;

}
/* 左侧导航背景色 */
.nav_left{
    background-color: #292D32;
    border-top-left-radius: 8px;
    border-bottom-left-radius: 8px;
}
.nav_right img{
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
}
.lesson_item{
    padding:14px 10px;
}
.lesson_item:hover,.lesson_item a:hover{
    background-color:white;
    color:black;  
}
.swipe{
    position: relative;
}
.nav_left>ul{
    line-height: 2;
}
.lesson_item a{
    color:#999999;
    font-weight: bold;
}
.h-103{
    margin-top:-1.5px;
    height: 102% !important;
}
.nav_left>ul>li:first-child~li{
    border-top:.5px solid #1C252D;
}
/*课程隐藏域*/
.threeitem{
    width:600px;
    height:185px;
    background-color: white;
    position: absolute;
    z-index: 100;
    top:0rem;
    left:11.8rem;
    padding-left: 20px;
    display: none; 
}
.threeitem .threeles{
    padding-top:10px;
    width: 100%;
}
.threeitem>.threeles+.threeles{
    border-top:1px solid rgb(212, 209, 209);
}
.threecls>a,.threesub>a{
    font-weight: 400;
    color:black;
}
.threesub>a{
    font-size: 16px;
    margin-right: 14px;
}
.lesson_item:hover .threeitem{
    display: block;
}
/*课程列表*/
.lessall>.banner img{
    vertical-align: bottom;
}
.content img{
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
}
/*底部样式*/
footer{
    background-color:#DCDDDD;
    width:100%;
}
footer a{
    font-size:13px;
    color:#666666;
}
footer>div div>ul>li:first-child>a{
    font-size:16px;
}
footer>div div>ul li{
    padding-top:8px;
}
</style>