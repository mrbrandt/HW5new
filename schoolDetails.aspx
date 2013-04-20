<%@ Page Language="VB" AutoEventWireup="false" CodeFile="schoolDetails.aspx.vb" Inherits="schoolDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_Schools %>" 
            DeleteCommand="DELETE FROM [schoolTable] WHERE [schoolID] = @schoolID" 
            InsertCommand="INSERT INTO [schoolTable] ([schoolName], [schoolLocation], [schoolMascot], [schoolPresident], [schoolFounder]) VALUES (@schoolName, @schoolLocation, @schoolMascot, @schoolPresident, @schoolFounder)" 
            SelectCommand="SELECT * FROM [schoolTable] WHERE ([schoolID] = @schoolID)" 
            UpdateCommand="UPDATE [schoolTable] SET [schoolName] = @schoolName, [schoolLocation] = @schoolLocation, [schoolMascot] = @schoolMascot, [schoolPresident] = @schoolPresident, [schoolFounder] = @schoolFounder WHERE [schoolID] = @schoolID">
            <DeleteParameters>
                <asp:Parameter Name="schoolID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="schoolName" Type="String" />
                <asp:Parameter Name="schoolLocation" Type="String" />
                <asp:Parameter Name="schoolMascot" Type="String" />
                <asp:Parameter Name="schoolPresident" Type="String" />
                <asp:Parameter Name="schoolFounder" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="schoolID" QueryStringField="schoolID" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="schoolName" Type="String" />
                <asp:Parameter Name="schoolLocation" Type="String" />
                <asp:Parameter Name="schoolMascot" Type="String" />
                <asp:Parameter Name="schoolPresident" Type="String" />
                <asp:Parameter Name="schoolFounder" Type="String" />
                <asp:Parameter Name="schoolID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="schoolID" DataSourceID="SqlDataSource1" Height="50px" 
            Width="379px">
            <Fields>
                <asp:BoundField DataField="schoolName" HeaderText="schoolName" 
                    SortExpression="schoolName" />
                <asp:BoundField DataField="schoolLocation" HeaderText="schoolLocation" 
                    SortExpression="schoolLocation" />
                <asp:BoundField DataField="schoolMascot" HeaderText="schoolMascot" 
                    SortExpression="schoolMascot" />
                <asp:BoundField DataField="schoolPresident" HeaderText="schoolPresident" 
                    SortExpression="schoolPresident" />
                <asp:BoundField DataField="schoolFounder" HeaderText="schoolFounder" 
                    SortExpression="schoolFounder" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    <a href="schoolsDefault.aspx"> Home </a>
    <br />
    <a href="schools.aspx"> View All Schools </a>
    <br />
    <a href="./admin/newSchool.aspx"> Add A New School </a>
    </div>
    </form>
</body>
</html>
