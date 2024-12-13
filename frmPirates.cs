using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql;
using MySql.Data.MySqlClient;

namespace _046_Pamittan_Agcanas_F2
{
    public partial class frmPirates : Form
    {
        DataTable dt;
        string connStr = "server = localhost; database=dbpirates; uid=root; pwd=uslt; port=3306;";
        MySqlConnection conn;

        public frmPirates()
        {
            InitializeComponent();
        }

        private void frmPirates_Load(object sender, EventArgs e)
        {
            string query = "select prgname from pirategroup";
            conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(query, conn);
            MySqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                cboPirateGrp.Items.Add(dr["prgname"].ToString());
            }
            conn.Close();


            selectAll("Select * from crew c join pirategroup p on c.prgid = p.prgid");


        }

        void selectAll(string _query)
        {
            MySqlCommand cmd = new MySqlCommand(_query, conn);
            MySqlDataAdapter adt = new MySqlDataAdapter(cmd);
            dt = new DataTable();
            adt.Fill(dt);
            dtgPirate.DataSource = dt;
        }
    }
}
