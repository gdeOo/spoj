-module(tested).
-export([main/0]).

main() ->
  loop(),
  true.

loop() ->
  case io:get_line("") of
    eof -> void;
    Line ->
      case list_to_integer(string:strip(Line, right, $\n)) of
        42 -> void;
        N ->
          io:format("~B~n", [N]),
          loop()
      end
  end.