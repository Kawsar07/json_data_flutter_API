import 'dart:convert';
import 'package:apishoping/model/products_model_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main (){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Future<ProductsModelEntity> getProductsApi()async{
    final response = await http.get(Uri.parse('https://webhook.site/d24f9761-dfba-4759-bcda-f42f3dd539b7'));
var data= jsonDecode(response.body.toString());
    if (response.statusCode==200){
      return ProductsModelEntity.fromJson(data);
    }
    else{
      return ProductsModelEntity.fromJson(data);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shoping App'),
      centerTitle: true,
      ),
body: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Column(
    children: [
      Expanded(child: FutureBuilder<ProductsModelEntity>(
    future:  getProductsApi(),
    builder: (context , snapshot){
      if(snapshot.hasData){
      }
      else{
        return Text('Loading');
      }
      return ListView.builder(itemBuilder: (context , index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(snapshot.data!.data![index].shop!.name.toString()),
              subtitle: Text(snapshot.data!.data![index].shop!.shopemail.toString()),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(snapshot.data!.data![index].shop!.image.toString()),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:snapshot.data!.data![index].images!.length,
                  itemBuilder: (context, position)
                  {
               return Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Container(
                     height: MediaQuery.of(context).size.height * .25,
                     width: MediaQuery.of(context).size.width *.5 ,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(
                       fit: BoxFit.cover,
                             image: NetworkImage(snapshot.data!.data![index].images![position].url.toString() )
                         )
                     ),
                   ),
                 );
                  }),
            ),
            Icon(snapshot.data!.data![index].inWishlist! == true? Icons.favorite : Icons.favorite_outline)
          ],
        );
      });
      },
      ),
      )
    ],
  ),
),
    );
  }
}
