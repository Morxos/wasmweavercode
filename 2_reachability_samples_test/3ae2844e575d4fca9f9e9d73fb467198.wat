(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1065988835 (mut i32) (i32.const -635442322))
(global $global_2740088003 (mut i64) (i64.const 7822744215273098384))
(func $run (export "run")
    (local f32 i64 i32)
    (local $temp i32)
    (i64.const -153079398)
    i64.eqz
    global.set $global_1065988835
    (i32.const 6)
    (i32.const -10498)
    i32.rem_u
    (br_table 0)
    (i32.const 902)
    (br_table 0)
    ;;FLAG_0
    nop
    block
        block
            ;;FLAG_2
            block
                global.get $global_1065988835
                (f32.const -6189483812716544.0)
                f32.ceil
                f32.ceil
                f32.neg
                local.tee 0
                i32.reinterpret_f32
                i32.lt_u
                i32.clz
                br_if 0
            end

            (i64.const -335679)
            global.set $global_2740088003
            block
                ;;FLAG_3
                (i64.const 6810931789072994642)
                i64.ctz
                i32.wrap_i64
                i32.popcnt
                f64.convert_i32_s
                i64.trunc_f64_s
                i64.popcnt
                local.tee 1
                i64.clz
                f64.convert_i64_s
                i64.reinterpret_f64
                i64.ctz
                i64.extend16_s
                i64.eqz
                (br_table 0 2 1 3)
                ;;FLAG_4
            end

            global.get $global_1065988835
            (br_table 1 2 0)
        end

        global.get $global_1065988835
        drop
        local.get 0
        f32.abs
        f32.sqrt
        (i32.const 921807293)
        global.set $global_1065988835
        i32.reinterpret_f32
        local.tee 2
        (br_table 1 0)
    end

    ;;FLAG_1
)

)