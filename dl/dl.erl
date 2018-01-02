-module(dl).
-behavior(gen_server).

-export([start_link/0]).
-export([init/1, handle_call/3, handle_cast/2]).

-incude("common.hrl").

start_link () ->
    gen_server:start_link(?MODULE, [], []).

init (_Args) ->
  {ok, #rec_dl {persons = ?STARTUP_PERSONS}}.

handle_call (_Msg, _From, State) ->
  {reply, ok, State}.

handle_cast (_Msg, State) ->
  {noreply, State}.