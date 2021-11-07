import 'package:burc_app/burc_detay.dart';
import 'package:burc_app/model/burc.dart';
import 'package:flutter/material.dart';



class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({ required this.listelenenBurc,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Card(
      
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(SecilenBurc: listelenenBurc)));
          },
          leading: Image.asset("images/"+listelenenBurc.burcKucukResim,),
          title: Text(listelenenBurc.burcAdi,style: MyTextStyle.headline6,),
          subtitle: Text(listelenenBurc.burcTarihi),
          trailing: Icon(Icons.arrow_forward_ios_sharp),
      
          
        ),
      ),
      
    );
  }
}