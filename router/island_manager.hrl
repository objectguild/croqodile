-define(MAX_RESTART, 5).
-define(MAX_TIME, 60).
-define(SHUTDOWN_WAITING_TIME, 2000).

-record(island, {id="", type="", description="", router_pid=undefined}).
-record(client, {id="", pid=undefined}).


