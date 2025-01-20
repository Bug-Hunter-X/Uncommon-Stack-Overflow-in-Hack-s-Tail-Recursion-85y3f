function foo(x: int): int {
  var result: int = 1;
  while (x > 0) {
    result *= x;
    x--;
  }
  return result;
}

function main(): void {
  echo foo(5);
}

This iterative solution avoids the recursive calls altogether, thus eliminating any potential stack overflow.