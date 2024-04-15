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
        double media = 0;

        public frmJOAOPEDROCORDEIROMOURAARAUJO()
        {
            InitializeComponent();
        }

        private void BtnOut_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void BtnCal_Click(object sender, EventArgs e)
        {
            //Variáveis notas P1/P2
            double n1 = 0;
            double n2 = 0;

            try
            {
                n1 = double.Parse(P1.Text);
                if (n1 <= 0)
                {
                    MessageBox.Show("ERRO");
                    P1.Focus();
                    P1.Text = ("");
                    return;
                }
            }
            catch 
            {
                MessageBox.Show("ERRO");
                P1.Focus();
                P1.Text = ("");
                return;
            }

            try
            {
                n2 = double.Parse(P2.Text);
                if (n2 <= 0)
                {
                    MessageBox.Show("ERRO");
                    P2.Focus();
                    P2.Text = ("");
                    return;
                }
            }
            catch
            {
                MessageBox.Show("ERRO");
                P2.Focus();
                P2.Text = ("");
                return;
            }

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

                    PRes.Text = media.ToString();

                    PSit.Text = situacao.ToString();

                    LisEn.Items.Add("P1=" + n1.ToString() + "P2=" + n2.ToString() + "R=" + media + "S=" + situacao);

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

                    PRes.Text = media.ToString();

                    PSit.Text = situacao.ToString();

                    LiCi.Items.Add("P1=" + n1.ToString() + "P2=" + n2.ToString() + "R=" + media + "S=" + situacao);

                    break;
            }
        }

        private void CBPro_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CBPro.SelectedIndex == 0)
            {
                RBEn.Checked = true;
            }
            else
            {
                RBCi.Checked = true;
            }
        }

        private void BtnCleL_Click(object sender, EventArgs e)
        {
            P1.Clear();
            P2.Clear();
            PRes.Clear();
            PSit.Clear();
        }

        private void BtnCleLL_Click(object sender, EventArgs e)
        {
            LisEn.Items.Clear();
            LiCi.Items.Clear();
        }

        private void RBEn_CheckedChanged(object sender, EventArgs e)
            {
                if (RBEn.Checked == true)
                {
                    CBPro.SelectedIndex = 0;
                }

                else
                {
                    CBPro.SelectedIndex = 1;
                }
            }
        }
    }
