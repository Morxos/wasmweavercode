(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 730108653)
    i64.extend8_s
    local.get 0
    local.set 0
    nop
    i64.extend16_s
    (f32.const 1.5655247238002497e+31)
    f32.sqrt
    (f64.const 3.8210489137387886e+230)
    f64.ceil
    (i32.const -807138729)
    local.set 0
    i64.reinterpret_f64
    local.set 1
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.trunc_f32_u
    local.tee 2
    nop
    (i32.const -68498)
    i32.shr_s
    i64.extend_i32_s
    i64.rotr
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    nop
)

)