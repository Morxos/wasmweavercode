(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2893985147 (mut i64) (i64.const -1550801669641272006))
(global $global_187364697 (mut i32) (i32.const -86581402))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f64.const 3.9368821166114934e-269)
        f64.floor
        i64.trunc_f64_s
        i64.clz
        global.set $global_2893985147
        nop
    end

    ;;FLAG_1
    (f32.const -24030.107421875)
    f64.promote_f32
    f64.trunc
    i64.reinterpret_f64
    local.get 0
    i32.reinterpret_f32
    i32.clz
    i32.clz
    local.set 1
    (f32.const 6.896786570618007e-37)
    i64.trunc_f32_u
    i64.gt_s
    global.set $global_187364697
)

)