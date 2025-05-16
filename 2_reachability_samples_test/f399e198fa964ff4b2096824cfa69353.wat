(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1488911442 (mut i32) (i32.const -1717851131))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (i32.const -7047914)
        f64.convert_i32_u
        f32.demote_f64
        (f32.const -1.0285212532499266e-35)
        nop
        f32.gt
        global.set $global_1488911442
    end

    ;;FLAG_1
    global.get $global_1488911442
    (f32.const 1.2347431558479913e+31)
    local.tee 0
    i32.reinterpret_f32
    i32.ctz
    f32.convert_i32_s
    i32.trunc_f32_u
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.extend16_s
    i64.extend16_s
    i64.popcnt
    i64.eqz
    i32.le_s
    global.set $global_1488911442
)

)