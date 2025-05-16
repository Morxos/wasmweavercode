(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_453389668 (mut f32) (f32.const -3.684135260456485e+18))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const 9)
        drop
        nop
        local.get 0
        local.get 0
        i32.mul
        f64.convert_i32_s
        i32.trunc_f64_u
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_453389668
    global.get $global_453389668
    (f32.const 525.3914184570312)
    f32.le
    f64.convert_i32_s
    nop
    f32.demote_f64
    f32.gt
    local.tee 1
    (br_table 0)
    ;;FLAG_2
)

)