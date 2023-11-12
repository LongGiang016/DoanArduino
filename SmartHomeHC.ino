//Giang
#include <LiquidCrystal_I2C.h>
#include<Wire.h>
LiquidCrystal_I2C lcd(0x27, 16, 2);
int btn_pass0 = 7;
int btn_pass1 = 1;
int dem = 0;
const String MatKhau = "000111";
String MatKhauInput = "";
int stt_lastpass0 = 0;
int stt_lastpass1 = 0;
unsigned long t_pre = 0;
bool ThoiGianCho = false;
bool baomat = false;

//Khoa
byte btn_stt_P1 = 0;
byte last_btn_stt_P1 = 0;
byte btn_stt_P2 = 0;
byte last_btn_stt_P2 = 0;
byte stt_P1 = 0;
byte stt_P2 =0;
byte dem_P1=0;
byte dem_P2=0;
unsigned long t_P1 = -1;
unsigned long t_P2 = -1;
//Kha
byte dem_WC = 0;
byte dem_Khach = 0;
byte dem_TH = 0;
byte stt_WC = 0;
byte stt_Khach = 0;
byte stt_TH = 0;
//Huy
int btn_last_BaoBenh = 0;
int dem_BB =  0;
bool DenNhapNhay = false;
unsigned long t_preh = 0;


void setup() {
  //Khoa
  pinMode(11,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(5,INPUT);
  pinMode(6,INPUT);
  //Kha
  pinMode(2,INPUT);
  pinMode(3,INPUT);
  pinMode(4,INPUT);
  pinMode(9,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  //Huy
  pinMode(7,INPUT);
  pinMode(8,INPUT);
  //Giang
  pinMode(btn_pass0, INPUT);
  pinMode(btn_pass1, INPUT);
  lcd.begin(16, 2);
  lcd.init();
  lcd.backlight();
  lcd.print("Enter PassWord");
  lcd.setCursor(8, 1);
}

void loop() {
  //Huy------------------------------------------------------------
   int btn_stt_BaoBenh = digitalRead(8);
   if (btn_stt_BaoBenh == HIGH && btn_last_BaoBenh == LOW) {
      dem_BB++;
     
    
      if (dem_BB == 1) {
        DenNhapNhay = true;
       t_preh = millis();
      }
      
      else if (dem_BB == 2) {
        DenNhapNhay = false;
        digitalWrite(13, LOW);
        digitalWrite(11, LOW);
        digitalWrite(10, LOW);
        digitalWrite(12, LOW);
        digitalWrite(9, LOW);
        dem_BB = 0;  
      }
  }

  if (DenNhapNhay) {
    unsigned long t_cur = millis();
    if (t_cur - t_preh >= 500) {
      t_preh = t_cur;
      
      digitalWrite(13, !digitalRead(13));
      digitalWrite(11, !digitalRead(11));
      digitalWrite(10, !digitalRead(10));
      digitalWrite(12, !digitalRead(12));
      digitalWrite(9, !digitalRead(9));
    }
  }
  btn_last_BaoBenh = btn_stt_BaoBenh;

  //Giang
  int stt_pass0 = digitalRead(btn_pass0);
  int stt_pass1 = digitalRead(btn_pass1);

  if (ThoiGianCho) {
    if (millis() - t_pre >= 5000) {
      ThoiGianCho = false;
      lcd.clear();
      lcd.print("Enter Password");
      lcd.setCursor(8, 0);
      MatKhauInput = "";
    }
  } else {
    if (stt_pass0 == HIGH && stt_lastpass0 == LOW) {
      MatKhauInput += "0";
      lcd.setCursor(dem, 1);
      lcd.print("0");
      dem++;
    }

    if (stt_pass1 == HIGH && stt_lastpass1 == LOW) {
      MatKhauInput += "1";
      lcd.setCursor(dem, 1);
      lcd.print("1");
      dem++;
    }

    if (dem >= 6) {
      dem = 0;
    }

    if (MatKhauInput.length() == MatKhau.length()) {
      if (MatKhauInput == MatKhau) {
        lcd.clear();
        lcd.print("Password correct");
        MatKhauInput = "";
        //Xu li bat tat den trong nha trong nay
        baomat = true;
      } else {
        lcd.clear();
        lcd.print("Wrong Password");
        MatKhauInput = "";
        ThoiGianCho = true;
        baomat=false;
        t_pre = millis();
      }
    }

    stt_lastpass0 = stt_pass0;
    stt_lastpass1 = stt_pass1;
  }
  if(!baomat){

  }
  else{
    //Khoa-----------------------------------------------------------
  //Phong 1
  btn_stt_P1 = digitalRead(6);
  if(btn_stt_P1 == HIGH && last_btn_stt_P1 == LOW){
    dem_P1++;
    t_P1 = millis();
  }
  if(dem_P1 == 1){
    digitalWrite(11, HIGH);
  }
  if(dem_P1 == 2){
    if(millis() - t_P1 >= 200){
      digitalWrite(11, stt_P1);
      stt_P1 = !stt_P1;
      t_P1 = millis();
    }
  }
  if(dem_P1 == 3){
    digitalWrite(11, LOW);
    dem_P1=0;
  }
  last_btn_stt_P1 = btn_stt_P1;
  //Phong 2
  btn_stt_P2 = digitalRead(5);
  if(btn_stt_P2 == HIGH && last_btn_stt_P2 == LOW){
    dem_P2++;
    t_P2 = millis();
  }
  if(dem_P2 == 1){
    digitalWrite(10, HIGH);
  }
  if(dem_P2 == 2){
    if(millis() - t_P2 >= 200){
      digitalWrite(10, stt_P2);
      stt_P2 = !stt_P2;
      t_P2 = millis();
    }
  }
  if(dem_P2 == 3){
    digitalWrite(10, LOW);
    dem_P2=0;
  }
  last_btn_stt_P2 = btn_stt_P2;
  
  //Kha------------------------------------------------------------
  if(digitalRead(2)==HIGH)
  {
    dem_TH = 1;
  }
  if(digitalRead(3)==HIGH)
  {
    dem_Khach = 1;
  }
  if(digitalRead(4)==HIGH)
  {
    dem_WC = 1;
  }
  if(digitalRead(2)==LOW && dem_TH != 0)
  {
    stt_TH = !stt_TH;
    digitalWrite(12,stt_TH);
    dem_TH = 0;
  }
  if(digitalRead(3)==LOW && dem_Khach!=0)
  {
    stt_Khach = !stt_Khach;
    digitalWrite(13,stt_Khach);
    dem_Khach = 0;
  }
  if(digitalRead(4)==LOW && dem_WC!=0)
  {
    stt_WC = !stt_WC;
    digitalWrite(9,stt_WC);
    dem_WC = 0;
  }
  }
}
