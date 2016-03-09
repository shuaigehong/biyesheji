<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
</head>
<link rel="stylesheet" href="css/menu.css" />
<script src="js/menu.js"></script>
<body style="border: 0px;padding:0px;margin: 0px">
<div id="openNavBut" onclick="openNav()" style="width: 100px;
    height: 50px;
    cursor: pointer;
    display: block;
    background: rgb(39, 193, 144);">
    <img src="img/manuOpen.png" alt="" style="width: 42px;
    height: 23px;
    padding-left: 29px;
    padding-top: 15px;">
</div>
<div id="closeNavBut" onclick="closeNav()" style="display: none;
    width: 100px;
    height: 50px;
    cursor: pointer;
    background: rgb(39, 193, 144);">
    <img src="img/manuBack.png" alt="" style="width: 42px;
    height: 23px;
    padding-left: 29px;
    padding-top: 15px;">
</div>
    <div class="botBlue" id="botCallback" style="display: none"></div>
    <div id="botCloseAll"  style="display: none"></div>
<script type="text/javascript">

    function openNav(){
        document.getElementById("botCallback").click();
        document.getElementById("openNavBut").style.display="none";
        document.getElementById("closeNavBut").style.display="block";
    }
    function closeNav(){
        document.getElementById("botCloseAll").click();
        document.getElementById("openNavBut").style.display="block";
        document.getElementById("closeNavBut").style.display="none";
    }

    $("#botCloseAll").click(function() {
        CloseMetroMenu()
    });
    $("#botCallback").click(function() {
        $.MetroMenu({
                    backicon: "images/back.png",
                    animation: "fadeInUpBig",
                    position: "left",
                    color1: "rgb(249, 54, 54)",
                    color2: "rgb(193, 11, 11)",
                    withtooltip: true,
                    closeonclick: false,
                    escclose: false,
                    items: [{
                        name: "Calendar",
                        icon: "images/calendar.png"
                    },
                        {
                            name: "Office",
                            icon: "images/office.png",
                            items: [{
                                name: "Word",
                                icon: "images/word.png",
                            },
                                {
                                    name: "Excel",
                                    icon: "images/excel.png",
                                },
                                {
                                    name: "Power Point",
                                    icon: "images/powerpoint.png",
                                },
                                {
                                    name: "Outlook",
                                    icon: "images/outlook.png"
                                }]
                        },
                        {
                            name: "Mailing",
                            icon: "images/mail.png",
                            items: [{
                                name: "Sent Mail",
                                icon: "images/sent.png"
                            },
                                {
                                    name: "Read Mail",
                                    icon: "images/mailopen.png"
                                },
                                {
                                    name: "Go Gmail",
                                    icon: "images/gmail.png",
                                    link: "http://sc.chinaz.com"
                                }]
                        },
                        {
                            name: "Adobe Suit",
                            icon: "images/ps.png",
                            items: [{
                                name: "Photoshop",
                                icon: "images/photoshop.png"
                            },
                                {
                                    name: "Dreamweaver",
                                    icon: "images/dw.png"
                                },
                                {
                                    name: "Ilustrator",
                                    icon: "images/ai.png"
                                },
                                {
                                    name: "After Effects",
                                    icon: "images/ae.png"
                                }]
                        },
                        {
                            name: "Options",
                            icon: "images/gear.png",
                            items: [{
                                name: "Save",
                                icon: "images/save.png"
                            },
                                {
                                    name: "Manager",
                                    icon: "images/taskmgr.png"
                                },
                                {
                                    name: "Control Panel",
                                    icon: "images/control.png"
                                },
                                {
                                    name: "Folders",
                                    icon: "images/folder.png"
                                },
                                {
                                    name: "Log Out",
                                    icon: "images/shut-down.png"
                                }]
                        }]
                },
                function(a) {
                    window.open("https://www.baidu.com/","main");

                })
    });
</script>

</body>
</html>
