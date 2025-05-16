(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1429050123 i32 (i32.const -1262053739))
(global $global_2862248065 (mut f32) (f32.const -1.919538257448665e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    i64.trunc_f32_s
    drop
    (i32.const -4879416)
    i32.clz
    i32.extend16_s
    global.get $global_1429050123
    i32.eqz
    i32.gt_u
    i32.ctz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.extend8_s
    local.get 0
    drop
    i32.extend8_s
    i32.extend8_s
    i32.clz
    i32.extend16_s
    local.get 0
    i32.trunc_f32_s
    i32.sub
    i32.clz
    i64.extend_i32_s
    f32.convert_i64_u
    global.set $global_2862248065
)

)