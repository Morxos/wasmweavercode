(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3829776843 (mut i64) (i64.const 7063979247267450419))
(global $global_4246964246 (mut i32) (i32.const -1983025216))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.sqrt
    f32.add
    i32.trunc_f32_u
    f32.convert_i32_s
    ;;INSPECT
    i64.trunc_f32_u
    i64.extend32_s
    i64.extend32_s
    i64.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    global.set $global_3829776843
    global.get $global_3829776843
    local.set 1
    (i32.const 25786789)
    global.get $global_3829776843
    global.set $global_3829776843
    f32.convert_i32_u
    i32.trunc_f32_u
    global.set $global_4246964246
    global.get $global_3829776843
    global.set $global_3829776843
    local.get 0
    i32.reinterpret_f32
    i32.extend8_s
    global.set $global_4246964246
)

)