_i = {
    _c = 0
}

show = lambda s -> int {
    _c = _i._c
    _i._c = _c + 1
    print("show_${_c}: 1")
    _c
}

foo1 = foo
foo2 = foo
foo  = {
    name: "foo"
    value: show("foo")
}
foo3 = foo
