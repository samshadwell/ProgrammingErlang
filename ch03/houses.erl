-module(houses).
-export([run/0]).

% This module shows how to create and pattern match against lists and tuples.
run() ->
  House1 = {house, {color, "blue"}, {square_footage, 2000}, {city, "Seattle, WA"}},
  {house, {color, Color}, _, _} = House1,
  {house, _, {square_footage, SqFt}, _} = House1,
  House2 = {house, {color, "red"}, {square_footage, 2300}, {city, "Seattle, WA"}},
  House3 = {house, {color, "white"}, {square_footage, 1900}, {city, "Seattle, WA"}},
  Street = [House1, House2, House3],
  [First|_] = Street,
  % This actually verifies that `First` above is the same as here. For example,
  % attempting to do `[Foo, First | _]` would fail because the second element
  % of `Street` is not the blue house bound above.
  [First, Second | _] = Street,
  [First, Second, Third | Rest] = Street.
