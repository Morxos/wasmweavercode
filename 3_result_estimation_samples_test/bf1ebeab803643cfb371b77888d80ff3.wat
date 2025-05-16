(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3858889406 i32 (i32.const -418727364))
(global $global_1792732323 (mut i32) (i32.const 23741334))
(global $global_1309199692 (mut f64) (f64.const -4.12045001039319e+16))
(func $run (export "run") (result f64)
    (local i32 f64 i32)
    (local $temp i32)
    global.get $global_3858889406
    i32.const 9
    loop $b_loop_1199523352 (param i32)
        (i64.const -8526376261812836485)
        i64.clz
        i64.eqz
        local.set 0
        local.get 0
        i32.eqz
        global.set $global_1792732323
        block
            (f64.const 2.1525218482369282e-160)
            local.tee 1
            global.set $global_1309199692
            (f64.const 1.6486107241847779e-74)
            global.set $global_1309199692
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1199523352
        drop
    end
    i32.ctz
    (f64.const 7.160119037647472e+133)
    drop
    local.get 0
    f32.reinterpret_i32
    f32.ceil
    f32.sqrt
    (f64.const 9.574028961406345e-203)
    i64.trunc_f64_u
    f64.convert_i64_s
    f64.floor
    drop
    i32.trunc_f32_s
    i32.rotl
    local.tee 2
    f64.convert_i32_s
)

)