(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_314870252 (mut i64) (i64.const -195734250068225414))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    block
        ;;FLAG_1
        block
            ;;FLAG_3
            (f64.const 100894542678801.69)
            local.tee 0
            (f64.const 0.0)
            i64.trunc_f64_s
            f64.reinterpret_i64
            i64.reinterpret_f64
            i64.eqz
            i32.ctz
            f64.convert_i32_u
            f64.le
            (br_table 0 1 2)
            ;;FLAG_4
        end

        (i64.const 7292244)
        i64.extend16_s
        i64.clz
        global.get $global_314870252
        i64.gt_s
        block
            nop
            local.get 0
            global.get $global_314870252
            f64.convert_i64_u
            f64.le
            (br_table 0 1 2)
            block
                (f32.const 529332975960064.0)
                f32.floor
                f32.sqrt
                i32.reinterpret_f32
                i32.extend8_s
                (br_table 3 0 1 2)
            end

        end

        i32.eqz
        (br_table 0 1)
        (i64.const 4228992309124454584)
        i64.extend16_s
        i64.eqz
        br_if 0
        ;;FLAG_2
    end

    (f32.const 7.878054875121165e-10)
    i32.reinterpret_f32
    local.set 1
    global.get $global_314870252
    i64.eqz
    (br_table 0)
    ;;FLAG_0
    nop
)

)