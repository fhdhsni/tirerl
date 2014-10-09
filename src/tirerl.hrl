%%%-------------------------------------------------------------------
%%% @author Juan Jose Comellas <juanjo@comellas.org>
%%% @author Mahesh Paolini-Subramanya <mahesh@dieswaytoofast.com>
%%% @copyright (C) 2011-2012 Juan Jose Comellas, Mahesh Paolini-Subramanya
%%% @doc Erlastic_search type and record definitions
%%% @end
%%%
%%% This source file is subject to the New BSD License. You should have received
%%% a copy of the New BSD license with this software. If not, it can be
%%% retrieved from: http://www.opensource.org/licenses/bsd-license.php
%%%-------------------------------------------------------------------

-type error()           :: {error, Reason :: any()}.
-type exception()       :: {exception, Reason :: any()}.
-type method()          :: atom().
-type response()        :: [tuple()] | error().
-type host()            :: undefined | string().
-type tcp_port()        :: undefined | integer().
-type connection()      :: any().
-type node_name()       :: binary().
-type index()           :: binary().
-type type()            :: binary().
-type id()              :: binary() | undefined.
-type doc()             :: binary() | list().
-type params()          :: [tuple()].
-type client_name()     :: binary().
-type registered_pool_name()   :: atom().
-type server_ref()      :: atom() | pid() | client_name().
-type fq_server_ref()   :: {host(), tcp_port(), server_ref()}.
-type destination()     :: server_ref() | fq_server_ref().
-type pool_name()       :: binary() | fq_server_ref().
-type target()          :: atom() | pid().


%% Defaults
-define(DEFAULT_HOST, "localhost").
-define(DEFAULT_PORT, 9200).
-define(DEFAULT_POOL_NAME, <<"default_tirerl_pool">>).
-define(DEFAULT_POOL_OPTIONS, [{size, 5},
                               {max_overflow, 10}
                              ]).

-define(DEFAULT_CONNECTION_OPTIONS, [{host, ?DEFAULT_HOST},
                                     {port, ?DEFAULT_PORT}
                                    ]).
-define(REGISTERED_NAME_PREFIX, "tirerl").
-define(MAX_RECONNECT_INTERVAL, 30000).

%% Errors
-define(NO_SUCH_SEQUENCE, no_such_sequence).

%% Methods
-define(STATE, <<"_cluster/state">>).
-define(HEALTH, <<"_cluster/health">>).
-define(NODES, <<"_nodes">>).
-define(STATUS, <<"_status">>).
-define(STATS, <<"stats">>).
-define(INDICES_STATS, <<"_stats">>).
-define(SEARCH, <<"_search">>).
-define(REFRESH, <<"_refresh">>).
-define(FLUSH, <<"_flush">>).
-define(OPEN, <<"_open">>).
-define(CLOSE, <<"_close">>).
-define(MGET, <<"_mget">>).
-define(COUNT, <<"_count">>).
-define(QUERY, <<"_query">>).
-define(OPTIMIZE, <<"_optimize">>).
-define(SEGMENTS, <<"_segments">>).
-define(CLEAR_CACHE, <<"_cache/clear">>).
-define(MAPPING, <<"_mapping">>).
-define(ALIASES, <<"_aliases">>).
-define(ALIAS, <<"_alias">>).
-define(UPDATE, <<"_update">>).
-define(BULK, <<"_bulk">>).

% Shortcuts
-define(ALL, <<"_all">>).
