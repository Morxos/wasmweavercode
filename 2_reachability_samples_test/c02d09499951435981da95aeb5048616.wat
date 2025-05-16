(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2948565709 (mut i32) (i32.const -418981288))
(global $global_3576462008 (mut i64) (i64.const 3139495445961006300))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            (f32.const -181.1381378173828)
            i32.reinterpret_f32
            nop
            global.set $global_2948565709
            (i32.const 6973418)
            i64.extend_i32_u
            global.set $global_3576462008
        end

        ;;FLAG_3
        global.get $global_2948565709
        drop
        (i64.const -7)
        (i32.const 617495604)
        local.tee 0
        i64.extend_i32_s
        i64.shr_u
        global.set $global_3576462008
        return
        return
    end

    ;;FLAG_1
    (i32.const 0)
    i32.extend16_s
    i64.extend_i32_u
    global.get $global_2948565709
    i64.extend_i32_u
    i64.rotl
    (i64.const 400202)
    i64.rotl
    i64.ctz
    local.set 1
)

)