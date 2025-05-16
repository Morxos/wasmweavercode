(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3597502296 (mut f64) (f64.const -4.945109570987356e+17))
(global $global_1612981015 (mut i32) (i32.const -750690808))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_3
            (i32.const -1275)
            local.set 0
            local.get 0
            (f64.const 1.0623453438330454e+150)
            i64.reinterpret_f64
            local.tee 1
            i64.eqz
            f32.convert_i32_u
            i64.trunc_f32_s
            i64.extend32_s
            i64.extend16_s
            f64.convert_i64_u
            f64.sqrt
            f64.neg
            global.set $global_3597502296
            i32.clz
            (br_table 1 2 0)
            ;;FLAG_4
        end

        local.get 0
        i32.eqz
        f64.convert_i32_u
        f64.trunc
        f32.demote_f64
        i32.trunc_f32_u
        i32.popcnt
        (br_table 0 1)
    end

    ;;FLAG_1
    (f64.const 1.8236243291666847e+244)
    nop
    i64.reinterpret_f64
    local.set 1
    (f32.const 1.5617418469560107e-10)
    i32.trunc_f32_u
    (br_table 0)
    (f64.const 0.0)
    i64.trunc_f64_u
    i32.wrap_i64
    (f64.const 3.446663604771611e+196)
    f64.trunc
    f64.abs
    i64.reinterpret_f64
    i64.eqz
    i32.shr_s
    global.set $global_1612981015
    global.get $global_3597502296
    i64.trunc_f64_u
    i64.extend16_s
    i64.eqz
    (br_table 0)
    br 0
)

)