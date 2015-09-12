/**自应高度**/
function iframeresize() {
    resizeU();
    $(window).resize(resizeU);
    function resizeU() {
        var divkuangH = $(window).height();
        $("#MainContent").height(divkuangH - 122 - 1);
    }
}



//调节左侧菜单
function resizeLayout() {
    resizeU();
    $(window).resize(resizeU);
    function resizeU() {
        var accordion_head = $('.accordion > li > a');
        var accordion_body = $('.accordion li > .sub-menu');

        //$(".sub-menu").css('height', $(".navigation").height() - 19 - accordion_head.length * accordion_head.height() - accordion_head.length + 'px');
        accordion_head.on('click', function (event) {
            event.preventDefault();
            if ($(this).attr('class') != 'active') {
                accordion_body.slideUp('fast');
                $(this).next().stop(true, true).slideToggle('fast');
                accordion_head.removeClass('active');
                $(this).addClass('active');
            }
        });
    }
}

/**安全退出**/
function IndexOut() {
    top.showConfirmMsg('您是否确认退出系统？', function (r) {
        if (r) {
            window.location.href = 'Login.aspx';
        }
    });
}

/*
中间加载对话窗
*/
function Loading(bool) {
    if (bool) {
        top.$("#loading").show();
    } else {
        setInterval(loadinghide, 900);
    }
}
function loadinghide() {
    if (top.document.getElementById("loading") != null) {
        top.$("#loading").hide();
    }
}




/**安全退出**/
function gomap() {
    window.location.href = 'Index.aspx';
}



/**当前日期**/
function writeDateInfo() {
    var now = new Date();
    var year = now.getFullYear(); //getFullYear getYear
    var month = now.getMonth();
    var date = now.getDate();
    var day = now.getDay();
    var hour = now.getHours();
    var minu = now.getMinutes();
    var sec = now.getSeconds();
    var week;
    month = month + 1;
    if (month < 10) month = "0" + month;
    if (date < 10) date = "0" + date;
    if (hour < 10) hour = "0" + hour;
    if (minu < 10) minu = "0" + minu;
    if (sec < 10) sec = "0" + sec;
    var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
    week = arr_week[day];
    var time = "";
    time = year + "年" + month + "月" + date + "日" + " " + hour + ":" + minu + ":" + sec;

    $("#datetime").text(time);
    var timer = setTimeout("writeDateInfo()", 1000);
}
var Contentheight = "";
var Contentwidth = "";
var FixedTableHeight = "";


/*
屏蔽快捷键F1-F12
*/
function Shieldkeydown() {
    $("*").keydown(function (e) {
        e = window.event || e || e.which;
        if (e.keyCode == 112 || e.keyCode == 113
            || e.keyCode == 114 || e.keyCode == 115
            || e.keyCode == 116 || e.keyCode == 117
            || e.keyCode == 118 || e.keyCode == 119
            || e.keyCode == 120 || e.keyCode == 121
            || e.keyCode == 122 || e.keyCode == 123) {
            e.keyCode = 0;
            return false;
        }
    })
}


function publicobjcss() {
    $(".sub-menu div").click(function () {
        $('.sub-menu div').removeClass("selected")
        $(this).addClass("selected");
    }).hover(function () {
        $(this).addClass("navHover");
    }, function () {
        $(this).removeClass("navHover");
    });
}



