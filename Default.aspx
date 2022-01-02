<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Account_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
</head>
<body>
  
        <div class="container">
              <h2>Activity Club Form Registration</h2> 
                <form id="form1" runat="server">
                <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label" >Name*</asp:Label>
                                <asp:TextBox ID="name"  CssClass="form-control" runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator id="validTxtName" 
                                runat="server" controlToValidate="name"
                                    CssClass="text-danger"
                                errorMessage="Name must be entered" display="static">
                                </asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Address</asp:Label>
                                <asp:TextBox ID="Address"  runat="server"  CssClass="form-control"/>

                    </div>
                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">City</asp:Label>
                                <asp:TextBox ID="City"  CssClass="form-control" runat="server"/>
                    </div>

                    <div class="form-group">
                            <asp:Label runat="server"  CssClass="col-md-2 control-label">Sex</asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" >
                                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                        <asp:ListItem Value="FeMale" Text="FeMale"></asp:ListItem>
                                </asp:DropDownList>

                    </div>
                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Age</asp:Label>
                                <asp:TextBox ID="Age"  runat="server"  CssClass="form-control"/>
                                <asp:CompareValidator id="comvR" runat="server" display="static" CssClass="text-danger"
                                controlToValidate="Age" errorMessage="Age must be numeric"
                                type="Integer"  operator="DataTypeCheck"/>
                    </div>

                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Zip</asp:Label>
                                <asp:TextBox ID="Zip"  CssClass="form-control" runat="server"/>
                    </div>
                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Email</asp:Label>
                                <asp:TextBox ID="Email" TextMode="Email" CssClass="form-control" runat="server"/>
                        <asp:RegularExpressionValidator runat="server"
                        ControlToValidate="Email"
                        ValidationExpression="[\w-]+@([\w-]+\.)+[\w-]+"
                        Display="Static" 
                        Font-Name="verdana" CssClass="text-danger" Font-Size="10pt">Non valid Mail Adress</asp:RegularExpressionValidator>

                     </div>
                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Password</asp:Label>
                                <asp:TextBox ID="PassWord" TextMode ="Password" CssClass="form-control" runat="server"/>

                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Confirm Password</asp:Label>
                                <asp:TextBox ID="ConfirmPassWord" TextMode ="Password" CssClass="form-control" runat="server"/>

                        <asp:CompareValidator id="comvConfirmPassword" runat="server" 
                        display="static" controlToValidate="ConfirmPassWord"
                        controlToCompare="PassWord"
                            CssClass="text-danger"
                        errorMessage="Your Password Doens't match up" type="String"
                        operator="Equal"/>
                    </div>
                    <div class="form-group">
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Comment</asp:Label>
                                <asp:TextBox ID="Comment" TextMode ="MultiLine" CssClass="form-control" runat="server"/>
                    </div>
                    <div class="form-group">
                         <asp:Label runat="server"  CssClass="col-md-6 col-xs-12 ">Provide persnal information :</asp:Label>
                                <asp:RadioButton ID="YesProvide" groupName="ProvidePersonal" text="Yes" runat="server" AutoPostBack="true"/>
                                <asp:RadioButton ID="NoProvide" groupName="ProvidePersonal" text="No" runat="server" AutoPostBack="true"/>
                               <asp:Panel ID="pnlAdd" CssClass="container alert alert-primary" runat="server">
                                   <asp:Panel CssClass="row" runat="server">
                                       <asp:Panel CssClass="col" runat="server">
                                           <asp:Label runat="server"  CssClass="col-md-2 control-label">Area Of Intereset :</asp:Label>
                                           <asp:CheckBoxList ID="cblServices"  runat="server" ></asp:CheckBoxList>
                                       </asp:Panel>

                                       <asp:Panel CssClass="col" runat="server">
                                           <asp:Label runat="server"  CssClass="col-md-2 control-label">Age Category:</asp:Label>
                                           <asp:RadioButtonList ID="rblStates"  runat="server" ></asp:RadioButtonList>
                                       </asp:Panel>
                                       </asp:Panel>
                               </asp:Panel>
                    </div>
                    <div class="form-group"> 
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">Product category</asp:Label>
                                <asp:DropDownList ID="DropDownListCategory" AutoPostBack="true" runat="server" OnTextChanged="loadElement">
                                        <asp:ListItem Value="Bikes" Text="Bikes" ></asp:ListItem>
                                        <asp:ListItem Value="cars" Text="cars"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label runat="server"  CssClass="col-md-2 control-label">SubCategory</asp:Label>
                                <asp:ListBox ID="SubCategory" 
                                   Width="100px"
                                   SelectionMode="Single" 
                                   runat="server">
                                 
                              </asp:ListBox>
                        <asp:Panel ID="Summery" CssClass="container alert alert-danger" runat="server" >
                            <asp:Label runat="server"  >Summary:</asp:Label><br />
                            <asp:Label runat="server"  >Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
                            <asp:Label ID="Rname" runat="server"  ></asp:Label><br />

                            <asp:Label runat="server"  >Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</asp:Label>
                            <asp:Label ID="Radress" runat="server"  ></asp:Label><br />

                            <asp:Label runat="server"  >E_Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</asp:Label>
                            <asp:Label ID="Remail" runat="server"  ></asp:Label><br />

                            <asp:Label runat="server"  >Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</asp:Label>
                            <asp:Label ID="Rcategory" runat="server"  ></asp:Label><br />

                            <asp:Label runat="server"  >SubCategory:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</asp:Label>
                            <asp:Label ID="Rsubcategory" runat="server"  ></asp:Label><br />
                        </asp:Panel>
                        <br/>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="showResult"   text="Submit" />
                </div>
                    </form>
            </div>
    
</body>
</html>
