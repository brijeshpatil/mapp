<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeMail.aspx.cs" Inherits="MailApp.MakeMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>TO:</td>
                    <td>
                        <asp:TextBox ID="txtTO" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        *Please separate multiple mails with , (comma) 
                    </td>
                </tr>
                <tr>
                    <td>From:</td>
                    <td>
                        <asp:TextBox ID="txtFROM" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPASS" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Subject:</td>
                    <td>
                        <asp:TextBox ID="txtSUBJECT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td valign="top">Message</td>
                    <td>
                        <asp:TextBox ID="txtMsg" TextMode="MultiLine" runat="server" Height="100" Width="350"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SEND" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table><br />
            <br />
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
