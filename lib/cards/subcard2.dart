import 'package:flutter/material.dart';

class SubCard2 extends StatefulWidget {
  const SubCard2({super.key});

  @override
  State<SubCard2> createState() => _SubCard2State();
}

class _SubCard2State extends State<SubCard2> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Container(
                  width: 220,
                  height: 137,
                  child: Image.network(
                    'https://cdn.pinpointnews.co.kr/news/photo/202401/241253_253308_4642.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.red[700],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'SPORT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
          Container(
            width: 220,
            height: 137,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'World voyage delivers "memories to last a lifetime" 2019',
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: 30,
                      ),
                      Text(
                        '12 May 2019',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
