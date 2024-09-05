<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterTrainee_Course.Master" AutoEventWireup="true" CodeBehind="CourseInfo_ODS_BasedOnUC.aspx.cs" Inherits="EvidencePracticeSDS_ODS.ContentPages.CourseInfo_ODS_BasedOnUC" %>

<%@ Register Src="~/UserControls/CourseUserControl.ascx" TagPrefix="uc1" TagName="CourseUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CourseUserControl runat="server" id="CourseUserControl" />
</asp:Content>