//添加非全屏TAB
function AddTabMenu(tabid, url, name, img, canClose) {
    var tabs_container = top.$("#tabs_container");
    var ContentPannel = top.$("#ContentPannel");
    if (canClose == 'true') {
        top.RemoveDiv(tabid);
    }
    top.$(".navigation").show();
    //如果当前TAB已经存在则打开此TAB如果当前TAB不存在则新建TAB
    if (top.document.getElementById("tabs_" + tabid) == null) {
        tabs_container.find('li').removeClass('selected');
        ContentPannel.find('iframe').hide();
        //分别添加可以关闭的TAB和不可以关闭的TAB
        if (canClose != 'false') {
            tabs_container.append("<li id=\"tabs_" + tabid + "\" class='selected' win_close='true'><span title='" + name + "' onclick=\"javascript:AddTabMenu('" + tabid + "','" + url + "','" + name + "','" + img + "','false')\"><a href=\"javascript:;\"><img src=\"" + img + "\" width=\"20\" height=\"20\">" + name + "</a></span><a class=\"win_close\" title=\"关闭当前窗口\" onclick=\"RemoveDiv('" + tabid + "')\"></a></li>");
        } else {
            tabs_container.append("<li id=\"tabs_" + tabid + "\" class=\"selected\" onclick=\"javascript:AddTabMenu('" + tabid + "','" + url + "','" + name + "','" + img + "','false')\"><a><img src=\"" + img + "\" width=\"20\" height=\"20\">" + name + "</a></li>");
        }
        ContentPannel.append("<iframe id=\"tabs_iframe_" + tabid + "\" name=\"tabs_iframe_" + tabid + "\" height=\"100%\" width=\"100%\" src=\"" + url + "\" frameBorder=\"0\"></iframe>");
    }
    else {
        tabs_container.find('li').removeClass('selected');
        ContentPannel.find('iframe').hide();
        tabs_container.find('#tabs_' + tabid).addClass('selected');
        top.document.getElementById("tabs_iframe_" + tabid).style.display = 'block';
    }
}


//添加全屏TAB
function AddFullScreenTabMenu(tabid, url, name, img, canClose) {
    var tabs_container = top.$("#tabs_container");
    var ContentPannel = top.$("#ContentPannel");
    if (canClose == 'true') {
        top.RemoveDiv(tabid);
    }
    top.$(".navigation").hide();
    //如果当前TAB已经存在则打开此TAB如果当前TAB不存在则新建TAB
    if (top.document.getElementById("tabs_" + tabid) == null) {
        tabs_container.find('li').removeClass('selected');
        ContentPannel.find('iframe').hide();
        //分别添加可以关闭的TAB和不可以关闭的TAB
        if (canClose != 'false') {
            tabs_container.append("<li id=\"tabs_" + tabid + "\" class='selected' win_close='true'><span title='" + name + "' onclick=\"javascript:AddFullScreenTabMenu('" + tabid + "','" + url + "','" + name + "','" + img + "','false','false')\"><a href=\"javascript:;\"><img src=\"" + img + "\" width=\"20\" height=\"20\">" + name + "</a></span><a class=\"win_close\" title=\"关闭当前窗口\" onclick=\"RemoveDiv('" + tabid + "')\"></a></li>");
        } else {
            tabs_container.append("<li id=\"tabs_" + tabid + "\" class=\"selected\" onclick=\"javascript:AddFullScreenTabMenu('" + tabid + "','" + url + "','" + name + "','" + img + "','false','false')\"><a><img src=\"" + img + "\" width=\"20\" height=\"20\">" + name + "</a></li>");
        }
        ContentPannel.append("<iframe id=\"tabs_iframe_" + tabid + "\" name=\"tabs_iframe_" + tabid + "\" height=\"100%\" width=\"100%\" src=\"" + url + "\" frameBorder=\"0\"></iframe>");
    }
    else {
        tabs_container.find('li').removeClass('selected');
        ContentPannel.find('iframe').hide();
        tabs_container.find('#tabs_' + tabid).addClass('selected');
        top.document.getElementById("tabs_iframe_" + tabid).style.display = 'block';
    }
}



//关闭当前tab
function ThisCloseTab() {
    var tabs_container = top.$("#tabs_container");
    top.RemoveDiv(tabs_container.find('.selected').attr('id').substr(5));
}




//关闭事件
function RemoveDiv(obj) {
    var tabs_container = top.$("#tabs_container");
    var ContentPannel = top.$("#ContentPannel");
    tabs_container.find("#tabs_" + obj).remove();
    ContentPannel.find("#tabs_iframe_" + obj).remove();
    var tablist = tabs_container.find('li');
    var pannellist = ContentPannel.find('iframe');
    if (tablist.length > 0) {
        tablist[tablist.length - 1].className = 'selected';
        pannellist[tablist.length - 1].style.display = 'block';
    }
    top.$(".navigation").show();
}
