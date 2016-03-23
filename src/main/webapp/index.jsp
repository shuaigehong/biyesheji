<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
    <link rel="stylesheet" type="text/css" href="css/top/default.css">
    <link rel="stylesheet" type="text/css" href="css/top/search-form.css">
</head>

<body style="border: 0;margin: 0;padding: 0">
<div class="navdiv" style="height: 100%;width: 100px;float: left;position: fixed;z-index: 4">
<iframe style="height: 100%;width:100%;" src="nav.jsp" frameborder="0"></iframe>
</div>
<div class="topdiv" style="    height: 50px;
    width: 100%;
    background: #8E27C1;
    position: fixed;
    z-index: 3;">

    <form onsubmit="submitFn(this, event);">
        <div class="search-wrapper">
            <div class="input-holder">
                <input type="text" class="search-input" placeholder="Type to search" />
                <button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
            </div>
            <span class="close" onclick="searchToggle(this, event);"></span>
            <div class="result-container">

            </div>
        </div>
    </form>





</div>
<div class="maindiv" style="    height: 1900px;
    width: auto;
    top: 50px;
    margin-left: 100px;
    margin-right: 100px;
    position: relative;">
    <iframe style="width: 100%;height: 100%;background: beige" frameborder="0" scrolling="no" name="main" src="welcome.jsp">
    </iframe>
</div>

<script src="js/top/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function searchToggle(obj, evt){
        var container = $(obj).closest('.search-wrapper');

        if(!container.hasClass('active')){
            container.addClass('active');
            evt.preventDefault();
        }
        else if(container.hasClass('active') && $(obj).closest('.input-holder').length == 0){
            container.removeClass('active');
            // clear input
            container.find('.search-input').val('');
            // clear and hide result container when we press close
            container.find('.result-container').fadeOut(100, function(){$(this).empty();});
        }
    }

    function submitFn(obj, evt){
        value = $(obj).find('.search-input').val().trim();

        _html = "Yup yup! Your search text sounds like this: ";
        if(!value.length){
            _html = "Yup yup! Add some text friend :D";
        }
        else{
            _html += "<b>" + value + "</b>";
        }

        $(obj).find('.result-container').html('<span>' + _html + '</span>');
        $(obj).find('.result-container').fadeIn(100);

        evt.preventDefault();
    }
</script>



</body>
</html>
