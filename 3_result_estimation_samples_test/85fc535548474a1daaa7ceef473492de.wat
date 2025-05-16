(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i64 f64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_663645059 (param i32)
        (i64.const 8652)
        local.set 0
        local.get 0
        f64.convert_i64_u
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_663645059
        drop
    end
    (f32.const -9.37142170091115e-40)
    (f32.const 0.009844493120908737)
    f32.ne
    local.set 2
    (f64.const 3.766144963416787e-15)
    br 0
)

)