(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2754784697 (mut i32) (i32.const -1031010527))
(global $global_561844016 (mut i64) (i64.const -913176832184274395))
(func $run (export "run")
    (local i32 f64 f32 f64 f64)
    (local $temp i32)
    block
        block
            block
                local.get 0
                global.set $global_2754784697
                local.get 0
                (f64.const 7.78118492023201e-141)
                f64.abs
                f64.sqrt
                f64.floor
                local.set 1
                nop
                f32.reinterpret_i32
                i32.trunc_f32_u
                (br_table 1 2 0 3)
                ;;FLAG_3
                (f32.const -715.298583984375)
                i32.reinterpret_f32
                f32.convert_i32_s
                local.tee 2
                i32.reinterpret_f32
                nop
                (br_table 3 0 2 1)
                ;;FLAG_4
            end

            ;;FLAG_1
            (i64.const 45113488)
            global.set $global_561844016
            (i32.const 504794129)
            i32.extend16_s
            (br_table 2 1 0)
            ;;FLAG_2
        end

        (i32.const 487466)
        f64.convert_i32_s
        f64.floor
        i64.trunc_f64_s
        (f64.const 1.6932910920560273e-162)
        local.tee 3
        local.tee 4
        i64.trunc_f64_s
        i64.add
        drop
    end

    ;;FLAG_0
    local.get 0
    i32.clz
    i32.ctz
    i64.extend_i32_u
    (i64.const -5564565)
    i64.gt_s
    i64.extend_i32_s
    i64.extend8_s
    global.set $global_561844016
)

)