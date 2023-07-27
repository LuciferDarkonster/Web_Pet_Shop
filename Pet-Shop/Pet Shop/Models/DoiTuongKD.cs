//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pet_Shop.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DoiTuongKD
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DoiTuongKD()
        {
            this.CT_HoaDon = new HashSet<CT_HoaDon>();
            this.CT_PhieuDat = new HashSet<CT_PhieuDat>();
            this.GioHangs = new HashSet<GioHang>();
            this.HinhAnhDTKDs = new HashSet<HinhAnhDTKD>();
        }
    
        public string MaDT { get; set; }
        public Nullable<decimal> DonGia { get; set; }
        public Nullable<bool> TrangThai { get; set; }
        public Nullable<decimal> GiamGia { get; set; }
        public string MoTa { get; set; }
        public string ChiTiet { get; set; }
        public string AnhDaiDien { get; set; }
        public string MaPLDTKD { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CT_HoaDon> CT_HoaDon { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CT_PhieuDat> CT_PhieuDat { get; set; }
        public virtual DichVu DichVu { get; set; }
        public virtual DoDungTC DoDungTC { get; set; }
        public virtual PhanLoaiDTKD PhanLoaiDTKD { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HinhAnhDTKD> HinhAnhDTKDs { get; set; }
        public virtual ThuCung ThuCung { get; set; }
    }
}
