(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_404099426 i32 (i32.const 2080306722))
(func $run (export "run") (result f32)
    (local f32 f64)
    (local $temp i32)
    (i64.const 799)
    local.get 0
    f64.promote_f32
    i32.trunc_f64_u
    drop
    f64.convert_i64_s
    f64.floor
    local.get 0
    f64.promote_f32
    f64.min
    nop
    (i64.const -8660994)
    f64.convert_i64_s
    local.set 1
    i32.trunc_f64_s
    f64.convert_i32_u
    drop
    block
        (f64.const 1.335415588523491e+66)
        f64.neg
        i64.reinterpret_f64
        drop
        global.get $global_404099426
        f32.convert_i32_u
        f64.promote_f32
        i32.trunc_f64_s
        f64.convert_i32_s
        i64.reinterpret_f64
        i64.popcnt
        f32.convert_i64_s
        f64.promote_f32
        i32.trunc_f64_s
        (br_table 0)
    end

    local.get 0
)

)