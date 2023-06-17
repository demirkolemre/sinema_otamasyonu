using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace sinema_otomasyonu
{

    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }
        /*
         * Emre DEmirkol
         * sinama otomasyonu
         */

        MySqlConnectionStringBuilder csb; // Global veritabanı değişkenlerimiz
        MySqlDataAdapter da;
        MySqlConnection baglanti;
        MySqlCommand komut;
        DataTable dt;
        Button butonlar;
        Button b;


        private void Form1_Load(object sender, EventArgs e)
        {
            csb = new MySqlConnectionStringBuilder();
            csb.Server = "localhost";
            csb.UserID = "root";
            csb.Password = "";
            csb.Database = "sinema_otomasyonu";

            baglanti = new MySqlConnection(csb.ConnectionString);// Veritabanı bağlantı ayarları

            komut = new MySqlCommand("select film_id, film_adi from filmler", baglanti);
            vericek(komut, "film_id", "film_adi", comboBox_Film); // Veriçekme fonksiyonu ile filmleri getirme
            listbox_Yenile();
        }
        void listbox_Yenile() // Satılan biletleri listeleme
        {
            baglanti.Open();
            komut = new MySqlCommand("select * from bilet", baglanti);
            da = new MySqlDataAdapter(komut);
            dt = new DataTable();
            da.Fill(dt);
            listBox1.DataSource = dt; // Listboxun kaynak verilerine dt yi ekleme
            listBox1.DisplayMember = "bilet_adi";
            listBox1.ValueMember = "bilet_id";
            baglanti.Close();
        }
        void vericek(MySqlCommand cmd,string istenilen_id,string istenilen_ad, ComboBox cb)
        { 
            baglanti.Open();
            da = new MySqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);

            DataRow dr = dt.NewRow();
            dr[istenilen_id] = 0;
            dr[istenilen_ad] = "Seçiniz";
            dt.Rows.InsertAt(dr, 0);

            cb.DataSource = dt;
            cb.DisplayMember = istenilen_ad;
            cb.ValueMember = istenilen_id;

            baglanti.Close();
        }
        
        private void comboBox_Film_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox_Seans.DataSource = null;
            comboBox_Salon.DataSource = null;
            panel1.Controls.Clear();
            if (comboBox_Film.SelectedIndex !=0)
            {
                komut = new MySqlCommand("select seans.seans_saati,seans.seans_id from seans,filmler,film_seans where filmler.film_id = film_seans.film_id and seans.seans_id = film_seans.seans_id and film_seans.film_id = @film_id", baglanti);
                komut.Parameters.AddWithValue("@film_id", comboBox_Film.SelectedValue);
                vericek(komut, "seans_id", "seans_saati", comboBox_Seans);
                //Seçtiğimiz filme göre seans saatleri getirildi
            }
               
        }
        private void comboBox_Seans_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox_Seans.SelectedIndex != 0)
            {
                comboBox_Salon.DataSource = null;
                panel1.Controls.Clear();
                komut = new MySqlCommand("select salon.salon_adi, salon.salon_id from seans,salon,salon_seans where salon.salon_id = salon_seans.salon_id and seans.seans_id = salon_seans.seans_id and seans.seans_id = @seans_id", baglanti);
                komut.Parameters.AddWithValue("@seans_id",comboBox_Seans.SelectedValue);
                vericek(komut, "salon_id", "salon_adi", comboBox_Salon);
                ///Seçtiğimiz seans saatine göre salon adları getirildi
            }
        }
        void yenile() 
        {
            dolu = 0;
            panel1.Controls.Clear();
            if (comboBox_Salon.SelectedIndex != 0)
            {
                char koltuk_harfi;
                int koltuk_rakam;
                baglanti.Open();
                komut = new MySqlCommand("select koltuk.koltuk_harf,koltuk.koltuk_rakam,koltuk.koltuk_id from koltuk,salon where salon.salon_id = koltuk.salon_id  and salon.salon_id = @salon_id", baglanti);
                komut.Parameters.AddWithValue("@salon_id", comboBox_Salon.SelectedValue);
                // Seçtiğimiz salonun adı salon tablosundakiyle eşitse ve salon tablosundaki koltuk id ve koltuk tablosundaki koltuk id eşitse
                // koltukların harfi ve rakamını getir
                da = new MySqlDataAdapter(komut);
                dt = new DataTable();
                MySqlDataReader dr = komut.ExecuteReader();
                int butonWidth = 85;
                int butonHeight = 50;
                while (dr.Read()) // Her bir koltuğun seçtiğimiz seansa göre harfini ve rakamını getir
                {
                    koltuk_harfi = Convert.ToChar(dr["koltuk_harf"]);
                    koltuk_rakam = Convert.ToInt32(dr["koltuk_rakam"]);
                    butonlar = new Button();
                    butonlar.Name = dr["koltuk_id"].ToString(); //Koltuk tablosunda ki koltuğun id si butonun namesi oluyor.
                    butonlar.Text = koltuk_harfi.ToString() + koltuk_rakam.ToString();
                    butonlar.Size = new Size(butonWidth, butonHeight);
                    butonlar.ForeColor = Color.Black;
                    butonlar.BackColor = Color.Green;
                    butonlar.Location = new Point(((koltuk_harfi - 'A') + 1) * butonWidth, koltuk_rakam * butonHeight + 5); // Oluşturduğumuz butonun konumunu
                    // koltuk harfinin buton boyutu kadar çarpımın soldan konumu ve koltuk rakamının yukardan aşağı konumunu belirleme

                    butonlar.ContextMenuStrip = contextMenuStrip1;

                    panel1.Controls.Add(butonlar);
                    butonlar.MouseClick += Butonlar_MouseClick;
                }

            }
            baglanti.Close();
            foreach (Button item in panel1.Controls) // Paneldeki butonları kontrol et
            {
                baglanti.Open();
                komut = new MySqlCommand("select * from bilet", baglanti);
                da = new MySqlDataAdapter(komut);
                dt = new DataTable();
                MySqlDataReader dr = komut.ExecuteReader();
                while (dr.Read()) // bütün bilet tablosunu tek tek oku
                {
                    if (dr["bilet_id"].ToString() == comboBox_Film.SelectedValue.ToString() + comboBox_Seans.SelectedValue.ToString() + comboBox_Salon.SelectedValue.ToString() + item.Text)
                    { // Eğer bilet id si seans idsi salon id si ve koltuk numarasına eşitse o koltuğu kırmızı yap
                        item.BackColor = Color.Red;
                    }
                }
                baglanti.Close();
            }
            bosmu_dolumu();
        }

        private void Butonlar_MouseClick(object sender, MouseEventArgs e)
        {
            b = sender as Button;
            button_biletsat.Text = b.Text + " Numaralı koltuğu sat";
        }

        private void comboBox_Salon_SelectedIndexChanged(object sender, EventArgs e)
        {
            yenile();
        }

        void biletsat() {
            try
            {
                if (b != null && b.BackColor != Color.Red) // Herhangi bir koltuğa basıldıysa yani b boş değilse
                {
                    b.BackColor = Color.Red;
                    baglanti.Open();
                    komut = new MySqlCommand("insert into bilet(bilet_id,bilet_adi,film_id,seans_id,salon_id,koltuk_id)values(@bilet_id,@bilet_adi,@film_id,@seans_id,@salon_id,@koltuk_id)", baglanti);
                    // bilet tablosuna satılan bileti ekle
                    komut.Parameters.AddWithValue("@bilet_id", comboBox_Film.SelectedValue.ToString() + comboBox_Seans.SelectedValue.ToString() + comboBox_Salon.SelectedValue.ToString() + b.Text);
                    // biletin idsini seansın id si salonun id si ve koltuğun texti yap örneğin / 11K1 Birinci seans birinci salon K1 nolu koltuk
                    komut.Parameters.AddWithValue("@bilet_adi", "Film " + comboBox_Film.SelectedValue.ToString() + " Seans " + comboBox_Seans.SelectedValue.ToString() + " Salon " + comboBox_Salon.SelectedValue.ToString() + " " + b.Text + " Nolu Koltuk");
                    // Biletin adı Seans seans_id Salon salon_id koltuk adı örneğin / Seans 1 Salon 1 K1 Nolu Koltuk
                    komut.Parameters.AddWithValue("@film_id", comboBox_Film.SelectedValue.ToString()); //Seans comboboxundaki seçili elemanın seans id si
                    komut.Parameters.AddWithValue("@seans_id", comboBox_Seans.SelectedValue.ToString()); //Seans comboboxundaki seçili elemanın seans id si
                    komut.Parameters.AddWithValue("@salon_id", comboBox_Salon.SelectedValue.ToString());//Salon comboboxundaki seçili elemanın seans id si
                    komut.Parameters.AddWithValue("@koltuk_id", b.Name); // b.Name koltuk id si olarak atanmıştı koltuk_id onu eklendi
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    listbox_Yenile();
                    bosmu_dolumu();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata var " + ex);
            }

        }
        private void button_biletsat_Click(object sender, EventArgs e)
        {
            biletsat();
        }
        void biletiptal()
        {
            try
            {
                baglanti.Open();
                komut = new MySqlCommand("delete from bilet where bilet_id = @bilet_id", baglanti); // Bilet id si listbox1 deki seçili elemana eşitse
                komut.Parameters.AddWithValue("@bilet_id", comboBox_Film.SelectedValue.ToString() + comboBox_Seans.SelectedValue.ToString() + comboBox_Salon.SelectedValue.ToString() + b.Text);
                komut.ExecuteNonQuery();
                foreach (Button item in panel1.Controls)
                {
                    if (comboBox_Seans.SelectedValue.ToString() + comboBox_Salon.SelectedValue.ToString() + item.Text == listBox1.SelectedValue.ToString())
                    {
                        item.BackColor = Color.Green;
                    }
                }
                baglanti.Close();
                listbox_Yenile();
                bosmu_dolumu();
                b.BackColor = Color.Green;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata var " + ex);
            }
        }
        int bos = 0;
        int dolu = 0;
        void bosmu_dolumu()
        {
            bos = 0;
            dolu = 0;
            foreach (Button item in panel1.Controls)
            {
                if (item.BackColor == Color.Red)
                {
                    dolu++;
                    label_dolu.Text = "Dolu " + dolu.ToString();
                }
                else
                {
                    bos++;
                    label_bos.Text = "Boş " + bos.ToString();
                }
            }
        }

        private void silToolStripMenuItem_Click(object sender, EventArgs e)
        {
            biletsat();
        }

        private void contextMenuStrip1_Opening(object sender, CancelEventArgs e)
        {

        }

        private void biletİptalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            biletiptal();
        }

        private void yenileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            yenile();
        }

        private void button_iptalet_Click(object sender, EventArgs e)
        {
            yenile();
        }
    }
}

