(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1195754366 (mut f32) (f32.const 4.703991806285578e+17))
(func $run (export "run")
    (local f32 i32 f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -512974)
    i64.extend_i32_u
    global.get $global_1195754366
    f32.trunc
    local.tee 0
    i32.reinterpret_f32
    i32.ctz
    f64.convert_i32_s
    (i32.const -25)
    global.get $global_1195754366
    i32.reinterpret_f32
    i32.lt_u
    local.set 1
    local.tee 2
    i64.reinterpret_f64
    i64.eq
    (br_table 0)
    ;;FLAG_1
    nop
    return
)

)