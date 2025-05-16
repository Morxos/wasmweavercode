(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i32.const -85)
        i32.popcnt
        (i32.const -2725)
        i32.shl
        local.set 0
    end

    ;;FLAG_1
    nop
    (i32.const 38393237)
    f32.convert_i32_u
    local.tee 1
    f32.floor
    i32.trunc_f32_u
    i32.clz
    (br_table 0)
    ;;FLAG_2
    br 0
)

)