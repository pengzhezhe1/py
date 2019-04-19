<template>
 <div class="app-container">
    <router-view></router-view>
 </div>
</template>

<style>
   .app-container{
     padding-top:40px;
    /* padding-bottom:50px; */
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
.ivu-timeline-item-head{
    width: 20px !important;
    height: 20px !important;
    border: 2px solid transparent;
}
.ivu-collapse>.ivu-collapse-item>.ivu-collapse-header{
    height:50px !important;
    line-height:50px !important;
}
.ivu-btn-large {
    padding: 16px 45px 16px 45px !important;
    font-size: 18px !important;
}
</style>
