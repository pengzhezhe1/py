import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Login from "./components/tabbar/Login.vue"
import live_lesson from "./components/tabbar/live_lesson.vue"
import le_details from "./components/tabbar/le_details.vue"
import test from "./components/test/test.vue"
import ShopCart from "./components/tabbar/ShopCart.vue"
import ht_404 from "./components/tabbar/ht_404.vue"
import Home from "./components/tabbar/Home.vue"
import school from "./components/tabbar/school.vue"
import footer from "./assets/footer.vue"
import header from "./assets/header.vue"
import Dynamic from "./components/tabbar/Dynamic.vue"
import Teaching from "./components/tabbar/Teaching.vue"
import about from "./components/tabbar/about.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',redirect:'/Home'},
    {path:'/Login',component:Login},
    {path:'/live_lesson',component:live_lesson},
    {path:'/le_details',component:le_details},
    {path:'/test',component:test},
    {path:'/ShopCart',component:ShopCart},
    {path:'/ht_404',component:ht_404},
    {path:'/Home',component:Home},
    {path:'/Dynamic',component:Dynamic},
    {path:'/header',component:header,children:[
      {path:'/header/school',component:footer,children:[
        {path:'/',component:school}
      ]},
      {path:'/header/Dynamic',component:footer,children:[
        {path:'/',component:Dynamic}
      ]},
      {path:'/header/Teaching',component:footer,children:[
        {path:'/',component:Teaching}
      ]},
      {path:'/header/about',component:footer,children:[
        {path:'/',component:about}
      ]}
    ]}
  ]
})
