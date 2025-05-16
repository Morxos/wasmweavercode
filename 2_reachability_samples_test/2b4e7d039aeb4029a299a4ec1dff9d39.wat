(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3642167552 (mut i32) (i32.const -1564857334))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        global.get $global_3642167552
        nop
        f32.convert_i32_s
        f32.neg
        local.tee 0
        i32.trunc_f32_u
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_1
    (i32.const 52)
    f64.convert_i32_s
    f32.demote_f64
    local.tee 1
    f32.sqrt
    f32.nearest
    drop
    br 0
)

)