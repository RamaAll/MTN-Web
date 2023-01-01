<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="MTN.bill" %>

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
            <asp:GridView ID="billgv" runat="server" BackColor="White" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
