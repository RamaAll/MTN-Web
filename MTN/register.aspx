<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MTN.register" %>

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

    <style type="text/css">
        .auto-style1 {
            width: 445px;

        }
        .auto-style2 {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper registration">
             <div class="col-md-12 nopadding-right">
        <h1 class="Page-Title top-title">تسجيل</h1>
        <h3 class="Page-SubTitle">يرجى ادخال المعلومات أدناه</h3>
                 <div class="col-md-9 col-sm-12 Page-Body Registration" style="padding: 0;">
            <table>
                <tr>
                    <td class="auto-style2">title</td><td class="auto-style1">
                        <div style="padding-top: 10px;">
                    <asp:DropDownList ID="titledd" runat="server" >
                        <asp:ListItem>اللقب</asp:ListItem>
                        <asp:ListItem>السيد</asp:ListItem>
                        <asp:ListItem>السيدة</asp:ListItem>
                        <asp:ListItem>آنسة</asp:ListItem>
                        <asp:ListItem>السادة</asp:ListItem>
                        <asp:ListItem>الدكتور</asp:ListItem>
                        <asp:ListItem>أخرى</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                            </div>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">First name</td><td class="auto-style1">
                     <asp:TextBox ID="fnametxt" runat="server" ></asp:TextBox>
                     <asp:Label ID="fnamelbl" runat="server" Font-Bold="True" ForeColor="Red" Text="ادخل الاسم" Visible="False"></asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Last name</td><td class="auto-style1">
                     <asp:TextBox ID="lnametxt" runat="server"></asp:TextBox>
                     <asp:Label ID="lnamelbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">ادخل الكنية</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Mobile</td><td class="auto-style1">
                     <asp:TextBox ID="mobiletxt" runat="server"></asp:TextBox>
                     <asp:Label ID="mobilelbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">ادخل رقم الموبايل</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Email</td><td class="auto-style1">
                     <asp:TextBox ID="emailtxt" runat="server" TextMode="Email"></asp:TextBox>
                     <asp:Label ID="emaillbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">ادخل البريد الالكتروني</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">User name</td><td class="auto-style1">
                     <asp:TextBox ID="usernametxt" runat="server"></asp:TextBox>
                     <asp:Label ID="usernamelbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">ادخل اسم المستخدم</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Password</td><td class="auto-style1">
                     <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:Label ID="passwordlbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">ادخل كلمة السر</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Confirm Password</td><td class="auto-style1">
                     <asp:TextBox ID="conpasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:Label ID="cpasslbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">الكلمتين غير متطابقتين</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">City</td><td class="auto-style1">
                     <asp:DropDownList ID="citydd" runat="server">
                         <asp:ListItem>دمشق</asp:ListItem>
                         <asp:ListItem>حلب</asp:ListItem>
                     </asp:DropDownList>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Address</td><td class="auto-style1">
                     <asp:TextBox ID="addresstxt" runat="server" Height="101px" Width="240px"></asp:TextBox>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Gender</td><td class="auto-style1">
                     <asp:DropDownList ID="genderdd" runat="server">
                         <asp:ListItem>ذكر</asp:ListItem>
                         <asp:ListItem>انثى</asp:ListItem>
                     </asp:DropDownList>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Birth date</td><td class="auto-style1">
                     <asp:TextBox ID="datetxt" runat="server"></asp:TextBox>
                     <asp:Label ID="birthlbl" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">ادخل تاريخ الميلاد</asp:Label>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Job</td><td class="auto-style1">
                     <asp:TextBox ID="jobtxt" runat="server"></asp:TextBox>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style2">Agree</td><td class="auto-style1">
                     <asp:CheckBox ID="agree" runat="server" />
                     </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Width="163px" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Width="163px" />
                    </td>
                </tr>
            </table>
                     </div>
                 </div>
        </div>
    </form>
</body>
</html>
