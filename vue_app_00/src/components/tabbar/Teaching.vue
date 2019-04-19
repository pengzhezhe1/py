<template>
    <div>
        <div class='bg'>
            <div class='container'>
                <div class='row'>
                    <div class='col-4 offset-1 d-flex align-items-center'>
                    <h1 class="text-dark">智慧教室案例</h1>
                    </div>
                    <div class='col-4 offset-3'>
                    <img src="../../img/dljm_03.gif">
                    </div>
                </div>
            </div>
        </div>
        <div class='bg-info'>
            <div class='container p-3 '>
                <Breadcrumb>
                <Breadcrumb-item href="/" class="h5">首页</Breadcrumb-item>
                <Breadcrumb-item class="h5">睿智云教学</Breadcrumb-item>
                </Breadcrumb>
            </div>
        </div>
        <div class="intr container">
            <div class='text-center mt-5'>
                <h1 class="text-dark">睿智云教学产品介绍</h1>
            </div>
            <p class='mt-4 mb-5 px text-dark h5 intr'>
            是我公司自主开发的一个量身为中小学打造的集教学辅助、管理、监督于一体的平台，以此帮助学校构建起自己的智慧云教室。平台作为学校教学活动的辅助，聚焦于解决老师、学生从课前、课中到课后的全过程的应用
            </p>
        </div>
        <div class="text-center banner">
            <img src="../../img/zhjs002.jpg"/>
        </div>
        <div class="container pt-4">
            <Timeline>
                    <Timeline-item color="red">
                        <h4 class="text-dark pb-2 ft">云备课系统</h4>
                        <h4 class="text-dark">老师可在任意电脑上登录自己账户进行备课，素材可使用云端或本地，文件编辑完成后再上传云端。</h4>
                    </Timeline-item>
                    <Timeline-item color="green">
                        <h4 class="text-dark pb-2 ft">云课堂系统</h4>
                        <h4 class="text-dark">支持选班和走班，老师和学生能够查看到自己的每周课程安排。同时老师和学生可根据课程时间随时随地进入云课堂，通过多媒体展示、实时语音视频、文字及电子白班进行一对一、一对多上课。</h4>
                    </Timeline-item>
                    <Timeline-item color="red">
                        <h4 class="text-dark pb-2 ft">课堂互动系统</h4>
                        <h4 class="text-dark">课堂内老师可将课件屏幕共享给学生；也可讲事先编辑好的测试题下发学生进行课堂联系，并在学生提交答案后获得答题统计。</h4>
                    </Timeline-item>
                    <Timeline-item color="blue">
                        <h4 class="text-dark pb-2 ft">错题本</h4>
                        <h4 class="text-dark">课堂互动中学生错误的客观题自动进入学生错题本，正确率低于老师预设限值的客观题自动进入老师错题本；任意题目均可一键加入错题本。</h4>
                    </Timeline-item>
                    <Timeline-item color="orange">
                        <h4 class="text-dark pb-2 ft">作业批阅系统</h4>
                        <h4 class="text-dark">学生完成作业后，可随时发送给任课老师；其中预设答题格式的客观题可自动批改，老师也可随时批改其他题目。</h4>
                    </Timeline-item>
                    <Timeline-item color="green">
                        <h4 class="text-dark pb-2 ft">翻转课堂系统</h4>
                        <h4 class="text-dark">上课过程可进行实时录制并存放在云服务器中，供学生课后进行复习。</h4>
                    </Timeline-item>
                    <Timeline-item color="black">
                        <h4 class="text-dark pb-2 ft">云书包</h4>
                        <h4 class="text-dark">云教学终端中预先装载字典，文言文，理科公式大全等辅助学习的工具，方便学生的学习。</h4>
                    </Timeline-item>
                    <Timeline-item color="purple">
                        <h4 class="text-dark pb-2 ft">学情分析系统</h4>
                        <h4 class="text-dark">根据学生的阶段成绩及近期上课情况，自动生成分析报告供老师和家长了解学生当前学习情况。</h4>
                    </Timeline-item>
            </Timeline> 
            <div class="bgd mb-5">
                <h1>智慧云教学平台发展背景</h1>
                <div class="mt-4">
                    <div>
                        <h3 class="text-white pb-3">国家高度重视，强力政策推动</h3>
                        <p class="h5 text-white">《国家中长期教育改革和发展规划纲要(2010-2020年)》中提出教育信息化的建设要充分利用先进技术，整合现有资源，构建先进、高效、实用的数字化教育基础设施，推进数字化校园建设。</p>
                    </div>
                </div>
            </div>
            <div class="superior">
                <h1>产品优势</h1>
                <div class="mt-4">
                    <Collapse active-key="1" accordion>
                        <Panel key="1">
                            对于学校
                            <p slot="content" class="p1">
                            <span class="h5 text-dark">不忘初心，方得始终——互联网</span><br><span class="h6 text-dark">科技在教育行业的典型应用
                            老师管理、学生管理全数字化。排课系统使得老师学生课程选择更自由，最终实现个性化教育。把课堂由教室扩展到整个课余生活中，使学生能无时无刻都能享有丰富的教学资源。</span></p>
                        </Panel>
                        <Panel key="2">
                            对于老师
                            <p slot="content" class="p1"><span class="h5 text-dark">循循善诱，谆谆教诲——工具与特色教育的完美结合</span><br><span class="h6 text-dark">
                            老师可直接使用海量课件及题库资源备课，根据教学大纲建立个人课件库和题库。资源云存储，随时随地备课。充分课堂互动，精准掌握班级整体学习情况。课后仍能实时与学生进行互动，作业布置和收取。家校互联可使老师和家长联系畅通无阻。</span></p>
                        </Panel>
                        <Panel key="3">
                            对于学生
                            <p slot="content" class="p1"><span class="h5 text-dark">有教无类，乐学致远——兴趣与应试教育的平衡</span><br><span class="h6 text-dark">
                            学生可精确地跟随老师教学步骤，更有效地参与课堂教学。练习及作业均可以第一时间得到老师批改，使学习思维更具延续性。海量的学习资料满足学生学习需求，各种工具应用让书包不再沉重。实现学生学习过程和阶段情况完整的跟踪记录，并形成学生自己的学习评估报告，做到因材施教。</span></p>
                        </Panel>
                        <Panel key="4">
                            对于家长
                            <p slot="content" class="p1"><span class="h5 text-dark">父母擅教，子女良学——家庭教育与学校教育的无缝衔接</span><br><span class="h6 text-dark">
                            家长实时了解孩子在学校的表现，包括成绩单，老师点评等；甚至单节课的表现反馈也能随时传递给家长。线上家长会和家校交流系统完全可以让家长不论多忙，都能获得和老师及其他家长交流的机会，共同探讨孩子成长中遇到的问题。</span></p>
                        </Panel>
                    </Collapse>
                </div>
            </div>
            <div class="hold pt-5">
                <h1 class="mb-4">六大强势支持</h1>
                <div class="d-flex justify-content-around p-5">
                    <i-button type="primary" shape="circle" size="large">在家学习</i-button>
                    <i-button type="primary" shape="circle" size="large">自愿主动</i-button>
                    <i-button type="primary" shape="circle" size="large">师资力量</i-button>
                </div>
                <div class="d-flex justify-content-around p-5">
                    <i-button type="primary" shape="circle" size="large">效果跟进</i-button>
                    <i-button type="primary" shape="circle" size="large">全程录制</i-button>
                    <i-button type="primary" shape="circle" size="large">大众价格</i-button>
                </div>
            </div>
            <div class="pro">
                <h1>项目优势</h1>
                <div class="text-center">
                    <img src="../../img/dljmyjx_16.gif"/>
                </div>
                <div class="join text-center">
                    <h2 class="text-white pb-3">申请加入</h2>
                    <div class="text-white">
                        您的姓名：<input type="text" class="w-25"><br>
                        您的电话：<input type="number" class="w-25"><br>
                        您的地址：<input type="text" class="w-25"><br>
                        您的留言：<input type="text" class="w-25"><br>
                        <input type="button" value="提交申请" class="my_btn">
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.my_btn{
    color:rgb(68, 66, 66);
    padding:10px 20px;
    font-size: 20px;
    border-radius: 10px;
}
.pro>div{
    background:#3675D6;
    padding:35px 0;
    margin-top:20px;
}
.p1{
    line-height: 2;
    
}
.bgd h1,.superior h1,.hold h1,.pro h1{
    color:#35A7FF;
    border-bottom: 3px solid #999;
    padding-bottom: 20px;
}
.bgd>div{
    background:#3675D6;
    padding:40px;
}
.bgd h3{
    font-weight: bold;
}
.bgd>div p{
    line-height: 2;
}
.bg{
    background: #EFEEEE;
  }
.intr{
    line-height: 2;
  }
.banner{
    background:#35A7FF;
}
.ft{
    font-weight: bold;
}
</style>