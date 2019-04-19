 <template>
    <div>
    <div class="app_header">
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
                            <ul class="navbar-nav nav nav-pills w-100 justify-content-end  zindex position-absolute">
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
        </div>
    </div>
    <router-view></router-view>
    </div>
 </template>
 <style scoped>
#zq>p{
    color:#145599;
    font-weight: bold;
}
/* .header>div>div:nth-child(2){
    position: absolute;
    left: 200px;
    top:10px;
} */
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
@media (min-width: 576px) {
    #content>ul>li>a,#content>ul>li>router-link{
        color:white !important;
        font-weight: bold;
    }
}
@media (min-width: 992px) {
    #content>ul>li>a,#content>ul>li>router-link{
        color:#145599 !important;
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
}
 </style>