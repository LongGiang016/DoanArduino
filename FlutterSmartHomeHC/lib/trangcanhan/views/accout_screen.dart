import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Acount.dart';
import 'ListAccount.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  
  Account NamKhoa = Account("Trần Huỳnh Nam Khoa","0305213211", "TranHuynhNamKhoa@gmail.com", 1, "", 1,"1234567Khoa");

  @override
  Widget build(BuildContext context) {
    String gioiTinh = NamKhoa.getGioiTinh();
    String LoaiThanhVien = NamKhoa.GetLoaiThanhVien();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
    'Tài khoản',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
  backgroundColor: Color(0xFF518FFD),
        
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            
             color : Color(0xFFF8F8F8)
          ),
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10,top: 10,),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.5, color: Colors.grey)
              
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                             
                               borderRadius: BorderRadius.circular(300),
                              
                               
        
                            ),
                            child: 
                            Image.network('https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                          ),
                          SizedBox(width: 10),
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            
                            children: [
                              Row(
                                children: [
                                  Text("Họ và tên:", style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(NamKhoa.name),
                                ],
                              ),
                             
                              Row(
                                children: [
                                  Text("Loại thành viên:",style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(LoaiThanhVien),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
        
                    
        
                    Container(
                       margin: EdgeInsets.symmetric(vertical: 30),
                      
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.5, color: Colors.grey)
                        
              
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            height: 30,
                            decoration: BoxDecoration(
                              color : Color(0xFF518FFD),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                               border: Border.all(width: 0.1, color: Colors.grey)
                            ),
                            child: Row(
                              children: [
                                Text("Thông tin tài khoản", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: BoxDecoration(
                               //border: Border.all(width: 0.1, color: Colors.grey)
                             
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tên tài khoản: ${NamKhoa.name}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )
                                    ),
                                    minimumSize: MaterialStateProperty.all<Size>(Size.square(20)),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  ),
                                  onPressed: (){
                                    showModalBottomSheet(
                                      context: context, 
                                      builder:(BuildContext context){
                                        return SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                             Container(
                                               margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                                padding: EdgeInsets.symmetric(horizontal:50),
                                              decoration: BoxDecoration(
                                                 color : Color(0xFF518FFD),
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(width: 0.5, color: Colors.grey)
                                              ),
                                              child: 
                                               Text("Chỉnh sửa tên tài khoản", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                             ),
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(30),

                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5 , right: 30),
                                                      height: 50,
                                                      width: 250,
                                                      child: TextFormField(

                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "Sửa tên tại đây.."
                                                        ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.person,
                                                       color : Color(0xFF518FFD),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(50),
                                                    )
                                                  ),
                                                   minimumSize: MaterialStateProperty.all<Size>(Size(70, 50)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF518FFD),),
                                                ),
                                                onPressed: (){},
                                                child: Text("Lưu"),

                                              )
                                              
                                            ],
                                          ),
                                        );
                                      }
                                      );
                                  }, 
                                  child:  Icon(
                                  Icons.edit,
                                   color : Color(0xFF31966B),
                                   size: 20,
                                   
                                  ),
                                )
                                
                              ],
                            ),
                          ),
                           Container(
                            padding: EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: BoxDecoration(
                               //border: Border.all(width: 0.5, color: Colors.grey)
                             
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Số điện thoại: ${NamKhoa.phoneNumber}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )
                                    ),
                                    minimumSize: MaterialStateProperty.all<Size>(Size.square(20)),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  ),
                                  onPressed: (){
                                    showModalBottomSheet(
                                      context: context, 
                                      builder:(BuildContext context){
                                        return SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                             Container(
                                               margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                                padding: EdgeInsets.symmetric(horizontal:50),
                                              decoration: BoxDecoration(
                                                 color : Color(0xFF518FFD),
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(width: 0.5, color: Colors.grey)
                                              ),
                                              child: 
                                               Text("Chỉnh sửa số điện thoại", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                             ),
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(30),

                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5 , right: 30),
                                                      height: 50,
                                                      width: 250,
                                                      child: TextFormField(

                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "Sửa SĐT tại đây.."
                                                        ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.phone,
                                                       color : Color(0xFF518FFD),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(50),
                                                    )
                                                  ),
                                                   minimumSize: MaterialStateProperty.all<Size>(Size(70, 50)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF518FFD),),
                                                ),
                                                onPressed: (){},
                                                child: Text("Lưu"),

                                              )
                                              
                                            ],
                                          ),
                                        );
                                      }
                                      );
                                  }, 
                                  child:  Icon(
                                  Icons.edit,
                                   color : Color(0xFF31966B),
                                   size: 20,
                                   
                                  ),
                                )
                              ],
                            ),
                          ),
                           Container(
                            padding: EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: BoxDecoration(
                              // border: Border.all(width: 0.5, color: Colors.grey)
                             
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Giới tính : $gioiTinh"),
                               ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )
                                    ),
                                    minimumSize: MaterialStateProperty.all<Size>(Size.square(20)),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  ),
                                  onPressed: (){
                                    // showModalBottomSheet(
                                    //   context: context, 
                                    //   builder:(BuildContext context){
                                    //     return SizedBox(
                                    //       height: 300,
                                    //       child: Column(
                                    //         children: [
                                    //          Container(
                                    //            margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                    //             padding: EdgeInsets.symmetric(horizontal:50),
                                    //           decoration: BoxDecoration(
                                    //              color : Color(0xFF518FFD),
                                    //             borderRadius: BorderRadius.circular(10),
                                    //             border: Border.all(width: 0.5, color: Colors.grey)
                                    //           ),
                                    //           child: 
                                    //            Text("Chỉnh sửa tên tài khoản", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                    //          ),
                                    //           Container(
                                    //             margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
                                    //             padding: EdgeInsets.symmetric(horizontal: 10),
                                    //             height: 50,
                                    //             decoration: BoxDecoration(
                                    //               color: Colors.white,
                                    //               borderRadius: BorderRadius.circular(30),

                                    //             ),
                                    //             child: Row(
                                    //               children: [
                                    //                 Container(
                                    //                   margin: EdgeInsets.only(left: 5 , right: 30),
                                    //                   height: 50,
                                    //                   width: 250,
                                    //                   child: TextFormField(

                                    //                     decoration: InputDecoration(
                                    //                       border: InputBorder.none,
                                    //                       hintText: "Sửa tên tại đây.."
                                    //                     ),
                                    //                   ),
                                    //                 ),
                                    //                 Icon(
                                    //                   Icons.person,
                                    //                    color : Color(0xFF518FFD),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //           ElevatedButton(
                                    //             style: ButtonStyle(
                                    //               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    //                 RoundedRectangleBorder(
                                    //                   borderRadius: BorderRadius.circular(50),
                                    //                 )
                                    //               ),
                                    //                minimumSize: MaterialStateProperty.all<Size>(Size(70, 50)),
                                    //               backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF518FFD),),
                                    //             ),
                                    //             onPressed: (){},
                                    //             child: Text("Lưu"),

                                    //           )
                                              
                                    //         ],
                                    //       ),
                                    //     );
                                    //   }
                                    //   );
                                  }, 
                                  child:  Icon(
                                  Icons.edit,
                                   color : Color(0xFF31966B),
                                   size: 20,
                                   
                                  ),
                                )
                              ],
                            ),
                          ),
                           Container(
                            padding: EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: BoxDecoration(
                              // border: Border.all(width: 0.5, color: Colors.grey)
                             
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Gmail: ${NamKhoa.email}"),
                                 ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )
                                    ),
                                    minimumSize: MaterialStateProperty.all<Size>(Size.square(20)),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  ),
                                  onPressed: (){
                                    showModalBottomSheet(
                                      context: context, 
                                      builder:(BuildContext context){
                                        return SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                             Container(
                                               margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                                padding: EdgeInsets.symmetric(horizontal:50),
                                              decoration: BoxDecoration(
                                                 color : Color(0xFF518FFD),
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(width: 0.5, color: Colors.grey)
                                              ),
                                              child: 
                                               Text("Chỉnh sửa gmail", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                             ),
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(30),

                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5 , right: 30),
                                                      height: 50,
                                                      width: 250,
                                                      child: TextFormField(

                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "Sửa Gmail tại đây.."
                                                        ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.email,
                                                       color : Color(0xFF518FFD),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(50),
                                                    )
                                                  ),
                                                   minimumSize: MaterialStateProperty.all<Size>(Size(70, 50)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF518FFD),),
                                                ),
                                                onPressed: (){},
                                                child: Text("Lưu"),

                                              )
                                              
                                            ],
                                          ),
                                        );
                                      }
                                      );
                                  }, 
                                  child:  Icon(
                                  Icons.edit,
                                   color : Color(0xFF31966B),
                                   size: 20,
                                   
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3, right: 3),
                            height: 30,
                            decoration: BoxDecoration(
                               //border: Border.all(width: 0.5, color: Colors.grey)
                             
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mật khẩu: ${NamKhoa.matkhau}"),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )
                                    ),
                                    minimumSize: MaterialStateProperty.all<Size>(Size.square(20)),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  ),
                                  onPressed: (){
                                    showModalBottomSheet(
                                      context: context, 
                                      builder:(BuildContext context){
                                        return SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                             Container(
                                               margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                                                padding: EdgeInsets.symmetric(horizontal:50),
                                              decoration: BoxDecoration(
                                                 color : Color(0xFF518FFD),
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(width: 0.5, color: Colors.grey)
                                              ),
                                              child: 
                                               Text("Chỉnh sửa mật khẩu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                             ),
                                             
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(30),

                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5 , right: 30),
                                                      height: 50,
                                                      width: 250,
                                                      child: TextFormField(

                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "Sửa mật khẩu tại đây.."
                                                        ),
                                                      ),
                                                    ),

                                                     
                                                    Icon(
                                                      Icons.password_rounded,
                                                       color : Color(0xFF518FFD),
                                                    )
                                                  ],
                                                ),
                                              ),

                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10 ),
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(30),

                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5 , right: 30),
                                                      height: 50,
                                                      width: 250,
                                                      child: TextFormField(

                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "Nhập lại mật khẩu.."
                                                        ),
                                                      ),
                                                    ),

                                                     
                                                    Icon(
                                                      Icons.password,
                                                       color : Color(0xFF518FFD),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              ElevatedButton(
                                                style: ButtonStyle(
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(50),
                                                    )
                                                  ),
                                                   minimumSize: MaterialStateProperty.all<Size>(Size(70, 50)),
                                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF518FFD),),
                                                ),
                                                onPressed: (){},
                                                child: Text("Lưu"),

                                              )
                                              
                                            ],
                                          ),
                                        );
                                      }
                                      );
                                  }, 
                                  child:  Icon(
                                  Icons.edit,
                                   color : Color(0xFF31966B),
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
                        border: Border.all(width: 0.5, color: Colors.grey)
                        
              
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            height: 30,
                            decoration: BoxDecoration(
                              
                              color : Color(0xFF518FFD),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                               border: Border.all(width: 0.1, color: Colors.grey)
                            ),
                            child: Row(
                              children: [
                                Text("Thành viên", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          ListAcout()
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