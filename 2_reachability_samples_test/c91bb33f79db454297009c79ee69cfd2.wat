(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_153886092 (mut f32) (f32.const -3.328241488487252e+18))
(func $run (export "run")
    (local f64 f64 i32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        local.get 0
        global.get $global_153886092
        f64.promote_f32
        f64.copysign
        local.get 0
        local.tee 1
        f64.copysign
        (i32.const 8361161)
        f64.convert_i32_u
        f64.ne
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (f64.const 4.882128396593916e-132)
    i64.reinterpret_f64
    (i32.const -756)
    local.tee 2
    drop
    (i64.const 4129)
    i64.ge_s
    (br_table 0)
    ;;FLAG_2
    nop
    global.get $global_153886092
    (i32.const 360703102)
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_u
    i32.trunc_f64_s
    i32.popcnt
    (f64.const 2.809100347140771e+73)
    f64.neg
    f64.trunc
    local.set 0
    (i32.const -4958479)
    i32.popcnt
    i32.rem_u
    global.get $global_153886092
    drop
    drop
    local.set 3
    br 0
)

)