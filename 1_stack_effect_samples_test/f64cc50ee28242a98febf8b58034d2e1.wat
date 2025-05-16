(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_43524202 (mut f32) (f32.const 6.254103502650343e+18))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    local.get 0
    (f64.const 3.8767248899151585e+179)
    drop
    f32.sqrt
    f32.ceil
    i64.trunc_f32_u
    i64.clz
    f64.convert_i64_s
    ;;INSPECT
    f32.demote_f64
    f32.sqrt
    i64.trunc_f32_u
    i64.ctz
    (f32.const -4.390810114359596e+30)
    f32.floor
    drop
    f64.convert_i64_u
    f64.floor
    f64.sqrt
    local.set 1
    (f32.const 3.3286895439942233e+33)
    global.set $global_43524202
)

)