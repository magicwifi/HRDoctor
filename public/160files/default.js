$(function() {
   $("#group_li li").click(function() {
        $("#group_li li").removeClass("cur");
        $(this).addClass("cur");
        cno = $(this).attr('item');
        forumList(cno);
  
    });
    $('#ec_cs_pannel').hide();
})

function forumList(cno) {
    url = JYUrl('ajax', 'getForumByCategory'),
    $.post(url, {
        cid: cno,
        num: 14
    },
    function(result) {
        html = '';
        $.each(result,
        function(i, doc) {
            var url = JYUrl("forum", "detail", {
                id: doc.forum_id
            });
            html += '<li><i class="dot">◆</i>';
            html += '<p class="word_hid"><a href="' + url + '" class="fs14" title="' + doc.title + '">' + doc.title + '</a></p>';
            html += '<span class="fr gray_2 word_hid " title="' + doc.user_name + '">';
            if (doc.sex) {
                html += '<i class="g_icon female"></i>';
            } else {
                html += '<i class="g_icon male"></i>';
            }
            html += doc.user_name + '</span></li>';
        });
        $("#forum_list").html(html);
    },
    'json');
}
