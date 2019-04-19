<template>
  <div>
    <div class='bg'>
      <div class='container'>
          <div class='row'>
            <div class='col-4 offset-1 d-flex align-items-center'>
              <h1 class="text-dark">智慧教室案例</h1>
            </div>
            <div class='col-4 offset-3'>
              <img src="../../img/cgal_zhxy_03.gif">
            </div>
          </div>
        </div>
    </div>
    <div class='bg-info'>
      <div class='container p-3 '>
        <Breadcrumb>
          <Breadcrumb-item href="/" class="h5">首页</Breadcrumb-item>
          <Breadcrumb-item class="h5">智慧教室</Breadcrumb-item>
        </Breadcrumb>
      </div>
    </div>
    <div class='container'>
      <div class='text-center mt-5'>
         <h1 class="text-dark">智慧教室</h1>
      </div>
      <p class='mt-4 mb-5 px text-dark h5 intr'>
        智慧教室是引进当今先进教学理念和互联网技术，为实现选班、走班提供基础，让学校优质的教学资源得以充分利用。智慧云教学平台采用平板电脑、交互式白板、PC、智能手机作为应用终端，以智慧云存储为依托，配套云书包等应用，实现师生互动、高效授课 即时测评、在线作业批阅、自动错题本、教学质量分析等功能；为老师和学生以及家长提供全过程的信息化、个性化、精准化教学。提 高教学质量与效率，促进教学发展。
      </p>
      <div class='row text-center mb-4' id='sc'> 
        <div class='col-1 border-bottom br pt-3' @click='sc'>
          <a href="javascript:;">
            <p>小学</p>
          </a>
        </div>
        <div class='col-1 border-bottom pt-3' @click='sc'>
            <a href="javascript:;">
              <p>初中</p>
            </a>
        </div>
        <div class='col-1 border-bottom pt-3' @click='sc'>
          <a href="javascript:;">
            <p>高中</p>
          </a>
        </div>
        <div class='col-1 border-bottom pt-3' @click='sc'>
          <a href="javascript:;"> 
            <p>其他</p>
          </a>
        </div>
        <div class='col-8 border-bottom'></div>
      </div>
      <div class='row'>
        <div class='col-4 mb-4' v-for='elem of school'>
            <div class='y position-relative m-auto'>
              <div class='position-absolute'>
                <img :src="elem.image" class='w-100'>
              </div>
              <div class='position-absolute text-center d-none'>
                <p class='text-white'>{{elem.mc}}</p>
              </div>
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
      school:[],
      nj:'小学'
    }
  },
  created() {
    this.load()
  },
  methods: {
    load(){
      var url='http://127.0.0.1:3000/school?nj='+this.nj
      this.axios.get(url).then(result=>{
        this.school=result.data
      })
    },
    sc(e){
      this.nj=e.target.innerHTML
      var fa=e.target.parentElement.parentElement
      this.load()
      var s=document.getElementById('sc').children
      for (var i=0 ;i<s.length-1;i++){
        s[i].className='col-1 border-bottom pt-3'
      }
      fa.className+=' br'
    }
  }, 
}
</script>
<style scoped>
  .intr{
    line-height: 2;
  }
  .border-bottom{
    border-bottom:2px solid #afb3b3 !important;
  }
  .br{
    border:2px solid #afb3b3 !important;
    border-bottom:0 solid #606161 !important;
  }
  .px{
    text-indent: 2em;
  }
  .bg{
    background: #EFEEEE;
  }
  .y{
    width:270px;height:125px;
    border-radius: 10px;
    overflow: hidden;
  }
  .y div:first-child{
    top:0px;left:0px;
    transition:all 1s;
  }
  .y:hover>div:first-child{
    transform:scale(1.2)
  }
  .y:hover>div:last-child{
    display: table-cell !important;
    width:270px;height:125px;
    top:0;left:0;
    background: rgba(0,0,0,0.3);
    line-height: 125px;
    transition:all 3s;
  }
  .ivu-breadcrumb{
    color:#000
  }
</style>