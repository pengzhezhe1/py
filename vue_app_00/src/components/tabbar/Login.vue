<template>
    <div class="app_login">
        <header class="d-flex container justify-content-between">
            <div>
                <img src="images/index/logo.png"/>
                <span>欢迎登录</span>
            </div>
            <div>
                <a href="#" @click="show1">登录</a>
                <i>|</i>
                <a href="#" @click="show2">注册</a>
            </div>
        </header>
        <main>
            <div class="my_login">
                <div class="text-center">用户登录</div>
                <div class="text-center">
                    <form action="">
                        <div>
                            <span>用户账号：</span><input type="text" name="uname" v-model="uname" class="w-50"/>
                        </div>
                        <div>
                            <span>账号密码：</span><input type="password" name="upwd" v-model="upwd" class="w-50"/>
                        </div>
                        <div>
                           <input type="checkbox" v-model="checked"/>记住密码
                            <input type="button" value="登录" @click="btnLogin"/> 
                        </div>
                    </form>
                </div>
            </div>   
            <div id="log_on" class="hid_log">
                <div class="text-center">用户注册</div>
                <div class="row">
                    <div class="col-3 text-right pt-2">
                        <span>*</span>
                        <span>用户名</span>
                    </div>
                    <div class="col-9 pl-0 pr-4">
                        <input type="text" placeholder="由4-16位（字母、数字、下划线组成）" v-model="log_name">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-right pt-2">
                        <span class="text-red">*</span>
                        <span>设置密码</span>
                    </div>
                    <div class="col-9 pl-0 pr-4">
                        <input type="password" placeholder="支持4-6位数字" v-model="log_pwd">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-right pt-2">
                        <span class="text-red">*</span>
                        <span>确认密码</span>
                    </div>
                    <div class="col-9 pl-0 pr-4">
                        <input type="password" placeholder="请确认密码" v-model="log_on">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-right pt-2">
                        <span class="text-red">*</span>
                        <span>验证码</span>
                    </div>
                    <div class="col-9 pl-0 pr-4">
                        <input type="text" placeholder="请输入验证码" v-model="regs">
                        <a href="#" class="btn text-white" @click="change">{{log_reg}}</a>
                    </div>
                </div>
                <div class="text-right pr-2">
                    <span>我已阅读并同意<a href="#">《用户注册协议》</a><a href="#">《隐私政策》</a></span>
                    <input type="checkbox" checked>
                    <a href="#" class="btn bg-info text-white" @click="inc">立即注册</a>
                </div>
            </div>
        </main> 
        <footer>
            <div class="container">
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
            </div>
                
        </footer> 
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
            checked:true,
            log_name:"",
            log_pwd:"",
            log_on:"",
            log_reg:"",
            regs:""
        }
    },
    created() {
        this.onload();
    },
    methods: {
        show1(){
            $(".my_login").show();
            $("#log_on").hide();
        },
        show2(){
            $("#log_on").show();
            $(".my_login").hide();
        },
        inc(){
            var reg=/^\w{4,16}$/;
            var reg1=/^\d{4,6}$/;
            if(!reg.test(this.log_name)){
                this.$Message.error("用户名错误")
                return
            }else if(!reg1.test(this.log_pwd)||this.log_pwd!==this.log_on){
                this.$Message.error("密码错误");
                return
            }else if(this.log_reg!==this.regs){
                this.$Message.error("验证码错误");
                return
            }else{
                var url="http://127.0.0.1:3000/addinfo";
                var postData=this.qs.stringify({
                    logname:this.log_name,
                    logpwd:this.log_pwd
                })
                this.axios.post(url,postData).then(result=>{
                    if(result.data.code==1){
                        this.$Message.success("注册成功");
                        this.show1();
                    }else{
                        this.$Message.error("注册失败")
                    }
                })
            }
        },
        change(){
            this.onload();
        },
        onload(){
            var str="";
            var num=0;
            while(1){
              num=Math.ceil(Math.random()*122);
              if(num>64&&num<91 || num>96&&num<123){
                  str+=String.fromCharCode(num);  
              }  
              if(str.length==4){
                  break;
              }
            }
            this.log_reg=str;
        },
        btnLogin(){
            var u=this.uname;
            var p=this.upwd;
            var reg=/^[a-z0-9_]{3,8}$/i;
            if(!reg.test(u)){
                alert("用户名格式错误");
                return;
            }
            if(!reg.test(p)){
                alert("密码格式错误");
                return;
            }
            var url="http://127.0.0.1:3000/login?uname="+u+"&upwd="+p;
            this.axios.get(url).then(result=>{
                if(result.data.code==1){
                    sessionStorage.setItem("name",u);
                var url="http://127.0.0.1:3000/getShopCart";
                this.axios.get(url).then(result=>{
                    var rows=result.data.data;
                    for(var item of rows){
                        this.$store.commit("increment");
                    }
                })                   
                    alert("登录成功");
                    console.log(history)
                    history.go(-1);
                    
                }else{
                    alert("用户名或密码错误");
                }
            })
        }   
    }
}
</script>
<style scoped>
.hid_log{
    display: none;
}
#log_on>div:nth-child(5)>div:nth-child(2) a{
    background:rgb(113, 210, 248); 
    font-style:italic;
    position: absolute;
    right: 26px;
    top:2px;
}
#log_on .row div>span:first-child{
    color:red;

}
.my_login>div:first-child,#log_on>div:first-child{
    padding:40px 0px;
    font-size:25px;
    font-weight: bold;
}
.my_login>div:nth-child(2)>form span{
    color:#666363;
    font-weight: 500;
}
.my_login>div:nth-child(2)>form div{
    padding-bottom: 40px;
}
.my_login>div:nth-child(2)>form>div:last-child>input:last-child{
    background:#145599;
    color:white;
    padding:8px 30px;
    margin-left: 10px;
    border:0;
}
main{
    background:url(../../img/banner2.jpg) no-repeat;
    padding-bottom: 20px;
    background-size: cover;
}
main::before{
    content:"";
    display:table;
}
main>div{
    width:500px;
    height:500px;
    background:rgba(255,255,255,0.5);
    margin:0 auto;
    margin-top:20px;
    border-radius: 15px;
}
header>div:first-child img{
    vertical-align:middle;
    position: absolute;
}
header>div:first-child span{
    display: inline-block;
    font-size:30px;
    font-weight: bold;
    padding-left:175px;
    margin:20px 0px;
}
header>div:last-child{
    padding-top:30px;
}
footer{
    background:#DCDDDD;
}
footer a,footer p{
    color:#575555;
}
footer>div>div>ul li{
    padding-bottom:15px;
}
</style>