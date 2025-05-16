(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3644574399 (mut i64) (i64.const -9107326531800397381))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            global.get $global_3644574399
            i64.clz
            i32.wrap_i64
            (i32.const 312)
            (f32.const -6.484437858673997e+32)
            local.tee 0
            f32.abs
            f32.neg
            f32.abs
            i32.reinterpret_f32
            local.set 1
            local.set 1
            (br_table 1 0 2)
            ;;FLAG_4
            return
        end

        ;;FLAG_2
        (i32.const 86096)
        local.set 1
        (i32.const -75)
        local.set 1
    end

    global.get $global_3644574399
    i64.extend16_s
    global.set $global_3644574399
    (i32.const 43441)
    i32.clz
    (br_table 0)
    nop
)

)