import 'dart:io';

import 'package:rectangle_function/rectangle_function.dart'
    as rectangle_function;

void main(List<String> arguments) {
  late int width;
  late int length;
  late int height;

  //program title
  print("Rectangle surface area and volume");
  String? option;

  do {
    print('\n --Menu of Options');
    print(' [a]rea of rectangle');
    print(' [v]olume of the rectangle');
    print('e[x]it');
    print('');

    stdout.write('Enter option: ');
    option = stdin.readLineSync();

    switch (option) {
      case 'a':
        width = int.parse(stdin.readLineSync()!);
        length = int.parse(stdin.readLineSync()!);
        height = int.parse(stdin.readLineSync()!);

        stdout.write("The surface area of a rectangle with width");
        stdout.write('$width, length: $length');
        stdout.write(
          '${rectangle_function.surfaceArea(width, length, height)}',
        );
        break;

      case 'v':
        // Prompt user for dimensions
        stdout.write('Enter width: ');
        width = int.parse(stdin.readLineSync()!);

        stdout.write('Enter length: ');
        length = int.parse(stdin.readLineSync()!);

        stdout.write('Enter height: ');
        height = int.parse(stdin.readLineSync()!);

        // Calculate and display volume
        final vol = rectangle_function.volume(width, length, height);
        stdout.writeln(
          'The volume of a rectangle with width $width, length $length, and height $height is $vol',
        );
        break;
    }
  } while (option != 'x' && option != 'X');
}
