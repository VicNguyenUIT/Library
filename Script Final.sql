create database QuanLyNhaSach
go

USE [QuanLyNhaSach]
GO
/****** Object:  Table [dbo].[BaoCaoThang]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoThang](
	[Id] [int] NOT NULL,
	[DateOutput] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBanSach]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBanSach](
	[Id] [int] NOT NULL,
	[DateOutput] [datetime] NULL,
	[TongTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MoreInfo] [nvarchar](max) NULL,
	[TienNo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[Id] [int] NOT NULL,
	[DateInput] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuThutien]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThutien](
	[Id] [int] NOT NULL,
	[IdKhachHang] [int] NOT NULL,
	[NgayThuTien] [datetime] NULL,
	[SoTienThu] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quydinh]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quydinh](
	[Id] [int] NOT NULL,
	[Nhaptoithieu] [int] NULL,
	[Sachtontoithieu_Nhap] [int] NULL,
	[Sachtontoithieu_Ban] [int] NULL,
	[TienNo] [int] NULL,
	[Phieuthutien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[Id] [int] NOT NULL,
	[TenSach] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[TacGia] [nvarchar](40) NULL,
	[TheLoai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinBaoCaoThang]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBaoCaoThang](
	[Id] [int] NOT NULL,
	[IdBaoCao] [int] NOT NULL,
	[IdSach] [int] NOT NULL,
	[TenSach] [nvarchar](max) NULL,
	[Tondau] [int] NULL,
	[Soluongban] [int] NULL,
	[Soluongnhap] [int] NULL,
	[Toncuoi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinHoaDon]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHoaDon](
	[Id] [int] NOT NULL,
	[IdSach] [int] NOT NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdInputInfo] [int] NULL,
	[IdKhachhang] [int] NULL,
	[Count] [int] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinPhieuNhap]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinPhieuNhap](
	[Id] [int] NOT NULL,
	[IdSach] [int] NOT NULL,
	[IdPhieunhap] [int] NOT NULL,
	[Count] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[DonGiaBan] [float] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/4/2019 10:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[IdRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[BaoCaoThang] ([Id], [DateOutput]) VALUES (62019, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[HoaDonBanSach] ([Id], [DateOutput], [TongTien]) VALUES (1, CAST(0x0000AA7C00000000 AS DateTime), 20000)
INSERT [dbo].[HoaDonBanSach] ([Id], [DateOutput], [TongTien]) VALUES (2, CAST(0x0000AA7C00000000 AS DateTime), 20000)
INSERT [dbo].[HoaDonBanSach] ([Id], [DateOutput], [TongTien]) VALUES (3, CAST(0x0000AA7C00000000 AS DateTime), 20000)
INSERT [dbo].[HoaDonBanSach] ([Id], [DateOutput], [TongTien]) VALUES (4, CAST(0x0000AA7C00000000 AS DateTime), 20000)
INSERT [dbo].[HoaDonBanSach] ([Id], [DateOutput], [TongTien]) VALUES (5, CAST(0x0000AA7C00000000 AS DateTime), 20000)
INSERT [dbo].[HoaDonBanSach] ([Id], [DateOutput], [TongTien]) VALUES (6, CAST(0x0000AA7E00000000 AS DateTime), 43000)
INSERT [dbo].[KhachHang] ([Id], [HoTen], [Address], [Phone], [Email], [MoreInfo], [TienNo]) VALUES (225757754, N'Phạm Tấn Khoa', N'KTX Khu A, ĐHQG TP.HCM', N'0969598861', N'khoapham123vn@gmail.com', NULL, 0)
INSERT [dbo].[PhieuNhap] ([Id], [DateInput]) VALUES (1, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[PhieuNhap] ([Id], [DateInput]) VALUES (2, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[PhieuThutien] ([Id], [IdKhachHang], [NgayThuTien], [SoTienThu]) VALUES (1, 225757754, CAST(0x0000AA7C00000000 AS DateTime), 10000)
INSERT [dbo].[PhieuThutien] ([Id], [IdKhachHang], [NgayThuTien], [SoTienThu]) VALUES (2, 225757754, CAST(0x0000AA7E00000000 AS DateTime), 30000)
INSERT [dbo].[Quydinh] ([Id], [Nhaptoithieu], [Sachtontoithieu_Nhap], [Sachtontoithieu_Ban], [TienNo], [Phieuthutien]) VALUES (1, 150, 300, 20, 20000, 1)
INSERT [dbo].[Sach] ([Id], [TenSach], [SoLuong], [TacGia], [TheLoai]) VALUES (111, N'Nhập Môn Công Nghệ Phần Mềm', 294, N'Nguyễn Công Hoan', N'Lập trình')
INSERT [dbo].[Sach] ([Id], [TenSach], [SoLuong], [TacGia], [TheLoai]) VALUES (112, N'Nhập Môn Lập Trình', 399, N'Phạm Tấn Khoa', N'Lập trình')
INSERT [dbo].[ThongTinBaoCaoThang] ([Id], [IdBaoCao], [IdSach], [TenSach], [Tondau], [Soluongban], [Soluongnhap], [Toncuoi]) VALUES (1, 62019, 111, N'Nhập Môn Công Nghệ Phần Mềm', 0, 5, 300, 295)
INSERT [dbo].[ThongTinBaoCaoThang] ([Id], [IdBaoCao], [IdSach], [TenSach], [Tondau], [Soluongban], [Soluongnhap], [Toncuoi]) VALUES (2, 62019, 112, N'Nhập Môn Lập Trình', 0, 0, 400, 400)
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (1, 111, 1, NULL, 225757754, 1, N'Tien mat')
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (2, 111, 2, NULL, 225757754, 1, N'Ghi no')
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (3, 111, 3, NULL, 225757754, 1, N'Tien mat')
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (4, 111, 4, NULL, 225757754, 1, N'Tien mat')
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (5, 111, 5, NULL, 225757754, 1, N'Ghi no')
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (6, 111, 6, NULL, 225757754, 1, N'Tien mat')
INSERT [dbo].[ThongTinHoaDon] ([Id], [IdSach], [IdHoaDon], [IdInputInfo], [IdKhachhang], [Count], [Status]) VALUES (7, 112, 6, NULL, 225757754, 1, N'Tien mat')
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSach], [IdPhieunhap], [Count], [DonGiaNhap], [DonGiaBan], [Status]) VALUES (1, 111, 1, 300, 15000, 20000, NULL)
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSach], [IdPhieunhap], [Count], [DonGiaNhap], [DonGiaBan], [Status]) VALUES (2, 112, 2, 400, 17000, 23000, NULL)
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [DisplayName]) VALUES (1, N'Admin')
INSERT [dbo].[UserRole] ([Id], [DisplayName]) VALUES (2, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [DisplayName], [UserName], [Password], [IdRole]) VALUES (1, N'Quản Lý', N'admin', N'admin', 1)
INSERT [dbo].[Users] ([Id], [DisplayName], [UserName], [Password], [IdRole]) VALUES (2, N'Nhân viên', N'staff', N'staff', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [TienNo]
GO
ALTER TABLE [dbo].[Quydinh] ADD  DEFAULT ((0)) FOR [Nhaptoithieu]
GO
ALTER TABLE [dbo].[Quydinh] ADD  DEFAULT ((0)) FOR [Sachtontoithieu_Nhap]
GO
ALTER TABLE [dbo].[Quydinh] ADD  DEFAULT ((0)) FOR [Sachtontoithieu_Ban]
GO
ALTER TABLE [dbo].[Quydinh] ADD  DEFAULT ((0)) FOR [TienNo]
GO
ALTER TABLE [dbo].[Quydinh] ADD  DEFAULT ((1)) FOR [Phieuthutien]
GO
ALTER TABLE [dbo].[ThongTinBaoCaoThang] ADD  DEFAULT ((0)) FOR [Tondau]
GO
ALTER TABLE [dbo].[ThongTinBaoCaoThang] ADD  DEFAULT ((0)) FOR [Soluongban]
GO
ALTER TABLE [dbo].[ThongTinBaoCaoThang] ADD  DEFAULT ((0)) FOR [Soluongnhap]
GO
ALTER TABLE [dbo].[ThongTinBaoCaoThang] ADD  DEFAULT ((0)) FOR [Toncuoi]
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap] ADD  DEFAULT ((0)) FOR [DonGiaNhap]
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap] ADD  DEFAULT ((0)) FOR [DonGiaBan]
GO
ALTER TABLE [dbo].[PhieuThutien]  WITH CHECK ADD FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[ThongTinBaoCaoThang]  WITH CHECK ADD FOREIGN KEY([IdBaoCao])
REFERENCES [dbo].[BaoCaoThang] ([Id])
GO
ALTER TABLE [dbo].[ThongTinBaoCaoThang]  WITH CHECK ADD FOREIGN KEY([IdSach])
REFERENCES [dbo].[Sach] ([Id])
GO
ALTER TABLE [dbo].[ThongTinHoaDon]  WITH CHECK ADD FOREIGN KEY([IdInputInfo])
REFERENCES [dbo].[ThongTinPhieuNhap] ([Id])
GO
ALTER TABLE [dbo].[ThongTinHoaDon]  WITH CHECK ADD FOREIGN KEY([IdKhachhang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[ThongTinHoaDon]  WITH CHECK ADD FOREIGN KEY([IdSach])
REFERENCES [dbo].[Sach] ([Id])
GO
ALTER TABLE [dbo].[ThongTinHoaDon]  WITH CHECK ADD FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDonBanSach] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap]  WITH CHECK ADD FOREIGN KEY([IdPhieunhap])
REFERENCES [dbo].[PhieuNhap] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap]  WITH CHECK ADD FOREIGN KEY([IdSach])
REFERENCES [dbo].[Sach] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[UserRole] ([Id])
GO
