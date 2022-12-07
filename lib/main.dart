import 'package:flutter/material.dart';
import 'package:untitled1/main-.dart';

class googleProducts {
  final List<String> items =[
   'cloud functions',
   'app engine',
    'Kubernetes Engine',
    'Compute Engine',
    'Bare Metal',
    'Pre-emtible VMs',
    'Shielded VMs',
    'Sole-tenet Nodes',
    'VMWare Engine',
    'Cloud Firestore',
    'Cloud Storage',
    'Persistent Disk',
    'Local SSD',
    'Cloud Bigtable',
    'Cloud Firestore',
    'Cloud Memorystore',
    'Cloud Spanner',
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
     AppBarActionsShare(),
    ],
    title: Text(title,style:  const TextStyle(color: Colors.black)),
    ),
body:ProductListView() ,
  );
 }
}


class ProductListView extends StatelessWidget{
 }