(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2586106031 (mut f64) (f64.const -9.114184475806917e+18))
(func $run (export "run") (result f64)
    (local f64 i64)
    (local $temp i32)
    global.get $global_2586106031
    f64.abs
    f64.sqrt
    f64.nearest
    local.set 0
    block
        i32.const 9
        loop $b_loop_2564806946 (param i32)
            (i64.const 384509)
            (i64.const -90229)
            i64.ge_u
            f64.convert_i32_s
            global.get $global_2586106031
            f64.abs
            drop
            i64.reinterpret_f64
            local.set 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2564806946
            drop
        end
        local.get 0
        f64.floor
        i32.trunc_f64_u
        i32.popcnt
        f64.convert_i32_u
        global.get $global_2586106031
        f64.div
        local.set 0
    end

    block
        (i64.const -26)
        i64.eqz
        i32.extend8_s
        i32.extend16_s
        i32.popcnt
        br_if 0
        (f64.const 6.765121868429968e-23)
        i32.trunc_f64_u
        f32.convert_i32_u
        f32.nearest
        i64.trunc_f32_s
        (i64.const 8268)
        i64.le_s
        br_if 0
    end

    (i64.const 3932224)
    f64.reinterpret_i64
)

)