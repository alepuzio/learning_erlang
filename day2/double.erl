%declare module double
-module(double).
%make visible and callable functiona double_all
%with 1 paramether
-export([double_all/1]).

%body
%if the parameter is empty, then return empty list
double_all([]) -> [];
%otherwise, double the first element 
% and append the result of the call of the function
% on the other elements
double_all([First|Rest]) -> [First + First | double_all(Rest)] .
