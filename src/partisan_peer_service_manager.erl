%% -------------------------------------------------------------------
%%
%% Copyright (c) 2016 Christopher Meiklejohn.  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

-module(partisan_peer_service_manager).
-author("Christopher S. Meiklejohn <christopher.meiklejohn@gmail.com>").

-include("partisan.hrl").

-callback start_link() -> {ok, pid()} | ignore | {error, term()}.
-callback members() -> [node()].

-callback get_local_state() -> term().

-callback join(node_spec()) -> ok.
-callback leave() -> ok.
-callback leave(node_spec()) -> ok.

-callback send_message(name(), message()) -> ok.
-callback receive_message(message()) -> ok.
-callback forward_message(name(), pid(), message()) -> ok.

-callback decode(term()) -> term().

-callback reserve(atom()) -> ok | {error, no_available_slots}.
