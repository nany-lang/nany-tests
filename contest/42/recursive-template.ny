
class Recursive42<N = 0>
{
	const value = if N == 42 then 42 else Recursive<N + 1>.value
}



public func main -> (new Recursive42).value

