(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3856140036 (mut f64) (f64.const 4.1166309200253317e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 0.05996749922633171)
    local.get 0
    (i64.const 4433)
    f64.convert_i64_u
    global.set $global_3856140036
    local.set 0
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)