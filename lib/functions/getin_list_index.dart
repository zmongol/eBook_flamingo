int getinListindex(num index, int length) {
  num _out = 0;
  if (index >= length) {
    _out = index - (index ~/ length) * length;
  } else {
    _out = index;
  }

  return _out.toInt();
}
