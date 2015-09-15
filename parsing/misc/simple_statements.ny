

func main
{
	var err = 1;
	if false then
		return err;
	var a: uint16 = 42;
	{
		err = 1;
		if false then
			return if err < 1 then 10 else ++a;
	}
	while a > 0 do
	{
		--a;
		if a == 0 then
			break;
		else
			continue;
	}
	return 0;
}
