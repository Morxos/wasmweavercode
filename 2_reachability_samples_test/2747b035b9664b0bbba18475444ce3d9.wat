(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1496600441 i64 (i64.const -4982405664784430040))
(global $global_979873901 (mut f32) (f32.const 1.8039850829275464e+18))
(func $run (export "run")
    (local i64 i32 f32 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        block
            ;;FLAG_4
            local.get 0
            block
                global.get $global_1496600441
                global.get $global_1496600441
                i64.rotr
                f32.convert_i64_u
                f32.neg
                i32.reinterpret_f32
                local.set 1
            end

            local.get 0
            i64.rotl
            drop
        end

        (i64.const 453035502)
        i64.clz
        f32.convert_i64_u
        local.tee 2
        f32.neg
        local.tee 3
        f32.ceil
        f32.nearest
        global.set $global_979873901
    end

    local.get 0
    (i64.const 29189)
    i64.ge_s
    global.get $global_1496600441
    global.get $global_1496600441
    i64.or
    local.set 0
    i64.extend_i32_s
    i64.clz
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
    local.get 0
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
)

)