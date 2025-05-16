(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1334251503 (mut f32) (f32.const -9.027907869055386e+17))
(func $run (export "run") (result i32)
    (local i32 f32)
    (local $temp i32)
    global.get $global_1334251503
    (i32.const 1508730567)
    local.set 0
    (f64.const 1.7197896461090596e+261)
    f64.nearest
    global.get $global_1334251503
    drop
    nop
    f64.trunc
    f64.abs
    drop
    local.tee 1
    drop
    i32.const 9
    loop $b_loop_3529646367 (param i32)
        local.get 0
        f32.reinterpret_i32
        f32.neg
        f32.ceil
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3529646367
        drop
    end
    local.get 0
)

)