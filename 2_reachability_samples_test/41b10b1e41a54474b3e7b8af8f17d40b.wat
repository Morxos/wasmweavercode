(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i32.const -658384)
        i32.clz
        f32.reinterpret_i32
        i32.trunc_f32_u
        i32.extend8_s
        (f32.const -6.954230919708884e+33)
        i32.reinterpret_f32
        i32.le_u
        f64.convert_i32_s
        i64.reinterpret_f64
        i64.eqz
        (i32.const 91)
        i32.gt_s
        i64.extend_i32_s
        i32.wrap_i64
        local.set 0
    end

    ;;FLAG_1
    (f32.const 0.19772878289222717)
    f32.ceil
    f32.trunc
    nop
    i32.trunc_f32_u
    local.tee 1
    (br_table 0)
    ;;FLAG_2
)

)