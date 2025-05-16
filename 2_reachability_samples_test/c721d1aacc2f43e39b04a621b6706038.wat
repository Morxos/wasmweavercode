(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_339895336 (mut i32) (i32.const 728469027))
(global $global_2450072176 (mut i64) (i64.const 578638464616298425))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_4
        global.get $global_339895336
        global.set $global_339895336
        (i64.const -42)
        global.set $global_2450072176
        global.get $global_339895336
        f64.convert_i32_u
        drop
        local.get 0
        global.get $global_339895336
        local.tee 1
        i64.extend_i32_s
        i64.gt_s
        (f64.const 1.3838677616763957e-107)
        f64.sqrt
        i32.trunc_f64_s
        i32.clz
        i32.shr_s
        f64.convert_i32_u
        f64.sqrt
        f64.abs
        f64.sqrt
        i32.trunc_f64_s
        (br_table 1 0)
        (f64.const 2.5498518899804076e-47)
        f64.sqrt
        f64.nearest
        i32.trunc_f64_s
        (br_table 1 0)
        br 0
    end

    ;;FLAG_1
    global.get $global_339895336
    i32.extend16_s
    f64.convert_i32_u
    f64.abs
    f64.floor
    f32.demote_f64
    i32.trunc_f32_u
    i32.extend16_s
    (br_table 0)
    ;;FLAG_2
    global.get $global_339895336
    (br_table 0)
    ;;FLAG_3
)

)