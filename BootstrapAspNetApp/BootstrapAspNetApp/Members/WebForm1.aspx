<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BootstrapAspNetApp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_body" runat="server">


 <div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="TIMESTAMP" HeaderText="TIMESTAMP" SortExpression="TIMESTAMP" />
              <asp:BoundField DataField="LAT" HeaderText="LAT" SortExpression="LAT" />
              <asp:BoundField DataField="LON" HeaderText="LON" SortExpression="LON" />
              <asp:CheckBoxField DataField="TRACKCREATED" HeaderText="TRACKCREATED" SortExpression="TRACKCREATED" />
          </Columns>
      </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MAINSYSTEMConnectionString %>" SelectCommand="SELECT [TIMESTAMP], [LAT], [LON], [TRACKCREATED] FROM [COORDINATES]"></asp:SqlDataSource>

  </div>
  <div class="col-md-4"></div>
</div>



</asp:Content>

