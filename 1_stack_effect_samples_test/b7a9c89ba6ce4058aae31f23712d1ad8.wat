(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1961516897 (mut f32) (f32.const 5.248105407536169e+17))
(global $global_2972872738 (mut i32) (i32.const -1851987262))
(func $run (export "run")
    (local i64 i64 i32 f32)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    (f32.const -2.4815736637808124e-31)
    ;;INSPECT
    i64.trunc_f32_s
    local.tee 1
    i64.shl
    f64.convert_i64_s
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.abs
    f32.demote_f64
    f32.trunc
    f32.neg
    i64.trunc_f32_u
    i32.wrap_i64
    i32.clz
    i32.ctz
    nop
    local.get 0
    i64.ctz
    i64.eqz
    i32.shr_s
    i32.extend16_s
    i32.popcnt
    local.tee 2
    global.get $global_1961516897
    local.tee 3
    global.set $global_1961516897
    global.set $global_2972872738
    (i32.const -78)
    global.set $global_2972872738
)

)