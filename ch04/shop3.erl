-module(shop3).
-export([total/1]).
-import(lists, [sum/1]).

total(L) ->
  sum([shop:cost(Item) * N || {Item, N} <- L]).
