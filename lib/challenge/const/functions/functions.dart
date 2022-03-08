import '../../model/model.dart';
import 'const.dart';
//by List
void getOrdersPerMonth1() {
  orders = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  String? month;
  for (int i = 0; i < json.length; i++) {
    month = json[i]["registered"].split("-")[1];
    if (month == "01") {
      orders[0] += 1;
    } else if (month == "02") {
      orders[1]++;
    } else if (month == "03") {
      orders[2]++;
    } else if (month == "04") {
      orders[3]++;
    } else if (month == "05") {
      orders[4]++;
    } else if (month == "06") {
      orders[5]++;
    } else if (month == "07") {
      orders[6]++;
    } else if (month == "08") {
      orders[7]++;
    } else if (month == "09") {
      orders[8]++;
    } else if (month == "10") {
      orders[9]++;
    } else if (month == "11") {
      orders[10]++;
    } else if (month == "12") {
      orders[11]++;
    }
  }
}

//by Map

void getOrdersPerMonth()
{
  for (int i = 0; i < json.length; i++) {
    month = json[i]["registered"].split("-")[1];
    if(month=="01") {
      orders1.update("jan", (value) => value=value+1);
    }
    if(month=="02") {
      orders1.update("feb", (value) => value=value+1);
    }
    if(month=="03") {
      orders1.update("march", (value) => value=value+1);
    }
    if(month=="04") {
      orders1.update("apr", (value) => value=value+1);
    }
    if(month=="05") {
      orders1.update("may", (value) => value=value+1);
    }
    if(month=="06") {
      orders1.update("jun", (value) => value=value+1);
    }
    if(month=="07") {
      orders1.update("jul", (value) => value=value+1);
    }
    if(month=="08") {
      orders1.update("aug", (value) => value=value+1);
    }
    if(month=="09") {
      orders1.update("sep", (value) => value=value+1);
    }
    if(month=="10") {
      orders1.update("oct", (value) => value=value+1);
    }
    if(month=="11") {
      orders1.update("nov", (value) => value=value+1);
    }
    if(month=="12") {
      orders1.update("dec", (value) => value=value+1);
    }
  }

}


double spilt(String json) {
  return double.parse(
      json.split("\$")[1].split(",")[0] + json.split("\$")[1].split(",")[1]);
}

getAveragePrice() {
  double allPrice = 0.0;
  double avgPrice = 0.0;
  for (int i = 0; i < json.length; i++) {
    allPrice += spilt(json[i]["price"]);
  }
  avgPrice = allPrice / json.length;
  return avgPrice;
}
