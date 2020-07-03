using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _11_7
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            startDateTime = DateTime.Now;
        }

        DateTime startDateTime;

        public DateTime GetStartDateTime()
        {
            return startDateTime;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(GetStartDateTime().ToString());
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            MessageBox.Show("이거는 셋업하기위한 메소드입니다");
        }

        /*private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            MessageBox.Show("이거는 마무리 작업용입니다.");
        }*/

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("정말 창을 닫을겁니까?", "Prompt",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Question) == DialogResult.Yes)
                e.Cancel = false;
            else
                e.Cancel = true;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
