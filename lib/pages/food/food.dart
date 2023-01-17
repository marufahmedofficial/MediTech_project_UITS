import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {


  Widget _pageadd({
    required String image,
    required String name,
    TextStyle style = const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
  }) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.0),
          border: Border.all(color: Colors.deepOrange, width: 2))
      , //grey
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(name, style: style)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Food and Nutrition'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60,right:60 ,bottom: 20,top: 14),


        child: GridView.count(
          crossAxisCount: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 15,
          childAspectRatio: 1.20,
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            InkWell(
              onTap: () {

              },
              child: _pageadd(
                  image: 'assets/food/a.jpg', name: 'Vitamin A'),
            ),
            InkWell(
              onTap: () {
              },
              child: _pageadd(
                  image: 'assets/food/c.jpg', name: 'Vitamin C'),
            ),
            InkWell(
              onTap: () {
              },
              child: _pageadd(
                  image: 'assets/food/d.jpg', name: 'Vitamin D'),
            ),
            InkWell(
              onTap: () {
              },
              child: _pageadd(
                  image: 'assets/food/e.jpg', name: 'Vitamin E'),
            ),
            InkWell(
              onTap: () {
              },
              child: _pageadd(
                  image: 'assets/food/k.jpg', name: 'Vitamin K'),
            ),

          ],
        ),

      ),

    );


  }
}

