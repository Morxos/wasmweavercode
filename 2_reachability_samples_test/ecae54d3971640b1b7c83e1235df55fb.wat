(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_10578756 (mut i32) (i32.const -447263744))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const 4.436581002975587e-39)
    i32.reinterpret_f32
    f64.convert_i32_s
    i64.trunc_f64_u
    local.tee 0
    f64.convert_i64_u
    i64.trunc_f64_u
    block (param i64)
        ;;FLAG_2
        i64.extend16_s
        i64.extend16_s
        i64.eqz
        (f64.const 5.0806050491833885e+81)
        i64.reinterpret_f64
        (i64.const -50673)
        i64.rotr
        local.tee 1
        i64.eqz
        local.set 2
        (i64.const 1740)
        local.get 0
        f64.convert_i64_u
        (f32.const 8.75327543781168e-08)
        i32.reinterpret_f32
        f64.convert_i32_s
        f64.eq
        (f32.const 2308640216186880.0)
        i32.reinterpret_f32
        i32.shr_s
        f32.reinterpret_i32
        i32.trunc_f32_u
        global.set $global_10578756
        i64.eqz
        i64.extend_i32_u
        i64.eqz
        i32.lt_u
        (br_table 1 0)
        ;;FLAG_3
        return
    end

    ;;FLAG_1
    br 0
)

)