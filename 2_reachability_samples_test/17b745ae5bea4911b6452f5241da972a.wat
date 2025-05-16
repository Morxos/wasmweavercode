(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 4)
    (i32.const -8289)
    i32.gt_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (f32.const 1.601612846657401e-36)
    f32.ceil
    i32.trunc_f32_u
    local.get 0
    i32.le_s
    (br_table 0)
    ;;FLAG_2
    (i32.const 335256)
    i32.popcnt
    i32.extend16_s
    local.set 0
    br 0
)

)