using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_exercise
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void fnt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void passtb_TextChanged(object sender, EventArgs e)
        {

        }

        protected void exptb_TextChanged(object sender, EventArgs e)
        {

        }

        protected void saltb_TextChanged(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string fn = fnt.Text;
            string age = agetb.Text;
            string login = lntb.Text;
            string pass =passtb.Text;
            string cpass = cpasstb.Text;
            string exp = exptb.Text;
            string sal = saltb.Text;
            aspEntities4 x = new aspEntities4();
            registration_form reg = new registration_form();
            reg.first_name = fn;
            reg.age = int.Parse(age);
            reg.login_name = login;
            reg.pass = pass;
            reg.cpass = cpass;
            reg.experience = int.Parse(exp);
            reg.salary_expected = int.Parse(sal);
            x.registration_form.Add(reg);
            x.SaveChanges();
            Response.Redirect("success.aspx");


        }
    }
}