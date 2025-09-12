import 'dart:io';
import 'package:method_problems/method_problems.dart' as method_problems;

double GetTotal(int pennies, int nickels, int dimes, int quarters, int loonies, int toonies) {

  return pennies * 0.01 + 
  nickels * 0.05 + 
  dimes * 0.10 + 
  quarters * 0.25 + 
  loonies + 1.00 + 
  toonies + 2.00;
}