<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BooksCatalog.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 527px;
            background-color: #33CCCC;
        }
        .auto-style2 {
            width: 198px;
        }
    </style>
</head>
<body style="height: 417px; width: 706px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Книжкова поличка"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#9966FF" Text="Додати нову книгу в каталог"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ID Книги</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Назва</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Автор</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Видавець</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="21px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Кількість сторінок</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="21px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ціна</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="21px" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Обкладинка</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="55px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF99" Height="36px" OnClick="Button1_Click" Text="Add Book" Width="164px" />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
