import 'dart:async';

void main(){
Timer.periodic(Duration(seconds: 1), (t){
var now = DateTime.now();
print(now);
});
}