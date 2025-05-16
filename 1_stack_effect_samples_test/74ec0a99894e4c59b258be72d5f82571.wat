(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4045145496 (mut i64) (i64.const 4592557312857874627))
(global $global_133477990 (mut i32) (i32.const 1346139061))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    f64.trunc
    i64.trunc_f64_u
    (f32.const 8.48480427791708e+31)
    f64.promote_f32
    f64.floor
    f64.floor
    f64.sqrt
    f64.floor
    f64.floor
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.sub
    f64.convert_i64_s
    f64.abs
    i32.trunc_f64_u
    local.tee 1
    ;;INSPECT
    local.get 0
    i64.trunc_f64_u
    global.set $global_4045145496
    i32.extend8_s
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_133477990
)

)