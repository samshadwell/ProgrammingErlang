-module(geometry).
-export([area/1, test/0]).

area({circle, Radius})           -> 3.14159 * Radius * Radius;
area({rectangle, Length, Width}) -> Length * Width;
area({square, Side})             -> Side * Side.

test() ->
  12 = area({rectangle, 3, 4}),
  144 = area({square, 12}),
  tests_pass.
