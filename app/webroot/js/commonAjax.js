var a = $("#paginate").children('ul');
var b = a.children('li');
b.children('a').attr('onclick','asd(event)');
function asd(event){
    event.preventDefault();
}
function ajaxInfo(){

    a.children('li').each(function(index){
        if( ($(this).children('a').html() == 'Last') || ( ($(this).children('a').html() == 'First'))){
            var i = $(this).children('a').attr('href');
            i = i.replace( /[^\d.]/g, '' );
            i = i.substring(1);
            if (!i){i = null;}
            $(this).attr('onclick',"loadInfo("+i+")");
            return;
        }

        var i =  $(this).children('a').html();

        $(this).children('a').attr('onclick',"asd(event)");
        $(this).attr('onclick',"loadInfo("+i+")");

    });

}
ajaxInfo();

function loadInfo(id){
    var ajaxUrl = "/mybuy4u/users/shop_detail/";
    if ( id ) {
        var ajaxUrl = "/mybuy4u/users/shop_detail/page:" + id;
    }
    $.ajax({url: ajaxUrl, success: function(result){
        $("#edit_profile").html(result);
        ajaxInfo();

    }});
}