(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1812363202 (mut i64) (i64.const 1040170075067278825))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -1982440)
    i64.ctz
    nop
    drop
    local.get 0
    global.set $global_1812363202
    (i32.const 62430)
    (br_table 0)
    ;;FLAG_1
    br 0
)

)