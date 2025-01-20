function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if you run it with a large enough value of x, because the recursive calls to foo will eventually exceed the maximum recursion depth.  This is a common error in recursive functions.  However, a less common error arises from the way HHVM handles tail-recursive functions (functions where the recursive call is the very last operation). While many languages optimize tail-recursive functions, HHVM's implementation may not handle them in a way that prevents stack overflow in all cases, especially if there's some complex internal optimization. 