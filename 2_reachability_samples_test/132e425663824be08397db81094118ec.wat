(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3447126128 i32 (i32.const -2030377023))
(global $global_1009187697 (mut f32) (f32.const -4.9914505314330214e+17))
(func $run (export "run")
    (local f64 f64 f32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    local.tee 1
    f64.nearest
    f32.demote_f64
    f32.ceil
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    global.get $global_3447126128
    block (param i32)
        ;;FLAG_3
        global.get $global_3447126128
        i32.lt_s
        i64.extend_i32_u
        i32.wrap_i64
        (i32.const 91136)
        i32.shr_s
        f32.reinterpret_i32
        f32.nearest
        f32.ceil
        global.set $global_1009187697
    end

    ;;FLAG_2
    global.get $global_3447126128
    f32.convert_i32_u
    f32.nearest
    f32.trunc
    local.tee 2
    i32.trunc_f32_u
    global.get $global_3447126128
    i32.xor
    f32.reinterpret_i32
    drop
)

)