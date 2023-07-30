import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);


  final List ImageURL = [
    "https://th.bing.com/th/id/R.89a09c0ce8f7d749766805e33dc24ca9?rik=rWGD34eH2J8D5A&riu=http%3a%2f%2fprofessionalcourtesyllc.com%2fwp-content%2fuploads%2f2014%2f12%2fDollarphotoclub_48251152.jpg&ehk=K%2bXKEqv%2fXnyU3C0PUQWpVTrC02kbLFj9fLU9Idftk68%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.QRv5KrfbP15WD_aJmv_s9wHaEK?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.hV_3xOM8cENP742ZcIeFrgHaE8?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.4c9d71880d65e61e0228585d3acb6816?rik=eBfdVaXzGf89OQ&riu=http%3a%2f%2ffc02.deviantart.net%2ffs40%2ff%2f2009%2f006%2fe%2fb%2fFragHYPE_Tshirt_Design_by_infinitestudios.png&ehk=%2fAIovllVilRfzrMSw%2fs6WodS%2bLNdua7kdKZPln1DGGw%3d&risl=&pid=ImgRaw&r=0"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade500,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search E.g iphone X",
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: ImageURL.map((ImagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),

                          child:  Image.network(ImagePath,fit: BoxFit.cover,),
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                   enlargeCenterPage: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "Assets/Images/pic1.jpg",
                          ),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                      child: Text(
                        "Electronics",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "Assets/Images/pic2.jpg",
                          ),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                      child: Text(
                        "Fashion",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "Assets/Images/pic3.jpg",
                          ),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                      child: Text(
                        "Sports",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discounts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 175,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "Assets/Images/pic4.jpg",
                              ),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "High Quality Cotton T-Shirt",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MOQ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$20",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.grey,
                          ),
                          Text(
                            "\$10",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 175,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "Assets/Images/pic5.jpg",
                              ),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Bacon",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "NIKE",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$300",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.grey,
                          ),
                          Text(
                            "\$250",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
