(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1565217081 (mut i64) (i64.const 5965459072042063546))
(func $run (export "run") (result i64)
    (local f64 i64)
    (local $temp i32)
    (f64.const 6.042597189083222e-24)
    local.set 0
    (i64.const 777862876)
    local.set 1
    (f64.const 4.205073757259619e+246)
    (i64.const 430421)
    drop
    f64.neg
    i64.reinterpret_f64
    i64.extend16_s
    global.get $global_1565217081
    i64.gt_s
    f64.convert_i32_u
    f64.floor
    block (param f64)
        f64.trunc
        f32.demote_f64
        f64.promote_f32
        f64.sqrt
        f64.trunc
        drop
    end

    local.get 0
    f64.floor
    f64.sqrt
    f64.floor
    drop
    global.get $global_1565217081
)

)