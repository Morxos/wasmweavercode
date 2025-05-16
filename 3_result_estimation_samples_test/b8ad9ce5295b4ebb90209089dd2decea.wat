(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2917546480 (mut i64) (i64.const 6602709466972577025))
(func $run (export "run") (result f32)
    (local i64 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2473009397 (param i32)
        (i32.const 142363)
        i32.eqz
        i64.extend_i32_u
        i64.extend16_s
        i64.extend32_s
        i64.clz
        global.set $global_2917546480
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2473009397
        drop
    end
    (i64.const 7347)
    i64.extend8_s
    f32.convert_i64_s
    i32.trunc_f32_s
    i64.extend_i32_u
    f64.reinterpret_i64
    i32.trunc_f64_u
    i32.eqz
    i64.extend_i32_u
    local.get 0
    i64.extend16_s
    drop
    f64.convert_i64_s
    drop
    global.get $global_2917546480
    f64.convert_i64_s
    nop
    i64.trunc_f64_s
    local.tee 1
    drop
    (i64.const 0)
    f32.convert_i64_s
    (i64.const -64666)
    local.set 0
)

)