%declare module
-module(matching_function).
% export function number with 1 param to match
% exception if the input's vlaue is not planned in the body of the function
-export([number/1]).

%body
number(one) -> 1;
number(two) -> 2;
number(three) -> 3.
