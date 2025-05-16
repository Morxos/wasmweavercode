(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3752262409 (mut f64) (f64.const 6.456111994694482e+18))
(global $global_4002602154 (mut f32) (f32.const 8.448002484261093e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    global.get $global_3752262409
    local.get 0
    (f64.const 2.1982261067060246e+282)
    f64.floor
    f64.floor
    drop
    i64.trunc_f32_s
    ;;INSPECT
    f64.convert_i64_u
    f64.nearest
    (f32.const -4.671269637321551e+32)
    i32.reinterpret_f32
    i32.clz
    i32.extend8_s
    i32.eqz
    f64.convert_i32_s
    f64.max
    f64.mul
    f64.floor
    drop
    f32.trunc
    global.set $global_4002602154
)

)