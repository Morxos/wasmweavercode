(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2407753016 (mut i64) (i64.const 5710953465759179831))
(global $global_51180579 (mut f32) (f32.const 8.282637584711025e+18))
(func $run (export "run")
    (local i32 i32 i64)
    (local $temp i32)
    local.get 0
    i32.ctz
    i32.clz
    local.tee 1
    f64.convert_i32_s
    ;;INSPECT
    f64.sqrt
    f32.demote_f64
    f32.floor
    i64.trunc_f32_s
    f64.convert_i64_u
    i64.reinterpret_f64
    global.set $global_2407753016
    global.get $global_2407753016
    local.tee 2
    global.set $global_2407753016
    (i32.const 106070922)
    f32.convert_i32_u
    global.set $global_51180579
    local.get 0
    f32.convert_i32_u
    global.set $global_51180579
    nop
)

)