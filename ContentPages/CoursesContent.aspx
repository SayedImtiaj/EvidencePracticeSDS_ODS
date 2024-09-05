<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterTrainee_Course.Master" AutoEventWireup="true" CodeBehind="CoursesContent.aspx.cs" Inherits="EvidencePracticeSDS_ODS.ContentPages.CoursesContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Course Information</h1>
    <asp:GridView ID="grdCourse" DataKeyNames="CourseID" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceCourse" ShowFooter="True">
        <Columns>
            <asp:TemplateField HeaderText="CourseID" SortExpression="CourseID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CourseName" SortExpression="CourseName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CourseName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CourseDuration" SortExpression="CourseDuration">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CourseDuration") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CourseDuration") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Actions">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="btnInsert" runat="server" BackColor="Green" Font-Bold="true" Text="Insert" OnClick="btnInsert_Click" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:ObjectDataSource ID="ObjectDataSourceCourse" runat="server" SelectMethod="GetCourses" TypeName="EvidencePracticeSDS_ODS.DAL.Course_DAL" DeleteMethod="DeleteData" InsertMethod="InsertData" UpdateMethod="UpdateData">
        <DeleteParameters>
            <asp:Parameter Name="courseId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="courseDuration" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="courseId" Type="Int32" />
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="courseDuration" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>
