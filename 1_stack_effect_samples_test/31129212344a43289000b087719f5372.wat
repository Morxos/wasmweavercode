(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1066933909 i64 (i64.const -9028258826804980812))
(global $global_977602914 (mut i32) (i32.const 1896311460))
(global $global_4281848908 (mut i64) (i64.const 8229480257451643233))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    f64.convert_i64_u
    local.tee 1
    drop
    global.get $global_1066933909
    i64.extend16_s
    i64.eqz
    f32.convert_i32_s
    f32.ceil
    f32.ceil
    f32.trunc
    (i32.const -5)
    global.set $global_977602914
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    i32.extend8_s
    i32.ctz
    i32.ctz
    i32.ctz
    f32.convert_i32_s
    f32.sqrt
    f32.ceil
    i32.trunc_f32_s
    i32.popcnt
    i32.extend16_s
    i32.extend16_s
    f64.convert_i32_s
    ;;INSPECT
    f64.abs
    f64.floor
    i64.trunc_f64_s
    global.set $global_4281848908
)

)