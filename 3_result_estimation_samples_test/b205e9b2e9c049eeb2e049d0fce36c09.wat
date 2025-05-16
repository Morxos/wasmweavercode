(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2820831507 (mut f64) (f64.const 2.80228770429185e+18))
(func $run (export "run") (result i64)
    (local i32)
    (local $temp i32)
    (i64.const -768652446944008030)
    block (param i64) (result f64)
        i64.extend8_s
        f64.convert_i64_s
        global.get $global_2820831507
        f64.lt
        local.tee 0
        f32.convert_i32_u
        i64.trunc_f32_s
        f32.convert_i64_u
        i64.trunc_f32_u
        br 1
        i64.extend8_s
        i64.popcnt
        f64.reinterpret_i64
    end

    f64.ceil
    global.get $global_2820831507
    f64.div
    i64.reinterpret_f64
)

)