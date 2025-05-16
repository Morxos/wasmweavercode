(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_427845435 (mut i32) (i32.const 65830700))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_427845435
    i64.extend_i32_s
    i64.clz
    i64.extend32_s
    local.get 0
    f32.abs
    i64.trunc_f32_u
    i64.add
    (i64.const -857476)
    i64.rem_s
    i64.ctz
    (f32.const -3.993236248334142e-07)
    i32.reinterpret_f32
    drop
    local.get 0
    drop
    global.get $global_427845435
    local.tee 1
    i32.extend16_s
    i32.ctz
    i64.extend_i32_u
    drop
    i64.extend16_s
    i64.extend8_s
    local.get 0
    drop
    i64.extend16_s
    i64.eqz
    (br_table 0)
    ;;FLAG_1
)

)