<template>
<div class="container">
            <div>
                <a href="#" @click="show1">课程简介</a>
                <a href="#" @click="show1">留言评论</a>
            </div>
            <div id="d1">
                <table class="w-100 text-center">
                    <tr class="bg-info">
                        <th>课程名称</th>
                        <th>上课日期</th>
                        <th>上课时间</th>
                        <th>学习状态</th>
                    </tr>
                    <tr>
                        <td>英语课</td>
                        <td>7月27日</td>
                        <td>9：00-10：00</td>
                        <td>
                            <a href="#" class="btn p-2 text-white">查看回放</a>
                        </td>
                    </tr>
                </table> 
            </div> 
            <div style='display:none'>
             123
            </div>

</div>
</template>
<script>
export default {
   data(){
       return {

       }
   } ,
   
   methods: {
        show1(){
            $('#d1').toggle()
            $("#d1").next().toggle() 
        }
   }
}
</script>
<style scopd>
.on{
    border-bottom:4px solid #369ED1;
    color:#369ED1 !important;
}
</style>