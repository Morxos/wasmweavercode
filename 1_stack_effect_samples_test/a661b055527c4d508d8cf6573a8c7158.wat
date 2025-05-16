(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2274842631 (mut i32) (i32.const -159476942))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    i64.reinterpret_f64
    i64.ctz
    f64.convert_i64_s
    f64.floor
    f64.trunc
    i64.reinterpret_f64
    local.set 1
    (i32.const -8212)
    (i32.const 4)
    i32.div_s
    i32.clz
    f32.reinterpret_i32
    ;;INSPECT
    i32.trunc_f32_u
    f32.reinterpret_i32
    (i32.const 16549446)
    i32.clz
    i32.clz
    f32.reinterpret_i32
    f32.add
    i32.reinterpret_f32
    i32.eqz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_2274842631
)

)