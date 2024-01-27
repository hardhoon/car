import 'package:flutter/material.dart';

class MainCard2 extends StatefulWidget {
  const MainCard2({super.key});

  @override
  State<MainCard2> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard2> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 270,
              width: 400,

              child: Image.network(
                'https://media.autoexpress.co.uk/image/private/s--SMNm7CVn--/f_auto,t_content-image-full-mobile@1/v1607610674/autoexpress/2020/12/Best%20car%20news%20main%202020.jpg',
                fit: BoxFit.fill,
              ),

              // child: Image.network(
              //     'https://img.freepik.com/free-vector/realistic-news-studio-background_23-2150026880.jpg'),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 110,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'TECHNOLOGY',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.bookmark_add_outlined,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    'How Jack Ma went from English teacher to tech billionaire',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.watch_later,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Container(
                        child: Text(
                          ' 12 May 2019',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: Icon(
                          Icons.comment,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Text(
                          ' 14 comments',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
