//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyNhaSach1
{
    using System;
    using System.Collections.Generic;
    
    public partial class ThongTinHoaDon
    {
        public int Id { get; set; }
        public int IdSach { get; set; }
        public int IdHoaDon { get; set; }
        public Nullable<int> IdInputInfo { get; set; }
        public Nullable<int> IdKhachhang { get; set; }
        public Nullable<int> Count { get; set; }
        public string Status { get; set; }
    
        public virtual HoaDonBanSach HoaDonBanSach { get; set; }
        public virtual KhachHang KhachHang { get; set; }
        public virtual Sach Sach { get; set; }
        public virtual ThongTinPhieuNhap ThongTinPhieuNhap { get; set; }
    }
}
