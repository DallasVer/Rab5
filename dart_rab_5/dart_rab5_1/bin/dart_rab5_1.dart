import 'dart:io';

void main(List<String> arguments) {
  List<String> input = File("numsTask1.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(' ');
  }
  print(input);
  List<int> num = input.map(int.parse).toList();
  int z = num[0];
  for (int i = 0; i < num.length - 1; ++i) {
    if (z > num[i]) {
      z = num[i];
      print(z);
    }
  }
  while (true) {
    var i = 0;
    if (num[i] == z) {
      break;
    } else {
      num.removeAt(i);
    }
    i++;
  }
  for (int i = 0; i < num.length - 1; ++i) {
    z *= num[i + 1];
  }
  print(z);
}
