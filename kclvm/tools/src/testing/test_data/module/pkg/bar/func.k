import regex

_i = {
    _c = 0
}

schema MetaJoom[_name: str]:
    name = _name
    buildJobCfg: int = Jobs["a"]

Jobs = {
    "a": 1,
    "b": 2,
}

bar = [
    MetaJoom("joom")
]

show = lambda s -> int {
    _c = _i._c
    _i._c = _c + 1
    print("show_${s}_${_c}: 1")
    _c
}

checkHttpUrl = lambda val {
    regex.match(val, "^((http|https)://)[-a-zA-Z0-9@:%._\\+~#?&//=]{2,256}\\.[a-z]{1,6}\\b([-a-zA-Z0-9@:%._\\+~#?&//=]*)$")
}

barz = show("bar")
baz2 = baz
baz = {
    x: "baz123"
}

foo = {
    name: "foo"
    value: show("foo")
}
foo1 = foo
foo2 = foo
foo3 = foo

func = lambda x {
    x
}
