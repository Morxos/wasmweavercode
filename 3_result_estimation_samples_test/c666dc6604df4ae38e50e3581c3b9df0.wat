(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2702451393 (mut i32) (i32.const -1276670876))
(func $run (export "run") (result f32)
    (local f64 i32)
    (local $temp i32)
    block
        (f64.const 9.25768753842547e-10)
        drop
        (i32.const -14818255)
        i32.ctz
        i64.extend_i32_s
        i32.wrap_i64
        local.get 0
        i64.reinterpret_f64
        drop
        local.get 0
        local.set 0
        i32.eqz
        br_if 0
    end

    (f64.const 2.0728800659739067e-245)
    global.get $global_2702451393
    local.set 1
    i32.trunc_f64_s
    global.get $global_2702451393
    i32.shl
    f32.convert_i32_s
    f32.floor
)

)