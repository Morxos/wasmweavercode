(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_269708069 (mut f32) (f32.const 4.849739631689728e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 3.97235188239035e+17)
    i64.trunc_f64_s
    local.set 0
    (f64.const 4.180092240394324e+47)
    block (param f64) (result f64)
        ;;FLAG_3
        i64.reinterpret_f64
        local.set 0
        (f32.const -3.126550850673229e-25)
        (f32.const 3.047142399514868e-11)
        f32.add
        global.get $global_269708069
        f32.eq
        nop
        br_if 1
        ;;FLAG_4
        br 1
        br 1
        br 1
        local.get 0
        nop
        f64.convert_i64_u
    end

    ;;FLAG_1
    f64.abs
    f64.floor
    i64.reinterpret_f64
    i64.eqz
    i32.clz
    (br_table 0)
    ;;FLAG_2
)

)