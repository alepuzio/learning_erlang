-module(languages).
-export([filter_language/1]).


Languages = [{erlang, "a functional language"}, {ruby, "a oo language"}};

proplists:get_value(key, Languages).
