﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductsCards.aspx.cs" Inherits="DigitalRepository.ProductsCards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../css/Products.css" rel="stylesheet" />
    <link href="css/PageIndicator.css" rel="stylesheet" />
    <link href="css/popup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="line">
        <a class="textB" href="Index.aspx">الصفحة الرئيسية </a>
        <label class="textB">&lt</label>
        <a class="textC">بطاقات بريدية</a>
        <i class="fa fa-home icon"></i>
    </div>

    <div class="OuterBox">
        
        <label class="text">الرائج</label>
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Double" BorderWidth="3px" CellPadding="15" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="294px" Width="700px" RepeatColumns="3" RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" Font-Names="Arial" Font-Size="Medium" ForeColor="#336666" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="#333333" />
            <ItemTemplate>
<%--                <asp:Image ID="Image1" runat="server" Height="168px" ImageUrl='<%# Eval("p_picture") %>' Width="237px" ImageAlign="Middle" />--%>
                  <asp:ImageButton ID="ImageButton2" runat="server" BorderWidth="1px" Height="260px" Width="278px" ImageUrl= '<%# Eval("p_picture") %>' 
                            CommandName="ViewPrdDetail" CommandArgument='<%# Eval("Id") %>'/>
                &nbsp;<br />
                <br />

                <asp:Label ID="link" runat="server" Text='<%# Eval("p_link") %>' style="visibility: hidden;"></asp:Label>

                <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black"></asp:Label>
                <br />

                 <asp:Label ID="Label2" runat="server" Text=" السعر" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                <asp:Label ID="p_priceLabel" runat="server" Text='<%# Eval("p_price") %>' Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text=" ريال" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                
                <br />
                <br />
                <asp:Button ID="Button2" class="button" runat="server" Text="اضف للسلة"  OnClientClick="openPopup()" OnClick="AddToCart" ToolTip="19999" Width="278px"  />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" Font-Names="Arial" ForeColor="#336666" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT * FROM [Product] where (p_type LIKE N'بطاقات بريدية')"></asp:SqlDataSource>
         </div>
</asp:Content>
