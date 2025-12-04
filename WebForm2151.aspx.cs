using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1151
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double c, f;

            // Calculate farenheit
            c = double.Parse(txtCelsius.Text, System.Globalization.CultureInfo.InvariantCulture);
            f = c * 9 / 5 + 32;

            lblResult.Text = f.ToString("n1");

            // Determine body temperature
            if (c >= 37.5)
            {
                lblStatus.Text = "High body temperature";
            }
            else
            {
                lblStatus.Text = "Normal body temperature";
            }

            if (c >= 35)
            {
                lblWeather.Text = "Very hot";
            }
            else if (c >= 30)
            {
                lblWeather.Text = "Hot";
            }
            else if (c >= 25)
            {
                lblWeather.Text = "Warm";
            }
            else if (c >= 20)
            {
                lblWeather.Text = "Cool";
            }
            else
            {
                lblWeather.Text = "Cold";

            }
        }
    }
}