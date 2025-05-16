(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_475084299 (mut i64) (i64.const -8252211666258665369))
(global $global_3078448190 (mut i32) (i32.const -526073037))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        (f32.const -1.603379408410266e-11)
        f32.neg
        i64.trunc_f32_u
        global.set $global_475084299
    end

    ;;FLAG_1
    (i32.const 165855885)
    f32.convert_i32_u
    f32.sqrt
    f32.neg
    local.tee 0
    (i32.const 45144)
    global.set $global_3078448190
    local.get 0
    f32.copysign
    local.set 0
    (f32.const 3.982394428023206e+34)
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
)

)