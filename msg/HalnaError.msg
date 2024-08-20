# HalnaError.msg

uint8 DEBUG = 0
uint8 INFO = 1
uint8 WARN = 2
uint8 ERROR_GENERAL = 10
uint8 ERROR_MINOR = 11
uint8 ERROR_MAJOR = 12
uint8 ERROR_CRITICAL = 13
uint8 ERROR_FATAL = 14

builtin_interfaces/Time time_stamp
string node_name
string message
uint8 level
