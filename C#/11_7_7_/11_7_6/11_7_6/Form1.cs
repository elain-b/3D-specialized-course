using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _11_7_6
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach(var outerItem in Controls)
            if (outerItem is GroupBox)
            {
                foreach (var innerItem in ((GroupBox)outerItem).Controls)
                {
                    RadioButton radioButton = innerItem as RadioButton;
                    if (radioButton != null && radioButton.Checked)
                    {
                        MessageBox.Show(radioButton.Text);
                    }
                }
            }
        }
    }
}
