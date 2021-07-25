using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.Windows.Forms;
using DeportesPro.Vista;

namespace DeportesPro
{
    public partial class MDI : Form
    {
        public string Abc { get; internal set; }

        public MDI()
        {
            InitializeComponent();
            this.Text = "[USUARIO: LEONEL DOMINGUEZ] \t \t \t \t [FECHA: 15/04/2021]";
            this.IsMdiContainer = true;
            this.CenterToScreen();
            navbar.Renderer = new MiRenderizador();
        }

        private void MDI_Load(object sender, EventArgs e)
        {
        }

        private void MDI_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dialogo = MessageBox.Show("¿Desea cerrar el programa?",
              "Cerrar el programa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dialogo == DialogResult.No)
            {
                e.Cancel = true;
            }
            else
            {
                e.Cancel = false;
            }
        }

        private void MenuCerrarSesion_Click(object sender, EventArgs e)
        {
            DialogResult dialogo = MessageBox.Show("¿Desea cerrar el programa?",
              "Cerrar el programa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dialogo == DialogResult.No)
            {

            }
            else
            {
                this.Dispose();
            }
        }
        private class MiRenderizador : ToolStripProfessionalRenderer
        {
            protected override void OnRenderMenuItemBackground(ToolStripItemRenderEventArgs e)
            {
                if (!e.Item.Selected) base.OnRenderMenuItemBackground(e);
                else
                {
                    Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
                    e.Graphics.FillRectangle(Brushes.Yellow, rc); //Elige el color que desees
                    e.Graphics.DrawRectangle(Pens.Black, 1, 0, rc.Width - 2, rc.Height - 1);
                    
                }
            }
        }

        private void mntUsuarios_Click(object sender, EventArgs e)
        {
            Mantenimiento_Usuarios mntUsuarios = new Mantenimiento_Usuarios();
            mntUsuarios.MdiParent= this;
            mntUsuarios.StartPosition = FormStartPosition.CenterScreen;
            mntUsuarios.Show();
        }
    }
}
