import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_enhance, color: Colors.grey[800]),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/people/img_11.png")),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey,),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.video_call,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live",style: TextStyle(color: Colors.black),)
                        ],
                        ),
                      ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        width:1,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo,color: Colors.green,),
                              SizedBox(width: 5,),
                              Text("Photo",style: TextStyle(color: Colors.black),)
                            ],
                          ),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        width:1,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Check In",style: TextStyle(color: Colors.black),)
                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _itemList(story_image: "assets/people/img_1.png",user_image: "assets/people/img_11.png",user_name: "User one"),
                _itemList(story_image: "assets/people/img_5.png",user_image: "assets/people/img_10.png",user_name: "User one"),
                _itemList(story_image: "assets/people/img.png",user_image: "assets/people/img_9.png",user_name: "User one"),
                _itemList(story_image: "assets/people/img_11.png",user_image: "assets/people/img_11.png",user_name: "User one"),
                _itemList(story_image: "assets/people/img_7.png",user_image: "assets/people/img_10.png",user_name: "User one"),
                _itemList(story_image: "assets/people/img_8.png",user_image: "assets/people/img_7.png",user_name: "User one"),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.white,
            height: 500,
            child: PageView(
            children: [
              _makePost(user_image: "assets/people/img_8.png",user_name: "User Two",online: "1 hr ago",post_text: "All the Lorem Ipsum generators on the Internet tend to repeat predefined",post_image: "assets/people/img_3.png",logo: "assets/logo.jpg"),
            ],
          ),),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 550,
            color: Colors.white,
            child: PageView(
              children: [
                _makePost(user_image: "assets/people/img_7.png",user_name: "User Two",online: "1 hr ago",post_text: "All the Lorem Ipsum generators on the Internet tend to repeat predefined",post_image: "assets/people/img_3.png",logo: "assets/logo.jpg"),

              ],
            ),
          ),

        ],
      ),
    );
  }
  Widget _itemList({story_image,user_name,user_image}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(story_image),fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1),
              ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
               margin: EdgeInsets.all(10),
               height: 40,
               width: 40,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(user_image),fit: BoxFit.cover
                 ),
                 shape: BoxShape.circle,
                 border:Border.all(width: 2,color: Colors.blue)
               ),
             ),
              Text(user_name,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
  Widget _makePost({user_image,user_name,online,post_image,post_text,logo}){
    return Container(
      color: Colors.white,
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Container(
                padding: EdgeInsets.all(5),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                         Container(
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 height: 55,
                                 width: 55,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                       image: AssetImage(user_image),
                                     ),
                                     shape: BoxShape.circle
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Container(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [Text(
                                     user_name,
                                     style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),Text(online,style: TextStyle(fontSize: 15),)],
                                 ),
                               ),
                             ],),
                         ),
                         Container(
                           child: Icon(Icons.more_horiz,size: 30,),
                         ),
                       ],
                     )
                  ) ,
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  post_text,style: TextStyle(fontSize: 15),
                ),
              ),


              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(post_image,),fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  padding: EdgeInsets.only(right: 10,left: 5),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                      child: Row(
                       children: [
                       Container(height: 40,
                         child:
                        Image(
                        image: AssetImage(logo),fit: BoxFit.cover,),),
                        SizedBox(width: 10),
                        Text("2.5K",style: TextStyle(fontWeight: FontWeight.bold),),],
                    ),
                  ),
                      Container(
                        child: Text("400 Comments",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  color: Colors.white,
                 child: Row(
                   children: [
                   Expanded(
                       child: Row(children: [Icon(Icons.pan_tool,color: Colors.blue,),SizedBox(width: 6,),Text("Like",style: TextStyle(color: Colors.blue),)],)),
                     Expanded(
                         child: Row(children: [Icon(Icons.message,color: Colors.black38,),SizedBox(width: 6,),Text("Commet")],)),
                     Expanded(
                         child: Row(children: [Icon(Icons.share,color: Colors.black38,),SizedBox(width: 6,),Text("Share")],)),

                     
                   ],
                 ),
                ),
              ],
              )






            ],
          )
    );
  }
}
