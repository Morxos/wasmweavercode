(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2431653031 (mut i64) (i64.const -8291539643127944037))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2431653031
    drop
    global.get $global_2431653031
    i64.extend16_s
    local.tee 0
    i64.extend8_s
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
    br 0
)

)