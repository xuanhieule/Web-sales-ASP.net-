namespace BAN_HANG
{
    public class TaiKhoan
    {
        public string id;
        public string hoTen;
        public string tenDN;
        public string hinh;
        public string quyen;
        public TaiKhoan(string id, string hoTen
            , string tenDN, string hinh, string quyen)
        {
            this.id = id;
            this.hoTen = hoTen;
            this.tenDN = tenDN;
            this.hinh = hinh;
            this.quyen = quyen;
        }
    }
}