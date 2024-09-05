<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlTrainee.ascx.cs" Inherits="EvidencePracticeSDS_ODS.UserControls.UserControlTrainee" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 187px;
    }
    .auto-style4 {
        width: 187px;
        text-align: right;
    }
    .auto-style5 {
        width: 187px;
        text-align: right;
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style7 {
        margin-left: 0px;
        margin-right: 0px;
    }
</style>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="5">
            <h1>Trainee Using SDS</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Trainee Name : </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtName" runat="server" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvName" runat="server" Display="Dynamic" ErrorMessage="Name is required!" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtName">Name is required!</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style4">Email : </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Height="25px" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="rgvEmail" runat="server" ErrorMessage="Email match the following format. (abc@gmail.com)" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail">Email match the following format. (abc@gmail.com)</asp:RegularExpressionValidator>
        </td>
        <td colspan="3" rowspan="3">
            <asp:GridView ID="grdTrainee" runat="server" AutoGenerateColumns="False" DataKeyNames="TraineeID" DataSourceID="SqlDataSourceTrainee" Height="179px" ViewStateMode="Disabled" Width="327px" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="grdTrainee_SelectedIndexChanged" CssClass="auto-style7">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TraineeID" HeaderText="TraineeID" InsertVisible="False" ReadOnly="True" SortExpression="TraineeID" />
                    <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:mm/dd/yyyy}" />
                    <asp:BoundField DataField="CellPhoneNo" HeaderText="CellPhoneNo" SortExpression="CellPhoneNo" />
                    <asp:ImageField DataImageUrlField="TraineeImage" HeaderText="TraineeImage" ControlStyle-Width="120" ControlStyle-Height="80" />
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceTrainee" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Trainee]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Gender : </td>
        <td>
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Date of Birth : </td>
        <td>
            <asp:Calendar ID="calDOB" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="188px" NextPrevFormat="ShortMonth" Width="267px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">CellPhone : </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtCell" runat="server" Height="25px" TextMode="Phone"></asp:TextBox>
            <%--<asp:RangeValidator ID="rngvCell" runat="server" Display="Dynamic" ErrorMessage="CellPhone Must be of 11 digit" ForeColor="Gray" Type="Date">CellPhone Must be of 11 digit</asp:RangeValidator>--%>
        </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style4">Confirm CellPhone : </td>
        <td>
            <asp:TextBox ID="txtCellConfirm" runat="server" Height="25px" TextMode="Phone"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CellPhone didn't match." ControlToCompare="txtCell" ControlToValidate="txtCellConfirm" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Image : </td>
        <td>
            <asp:FileUpload ID="uplImage" runat="server" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Choose Course : </td>
        <td>
            <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="SqlDataSourceCourse" DataTextField="CourseName" DataValueField="CourseID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CourseID], [CourseName] FROM [Course]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="btnSave" runat="server" BackColor="Lime" Font-Bold="True" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnUpdate" runat="server" BackColor="#CCFF99" Font-Bold="True" Text="Update" />
        </td>
        <td rowspan="3">
            <asp:Label ID="lblSelectId" runat="server" Visible="False"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Gray" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button3" runat="server" BackColor="Red" Font-Bold="True" Text="Delete" Width="141px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

