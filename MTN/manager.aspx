<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="MTN.manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/base.css" rel="stylesheet" />
    <link href="css/menus.css" rel="stylesheet" />
    <link href="css/messages.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <link href="css/comment.css" rel="stylesheet" />
    <link href="css/field.css" rel="stylesheet" />
    <link href="css/node.css" rel="stylesheet" />
    <link href="css/search.css" rel="stylesheet" />
    <link href="css/user.css" rel="stylesheet" />

    <link href="css/sites/all/modules/ubercart/uc_file/uc_filed2edd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/sites/all/modules/ubercart/uc_order/uc_orderd2edd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/sites/all/modules/ubercart/uc_product/uc_productd2edd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/sites/all/modules/ubercart/uc_store/uc_stored2edd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/sites/all/modules/views/css/viewsd2edd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/sites/all/modules/ckeditor/css/ckeditord2edd2ed.css?nzcolu" rel="stylesheet" />

    <link href="Content/sites/all/modules/ctools/css/ctoolsd2edd2ed.css?nzcolu" rel="stylesheet" />
    <link href="Content/sites/all/modules/ctools/css/ctoolsd2edd2ed.css?nzcolu" rel="stylesheet" />

    <link href="css/bootstrap.mind2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/carod2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/styled2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/menu-majord2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/fwsliderd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/responsive-tabsd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/additiond2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/mainmenud2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/darkd2ed.css?nzcolu" rel="stylesheet" />
    <link href="css/jquery.mmenu.alld2ed.css?nzcolu" rel="stylesheet" />
    <link href="font-awesome.css" rel="stylesheet" />


    <link href="Site.css" rel="stylesheet" />
    <link href="prettyinput.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="slick.css" />
    <link rel="stylesheet" type="text/css" href="slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="jquery-ui.css" />
    <link href="../Assets/css/jquery-confirm.css" rel="stylesheet" />
    <link href="../Plugins/Styled-notifications-master/notifications.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=greek" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Tajawal:200,300,400,500,700,800,900&amp;subset=arabic" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="usergv" runat="server">
            </asp:GridView>
            <br />
        </div>
        <asp:GridView ID="billgv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="insert" runat="server" OnClick="billinsert_Click">insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="mobi" SortExpression="mobi">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("mobi") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("mobi") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="mobi" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="amount" SortExpression="amount">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="amount" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="billdate" SortExpression="billdate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("billdate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("billdate") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="billdate" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mtndbConnectionString1 %>" DeleteCommand="DELETE FROM [bill] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bill] ([mobi], [amount], [billdate]) VALUES (@mobi, @amount, @billdate)" SelectCommand="SELECT * FROM [bill]" UpdateCommand="UPDATE [bill] SET [mobi] = @mobi, [amount] = @amount, [billdate] = @billdate WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="mobi" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter DbType="Date" Name="billdate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="mobi" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter DbType="Date" Name="billdate" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
