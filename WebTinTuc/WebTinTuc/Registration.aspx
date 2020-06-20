<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebTinTuc.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Đăng ký thành viên cho website</h1>
            <div id="MainContent">
                <h4>Tên Đăng Nhập</h4>
                <asp:TextBox ID="txtUserName" Width="300" Height="20" runat="server"></asp:TextBox>

                <h4>Mật Khẩu: </h4>
                <asp:TextBox ID="txtPassWord" Width="300" Height="20" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <br />

                <asp:Button ID="btnLogin" runat="server" Text="Đăng Ký" Height="29px"  Width="141px" OnClick="btnLogin_Click" />

                <h4>
                    <asp:Label ID="lblNotification" runat="server" Text=""></asp:Label>
                </h4>
            </div>
</asp:Content>
