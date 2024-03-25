using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Web.Services.Description;

namespace MP2_IT114L
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public void AddRecord_Click(object sender, EventArgs e)
        {
            string recordName = TB_RecordName.Text;
            string genre = DL_Genre.SelectedItem.Text;
            float price = int.Parse(TB_Price.Text);
            int stock = int.Parse(TB_Stock.Text);
            string description = TB_Description.Text;

            var RecordRepository = new RecordRepository();
            RecordRepository.AddRecord(recordName, genre, price, stock, description);
        }

        public void DeleteRecord_Click(Object sender, EventArgs e)
        {
            string recordName = TB_DEL_RecordName.Text;

            var RecordRepository = new RecordRepository();
            RecordRepository.DeleteRecord(recordName);
        }

        public void AddToCart_Click(Object sender, EventArgs e)
        {
            string productId = TB_ProductId.Text;
            int quantity = int.Parse(TB_Quantity.Text);

            var CartRepository = new CartRepository();
            CartRepository.AddToCart(productId, quantity);
        }

        public IEnumerable<Record> recordRepository = new List<Record>();

        protected void Page_Load(object sender, EventArgs e)
        {
            var RecordRepository = new RecordRepository();
            recordRepository = RecordRepository.GetAllProductId();
            //PostRepeater.DataSource = posts;
            //PostRepeater.DataBind();
        }
    }
}