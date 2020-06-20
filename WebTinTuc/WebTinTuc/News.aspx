<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WebTinTuc.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Themes/indexStyles.css" rel="stylesheet" />
    <asp:Repeater ID="rpIdBanTin" runat="server">
        <ItemTemplate>
            <h1><%# Eval("NoiDung") %></h1>
        </ItemTemplate>
    </asp:Repeater>

            <div id="MainContent">
                <asp:Repeater ID="rpChiTiet" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li>
                                <a href="Detail.aspx?idbantin=<%#Eval("IDBanTin")%>&id=<%#Eval("ID")%>">
                                    <%#Eval("tieude")%> </a>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

</asp:Content>
