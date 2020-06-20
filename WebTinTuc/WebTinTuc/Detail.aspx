<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="WebTinTuc.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

             <asp:Repeater ID="rbBanTin" runat="server">
                    <ItemTemplate>
                        <h1><%#Eval("NoiDung")%></h1>
                    </ItemTemplate>
              </asp:Repeater>
    x
            <div id="MainContent">
                <asp:Repeater ID="rbChiTiet" runat="server" >
                    <ItemTemplate>

                        <h3 style="color:red"> <%#Eval("TieuDe")%> </h3>
                        <p style="text-align:right">
                            Cập Nhật: <%#Eval("NgayDang")%> <br />
                            Số lần xem: <%#Eval("LanXem")%>

                        </p>

                        <%#Eval("NoiDung")%>
                    </ItemTemplate>
                </asp:Repeater>
                
            </div>
</asp:Content>
