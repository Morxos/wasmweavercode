(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4240187939 (mut i64) (i64.const 5500680005189714075))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    f32.abs
    f32.floor
    f32.floor
    f32.sqrt
    f32.ceil
    i32.reinterpret_f32
    i32.extend16_s
    i32.popcnt
    f64.convert_i32_s
    f64.abs
    f64.sqrt
    i64.trunc_f64_s
    i64.extend32_s
    i64.popcnt
    f32.convert_i64_u
    local.get 0
    ;;INSPECT
    f32.eq
    f64.convert_i32_u
    i64.reinterpret_f64
    global.set $global_4240187939
    local.get 0
    local.set 0
)

)