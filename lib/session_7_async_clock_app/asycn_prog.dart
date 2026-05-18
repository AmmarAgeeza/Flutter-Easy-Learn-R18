void main() async {
  //!before
  // print("Task#1 =>> user profile");
  // print("Task#2 => get data from DB");
  // int sum = getSum();
  // print("sum= $sum");
  // print("Task#3 =>> show user location");

  //!After
  print("Task#1 =>> user profile");
  print("Task#2 => get data from DB");
  //async
  // Future(() {
  //   int sum = getSum();
  //   print("sum= $sum");
  // });

  // Future.delayed(Duration(seconds: 2),()=>print("Task #4"));

  // getSum().then((value) {
  //   print("result = $value");
  // });

  // getSum().then((value){
  // }).catchError((error){print(error);});

  //  await getSum().then((value){
  //   }).catchError((error){print(error);});

  try {
    await getSum();
  } catch (error) {
    print("error : ${error.toString()}");
  }

  // print("res = $res"); //Instance of 'Future<int>'
  print("Task#3 =>> show user location");
}

Future<void> getSum() async {
  int sum = 0;
  for (int i = 1; i < 1000000000; i++) {
    sum += i;
  }
  // throw Exception("Internet Erro");
  print(sum);
}







// ----------
//1. Future [Done]
//2. async - await [Done]
//3. Stream
//4. EventLoop
//5. Isolate