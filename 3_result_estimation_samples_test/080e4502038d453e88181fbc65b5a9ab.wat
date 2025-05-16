(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_503032097 (mut f32) (f32.const -8.870617920338657e+18))
(global $global_3444332865 (mut i32) (i32.const -1922983786))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    block
        (i64.const 23379)
        i32.wrap_i64
        i32.clz
        drop
        global.get $global_503032097
        global.set $global_503032097
    end

    local.get 0
    i64.eqz
    i32.ctz
    i32.extend16_s
    global.set $global_3444332865
    (i64.const -240)
)

)