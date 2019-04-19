<template>
  <div>
    <div>
      <img src="../../img/gywm_03.jpg" class="w-100"/>
    </div>
    <div class='bg-info'>
      <div class='container p-3 '>
        <Breadcrumb>
          <Breadcrumb-item href="/" class="h5">首页</Breadcrumb-item>
          <Breadcrumb-item class="h5">关于我们</Breadcrumb-item>
        </Breadcrumb>
      </div>
    </div>
    <!-- <div class="d-flex justify-content-around bg-white p-5">
        <img src="../../img/gywm_001.jpg" />
        <img src="../../img/gywm_002.jpg" />
        <img src="../../img/gywm_003.jpg" />
        <img src="../../img/gywm_004.jpg" />
    </div> -->
    <div class='cont'>
      <div class='container position-relative' id='cont'>
        <img src="../../img/gywm_001.jpg" class='position-absolute'/>
        <img src="../../img/gywm_002.jpg" class='position-absolute'/>
        <img src="../../img/gywm_003.jpg" class='position-absolute'/>
        <img src="../../img/gywm_004.jpg" class='position-absolute'/>
      </div>
    </div>
    
    <div class='container pt-4 his'>
      <h1 class='mb-3'>公司发展史</h1>
      <div class='kk mt-5 mb-5'>
        <canvas id="c3" width="1110" height="550"></canvas>
        <div class=' ys1 pl-5 pt-4' >
          <ul>
            <li>2005年~2006年</li>
          </ul>
          <p class='pt-3 text-white'>公司成立，</p>
          <p class='pt-1 text-white'>开拓成人实体培训业务。</p>
        </div>
        <div class=' ys2 pl-5 pt-4'>
          <ul>
            <li>2011年~2012年</li>
          </ul>
          <p class='pt-3 text-white'>公司建设起五重保障体系，</p>
          <p class='pt-1 text-white'>为加强用户体验与服务保障。</p>
        </div>
        <div class=' ys3 pl-5 pt-4'>
          <ul>
            <li>2015年6月</li>
          </ul>
          <p class='pt-3 text-white'>公司通过新三版立项，</p>
          <p class='pt-1 text-white'>立足全新起点。</p>
        </div>
        <div class=' ys4 pl-5 pt-4'>
          <ul>
            <li>2007年~2008年</li>
          </ul>
          <p class='pt-3 text-white'>公司涉足于K12在线教育领域，</p>
          <p class='pt-1 text-white'>推出阳光学习网。</p>
        </div>
        <div class=' ys5 pl-5 pt-4'>
          <ul>
            <li>2013年~2014年</li>
          </ul>
          <p class='pt-3 text-white'>公司建成独有的课时质量体系，</p>
          <p class='pt-1 text-white'>并与百度、淘宝、京东、腾讯等平台展开合作。</p>
        </div>
        <div class=' ys6 pl-5 pt-4'>
          <ul>
            <li>2017年8月9号</li>
          </ul>
          <p class='pt-3 text-white'>睿智教育登录新三版</p>
          
        </div>
        <div class=' ys7 pl-5 pt-4'>
          <ul>
            <li>2009年~2010年</li>
          </ul>
          <p class='pt-3 text-white'>公司推出K12个性在线辅导系统。</p>
          
        </div>
        <div class=' ys8 pl-5 pt-4'>
          <ul>
            <li>2015年1月</li>
          </ul>
          <p class='pt-3 text-white'>公司确定战略产品，</p>
          <p class='pt-1 text-white'>智慧云教学平台设计与研发方案。</p>
        </div>
      </div>
      <div class="zz">
        <h1>公司资质</h1>
        <div class="d-flex justify-content-around">
          <img src="../../img/gywm_006.jpg"/>
          <img src="../../img/gywm_017.jpg"/>
        </div>
        <div class="d-flex justify-content-around">
            <img src="../../img/gywm_008.jpg"/>
            <img src="../../img/gywm_009.jpg"/>
        </div>
        <div class="text-center pt-4 pb-4">
          <img src="../../img/gywm_010.jpg" class="my_img"/>
        </div>
        <div class="con">
          <h1>联系我们</h1>
          <div class="pt-4 pb-4">
            <h4><span>地址：</span>浙江省杭州市萧山区文明路328号江宁大厦B座 C203 - C206</h4>
            <h4><span>邮编：</span>311200</h4>
            <h4><span>电话：</span>4008-267-897</h4>
            <h4><span>邮箱：</span>63019188@qq.com</h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      
    }
  },
  mounted() {
    this.can1()
    this.can()
    this.qiu()
  },
  methods: {
    qiu(){
      var cont=document.querySelectorAll('#cont>img')
      var x=-161; 
      var y=0;
      var z=1
      var t1=function(){
        if(y>91){
          z=-1
        }
        if(y<0){
          z=1
        }
        y+=z*3
        x+=5
        cont[0].style.top=(parseInt(cont[0].style.top)+z*3)+'px'
        cont[0].style.left=(parseInt(cont[0].style.left)+5)+'px'
        if(x>1020){
          clearInterval(t1)
          x=-161; 
          y=0;
          z=1
          t2=setInterval(t2,10)
        }
      }
      var t2=function(){
        if(y>91){
          z=-1
        }
        if(y<0){
          z=1
        }
        y+=z*3
        x+=5
        cont[1].style.top=(parseInt(cont[1].style.top)+z*3)+'px'
        cont[1].style.left=(parseInt(cont[1].style.left)+5)+'px'
        if(x>690){
          clearInterval(t2)
          x=-161; 
          y=0;
          z=1
          t3=setInterval(t3,10)
        }
      }
      var t3=function(){
        if(y>91){
          z=-1
        }
        if(y<0){
          z=1
        }
        y+=z*3
        x+=5
        
        cont[2].style.top=(parseInt(cont[2].style.top)+z*3)+'px'
        cont[2].style.left=(parseInt(cont[2].style.left)+5)+'px'
        if(x>380){
          clearInterval(t3)
          x=-161; 
          y=0;
          z=1
          t4=setInterval(t4,10)
        }
      }
      var t4=function(){
        if(y>91){
          z=-1
        }
        if(y<0){
          z=1
        }
        y+=z*3
        x+=5
        cont[3].style.top=(parseInt(cont[3].style.top)+z*3)+'px'
        cont[3].style.left=(parseInt(cont[3].style.left)+5)+'px'
        if(x>50){
          clearInterval(t4)
        }
      }
      cont[0].style.top='0px'
      cont[1].style.top='0px'
      cont[2].style.top='0px'
      cont[3].style.top='0px'
      cont[0].style.left='-180px'
      cont[1].style.left='-180px'
      cont[2].style.left='-180px'
      cont[3].style.left='-180px'
      var t1=setInterval(t1,10)
    },
    can1(){
      var c3=document.getElementById('c3')
      var ctx=c3.getContext("2d");
      ctx.lineWidth=2
      ctx.strokeStyle='#000000'
      ctx.beginPath();
      ctx.moveTo(175,75)
      ctx.lineTo(1000,75)
      ctx.stroke();
      ctx.beginPath();
      ctx.arc(1000,125,50,-Math.PI/2,Math.PI/2);
      ctx.stroke();
      ctx.beginPath();
      ctx.moveTo(1000,175)
      ctx.lineTo(175,175)
      ctx.stroke();
      ctx.beginPath();
      ctx.arc(175,225,50,Math.PI/2,Math.PI/2*3);
      ctx.stroke();
      ctx.beginPath();
      ctx.moveTo(175,275)
      ctx.lineTo(1000,275)
      ctx.stroke();
      ctx.beginPath();
      ctx.arc(1000,325,50,-Math.PI/2,Math.PI/2);
      ctx.stroke();
      ctx.beginPath();
      ctx.moveTo(1000,375)
      ctx.lineTo(175,375)
      ctx.stroke();
      ctx.beginPath();
      ctx.arc(175,425,50,Math.PI/2,Math.PI/2*3);
      ctx.stroke();
      ctx.beginPath();
      ctx.moveTo(175,475)
      ctx.lineTo(500,475)
      ctx.stroke();
    },
    can () {
      var c3=document.getElementById('c3')
      var ctx=c3.getContext("2d");
      ctx.strokeStyle='#FF0000'
      var x1=0
      var t=function(){
        if(x1<=1000){
          ctx.beginPath();
          ctx.moveTo(x1,75)
          x1+=10
          ctx.lineTo(x1,75)
          ctx.stroke();
        }else{
          clearInterval(t)
          t1=setInterval(t1,10)
        }

      }
      var p1=-Math.PI/2
      var t1=function(){
        if(p1<=Math.PI/2){
        ctx.beginPath();
        p1+=Math.PI/90
        ctx.arc(1000,125,50,-Math.PI/2,p1);
        ctx.stroke();
        }else{
          clearInterval(t1)
          t3=setInterval(t3,10)
        }
      }
      var x2=1000
      var t3=function(){
        if(x2>=175){
          ctx.beginPath();
          ctx.moveTo(x2,175)
          x2-=10
          ctx.lineTo(x2,175)
          ctx.stroke();
        }else{
          clearInterval(t3)
          t4=setInterval(t4,10)
        }
      }
      var p4=Math.PI/2
      var t4=function(){
        if(p4<=Math.PI/2*3){
          ctx.beginPath();
          p4+=Math.PI/90
          ctx.arc(175,225,50,Math.PI/2,p4);
          ctx.stroke();
        }else{
          clearInterval(t4)
          t5=setInterval(t5,10)
        }
        
      }
      var x5=175
      var t5=function(){
        if(x5<=1000){
          ctx.beginPath();
          ctx.moveTo(x5,275)
          x5+=10
          ctx.lineTo(x5,275)
          ctx.stroke();
        }else{
          clearInterval(t5)
          t6=setInterval(t6,10)
        }
        
      }
      var p6=-Math.PI/2
      var t6=function(){
        if(p6<=Math.PI/2){
          ctx.beginPath();
          p6+=Math.PI/90
          ctx.arc(1000,325,50,-Math.PI/2,p6);
          ctx.stroke();
        }else{
          clearInterval(t6)
          t7=setInterval(t7,10)
        }
      }
      var x7=1000
      var t7=function(){
        if(x7>=175){
          ctx.beginPath();
          ctx.moveTo(x7,375)
          x7-=10
          ctx.lineTo(x7,375)
          ctx.stroke();
        }else{
          clearInterval(t7)
          t8=setInterval(t8,10)
        }
      }
      var p8=Math.PI/2
      var t8=function(){
        if(p8<=Math.PI/2*3){
          ctx.beginPath();
          p8+=Math.PI/90
          ctx.arc(175,425,50,Math.PI/2,p8);
          ctx.stroke();
        }else{
          clearInterval(t8)
          t9=setInterval(t9,10)
        }
      }
      var x9=175
      var t9=function(){
        if(x9<=500){
          ctx.beginPath();
          ctx.moveTo(x9,475)
          x9+=10
          ctx.lineTo(x9,475)
          ctx.stroke();
        }else{
          clearInterval(t9)
        }
      }
      var t=setInterval(t,10)
    }
  }
}
</script>
<style scoped>
  @media (min-width: 1200px){
    .container{
      max-width:1200px;
    }
  }
  .cont{
    height:250px;
    background: #fff;
  }
  #cont{
    height:250px;overflow: hidden;
  }
  .con>div>h4{
    padding:10px;
  }
  .con>div>h4>span{
    color:#276ace;
    font-weight: bold;
  }
  .my_img{
    width:950px;
  }
  .zz h1,.con h1,.his h1{
    color:#35A7FF;
    border-bottom: 3px solid #999;
    padding-bottom: 20px;
}
  .wz{
    width: 168px;height: 78px;background: #276ace;border-radius: 10px;
    color:#fff;
    line-height: 78px;
  }
  .ys1,.ys2,.ys3,.ys4,.ys5,.ys6,.ys7,.ys8{
    width:300px;
    height:150px;
    border-radius: 25px;
    background: linear-gradient(right,#276ace 0%,#7e9bec 30%,#7e9bec 85%,#276ace 100%);
    position: absolute;
    
  }
  .ys1{
    top:0px;left:0%
  }
  .ys2{
    top:200px;left:0%
  }
  .ys3{
    top:400px;left:0%
  }
  .ys4{
    top:0px;left:37%
  }
  .ys5{
    top:200px;left:37%
  }
  .ys6{
    top:400px;left:37%
  }
  .ys7{
    top:0px;left:73%
  }
  .ys8{
    top:200px;left:73%
  }
  .kk{
    position: relative;
    height: 550px;
  }
</style>