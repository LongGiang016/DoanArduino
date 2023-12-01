class UserModel {
  final String? id;
  final String? email;
  final String? password;
  final String? tenTaiKhoan;
  final bool? gioiTinh;
  final int? maNha;
  final int? quyen;
  const UserModel(
      {this.id,
      required this.email,
      required this.password,
      required this.gioiTinh,
      required this.maNha,
      required this.tenTaiKhoan,
      required this.quyen});

  toJson() {
    return {
      "Email": email,
      "Password": password,
      "TenTaiKhoan": tenTaiKhoan,
      "GioiTinh": gioiTinh,
      "MaNha": maNha,
      "Quyen": quyen
    };
  }
}
