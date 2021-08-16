import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  NewsCard(
      {@required this.imgUrl,
      @required this.publisher,
      @required this.date,
      @required this.headline,
      @required this.author,
      @required this.time});

  final String imgUrl;
  final String publisher;
  final String date;
  final String headline;
  final String author;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8)),
            child: Image.network(
              imgUrl,
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          publisher,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              backgroundColor:
                              Colors.lightGreenAccent),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                              date,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Text(
                      headline,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                              author,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            time,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
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
