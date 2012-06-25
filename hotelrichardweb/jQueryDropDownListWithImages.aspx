<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryDropDownListWithImages.aspx.cs"
    Inherits="dotnetspeaks.LiveDemos.jquery.jQueryDropDownListWithImages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <title></title>
    <script type="text/javascript" src="jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="jquery.effects.core.js"></script>
    <script type="text/javascript" src="jquery.effects.blind.js"></script>

    
    <style type="text/css">
        .ddlImg
        {
            width: 43px;
            height: 33px;
        }
        .ddlText
        {
            font-size: 14px;
            cursor: pointer;
            float: left;
            width: 165px;
            vertical-align: top;
        }
        #effect
        {
            width: 188px;
            height: 135px;
            position: absolute;
            z-index: 2;
            overflow: auto;
        }
        .textbox
        {
            width: 185px;
            height: 14px;
        }
        body
        {
            font-size: 62.5%;
        }
    </style>
</head>
<body>
    <form runat="server" id="form1">
    <div class="demo">
        <div>
            <div id="ddlDiv" style="display: none">
                <asp:TextBox ID="txtChkValue" runat="server" CssClass="textbox"></asp:TextBox>
                <img id="ddlArrow" src="images/down_arrow.jpg" style="margin-left: -23px; margin-bottom: -4px" />
            </div>
            <div id="effect" class="ui-widget-content" runat="server">
            </div>
            <div>
                <asp:Button ID="btnGet" runat="server" Text="Get Selected Value" OnClick="btnGet_Click" />
            </div>
            <div>
                <span>
                    <asp:Label ID="label1" Text="Client Event: " runat="server"></asp:Label>
                </span><span>
                    <asp:Label ID="lblClientValue" runat="server"></asp:Label>
                </span>
            </div>
            <div>
                <span>
                    <asp:Label ID="label2" Text="Server Event: " runat="server"></asp:Label>
                </span><span>
                    <asp:Label ID="lblServerValue" runat="server"></asp:Label>
                </span>
            </div>
            <input type="hidden" runat="server" id="hidValue" />
        </div>
    </div>
    </form>
</body>
</html>

<script language="javascript" type="text/javascript">

    $(document).ready(function() {

        $("#ddlDiv").css({
            display: 'block'
        });

        $("#effect").hide();
        //run the currently selected effect
        function runEffect() {
            //get effect type from
            if (!($('#effect').is(":visible"))) {
                //run the effect
                $("#effect").show('blind', 200);
            }
            else {
                $("#effect").hide('blind', 200);
            }
        };

        //set effect from select menu value
        $("#ddlArrow").click(function() {
            runEffect();
            return false;
        });


        $(document).click(function(e) { if (($('#effect').is(":visible"))) { $("#effect").hide('blind', 200); } });

        $('#effect').click(function(e) {
            e.stopPropagation();
        });

    });

    function GetSelectedValue(ddlId) {
        var objTextBox = document.getElementById("<%=txtChkValue.ClientID%>");
        objTextBox.value = $(ddlId).text();
        if (!($('#effect').is(":visible"))) {
            //run the effect
            $("#effect").show('blind', 200);
        }
        else {
            $("#effect").hide('blind', 200);
        }

        $("#<%=lblClientValue.ClientID%>").html($(ddlId).attr("id"));
        $("#<%=lblServerValue.ClientID%>").html('');
        $("#<%=hidValue.ClientID%>").val($(ddlId).attr("id"));
    }

</script>

