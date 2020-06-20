<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="InsertDetail.aspx.cs" Inherits="WebTinTuc.InsertDetail" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>Thêm bản tin mới cho website</h1>
            <div id="MainContent">
                <h4>Chọn Bản tin: </h4>
                <asp:DropDownList ID="drBanTin" runat="server" Height="30px" Width="100px"></asp:DropDownList>
                <h4>Tiêu Đề Bản Tin: </h4>
                <asp:TextBox ID="txtTitle" runat="server" Height="19px" Width="605px"></asp:TextBox>
                <h4>Nội Dung: </h4>
                <CKEditor:CKEditorControl ID="txtContent" runat="server" Width="617px"></CKEditor:CKEditorControl>
                <br />
                <br />
                <asp:Button ID="btnInsert" runat="server" Text="Cập Nhật" Height="30px" Width="150px" OnClick="btnInsert_Click" />
            </div>
 

</asp:Content>
