﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TReEDeCor.Models;

namespace TReEDeCor.Controllers
{
    public class NguoiDungController : Controller
    {
        // GET: NguoiDung
        public ActionResult Index()
        {
            return View();
        }
        DatabaseDataContext db = new DatabaseDataContext();
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }



        [HttpPost]
        public ActionResult DangKy(FormCollection collection, NGUOIDUNG ngd)
        {
            var hoten = collection["HoTen"];
            var tendn = collection["TenDangNhap"];
            var email = collection["Email"];
            var diachi = collection["DiaChi"];
            var matkhau = collection["MatKhau"];
            var rematkhau = collection["Rematkhau"];
            var sdt = collection["SDT"];
            var ngaysinh = String.Format("{0:MM/dd/yyyy}", collection["NgaySinh"]);
           
            NGUOIDUNG tk = db.NGUOIDUNGs.SingleOrDefault(n => n.Taikhoan == tendn);
            NGUOIDUNG em = db.NGUOIDUNGs.SingleOrDefault(n => n.Email == email);
            if (tk != null)
            {
                ViewData["loi11"] = "Tài khoản đã tồn tại!";
            }
            else if (em != null)
            {
                ViewData["loi12"] = "Email đã tồn tại!";
            }
            else if (matkhau == rematkhau)
            {
                ngd.HoTen = hoten;
                ngd.Taikhoan = tendn;
                ngd.Matkhau = matkhau;
                ngd.Email = email;
                ngd.Diachi = diachi;
                ngd.Dienthoai = sdt;
                ngd.Ngaysinh = DateTime.Parse(ngaysinh);
                db.NGUOIDUNGs.InsertOnSubmit(ngd);
                db.SubmitChanges();
                return RedirectToAction("Dangnhap");
            }
            else
            {
                ViewBag.ThongBao = "Mật Khẩu Không Khớp!";
            }
  
                return this.DangKy();
        }

        public ActionResult Dangnhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Dangnhap(FormCollection collection)
        {
        var tendn = collection["TenDangNhap"];
        var matkhau = collection["MatKhau"];
        NGUOIDUNG ngdung = db.NGUOIDUNGs.SingleOrDefault(n => n.Taikhoan == tendn && n.Matkhau == matkhau);
        if (ngdung != null)
            {
                Session["Taikhoan"] = ngdung;
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.ThongBao = "Tên Đăng Nhập Hoặc Tài Khoản Không Đúng";
            }               
            return View();
        }

        public ActionResult Dangxuat()
        {
            Session.Clear();
            return RedirectToAction("Index","Home");
        }
    }
}