<template>
<div>
    <router-view></router-view>
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
</template>
<style scoped>
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
</style>