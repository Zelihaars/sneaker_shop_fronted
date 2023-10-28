import 'package:flutter/cupertino.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan 4 ",
        price: "236",
        imagePath: "lib/images/airjordan4.jpg",
        descripiton: "Michael Jordan'ın başlangıcına gönderme yapan bu ayakkabılarda, yenilmezlik hissi ilk delikten son deliğe kadar size eşlik edecek"),
    Shoe(
        name: "Air Jordan 3 ",
        price: "317",
        imagePath: "lib/images/airjordan3.jpg",
        descripiton: "Bu orta profilli versiyon, orijinal AJ1'den ilham aldı ve ikonik görünümünü koruyor. Renkler ve etkileyici deri ona benzersiz bir karakter katıyor."),
    Shoe(
        name: "Air Jordan 2",
        price: "199",
        imagePath: "lib/images/airjordan2.jpg",
        descripiton: "Bu Legacy 312 modeli, Guo Ailun'un saha dışında en sevdiği aktivite olan okyanus kenarında dinlenmeye gönderme yapıyor."),
    Shoe(
        name: "Air Jordan 1",
        price: "235",
        imagePath: "lib/images/airjordan1.jpg",
        descripiton: "Air Jordan 1 Retro High modeli, klasik spor ayakkabıların yenilenmiş görünümü ve bildiğiniz rahatlığın yeni versiyonudur."),
  ];
  List<Shoe> userCart=[];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}
