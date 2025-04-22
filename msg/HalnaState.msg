# モード関連
uint8 MODE_IDLE = 0
uint8 MODE_MAPPING = 1
uint8 MODE_NAVIGATION = 2
uint8 MODE_MARKER_NAVIGATION = 3
uint8 mode

# 操作ステータス
uint8 STATE_NEUTRAL = 0
uint8 STATE_MANUAL = 1
uint8 STATE_AUTONOMOUS = 2
uint8 operation_state

# 障害物 or エラーステータス
uint8 STATUS_OK = 0
uint8 system_status
string system_message

# 任意でメッセージやタイムスタンプ
builtin_interfaces/Time stamp
string message
