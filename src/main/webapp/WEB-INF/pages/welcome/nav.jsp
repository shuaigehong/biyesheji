<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
</head>
<link rel="stylesheet" href="../../../css/menu.css" />
<script src="../../../js/menu.js"></script>
<body style="border: 0px;padding:0px;margin: 0px" onload="document.getElementById('botCallback').click();">
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
                    backicon: "img/menuimages/back.png",
                    animation: "fadeInUpBig",
                    position: "left",
                    color1: "rgb(187, 162, 184)",
//            rgb(7, 245, 168)
                    color2: "rgb(254, 102, 153)",
                    withtooltip: true,
                    closeonclick: false,
                    escclose: false,
                    items: [{
                        name: "Make order",
                        icon: "../../../img/menuimages/sent.png",
                        link: "/order/openPage.htm"
                    },
                        {
                            name: "Office",
                            icon: "../../../img/menuimages/office.png",
                            items: [{
                                name: "Word",
                                icon: "../../../img/menuimages/word.png",
                                link: "/fileUp/openPage.htm"
                            },
                                {
                                    name: "Excel",
                                    icon: "../../../img/menuimages/excel.png",
                                    link: "/fileUp/tiptest.htm"
                                },
                                {
                                    name: "Power Point",
                                    icon: "../../../img/menuimages/powerpoint.png",
                                },
                                {
                                    name: "Outlook",
                                    icon: "../../../img/menuimages/outlook.png",
                                    link: "https://www.baidu.com"
                                }]
                        },
                        {
                            name: "Mailing",
                            icon: "../../../img/menuimages/mail.png",
                            items: [{
                                name: "Sent Mail",
                                icon: "../../../img/menuimages/calendar.png"
                            },
                                {
                                    name: "Read Mail",
                                    icon: "../../../img/menuimages/mailopen.png"
                                },
                                {
                                    name: "Go Gmail",
                                    icon: "../../../img/menuimages/gmail.png",
                                }]
                        },
                        {
                            name: "Adobe Suit",
                            icon: "../../../img/menuimages/ps.png",
                            items: [{
                                name: "Photoshop",
                                icon: "../../../img/menuimages/photoshop.png"
                            },
                                {
                                    name: "Dreamweaver",
                                    icon: "../../../img/menuimages/dw.png"
                                },
                                {
                                    name: "Ilustrator",
                                    icon: "../../../img/menuimages/ai.png"
                                },
                                {
                                    name: "After Effects",
                                    icon: "../../../img/menuimages/ae.png"
                                }]
                        },
                        {
                            name: "Options",
                            icon: "../../../img/menuimages/gear.png",
                            items: [{
                                name: "Save",
                                icon: "../../../img/menuimages/save.png"
                            },
                                {
                                    name: "Manager",
                                    icon: "../../../img/menuimages/taskmgr.png"
                                },
                                {
                                    name: "Control Panel",
                                    icon: "../../../img/menuimages/control.png"
                                },
                                {
                                    name: "Folders",
                                    icon: "../../../img/menuimages/folder.png"
                                },
                                {
                                    name: "Log Out",
                                    icon: "../../../img/menuimages/shut-down.png"
                                }]
                        }]
                })
    });
</script>

</body>
</html>
