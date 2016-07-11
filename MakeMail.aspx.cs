using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MailApp
{
    public partial class MakeMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(txtTO.Text);
            mail.From = new MailAddress(txtFROM.Text);
            mail.Subject = txtSUBJECT.Text;
            mail.Body = txtMsg.Text;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential(txtFROM.Text, txtPASS.Text);
            smtp.EnableSsl = true;
            string IsSent = "";
            try
            {
                smtp.Send(mail);
                IsSent = "Mail Sent Successfully";
            }
            catch (Exception err)
            {
                IsSent = err.Message;
            }


            lblStatus.Text = IsSent;
        }
    }
}