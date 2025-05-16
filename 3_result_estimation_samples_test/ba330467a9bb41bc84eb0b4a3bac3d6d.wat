(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3788330865 (mut i64) (i64.const 5614103694823631493))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    nop
    global.get $global_3788330865
    drop
    block
        (i32.const 337479232)
        local.set 0
        (i64.const 8)
        global.get $global_3788330865
        i64.mul
        global.get $global_3788330865
        i64.ge_s
        br_if 0
    end

    global.get $global_3788330865
    i64.popcnt
    i64.extend32_s
    f64.convert_i64_u
)

)