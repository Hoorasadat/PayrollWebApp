using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollWebApp
{
    public partial class frmPayroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //UnobtrusiveValidationMode = UnobtrusiveValidationMode.
            if(!IsPostBack)
            {
                txtHours.Focus();
            }
        }

        protected void calcBtn_Click(object sender, EventArgs e)
        {
            const decimal FULL_WEEK = 37.5m;
            const decimal OT_RATE = 1.5m;

            decimal hours = 0.0m;
            decimal rates = 0.0m;
            decimal pay = 0.0m;

            hours = Convert.ToDecimal(txtHours.Text);
            rates = Convert.ToDecimal(txtRates.Text);

            if (hours <= FULL_WEEK)
                pay = hours * rates;
            else
                pay = (hours * rates) + ((hours - FULL_WEEK) * rates * OT_RATE);

            rsltLbl.Text = pay.ToString();
        }

        protected void clrBtn_Click(object sender, EventArgs e)
        {
            txtHours.Text = "";
            txtRates.Text = "";
            rsltLbl.Text = "";
            txtHours.Focus();
        }
    }
}