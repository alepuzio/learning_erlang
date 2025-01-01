%% list:foldl take a function
%% the initial value of the acculumator
%% and the list
%%


Numbers = [1,2,3,4].

lists:fold( fun(X, Sum) -> X + Sum end, 0, Numbers).
