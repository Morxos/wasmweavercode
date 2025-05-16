(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3256720694 f32 (f32.const 5.774287623405175e+18))
(global $global_1987763291 (mut i32) (i32.const 1832079595))
(func $run (export "run")
    (local f32 i64 f32 f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    i64.trunc_f32_u
    local.tee 1
    local.get 0
    f32.ceil
    (f32.const -3.7737938983431426e-30)
    f32.abs
    f32.eq
    f64.convert_i32_s
    f64.trunc
    f32.demote_f64
    global.get $global_3256720694
    f32.lt
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_u
    local.tee 2
    f32.trunc
    f32.trunc
    i64.trunc_f32_u
    i64.sub
    f32.convert_i64_s
    f32.trunc
    f32.trunc
    f32.sqrt
    f32.trunc
    local.tee 3
    i32.trunc_f32_u
    global.set $global_1987763291
)

)