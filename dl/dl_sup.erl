-module(dl_sup).
-behavior(supervisor).
-export([start_link/0]).
-export([init/1]).

start_link () ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, []).
init (FileName) ->
  UsrChild = {dl,{dl, start_link , []},
    permanent, 2000, worker, [dl]},
  {ok,{{one_for_all,2,2}, [UsrChild]}}.