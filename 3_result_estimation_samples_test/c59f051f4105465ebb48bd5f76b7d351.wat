(module
(type $sig_function_4147857779 (func (param f64 f64) (result i64)))
(type $sig_function_1226212502 (func))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_446273907 (mut i32) (i32.const 1703558279))
(global $global_4033670889 (mut f32) (f32.const -4.479943291101512e+17))
(func $function_4147857779 (export "function_4147857779") (param f64 f64) (result i64)
    (local i32 f64)
    (local $temp i32)
    (i32.const 519824)
    i64.extend_i32_s
    local.get 0
    f64.trunc
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    br_if 0
    i64.eqz
    local.set 2
    block
        (i32.const 2)
        nop
        i32.extend8_s
        local.set 2
        (f64.const 1.7982860425958704e+192)
        f64.nearest
        f64.nearest
        f64.abs
        f64.trunc
        drop
        br 0
        local.get 0
        local.tee 3
        drop
    end

    (f64.const 5.945786882219779e+210)
    local.get 0
    f64.gt
    f32.convert_i32_u
    global.set $global_4033670889
    (i32.const 70942)
    f32.convert_i32_u
    i64.trunc_f32_s
)
(func $function_1226212502 (export "function_1226212502")
    (local f32 f64)
    (local $temp i32)
    (f64.const 3.1145535605770847e+35)
    (f64.const 2.26646678951114e-138)
    call $function_4147857779
    f32.convert_i64_s
    i64.trunc_f32_s
    (f32.const -5636840.5)
    local.set 0
    f32.convert_i64_u
    (f32.const -1.339863780046492e-24)
    f64.promote_f32
    local.set 1
    nop
    local.set 0
)
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3804958810 (param i32)
        global.get $global_446273907
        i32.clz
        i32.eqz
        local.tee 0
        i64.extend_i32_s
        i64.clz
        f64.reinterpret_i64
        f64.floor
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3804958810
        drop
    end
    (i32.const -65924204)
    i32.clz
    f32.reinterpret_i32
    drop
    nop
    (i32.const 306)
    i64.extend_i32_s
    call $function_1226212502
)

)