import 'package:burc_app/burc_item.dart';
import 'package:burc_app/data/strings.dart';
import 'package:flutter/material.dart';
import 'package:burc_app/model/burc.dart';
class BurcListesi extends StatelessWidget {
  late List <Burc> tumBurclar;
   BurcListesi(){
     tumBurclar=veriKaynaginiHazirla();
   }

  
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Burçlar Listesi",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
          //backgroundColor: Colors.red.shade500,
        centerTitle: false,
         floating: true,
         expandedHeight: 200,
         flexibleSpace: FlexibleSpaceBar(background: Image.asset("images/anaburclar.jpg",fit: BoxFit.cover,),),       
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(_dinamikelemanuretenfonksiyon,childCount: tumBurclar.length)
          )

        ]
        );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici=[];
    for (int i=0; i<12; i++){
      var burcAdi=Strings.BURC_ADLARI[i];
      var burcTarihi=Strings.BURC_TARIHLERI[i];
      var burcDetayi=Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim= Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png";
      var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk"+"${i+1}.png";
      Burc eklenecekBurc = Burc(burcAdi,burcTarihi,burcDetayi,burcKucukResim,burcBuyukResim);
      gecici.add(eklenecekBurc);

    }
    return gecici;
  }


  Widget? _dinamikelemanuretenfonksiyon(BuildContext context, int index) {
    return BurcItem(listelenenBurc: tumBurclar[index]);
        
  }


}
