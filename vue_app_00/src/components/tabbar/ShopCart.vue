<template>
    <div class="container p-0">
        <header class="text-center pb-5">
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
                    <a href="#">登录</a>
                    <a href="#">注册</a>
                </div> 
            </div>
            <div class="row">
                <div class="col-6 text-left">
                    <img src="images/live_lesson/logo.png" class="w-50"/>
                </div>
                <div class="col-6 text-right">
                    <input type="text" class="p-0 mr-0 w-50"/>
                    <input type="button" value="搜索" class="bg-info text-white ml-0"/>
                </div>
            </div>
        </header>
        <main class="pt-4">
            <div class="row">
                <div class="col-6">
                    <h2>购物车</h2>
                </div>
                <div class="col-6 d-flex justify-content-end">
                    <span class="pr-2 text-info">已选{{n}}个课程</span>
                    <span class="text-info">合计：{{total}}元</span>
                </div>
            </div>
            <div class="cart-list pt-3 pb-3">
                <ul class="list-unstyled d-flex justify-content-between">
                    <li class="pl-2">
                        <input type="checkbox" :checked="allcb" @click="selectAll">全选
                    </li>
                    <li>
                        <span>商品</span>
                    </li>
                    <li>
                        <span>金额</span>
                    </li>
                    <li class="pr-2">
                        <span>操作</span>
                    </li>
                </ul>
            </div>
            <div class="list-item row" v-for="(item,i) of list">
                <div class="col-4 d-flex justify-content-around pl-0">
                    <input type="checkbox" @click="modifyItem" :checked="item.cb" :data-id="item.id" :data-i="i">
                    <img src="images/live_lesson/201806221432011620.png"/>
                </div>
                <div class="col-3">
                    <span>{{item.cname}}</span>
                </div>
                <div class="col-3 pl-5">
                    <p class="h3 text-info">￥{{item.price.toFixed(2)}}</p>
                </div>
                <div class="col-2 text-center pr-0">
                    <a href="#" class="btn bg-info text-white" @click="removeItem" :data-id="item.id" :data-idx="i">删除</a>
                </div>
            </div>
            <div class="cart-list pt-2 pb-2 border-0 mt-4">
                <ul class="list-unstyled d-flex justify-content-between">
                    <li class="pl-2">
                        <input type="checkbox" :checked="allcb" @click="selectAll">全选
                        <a href="#" class="pl-3 pr-3 text-dark" @click="delItem">删除选中商品</a>
                        <a href="#" class="pr-3 btn text-white bg-dark">清空失效商品</a>
                    </li>
                    <li class="pr-2">
                        <span class="pr-3 text-info">合计：{{total}}元</span>
                        <a href="#" class="btn bg-info text-white pl-5 pr-5" @click="jump">去结算</a>
                    </li>
                </ul>
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
            return{
                cid:this.$route.query.id,
                list:[],
                ids:"",
                allcb:false,
                n:0,
                total:0
                
            }
        },
        created() {
            this.loadMore();
        },
        methods: {
            jump(){
                this.$router.push("/ht_404")
            },
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
                            location.href="#/live_lesson"
                        })
                }},100)
                
                var url="http://127.0.0.1:3000/getShopCart";
                this.axios.get(url).then(result=>{
                    var rows=result.data.data;
                    for(var item of rows){
                        item.cb=false;
                    }
                    this.list=rows;
                })
            },
            removeItem(e){
                var id=e.target.dataset.id;
                var postData=this.qs.stringify({
                    id:id
                });
                var url="http://127.0.0.1:3000/removeItem";
                this.axios.post(url,postData).then(result=>{
                    if(result.data.code==1){
                        var i=e.target.dataset.idx;
                        this.list.splice(i,1);
                        alert("删除成功")
                        this.$store.commit("sub");
                    }else{
                        alert("删除失败")
                    }
                })
            },
            selectAll(e){
                var rs=e.target.checked;
                for(var item of this.list){
                    item.cb=rs;
                    if(rs){
                        this.n++;
                        this.total+=item.price;
                    }else{
                        this.n=0;
                        this.total=0;
                    }
                    
                }
                this.allcb=rs;
            },
            modifyItem(e){
                this.n=0;
                this.total=0;
                var rs=e.target.checked;
                var i=e.target.dataset.i;
                this.list[i].cb=rs;
                var length=this.list.length;
                for(var item of this.list){
                    if(item.cb){
                        this.n++;
                        this.total+=item.price;
                    }
                }
                if(length==this.n){
                    this.allcb=true;
                }else{
                    this.allcb=false;
                }
            },
            delItem(){
                var html="";
                for(var item of this.list){
                    if(item.cb){
                        html+=item.id+",";
                    }
                }
                if(html.length==0){
                    alert("请选中您需要删除的商品");
                    return;
                }
                html=html.slice(0,-1);
                this.ids=html;
                var url="http://127.0.0.1:3000/removeMItem?ids="+this.ids;
                this.axios.get(url).then(result=>{
                    if(result.data.code==1){
                        alert("删除成功");
                        this.loadMore();
                    }else{
                        alert("删除失败")
                    }
                })
            }   
        }
    }
</script>
<style scoped>
/*头部样式*/
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
/*主体样式*/
main>div:first-child>div:last-child span{
    padding-top:13px;
}
.cart-list{
    background:#E9E9E9;
    border-top:1px solid #999999;
    box-shadow: #999999 0 6px 10px;
}
.list-item{
    margin-top:30px;
}
.list-item>div img{
    width:140px;
    height:120px;
    border-radius: 10px;
}
main>div:last-child>ul>li{
    line-height: 2;
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