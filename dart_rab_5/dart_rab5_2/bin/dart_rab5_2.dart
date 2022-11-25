import 'dart:io';

void main(List<String> arguments) {
  List<String> input = File("numsTask2.txt").readAsLinesSync();
  var nums = File("numsTask2.txt");
  var nan = nums.openWrite();
  for (var line in input) {
    input = line.split('; ');
  }
  List<int> num = input.map(int.parse).toList();
  for (int f = 0; f < num.length; ++f) {
    for (int i = 0; i < num.length - 1; ++i) {
      if (num[i] > num[i + 1]) {
        var c = num[i];
        num[i] = num[i + 1];
        num[i + 1] = c;
      }
    }
  }
  nan.write(num);
}
