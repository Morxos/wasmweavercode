(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4085966401 (mut i64) (i64.const -5798317682274780170))
(global $global_3332541291 (mut f32) (f32.const -3.9569516518178816e+17))
(func $run (export "run")
    (local f32 i32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        local.get 0
        f32.neg
        f32.abs
        (f32.const -11421141.0)
        f32.le
        i32.popcnt
        (br_table 1 0)
        ;;FLAG_3
        (f32.const 2.8918215905392237e-25)
        (f64.const 3.0697699759537233e-46)
        f64.neg
        i64.trunc_f64_s
        i64.clz
        nop
        global.set $global_4085966401
        global.set $global_3332541291
    end

    ;;FLAG_1
    (f64.const 4.2408308972600884e+297)
    i64.reinterpret_f64
    block (param i64)
        i64.extend16_s
        f32.convert_i64_s
        f32.neg
        i32.reinterpret_f32
        local.tee 1
        (br_table 1 0)
        ;;FLAG_4
    end

    (f32.const -7.534267433301645e-15)
    local.tee 2
    global.set $global_3332541291
)

)