public func main
{
	// bug in mul: 
	// error: intrinsic 'mul': invalid type for parameter 1, got 'ref __u64', expected non-void builtin (__bool, __i32, ...)
	// error: intrinsic 'mul': invalid type for parameter 2, got '__u32', expected non-void builtin (__bool, __i32, ...)
	// builtin type promotion
	var m_capacity = 0__u32;
	8__u64 * m_capacity;
}
