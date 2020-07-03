using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsForms_11_3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            myButton.Text = "코드에서 변경!";
            myButton.Width = 100;

            Button button = new Button();
            Controls.Add(button);
            button.Location = new Point(13, 13 + 23 + 3);
            button.Text = "동적 생성";
        }
    }
}
