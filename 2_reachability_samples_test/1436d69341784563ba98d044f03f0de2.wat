(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3470417543 (mut f32) (f32.const -7.956907264982385e+17))
(global $global_181105752 (mut i64) (i64.const 4980377291573065738))
(func $run (export "run")
    (local i32 i64 f32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        global.get $global_3470417543
        f32.floor
        (i32.const -876982353)
        i32.clz
        drop
        local.get 0
        (i64.const 132380)
        f64.convert_i64_u
        i64.trunc_f64_u
        f64.convert_i64_u
        i64.trunc_f64_u
        i64.extend8_s
        local.tee 1
        i64.popcnt
        i64.popcnt
        f32.convert_i64_u
        f32.sqrt
        nop
        local.set 2
        i32.clz
        f32.convert_i32_u
        f32.le
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i64.const -15)
    i64.extend8_s
    global.set $global_181105752
    (f32.const 4.846013624889915e+25)
    local.tee 3
    nop
    f32.trunc
    f32.nearest
    global.set $global_3470417543
    local.get 0
    f32.convert_i32_s
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_2
)

)