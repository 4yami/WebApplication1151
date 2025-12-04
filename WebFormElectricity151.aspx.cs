using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1151
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get input
            double currentReading = Convert.ToDouble(txtCurrentReading.Text);
            double previousReading = Convert.ToDouble(txtPreviousReading.Text);

            // Validate input
            if (currentReading < previousReading)
            {
                lblAmountTotal.Text = "Invalid reading!";
                return;
            }

            // Calculate total units
            double totalUnits = currentReading - previousReading;

            // Tariff blocks
            double block1Rate = 0.30;
            double block2Rate = 0.40;
            double block3Rate = 0.50;

            double block1Units = 0, block2Units = 0, block3Units = 0;

            // Block 1 (0 - 300)
            if (totalUnits <= 300)
            {
                block1Units = totalUnits;
            }
            else
            {
                block1Units = 300;
                double remaining = totalUnits - 300;

                // Block 2 (301 - 700)
                if (remaining <= 400)
                {
                    block2Units = remaining;
                }
                else
                {
                    block2Units = 400;
                    block3Units = remaining - 400;
                }
            }

            // Calculate amounts
            double amount1 = block1Units * block1Rate;
            double amount2 = block2Units * block2Rate;
            double amount3 = block3Units * block3Rate;
            double totalAmount = amount1 + amount2 + amount3;

            // Display results
            lblUnit1.Text = block1Units.ToString("0");
            lblUnit2.Text = block2Units.ToString("0");
            lblUnit3.Text = block3Units.ToString("0");
            lblUnitTotal.Text = totalUnits.ToString("0");

            lblAmount1.Text = amount1.ToString("0.00");
            lblAmount2.Text = amount2.ToString("0.00");
            lblAmount3.Text = amount3.ToString("0.00");
            lblAmountTotal.Text = totalAmount.ToString("0.00");
        }
    }
}