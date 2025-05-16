(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_316316779 10 funcref)
(global $global_1190458862 (mut i32) (i32.const 1535797824))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        block
            block
                ;;FLAG_4
                (i64.const 441687)
                local.tee 0
                f64.reinterpret_i64
                i64.trunc_f64_u
                global.get $global_1190458862
                i64.extend_i32_u
                i64.le_s
                (f64.const 6.88236291417257e+259)
                i64.reinterpret_f64
                i64.eqz
                table.get $tab_316316779
                (i64.const -440)
                global.get $global_1190458862
                drop
                i64.clz
                i64.clz
                local.tee 1
                drop
                nop
                nop
                global.get $global_1190458862
                drop
                drop
                local.tee 2
                (br_table 3 2 1 0)
            end

            (f64.const 6.523472832668882e+139)
            i64.reinterpret_f64
            f32.convert_i64_s
            f32.sqrt
            i32.trunc_f32_u
            (br_table 0 1 2)
            ;;FLAG_3
        end

        ;;FLAG_1
        (i32.const 0)
        i64.extend_i32_s
        f64.convert_i64_u
        i32.trunc_f64_s
        (br_table 1 0)
        ;;FLAG_2
    end

    local.get 0
    i64.clz
    i64.popcnt
    i64.popcnt
    local.set 0
)

)