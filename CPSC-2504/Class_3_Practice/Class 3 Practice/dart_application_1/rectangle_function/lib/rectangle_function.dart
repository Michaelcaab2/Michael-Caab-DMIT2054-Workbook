// lib/rectangle_function.dart

int surfaceArea(int width, int length, int height) {
  _validateDims(width, length, height);
  // SA of a rectangular prism = 2(wl + wh + lh)
  return 2 * (width * length + width * height + length * height);
}

int volume(int width, int length, int height) {
  _validateDims(width, length, height);
  return width * length * height;
}

void _validateDims(int w, int l, int h) {
  if (w <= 0 || l <= 0 || h <= 0) {
    throw ArgumentError('width, length, and height must be positive integers.');
  }
}
