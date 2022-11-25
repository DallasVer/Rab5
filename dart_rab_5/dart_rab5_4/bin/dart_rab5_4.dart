import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> input = File("numsTask4.txt").readAsLinesSync();
  for (var line in input) {
    input = line.split(' ');
  }
  List<int> num = input.map(int.parse).toList();
  int z = num.reduce(max);
  int sum = 0;
  for (int i = 0; i < num.length - 1; ++i) {
    if (num[i] == z - 1) {
      sum += num[i];
    }
  }
  print(sum);
}
