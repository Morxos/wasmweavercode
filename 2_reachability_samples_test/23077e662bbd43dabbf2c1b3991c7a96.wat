(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_885207112 (mut i32) (i32.const 753299542))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (i32.const 67)
        global.set $global_885207112
        local.get 0
        global.get $global_885207112
        global.set $global_885207112
        drop
    end

    local.get 0
    f64.reinterpret_i64
    (i64.const -3620251)
    block
        ;;FLAG_3
        (f32.const 2.7630437000880637e-13)
        i32.trunc_f32_s
        i32.clz
        local.set 1
        (f32.const 6.679115802671201e-27)
        nop
        global.get $global_885207112
        i64.extend_i32_u
        f32.convert_i64_s
        f32.le
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i32.const -5173449)
    local.set 1
    (i64.const 2128)
    i64.shl
    local.set 0
    i64.trunc_f64_u
    local.set 0
    nop
)

)