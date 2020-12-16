import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//class baru menampung data images
class Product {
  //deklarasi sebuah variabel
  final String name;
  final String description;
  final int price;
  final String image;

  //kita tampung data variable ke dalam class
  Product(this.name, this.description, this.price, this.image);

  //tampung di class Product dengan list / array
  static List<Product> getProduct() {
    List<Product> items = <Product>[];

    //array berfungsi untuk menampung beberapa nilai

    items.add(
      Product("Pixel", "Pixel is the most phone", 800, "pixel.jpg"),
    );

    items.add(
      Product("tablet", "Ini adalah Tablet", 9000, "tablet.jpg"),
    );

    items.add(
      Product("pendrive", "Ini adalah pendrive", 9000, "pendrive.jpg"),
    );

    items.add(
      Product("laptop", "Ini adalah laptop", 9000, "laptop.jpg"),
    );

    items.add(
      Product("floppy disk", "Ini adalah floppy", 9000, "floppydisk.jpg"),
    );

    items.add(
      Product("iphone", "Ini adalah iphone", 9000, "iphone.jpg"),
    );

    items.add(
      Product("iphone", "Ini adalah iphone", 9000, "iphone.jpg"),
    );

    return items;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter StateManagement',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = Product.getProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Management'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(
              item: items[index],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    item: items[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final Product item;
  ProductBox({Key key, this.item}) : super(key: key);

  // $act = isset($_GET['act']) ? $_GET['act'] : '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      height: 140.0,
      child: new Card(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/" + this.item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Text(
                      this.item.name,
                      style: TextStyle(color: Colors.orange),
                    ),
                    new Text(
                      this.item.description,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RatingBox()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  ProductPage({Key key, this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.name),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/" + this.item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(this.item.description),
                    Text(
                      "Harga : " + this.item.price.toString(),
                    ),
                    //reusewidget 
                    RatingBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//statemanangement
class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  //function untuk bintang satu
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  //function untuk bintang dua
  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  //funciton untuk bintang tiga
  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        //container star 1
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(Icons.star, size: _size)
                : Icon(Icons.star_border, size: _size)),
            color: Colors.red,
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(Icons.star, size: _size)
                : Icon(Icons.star_border, size: _size)),
            color: Colors.red,
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(Icons.star, size: _size)
                : Icon(Icons.star_border, size: _size)),
            color: Colors.red,
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
        
      ],
    );
  }
}
