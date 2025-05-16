(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2201914047 (mut f32) (f32.const -8.393389191953646e+18))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    block
        nop
        (i64.const -95)
        f32.convert_i64_u
        global.set $global_2201914047
        (i32.const -1738774654)
        br_if 0
    end

    global.get $global_2201914047
    f32.neg
    local.tee 0
    f32.neg
)

)