-define(EVENT_SUB_PATH, "events/").
-define(DATA_SUB_PATH, "eventsdata/").

-define(STORAGE_PATH, "/storage/").
-define(ROOT_STORAGE_DIR, "." ++ ?STORAGE_PATH).
-define(ROOT_STORAGE_DATA_DIR, ?ROOT_STORAGE_DIR ++ ?DATA_SUB_PATH).
-define(ROOT_STORAGE_EVENT_DIR, ?ROOT_STORAGE_DIR ++ ?EVENT_SUB_PATH).

-define(HISTORY_PATH, "/backup/").
-define(ROOT_HISTORY_DIR, "." ++ ?HISTORY_PATH).
-define(ROOT_HISTORY_DATA_DIR, ?ROOT_HISTORY_DIR ++ ?DATA_SUB_PATH).
-define(ROOT_HISTORY_EVENT_DIR, ?ROOT_HISTORY_DIR ++ ?EVENT_SUB_PATH).

-define(MAYBE_PREFIX, <<"maybe">>).
-define(TEMP_EXTENSION, ".tmp").
