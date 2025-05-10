#if compiler(>=6.0)
print("Swift compiler 6.0 or later")
#elseif compiler(>=5.0)
print("Swift compiler 5.0 ..< 6.0")
#elseif compiler(>=4.2)
print("Swift compiler 4.2 ..< 5.0")
#elseif compiler(>=4.0)
print("Swift compiler 4.0 ..< 4.2")
#else
print("Swift compiler <4.0")
#endif

#if swift(>=6.0)
print("Swift language mode 6 or later")
#elseif swift(>=5.0)
print("Swift language mode 5")
#elseif swift(>=4.2)
print("Swift language mode 4.2")
#elseif swift(>=4.0)
print("Swift language mode 4")
#endif
