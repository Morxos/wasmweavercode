(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4033907924 (mut f32) (f32.const -6.83831196363889e+18))
(global $global_823412026 (mut i32) (i32.const -1594895569))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    (f32.const 1.3804761500590956e-10)
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.eqz
    f32.convert_i32_s
    f32.trunc
    f32.abs
    local.get 0
    f32.ceil
    ;;INSPECT
    f32.min
    i64.trunc_f32_u
    i64.extend32_s
    drop
    global.get $global_4033907924
    f32.neg
    f64.promote_f32
    f64.sqrt
    f64.nearest
    f64.nearest
    f64.floor
    i32.trunc_f64_u
    local.tee 1
    global.set $global_823412026
    local.get 0
    i32.reinterpret_f32
    i32.clz
    i32.clz
    f32.convert_i32_u
    global.set $global_4033907924
)

)