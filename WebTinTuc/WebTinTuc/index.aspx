<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebTinTuc.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Themes/indexStyles.css" rel="stylesheet" />
    <h1>Tin Mới Nhất</h1>
            <div id="MainContent">
                <asp:Repeater ID="rbChiTiet" runat="server">
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
