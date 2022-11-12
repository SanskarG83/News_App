import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Colors.grey[300],
        body : SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 75),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    hintText: 'Search the news you want to ...',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),

              Row(
                children:  [
                  const Text(" Latest News", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'PlayfairDisplay', letterSpacing: 2),
                  textAlign: TextAlign.left),
                  const SizedBox(width: 62,),
                  const Text("See all",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),),
                  IconButton(icon: const Icon(Icons.arrow_circle_right,color: Colors.blue,size: 30,),onPressed: (){},
                  ),
                  // Image(image: AssetImage('assets/images/Frame 40.png')),

                ],

              ),
              ImageSlideshow(

                width: double.infinity,
                height: 200,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                autoPlayInterval: 3000,

                isLoop: false,

                children: const [

                  Image(image: AssetImage('assets/images/frame35.png')),
                  Image(image: AssetImage('assets/images/img6.jpeg')),
                  Image(image: AssetImage('assets/images/img8.jpg')),
                  Image(image: AssetImage('assets/images/img7.jpg')),

                ],
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Row(
                            children: [

                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Healthy',style: TextStyle(fontSize: 20,),),
                                style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.red, shadowColor: Colors.blue),
                              ),
                              const SizedBox(width: 20),

                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Technology',style: TextStyle(fontSize: 20,),),
                                style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.red,shadowColor: Colors.blue),
                              ),
                              const SizedBox(width: 20),

                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Finance',style: TextStyle(fontSize: 20,),),
                                style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.red,shadowColor: Colors.blue),
                              ),
                              const SizedBox(width: 20),

                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Art',style: TextStyle(fontSize: 20,),),
                                style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.red,shadowColor: Colors.blue),
                              ),
                              const SizedBox(width: 20),

                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Sport',style: TextStyle(fontSize: 20,),),
                                style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.red,shadowColor: Colors.blue),
                              ),
                              const SizedBox(width: 20),

                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Educational',style: TextStyle(fontSize: 20)),
                                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: Colors.red,shadowColor: Colors.blue),
                              ),
                              // const SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 10),

              SingleChildScrollView(
                  child: Container(
                        height: 395,
                        width: 350,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Column(
                            children: const [
                              // Image(image: AssetImage('assets/images/Frame 32.png'),width: 350,),
                              // SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/Frame 33.png'),width: 350,),
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/Frame 34.png'),width: 350,),
                            ],
                          ),
                        ),
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
