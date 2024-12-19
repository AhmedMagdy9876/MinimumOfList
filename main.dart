import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  final List<int> list;

  print("enter a list:");

  // expect a list input, exit on error
  try {
    list = json.decode(stdin.readLineSync()!).cast<int>();
  } catch (e) {
    print('invalid input: ${e.toString()}');
    return;
  }

  // print minimum number
  print("minimum number in the list is: ${minimumOfList(list)}");
}

/// Finds the minimum in a list of integers.
/// 
/// @param list The list of integers
/// @returns the minimum number in the list, or null for empty list.
int? minimumOfList(List<int> list) {
  int? minimum;

  for (var number in list) {
    if (minimum == null || minimum > number) {
      minimum = number;
    }
  }

  return minimum;
}
