(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_119484395 (mut f32) (f32.const -4.15366940031189e+17))
(func $run (export "run")
    (local i32 f64 f32 f32)
    (local $temp i32)
    local.get 0
    block
        ;;FLAG_2
        block
            global.get $global_119484395
            i64.trunc_f32_s
            i64.ctz
            i64.extend32_s
            f64.convert_i64_u
            local.tee 1
            i64.trunc_f64_u
            drop
        end

        ;;FLAG_3
        local.get 0
        local.set 0
        (i32.const -5083)
        (i64.const -6808)
        f32.convert_i64_s
        i64.trunc_f32_s
        i64.eqz
        i32.shr_u
        br_if 0
        ;;FLAG_4
    end

    (i32.const -92614732)
    i32.extend8_s
    i32.popcnt
    i32.lt_u
    local.set 0
    (i32.const 94)
    (br_table 0)
    ;;FLAG_0
    local.get 0
    global.get $global_119484395
    local.set 2
    local.get 0
    local.get 0
    i32.popcnt
    i32.shr_u
    f32.convert_i32_s
    local.tee 3
    i32.reinterpret_f32
    i32.le_s
    (br_table 0)
    ;;FLAG_1
)

)