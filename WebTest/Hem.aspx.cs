using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class Hem : System.Web.UI.Page
    {
        PersonalEntities _db = new PersonalEntities();
        Personal personal = new Personal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Clear();
            ShowData();
            if (!IsPostBack)
            {
                btnRadera.Enabled = false;
            }
        }
        void Clear()
        {
            txtNamn.Text = txtÅlder.Text = txtSmeknamn.Text;
            btnSpara.Text = "Save";
            LblJa.Text = LblNej.Text = "";
            btnRadera.Enabled = false;
            personal.Id = 0;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddData();
            
        }
        private void ShowData()
        {
            using (PersonalEntities _db = new PersonalEntities())
            {

                var showData = from p in _db.Personals
                               select new { p.Namn, p.Ålder, p.Smeknamn };

                grdData.DataSource = showData.ToList();
                grdData.DataBind();
                    
            }
        }
        private void AddData()
        {
                personal.Namn = txtNamn.Text.Trim();
                personal.Ålder = Convert.ToInt32(txtÅlder.Text.Trim());
           
            personal.Smeknamn = txtSmeknamn.Text.Trim();
            using (PersonalEntities _db = new PersonalEntities())
            {
                if (personal.Id == 0)
                {
                    _db.Personals.Add(personal);
                }
                else
                {
                    _db.Entry(personal).State = System.Data.Entity.EntityState.Modified;
                }

                
                _db.SaveChanges();
                Clear();
                ShowData();
                //_db.Personals.Add(personal);
                //_db.SaveChanges();
            }
        }
    }
}