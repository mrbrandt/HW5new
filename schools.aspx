<%@ Page Language="VB" AutoEventWireup="false" CodeFile="schools.aspx.vb" Inherits="schools" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_Schools %>" 
            SelectCommand="SELECT * FROM [schoolTable]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="schoolID" 
            DataSourceID="SqlDataSource1" Width="554px">
            <Columns>
                <asp:BoundField DataField="schoolName" HeaderText="College/University" 
                    SortExpression="schoolName" />
                <asp:BoundField DataField="schoolLocation" HeaderText="City, State" 
                    SortExpression="schoolLocation" />
                <asp:HyperLinkField DataNavigateUrlFields="schoolID" 
                    DataNavigateUrlFormatString="schoolDetails.aspx?schoolID={0}" 
                    Text="Details View" />
            </Columns>
        </asp:GridView>
        <br />
    <a href="schoolsDefault.aspx"> Home </a>
    <br />
    <a href="./admin/newSchool.aspx"> Add A New School </a>
    </div>
 
    </form>
</body>
</html>
