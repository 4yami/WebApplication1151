using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1151
{
    public partial class WebForm3151 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Declare variables
            string name, grade;
            double test, assignment, project, finalExam,
                   overallMark, overallMarkRounded;

            // Assign values to variables
            name = txtName.Text;
            //test = double.Parse(txtTest.Text); // A common way to parse, but Convert.ToDouble is used below
            test = Convert.ToDouble(txtTest.Text);
            assignment = Convert.ToDouble(txtAssignment.Text);
            project = Convert.ToDouble(txtProject.Text);
            finalExam = Convert.ToDouble(txtFinalExam.Text);

            // Calculate overall mark
            overallMark = (test / 25 * 15) + (assignment / 50 * 15) +
                          (project / 75 * 30) + (finalExam / 100 * 40);

            // Calculate grade
            overallMarkRounded = Math.Round(overallMark, 0);

            if (overallMarkRounded >= 80 && overallMarkRounded <= 100)
            {
                grade = "A";
            }
            else if (overallMarkRounded >= 75 && overallMarkRounded < 80)
            {
                grade = "A-";
            }
            else if (overallMarkRounded >= 70 && overallMarkRounded < 75)
            {
                grade = "B+";
            }
            else if (overallMarkRounded >= 65 && overallMarkRounded < 70)
            {
                grade = "B";
            }
            else if (overallMarkRounded >= 60 && overallMarkRounded < 65)
            {
                grade = "B-";
            }
            else if (overallMarkRounded >= 55 && overallMarkRounded < 60)
            {
                grade = "C+";
            }
            else if (overallMarkRounded >= 50 && overallMarkRounded < 55)
            {
                grade = "C";
            }
            else if (overallMarkRounded >= 45 && overallMarkRounded < 50)
            {
                grade = "C-";
            }
            else if (overallMarkRounded >= 40 && overallMarkRounded < 45)
            {
                grade = "D";
            }
            else if (overallMarkRounded >= 0 && overallMarkRounded < 40)
            {
                grade = "F";
            }
            else
            {
                grade = "Error";
            }

            // Display results
            lblOverallMark.Text = overallMark.ToString("n2");
            lblGrade.Text = grade;
        }

    }
}