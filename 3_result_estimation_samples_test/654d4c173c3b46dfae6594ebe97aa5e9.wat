(module
(type $sig_function_2649085427 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1555206485 (mut i32) (i32.const 552789622))
(global $global_1544248665 (mut i64) (i64.const -4715424107564775275))
(global $global_378360503 (mut f32) (f32.const 1.27881008842906e+18))
(func $function_2649085427 (export "function_2649085427")
    (local i32)
    (local $temp i32)
    global.get $global_1555206485
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.sqrt
    i32.trunc_f64_s
    local.tee 0
    (f64.const 1.9154025792759157e-174)
    i32.trunc_f64_u
    i32.rotl
    br_if 0
    nop
)
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i32.const 1216664465)
    f32.convert_i32_u
    (i64.const -90907)
    local.get 0
    f64.convert_i32_u
    i32.trunc_f64_u
    i32.const 9
    loop $b_loop_1558010067 (param i32)
        (i32.const 102)
        i32.clz
        i32.ctz
        global.set $global_1555206485
        nop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1558010067
        drop
    end
    i32.clz
    drop
    nop
    global.set $global_1544248665
    global.set $global_378360503
    (i64.const 1021718)
    call $function_2649085427
    i32.wrap_i64
)

)