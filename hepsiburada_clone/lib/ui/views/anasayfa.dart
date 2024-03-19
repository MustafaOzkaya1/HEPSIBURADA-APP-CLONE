import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hepsiburada_clone/data/entity/card1.dart';


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  Future<List<Card1>> Card1Yukle() async {
    var cardListesi = <Card1>[];
    var f1 = Card1(resim: "market.png", yazi: "Market Ürünleri");
    var f2 = Card1(resim: "car.png", yazi: "Araba Kazan");
    var f3 = Card1(resim: "card.png", yazi: "Hemen Başvur");
    var f4 = Card1(resim: "indirimcard.png", yazi: "Devasa İndirim");
    var f5 = Card1(resim: "ramazan.png", yazi: "Ramazan Ürünleri");
    var f6 = Card1(resim: "telefon.png", yazi: "Telefonlar");
    var f7 = Card1(resim: "anne.png", yazi: "Anne Çocuk");
    var f8 = Card1(resim: "kiyafet.png", yazi: "En Şık Ürünler");
    cardListesi.add(f1);
    cardListesi.add(f2);
    cardListesi.add(f3);
    cardListesi.add(f4);
    cardListesi.add(f5);
    cardListesi.add(f6);
    cardListesi.add(f7);
    cardListesi.add(f8);


    return cardListesi;
  }
  bool aramaYapiliyormu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyormu ?

        TextField(
          decoration: const InputDecoration(hintText: "Ara"),

        ) :
        Container(
            width: 250,
            height: 45,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                top: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),

              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Ürün, kategori ara ",style: TextStyle(fontSize: 14,color: Colors.black45),),
            ),

        ),
        actions: [
          aramaYapiliyormu
              ? IconButton(
              onPressed: () {
                setState(() {
                  aramaYapiliyormu = false;
                });
              },
              icon: const Icon(Icons.clear))
              : IconButton(
              onPressed: () {
                setState(() {
                  aramaYapiliyormu = true;
                });
              },
              icon: Container(
                  width: 50,
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),

                      top: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),

                    ),
                  ),
                  child: const Icon(Icons.search))),

          Container(
            width: 158,
            height: 45,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                top: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                right: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Konum",style: TextStyle(color: Colors.deepOrange)),
                Padding(
                  padding: const EdgeInsets.only(left: 5,),
                  child: Text("ev no:12 Fatih..."),
                ),
              ],

              ),

             IconButton(
             icon: Icon(Icons.location_on,color: Colors.black12,),
             onPressed: () {
                    // Ekle butonuna basıldığında yapılacak işlemler buraya yazılabilir
                  },
                ),

                    ],
            ),
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                    style:

                    ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange.shade200),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black45)
                            )
                        )
                    ),
                    child:Row(
                      children: [
                      Column(
                      children: [
                        Image.asset("resimler/premium_icon.png",height: 20,),
                        Text("Avantajları gör",style: TextStyle(fontSize: 10,color: Colors.black45),textAlign: TextAlign.left,),

                      ],
                    ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.black45,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                    ],

                    ),

                  ),
                  ElevatedButton(onPressed: (){},
                    style:

                    ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple.shade100,),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black45)
                            )
                        )
                    ),
                    child:Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Image.asset("resimler/hepsipay.png",height: 15,),
                            ),
                            Text("Avantajları gör",style: TextStyle(fontSize: 10,color: Colors.black45),textAlign: TextAlign.left,),

                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.black45,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ],

                    ),

                  ),
                  ElevatedButton(onPressed: (){

                  },
                    style:  ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple.shade200,),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black45)
                            )
                        )
                    ),

                    child:Icon(
                    Icons.qr_code,
                    color: Colors.purple,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ), )
                ],

              ),
            ),


            Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(child: //sayfa geçişi eklenecek
                  Image.asset("resimler/indirim2.webp",
                    fit: BoxFit.contain,)),
                ),
              ),

            Card(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("resimler/anne.png",width: 70,height: 70,),


                      Text("Anne Çocuk ",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                    ],

                  ),
                  SizedBox(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("resimler/car.png",width: 80,height: 70,),


                        Text("Araba Kazan ",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ],

                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("resimler/card.png",width: 70,height: 70,),


                      Text("Hemen Başvur ",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                    ],

                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("resimler/indirimcard.png",width: 70,height: 70,),


                      Text("Devasa İndirim",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                    ],

                  ),



                ],
              ),

            ),
            Card(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("resimler/market.png",width: 70,height: 70,),


                      Text("Market Ürünleri ",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                    ],

                  ),
                  SizedBox(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("resimler/kiyafet.png",width: 70,height: 70,),


                        Text("Şık Kıyafetler ",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ],

                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("resimler/ramazan.png",width: 70,height: 70,),


                      Text("Ramazan Paketi",style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),

                    ],

                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("resimler/telefon.png",width: 70,height: 70,),


                      Text("Telefonlar",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                    ],

                  ),



                ],
              ),

            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(child: //sayfa geçişi eklenecek
                Image.asset("resimler/indirim3.webp",
                  fit: BoxFit.contain,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: (){},
                    style:

                    ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black45)
                            )
                        )
                    ),
                    child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("resimler/yildiz.png",height: 20,),
                        ),


                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Sana Özel Fırsatlar",style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                            Text("20+ kupon fırsatı var",style: TextStyle(fontSize: 10,color: Colors.black45),textAlign: TextAlign.left,),


                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.black45,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ],

                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child:ElevatedButton(onPressed: (){},
                      style:

                      ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.black45)
                              )
                          )
                      ),
                      child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Image.asset("resimler/yildiz.png",height: 20,),
                          ),


                          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Tüm Kategoriler",style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                              Text("Keşfetmeye başla",style: TextStyle(fontSize: 10,color: Colors.black45),textAlign: TextAlign.left,),


                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Colors.black45,
                            size: 24.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                        ],

                      ),

                    ),
                  ),

                ],

              ),
            ),







          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            //  butonuna basıldığında yapılacak işlemler buraya yazılabilir
          },
          child: Image.asset("resimler/giphy.gif",),
           //Image.asset("resimler/giphy.gif"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
