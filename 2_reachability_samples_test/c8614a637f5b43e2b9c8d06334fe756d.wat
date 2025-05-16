(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3445536741 (mut i64) (i64.const 1458035850165915192))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    local.get 0
    f32.min
    i32.reinterpret_f32
    local.get 0
    local.set 0
    i32.ctz
    (br_table 0)
    ;;FLAG_1
    block
        ;;FLAG_3
        (f64.const 2.348004223578147e+213)
        local.get 0
        f32.sqrt
        local.set 0
        local.set 1
        block
            ;;FLAG_4
            local.get 0
            i32.trunc_f32_u
            i64.extend_i32_s
            i64.extend16_s
            global.set $global_3445536741
        end

        br 0
    end

    ;;FLAG_2
)

)