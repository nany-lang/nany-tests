

func main
{
	for node, parent, mydepth in tree.leafs(func (node) -> node.depth) do
	{
		io.out << mydepth << io.eol;
	}
}
