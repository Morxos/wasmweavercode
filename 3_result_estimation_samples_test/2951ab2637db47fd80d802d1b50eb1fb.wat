(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2648290646 (mut i64) (i64.const 6057747550600360218))
(func $run (export "run") (result f64)
    (local $temp i32)
    global.get $global_2648290646
    i64.clz
    i64.extend32_s
    f32.convert_i64_u
    f32.ceil
    f32.nearest
    f32.ceil
    drop
    (i32.const -85037)
    i32.ctz
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_s
    f64.convert_i32_u
    f64.floor
)

)