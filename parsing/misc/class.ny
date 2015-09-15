// This test checks a simple class

uses ui.control;


public class MyClass
{
public:
	//! A func declaration
	func name: string { return "Baka!"; }

	//! A complete func declaration
	threadunsafe func boom(t, s: string, k = 0) { return 0; }

private:
	//! A constant with inferred type
	var PI : const = 3.14159265359;

	//! An attribute
	var name: string;
}

