// {
//                 "logo": "https://img.bosszhipin.com/beijin/mcs/chatphoto/20161230/b0df9f099f1d6db1937bc78068fb4c15760bb3f59f760cd45f5945e615392f6f.jpg",
//                 "name": "杭州蚂蚁金服信息技术有限公司",
//                 "location": "上海市浦东新区",
//                 "type": "互联网",
//                 "size": "B轮",
//                 "employee": "10000人以上",
//                 "hot": "资深产品工程师",
//                 "count": "500",
//                 "inc": "蚂蚁金融服务集团（以下称“蚂蚁金服”）起步于2004年成立的支付宝。2014年10月，蚂蚁金服正式成立。蚂蚁金服以“为世界带来微小而美好的改变”为愿景，致力于打造开放的生态系统，通过“互联网推进器计划”助力金融机构和合作伙伴加速迈向“互联网+”，为小微企业和个人消费者提供普惠金融服务。蚂蚁金服集团旗下及相关业务包括生活服务平台支付宝、智慧理财平台蚂蚁聚宝、云计算服务平台蚂蚁金融云、独立第三方信用评价体系芝麻信用以及网商银行等。另外，蚂蚁金服也与投资控股的公司及关联公司一起，在业务和服务层面通力合作，深度整合共推商业生态系统的繁荣。"
//               },

import 'dart:convert';

class Article {
  final String logo;
  final String location;
  final String type;
  final String size;
  final String employee;
  final String hot;
  final String name;
  final String count;
  final String inc;

  // constructor
  Article({
    this.logo,
    this.location,
    this.type,
    this.size,
    this.employee,
    this.hot,
    this.name,
    this.count,
    this.inc
  });

  // String -> List<Article>
  static List<Article> resolveDataFromJsonString(String json) {
    List<Article> listModel = new List<Article>();
    List list = jsonDecode(json)['list'];
    list.forEach((element) {
      var model = new Article(
        logo: element['logo'],
        location: element['location'],
        type: element['type'],
        size: element['size'],
        employee: element['employee'],
        hot: element['hot'],
        name: element['name'],
        count: element['count'],
        inc: element['inc'],
      );
      listModel.add(model);
    }); 
    return listModel;
  }
}