import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> input = File("numsTask3.txt").readAsLinesSync();
  for (var line in input) {
    input = line.split(' ');
  }
  List<int> num = input.map(int.parse).toList();
  int z = num.reduce(min);
  int k = num.indexOf(z);
  int hop = 0;
  var sum = 0;
  // while (true) {
  //   var i = 0;
  //   if (num[i] == z) {
  //     break;
  //   } else {
  //     sum += num[i];
  //     ++hop;
  //   }
  //   i++;
  // }
  for (int i = 0; i < num.length - 1; ++i) {
    if (num[i] != z) {
      sum += num[i];
      ++hop;
    } else {
      break;
    }
  }
  print(sum / hop);
}
