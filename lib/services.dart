import 'package:flutter_app/ship.dart';
import 'package:http/http.dart' as http;

List<Post> postdata = [];

class Services {
  static const String userUrl = "https://9723d50c-d162-4e57-bcdb-4a47c774f735.mock.pstmn.io/api/v2/inquiry/list";

  Future<List<Post>?> getPosts() async
  {
    var client = http.Client();


    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
    try{
      ///use try catch if any error that also print value
      var response = await client.get(uri);
      if(response.statusCode == 200)
      {
        var json = response.body;
        print("post response ${response.body}");
        return postFromMap(json);
      }



    }catch(e){
      print("post error ${e}");
    }

  }
}

//Future<Post?> getPosts() async {
//postFromJson(json);
//       return postFromJson(json);


// static Future<List<Welcome>> getUsers(
// {required bool isurl, String? newurl}) async {
// try{
// Uri url;
// final response = await http.get(url);
//
// if (isurl) {
// url = Uri.parse(userUrl);
// } else {
// url = Uri.parse("${userUrl}/${newurl}");
// }
//
//
// }catch(e){throw Exception(e);}
// }