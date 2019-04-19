<template>
   <div id="app_home">
        <div class="container">
            <div class="header">
                <div class="navbar navbar-light navbar-expand-lg position-relative zindex ">
                    <div class="position-absolute">
                        <img src="images/index/logo.png"/>
                    </div>
                    <div class="text-left w-25 pl-2" id="zq">
                        <p>证券代码</p>
                        <p>871835</p>
                    </div>
                    <button class="navbar-toggler justify-content-end" data-toggle="collapse" data-target="#content" type="button">
                        <span class="navbar-toggler-icon border-0"></span>
                    </button>
                    <div class="w-100 ">
                        <div class="collapse navbar-collapse p-0 row w-100 justify-content-end mr-4" id="content">
                            <ul class="navbar-nav nav nav-pills w-100 justify-content-end  zindex position-absolute ">
                                <li class="nav-item"><router-link to="/home" class="nav-link">首页</router-link></li>
                                <li class="nav-item"><router-link to="/header/about" class="nav-link">关于我们</router-link></li>
                                <li class="nav-item"><router-link to="/live_lesson" class="nav-link">睿智云校</router-link></li>
                                <li class="nav-item"><router-link to="/header/school" class="nav-link">智慧教室</router-link></li>
                                <li class="nav-item"><router-link to="/header/Teaching" class="nav-link">睿智云教学</router-link></li>
                                <li class="nav-item"><router-link to="/header/Dynamic" class="nav-link">公司动态</router-link></li>
                                <li class="nav-item"><router-link to="/Login" class="nav-link" >用户登录</router-link></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <Carousel autoplay>
                <Carousel-item>
                    <div class="demo-carousel">
                        <img src="images/index/lesson_pg_banner2.jpg" class="w-100"/>
                    </div>
                </Carousel-item>
                <Carousel-item>
                    <div class="demo-carousel">
                        <img src="images/index/rzzy_APPbanner.jpg" class="w-100"/>
                    </div>
                </Carousel-item>
                <Carousel-item>
                    <div class="demo-carousel">
                        <img src="images/index/pingjiaxitong.jpg" class="w-100"/>
                    </div>
                </Carousel-item>
                <Carousel-item>
                    <div class="demo-carousel">
                        <img src="images/index/yuanxiaobanner.jpg" class="w-100"/>
                    </div>
                </Carousel-item>
            </Carousel>
            <div class="middle">
                <div class="text-center">
                    <a href="#" class="d-inline-block"><img src="images/index/buttton1.png"/></a>
                    <a href="#" class="d-inline-block"><img src="images/index/buttton4.png"/></a>
                </div>
                <div class="text-center">
                    <a href="#"><img src="images/index/buttton2.png"/></a>
                    <a href="#"><img src="images/index/buttton5.png"/></a>
                </div>
                <div class="text-center">
                    <a href="#"><img src="images/index/buttton7.png"/></a>
                    <a href="#"><img src="images/index/buttton6.png"/></a>
                </div>
            </div>
            <div class="intr"></div>
            <div class="yx_course pb-2">
                <div class="pt-4 w-100">
                    <h1 class="text-white text-left text-center ">云 校 直 播 课</h1>
                    <ul class="d-flex justify-content-center list-unstyled pt-4 pb-2">
                        <li ><a href="#">七年级</a></li>
                        <li ><a href="#">八年级</a></li>
                        <li ><a href="#">九年级</a></li>
                        <li ><a href="#">秋季课程</a></li>
                        <li ><a href="#">春季课程</a></li>
                    </ul>
                    <div class="row mt-4 mb-4">
                        <div class="col-md-4 col-sm-12 d-flex mb-sm-2 mb-md-0 justify-content-center">
                            <img src="images/index/shuxue.png" class="my_bg w-75"/>
                            <div class="position-absolute jpb">
                                <p class="pt-5"><a href="#" class="text-white">八年级数学精品班</a></p>
                                <p class="text-primary pt-3">金老师</p>
                                <p class="pt-3">
                                    <a href="#" class="btn btn-primary text-white"> 我要报名</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 d-flex  mb-sm-2 mb-md-0
                        justify-content-center">
                            <img src="images/index/yingyu.jpg" class="my_bg w-75"/>
                            <div class="position-absolute jpb">
                                <p class="pt-5"><a href="#" class="text-white">宏达8年级 英语语法</a></p>
                                <p class="text-primary pt-3">金老师</p>
                                <p class="pt-3">
                                    <a href="#" class="btn btn-primary text-white">我要报名</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 d-flex  mb-sm-2 mb-md-0
                        justify-content-center">
                            <img src="images/index/yuwen.jpg" class="my_bg w-75"/>
                            <div class="position-absolute jpb">
                                <p class="pt-5"><a href="#" class="text-white">八年级语文精品班</a></p>
                                <p class="text-primary pt-3">赵老师</p>
                                <p class="pt-3">
                                    <a href="#" class="btn btn-primary text-white">我要报名</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-12 d-flex  mb-sm-2 mb-md-0
                        justify-content-center">
                            <img src="images/index/yuwen.jpg" class="my_bg w-75"/>
                            <div class="position-absolute jpb">
                                <p class="pt-5"><a href="#" class="text-white">秋季语文作文专题</a></p>
                                <p class="text-primary pt-3">李老师</p>
                                <p class="pt-3">
                                    <a href="#" class="btn btn-primary text-white">我要报名</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 d-flex  mb-sm-2 mb-md-0
                        justify-content-center">
                            <img src="images/index/wuli.png" class="my_bg w-75"/>
                            <div class="position-absolute jpb">
                                <p class="pt-5"><a href="#" class="text-white">八年级科学精品班</a></p>
                                <p class="text-primary pt-3">金老师</p>
                                <p class="pt-3">
                                    <a href="#" class="btn btn-primary text-white">我要报名</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 d-flex  mb-sm-2 mb-md-0
                        justify-content-center">
                            <img src="images/index/yingyu.jpg" class="my_bg w-75"/>
                            <div class="position-absolute jpb">
                                <p class="pt-5"><a href="#" class="text-white">六年级英语精品班</a></p>
                                <p class="text-primary pt-3">金老师</p>
                                <p class="pt-3">
                                    <a href="#" class="btn btn-primary text-white">我要报名</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="text-center pt-3">
                    <p class="pb-2">睿智教育©版权所有 2007-2018 经营许可证编号：浙B2-20090128</p>
                    <p class="pt-2">睿智教育属于浙江睿智教育信息咨询股份有限公司 旗下产品
                        <a href="#" class="d-inline-block text-center">51La</a>
                    </p>
                    <div>
                        <img src="images/index/i_lo2.gif"/>
                    </div>
                </div>
            </div>
        </div>
   </div>
