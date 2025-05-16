(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (i64.const -456887)
    i32.const 9
    loop $b_loop_973103172 (param i32)
        (i32.const -11)
        i32.extend16_s
        f32.convert_i32_s
        local.tee 0
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_973103172
        drop
    end
    f32.convert_i64_s
    i32.reinterpret_f32
    f32.convert_i32_s
    local.set 0
    (i32.const -3283)
)

)