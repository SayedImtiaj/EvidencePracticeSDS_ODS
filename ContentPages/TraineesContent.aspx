<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterTrainee_Course.Master" AutoEventWireup="true" CodeBehind="TraineesContent.aspx.cs" Inherits="EvidencePracticeSDS_ODS.ContentPages.TraineesContent" %>

<%@ Register Src="~/UserControls/UserControlTrainee.ascx" TagPrefix="uc1" TagName="UserControlTrainee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UserControlTrainee runat="server" id="UserControlTrainee" />
</asp:Content>
