(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1183422087 (mut i64) (i64.const 3390527535474489990))
(global $global_3839132320 (mut f32) (f32.const -4.450509158667518e+18))
(func $run (export "run")
    (local i32 f64 f32)
    (local $temp i32)
    local.get 0
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.clz
    i64.ctz
    i64.eqz
    f32.convert_i32_s
    f32.sqrt
    f32.nearest
    i64.trunc_f32_u
    global.set $global_1183422087
    global.get $global_1183422087
    f64.convert_i64_s
    i32.trunc_f64_s
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.trunc
    local.tee 1
    f64.neg
    f64.trunc
    f32.demote_f64
    local.tee 2
    f32.trunc
    ;;INSPECT
    local.set 2
    (f32.const 41380780965888.0)
    global.set $global_3839132320
)

)