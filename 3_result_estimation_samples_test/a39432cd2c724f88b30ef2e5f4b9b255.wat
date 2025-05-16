(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4275870616 (mut f64) (f64.const 9.411995222947901e+17))
(global $global_2779276641 (mut i32) (i32.const -1843165443))
(func $run (export "run") (result i32)
    (local f32 f64 f64)
    (local $temp i32)
    local.get 0
    f32.neg
    (i64.const -944805488272017958)
    f64.convert_i64_s
    global.set $global_4275870616
    i64.trunc_f32_s
    block (param i64) (result i64)
        global.get $global_4275870616
        f64.trunc
        local.set 1
        f64.reinterpret_i64
        local.tee 2
        i32.trunc_f64_s
        f32.convert_i32_s
        (i32.const -98052504)
        (f32.const -1.2249009852114327e+37)
        local.set 0
        global.set $global_2779276641
        i64.trunc_f32_u
    end

    i64.popcnt
    i64.eqz
)

)