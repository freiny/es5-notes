-module(shop).
-export([cost/1]).

cost(milk) -> 2.0;
cost(eggs) -> 2.5;
cost(bread) -> 3.0;
cost(cereal) -> 3.5;
cost(oranges) -> 5.50;
cost(apples) -> 4.50.
