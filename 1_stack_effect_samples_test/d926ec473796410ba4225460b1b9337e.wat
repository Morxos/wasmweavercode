(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3809769809 (mut i64) (i64.const 3968682601088072422))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    (i64.const -62894874)
    i64.extend32_s
    i64.extend16_s
    nop
    (i64.const 4036981)
    i64.div_u
    i64.eqz
    i64.extend_i32_s
    i64.clz
    f32.convert_i64_s
    i32.trunc_f32_u
    i32.extend8_s
    i32.extend8_s
    i32.ctz
    i32.popcnt
    local.tee 0
    local.tee 1
    i32.extend8_s
    f32.reinterpret_i32
    ;;INSPECT
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.nearest
    i32.trunc_f64_u
    local.set 0
    (i64.const -699505)
    global.set $global_3809769809
)

)