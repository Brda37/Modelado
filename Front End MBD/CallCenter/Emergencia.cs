﻿using System;
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
    public partial class Emergencia : Form
    {
        public Emergencia()
        {
            InitializeComponent();
        }

        private void Salir_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form BusquedaCliente = new BusquedaCliente();
            BusquedaCliente.Show();  
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Emergencia = new Emergencia();
            Emergencia.Show();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Historial = new Historial();
            Historial.Show();
        }

        private void Historial_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Historial = new Historial();
            Historial.Show();
        }

        private void NuevoCaso_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form NuevoCaso = new NuevoCaso();
            NuevoCaso.Show();
        }

        private void herramientasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Facturacion = new Facturacion();
            Facturacion.Show();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Lectura = new Lectura();
            Lectura.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form Historial = new Historial();
            Historial.Show();
        }

        private void checkBox9_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
