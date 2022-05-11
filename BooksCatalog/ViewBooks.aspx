<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="BooksCatalog.ViewBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 98%;
            height: 334px;
            background-color: #6699FF;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            background-color: #6699FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Книжкова поличка"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#CC99FF" Text="Всі книги"></asp:Label>
            <br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="1070px" RepeatColumns="2" RepeatDirection="Horizontal" Width="663px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">ID <span class="auto-style3">Книги</span> :
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("bookid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Назва
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("bookname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("bookimage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Автор
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("authorname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Видавець
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("publisher") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Кількість сторінок
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("pages") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Ціна
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookCatalogConnectionString %>" SelectCommand="SELECT * FROM [BookCatalog]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
