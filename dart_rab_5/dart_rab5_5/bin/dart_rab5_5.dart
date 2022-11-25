import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> input = File("numsTask5.txt").readAsLinesSync();
  for (var line in input) {
    input = line.split(' ');
  }
  List<int> num = input.map(int.parse).toList();
  int sum = 0;
  int s = 0;
  int mn = num.reduce(min);
  for (int i = 0; i < num.length - 1; ++i) {
    if (num[i] != mn) {
      num.removeAt(i);
    } else {
      break;
    }
  }
  int mx = num.reduce(max);
  for (int i = 0; i < num.length - 1; ++i) {
    if (num[i] != mx) {
      sum += num[i];
      ++s;
    } else {
      break;
    }
  }
  print(sum / s);
}
