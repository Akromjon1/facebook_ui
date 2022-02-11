import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("Facebook", style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            color: Colors.grey[800],
          ), IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[800],
          ),

        ],
      ),
      body: ListView(
        children: [
          // #post create
          Container(
            color: Colors.black,
            height: 120,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_5.jpeg')
                        ),
                      ),

                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Container(
                        height: 46,
                        padding: EdgeInsets.only(right: 15, left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey[500]!,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What`s on your mind ?",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call, color: Colors.red,
                          ),
                          SizedBox(width: 5,),
                          Text('Live',style: TextStyle(color: Colors.grey[800]),),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      color: Colors.grey[300],
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo, color: Colors.green,
                          ),
                          SizedBox(width: 5,),
                          Text('Photo',style: TextStyle(color: Colors.grey[800]),),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      color: Colors.grey[300],
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on, color: Colors.red,
                          ),
                          SizedBox(width: 5,),
                          Text('Check in',style: TextStyle(color: Colors.grey[800]),),
                        ],
                      ),
                    ),
                  ],
                ),),
              ],
            ),
          ),
          // #post stories
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                    storyImage: 'assets/images/story_1.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'User 1'
                ),
                makeStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_2.jpeg',
                    userName: 'User two'
                ),
                makeStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'User three'
                ),
                makeStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'User four'
                ),
                makeStory(
                    storyImage: 'assets/images/story_5.jpeg',
                    userImage: 'assets/images/user_5.jpeg',
                    userName: 'User five'
                ),
              ],
            ),

          ),
          // #post feed
          makeFeed(
            userName: 'User two',
            userImage: 'assets/images/user_2.jpeg',
            feedTime: '1 hr ago',
            feedText: 'Amazing view in the most improbable place called ...',
            feedImage: 'assets/images/story_2.jpeg',
            feedImage2: 'assets/images/story_4.jpeg',
          ),
          makeFeed(
            userName: 'User one',
            userImage: 'assets/images/user_3.jpeg',
            feedTime: '1 day ago',
            feedText: 'Amazing view in the most improbable place called ...',
            feedImage: 'assets/images/story_5.jpeg',
            feedImage2: 'assets/images/story_1.jpeg',
          ),
          makeFeed(
            userName: 'User three',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedText: 'Amazing view in the most improbable place called ...',
            feedImage: 'assets/images/story_5.jpeg',
            feedImage2: 'assets/images/story_3.jpeg',
          ),
        ],
      ),
    );
  }
Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(aspectRatio: 1.3 / 2,
    child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          ),
        ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors:[
               Colors.black.withOpacity(.9),
               Colors.black.withOpacity(.1),
            ],

          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.blue,
                ),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(userName, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),]
            )
          ],
        ),
      ),
    ),

    );
  }
Widget makeFeed({userName, userImage, feedTime, feedText, feedImage, feedImage2}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold),),
                              SizedBox(height: 3,),
                              Text(feedTime, style: TextStyle(color: Colors.grey, fontSize: 15),),

                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),),
                        ],
                      ),
                    ),),

                  ],
                ),
                SizedBox(height: 10,),
                Text(feedText, style: TextStyle(color: Colors.grey[800], fontSize: 15,height: 1.5, letterSpacing: 0.7),),
              ],
            ),
          ),
          SizedBox(height: 10,),

          // #image
          Container(
            height: 240,
            child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImage),
                        fit: BoxFit.cover,
                      ),
                  ),
                ),),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(feedImage2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),),
              ],
            ),

          ),
          SizedBox(height: 20,),
          // #likes and comments
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                    child: makeLove(),
                    offset: Offset(-5, 0),),
                    SizedBox(width: 5,),
                    Text('25 k', style: TextStyle(color: Colors.grey[800], fontSize: 15),),

                  ],
                ),
                Text('400 comments', style: TextStyle(color: Colors.grey[800], fontSize: 13),),
              ],
            ),
          ),
          // #like, comment, share
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: false),
              makeCommentButton(),
              makeShare(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
}
Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
        )
      ),
      child: Center(
        child: Icon(
          Icons.thumb_up, size: 12, color: Colors.white,
        ),
      ),
    );
}
Widget makeLove() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
        )
    ),
    child: Center(
      child: Icon(
        Icons.favorite, size: 12, color: Colors.white,
      ),
    ),
  );
}
Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive? Colors.blue: Colors.grey),),
          ],
        ),
      ),
    );

}
Widget makeCommentButton(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat, color:  Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Comment", style: TextStyle(color: Colors.grey),),
        ],
      ),
    ),
  );
}
Widget makeShare(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.share, color:Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Share", style: TextStyle(color:  Colors.grey),),
        ],
      ),
    ),
  );
}
}
