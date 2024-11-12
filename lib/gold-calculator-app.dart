
import 'package:flutter/material.dart';

class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
   double totalPrice = 0.0;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController mashaQuantityController = TextEditingController();
  TextEditingController rattiQuantityController = TextEditingController();
  TextEditingController pointQuantityController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Gold Calculation App', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),


      floatingActionButton: FloatingActionButton(onPressed: (){
        tolaPriceController.clear();
        tolaQuantityController.clear();
        mashaQuantityController.clear();
        rattiQuantityController.clear();
        pointQuantityController.clear();
        totalPrice=0.0;
        setState(() {

        });
      },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.refresh),),

       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,



      body:
      SingleChildScrollView(child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 40, right: 40, top: 20,),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Tola Price', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan),),


                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 10,bottom: 10) ,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Colors.cyan),
                      controller: tolaPriceController,
                      keyboardType: TextInputType.number,
                    ),
                  ),

               SizedBox(height: 10,),

                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter tola Quantity', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(top: 10,bottom: 10,),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Colors.cyan),
                      controller: tolaQuantityController,
                      keyboardType: TextInputType.number,
                    ),
                  ),

                ],),

                  SizedBox(height: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Enter Masha Quantity', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyan),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.cyan,),
                          controller: mashaQuantityController,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Enter Ratti Quantity', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan),),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        margin: EdgeInsets.only(bottom: 10,top: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyan),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.cyan),
                          controller: rattiQuantityController,
                          keyboardType: TextInputType.number,
                        ),
                      ),

                      SizedBox(height: 5,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enter Points Quantity',style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),),

                          Container(
                            padding: EdgeInsets.only(left: 20),
                            margin: EdgeInsets.only(top: 10, bottom: 20),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyan),
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: TextFormField(
                              style: TextStyle(color: Colors.cyan),
                              controller: pointQuantityController,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],),

                      Center(
                child:

              Text('Total Price : $totalPrice', style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 20,),
              ),
                      ),

                      GestureDetector(
                        onTap: (){

                          if(tolaPriceController.text =='')
                            {
                              tolaPriceController.text = '0';
                              setState(() {

                              });
                            }
                          if(tolaQuantityController.text =='')
                            {
                              tolaQuantityController.text ='0';
                              setState(() {

                              });
                            }


                          if(mashaQuantityController.text =='')
                          {
                            mashaQuantityController.text = '0';
                            setState(() {

                            });
                          }
                          if(rattiQuantityController.text =='')
                          {
                            rattiQuantityController.text = '0';
                            setState(() {}
                            );
                          }
                          if(pointQuantityController.text =='')
                          {
                            pointQuantityController.text = '0';
                            setState(() {

                            });
                          }



                          double tolaPrice =double.parse(tolaPriceController.text);
                          double  tolaQuantity = double.parse(tolaQuantityController.text);
                          double pointQuantity = double.parse(pointQuantityController.text);
                         // 1 masha price
                          double pricePermasha = tolaPrice/12;

                          double mashaQuantity = double.parse(mashaQuantityController.text);
                          double totalPriceMasha =  pricePermasha*mashaQuantity;
                          // ratti price
                          double rattiQuantity = double.parse(rattiQuantityController.text);
                          double pricePerRatti = tolaPrice/96;
                          double totalPriceratti = pricePerRatti*rattiQuantity;


                          // to find price of 1 point
                          double pricePerPoint = totalPrice/320;
                          double totalPricePoint = pricePerPoint*pointQuantity;


                          totalPrice = (tolaPrice * tolaQuantity) + totalPriceMasha + totalPriceratti + totalPricePoint ;
                          tolaPrice = totalPrice + totalPriceMasha ;
                          setState(() {

                          },
                          );

                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 90,top: 15,),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          
                          child: Center(
                            child: Text('Calculate',style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),),),

                        ),
                  ),
                    ], ),
                ], ),
                 ),],),
      ),







       );

  }
}
