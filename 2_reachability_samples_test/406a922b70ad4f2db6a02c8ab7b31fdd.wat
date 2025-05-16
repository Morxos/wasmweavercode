(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_479489482 (mut i64) (i64.const -9219231420526509502))
(global $global_3092877884 (mut f64) (f64.const -7.625009295973618e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const -2137)
        i64.ctz
        global.set $global_479489482
        nop
        nop
    end

    ;;FLAG_1
    (f64.const 7.812161754219619e-86)
    i64.trunc_f64_s
    i64.extend16_s
    i64.extend16_s
    nop
    global.get $global_479489482
    i64.rotl
    local.get 0
    global.set $global_3092877884
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
    (i64.const 308226)
    i64.clz
    (i64.const 199694)
    i64.extend32_s
    i64.shl
    drop
)

)