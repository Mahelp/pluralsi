import 'package:flutter/material.dart';
import 'package:untitled1/xxxxx.dart';

class GoogleProducts {
  final List<String> items =[
   'cloud functions',
   'app engine',
    'Kubernetes Engine',
    'Compute Engine',
   ];
}
void main() {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp ({Key? key}) : super(key:key);
 @override
 Widget build(BuildContext context){
 const title ='Google products';
 return const MaterialApp(
  title: title,
  debugShowCheckedModeBanner: false,
  home: ProductHomeWidget(title),
  );
 }
}
class ProductHomeWidget extends StatelessWidget{
 final String title;
 const ProductHomeWidget(this.title,{Key? key}) : super(key:key);
 @override
 Widget build(BuildContext context){
  return Scaffold(
   backgroundColor: Colors.white,
    appBar: AppBar(
     backgroundColor: Colors.transparent,
     elevation: 0,
     iconTheme: const IconThemeData(
      color: Colors.grey
     ),
    actions: const [
     //AppBarActionsShare(),
    ],
    title: Text(title,style:  const TextStyle(color: Colors.black)),
    ),
body:ProductListView(),
  );
 }
}

class AppBarLeading extends StatelessWidget{

 const AppBarLeading({Key?key}) :super(key:key);
 @override
 Widget build(BuildContext context){
  return const IconButton(
   icon :Icon(
    Icons.menu,
   ),
  onPressed  :null,
  );
 }
}

class AppBarActionsShare extends StatelessWidget{
 const AppBarActionsShare({Key?key}) :super(key:key);
 @override
 Widget build(BuildContext context){
  return IconButton(
   icon :const Icon(
    Icons.share,
   ),
   onPressed:()  {
   const snackBar =
   SnackBar(content:Text('You selected the Action: Share'));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
 });

 }

}



class ProductListView extends StatelessWidget{
final googleProducts = GoogleProducts();
ProductListView ({Key? key}) :super(key:key);
@override
 Widget  build(BuildContext context){
 return ListView.builder(
  itemCount: googleProducts.items.length,
  itemBuilder: (context,index){
   return ProductListTile(googleProducts.items[index]);
  },

 );
}
}
class ProductListTile extends StatelessWidget{
final String? productLabel;
const ProductListTile(this.productLabel,{Key? key}) : super (key: key);
@override
 Widget build(BuildContext context) {
 return ListTile(
  title:  Text('$productLabel',style: const TextStyle(color:Colors.black)),
  subtitle: const Text('Subtitle',style: TextStyle(color: Colors.black)),
  leading: const Icon(Icons.info,color: Colors.black),

  onTap: (){

   Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => const MyDetails()),
   );

 },

 );
 }
}
class MyDetails extends StatelessWidget{
 final title ='Detail Page';
 const MyDetails ({Key?key}) :super(key:key);
 @override
 Widget build(BuildContext context){
  return Scaffold(
   backgroundColor: Colors.black,
   body : DefaultTabController(
    length: 4,
    child: Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.transparent ,
      elevation: 0,
      iconTheme:  const IconThemeData(
       color:Colors.grey,
      ),
    title: Text(title,style:const TextStyle(color:Colors.grey)),
      actions :const[
       AppBarActionsShare(),
      ]
     ),
    ),
   ),

  );
 }

}
