(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_23451732 (mut f32) (f32.const 2.501580817969447e+18))
(global $global_1813802958 (mut i64) (i64.const -5167935214270159836))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const -271)
        local.get 0
        f32.demote_f64
        global.set $global_23451732
        i32.wrap_i64
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    nop
    (i64.const -251101)
    i64.extend32_s
    global.set $global_1813802958
    (f32.const 4.824173104932613e+35)
    (i64.const -31084090)
    f32.convert_i64_s
    f32.gt
    (br_table 0)
    ;;FLAG_2
    return
)

)