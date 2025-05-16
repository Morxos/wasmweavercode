(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1660054305 (mut f32) (f32.const -4.0098534855572193e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    block
        ;;FLAG_2
        global.get $global_1660054305
        drop
        (i64.const 517495688)
        local.tee 0
        i64.ctz
        global.get $global_1660054305
        drop
        i64.clz
        nop
        i64.popcnt
        f32.convert_i64_u
        i32.trunc_f32_u
        (br_table 1 0)
        ;;FLAG_3
        block
            global.get $global_1660054305
            global.get $global_1660054305
            f32.abs
            f32.ge
            f64.convert_i32_u
            f64.sqrt
            drop
            (i64.const -41)
            f64.convert_i64_u
            drop
        end

        ;;FLAG_4
    end

    ;;FLAG_0
    global.get $global_1660054305
    f32.neg
    local.tee 1
    f32.floor
    i32.reinterpret_f32
    f32.reinterpret_i32
    i64.trunc_f32_s
    i64.eqz
    (br_table 0)
    ;;FLAG_1
)

)