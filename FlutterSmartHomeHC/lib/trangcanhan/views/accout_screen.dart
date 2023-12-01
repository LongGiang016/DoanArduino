import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/models/CRUD.dart';
import 'package:flutter_application_1/models/DuLieuRealtime.dart';
import 'Acount.dart';
import 'ListAccount.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({super.key});
  int id = 1;

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  Account NamKhoa = Account("Trần Huỳnh Nam Khoa", "0305213211",
      "TranHuynhNamKhoa@gmail.com", 1, "", 1, "1234567Khoa");

  List<TaiKhoan> lst_user = [];
  TaiKhoan taiKhoan1 = TaiKhoan(
      Email: "",
      MaNha: 1,
      GioiTinh: 1,
      TenTaiKhoan: "",
      TrangThai: false,
      id: 1,
      matKhau: "");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setupUser();
  }

  _setupUser() async {
    List<TaiKhoan> taikhoan = await databaseSmartHome.GetTaiKhoan();
    
    setState(() {
      lst_user = taikhoan;
      for (var us in lst_user) {
        if (us.id == widget.id) {
          taiKhoan1 = us;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String gioiTinh = NamKhoa.getGioiTinh();
    String LoaiThanhVien = NamKhoa.GetLoaiThanhVien();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Tài khoản',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF518FFD),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFF8F8F8)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                            ),
                            child: Image.network(
                                'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    taiKhoan1.TenTaiKhoan.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(NamKhoa.name),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(taiKhoan1.Quyen.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(LoaiThanhVien),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xFF518FFD),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                border:
                                    Border.all(width: 0.1, color: Colors.grey)),
                            child: const Row(
                              children: [
                                Text("Thông tin tài khoản",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: const BoxDecoration(
                                //border: Border.all(width: 0.1, color: Colors.grey)

                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "Tên tài khoản: ${taiKhoan1.TenTaiKhoan.toString()}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            const Size.square(20)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return SizedBox(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 50),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF518FFD),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color: Colors.grey)),
                                                  child: const Text(
                                                    "Chỉnh sửa tên tài khoản",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 30),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            left: 5, right: 30),
                                                        height: 50,
                                                        width: 250,
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "Sửa tên tại đây.."),
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons.person,
                                                        color:
                                                            Color(0xFF518FFD),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    )),
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    70, 50)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFF518FFD),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text("Lưu"),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF31966B),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: const BoxDecoration(
                                //border: Border.all(width: 0.5, color: Colors.grey)

                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Số điện thoại: ${NamKhoa.phoneNumber}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            const Size.square(20)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return SizedBox(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 50),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF518FFD),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color: Colors.grey)),
                                                  child: const Text(
                                                    "Chỉnh sửa số điện thoại",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 30),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            left: 5, right: 30),
                                                        height: 50,
                                                        width: 250,
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "Sửa SĐT tại đây.."),
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons.phone,
                                                        color:
                                                            Color(0xFF518FFD),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    )),
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    70, 50)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFF518FFD),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text("Lưu"),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF31966B),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: const BoxDecoration(
                                // border: Border.all(width: 0.5, color: Colors.grey)

                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Giới tính : ${taiKhoan1.GioiTinh}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            const Size.square(20)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF31966B),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: const BoxDecoration(
                                // border: Border.all(width: 0.5, color: Colors.grey)

                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Gmail: ${taiKhoan1.Email}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            const Size.square(20)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return SizedBox(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 50),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF518FFD),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color: Colors.grey)),
                                                  child: const Text(
                                                    "Chỉnh sửa gmail",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 30),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            left: 5, right: 30),
                                                        height: 50,
                                                        width: 250,
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "Sửa Gmail tại đây.."),
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons.email,
                                                        color:
                                                            Color(0xFF518FFD),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    )),
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    70, 50)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFF518FFD),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text("Lưu"),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF31966B),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: const BoxDecoration(
                                //border: Border.all(width: 0.5, color: Colors.grey)

                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mật khẩu: ${taiKhoan1.matKhau}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            const Size.square(20)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return SizedBox(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 50),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF518FFD),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color: Colors.grey)),
                                                  child: const Text(
                                                    "Chỉnh sửa mật khẩu",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 30),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            left: 5, right: 30),
                                                        height: 50,
                                                        width: 250,
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "Sửa mật khẩu tại đây.."),
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons.password_rounded,
                                                        color:
                                                            Color(0xFF518FFD),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            left: 5, right: 30),
                                                        height: 50,
                                                        width: 250,
                                                        child: TextFormField(
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "Nhập lại mật khẩu.."),
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons.password,
                                                        color:
                                                            Color(0xFF518FFD),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                    )),
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    70, 50)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFF518FFD),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text("Lưu"),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF31966B),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xFF518FFD),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                border:
                                    Border.all(width: 0.1, color: Colors.grey)),
                            child: const Row(
                              children: [
                                Text(
                                  "Thành viên",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const ListAcout()
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
