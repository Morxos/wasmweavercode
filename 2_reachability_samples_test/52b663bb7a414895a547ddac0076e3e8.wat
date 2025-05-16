(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1232776270 (mut i64) (i64.const 5263839015062220392))
(func $run (export "run")
    (local i32 i64 i32 f32)
    (local $temp i32)
    block
        block
            ;;FLAG_2
            block
                global.get $global_1232776270
                f32.convert_i64_s
                local.get 0
                (f32.const 5.4601298821683765e-30)
                i32.trunc_f32_s
                i32.sub
                i64.extend_i32_s
                drop
                i32.reinterpret_f32
                (br_table 0 3 2 1)
            end

            ;;FLAG_3
            global.get $global_1232776270
            local.set 1
            (f32.const 9.536190209802866e-30)
            (i32.const -104531084)
            (f32.const 9.473466679029115e+36)
            i32.reinterpret_f32
            i32.lt_u
            f64.convert_i32_s
            f64.ceil
            i32.trunc_f64_s
            local.tee 2
            i64.extend_i32_s
            i64.eqz
            i32.eqz
            i32.popcnt
            i32.popcnt
            i32.extend16_s
            i64.extend_i32_u
            i64.eqz
            f32.convert_i32_u
            f32.div
            i32.trunc_f32_u
            (br_table 1 0 2)
            ;;FLAG_4
            nop
        end

        global.get $global_1232776270
        local.get 0
        i32.extend16_s
        f32.convert_i32_s
        local.set 3
        i32.wrap_i64
        (f64.const 6.09763402946094e-148)
        f64.nearest
        i32.trunc_f64_u
        i32.add
        (br_table 1 0)
        ;;FLAG_1
    end

    (i32.const 4935921)
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_s
    i32.clz
    local.get 0
    i32.and
    (br_table 0)
    ;;FLAG_0
)

)