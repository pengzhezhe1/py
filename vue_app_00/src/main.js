import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'
import iView from 'iview'
import 'iview/dist/styles/iview.css'
Vue.use(iView)
Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
import axios from "axios"
import qs from "qs"
//引入Vuex组件
import Vuex from "vuex"
//注册Vuex组件
Vue.use(Vuex);
Vue.prototype.qs=qs;
axios.defaults.withCredentials=true
Vue.prototype.axios=axios
//创建日期格式过滤器
//val原始日期格式
Vue.filter("datetimeFilter",function(val){
  //依据原始日期格式创建日期对象
  var now =new Date(val);
  //获取日期对象 年月日
  var y=now.getFullYear();
  var m=now.getMonth()+1;
  var d=now.getDate();
  //月份与日期 如果当前月份小于10 前拼接0
  m<10&&(m="0"+m);
  d<10&&(d="0"+d);
  //拼接字符串返回
  return `${y}-${m}-${d}`;
});
//创建store对象
var store=new Vuex.Store({
  //共享数据方法
  state:{cartCount:sessionStorage.getItem("cartCount")||0},
  //操作共享数据方法
  mutations:{
    increment(state){
      state.cartCount++;
      sessionStorage.setItem("cartCount",state.cartCount)
    },
    sub(state){
      state.cartCount--;
    }
  },
  //获取共享数据方法
  getters:{
    optCartCount:function(state){
      return state.cartCount;
    }
  }
})
new Vue({
  router,
  render: h => h(App),
  store  //将store绑定Vue实例
}).$mount('#app')
