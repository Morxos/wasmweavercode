(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1142949383 2 funcref)
(global $global_2984386930 (mut f32) (f32.const 8.635298792494596e+18))
(global $global_4261291469 (mut i32) (i32.const 1126227327))
(func $run (export "run")
    (local f32 f32 f32 i32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.min
    local.tee 1
    local.tee 2
    i64.trunc_f32_u
    i64.ctz
    local.get 0
    f32.abs
    global.get $global_2984386930
    f32.sub
    f32.abs
    i32.reinterpret_f32
    local.tee 3
    global.set $global_4261291469
    i64.clz
    i32.wrap_i64
    f32.reinterpret_i32
    ;;INSPECT
    f32.trunc
    f32.nearest
    f32.trunc
    local.tee 4
    i32.reinterpret_f32
    table.get $tab_1142949383
    drop
)

)