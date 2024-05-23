import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class Auth_Provider with ChangeNotifier {
  bool _absecure = false;
  bool get absecure => _absecure;

  void getabsecureValue(bool value) {
    _absecure = value;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoading(true);

    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        print('Successfully login');
        setLoading(false);
      } else {
        print('operation Failed');
        setLoading(false);
      }
    } catch (e) {
      print(e.toString());
      setLoading(false);
    }
  }
}
