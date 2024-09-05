<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CourseUserControl.ascx.cs" Inherits="EvidencePracticeSDS_ODS.UserControls.CourseUserControl" %>

<asp:GridView ID="GridView_Course" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSrc_Course" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
        <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
        <asp:BoundField DataField="CourseDuration" HeaderText="CourseDuration" SortExpression="CourseDuration" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSrc_Course" runat="server" 
    DeleteMethod="DeleteData" 
    InsertMethod="InsertData" 
    SelectMethod="GetCourses" 
    TypeName="EvidencePracticeSDS_ODS.DAL.Course_DAL" 
    UpdateMethod="UpdateData"

    OldValuesParameterFormatString="original_{0}"
    ConflictDetection="CompareAllValues"
    OnDeleted="ObjectDataSrc_Course_Deleted"
    OnUpdated="ObjectDataSrc_Course_Updated" 
    
    DataObjectTypeName="EvidencePracticeSDS_ODS.DAL.Course"
    >
    <UpdateParameters>
        <asp:Parameter Name="original_Course" Type="Object" />
        <asp:Parameter Name="course" Type="Object" />
    </UpdateParameters>
</asp:ObjectDataSource>
<p>
    &nbsp;</p>
<asp:DetailsView ID="DetailsView_Course" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSrc_Course" Height="50px" Width="125px">
    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <Fields>
        <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
        <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
        <asp:BoundField DataField="CourseDuration" HeaderText="CourseDuration" SortExpression="CourseDuration" />
        <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
    </Fields>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
</asp:DetailsView>


