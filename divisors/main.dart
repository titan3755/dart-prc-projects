int divisors(n) {
   var divisors_list = [1];
   for (int i = 2; i <= n; i++) {
    if (n % i == 0) {
      divisors_list.add(i);
    }
   }
   return divisors_list.length;
}
void main() {
  var div_count = 0;
  for (var j = 0; j <= 50000; j++) {
    div_count = divisors(j);
    print("The divisor count for \"$j\" is $div_count");
  }
}