$("#content").on('click','ul>li:last-child',function(){
    $("#login").removeClass("d-none")
});
$("#login a").click(function(){
    $("#login").addClass("d-none")
})