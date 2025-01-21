import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Invalid username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Invalid email address";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Invalid phone number";
    }
  }

  if (val.isEmpty) {
    return "Can't be Empty";
  }

  if (val.length < min) {
    return "Can't be less than $min";
  }

  if (val.length > max) {
    return "Can't be larger than $max";
  }
}