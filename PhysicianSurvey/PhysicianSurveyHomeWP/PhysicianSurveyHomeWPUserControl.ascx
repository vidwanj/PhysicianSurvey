<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PhysicianSurveyHomeWPUserControl.ascx.cs" Inherits="PhysicianSurvey.PhysicianSurveyHomeWP.PhysicianSurveyHomeWPUserControl" %>
<style type="text/css">
.container 
{
	BACKGROUND-COLOR: #fff; WIDTH: 960px; BACKGROUND-REPEAT: repeat-y; BACKGROUND-POSITION: left top
}
.content {
	BACKGROUND-IMAGE: url(../../_Layouts/PhysicianSurvey/images/header_text_bgv2.gif); PADDING-BOTTOM: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-REPEAT: repeat-x; COLOR: #fff; PADDING-TOP: 10px
}
P {
	MARGIN-TOP: 0px; PADDING-LEFT: 15px; PADDING-RIGHT: 15px; COLOR: #00539b; FONT-SIZE: small
}
H1 {
	MARGIN-TOP: 0px; PADDING-RIGHT: 15px; COLOR: #00539b; MARGIN-LEFT: 15px; FONT-SIZE: 32px
}
H2 {
	MARGIN-TOP: 0px; PADDING-RIGHT: 15px; COLOR: #00a160; MARGIN-LEFT: 15px; FONT-SIZE: 26px
}
H3 {
	MARGIN-TOP: 0px; PADDING-RIGHT: 15px; COLOR: #00539b; MARGIN-LEFT: 15px; FONT-SIZE: 20px
}


</style>
<div>
<div class="container"><div class="content"><h1>Enterprise Portal</h1>
<span><h2>Physician Survey</h2></span><h3>We want to know what you think!</h3>
<p><strong>INTRODUCTION</strong><br/><br/>Texas Health Resources is designing a new enterprise portal that will serve all Texas Health internal stakeholders, including physicians, in 2013. The design team has made it a goal to incorporate and improve existing features in CareGate while introducing new features relevant to our physician community. </p>
<p>We are identifying what physicians want and need in this new design. To this end, you are part of a select group of Texas Health physicians asked to participate in this survey. </p>
<p>This survey will take approximately 15-20 minutes to complete. All information will be kept confidential and will not be shared with third parties. </p>
<p>Thank you for your part in helping us build something that makes your online experience a little easier and more productive. If you have any questions, send them to <a href="mailto:MyTexasHealth@TexasHealth.org">MyTexasHealth@TexasHealth.org</a>. </p>
</div>
</div>
    <asp:ImageButton ID="imgBtnStartNow" 
        ImageUrl="~/_layouts/PhysicianSurvey/images/StartNow.png" Visible="false" 
        runat="server" />
    <asp:ImageButton ID="imgBtnContinue" ImageUrl="~/_layouts/PhysicianSurvey/images/continue.png" Visible="false" runat="server" />
    <asp:ImageButton ID="imgBtnView" Visible="false" ImageUrl="~/_layouts/PhysicianSurvey/images/view.png" runat="server" /></br>
    <asp:Label ID="lblError" Visible="false" ForeColor="Red"  runat="server"></asp:Label>
</div>