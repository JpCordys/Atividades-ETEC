using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace prjJOAOPEDROCORDEIROMOURAARAUJO
{
    public partial class frmJOAOPEDROCORDEIROMOURAARAUJO : Form
    {
        //Variáveis Globais
        string situacao;
        int rbSelected = 0;
        double media;

        public frmJOAOPEDROCORDEIROMOURAARAUJO()
        {
            InitializeComponent();
        }

        private void BtnCal_Click(object sender, EventArgs e)
        {
            //Variáveis notas P1/P2
            double n1 = Convert.ToDouble(P1.Text);
            double n2 = Convert.ToDouble(P2.Text);

            //Escolha do Radio Button
            if (RBEn.Checked.Equals(true))
                rbSelected = 1;
            else
                rbSelected = 2;

            //Esrutura de decisão para calcular média conforme matéria
            switch (rbSelected)
            {
                case 1:
                    media = (n1 + (2 * n2)) / 3;
                    media = Math.Round(media, 2);
                    if (media >= 7)
                    {
                        situacao = "APROVADO";
                    }
                    else if (media <= 3)
                    {
                        situacao = "REPROVADO";
                    }
                    else
                    {
                        situacao = "EXAME";
                    }

                    break;

                case 2:
                    media = (n1 + n2) / 2;
                    media = Math.Round(media, 2);
                    if (media >= 7)
                    {
                        situacao = "APROVADO";
                    }
                    else if (media <= 3)
                    {
                        situacao = "REPROVADO";
                    }
                    else
                    {
                        situacao = "EXAME";
                    }
                    break;
            }
        }

        private void BtnOut_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void CBPro_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CBPro.SelectedIndex == 0)
            {
                RBEn.Checked = true;
            }
            else
            {
                RBEn.Checked = false;
            }
        }

        private void BtnLim_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja mesmo sair?", "Message do sistema", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void BtnOut_Click_1(object sender, EventArgs e)
        {

        }
    }
}