</template>
<script>
export default {
    data(){
        return{

        }
    }
}
</script>
<style scoped>
#zq>p{
    color:#145599;
    font-weight: bold;
}
h1,h2,h3,h4,h5,h6,p,ul,ol,dl,pre,body{
    margin: 0;
    padding: 0;
}
#content>ul>li>a:hover,#content>ul>li>router-link:hover{
    background:#ddd;
}
a:hover{
    text-decoration: none;
}
.zindex>div:first-child{
    top:0px;

}
.header>div:first-child>div:first-child{
    z-index: 10;
}
.zindex{
    z-index: 20;
}
.header{
    margin: auto;
}
#header a:hover,#demo a:hover,#content>ul>li>ul>li:hover{
    background-color:#EEEEEE;
    text-decoration: none;
    border-radius: 5px;
}    
.carousel-indicators li{
    width:10px;
    height:10px;
    background-color: #fff;
    border-radius: 50%;
    margin-right: 10px;
}
/*指示器被选中状态重写*/
.carousel-indicators .active{
    background-color: #0aa1ed;
}
/*修改左右箭头的尺寸和背景颜色*/
.carousel-control-prev,.carousel-control-next{
    width:3%;
    background-color: rgba(0,0,0,0.3);
    height:15%;
    border-radius: 3px;
    top:42%;
}
.carousel-control-prev{left: 5px;}
.carousel-control-next{right: 5px;}
.middle:before{
    content: "";
    display: table;
}
.middle>div:first-child>a:first-child{
    margin-left:1rem;
}
.middle>div:nth-child(2)>a:first-child{
    margin-left:1.3rem;
}

