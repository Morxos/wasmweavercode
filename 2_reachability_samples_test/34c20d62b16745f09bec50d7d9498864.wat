(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1290122028 (mut i64) (i64.const 4576955455277004343))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i64.const 656)
    global.set $global_1290122028
    (f32.const 1.2036042796219259e-25)
    local.get 0
    i32.extend16_s
    f64.convert_i32_u
    i32.trunc_f64_u
    i64.extend_i32_u
    f32.convert_i64_u
    f32.le
    (br_table 0)
    ;;FLAG_1
    br 0
)

)