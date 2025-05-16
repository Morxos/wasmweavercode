(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4222870617 i32 (i32.const -691648487))
(func $run (export "run")
    (local i32 i64 f32 i32)
    (local $temp i32)
    (f32.const 3.0717619250012137e-37)
    i32.reinterpret_f32
    local.tee 0
    global.get $global_4222870617
    nop
    i32.shr_s
    (br_table 0)
    (i64.const -4405303424050759214)
    (f32.const -2.0709279628075734e-14)
    block (param f32)
        ;;FLAG_1
        (f32.const 0.8839463591575623)
        f32.le
        (i64.const 95596442)
        local.get 0
        local.set 0
        local.tee 1
        i64.eqz
        i32.gt_u
        f32.reinterpret_i32
        f32.sqrt
        local.tee 2
        f32.ceil
        block
            ;;FLAG_4
            nop
            (f32.const 7.334362983558784e-20)
            i32.trunc_f32_u
            nop
            f64.convert_i32_u
            i64.trunc_f64_s
            i64.eqz
            i32.clz
            (br_table 2 0 1)
        end

        ;;FLAG_2
        i32.trunc_f32_s
        (i64.const -46458)
        i64.eqz
        i32.eqz
        i32.xor
        local.tee 3
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_0
    f64.reinterpret_i64
    (i32.const -93891404)
    drop
    (f64.const 3.083755339943677e+19)
    f64.lt
    (br_table 0)
)

)