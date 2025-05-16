(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3212448206 f64 (f64.const 4.401426850545185e+18))
(global $global_3125433832 (mut f64) (f64.const -6.397434081335501e+16))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    block (param f64)
        block (param f64)
            nop
            f64.ceil
            f64.floor
            f64.sqrt
            global.get $global_3212448206
            f64.le
            (br_table 2 0 1)
        end

        ;;FLAG_1
        global.get $global_3212448206
        f64.nearest
        f32.demote_f64
        f32.neg
        i32.reinterpret_f32
        global.get $global_3212448206
        f64.sqrt
        global.set $global_3125433832
        (br_table 1 0)
        br 0
        global.get $global_3212448206
        i64.reinterpret_f64
        i64.clz
        i32.wrap_i64
        (br_table 0 1)
        block
            ;;FLAG_2
            (f32.const 17166253424640.0)
            i32.reinterpret_f32
            (i64.const 8394090)
            i32.wrap_i64
            i32.shr_s
            (br_table 0 1 2)
            ;;FLAG_3
            return
        end

        block
            ;;FLAG_4
            (i32.const 1279534830)
            drop
            local.get 0
            i64.trunc_f64_s
            i32.wrap_i64
            (br_table 0 2 1)
        end

    end

    global.get $global_3212448206
    f32.demote_f64
    (f32.const -3.7196012978396036e+32)
    f32.eq
    (br_table 0)
    ;;FLAG_0
    (i64.const 36416)
    f64.convert_i64_u
    f64.neg
    drop
    (f64.const 1.2794317285469844e+166)
    f64.trunc
    f64.trunc
    f32.demote_f64
    local.set 1
    br 0
)

)