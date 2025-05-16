(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2746788820 i64 (i64.const 8194799119690638244))
(global $global_66423679 (mut i64) (i64.const 5343704319180704167))
(global $global_628244654 (mut i32) (i32.const -391997863))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    f64.sqrt
    i64.trunc_f64_s
    i64.extend32_s
    ;;INSPECT
    local.get 0
    i64.reinterpret_f64
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.eqz
    i32.extend16_s
    drop
    i64.ctz
    global.get $global_2746788820
    i64.rem_s
    local.tee 1
    global.set $global_66423679
    global.get $global_2746788820
    local.set 1
    local.get 0
    i64.trunc_f64_u
    i32.wrap_i64
    global.set $global_628244654
)

)