(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3527022873 (mut i64) (i64.const 627337368075917827))
(func $run (export "run") (result f32)
    (local $temp i32)
    global.get $global_3527022873
    i64.popcnt
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.reinterpret_i32
)

)