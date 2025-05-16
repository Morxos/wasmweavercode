(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3632923453 (mut f64) (f64.const -1.360246010468608e+18))
(func $run (export "run")
    (local i32 f32 i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 353.8089904785156)
    i32.trunc_f32_s
    local.set 0
    (f32.const 1.8268724138921165e+17)
    f32.sqrt
    local.tee 1
    i32.trunc_f32_u
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.extend8_s
    i64.extend8_s
    i64.ctz
    drop
    block
        (f32.const 2.85943017051596e+31)
        f32.floor
        drop
        global.get $global_3632923453
        i64.reinterpret_f64
        local.set 2
        (i32.const 210011472)
        (br_table 0 1)
        ;;FLAG_2
        return
        (f32.const -0.0012113169068470597)
        (i32.const 0)
        f32.convert_i32_s
        f32.gt
        i32.extend16_s
        f32.convert_i32_u
        i32.reinterpret_f32
        i32.eqz
        (br_table 1 0)
        ;;FLAG_3
        br 0
        (i32.const 874435260)
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
)

)