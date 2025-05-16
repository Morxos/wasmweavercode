(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3525130955 (mut i32) (i32.const 54908692))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            nop
            (i64.const 8534635)
            nop
            f32.convert_i64_u
            local.set 0
        end

        ;;FLAG_3
        local.get 0
        f32.ceil
        i32.reinterpret_f32
        global.set $global_3525130955
    end

    ;;FLAG_1
    (i64.const -1744248133975863308)
    local.tee 1
    f64.reinterpret_i64
    drop
    br 0
)

)