(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2561882743 (mut i32) (i32.const -966470242))
(global $global_1997230073 (mut f32) (f32.const -2.699222431108694e+18))
(func $run (export "run") (result i64)
    (local f32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3980434390 (param i32)
        (i32.const 9384382)
        global.set $global_2561882743
        (f32.const -0.00011838982027256861)
        global.set $global_1997230073
        (f32.const 10769357824.0)
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3980434390
        drop
    end
    (i64.const -35)
    local.set 1
    (f64.const 9.945398382417634e+247)
    drop
    (i32.const 10)
    i32.eqz
    f32.convert_i32_s
    nop
    f32.trunc
    (i64.const 6967962)
    i64.extend16_s
    f64.reinterpret_i64
    i32.trunc_f64_u
    f32.reinterpret_i32
    f32.eq
    drop
    global.get $global_2561882743
    i32.ctz
    f32.convert_i32_s
    i64.trunc_f32_u
)

)