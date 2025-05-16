(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1415180604 (mut i32) (i32.const -1792283755))
(global $global_1842878283 (mut i64) (i64.const 1325515082209698884))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f32.sqrt
    i32.reinterpret_f32
    i32.extend16_s
    f32.convert_i32_s
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.extend32_s
    i64.popcnt
    i32.wrap_i64
    local.get 0
    f32.abs
    f32.trunc
    global.get $global_1415180604
    f64.convert_i32_s
    f64.abs
    f64.nearest
    local.tee 1
    i64.reinterpret_f64
    global.set $global_1842878283
    f32.trunc
    i32.trunc_f32_u
    i32.lt_u
    f32.reinterpret_i32
    (f32.const 1.837275091964965e+34)
    f32.max
    f64.promote_f32
    drop
)

)