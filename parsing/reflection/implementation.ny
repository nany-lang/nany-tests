class float32
{
    operator new (x: int) -> babla;
}

const float32 = new class // auto-generated
{
    operator () (x: cref): float32 -> new float32(x)
    operator () <A>(x) -> new float<A>(x);
};


[[extension:std.reflection.Class]]
func getAttributes([[unused]] cref object: float32)
    -> [
        new class : std.reflection.Attribute { name: "x" },
        new class : std.reflection.Attribute { name: "y" }
    ]




[[final]] class TypeInfo<T>
{
published:
    const attributes -> { get: getAttributes(object) }

public:
    operator new (self object: cref) {}


private:
    [[extensible]] func getAttributes(a)
    {
        assert(false, "piko");
    }

private:
    cref object: T;
}