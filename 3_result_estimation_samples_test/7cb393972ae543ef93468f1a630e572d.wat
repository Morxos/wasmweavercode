(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3995603373 i64 (i64.const 7144403986655242168))
(global $global_2397016025 (mut i32) (i32.const -879222351))
(func $run (export "run") (result f32)
    (local i64 f64 f32)
    (local $temp i32)
    nop
    nop
    local.get 0
    f64.reinterpret_i64
    local.set 1
    local.get 0
    global.get $global_3995603373
    i64.add
    f64.reinterpret_i64
    (i64.const -5862)
    drop
    drop
    (f64.const 1.0568589527259047e+151)
    f64.nearest
    drop
    local.get 0
    f64.convert_i64_s
    f64.floor
    f64.sqrt
    local.set 1
    i32.const 9
    loop $b_loop_1107669294 (param i32)
        (i64.const 5)
        f64.convert_i64_u
        f64.sqrt
        f32.demote_f64
        i32.reinterpret_f32
        block
            (i32.const 0)
            i32.clz
            (f64.const 1.4310546672031747e+238)
            f64.trunc
            drop
            i32.eqz
            global.set $global_2397016025
        end

        f32.convert_i32_u
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1107669294
        drop
    end
    (f32.const -9.261924093563925e-29)
    nop
)

)