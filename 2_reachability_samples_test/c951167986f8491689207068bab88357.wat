(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_378312549 (mut i64) (i64.const -7938315249519301945))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_378312549
    f64.convert_i64_s
    f64.neg
    drop
    (i64.const -1988)
    global.get $global_378312549
    i64.le_s
    local.set 0
    return
)

)