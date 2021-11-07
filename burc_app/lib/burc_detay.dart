import 'package:burc_app/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc SecilenBurc;
  const BurcDetay({ required  this.SecilenBurc,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(SecilenBurc.burcAdi+" Burcu Ve Özellikleri",
              style: TextStyle(fontStyle: FontStyle.italic),),
              centerTitle: true,background: Image.asset("images/"+SecilenBurc.burcBuyukResim,fit: BoxFit.cover,),
              ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child:Text(SecilenBurc.burcDetayi,style: Theme.of(context).textTheme.bodyText2)
                ),
            ),
          )
        ],
      )
    );
  }
}