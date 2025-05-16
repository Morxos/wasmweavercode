(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_342264968 (mut i32) (i32.const 1613050500))
(global $global_538879787 (mut f32) (f32.const -4.862644805823365e+17))
(func $run (export "run") (result i64)
    (local i32 i32)
    (local $temp i32)
    nop
    (i32.const -82)
    global.set $global_342264968
    global.get $global_342264968
    i32.eqz
    local.tee 0
    f32.convert_i32_s
    global.set $global_538879787
    (i32.const 997182317)
    i32.extend8_s
    local.set 0
    global.get $global_342264968
    global.set $global_342264968
    local.get 0
    local.tee 1
    i32.clz
    i32.clz
    drop
    (i32.const 552793)
    nop
    global.set $global_342264968
    (i64.const 8263)
    i64.extend16_s
)

)