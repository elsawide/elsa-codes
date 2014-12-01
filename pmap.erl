-module(pmap).

-export([start/0]).

start()->
	inets:start(),
	ssl:start(),
	{ok, {{Version, 200, ReasonPhrase}, Headers, Body}} = httpc:request(get, {"http://api.themoviedb.org/3/movie/now_playing?api_key=b3f13a6786952ffcbccfa7cc031a4279", []}, [], []).
{ok, {{Version, 200, ReasonPhrase}, Headers, Body}} = httpc:request(get, {"http://api.themoviedb.org/3/movie/now_playing?api_key=b3f13a6786952ffcbccfa7cc031a4279", []}, [], []).

%{ok, "200", _, Results} = ibrowse:send_req("http://api.themoviedb.org/3/movie/now_playing?api_key=b3f13a6786952ffcbccfa7cc031a4279", [{'Accept', 'application/json'}], get).