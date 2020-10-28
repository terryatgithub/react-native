import 'package:flutter/material.dart';
import 'package:flutter_project/mine/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article model;

  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      // @暗号 不用背，学规律
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(model.logo),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 10),
                    Container(
                        width: 120,
                        height: 32,
                        child: Text(
                          model.name,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                          overflow: TextOverflow.clip,
                        )),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '|' + model.type,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '|' + model.size,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          '|' + model.employee,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )),
            Divider(),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '热招:  ' + model.hot + ' 等' + model.count + '个职位',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 20,
                    color: Colors.grey,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
