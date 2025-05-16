(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2149839083 (mut f64) (f64.const -2.1165682025394196e+18))
(global $global_328737973 (mut i32) (i32.const -1010076410))
(func $run (export "run")
    (local f64 f64 i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -58)
    i64.extend8_s
    i64.popcnt
    block
        ;;FLAG_2
        block
            ;;FLAG_3
            block
                global.get $global_2149839083
                global.get $global_2149839083
                f64.mul
                global.get $global_2149839083
                f64.ne
                f64.convert_i32_u
                (f64.const 3.5086763685960775e-86)
                f64.copysign
                f64.trunc
                i64.trunc_f64_s
                i32.wrap_i64
                f64.convert_i32_u
                f64.trunc
                f32.demote_f64
                f32.abs
                i32.trunc_f32_u
                global.set $global_328737973
            end

            ;;FLAG_4
            local.get 0
            f64.trunc
            local.tee 1
            local.set 0
        end

        (i64.const -30405768)
        f32.convert_i64_u
        f32.ceil
        i32.reinterpret_f32
        (br_table 0 1)
        local.get 0
        global.set $global_2149839083
    end

    drop
    global.get $global_2149839083
    global.get $global_2149839083
    f64.gt
    (br_table 0)
    global.get $global_2149839083
    f64.neg
    i64.trunc_f64_u
    local.tee 2
    (i64.const -370986)
    i64.rem_u
    f32.convert_i64_u
    i32.reinterpret_f32
    (br_table 0)
    (i64.const 602062693)
    i64.eqz
    br_if 0
    ;;FLAG_1
)

)