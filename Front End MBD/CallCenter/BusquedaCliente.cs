using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CallCenter
{
    public partial class BusquedaCliente : Form
    {
        public BusquedaCliente()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Historial = new Historial();
            Historial.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form BusquedaCuenta = new BusquedaCuenta();
            BusquedaCuenta.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form BusquedaCuenta = new BusquedaCuenta();
            BusquedaCuenta.Show();
        }

        private void BusquedaCliente_Load(object sender, EventArgs e)
        {

        }

        private void CerrarSesion_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form InicioSesion = new InicioSesion();
            InicioSesion.Show();
        }
    }
}
