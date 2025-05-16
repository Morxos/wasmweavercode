(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2078054020 (mut i64) (i64.const -1687971349256308876))
(global $global_2797732742 (mut f32) (f32.const 4.360471250980569e+18))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    (f32.const 7.187658075001864e+25)
    f64.promote_f32
    f64.sqrt
    ;;INSPECT
    f64.sqrt
    i32.trunc_f64_u
    i32.div_s
    i64.extend_i32_s
    i64.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    global.set $global_2078054020
    global.get $global_2078054020
    local.set 1
    (i32.const -1989152)
    f32.reinterpret_i32
    global.set $global_2797732742
    (i32.const -398785669)
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend8_s
    f32.reinterpret_i32
    f32.trunc
    global.set $global_2797732742
)

)