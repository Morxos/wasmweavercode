(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2527436390 (mut i64) (i64.const 1969955257882965752))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 7080882967714876746)
    local.tee 0
    i64.eqz
    i64.extend_i32_s
    global.set $global_2527436390
    br 0
)

)