.middle>div:last-child>a:first-child{
    margin-left:1rem;
}
.yx_course{
    width: 100%;
    background-image:linear-gradient(225deg,#3575D5 0,#3575D5 100%) ;
}
.yx_course>div:first-child{
    width: 1140px;
    margin: auto;
}

.my_bg{
    padding-right: 0;
    border-radius: 25px;
}
.yx_course ul li{
    padding-left: 20px;
    padding-right: 20px;
}
.yx_course ul>li>a{
    color:#C9D7D4;
}
.yx_course ul>li>a:hover{
    color:red;
}
.footer{
    background-color: #2D2D2D;
    height:300px;
}
.footer p,.footer a{
    font-size: 15px;
    color:#C9D7D4;
}
.footer a{
    width:40px;
    height:40px;
    background-color: #9B27B0;
    line-height: 40px;
}
.footer>div:first-child{
    margin-top: 50px;
}
.footer:before{
    content: "";
    display: table;
}
@media (min-width: 576px) {
    #content>ul>li>a,#content>ul>li>router-link{
        color:white !important;
        font-weight: bold;
    }
    .middle>div>a>img{
        width: 100px;
    }
    .middle{
        height:195px;
        background:#097AE4 url(../../img/index/2018_pat2_gb.jpg) no-repeat center center;
        background-size: contain;
    }
    .middle>div:first-child{
        margin-top: .7rem;
    }
    .middle>div:first-child>a:last-child{
        margin-left: 8rem;
        margin-right: .5rem;
    }
    .middle>div:nth-child(2)>a:last-child{
        margin-left:14rem;
        margin-right: .7rem;
    }
    .middle>div:nth-child(2){
        margin-top: 2.8rem;
    }
    .middle>div:last-child{
        margin-top: 2.8rem;
    }
    .middle>div:last-child>a:last-child{
        margin-left: 8rem;
    }
    .intr{
        width: 100%;
        height: 137px;
        background: #162947 url(../../img/index/rzjy004.jpg) no-repeat center center;
        background-size: contain;
    }
    .yx_course>div:first-child>div p{
        font-size: 16px;
    }
    .yx_course>div:first-child>div>p>a{
        font-size: 16px !important;
    }
    .jpb{
        top:-15px;left:125px;
    }
}
@media (min-width: 768px) {
    .middle{
        height:264px;
    }
    .middle>div:first-child{
        margin-top: 1.2rem;
    }
    .middle>div:first-child>a:last-child{
        margin-left: 10rem;
        margin-right: .5rem;
    }
    .middle>div:nth-child(2)>a:last-child{
        margin-left:19rem;
        margin-right: .7rem;
    }
    .middle>div:nth-child(2){
        margin-top: 4.3rem;
    }
    .middle>div:last-child{
        margin-top: 4.5rem;
    }
    .middle>div:last-child>a:last-child{
        margin-left: 10rem;
    }
    .intr{
        height: 167px;
    }
    .jpb{
        top:-15px;left:60px;
    }
}

@media (min-width: 992px) {
    #content>ul>li>a,#content>ul>li>router-link{
        color:#145599 !important;
    }
    .middle>div>a>img{
        width: 170px;
    }
    .middle{
        width: 100%;
        height: 400px;
        background:#097AE4 url(../../img/index/2018_pat2_gb.jpg) no-repeat center center;
    }
    .middle>div:first-child>a:last-child{
        margin-left: 17rem;
    }
    .middle>div:nth-child(2)>a:last-child{
        margin-left:32rem;
    }
    .middle>div:nth-child(2){
        margin-top: 7.3rem;
    }
    .middle>div:last-child{
        margin-top: 7.5rem;
    }
    .middle>div:last-child>a:last-child{
        margin-left: 17rem;
    }
    .intr{
        width: 100%;
        height: 374px;
        background: url(../../img/index/rzjy004.jpg) no-repeat center center;
        background-size: cover;
    }
    .yx_course>div:first-child>div p{
        font-size: 20px;
    }
}
@media (min-width: 1200px) {
    .container {
        max-width: 100%;
        padding: 0px;
    }
    .header>div:first-child>div:first-child{
        margin-left: 200px;
    }
    #content>ul>li:first-child~li{
        margin-left: 15px;
    }
    .jpb{
        top:-15px;left:97px;
    }
}
</style>