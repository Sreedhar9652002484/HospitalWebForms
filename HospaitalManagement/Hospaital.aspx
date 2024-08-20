<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospaital.aspx.cs" Inherits="HospaitalManagement.Hospaital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-bottom:20px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            width: 479px;
        }
        .auto-style5 {
            height: 31px;
            width: 479px;
        }
        .auto-style6 {
            margin-left: 504px;
                        background-color:blue

        }
        
        .auto-style7 {
            margin-left: 158px;
                        background-color:red

        }
        .auto-style8 {
            margin-left: 296px;
                        background-color:greenyellow

        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1 ">
            <strong>Hospaital Management</strong></div>
        <table class="auto-style2">
             <tr>
     <td class="auto-style4">Patient ID</td>
     <td>
         <asp:TextBox ID="TextBox2" runat="server" Width="270px"></asp:TextBox>
     </td>
 </tr>
            <tr>
                <td class="auto-style4">Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">DateOfBirth</td>
                <td>
                    <asp:TextBox ID="TextBox6" TextMode="Date" runat="server"  Width="265px"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gender</td>
               <td>
    <asp:RadioButton ID="RadioButton1" GroupName="Gender" Text="Male" runat="server" />
    <asp:RadioButton ID="RadioButton2" GroupName="Gender" Text="Female" runat="server" />
</td>

            </tr>
            <tr>
                <td class="auto-style5">ContactNumber</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
           
        </table>
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Insert" Width="166px" OnClick="Button1_Click" />
        </p>
        <div style="display:flex; flex-direction:row; justify-content:center; align-items:center; gap:25px">
        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="auto-style8" Width="150px" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="auto-style7" Width="153px" OnClick="Button3_Click" />
           </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Message : "></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource" AutoGenerateColumns="False" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Patients]"></asp:SqlDataSource>
    </form>
    </body>
</html>
