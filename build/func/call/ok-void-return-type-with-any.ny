
func foo // return 'void'
{
}

// implicit return type: 'any', which should be mutated into 'void'
func bar
	-> foo();


public func main
{
	bar();
}
