<template>
    <div>
        <div class='bg'>
            <div class='container'>
                <div class='row'>
                    <div class='col-4 offset-1 d-flex align-items-center'>
                    <h1 class="text-info">睿智公司动态</h1>
                    </div>
                    <div class='col-4 offset-3'>
                    <img src="../../img/rzgsdt_03.gif">
                    </div>
                </div>
            </div>
        </div> 
        <div class='bg-info'>
            <div class='container p-3 '>
                <Breadcrumb>
                    <Breadcrumb-item href="/" class="h5">首页</Breadcrumb-item>
                    <Breadcrumb-item class="h5">公司动态</Breadcrumb-item>
                </Breadcrumb>
            </div>
        </div>
        <div class="content pt-5">
            <div class="row pb-5">
                <div class="col-6 text-center">
                    <img :src="list[0].pic" class="w-50"/>
                </div>
                <div class="col-6">
                    <h3>{{list[0].title}}}</h3>
                    <h4>发表时间：{{list[0].dtime | datetimeFilter}}</h4>
                    <h4>{{list[0].content}}</h4>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-right">
                    <h3>{{list[1].title}}}</h3>
                    <h4>发表时间：{{list[1].dtime | datetimeFilter}}</h4>
                    <h4>{{list[1].content}}</h4>
                </div>
                <div class="col-6 text-center">
                    <img :src="list[1].pic" class="w-50"/>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-center">
                    <img :src="list[2].pic" class="w-50"/>
                </div>
                <div class="col-6">
                    <h3>{{list[2].title}}}</h3>
                    <h4>发表时间：{{list[2].dtime | datetimeFilter}}</h4>
                    <h4>{{list[2].content}}</h4>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-right">
                    <h3>{{list[3].title}}}</h3>
                    <h4>发表时间：{{list[3].dtime | datetimeFilter}}</h4>
                    <h4>{{list[3].content}}</h4>
                </div>
                <div class="col-6 text-center">
                    <img :src="list[3].pic" class="w-50"/>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-center">
                    <img :src="list[4].pic" class="w-50"/>
                </div>
                <div class="col-6">
                    <h3>{{list[4].title}}}</h3>
                    <h4>发表时间：{{list[4].dtime | datetimeFilter}}</h4>
                    <h4>{{list[4].content}}</h4>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-right">
                    <h3>{{list[5].title}}}</h3>
                    <h4>发表时间：{{list[5].dtime | datetimeFilter}}</h4>
                    <h4>{{list[5].content}}</h4>
                </div>
                <div class="col-6 text-center">
                    <img :src="list[5].pic" class="w-50"/>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-center">
                    <img :src="list[6].pic" class="w-50"/>
                </div>
                <div class="col-6">
                    <h3>{{list[6].title}}}</h3>
                    <h4>发表时间：{{list[6].dtime | datetimeFilter}}</h4>
                    <h4>{{list[6].content}}</h4>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-right">
                    <h3>{{list[7].title}}}</h3>
                    <h4>发表时间：{{list[7].dtime | datetimeFilter}}</h4>
                    <h4>{{list[7].content}}</h4>
                </div>
                <div class="col-6 text-center">
                    <img :src="list[7].pic" class="w-50"/>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-center">
                    <img :src="list[8].pic" class="w-50"/>
                </div>
                <div class="col-6">
                    <h3>{{list[8].title}}}</h3>
                    <h4>发表时间：{{list[8].dtime | datetimeFilter}}</h4>
                    <h4>{{list[8].content}}</h4>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-6 text-right">
                    <h3>{{list[9].title}}}</h3>
                    <h4>发表时间：{{list[9].dtime | datetimeFilter}}</h4>
                    <h4>{{list[9].content}}</h4>
                </div>
                <div class="col-6 text-center">
                    <img :src="list[9].pic" class="w-50"/>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                list:[]
            }
        },
        created() {
            this.onload();
        },
        methods: {
            onload(){
                var url="http://127.0.0.1:3000/getDynamic";
                this.axios.get(url).then(result=>{
                    this.list=result.data;
                    console.log(this.list[0].pic)
                })
            }
        }
    }
</script>
<style scoped>
.content>.row img:hover{
    transform:scale(1.2);
}
.content>.row img{
    transition:all 3s;
}
.content>.row:nth-child(2n){
    background:white;
}
.content .row h3{
    color:rgba(27, 141, 235, 0.932);
}
.content .row h4{
    color:rgb(99, 97, 97);
    padding:15px 0;
}
.content .row div>h4:last-child{
    line-height: 1.5;
}
.content .row img{
    border-radius: 10px;
}
</style>