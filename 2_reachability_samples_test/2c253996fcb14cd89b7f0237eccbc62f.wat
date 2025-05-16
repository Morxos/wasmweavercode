(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_521421988 (mut i64) (i64.const -669939382385133611))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 7.248685055076166e-79)
    local.set 0
    (i32.const 43344770)
    local.get 0
    i64.reinterpret_f64
    local.tee 1
    i64.eqz
    i32.ne
    f64.convert_i32_u
    i64.trunc_f64_s
    global.set $global_521421988
    (i32.const 4)
    (br_table 0)
    ;;FLAG_1
    br 0
)

)