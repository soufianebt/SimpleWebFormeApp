using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Summery.Visible = false;
        if (Page.IsPostBack)
        {
           
            if(YesProvide.Checked)
            {
                pnlAdd.Visible = true;
            }
            else
            {
                pnlAdd.Visible = false;
            }

            

            
            Summery.Visible = false;
        }
        else
        {
            
            cblServices.Items.Add(new ListItem("Biking"));
            cblServices.Items.Add(new ListItem("Scuba Diving"));
            cblServices.Items.Add(new ListItem("Gamming"));
            cblServices.Items.Add(new ListItem("Mountain Climbing"));
            cblServices.Items.Add(new ListItem("Web Surfing"));
            cblServices.Items.Add(new ListItem("Real Surfing"));

            rblStates.Items.Add(new ListItem("Under 21"));
            rblStates.Items.Add(new ListItem("21 To 30"));
            rblStates.Items.Add(new ListItem("31 to 50"));
            rblStates.Items.Add(new ListItem("Over 50"));
            NoProvide.Checked = true;
            pnlAdd.Visible = false;
        }
    }

    public void loadElement(object sender, EventArgs e)
    {

      // Response.Write(DropDownListCategory.SelectedValue);
        if (DropDownListCategory.SelectedValue.Equals("Bikes"))
        {
            SubCategory.Items.Clear();
     
            SubCategory.Items.Add(new ListItem("Brakes", "Brakes"));
            SubCategory.Items.Add(new ListItem("Handlebars", "Handlebars"));
            SubCategory.Items.Add(new ListItem("Chains", "Chains"));
            SubCategory.Items.Add(new ListItem("Cranks", "Cranks"));
            SubCategory.SelectedIndex = 0;

        }

        if (DropDownListCategory.SelectedValue.Equals("cars"))
        {
            SubCategory.Items.Clear();

            SubCategory.Items.Add(new ListItem("toyota","toyota")) ;
            SubCategory.Items.Add(new ListItem("dacia", "dacia"));
            SubCategory.Items.Add(new ListItem("volvo", "volvo"));
            SubCategory.Items.Add(new ListItem("pigeu", "pigeu"));
            SubCategory.SelectedIndex = 0;
        }

    }

    protected void showResult(object sender, EventArgs e)
    {
        Response.Write(SubCategory.SelectedIndex);

        Summery.Visible = true;

        Rname.Text = name.Text;

        Radress.Text = Address.Text;

        Remail.Text = Email.Text ;

        Rcategory.Text = DropDownListCategory.SelectedValue;

        Rsubcategory.Text = SubCategory.SelectedValue.ToString() ;
    }

   
}