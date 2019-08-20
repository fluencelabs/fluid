(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i64 i32) (result i64)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32)))
  (type (;12;) (func (param f64 i32) (result f64)))
  (import "env" "prepare_response" (func $prepare_response (type 2)))
  (import "sqlite" "sqlite_allocate" (func $sqlite_allocate (type 0)))
  (import "sqlite" "sqlite_store" (func $sqlite_store (type 3)))
  (import "sqlite" "sqlite_invoke" (func $sqlite_invoke (type 2)))
  (import "sqlite" "sqlite_load" (func $sqlite_load (type 0)))
  (import "sqlite" "sqlite_deallocate" (func $sqlite_deallocate (type 3)))
  (func $__wasm_call_ctors (type 4))
  (func $__stdio_write (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    get_global 0
    set_local 3
    i32.const 16
    set_local 4
    get_local 3
    get_local 4
    i32.sub
    set_local 5
    i32.const 1
    set_local 6
    get_local 5
    get_local 0
    i32.store offset=12
    get_local 5
    get_local 1
    i32.store offset=8
    get_local 5
    get_local 2
    i32.store offset=4
    get_local 6
    return)
  (func $__stdio_close (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    i32.const 1
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 4
    return)
  (func $__stdio_seek (type 5) (param i32 i64 i32) (result i64)
    (local i32 i32 i32 i64)
    get_global 0
    set_local 3
    i32.const 32
    set_local 4
    get_local 3
    get_local 4
    i32.sub
    set_local 5
    i64.const 1
    set_local 6
    get_local 5
    get_local 0
    i32.store offset=28
    get_local 5
    get_local 1
    i64.store offset=16
    get_local 5
    get_local 2
    i32.store offset=12
    get_local 6
    return)
  (func $invoke (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 368
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 0
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=360
    get_local 4
    get_local 1
    i32.store offset=356
    i32.const 0
    set_local 6
    get_local 6
    i32.load8_u offset=1024
    set_local 7
    i32.const 1
    set_local 8
    get_local 7
    get_local 8
    i32.and
    set_local 9
    get_local 5
    set_local 10
    get_local 9
    set_local 11
    get_local 10
    get_local 11
    i32.eq
    set_local 12
    i32.const 1
    set_local 13
    get_local 12
    get_local 13
    i32.and
    set_local 14
    block  ;; label = @1
      get_local 14
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      set_local 15
      call $create_scheme
      i32.const 0
      set_local 16
      get_local 16
      get_local 15
      i32.store8 offset=1024
    end
    i32.const 0
    set_local 17
    i32.const 10
    set_local 18
    i32.const 144
    set_local 19
    get_local 4
    get_local 19
    i32.add
    set_local 20
    get_local 20
    set_local 21
    get_local 4
    get_local 18
    i32.store offset=140
    get_local 4
    i32.load offset=360
    set_local 22
    get_local 22
    get_local 21
    get_local 18
    call $json_create
    set_local 23
    get_local 4
    get_local 23
    i32.store offset=136
    get_local 4
    i32.load offset=136
    set_local 24
    get_local 24
    set_local 25
    get_local 17
    set_local 26
    get_local 25
    get_local 26
    i32.ne
    set_local 27
    i32.const 1
    set_local 28
    get_local 27
    get_local 28
    i32.and
    set_local 29
    block  ;; label = @1
      block  ;; label = @2
        get_local 29
        br_if 0 (;@2;)
        i32.const 22
        set_local 30
        i32.const 112
        set_local 31
        get_local 4
        get_local 31
        i32.add
        set_local 32
        get_local 32
        set_local 33
        i32.const 14
        set_local 34
        get_local 33
        get_local 34
        i32.add
        set_local 35
        i32.const 0
        set_local 36
        get_local 36
        i64.load offset=1582 align=2
        set_local 37
        get_local 35
        get_local 37
        i64.store align=2
        i32.const 8
        set_local 38
        get_local 33
        get_local 38
        i32.add
        set_local 39
        get_local 36
        i64.load offset=1576
        set_local 40
        get_local 39
        get_local 40
        i64.store
        get_local 36
        i64.load offset=1568
        set_local 41
        get_local 33
        get_local 41
        i64.store
        get_local 33
        get_local 30
        call $prepare_response
        set_local 42
        get_local 4
        get_local 42
        i32.store offset=364
        br 1 (;@1;)
      end
      i32.const 0
      set_local 43
      i32.const 1590
      set_local 44
      get_local 4
      i32.load offset=136
      set_local 45
      get_local 45
      get_local 44
      call $json_getProperty
      set_local 46
      get_local 4
      get_local 46
      i32.store offset=108
      get_local 4
      i32.load offset=108
      set_local 47
      get_local 43
      set_local 48
      get_local 47
      set_local 49
      get_local 48
      get_local 49
      i32.eq
      set_local 50
      i32.const 1
      set_local 51
      get_local 50
      get_local 51
      i32.and
      set_local 52
      block  ;; label = @2
        get_local 52
        i32.eqz
        br_if 0 (;@2;)
        i32.const 40
        set_local 53
        i32.const 64
        set_local 54
        get_local 4
        get_local 54
        i32.add
        set_local 55
        get_local 55
        set_local 56
        i32.const 32
        set_local 57
        get_local 56
        get_local 57
        i32.add
        set_local 58
        i32.const 0
        set_local 59
        get_local 59
        i64.load offset=1632
        set_local 60
        get_local 58
        get_local 60
        i64.store
        i32.const 24
        set_local 61
        get_local 56
        get_local 61
        i32.add
        set_local 62
        get_local 59
        i64.load offset=1624
        set_local 63
        get_local 62
        get_local 63
        i64.store
        i32.const 16
        set_local 64
        get_local 56
        get_local 64
        i32.add
        set_local 65
        get_local 59
        i64.load offset=1616
        set_local 66
        get_local 65
        get_local 66
        i64.store
        i32.const 8
        set_local 67
        get_local 56
        get_local 67
        i32.add
        set_local 68
        get_local 59
        i64.load offset=1608
        set_local 69
        get_local 68
        get_local 69
        i64.store
        get_local 59
        i64.load offset=1600
        set_local 70
        get_local 56
        get_local 70
        i64.store
        get_local 56
        get_local 53
        call $prepare_response
        set_local 71
        get_local 4
        get_local 71
        i32.store offset=364
        br 1 (;@1;)
      end
      i32.const 2
      set_local 72
      get_local 4
      i32.load offset=108
      set_local 73
      get_local 73
      call $json_getType
      set_local 74
      get_local 72
      set_local 75
      get_local 74
      set_local 76
      get_local 75
      get_local 76
      i32.ne
      set_local 77
      i32.const 1
      set_local 78
      get_local 77
      get_local 78
      i32.and
      set_local 79
      block  ;; label = @2
        get_local 79
        i32.eqz
        br_if 0 (;@2;)
        i32.const 27
        set_local 80
        i32.const 32
        set_local 81
        get_local 4
        get_local 81
        i32.add
        set_local 82
        get_local 82
        set_local 83
        i32.const 23
        set_local 84
        get_local 83
        get_local 84
        i32.add
        set_local 85
        i32.const 0
        set_local 86
        get_local 86
        i32.load offset=1671 align=1
        set_local 87
        get_local 85
        get_local 87
        i32.store align=1
        i32.const 16
        set_local 88
        get_local 83
        get_local 88
        i32.add
        set_local 89
        get_local 86
        i64.load offset=1664
        set_local 90
        get_local 89
        get_local 90
        i64.store
        i32.const 8
        set_local 91
        get_local 83
        get_local 91
        i32.add
        set_local 92
        get_local 86
        i64.load offset=1656
        set_local 93
        get_local 92
        get_local 93
        i64.store
        get_local 86
        i64.load offset=1648
        set_local 94
        get_local 83
        get_local 94
        i64.store
        get_local 83
        get_local 80
        call $prepare_response
        set_local 95
        get_local 4
        get_local 95
        i32.store offset=364
        br 1 (;@1;)
      end
      i32.const 0
      set_local 96
      i32.const 1675
      set_local 97
      get_local 4
      i32.load offset=108
      set_local 98
      get_local 98
      call $json_getValue
      set_local 99
      get_local 4
      get_local 99
      i32.store offset=28
      get_local 4
      get_local 97
      i32.store offset=24
      get_local 4
      i32.load offset=28
      set_local 100
      i32.const 1676
      set_local 101
      get_local 100
      get_local 101
      call $strcmp
      set_local 102
      get_local 96
      set_local 103
      get_local 102
      set_local 104
      get_local 103
      get_local 104
      i32.eq
      set_local 105
      i32.const 1
      set_local 106
      get_local 105
      get_local 106
      i32.and
      set_local 107
      block  ;; label = @2
        block  ;; label = @3
          get_local 107
          i32.eqz
          br_if 0 (;@3;)
          get_local 4
          i32.load offset=136
          set_local 108
          get_local 108
          call $add_post_request
          set_local 109
          get_local 4
          get_local 109
          i32.store offset=24
          br 1 (;@2;)
        end
        i32.const 0
        set_local 110
        get_local 4
        i32.load offset=28
        set_local 111
        i32.const 1681
        set_local 112
        get_local 111
        get_local 112
        call $strcmp
        set_local 113
        get_local 110
        set_local 114
        get_local 113
        set_local 115
        get_local 114
        get_local 115
        i32.eq
        set_local 116
        i32.const 1
        set_local 117
        get_local 116
        get_local 117
        i32.and
        set_local 118
        block  ;; label = @3
          block  ;; label = @4
            get_local 118
            i32.eqz
            br_if 0 (;@4;)
            get_local 4
            i32.load offset=136
            set_local 119
            get_local 119
            call $fetch_posts_request
            set_local 120
            get_local 4
            get_local 120
            i32.store offset=24
            br 1 (;@3;)
          end
          i32.const 1024
          set_local 121
          get_local 121
          call $malloc
          set_local 122
          get_local 4
          get_local 122
          i32.store offset=20
          get_local 4
          i32.load offset=20
          set_local 123
          get_local 4
          i32.load offset=28
          set_local 124
          get_local 4
          get_local 124
          i32.store
          i32.const 1687
          set_local 125
          i32.const 1024
          set_local 126
          get_local 123
          get_local 126
          get_local 125
          get_local 4
          call $snprintf
          set_local 127
          get_local 4
          get_local 127
          i32.store offset=16
          get_local 4
          i32.load offset=20
          set_local 128
          get_local 4
          i32.load offset=16
          set_local 129
          get_local 128
          get_local 129
          call $prepare_response
          set_local 130
          get_local 4
          get_local 130
          i32.store offset=24
        end
      end
      get_local 4
      i32.load offset=24
      set_local 131
      get_local 4
      get_local 131
      i32.store offset=364
    end
    get_local 4
    i32.load offset=364
    set_local 132
    i32.const 368
    set_local 133
    get_local 4
    get_local 133
    i32.add
    set_local 134
    get_local 134
    set_global 0
    get_local 132
    return)
  (func $json_getType (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 4
    get_local 4
    i32.load offset=16
    set_local 5
    get_local 5
    return)
  (func $json_getValue (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 4
    get_local 4
    i32.load offset=8
    set_local 5
    get_local 5
    return)
  (func $add_post_request (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 464
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 0
    set_local 4
    i32.const 1768
    set_local 5
    i32.const 1759
    set_local 6
    get_local 3
    get_local 0
    i32.store offset=456
    get_local 3
    i32.load offset=456
    set_local 7
    get_local 7
    get_local 6
    call $json_getProperty
    set_local 8
    get_local 3
    get_local 8
    i32.store offset=452
    get_local 3
    i32.load offset=456
    set_local 9
    get_local 9
    get_local 5
    call $json_getProperty
    set_local 10
    get_local 3
    get_local 10
    i32.store offset=448
    get_local 3
    i32.load offset=448
    set_local 11
    get_local 4
    set_local 12
    get_local 11
    set_local 13
    get_local 12
    get_local 13
    i32.eq
    set_local 14
    i32.const 1
    set_local 15
    get_local 14
    get_local 15
    i32.and
    set_local 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 16
          br_if 0 (;@3;)
          i32.const 0
          set_local 17
          get_local 3
          i32.load offset=452
          set_local 18
          get_local 17
          set_local 19
          get_local 18
          set_local 20
          get_local 19
          get_local 20
          i32.eq
          set_local 21
          i32.const 1
          set_local 22
          get_local 21
          get_local 22
          i32.and
          set_local 23
          get_local 23
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 53
        set_local 24
        i32.const 384
        set_local 25
        get_local 3
        get_local 25
        i32.add
        set_local 26
        get_local 26
        set_local 27
        i32.const 45
        set_local 28
        get_local 27
        get_local 28
        i32.add
        set_local 29
        i32.const 0
        set_local 30
        get_local 30
        i64.load offset=1821 align=1
        set_local 31
        get_local 29
        get_local 31
        i64.store align=1
        i32.const 40
        set_local 32
        get_local 27
        get_local 32
        i32.add
        set_local 33
        get_local 30
        i64.load offset=1816
        set_local 34
        get_local 33
        get_local 34
        i64.store
        i32.const 32
        set_local 35
        get_local 27
        get_local 35
        i32.add
        set_local 36
        get_local 30
        i64.load offset=1808
        set_local 37
        get_local 36
        get_local 37
        i64.store
        i32.const 24
        set_local 38
        get_local 27
        get_local 38
        i32.add
        set_local 39
        get_local 30
        i64.load offset=1800
        set_local 40
        get_local 39
        get_local 40
        i64.store
        i32.const 16
        set_local 41
        get_local 27
        get_local 41
        i32.add
        set_local 42
        get_local 30
        i64.load offset=1792
        set_local 43
        get_local 42
        get_local 43
        i64.store
        i32.const 8
        set_local 44
        get_local 27
        get_local 44
        i32.add
        set_local 45
        get_local 30
        i64.load offset=1784
        set_local 46
        get_local 45
        get_local 46
        i64.store
        get_local 30
        i64.load offset=1776
        set_local 47
        get_local 27
        get_local 47
        i64.store
        get_local 27
        get_local 24
        call $prepare_response
        set_local 48
        get_local 3
        get_local 48
        i32.store offset=460
        br 1 (;@1;)
      end
      i32.const 2
      set_local 49
      get_local 3
      i32.load offset=448
      set_local 50
      get_local 50
      call $json_getType
      set_local 51
      get_local 49
      set_local 52
      get_local 51
      set_local 53
      get_local 52
      get_local 53
      i32.ne
      set_local 54
      i32.const 1
      set_local 55
      get_local 54
      get_local 55
      i32.and
      set_local 56
      block  ;; label = @2
        block  ;; label = @3
          get_local 56
          br_if 0 (;@3;)
          i32.const 2
          set_local 57
          get_local 3
          i32.load offset=452
          set_local 58
          get_local 58
          call $json_getType
          set_local 59
          get_local 57
          set_local 60
          get_local 59
          set_local 61
          get_local 60
          get_local 61
          i32.ne
          set_local 62
          i32.const 1
          set_local 63
          get_local 62
          get_local 63
          i32.and
          set_local 64
          get_local 64
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 40
        set_local 65
        i32.const 336
        set_local 66
        get_local 3
        get_local 66
        i32.add
        set_local 67
        get_local 67
        set_local 68
        i32.const 32
        set_local 69
        get_local 68
        get_local 69
        i32.add
        set_local 70
        i32.const 0
        set_local 71
        get_local 71
        i64.load offset=1872
        set_local 72
        get_local 70
        get_local 72
        i64.store
        i32.const 24
        set_local 73
        get_local 68
        get_local 73
        i32.add
        set_local 74
        get_local 71
        i64.load offset=1864
        set_local 75
        get_local 74
        get_local 75
        i64.store
        i32.const 16
        set_local 76
        get_local 68
        get_local 76
        i32.add
        set_local 77
        get_local 71
        i64.load offset=1856
        set_local 78
        get_local 77
        get_local 78
        i64.store
        i32.const 8
        set_local 79
        get_local 68
        get_local 79
        i32.add
        set_local 80
        get_local 71
        i64.load offset=1848
        set_local 81
        get_local 80
        get_local 81
        i64.store
        get_local 71
        i64.load offset=1840
        set_local 82
        get_local 68
        get_local 82
        i64.store
        get_local 68
        get_local 65
        call $prepare_response
        set_local 83
        get_local 3
        get_local 83
        i32.store offset=460
        br 1 (;@1;)
      end
      i32.const 0
      set_local 84
      get_local 3
      i32.load offset=452
      set_local 85
      get_local 85
      call $json_getValue
      set_local 86
      get_local 3
      get_local 86
      i32.store offset=332
      get_local 3
      i32.load offset=448
      set_local 87
      get_local 87
      call $json_getValue
      set_local 88
      get_local 3
      get_local 88
      i32.store offset=328
      get_local 3
      i32.load offset=332
      set_local 89
      get_local 3
      i32.load offset=332
      set_local 90
      get_local 90
      call $strlen
      set_local 91
      get_local 3
      i32.load offset=328
      set_local 92
      get_local 3
      i32.load offset=328
      set_local 93
      get_local 93
      call $strlen
      set_local 94
      get_local 89
      get_local 91
      get_local 92
      get_local 94
      call $add_post
      set_local 95
      get_local 3
      get_local 95
      i32.store offset=324
      get_local 3
      i32.load offset=324
      set_local 96
      get_local 84
      set_local 97
      get_local 96
      set_local 98
      get_local 97
      get_local 98
      i32.eq
      set_local 99
      i32.const 1
      set_local 100
      get_local 99
      get_local 100
      i32.and
      set_local 101
      block  ;; label = @2
        get_local 101
        i32.eqz
        br_if 0 (;@2;)
        i32.const 16
        set_local 102
        i32.const 304
        set_local 103
        get_local 3
        get_local 103
        i32.add
        set_local 104
        get_local 104
        set_local 105
        i32.const 8
        set_local 106
        get_local 105
        get_local 106
        i32.add
        set_local 107
        i32.const 0
        set_local 108
        get_local 108
        i64.load offset=1896
        set_local 109
        get_local 107
        get_local 109
        i64.store
        get_local 108
        i64.load offset=1888
        set_local 110
        get_local 105
        get_local 110
        i64.store
        get_local 105
        get_local 102
        call $prepare_response
        set_local 111
        get_local 3
        get_local 111
        i32.store offset=460
        br 1 (;@1;)
      end
      i32.const 0
      set_local 112
      call $get_posts_count
      set_local 113
      get_local 3
      get_local 113
      i32.store offset=300
      get_local 3
      i32.load offset=300
      set_local 114
      get_local 112
      set_local 115
      get_local 114
      set_local 116
      get_local 115
      get_local 116
      i32.eq
      set_local 117
      i32.const 1
      set_local 118
      get_local 117
      get_local 118
      i32.and
      set_local 119
      block  ;; label = @2
        get_local 119
        i32.eqz
        br_if 0 (;@2;)
        i32.const 23
        set_local 120
        i32.const 272
        set_local 121
        get_local 3
        get_local 121
        i32.add
        set_local 122
        get_local 122
        set_local 123
        i32.const 15
        set_local 124
        get_local 123
        get_local 124
        i32.add
        set_local 125
        i32.const 0
        set_local 126
        get_local 126
        i64.load offset=1919 align=1
        set_local 127
        get_local 125
        get_local 127
        i64.store align=1
        i32.const 8
        set_local 128
        get_local 123
        get_local 128
        i32.add
        set_local 129
        get_local 126
        i64.load offset=1912
        set_local 130
        get_local 129
        get_local 130
        i64.store
        get_local 126
        i64.load offset=1904
        set_local 131
        get_local 123
        get_local 131
        i64.store
        get_local 123
        get_local 120
        call $prepare_response
        set_local 132
        get_local 3
        get_local 132
        i32.store offset=460
        br 1 (;@1;)
      end
      i32.const 16
      set_local 133
      get_local 3
      get_local 133
      i32.add
      set_local 134
      get_local 134
      set_local 135
      get_local 3
      i32.load offset=300
      set_local 136
      get_local 3
      get_local 136
      i32.store
      i32.const 1927
      set_local 137
      i32.const 256
      set_local 138
      get_local 135
      get_local 138
      get_local 137
      get_local 3
      call $snprintf
      set_local 139
      i32.const 16
      set_local 140
      get_local 3
      get_local 140
      i32.add
      set_local 141
      get_local 141
      set_local 142
      get_local 3
      get_local 139
      i32.store offset=12
      get_local 3
      i32.load offset=12
      set_local 143
      get_local 142
      get_local 143
      call $prepare_response
      set_local 144
      get_local 3
      get_local 144
      i32.store offset=460
    end
    get_local 3
    i32.load offset=460
    set_local 145
    i32.const 464
    set_local 146
    get_local 3
    get_local 146
    i32.add
    set_local 147
    get_local 147
    set_global 0
    get_local 145
    return)
  (func $fetch_posts_request (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 160
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 0
    set_local 4
    i32.const 1950
    set_local 5
    i32.const 1943
    set_local 6
    i32.const 1759
    set_local 7
    get_local 3
    get_local 0
    i32.store offset=152
    get_local 3
    i32.load offset=152
    set_local 8
    get_local 8
    get_local 7
    call $json_getProperty
    set_local 9
    get_local 3
    get_local 9
    i32.store offset=148
    get_local 3
    i32.load offset=152
    set_local 10
    get_local 10
    get_local 6
    call $json_getProperty
    set_local 11
    get_local 3
    get_local 11
    i32.store offset=144
    get_local 3
    i32.load offset=152
    set_local 12
    get_local 12
    get_local 5
    call $json_getProperty
    set_local 13
    get_local 3
    get_local 13
    i32.store offset=140
    get_local 3
    i32.load offset=148
    set_local 14
    get_local 4
    set_local 15
    get_local 14
    set_local 16
    get_local 15
    get_local 16
    i32.ne
    set_local 17
    i32.const 1
    set_local 18
    get_local 17
    get_local 18
    i32.and
    set_local 19
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 19
            i32.eqz
            br_if 0 (;@4;)
            i32.const 2
            set_local 20
            get_local 3
            i32.load offset=148
            set_local 21
            get_local 21
            call $json_getType
            set_local 22
            get_local 20
            set_local 23
            get_local 22
            set_local 24
            get_local 23
            get_local 24
            i32.ne
            set_local 25
            i32.const 1
            set_local 26
            get_local 25
            get_local 26
            i32.and
            set_local 27
            get_local 27
            br_if 1 (;@3;)
          end
          i32.const 0
          set_local 28
          get_local 3
          i32.load offset=144
          set_local 29
          get_local 28
          set_local 30
          get_local 29
          set_local 31
          get_local 30
          get_local 31
          i32.ne
          set_local 32
          i32.const 1
          set_local 33
          get_local 32
          get_local 33
          i32.and
          set_local 34
          block  ;; label = @4
            get_local 34
            i32.eqz
            br_if 0 (;@4;)
            i32.const 4
            set_local 35
            get_local 3
            i32.load offset=144
            set_local 36
            get_local 36
            call $json_getType
            set_local 37
            get_local 35
            set_local 38
            get_local 37
            set_local 39
            get_local 38
            get_local 39
            i32.ne
            set_local 40
            i32.const 1
            set_local 41
            get_local 40
            get_local 41
            i32.and
            set_local 42
            get_local 42
            br_if 1 (;@3;)
          end
          i32.const 0
          set_local 43
          get_local 3
          i32.load offset=140
          set_local 44
          get_local 43
          set_local 45
          get_local 44
          set_local 46
          get_local 45
          get_local 46
          i32.ne
          set_local 47
          i32.const 1
          set_local 48
          get_local 47
          get_local 48
          i32.and
          set_local 49
          get_local 49
          i32.eqz
          br_if 1 (;@2;)
          i32.const 4
          set_local 50
          get_local 3
          i32.load offset=140
          set_local 51
          get_local 51
          call $json_getType
          set_local 52
          get_local 50
          set_local 53
          get_local 52
          set_local 54
          get_local 53
          get_local 54
          i32.ne
          set_local 55
          i32.const 1
          set_local 56
          get_local 55
          get_local 56
          i32.and
          set_local 57
          get_local 57
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 27
        set_local 58
        i32.const 112
        set_local 59
        get_local 3
        get_local 59
        i32.add
        set_local 60
        get_local 60
        set_local 61
        i32.const 23
        set_local 62
        get_local 61
        get_local 62
        i32.add
        set_local 63
        i32.const 0
        set_local 64
        get_local 64
        i32.load offset=1991 align=1
        set_local 65
        get_local 63
        get_local 65
        i32.store align=1
        i32.const 16
        set_local 66
        get_local 61
        get_local 66
        i32.add
        set_local 67
        get_local 64
        i64.load offset=1984
        set_local 68
        get_local 67
        get_local 68
        i64.store
        i32.const 8
        set_local 69
        get_local 61
        get_local 69
        i32.add
        set_local 70
        get_local 64
        i64.load offset=1976
        set_local 71
        get_local 70
        get_local 71
        i64.store
        get_local 64
        i64.load offset=1968
        set_local 72
        get_local 61
        get_local 72
        i64.store
        get_local 61
        get_local 58
        call $prepare_response
        set_local 73
        get_local 3
        get_local 73
        i32.store offset=156
        br 1 (;@1;)
      end
      i32.const 0
      set_local 74
      i32.const 100
      set_local 75
      get_local 3
      get_local 75
      i32.store offset=108
      get_local 3
      i32.load offset=140
      set_local 76
      get_local 74
      set_local 77
      get_local 76
      set_local 78
      get_local 77
      get_local 78
      i32.ne
      set_local 79
      i32.const 1
      set_local 80
      get_local 79
      get_local 80
      i32.and
      set_local 81
      block  ;; label = @2
        get_local 81
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.load offset=140
        set_local 82
        get_local 82
        call $json_getInteger
        set_local 83
        get_local 83
        i32.wrap/i64
        set_local 84
        get_local 3
        get_local 84
        i32.store offset=108
      end
      i32.const 0
      set_local 85
      get_local 3
      get_local 85
      i32.store offset=104
      get_local 3
      i32.load offset=144
      set_local 86
      get_local 85
      set_local 87
      get_local 86
      set_local 88
      get_local 87
      get_local 88
      i32.ne
      set_local 89
      i32.const 1
      set_local 90
      get_local 89
      get_local 90
      i32.and
      set_local 91
      block  ;; label = @2
        get_local 91
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        i32.load offset=144
        set_local 92
        get_local 92
        call $json_getInteger
        set_local 93
        get_local 93
        i32.wrap/i64
        set_local 94
        get_local 3
        get_local 94
        i32.store offset=104
      end
      i32.const 0
      set_local 95
      i32.const 1675
      set_local 96
      get_local 3
      get_local 96
      i32.store offset=100
      get_local 3
      i32.load offset=148
      set_local 97
      get_local 95
      set_local 98
      get_local 97
      set_local 99
      get_local 98
      get_local 99
      i32.eq
      set_local 100
      i32.const 1
      set_local 101
      get_local 100
      get_local 101
      i32.and
      set_local 102
      block  ;; label = @2
        block  ;; label = @3
          get_local 102
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 103
          get_local 3
          i32.load offset=104
          set_local 104
          get_local 3
          i32.load offset=108
          set_local 105
          get_local 104
          get_local 105
          call $get_all_posts
          set_local 106
          get_local 3
          get_local 106
          i32.store offset=100
          get_local 3
          i32.load offset=100
          set_local 107
          get_local 103
          set_local 108
          get_local 107
          set_local 109
          get_local 108
          get_local 109
          i32.eq
          set_local 110
          i32.const 1
          set_local 111
          get_local 110
          get_local 111
          i32.and
          set_local 112
          block  ;; label = @4
            get_local 112
            i32.eqz
            br_if 0 (;@4;)
            i32.const 21
            set_local 113
            i32.const 64
            set_local 114
            get_local 3
            get_local 114
            i32.add
            set_local 115
            get_local 115
            set_local 116
            i32.const 13
            set_local 117
            get_local 116
            get_local 117
            i32.add
            set_local 118
            i32.const 0
            set_local 119
            get_local 119
            i64.load offset=2013 align=1
            set_local 120
            get_local 118
            get_local 120
            i64.store align=1
            i32.const 8
            set_local 121
            get_local 116
            get_local 121
            i32.add
            set_local 122
            get_local 119
            i64.load offset=2008
            set_local 123
            get_local 122
            get_local 123
            i64.store
            get_local 119
            i64.load offset=2000
            set_local 124
            get_local 116
            get_local 124
            i64.store
            get_local 116
            get_local 113
            call $prepare_response
            set_local 125
            get_local 3
            get_local 125
            i32.store offset=156
            br 3 (;@1;)
          end
          br 1 (;@2;)
        end
        i32.const 0
        set_local 126
        get_local 3
        i32.load offset=148
        set_local 127
        get_local 127
        call $json_getValue
        set_local 128
        get_local 3
        get_local 128
        i32.store offset=60
        get_local 3
        i32.load offset=60
        set_local 129
        get_local 3
        i32.load offset=60
        set_local 130
        get_local 130
        call $strlen
        set_local 131
        get_local 3
        i32.load offset=104
        set_local 132
        get_local 3
        i32.load offset=108
        set_local 133
        get_local 129
        get_local 131
        get_local 132
        get_local 133
        call $get_posts_by_username
        set_local 134
        get_local 3
        get_local 134
        i32.store offset=100
        get_local 3
        i32.load offset=100
        set_local 135
        get_local 126
        set_local 136
        get_local 135
        set_local 137
        get_local 136
        get_local 137
        i32.eq
        set_local 138
        i32.const 1
        set_local 139
        get_local 138
        get_local 139
        i32.and
        set_local 140
        block  ;; label = @3
          get_local 140
          i32.eqz
          br_if 0 (;@3;)
          i32.const 29
          set_local 141
          i32.const 16
          set_local 142
          get_local 3
          get_local 142
          i32.add
          set_local 143
          get_local 143
          set_local 144
          i32.const 21
          set_local 145
          get_local 144
          get_local 145
          i32.add
          set_local 146
          i32.const 0
          set_local 147
          get_local 147
          i64.load offset=2053 align=1
          set_local 148
          get_local 146
          get_local 148
          i64.store align=1
          i32.const 16
          set_local 149
          get_local 144
          get_local 149
          i32.add
          set_local 150
          get_local 147
          i64.load offset=2048
          set_local 151
          get_local 150
          get_local 151
          i64.store
          i32.const 8
          set_local 152
          get_local 144
          get_local 152
          i32.add
          set_local 153
          get_local 147
          i64.load offset=2040
          set_local 154
          get_local 153
          get_local 154
          i64.store
          get_local 147
          i64.load offset=2032
          set_local 155
          get_local 144
          get_local 155
          i64.store
          get_local 144
          get_local 141
          call $prepare_response
          set_local 156
          get_local 3
          get_local 156
          i32.store offset=156
          br 2 (;@1;)
        end
      end
      get_local 3
      i32.load offset=100
      set_local 157
      get_local 157
      call $strlen
      set_local 158
      i32.const 100
      set_local 159
      get_local 158
      get_local 159
      i32.add
      set_local 160
      get_local 3
      get_local 160
      i32.store offset=12
      get_local 3
      i32.load offset=12
      set_local 161
      get_local 161
      call $malloc
      set_local 162
      get_local 3
      get_local 162
      i32.store offset=8
      get_local 3
      i32.load offset=8
      set_local 163
      get_local 3
      i32.load offset=12
      set_local 164
      get_local 3
      i32.load offset=100
      set_local 165
      get_local 3
      get_local 165
      i32.store
      i32.const 2061
      set_local 166
      get_local 163
      get_local 164
      get_local 166
      get_local 3
      call $snprintf
      set_local 167
      get_local 3
      get_local 167
      i32.store offset=4
      get_local 3
      i32.load offset=8
      set_local 168
      get_local 3
      i32.load offset=4
      set_local 169
      get_local 168
      get_local 169
      call $prepare_response
      set_local 170
      get_local 3
      get_local 170
      i32.store offset=156
    end
    get_local 3
    i32.load offset=156
    set_local 171
    i32.const 160
    set_local 172
    get_local 3
    get_local 172
    i32.add
    set_local 173
    get_local 173
    set_global 0
    get_local 171
    return)
  (func $json_getInteger (type 6) (param i32) (result i64)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 4
    get_local 4
    i32.load offset=8
    set_local 5
    get_local 5
    call $atoll
    set_local 6
    i32.const 16
    set_local 7
    get_local 3
    get_local 7
    i32.add
    set_local 8
    get_local 8
    set_global 0
    get_local 6
    return)
  (func $sqlite_call (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 48
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 0
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=44
    get_local 4
    get_local 1
    i32.store offset=40
    get_local 4
    i32.load offset=40
    set_local 6
    get_local 6
    call $sqlite_allocate
    set_local 7
    get_local 4
    get_local 7
    i32.store offset=36
    get_local 4
    get_local 5
    i32.store offset=32
    block  ;; label = @1
      loop  ;; label = @2
        get_local 4
        i32.load offset=32
        set_local 8
        get_local 4
        i32.load offset=40
        set_local 9
        get_local 8
        set_local 10
        get_local 9
        set_local 11
        get_local 10
        get_local 11
        i32.lt_s
        set_local 12
        i32.const 1
        set_local 13
        get_local 12
        get_local 13
        i32.and
        set_local 14
        get_local 14
        i32.eqz
        br_if 1 (;@1;)
        get_local 4
        i32.load offset=36
        set_local 15
        get_local 4
        i32.load offset=32
        set_local 16
        get_local 15
        get_local 16
        i32.add
        set_local 17
        get_local 4
        i32.load offset=44
        set_local 18
        get_local 4
        i32.load offset=32
        set_local 19
        get_local 18
        get_local 19
        i32.add
        set_local 20
        get_local 20
        i32.load8_u
        set_local 21
        i32.const 24
        set_local 22
        get_local 21
        get_local 22
        i32.shl
        set_local 23
        get_local 23
        get_local 22
        i32.shr_s
        set_local 24
        get_local 17
        get_local 24
        call $sqlite_store
        get_local 4
        i32.load offset=32
        set_local 25
        i32.const 1
        set_local 26
        get_local 25
        get_local 26
        i32.add
        set_local 27
        get_local 4
        get_local 27
        i32.store offset=32
        br 0 (;@2;)
      end
    end
    i32.const 0
    set_local 28
    get_local 4
    i32.load offset=36
    set_local 29
    get_local 4
    i32.load offset=40
    set_local 30
    get_local 29
    get_local 30
    call $sqlite_invoke
    set_local 31
    get_local 4
    get_local 31
    i32.store offset=28
    get_local 4
    get_local 28
    i32.store offset=24
    get_local 4
    get_local 28
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 4
        set_local 32
        get_local 4
        i32.load offset=20
        set_local 33
        get_local 33
        set_local 34
        get_local 32
        set_local 35
        get_local 34
        get_local 35
        i32.lt_s
        set_local 36
        i32.const 1
        set_local 37
        get_local 36
        get_local 37
        i32.and
        set_local 38
        get_local 38
        i32.eqz
        br_if 1 (;@1;)
        get_local 4
        i32.load offset=24
        set_local 39
        get_local 4
        i32.load offset=28
        set_local 40
        get_local 4
        i32.load offset=20
        set_local 41
        get_local 40
        get_local 41
        i32.add
        set_local 42
        get_local 42
        call $sqlite_load
        set_local 43
        i32.const 255
        set_local 44
        get_local 43
        get_local 44
        i32.and
        set_local 45
        get_local 4
        i32.load offset=20
        set_local 46
        i32.const 3
        set_local 47
        get_local 46
        get_local 47
        i32.shl
        set_local 48
        get_local 45
        get_local 48
        i32.shl
        set_local 49
        get_local 39
        get_local 49
        i32.or
        set_local 50
        get_local 4
        get_local 50
        i32.store offset=24
        get_local 4
        i32.load offset=20
        set_local 51
        i32.const 1
        set_local 52
        get_local 51
        get_local 52
        i32.add
        set_local 53
        get_local 4
        get_local 53
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    i32.const 0
    set_local 54
    get_local 4
    i32.load offset=24
    set_local 55
    i32.const 1
    set_local 56
    get_local 55
    get_local 56
    i32.add
    set_local 57
    get_local 57
    call $malloc
    set_local 58
    get_local 4
    get_local 58
    i32.store offset=16
    get_local 4
    get_local 54
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        get_local 4
        i32.load offset=12
        set_local 59
        get_local 4
        i32.load offset=24
        set_local 60
        get_local 59
        set_local 61
        get_local 60
        set_local 62
        get_local 61
        get_local 62
        i32.lt_u
        set_local 63
        i32.const 1
        set_local 64
        get_local 63
        get_local 64
        i32.and
        set_local 65
        get_local 65
        i32.eqz
        br_if 1 (;@1;)
        get_local 4
        i32.load offset=28
        set_local 66
        i32.const 4
        set_local 67
        get_local 66
        get_local 67
        i32.add
        set_local 68
        get_local 4
        i32.load offset=12
        set_local 69
        get_local 68
        get_local 69
        i32.add
        set_local 70
        get_local 70
        call $sqlite_load
        set_local 71
        get_local 4
        i32.load offset=16
        set_local 72
        get_local 4
        i32.load offset=12
        set_local 73
        get_local 72
        get_local 73
        i32.add
        set_local 74
        get_local 74
        get_local 71
        i32.store8
        get_local 4
        i32.load offset=12
        set_local 75
        i32.const 1
        set_local 76
        get_local 75
        get_local 76
        i32.add
        set_local 77
        get_local 4
        get_local 77
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    i32.const 0
    set_local 78
    get_local 4
    i32.load offset=16
    set_local 79
    get_local 4
    i32.load offset=24
    set_local 80
    get_local 79
    get_local 80
    i32.add
    set_local 81
    get_local 81
    get_local 78
    i32.store8
    get_local 4
    i32.load offset=28
    set_local 82
    get_local 4
    i32.load offset=24
    set_local 83
    get_local 82
    get_local 83
    call $sqlite_deallocate
    get_local 4
    i32.load offset=16
    set_local 84
    i32.const 48
    set_local 85
    get_local 4
    get_local 85
    i32.add
    set_local 86
    get_local 86
    set_global 0
    get_local 84
    return)
  (func $create_scheme (type 4)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32)
    get_global 0
    set_local 0
    i32.const 64
    set_local 1
    get_local 0
    get_local 1
    i32.sub
    set_local 2
    get_local 2
    set_global 0
    i32.const 51
    set_local 3
    get_local 2
    set_local 4
    i32.const 47
    set_local 5
    get_local 4
    get_local 5
    i32.add
    set_local 6
    i32.const 0
    set_local 7
    get_local 7
    i32.load offset=2127 align=1
    set_local 8
    get_local 6
    get_local 8
    i32.store align=1
    i32.const 40
    set_local 9
    get_local 4
    get_local 9
    i32.add
    set_local 10
    get_local 7
    i64.load offset=2120
    set_local 11
    get_local 10
    get_local 11
    i64.store
    i32.const 32
    set_local 12
    get_local 4
    get_local 12
    i32.add
    set_local 13
    get_local 7
    i64.load offset=2112
    set_local 14
    get_local 13
    get_local 14
    i64.store
    i32.const 24
    set_local 15
    get_local 4
    get_local 15
    i32.add
    set_local 16
    get_local 7
    i64.load offset=2104
    set_local 17
    get_local 16
    get_local 17
    i64.store
    i32.const 16
    set_local 18
    get_local 4
    get_local 18
    i32.add
    set_local 19
    get_local 7
    i64.load offset=2096
    set_local 20
    get_local 19
    get_local 20
    i64.store
    i32.const 8
    set_local 21
    get_local 4
    get_local 21
    i32.add
    set_local 22
    get_local 7
    i64.load offset=2088
    set_local 23
    get_local 22
    get_local 23
    i64.store
    get_local 7
    i64.load offset=2080
    set_local 24
    get_local 4
    get_local 24
    i64.store
    get_local 4
    get_local 3
    call $sqlite_call
    drop
    i32.const 64
    set_local 25
    get_local 2
    get_local 25
    i32.add
    set_local 26
    get_local 26
    set_global 0
    return)
  (func $add_post (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 4
    i32.const 48
    set_local 5
    get_local 4
    get_local 5
    i32.sub
    set_local 6
    get_local 6
    set_global 0
    get_local 6
    get_local 0
    i32.store offset=40
    get_local 6
    get_local 1
    i32.store offset=36
    get_local 6
    get_local 2
    i32.store offset=32
    get_local 6
    get_local 3
    i32.store offset=28
    get_local 6
    i32.load offset=36
    set_local 7
    get_local 6
    i32.load offset=28
    set_local 8
    get_local 7
    get_local 8
    i32.add
    set_local 9
    i32.const 50
    set_local 10
    get_local 9
    get_local 10
    i32.add
    set_local 11
    get_local 6
    get_local 11
    i32.store offset=24
    get_local 6
    i32.load offset=24
    set_local 12
    get_local 12
    call $malloc
    set_local 13
    get_local 6
    get_local 13
    i32.store offset=20
    get_local 6
    i32.load offset=20
    set_local 14
    get_local 6
    i32.load offset=24
    set_local 15
    get_local 6
    i32.load offset=32
    set_local 16
    get_local 6
    i32.load offset=40
    set_local 17
    get_local 6
    get_local 17
    i32.store offset=4
    get_local 6
    get_local 16
    i32.store
    i32.const 2131
    set_local 18
    get_local 14
    get_local 15
    get_local 18
    get_local 6
    call $snprintf
    set_local 19
    i32.const 0
    set_local 20
    get_local 6
    get_local 19
    i32.store offset=16
    get_local 6
    i32.load offset=16
    set_local 21
    get_local 21
    set_local 22
    get_local 20
    set_local 23
    get_local 22
    get_local 23
    i32.lt_s
    set_local 24
    i32.const 1
    set_local 25
    get_local 24
    get_local 25
    i32.and
    set_local 26
    block  ;; label = @1
      block  ;; label = @2
        get_local 26
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 27
        get_local 6
        get_local 27
        i32.store offset=44
        br 1 (;@1;)
      end
      get_local 6
      i32.load offset=20
      set_local 28
      get_local 6
      i32.load offset=16
      set_local 29
      get_local 28
      get_local 29
      call $sqlite_call
      set_local 30
      get_local 6
      get_local 30
      i32.store offset=44
    end
    get_local 6
    i32.load offset=44
    set_local 31
    i32.const 48
    set_local 32
    get_local 6
    get_local 32
    i32.add
    set_local 33
    get_local 33
    set_global 0
    get_local 31
    return)
  (func $get_all_posts (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 32
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 256
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=24
    get_local 4
    get_local 1
    i32.store offset=20
    get_local 5
    call $malloc
    set_local 6
    get_local 4
    get_local 6
    i32.store offset=16
    get_local 4
    i32.load offset=16
    set_local 7
    get_local 4
    i32.load offset=20
    set_local 8
    get_local 4
    i32.load offset=24
    set_local 9
    get_local 4
    get_local 9
    i32.store offset=4
    get_local 4
    get_local 8
    i32.store
    i32.const 2171
    set_local 10
    i32.const 256
    set_local 11
    get_local 7
    get_local 11
    get_local 10
    get_local 4
    call $snprintf
    set_local 12
    i32.const 0
    set_local 13
    get_local 4
    get_local 12
    i32.store offset=12
    get_local 4
    i32.load offset=12
    set_local 14
    get_local 14
    set_local 15
    get_local 13
    set_local 16
    get_local 15
    get_local 16
    i32.lt_s
    set_local 17
    i32.const 1
    set_local 18
    get_local 17
    get_local 18
    i32.and
    set_local 19
    block  ;; label = @1
      block  ;; label = @2
        get_local 19
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 20
        get_local 4
        get_local 20
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 4
      i32.load offset=16
      set_local 21
      get_local 4
      i32.load offset=12
      set_local 22
      get_local 21
      get_local 22
      call $sqlite_call
      set_local 23
      get_local 4
      get_local 23
      i32.store offset=28
    end
    get_local 4
    i32.load offset=28
    set_local 24
    i32.const 32
    set_local 25
    get_local 4
    get_local 25
    i32.add
    set_local 26
    get_local 26
    set_global 0
    get_local 24
    return)
  (func $get_posts_by_username (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 4
    i32.const 48
    set_local 5
    get_local 4
    get_local 5
    i32.sub
    set_local 6
    get_local 6
    set_global 0
    get_local 6
    get_local 0
    i32.store offset=40
    get_local 6
    get_local 1
    i32.store offset=36
    get_local 6
    get_local 2
    i32.store offset=32
    get_local 6
    get_local 3
    i32.store offset=28
    get_local 6
    i32.load offset=36
    set_local 7
    i32.const 300
    set_local 8
    get_local 7
    get_local 8
    i32.add
    set_local 9
    get_local 6
    get_local 9
    i32.store offset=24
    get_local 6
    i32.load offset=24
    set_local 10
    get_local 10
    call $malloc
    set_local 11
    get_local 6
    get_local 11
    i32.store offset=20
    get_local 6
    i32.load offset=20
    set_local 12
    get_local 6
    i32.load offset=24
    set_local 13
    get_local 6
    i32.load offset=40
    set_local 14
    get_local 6
    i32.load offset=28
    set_local 15
    get_local 6
    i32.load offset=32
    set_local 16
    get_local 6
    get_local 16
    i32.store offset=8
    get_local 6
    get_local 15
    i32.store offset=4
    get_local 6
    get_local 14
    i32.store
    i32.const 2354
    set_local 17
    get_local 12
    get_local 13
    get_local 17
    get_local 6
    call $snprintf
    set_local 18
    i32.const 0
    set_local 19
    get_local 6
    get_local 18
    i32.store offset=16
    get_local 6
    i32.load offset=16
    set_local 20
    get_local 20
    set_local 21
    get_local 19
    set_local 22
    get_local 21
    get_local 22
    i32.lt_s
    set_local 23
    i32.const 1
    set_local 24
    get_local 23
    get_local 24
    i32.and
    set_local 25
    block  ;; label = @1
      block  ;; label = @2
        get_local 25
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 26
        get_local 6
        get_local 26
        i32.store offset=44
        br 1 (;@1;)
      end
      get_local 6
      i32.load offset=20
      set_local 27
      get_local 6
      i32.load offset=16
      set_local 28
      get_local 27
      get_local 28
      call $sqlite_call
      set_local 29
      get_local 6
      get_local 29
      i32.store offset=44
    end
    get_local 6
    i32.load offset=44
    set_local 30
    i32.const 48
    set_local 31
    get_local 6
    get_local 31
    i32.add
    set_local 32
    get_local 32
    set_global 0
    get_local 30
    return)
  (func $get_posts_count (type 8) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32)
    get_global 0
    set_local 0
    i32.const 32
    set_local 1
    get_local 0
    get_local 1
    i32.sub
    set_local 2
    get_local 2
    set_global 0
    i32.const 30
    set_local 3
    get_local 2
    set_local 4
    i32.const 22
    set_local 5
    get_local 4
    get_local 5
    i32.add
    set_local 6
    i32.const 0
    set_local 7
    get_local 7
    i64.load offset=2598 align=2
    set_local 8
    get_local 6
    get_local 8
    i64.store align=2
    i32.const 16
    set_local 9
    get_local 4
    get_local 9
    i32.add
    set_local 10
    get_local 7
    i64.load offset=2592
    set_local 11
    get_local 10
    get_local 11
    i64.store
    i32.const 8
    set_local 12
    get_local 4
    get_local 12
    i32.add
    set_local 13
    get_local 7
    i64.load offset=2584
    set_local 14
    get_local 13
    get_local 14
    i64.store
    get_local 7
    i64.load offset=2576
    set_local 15
    get_local 4
    get_local 15
    i64.store
    get_local 4
    get_local 3
    call $sqlite_call
    set_local 16
    i32.const 32
    set_local 17
    get_local 2
    get_local 17
    i32.add
    set_local 18
    get_local 18
    set_global 0
    get_local 16
    return)
  (func $allocate (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 4
    get_local 4
    call $malloc
    set_local 5
    i32.const 16
    set_local 6
    get_local 3
    get_local 6
    i32.add
    set_local 7
    get_local 7
    set_global 0
    get_local 5
    return)
  (func $deallocate (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    get_local 4
    get_local 0
    i32.store offset=12
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    i32.load offset=12
    set_local 5
    get_local 5
    call $free
    i32.const 16
    set_local 6
    get_local 4
    get_local 6
    i32.add
    set_local 7
    get_local 7
    set_global 0
    return)
  (func $json_getProperty (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    get_local 4
    get_local 0
    i32.store offset=8
    get_local 4
    get_local 1
    i32.store offset=4
    get_local 4
    i32.load offset=8
    set_local 5
    get_local 5
    i32.load offset=8
    set_local 6
    get_local 4
    get_local 6
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 0
          set_local 7
          get_local 4
          i32.load
          set_local 8
          get_local 8
          set_local 9
          get_local 7
          set_local 10
          get_local 9
          get_local 10
          i32.ne
          set_local 11
          i32.const 1
          set_local 12
          get_local 11
          get_local 12
          i32.and
          set_local 13
          get_local 13
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          set_local 14
          get_local 4
          i32.load
          set_local 15
          get_local 15
          i32.load offset=4
          set_local 16
          get_local 16
          set_local 17
          get_local 14
          set_local 18
          get_local 17
          get_local 18
          i32.ne
          set_local 19
          i32.const 1
          set_local 20
          get_local 19
          get_local 20
          i32.and
          set_local 21
          block  ;; label = @4
            get_local 21
            i32.eqz
            br_if 0 (;@4;)
            get_local 4
            i32.load
            set_local 22
            get_local 22
            i32.load offset=4
            set_local 23
            get_local 4
            i32.load offset=4
            set_local 24
            get_local 23
            get_local 24
            call $strcmp
            set_local 25
            get_local 25
            br_if 0 (;@4;)
            get_local 4
            i32.load
            set_local 26
            get_local 4
            get_local 26
            i32.store offset=12
            br 3 (;@1;)
          end
          get_local 4
          i32.load
          set_local 27
          get_local 27
          i32.load
          set_local 28
          get_local 4
          get_local 28
          i32.store
          br 0 (;@3;)
        end
      end
      i32.const 0
      set_local 29
      get_local 4
      get_local 29
      i32.store offset=12
    end
    get_local 4
    i32.load offset=12
    set_local 30
    i32.const 16
    set_local 31
    get_local 4
    get_local 31
    i32.add
    set_local 32
    get_local 32
    set_global 0
    get_local 30
    return)
  (func $json_createWithPool (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 32
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 0
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=24
    get_local 4
    get_local 1
    i32.store offset=20
    get_local 4
    i32.load offset=24
    set_local 6
    get_local 6
    call $goBlank
    set_local 7
    get_local 4
    get_local 7
    i32.store offset=16
    get_local 4
    i32.load offset=16
    set_local 8
    get_local 8
    set_local 9
    get_local 5
    set_local 10
    get_local 9
    get_local 10
    i32.ne
    set_local 11
    i32.const 1
    set_local 12
    get_local 11
    get_local 12
    i32.and
    set_local 13
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 13
          i32.eqz
          br_if 0 (;@3;)
          i32.const 123
          set_local 14
          get_local 4
          i32.load offset=16
          set_local 15
          get_local 15
          i32.load8_u
          set_local 16
          i32.const 24
          set_local 17
          get_local 16
          get_local 17
          i32.shl
          set_local 18
          get_local 18
          get_local 17
          i32.shr_s
          set_local 19
          get_local 19
          set_local 20
          get_local 14
          set_local 21
          get_local 20
          get_local 21
          i32.ne
          set_local 22
          i32.const 1
          set_local 23
          get_local 22
          get_local 23
          i32.and
          set_local 24
          get_local 24
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        set_local 25
        get_local 4
        get_local 25
        i32.store offset=28
        br 1 (;@1;)
      end
      i32.const 0
      set_local 26
      get_local 4
      i32.load offset=20
      set_local 27
      get_local 27
      i32.load
      set_local 28
      get_local 4
      i32.load offset=20
      set_local 29
      get_local 29
      get_local 28
      call_indirect (type 0)
      set_local 30
      get_local 4
      get_local 30
      i32.store offset=12
      get_local 4
      i32.load offset=12
      set_local 31
      get_local 31
      get_local 26
      i32.store offset=4
      get_local 4
      i32.load offset=12
      set_local 32
      get_local 32
      get_local 26
      i32.store
      get_local 4
      i32.load offset=12
      set_local 33
      get_local 33
      get_local 26
      i32.store offset=8
      get_local 4
      i32.load offset=16
      set_local 34
      get_local 4
      i32.load offset=12
      set_local 35
      get_local 4
      i32.load offset=20
      set_local 36
      get_local 34
      get_local 35
      get_local 36
      call $objValue
      set_local 37
      get_local 4
      get_local 37
      i32.store offset=16
      get_local 4
      i32.load offset=16
      set_local 38
      get_local 38
      set_local 39
      get_local 26
      set_local 40
      get_local 39
      get_local 40
      i32.ne
      set_local 41
      i32.const 1
      set_local 42
      get_local 41
      get_local 42
      i32.and
      set_local 43
      block  ;; label = @2
        get_local 43
        br_if 0 (;@2;)
        i32.const 0
        set_local 44
        get_local 4
        get_local 44
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 4
      i32.load offset=12
      set_local 45
      get_local 4
      get_local 45
      i32.store offset=28
    end
    get_local 4
    i32.load offset=28
    set_local 46
    i32.const 32
    set_local 47
    get_local 4
    get_local 47
    i32.add
    set_local 48
    get_local 48
    set_global 0
    get_local 46
    return)
  (func $goBlank (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 2629
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 5
    get_local 5
    get_local 4
    call $goWhile
    set_local 6
    i32.const 16
    set_local 7
    get_local 3
    get_local 7
    i32.add
    set_local 8
    get_local 8
    set_global 0
    get_local 6
    return)
  (func $objValue (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 3
    i32.const 32
    set_local 4
    get_local 3
    get_local 4
    i32.sub
    set_local 5
    get_local 5
    set_global 0
    i32.const 0
    set_local 6
    get_local 5
    get_local 0
    i32.store offset=24
    get_local 5
    get_local 1
    i32.store offset=20
    get_local 5
    get_local 2
    i32.store offset=16
    get_local 5
    i32.load offset=20
    set_local 7
    get_local 7
    get_local 6
    i32.store offset=16
    get_local 5
    i32.load offset=20
    set_local 8
    get_local 8
    get_local 6
    i32.store offset=8
    get_local 5
    i32.load offset=20
    set_local 9
    get_local 9
    get_local 6
    i32.store
    get_local 5
    i32.load offset=24
    set_local 10
    i32.const 1
    set_local 11
    get_local 10
    get_local 11
    i32.add
    set_local 12
    get_local 5
    get_local 12
    i32.store offset=24
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        set_local 13
        get_local 5
        i32.load offset=24
        set_local 14
        get_local 14
        call $goBlank
        set_local 15
        get_local 5
        get_local 15
        i32.store offset=24
        get_local 5
        i32.load offset=24
        set_local 16
        get_local 16
        set_local 17
        get_local 13
        set_local 18
        get_local 17
        get_local 18
        i32.ne
        set_local 19
        i32.const 1
        set_local 20
        get_local 19
        get_local 20
        i32.and
        set_local 21
        block  ;; label = @3
          get_local 21
          br_if 0 (;@3;)
          i32.const 0
          set_local 22
          get_local 5
          get_local 22
          i32.store offset=28
          br 2 (;@1;)
        end
        i32.const 44
        set_local 23
        get_local 5
        i32.load offset=24
        set_local 24
        get_local 24
        i32.load8_u
        set_local 25
        i32.const 24
        set_local 26
        get_local 25
        get_local 26
        i32.shl
        set_local 27
        get_local 27
        get_local 26
        i32.shr_s
        set_local 28
        get_local 28
        set_local 29
        get_local 23
        set_local 30
        get_local 29
        get_local 30
        i32.eq
        set_local 31
        i32.const 1
        set_local 32
        get_local 31
        get_local 32
        i32.and
        set_local 33
        block  ;; label = @3
          get_local 33
          i32.eqz
          br_if 0 (;@3;)
          get_local 5
          i32.load offset=24
          set_local 34
          i32.const 1
          set_local 35
          get_local 34
          get_local 35
          i32.add
          set_local 36
          get_local 5
          get_local 36
          i32.store offset=24
          br 1 (;@2;)
        end
        i32.const 125
        set_local 37
        i32.const 93
        set_local 38
        get_local 5
        i32.load offset=20
        set_local 39
        get_local 39
        i32.load offset=16
        set_local 40
        get_local 38
        get_local 37
        get_local 40
        select
        set_local 41
        get_local 5
        get_local 41
        i32.store8 offset=15
        get_local 5
        i32.load offset=24
        set_local 42
        get_local 42
        i32.load8_u
        set_local 43
        i32.const 24
        set_local 44
        get_local 43
        get_local 44
        i32.shl
        set_local 45
        get_local 45
        get_local 44
        i32.shr_s
        set_local 46
        get_local 5
        i32.load8_u offset=15
        set_local 47
        i32.const 24
        set_local 48
        get_local 47
        get_local 48
        i32.shl
        set_local 49
        get_local 49
        get_local 48
        i32.shr_s
        set_local 50
        get_local 46
        set_local 51
        get_local 50
        set_local 52
        get_local 51
        get_local 52
        i32.eq
        set_local 53
        i32.const 1
        set_local 54
        get_local 53
        get_local 54
        i32.and
        set_local 55
        block  ;; label = @3
          get_local 55
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 56
          i32.const 0
          set_local 57
          get_local 5
          i32.load offset=24
          set_local 58
          get_local 58
          get_local 57
          i32.store8
          get_local 5
          i32.load offset=20
          set_local 59
          get_local 59
          i32.load
          set_local 60
          get_local 5
          get_local 60
          i32.store offset=8
          get_local 5
          i32.load offset=8
          set_local 61
          get_local 61
          set_local 62
          get_local 56
          set_local 63
          get_local 62
          get_local 63
          i32.ne
          set_local 64
          i32.const 1
          set_local 65
          get_local 64
          get_local 65
          i32.and
          set_local 66
          block  ;; label = @4
            get_local 66
            br_if 0 (;@4;)
            get_local 5
            i32.load offset=24
            set_local 67
            i32.const 1
            set_local 68
            get_local 67
            get_local 68
            i32.add
            set_local 69
            get_local 5
            get_local 69
            i32.store offset=24
            get_local 5
            get_local 69
            i32.store offset=28
            br 3 (;@1;)
          end
          i32.const 0
          set_local 70
          get_local 5
          i32.load offset=20
          set_local 71
          get_local 71
          get_local 70
          i32.store
          get_local 5
          i32.load offset=8
          set_local 72
          get_local 5
          get_local 72
          i32.store offset=20
          get_local 5
          i32.load offset=24
          set_local 73
          i32.const 1
          set_local 74
          get_local 73
          get_local 74
          i32.add
          set_local 75
          get_local 5
          get_local 75
          i32.store offset=24
          br 1 (;@2;)
        end
        i32.const 0
        set_local 76
        get_local 5
        i32.load offset=16
        set_local 77
        get_local 77
        i32.load offset=4
        set_local 78
        get_local 5
        i32.load offset=16
        set_local 79
        get_local 79
        get_local 78
        call_indirect (type 0)
        set_local 80
        get_local 5
        get_local 80
        i32.store offset=4
        get_local 5
        i32.load offset=4
        set_local 81
        get_local 81
        set_local 82
        get_local 76
        set_local 83
        get_local 82
        get_local 83
        i32.ne
        set_local 84
        i32.const 1
        set_local 85
        get_local 84
        get_local 85
        i32.and
        set_local 86
        block  ;; label = @3
          get_local 86
          br_if 0 (;@3;)
          i32.const 0
          set_local 87
          get_local 5
          get_local 87
          i32.store offset=28
          br 2 (;@1;)
        end
        i32.const 1
        set_local 88
        get_local 5
        i32.load offset=20
        set_local 89
        get_local 89
        i32.load offset=16
        set_local 90
        get_local 90
        set_local 91
        get_local 88
        set_local 92
        get_local 91
        get_local 92
        i32.ne
        set_local 93
        i32.const 1
        set_local 94
        get_local 93
        get_local 94
        i32.and
        set_local 95
        block  ;; label = @3
          block  ;; label = @4
            get_local 95
            i32.eqz
            br_if 0 (;@4;)
            i32.const 34
            set_local 96
            get_local 5
            i32.load offset=24
            set_local 97
            get_local 97
            i32.load8_u
            set_local 98
            i32.const 24
            set_local 99
            get_local 98
            get_local 99
            i32.shl
            set_local 100
            get_local 100
            get_local 99
            i32.shr_s
            set_local 101
            get_local 101
            set_local 102
            get_local 96
            set_local 103
            get_local 102
            get_local 103
            i32.ne
            set_local 104
            i32.const 1
            set_local 105
            get_local 104
            get_local 105
            i32.and
            set_local 106
            block  ;; label = @5
              get_local 106
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              set_local 107
              get_local 5
              get_local 107
              i32.store offset=28
              br 4 (;@1;)
            end
            i32.const 0
            set_local 108
            get_local 5
            i32.load offset=24
            set_local 109
            get_local 5
            i32.load offset=4
            set_local 110
            get_local 109
            get_local 110
            call $propertyName
            set_local 111
            get_local 5
            get_local 111
            i32.store offset=24
            get_local 5
            i32.load offset=24
            set_local 112
            get_local 112
            set_local 113
            get_local 108
            set_local 114
            get_local 113
            get_local 114
            i32.ne
            set_local 115
            i32.const 1
            set_local 116
            get_local 115
            get_local 116
            i32.and
            set_local 117
            block  ;; label = @5
              get_local 117
              br_if 0 (;@5;)
              i32.const 0
              set_local 118
              get_local 5
              get_local 118
              i32.store offset=28
              br 4 (;@1;)
            end
            br 1 (;@3;)
          end
          i32.const 0
          set_local 119
          get_local 5
          i32.load offset=4
          set_local 120
          get_local 120
          get_local 119
          i32.store offset=4
        end
        get_local 5
        i32.load offset=20
        set_local 121
        get_local 5
        i32.load offset=4
        set_local 122
        get_local 121
        get_local 122
        call $add
        get_local 5
        i32.load offset=24
        set_local 123
        get_local 5
        i32.load offset=4
        set_local 124
        get_local 124
        get_local 123
        i32.store offset=8
        get_local 5
        i32.load offset=24
        set_local 125
        get_local 125
        i32.load8_s
        set_local 126
        i32.const 34
        set_local 127
        get_local 126
        get_local 127
        i32.eq
        set_local 128
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 128
                    br_if 0 (;@8;)
                    i32.const 91
                    set_local 129
                    get_local 126
                    get_local 129
                    i32.eq
                    set_local 130
                    block  ;; label = @9
                      get_local 130
                      br_if 0 (;@9;)
                      i32.const 102
                      set_local 131
                      get_local 126
                      get_local 131
                      i32.eq
                      set_local 132
                      get_local 132
                      br_if 3 (;@6;)
                      i32.const 110
                      set_local 133
                      get_local 126
                      get_local 133
                      i32.eq
                      set_local 134
                      get_local 134
                      br_if 4 (;@5;)
                      i32.const 116
                      set_local 135
                      get_local 126
                      get_local 135
                      i32.eq
                      set_local 136
                      get_local 136
                      br_if 2 (;@7;)
                      i32.const 123
                      set_local 137
                      get_local 126
                      get_local 137
                      i32.ne
                      set_local 138
                      get_local 138
                      br_if 5 (;@4;)
                      i32.const 0
                      set_local 139
                      get_local 5
                      i32.load offset=4
                      set_local 140
                      get_local 140
                      get_local 139
                      i32.store offset=16
                      get_local 5
                      i32.load offset=4
                      set_local 141
                      get_local 141
                      get_local 139
                      i32.store offset=8
                      get_local 5
                      i32.load offset=20
                      set_local 142
                      get_local 5
                      i32.load offset=4
                      set_local 143
                      get_local 143
                      get_local 142
                      i32.store
                      get_local 5
                      i32.load offset=4
                      set_local 144
                      get_local 5
                      get_local 144
                      i32.store offset=20
                      get_local 5
                      i32.load offset=24
                      set_local 145
                      i32.const 1
                      set_local 146
                      get_local 145
                      get_local 146
                      i32.add
                      set_local 147
                      get_local 5
                      get_local 147
                      i32.store offset=24
                      br 6 (;@3;)
                    end
                    i32.const 0
                    set_local 148
                    i32.const 1
                    set_local 149
                    get_local 5
                    i32.load offset=4
                    set_local 150
                    get_local 150
                    get_local 149
                    i32.store offset=16
                    get_local 5
                    i32.load offset=4
                    set_local 151
                    get_local 151
                    get_local 148
                    i32.store offset=8
                    get_local 5
                    i32.load offset=20
                    set_local 152
                    get_local 5
                    i32.load offset=4
                    set_local 153
                    get_local 153
                    get_local 152
                    i32.store
                    get_local 5
                    i32.load offset=4
                    set_local 154
                    get_local 5
                    get_local 154
                    i32.store offset=20
                    get_local 5
                    i32.load offset=24
                    set_local 155
                    i32.const 1
                    set_local 156
                    get_local 155
                    get_local 156
                    i32.add
                    set_local 157
                    get_local 5
                    get_local 157
                    i32.store offset=24
                    br 5 (;@3;)
                  end
                  get_local 5
                  i32.load offset=24
                  set_local 158
                  get_local 5
                  i32.load offset=4
                  set_local 159
                  get_local 158
                  get_local 159
                  call $textValue
                  set_local 160
                  get_local 5
                  get_local 160
                  i32.store offset=24
                  br 4 (;@3;)
                end
                get_local 5
                i32.load offset=24
                set_local 161
                get_local 5
                i32.load offset=4
                set_local 162
                get_local 161
                get_local 162
                call $trueValue
                set_local 163
                get_local 5
                get_local 163
                i32.store offset=24
                br 3 (;@3;)
              end
              get_local 5
              i32.load offset=24
              set_local 164
              get_local 5
              i32.load offset=4
              set_local 165
              get_local 164
              get_local 165
              call $falseValue
              set_local 166
              get_local 5
              get_local 166
              i32.store offset=24
              br 2 (;@3;)
            end
            get_local 5
            i32.load offset=24
            set_local 167
            get_local 5
            i32.load offset=4
            set_local 168
            get_local 167
            get_local 168
            call $nullValue
            set_local 169
            get_local 5
            get_local 169
            i32.store offset=24
            br 1 (;@3;)
          end
          get_local 5
          i32.load offset=24
          set_local 170
          get_local 5
          i32.load offset=4
          set_local 171
          get_local 170
          get_local 171
          call $numValue
          set_local 172
          get_local 5
          get_local 172
          i32.store offset=24
        end
        i32.const 0
        set_local 173
        get_local 5
        i32.load offset=24
        set_local 174
        get_local 174
        set_local 175
        get_local 173
        set_local 176
        get_local 175
        get_local 176
        i32.ne
        set_local 177
        i32.const 1
        set_local 178
        get_local 177
        get_local 178
        i32.and
        set_local 179
        block  ;; label = @3
          get_local 179
          br_if 0 (;@3;)
          i32.const 0
          set_local 180
          get_local 5
          get_local 180
          i32.store offset=28
          br 2 (;@1;)
        end
        br 0 (;@2;)
      end
    end
    get_local 5
    i32.load offset=28
    set_local 181
    i32.const 32
    set_local 182
    get_local 5
    get_local 182
    i32.add
    set_local 183
    get_local 183
    set_global 0
    get_local 181
    return)
  (func $goWhile (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    get_local 4
    get_local 0
    i32.store offset=8
    get_local 4
    get_local 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          get_local 4
          i32.load offset=8
          set_local 5
          get_local 5
          i32.load8_u
          set_local 6
          i32.const 24
          set_local 7
          get_local 6
          get_local 7
          i32.shl
          set_local 8
          get_local 8
          get_local 7
          i32.shr_s
          set_local 9
          get_local 9
          i32.eqz
          br_if 1 (;@2;)
          get_local 4
          i32.load offset=8
          set_local 10
          get_local 10
          i32.load8_u
          set_local 11
          get_local 4
          i32.load offset=4
          set_local 12
          i32.const 24
          set_local 13
          get_local 11
          get_local 13
          i32.shl
          set_local 14
          get_local 14
          get_local 13
          i32.shr_s
          set_local 15
          get_local 15
          get_local 12
          call $isOneOfThem
          set_local 16
          i32.const 1
          set_local 17
          get_local 16
          get_local 17
          i32.and
          set_local 18
          block  ;; label = @4
            get_local 18
            br_if 0 (;@4;)
            get_local 4
            i32.load offset=8
            set_local 19
            get_local 4
            get_local 19
            i32.store offset=12
            br 3 (;@1;)
          end
          get_local 4
          i32.load offset=8
          set_local 20
          i32.const 1
          set_local 21
          get_local 20
          get_local 21
          i32.add
          set_local 22
          get_local 4
          get_local 22
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      i32.const 0
      set_local 23
      get_local 4
      get_local 23
      i32.store offset=12
    end
    get_local 4
    i32.load offset=12
    set_local 24
    i32.const 16
    set_local 25
    get_local 4
    get_local 25
    i32.add
    set_local 26
    get_local 26
    set_global 0
    get_local 24
    return)
  (func $propertyName (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 0
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=8
    get_local 4
    get_local 1
    i32.store offset=4
    get_local 4
    i32.load offset=8
    set_local 6
    i32.const 1
    set_local 7
    get_local 6
    get_local 7
    i32.add
    set_local 8
    get_local 4
    get_local 8
    i32.store offset=8
    get_local 4
    i32.load offset=4
    set_local 9
    get_local 9
    get_local 8
    i32.store offset=4
    get_local 4
    i32.load offset=8
    set_local 10
    get_local 10
    call $parseString
    set_local 11
    get_local 4
    get_local 11
    i32.store offset=8
    get_local 4
    i32.load offset=8
    set_local 12
    get_local 12
    set_local 13
    get_local 5
    set_local 14
    get_local 13
    get_local 14
    i32.ne
    set_local 15
    i32.const 1
    set_local 16
    get_local 15
    get_local 16
    i32.and
    set_local 17
    block  ;; label = @1
      block  ;; label = @2
        get_local 17
        br_if 0 (;@2;)
        i32.const 0
        set_local 18
        get_local 4
        get_local 18
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 0
      set_local 19
      get_local 4
      i32.load offset=8
      set_local 20
      get_local 20
      call $goBlank
      set_local 21
      get_local 4
      get_local 21
      i32.store offset=8
      get_local 4
      i32.load offset=8
      set_local 22
      get_local 22
      set_local 23
      get_local 19
      set_local 24
      get_local 23
      get_local 24
      i32.ne
      set_local 25
      i32.const 1
      set_local 26
      get_local 25
      get_local 26
      i32.and
      set_local 27
      block  ;; label = @2
        get_local 27
        br_if 0 (;@2;)
        i32.const 0
        set_local 28
        get_local 4
        get_local 28
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 58
      set_local 29
      get_local 4
      i32.load offset=8
      set_local 30
      i32.const 1
      set_local 31
      get_local 30
      get_local 31
      i32.add
      set_local 32
      get_local 4
      get_local 32
      i32.store offset=8
      get_local 30
      i32.load8_u
      set_local 33
      i32.const 24
      set_local 34
      get_local 33
      get_local 34
      i32.shl
      set_local 35
      get_local 35
      get_local 34
      i32.shr_s
      set_local 36
      get_local 36
      set_local 37
      get_local 29
      set_local 38
      get_local 37
      get_local 38
      i32.ne
      set_local 39
      i32.const 1
      set_local 40
      get_local 39
      get_local 40
      i32.and
      set_local 41
      block  ;; label = @2
        get_local 41
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 42
        get_local 4
        get_local 42
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 4
      i32.load offset=8
      set_local 43
      get_local 43
      call $goBlank
      set_local 44
      get_local 4
      get_local 44
      i32.store offset=12
    end
    get_local 4
    i32.load offset=12
    set_local 45
    i32.const 16
    set_local 46
    get_local 4
    get_local 46
    i32.add
    set_local 47
    get_local 47
    set_global 0
    get_local 45
    return)
  (func $add (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    i32.const 0
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=12
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    i32.load offset=8
    set_local 6
    get_local 6
    get_local 5
    i32.store
    get_local 4
    i32.load offset=12
    set_local 7
    get_local 7
    i32.load offset=8
    set_local 8
    get_local 8
    set_local 9
    get_local 5
    set_local 10
    get_local 9
    get_local 10
    i32.ne
    set_local 11
    i32.const 1
    set_local 12
    get_local 11
    get_local 12
    i32.and
    set_local 13
    block  ;; label = @1
      block  ;; label = @2
        get_local 13
        br_if 0 (;@2;)
        get_local 4
        i32.load offset=8
        set_local 14
        get_local 4
        i32.load offset=12
        set_local 15
        get_local 15
        get_local 14
        i32.store offset=8
        get_local 4
        i32.load offset=8
        set_local 16
        get_local 4
        i32.load offset=12
        set_local 17
        get_local 17
        get_local 16
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 4
      i32.load offset=8
      set_local 18
      get_local 4
      i32.load offset=12
      set_local 19
      get_local 19
      i32.load offset=12
      set_local 20
      get_local 20
      get_local 18
      i32.store
      get_local 4
      i32.load offset=8
      set_local 21
      get_local 4
      i32.load offset=12
      set_local 22
      get_local 22
      get_local 21
      i32.store offset=12
    end
    return)
  (func $textValue (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 0
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=8
    get_local 4
    get_local 1
    i32.store offset=4
    get_local 4
    i32.load offset=4
    set_local 6
    get_local 6
    i32.load offset=8
    set_local 7
    i32.const 1
    set_local 8
    get_local 7
    get_local 8
    i32.add
    set_local 9
    get_local 6
    get_local 9
    i32.store offset=8
    get_local 4
    i32.load offset=8
    set_local 10
    i32.const 1
    set_local 11
    get_local 10
    get_local 11
    i32.add
    set_local 12
    get_local 4
    get_local 12
    i32.store offset=8
    get_local 12
    call $parseString
    set_local 13
    get_local 4
    get_local 13
    i32.store offset=8
    get_local 4
    i32.load offset=8
    set_local 14
    get_local 14
    set_local 15
    get_local 5
    set_local 16
    get_local 15
    get_local 16
    i32.ne
    set_local 17
    i32.const 1
    set_local 18
    get_local 17
    get_local 18
    i32.and
    set_local 19
    block  ;; label = @1
      block  ;; label = @2
        get_local 19
        br_if 0 (;@2;)
        i32.const 0
        set_local 20
        get_local 4
        get_local 20
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 2
      set_local 21
      get_local 4
      i32.load offset=4
      set_local 22
      get_local 22
      get_local 21
      i32.store offset=16
      get_local 4
      i32.load offset=8
      set_local 23
      get_local 4
      get_local 23
      i32.store offset=12
    end
    get_local 4
    i32.load offset=12
    set_local 24
    i32.const 16
    set_local 25
    get_local 4
    get_local 25
    i32.add
    set_local 26
    get_local 26
    set_global 0
    get_local 24
    return)
  (func $trueValue (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 2624
    set_local 5
    i32.const 3
    set_local 6
    get_local 4
    get_local 0
    i32.store offset=12
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    i32.load offset=12
    set_local 7
    get_local 4
    i32.load offset=8
    set_local 8
    get_local 7
    get_local 8
    get_local 5
    get_local 6
    call $primitiveValue
    set_local 9
    i32.const 16
    set_local 10
    get_local 4
    get_local 10
    i32.add
    set_local 11
    get_local 11
    set_global 0
    get_local 9
    return)
  (func $falseValue (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 2638
    set_local 5
    i32.const 3
    set_local 6
    get_local 4
    get_local 0
    i32.store offset=12
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    i32.load offset=12
    set_local 7
    get_local 4
    i32.load offset=8
    set_local 8
    get_local 7
    get_local 8
    get_local 5
    get_local 6
    call $primitiveValue
    set_local 9
    i32.const 16
    set_local 10
    get_local 4
    get_local 10
    i32.add
    set_local 11
    get_local 11
    set_global 0
    get_local 9
    return)
  (func $nullValue (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 2644
    set_local 5
    i32.const 6
    set_local 6
    get_local 4
    get_local 0
    i32.store offset=12
    get_local 4
    get_local 1
    i32.store offset=8
    get_local 4
    i32.load offset=12
    set_local 7
    get_local 4
    i32.load offset=8
    set_local 8
    get_local 7
    get_local 8
    get_local 5
    get_local 6
    call $primitiveValue
    set_local 9
    i32.const 16
    set_local 10
    get_local 4
    get_local 10
    i32.add
    set_local 11
    get_local 11
    set_global 0
    get_local 9
    return)
  (func $numValue (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 48
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    set_global 0
    i32.const 45
    set_local 5
    get_local 4
    get_local 0
    i32.store offset=40
    get_local 4
    get_local 1
    i32.store offset=36
    get_local 4
    i32.load offset=40
    set_local 6
    get_local 6
    i32.load8_u
    set_local 7
    i32.const 24
    set_local 8
    get_local 7
    get_local 8
    i32.shl
    set_local 9
    get_local 9
    get_local 8
    i32.shr_s
    set_local 10
    get_local 10
    set_local 11
    get_local 5
    set_local 12
    get_local 11
    get_local 12
    i32.eq
    set_local 13
    i32.const 1
    set_local 14
    get_local 13
    get_local 14
    i32.and
    set_local 15
    block  ;; label = @1
      get_local 15
      i32.eqz
      br_if 0 (;@1;)
      get_local 4
      i32.load offset=40
      set_local 16
      i32.const 1
      set_local 17
      get_local 16
      get_local 17
      i32.add
      set_local 18
      get_local 4
      get_local 18
      i32.store offset=40
    end
    i32.const 0
    set_local 19
    i32.const 1
    set_local 20
    get_local 19
    get_local 20
    i32.and
    set_local 21
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 21
            i32.eqz
            br_if 0 (;@4;)
            get_local 4
            i32.load offset=40
            set_local 22
            get_local 22
            i32.load8_u
            set_local 23
            i32.const 24
            set_local 24
            get_local 23
            get_local 24
            i32.shl
            set_local 25
            get_local 25
            get_local 24
            i32.shr_s
            set_local 26
            get_local 26
            call $isdigit
            set_local 27
            get_local 27
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 10
          set_local 28
          get_local 4
          i32.load offset=40
          set_local 29
          get_local 29
          i32.load8_u
          set_local 30
          i32.const 24
          set_local 31
          get_local 30
          get_local 31
          i32.shl
          set_local 32
          get_local 32
          get_local 31
          i32.shr_s
          set_local 33
          i32.const 48
          set_local 34
          get_local 33
          get_local 34
          i32.sub
          set_local 35
          get_local 35
          set_local 36
          get_local 28
          set_local 37
          get_local 36
          get_local 37
          i32.lt_u
          set_local 38
          i32.const 1
          set_local 39
          get_local 38
          get_local 39
          i32.and
          set_local 40
          get_local 40
          br_if 1 (;@2;)
        end
        i32.const 0
        set_local 41
        get_local 4
        get_local 41
        i32.store offset=44
        br 1 (;@1;)
      end
      i32.const 48
      set_local 42
      get_local 4
      i32.load offset=40
      set_local 43
      get_local 43
      i32.load8_u
      set_local 44
      i32.const 24
      set_local 45
      get_local 44
      get_local 45
      i32.shl
      set_local 46
      get_local 46
      get_local 45
      i32.shr_s
      set_local 47
      get_local 47
      set_local 48
      get_local 42
      set_local 49
      get_local 48
      get_local 49
      i32.ne
      set_local 50
      i32.const 1
      set_local 51
      get_local 50
      get_local 51
      i32.and
      set_local 52
      block  ;; label = @2
        block  ;; label = @3
          get_local 52
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 53
          get_local 4
          i32.load offset=40
          set_local 54
          get_local 54
          call $goNum
          set_local 55
          get_local 4
          get_local 55
          i32.store offset=40
          get_local 4
          i32.load offset=40
          set_local 56
          get_local 56
          set_local 57
          get_local 53
          set_local 58
          get_local 57
          get_local 58
          i32.ne
          set_local 59
          i32.const 1
          set_local 60
          get_local 59
          get_local 60
          i32.and
          set_local 61
          block  ;; label = @4
            get_local 61
            br_if 0 (;@4;)
            i32.const 0
            set_local 62
            get_local 4
            get_local 62
            i32.store offset=44
            br 3 (;@1;)
          end
          br 1 (;@2;)
        end
        i32.const 0
        set_local 63
        i32.const 1
        set_local 64
        get_local 63
        get_local 64
        i32.and
        set_local 65
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 65
              i32.eqz
              br_if 0 (;@5;)
              get_local 4
              i32.load offset=40
              set_local 66
              i32.const 1
              set_local 67
              get_local 66
              get_local 67
              i32.add
              set_local 68
              get_local 4
              get_local 68
              i32.store offset=40
              get_local 66
              i32.load8_u offset=1
              set_local 69
              i32.const 24
              set_local 70
              get_local 69
              get_local 70
              i32.shl
              set_local 71
              get_local 71
              get_local 70
              i32.shr_s
              set_local 72
              get_local 72
              call $isdigit
              set_local 73
              get_local 73
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            i32.const 10
            set_local 74
            get_local 4
            i32.load offset=40
            set_local 75
            i32.const 1
            set_local 76
            get_local 75
            get_local 76
            i32.add
            set_local 77
            get_local 4
            get_local 77
            i32.store offset=40
            get_local 75
            i32.load8_u offset=1
            set_local 78
            i32.const 24
            set_local 79
            get_local 78
            get_local 79
            i32.shl
            set_local 80
            get_local 80
            get_local 79
            i32.shr_s
            set_local 81
            i32.const 48
            set_local 82
            get_local 81
            get_local 82
            i32.sub
            set_local 83
            get_local 83
            set_local 84
            get_local 74
            set_local 85
            get_local 84
            get_local 85
            i32.lt_u
            set_local 86
            i32.const 1
            set_local 87
            get_local 86
            get_local 87
            i32.and
            set_local 88
            get_local 88
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 0
          set_local 89
          get_local 4
          get_local 89
          i32.store offset=44
          br 2 (;@1;)
        end
      end
      i32.const 46
      set_local 90
      i32.const 4
      set_local 91
      get_local 4
      i32.load offset=36
      set_local 92
      get_local 92
      get_local 91
      i32.store offset=16
      get_local 4
      i32.load offset=40
      set_local 93
      get_local 93
      i32.load8_u
      set_local 94
      i32.const 24
      set_local 95
      get_local 94
      get_local 95
      i32.shl
      set_local 96
      get_local 96
      get_local 95
      i32.shr_s
      set_local 97
      get_local 97
      set_local 98
      get_local 90
      set_local 99
      get_local 98
      get_local 99
      i32.eq
      set_local 100
      i32.const 1
      set_local 101
      get_local 100
      get_local 101
      i32.and
      set_local 102
      block  ;; label = @2
        get_local 102
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 103
        get_local 4
        i32.load offset=40
        set_local 104
        i32.const 1
        set_local 105
        get_local 104
        get_local 105
        i32.add
        set_local 106
        get_local 4
        get_local 106
        i32.store offset=40
        get_local 106
        call $fraqValue
        set_local 107
        get_local 4
        get_local 107
        i32.store offset=40
        get_local 4
        i32.load offset=40
        set_local 108
        get_local 108
        set_local 109
        get_local 103
        set_local 110
        get_local 109
        get_local 110
        i32.ne
        set_local 111
        i32.const 1
        set_local 112
        get_local 111
        get_local 112
        i32.and
        set_local 113
        block  ;; label = @3
          get_local 113
          br_if 0 (;@3;)
          i32.const 0
          set_local 114
          get_local 4
          get_local 114
          i32.store offset=44
          br 2 (;@1;)
        end
        i32.const 5
        set_local 115
        get_local 4
        i32.load offset=36
        set_local 116
        get_local 116
        get_local 115
        i32.store offset=16
      end
      i32.const 101
      set_local 117
      get_local 4
      i32.load offset=40
      set_local 118
      get_local 118
      i32.load8_u
      set_local 119
      i32.const 24
      set_local 120
      get_local 119
      get_local 120
      i32.shl
      set_local 121
      get_local 121
      get_local 120
      i32.shr_s
      set_local 122
      get_local 122
      set_local 123
      get_local 117
      set_local 124
      get_local 123
      get_local 124
      i32.eq
      set_local 125
      i32.const 1
      set_local 126
      get_local 125
      get_local 126
      i32.and
      set_local 127
      block  ;; label = @2
        block  ;; label = @3
          get_local 127
          br_if 0 (;@3;)
          i32.const 69
          set_local 128
          get_local 4
          i32.load offset=40
          set_local 129
          get_local 129
          i32.load8_u
          set_local 130
          i32.const 24
          set_local 131
          get_local 130
          get_local 131
          i32.shl
          set_local 132
          get_local 132
          get_local 131
          i32.shr_s
          set_local 133
          get_local 133
          set_local 134
          get_local 128
          set_local 135
          get_local 134
          get_local 135
          i32.eq
          set_local 136
          i32.const 1
          set_local 137
          get_local 136
          get_local 137
          i32.and
          set_local 138
          get_local 138
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        set_local 139
        get_local 4
        i32.load offset=40
        set_local 140
        i32.const 1
        set_local 141
        get_local 140
        get_local 141
        i32.add
        set_local 142
        get_local 4
        get_local 142
        i32.store offset=40
        get_local 142
        call $expValue
        set_local 143
        get_local 4
        get_local 143
        i32.store offset=40
        get_local 4
        i32.load offset=40
        set_local 144
        get_local 144
        set_local 145
        get_local 139
        set_local 146
        get_local 145
        get_local 146
        i32.ne
        set_local 147
        i32.const 1
        set_local 148
        get_local 147
        get_local 148
        i32.and
        set_local 149
        block  ;; label = @3
          get_local 149
          br_if 0 (;@3;)
          i32.const 0
          set_local 150
          get_local 4
          get_local 150
          i32.store offset=44
          br 2 (;@1;)
        end
        i32.const 5
        set_local 151
        get_local 4
        i32.load offset=36
        set_local 152
        get_local 152
        get_local 151
        i32.store offset=16
      end
      get_local 4
      i32.load offset=40
      set_local 153
      get_local 153
      i32.load8_u
      set_local 154
      i32.const 24
      set_local 155
      get_local 154
      get_local 155
      i32.shl
      set_local 156
      get_local 156
      get_local 155
      i32.shr_s
      set_local 157
      get_local 157
      call $isEndOfPrimitive
      set_local 158
      i32.const 1
      set_local 159
      get_local 158
      get_local 159
      i32.and
      set_local 160
      block  ;; label = @2
        get_local 160
        br_if 0 (;@2;)
        i32.const 0
        set_local 161
        get_local 4
        get_local 161
        i32.store offset=44
        br 1 (;@1;)
      end
      i32.const 4
      set_local 162
      get_local 4
      i32.load offset=36
      set_local 163
      get_local 163
      i32.load offset=16
      set_local 164
      get_local 162
      set_local 165
      get_local 164
      set_local 166
      get_local 165
      get_local 166
      i32.eq
      set_local 167
      i32.const 1
      set_local 168
      get_local 167
      get_local 168
      i32.and
      set_local 169
      block  ;; label = @2
        get_local 169
        i32.eqz
        br_if 0 (;@2;)
        i32.const 21
        set_local 170
        i32.const 20
        set_local 171
        i32.const 45
        set_local 172
        get_local 4
        i32.load offset=36
        set_local 173
        get_local 173
        i32.load offset=8
        set_local 174
        get_local 4
        get_local 174
        i32.store offset=32
        get_local 4
        i32.load offset=32
        set_local 175
        get_local 175
        i32.load8_u
        set_local 176
        i32.const 24
        set_local 177
        get_local 176
        get_local 177
        i32.shl
        set_local 178
        get_local 178
        get_local 177
        i32.shr_s
        set_local 179
        get_local 179
        set_local 180
        get_local 172
        set_local 181
        get_local 180
        get_local 181
        i32.eq
        set_local 182
        i32.const 1
        set_local 183
        get_local 182
        get_local 183
        i32.and
        set_local 184
        get_local 4
        get_local 184
        i32.store8 offset=31
        get_local 4
        i32.load8_u offset=31
        set_local 185
        i32.const 1
        set_local 186
        get_local 185
        get_local 186
        i32.and
        set_local 187
        get_local 170
        get_local 171
        get_local 187
        select
        set_local 188
        i32.const 1
        set_local 189
        get_local 188
        get_local 189
        i32.sub
        set_local 190
        get_local 4
        get_local 190
        i32.store offset=24
        get_local 4
        i32.load offset=40
        set_local 191
        get_local 4
        i32.load offset=32
        set_local 192
        get_local 191
        get_local 192
        i32.sub
        set_local 193
        get_local 4
        get_local 193
        i32.store offset=20
        get_local 4
        i32.load offset=20
        set_local 194
        get_local 4
        i32.load offset=24
        set_local 195
        get_local 194
        set_local 196
        get_local 195
        set_local 197
        get_local 196
        get_local 197
        i32.gt_u
        set_local 198
        i32.const 1
        set_local 199
        get_local 198
        get_local 199
        i32.and
        set_local 200
        block  ;; label = @3
          get_local 200
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 201
          get_local 4
          get_local 201
          i32.store offset=44
          br 2 (;@1;)
        end
        get_local 4
        i32.load offset=20
        set_local 202
        get_local 4
        i32.load offset=24
        set_local 203
        get_local 202
        set_local 204
        get_local 203
        set_local 205
        get_local 204
        get_local 205
        i32.eq
        set_local 206
        i32.const 1
        set_local 207
        get_local 206
        get_local 207
        i32.and
        set_local 208
        block  ;; label = @3
          get_local 208
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 209
          i32.const 2656
          set_local 210
          i32.const 2688
          set_local 211
          i32.const 0
          set_local 212
          get_local 4
          i32.load offset=40
          set_local 213
          get_local 213
          i32.load8_u
          set_local 214
          get_local 4
          get_local 214
          i32.store8 offset=19
          get_local 4
          i32.load offset=40
          set_local 215
          get_local 215
          get_local 212
          i32.store8
          get_local 4
          i32.load8_u offset=31
          set_local 216
          i32.const 1
          set_local 217
          get_local 216
          get_local 217
          i32.and
          set_local 218
          get_local 210
          get_local 211
          get_local 218
          select
          set_local 219
          get_local 4
          get_local 219
          i32.store offset=12
          get_local 4
          i32.load offset=12
          set_local 220
          get_local 4
          i32.load offset=32
          set_local 221
          get_local 220
          get_local 221
          call $strcmp
          set_local 222
          get_local 209
          set_local 223
          get_local 222
          set_local 224
          get_local 223
          get_local 224
          i32.gt_s
          set_local 225
          i32.const 1
          set_local 226
          get_local 225
          get_local 226
          i32.and
          set_local 227
          block  ;; label = @4
            get_local 227
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            set_local 228
            get_local 4
            get_local 228
            i32.store offset=44
            br 3 (;@1;)
          end
          get_local 4
          i32.load8_u offset=19
          set_local 229
          get_local 4
          i32.load offset=40
          set_local 230
          get_local 230
          get_local 229
          i32.store8
        end
      end
      get_local 4
      i32.load offset=40
      set_local 231
      get_local 231
      call $setToNull
      set_local 232
      get_local 4
      get_local 232
      i32.store offset=40
      get_local 4
      i32.load offset=40
      set_local 233
      get_local 4
      get_local 233
      i32.store offset=44
    end
    get_local 4
    i32.load offset=44
    set_local 234
    i32.const 48
    set_local 235
    get_local 4
    get_local 235
    i32.add
    set_local 236
    get_local 236
    set_global 0
    get_local 234
    return)
  (func $json_create (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 3
    i32.const 32
    set_local 4
    get_local 3
    get_local 4
    i32.sub
    set_local 5
    get_local 5
    set_global 0
    get_local 5
    set_local 6
    i32.const 1
    set_local 7
    i32.const 2
    set_local 8
    i32.const 0
    set_local 9
    get_local 5
    get_local 0
    i32.store offset=28
    get_local 5
    get_local 1
    i32.store offset=24
    get_local 5
    get_local 2
    i32.store offset=20
    get_local 5
    i32.load offset=24
    set_local 10
    get_local 5
    get_local 10
    i32.store
    get_local 5
    i32.load offset=20
    set_local 11
    get_local 5
    get_local 11
    i32.store offset=4
    get_local 5
    get_local 9
    i32.store offset=8
    get_local 5
    get_local 8
    i32.store offset=12
    get_local 5
    get_local 7
    i32.store offset=16
    get_local 5
    i32.load offset=28
    set_local 12
    i32.const 12
    set_local 13
    get_local 6
    get_local 13
    i32.add
    set_local 14
    get_local 12
    get_local 14
    call $json_createWithPool
    set_local 15
    i32.const 32
    set_local 16
    get_local 5
    get_local 16
    i32.add
    set_local 17
    get_local 17
    set_global 0
    get_local 15
    return)
  (func $poolAlloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    get_local 0
    i32.store offset=8
    get_local 3
    i32.load offset=8
    set_local 4
    i32.const -12
    set_local 5
    get_local 4
    get_local 5
    i32.add
    set_local 6
    get_local 3
    get_local 6
    i32.store offset=4
    get_local 3
    i32.load offset=4
    set_local 7
    get_local 7
    i32.load offset=8
    set_local 8
    get_local 3
    i32.load offset=4
    set_local 9
    get_local 9
    i32.load offset=4
    set_local 10
    get_local 8
    set_local 11
    get_local 10
    set_local 12
    get_local 11
    get_local 12
    i32.ge_u
    set_local 13
    i32.const 1
    set_local 14
    get_local 13
    get_local 14
    i32.and
    set_local 15
    block  ;; label = @1
      block  ;; label = @2
        get_local 15
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        set_local 16
        get_local 3
        get_local 16
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 3
      i32.load offset=4
      set_local 17
      get_local 17
      i32.load
      set_local 18
      get_local 3
      i32.load offset=4
      set_local 19
      get_local 19
      i32.load offset=8
      set_local 20
      i32.const 1
      set_local 21
      get_local 20
      get_local 21
      i32.add
      set_local 22
      get_local 19
      get_local 22
      i32.store offset=8
      i32.const 20
      set_local 23
      get_local 20
      get_local 23
      i32.mul
      set_local 24
      get_local 18
      get_local 24
      i32.add
      set_local 25
      get_local 3
      get_local 25
      i32.store offset=12
    end
    get_local 3
    i32.load offset=12
    set_local 26
    get_local 26
    return)
  (func $poolInit (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    i32.const 1
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 5
    i32.const -12
    set_local 6
    get_local 5
    get_local 6
    i32.add
    set_local 7
    get_local 3
    get_local 7
    i32.store offset=8
    get_local 3
    i32.load offset=8
    set_local 8
    get_local 8
    get_local 4
    i32.store offset=8
    get_local 3
    i32.load offset=8
    set_local 9
    get_local 9
    i32.load
    set_local 10
    get_local 10
    return)
  (func $parseString (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 32
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.store offset=24
    get_local 3
    i32.load offset=24
    set_local 4
    get_local 3
    get_local 4
    i32.store offset=20
    get_local 3
    i32.load offset=24
    set_local 5
    get_local 3
    get_local 5
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 32
          set_local 6
          get_local 3
          i32.load offset=20
          set_local 7
          get_local 7
          i32.load8_u
          set_local 8
          i32.const 255
          set_local 9
          get_local 8
          get_local 9
          i32.and
          set_local 10
          get_local 10
          set_local 11
          get_local 6
          set_local 12
          get_local 11
          get_local 12
          i32.ge_s
          set_local 13
          i32.const 1
          set_local 14
          get_local 13
          get_local 14
          i32.and
          set_local 15
          get_local 15
          i32.eqz
          br_if 1 (;@2;)
          i32.const 34
          set_local 16
          get_local 3
          i32.load offset=20
          set_local 17
          get_local 17
          i32.load8_u
          set_local 18
          i32.const 255
          set_local 19
          get_local 18
          get_local 19
          i32.and
          set_local 20
          get_local 20
          set_local 21
          get_local 16
          set_local 22
          get_local 21
          get_local 22
          i32.eq
          set_local 23
          i32.const 1
          set_local 24
          get_local 23
          get_local 24
          i32.and
          set_local 25
          block  ;; label = @4
            get_local 25
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            set_local 26
            get_local 3
            i32.load offset=16
            set_local 27
            get_local 27
            get_local 26
            i32.store8
            get_local 3
            i32.load offset=20
            set_local 28
            i32.const 1
            set_local 29
            get_local 28
            get_local 29
            i32.add
            set_local 30
            get_local 3
            get_local 30
            i32.store offset=20
            get_local 3
            get_local 30
            i32.store offset=28
            br 3 (;@1;)
          end
          i32.const 92
          set_local 31
          get_local 3
          i32.load offset=20
          set_local 32
          get_local 32
          i32.load8_u
          set_local 33
          i32.const 255
          set_local 34
          get_local 33
          get_local 34
          i32.and
          set_local 35
          get_local 35
          set_local 36
          get_local 31
          set_local 37
          get_local 36
          get_local 37
          i32.eq
          set_local 38
          i32.const 1
          set_local 39
          get_local 38
          get_local 39
          i32.and
          set_local 40
          block  ;; label = @4
            block  ;; label = @5
              get_local 40
              i32.eqz
              br_if 0 (;@5;)
              i32.const 117
              set_local 41
              get_local 3
              i32.load offset=20
              set_local 42
              i32.const 1
              set_local 43
              get_local 42
              get_local 43
              i32.add
              set_local 44
              get_local 3
              get_local 44
              i32.store offset=20
              get_local 42
              i32.load8_u offset=1
              set_local 45
              i32.const 255
              set_local 46
              get_local 45
              get_local 46
              i32.and
              set_local 47
              get_local 47
              set_local 48
              get_local 41
              set_local 49
              get_local 48
              get_local 49
              i32.eq
              set_local 50
              i32.const 1
              set_local 51
              get_local 50
              get_local 51
              i32.and
              set_local 52
              block  ;; label = @6
                block  ;; label = @7
                  get_local 52
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 3
                  i32.load offset=20
                  set_local 53
                  i32.const 1
                  set_local 54
                  get_local 53
                  get_local 54
                  i32.add
                  set_local 55
                  get_local 3
                  get_local 55
                  i32.store offset=20
                  get_local 55
                  call $getCharFromUnicode
                  set_local 56
                  get_local 3
                  get_local 56
                  i32.store8 offset=15
                  get_local 3
                  i32.load8_u offset=15
                  set_local 57
                  i32.const 24
                  set_local 58
                  get_local 57
                  get_local 58
                  i32.shl
                  set_local 59
                  get_local 59
                  get_local 58
                  i32.shr_s
                  set_local 60
                  block  ;; label = @8
                    get_local 60
                    br_if 0 (;@8;)
                    i32.const 0
                    set_local 61
                    get_local 3
                    get_local 61
                    i32.store offset=28
                    br 7 (;@1;)
                  end
                  get_local 3
                  i32.load8_u offset=15
                  set_local 62
                  get_local 3
                  i32.load offset=16
                  set_local 63
                  get_local 63
                  get_local 62
                  i32.store8
                  get_local 3
                  i32.load offset=20
                  set_local 64
                  i32.const 3
                  set_local 65
                  get_local 64
                  get_local 65
                  i32.add
                  set_local 66
                  get_local 3
                  get_local 66
                  i32.store offset=20
                  br 1 (;@6;)
                end
                get_local 3
                i32.load offset=20
                set_local 67
                get_local 67
                i32.load8_u
                set_local 68
                i32.const 24
                set_local 69
                get_local 68
                get_local 69
                i32.shl
                set_local 70
                get_local 70
                get_local 69
                i32.shr_s
                set_local 71
                get_local 71
                call $getEscape
                set_local 72
                get_local 3
                get_local 72
                i32.store8 offset=14
                get_local 3
                i32.load8_u offset=14
                set_local 73
                i32.const 24
                set_local 74
                get_local 73
                get_local 74
                i32.shl
                set_local 75
                get_local 75
                get_local 74
                i32.shr_s
                set_local 76
                block  ;; label = @7
                  get_local 76
                  br_if 0 (;@7;)
                  i32.const 0
                  set_local 77
                  get_local 3
                  get_local 77
                  i32.store offset=28
                  br 6 (;@1;)
                end
                get_local 3
                i32.load8_u offset=14
                set_local 78
                get_local 3
                i32.load offset=16
                set_local 79
                get_local 79
                get_local 78
                i32.store8
              end
              br 1 (;@4;)
            end
            get_local 3
            i32.load offset=20
            set_local 80
            get_local 80
            i32.load8_u
            set_local 81
            get_local 3
            i32.load offset=16
            set_local 82
            get_local 82
            get_local 81
            i32.store8
          end
          get_local 3
          i32.load offset=20
          set_local 83
          i32.const 1
          set_local 84
          get_local 83
          get_local 84
          i32.add
          set_local 85
          get_local 3
          get_local 85
          i32.store offset=20
          get_local 3
          i32.load offset=16
          set_local 86
          i32.const 1
          set_local 87
          get_local 86
          get_local 87
          i32.add
          set_local 88
          get_local 3
          get_local 88
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      i32.const 0
      set_local 89
      get_local 3
      get_local 89
      i32.store offset=28
    end
    get_local 3
    i32.load offset=28
    set_local 90
    i32.const 32
    set_local 91
    get_local 3
    get_local 91
    i32.add
    set_local 92
    get_local 92
    set_global 0
    get_local 90
    return)
  (func $primitiveValue (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 4
    i32.const 32
    set_local 5
    get_local 4
    get_local 5
    i32.sub
    set_local 6
    get_local 6
    set_global 0
    i32.const 0
    set_local 7
    get_local 6
    get_local 0
    i32.store offset=24
    get_local 6
    get_local 1
    i32.store offset=20
    get_local 6
    get_local 2
    i32.store offset=16
    get_local 6
    get_local 3
    i32.store offset=12
    get_local 6
    i32.load offset=24
    set_local 8
    get_local 6
    i32.load offset=16
    set_local 9
    get_local 8
    get_local 9
    call $checkStr
    set_local 10
    get_local 6
    get_local 10
    i32.store offset=24
    get_local 6
    i32.load offset=24
    set_local 11
    get_local 11
    set_local 12
    get_local 7
    set_local 13
    get_local 12
    get_local 13
    i32.ne
    set_local 14
    i32.const 1
    set_local 15
    get_local 14
    get_local 15
    i32.and
    set_local 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 16
          i32.eqz
          br_if 0 (;@3;)
          get_local 6
          i32.load offset=24
          set_local 17
          get_local 17
          i32.load8_u
          set_local 18
          i32.const 24
          set_local 19
          get_local 18
          get_local 19
          i32.shl
          set_local 20
          get_local 20
          get_local 19
          i32.shr_s
          set_local 21
          get_local 21
          call $isEndOfPrimitive
          set_local 22
          i32.const 1
          set_local 23
          get_local 22
          get_local 23
          i32.and
          set_local 24
          get_local 24
          br_if 1 (;@2;)
        end
        i32.const 0
        set_local 25
        get_local 6
        get_local 25
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 6
      i32.load offset=24
      set_local 26
      get_local 26
      call $setToNull
      set_local 27
      get_local 6
      get_local 27
      i32.store offset=24
      get_local 6
      i32.load offset=12
      set_local 28
      get_local 6
      i32.load offset=20
      set_local 29
      get_local 29
      get_local 28
      i32.store offset=16
      get_local 6
      i32.load offset=24
      set_local 30
      get_local 6
      get_local 30
      i32.store offset=28
    end
    get_local 6
    i32.load offset=28
    set_local 31
    i32.const 32
    set_local 32
    get_local 6
    get_local 32
    i32.add
    set_local 33
    get_local 33
    set_global 0
    get_local 31
    return)
  (func $goNum (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          get_local 3
          i32.load offset=8
          set_local 4
          get_local 4
          i32.load8_u
          set_local 5
          i32.const 24
          set_local 6
          get_local 5
          get_local 6
          i32.shl
          set_local 7
          get_local 7
          get_local 6
          i32.shr_s
          set_local 8
          get_local 8
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          set_local 9
          i32.const 1
          set_local 10
          get_local 9
          get_local 10
          i32.and
          set_local 11
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 11
                i32.eqz
                br_if 0 (;@6;)
                get_local 3
                i32.load offset=8
                set_local 12
                get_local 12
                i32.load8_u
                set_local 13
                i32.const 24
                set_local 14
                get_local 13
                get_local 14
                i32.shl
                set_local 15
                get_local 15
                get_local 14
                i32.shr_s
                set_local 16
                get_local 16
                call $isdigit
                set_local 17
                get_local 17
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              i32.const 10
              set_local 18
              get_local 3
              i32.load offset=8
              set_local 19
              get_local 19
              i32.load8_u
              set_local 20
              i32.const 24
              set_local 21
              get_local 20
              get_local 21
              i32.shl
              set_local 22
              get_local 22
              get_local 21
              i32.shr_s
              set_local 23
              i32.const 48
              set_local 24
              get_local 23
              get_local 24
              i32.sub
              set_local 25
              get_local 25
              set_local 26
              get_local 18
              set_local 27
              get_local 26
              get_local 27
              i32.lt_u
              set_local 28
              i32.const 1
              set_local 29
              get_local 28
              get_local 29
              i32.and
              set_local 30
              get_local 30
              br_if 1 (;@4;)
            end
            get_local 3
            i32.load offset=8
            set_local 31
            get_local 3
            get_local 31
            i32.store offset=12
            br 3 (;@1;)
          end
          get_local 3
          i32.load offset=8
          set_local 32
          i32.const 1
          set_local 33
          get_local 32
          get_local 33
          i32.add
          set_local 34
          get_local 3
          get_local 34
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      i32.const 0
      set_local 35
      get_local 3
      get_local 35
      i32.store offset=12
    end
    get_local 3
    i32.load offset=12
    set_local 36
    i32.const 16
    set_local 37
    get_local 3
    get_local 37
    i32.add
    set_local 38
    get_local 38
    set_global 0
    get_local 36
    return)
  (func $fraqValue (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 0
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=8
    i32.const 1
    set_local 5
    get_local 4
    get_local 5
    i32.and
    set_local 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 6
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            i32.load offset=8
            set_local 7
            get_local 7
            i32.load8_u
            set_local 8
            i32.const 24
            set_local 9
            get_local 8
            get_local 9
            i32.shl
            set_local 10
            get_local 10
            get_local 9
            i32.shr_s
            set_local 11
            get_local 11
            call $isdigit
            set_local 12
            get_local 12
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 10
          set_local 13
          get_local 3
          i32.load offset=8
          set_local 14
          get_local 14
          i32.load8_u
          set_local 15
          i32.const 24
          set_local 16
          get_local 15
          get_local 16
          i32.shl
          set_local 17
          get_local 17
          get_local 16
          i32.shr_s
          set_local 18
          i32.const 48
          set_local 19
          get_local 18
          get_local 19
          i32.sub
          set_local 20
          get_local 20
          set_local 21
          get_local 13
          set_local 22
          get_local 21
          get_local 22
          i32.lt_u
          set_local 23
          i32.const 1
          set_local 24
          get_local 23
          get_local 24
          i32.and
          set_local 25
          get_local 25
          br_if 1 (;@2;)
        end
        i32.const 0
        set_local 26
        get_local 3
        get_local 26
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 0
      set_local 27
      get_local 3
      i32.load offset=8
      set_local 28
      i32.const 1
      set_local 29
      get_local 28
      get_local 29
      i32.add
      set_local 30
      get_local 3
      get_local 30
      i32.store offset=8
      get_local 30
      call $goNum
      set_local 31
      get_local 3
      get_local 31
      i32.store offset=8
      get_local 3
      i32.load offset=8
      set_local 32
      get_local 32
      set_local 33
      get_local 27
      set_local 34
      get_local 33
      get_local 34
      i32.ne
      set_local 35
      i32.const 1
      set_local 36
      get_local 35
      get_local 36
      i32.and
      set_local 37
      block  ;; label = @2
        get_local 37
        br_if 0 (;@2;)
        i32.const 0
        set_local 38
        get_local 3
        get_local 38
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 3
      i32.load offset=8
      set_local 39
      get_local 3
      get_local 39
      i32.store offset=12
    end
    get_local 3
    i32.load offset=12
    set_local 40
    i32.const 16
    set_local 41
    get_local 3
    get_local 41
    i32.add
    set_local 42
    get_local 42
    set_global 0
    get_local 40
    return)
  (func $expValue (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 45
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=8
    get_local 3
    i32.load offset=8
    set_local 5
    get_local 5
    i32.load8_u
    set_local 6
    i32.const 24
    set_local 7
    get_local 6
    get_local 7
    i32.shl
    set_local 8
    get_local 8
    get_local 7
    i32.shr_s
    set_local 9
    get_local 9
    set_local 10
    get_local 4
    set_local 11
    get_local 10
    get_local 11
    i32.eq
    set_local 12
    i32.const 1
    set_local 13
    get_local 12
    get_local 13
    i32.and
    set_local 14
    block  ;; label = @1
      block  ;; label = @2
        get_local 14
        br_if 0 (;@2;)
        i32.const 43
        set_local 15
        get_local 3
        i32.load offset=8
        set_local 16
        get_local 16
        i32.load8_u
        set_local 17
        i32.const 24
        set_local 18
        get_local 17
        get_local 18
        i32.shl
        set_local 19
        get_local 19
        get_local 18
        i32.shr_s
        set_local 20
        get_local 20
        set_local 21
        get_local 15
        set_local 22
        get_local 21
        get_local 22
        i32.eq
        set_local 23
        i32.const 1
        set_local 24
        get_local 23
        get_local 24
        i32.and
        set_local 25
        get_local 25
        i32.eqz
        br_if 1 (;@1;)
      end
      get_local 3
      i32.load offset=8
      set_local 26
      i32.const 1
      set_local 27
      get_local 26
      get_local 27
      i32.add
      set_local 28
      get_local 3
      get_local 28
      i32.store offset=8
    end
    i32.const 0
    set_local 29
    i32.const 1
    set_local 30
    get_local 29
    get_local 30
    i32.and
    set_local 31
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 31
            i32.eqz
            br_if 0 (;@4;)
            get_local 3
            i32.load offset=8
            set_local 32
            get_local 32
            i32.load8_u
            set_local 33
            i32.const 24
            set_local 34
            get_local 33
            get_local 34
            i32.shl
            set_local 35
            get_local 35
            get_local 34
            i32.shr_s
            set_local 36
            get_local 36
            call $isdigit
            set_local 37
            get_local 37
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 10
          set_local 38
          get_local 3
          i32.load offset=8
          set_local 39
          get_local 39
          i32.load8_u
          set_local 40
          i32.const 24
          set_local 41
          get_local 40
          get_local 41
          i32.shl
          set_local 42
          get_local 42
          get_local 41
          i32.shr_s
          set_local 43
          i32.const 48
          set_local 44
          get_local 43
          get_local 44
          i32.sub
          set_local 45
          get_local 45
          set_local 46
          get_local 38
          set_local 47
          get_local 46
          get_local 47
          i32.lt_u
          set_local 48
          i32.const 1
          set_local 49
          get_local 48
          get_local 49
          i32.and
          set_local 50
          get_local 50
          br_if 1 (;@2;)
        end
        i32.const 0
        set_local 51
        get_local 3
        get_local 51
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 3
      i32.load offset=8
      set_local 52
      i32.const 1
      set_local 53
      get_local 52
      get_local 53
      i32.add
      set_local 54
      get_local 3
      get_local 54
      i32.store offset=8
      get_local 54
      call $goNum
      set_local 55
      get_local 3
      get_local 55
      i32.store offset=8
      get_local 3
      i32.load offset=8
      set_local 56
      get_local 3
      get_local 56
      i32.store offset=12
    end
    get_local 3
    i32.load offset=12
    set_local 57
    i32.const 16
    set_local 58
    get_local 3
    get_local 58
    i32.add
    set_local 59
    get_local 59
    set_global 0
    get_local 57
    return)
  (func $isEndOfPrimitive (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 1
    set_local 4
    i32.const 44
    set_local 5
    get_local 3
    get_local 0
    i32.store8 offset=15
    get_local 3
    i32.load8_u offset=15
    set_local 6
    i32.const 24
    set_local 7
    get_local 6
    get_local 7
    i32.shl
    set_local 8
    get_local 8
    get_local 7
    i32.shr_s
    set_local 9
    get_local 9
    set_local 10
    get_local 5
    set_local 11
    get_local 10
    get_local 11
    i32.eq
    set_local 12
    i32.const 1
    set_local 13
    get_local 12
    get_local 13
    i32.and
    set_local 14
    get_local 4
    set_local 15
    block  ;; label = @1
      get_local 14
      br_if 0 (;@1;)
      i32.const 1
      set_local 16
      i32.const 2629
      set_local 17
      get_local 3
      i32.load8_u offset=15
      set_local 18
      i32.const 24
      set_local 19
      get_local 18
      get_local 19
      i32.shl
      set_local 20
      get_local 20
      get_local 19
      i32.shr_s
      set_local 21
      get_local 21
      get_local 17
      call $isOneOfThem
      set_local 22
      i32.const 1
      set_local 23
      get_local 22
      get_local 23
      i32.and
      set_local 24
      get_local 16
      set_local 15
      get_local 24
      br_if 0 (;@1;)
      i32.const 2635
      set_local 25
      get_local 3
      i32.load8_u offset=15
      set_local 26
      i32.const 24
      set_local 27
      get_local 26
      get_local 27
      i32.shl
      set_local 28
      get_local 28
      get_local 27
      i32.shr_s
      set_local 29
      get_local 29
      get_local 25
      call $isOneOfThem
      set_local 30
      get_local 30
      set_local 15
    end
    get_local 15
    set_local 31
    i32.const 1
    set_local 32
    get_local 31
    get_local 32
    i32.and
    set_local 33
    i32.const 16
    set_local 34
    get_local 3
    get_local 34
    i32.add
    set_local 35
    get_local 35
    set_global 0
    get_local 33
    return)
  (func $setToNull (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 2635
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    i32.load offset=12
    set_local 5
    get_local 5
    i32.load8_u
    set_local 6
    i32.const 24
    set_local 7
    get_local 6
    get_local 7
    i32.shl
    set_local 8
    get_local 8
    get_local 7
    i32.shr_s
    set_local 9
    get_local 9
    get_local 4
    call $isOneOfThem
    set_local 10
    i32.const 1
    set_local 11
    get_local 10
    get_local 11
    i32.and
    set_local 12
    block  ;; label = @1
      get_local 12
      br_if 0 (;@1;)
      i32.const 0
      set_local 13
      get_local 3
      i32.load offset=12
      set_local 14
      i32.const 1
      set_local 15
      get_local 14
      get_local 15
      i32.add
      set_local 16
      get_local 3
      get_local 16
      i32.store offset=12
      get_local 14
      get_local 13
      i32.store8
    end
    get_local 3
    i32.load offset=12
    set_local 17
    i32.const 16
    set_local 18
    get_local 3
    get_local 18
    i32.add
    set_local 19
    get_local 19
    set_global 0
    get_local 17
    return)
  (func $getCharFromUnicode (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    get_local 3
    set_global 0
    i32.const 0
    set_local 4
    get_local 3
    get_local 0
    i32.store offset=8
    get_local 3
    get_local 4
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 4
          set_local 5
          get_local 3
          i32.load offset=4
          set_local 6
          get_local 6
          set_local 7
          get_local 5
          set_local 8
          get_local 7
          get_local 8
          i32.lt_u
          set_local 9
          i32.const 1
          set_local 10
          get_local 9
          get_local 10
          i32.and
          set_local 11
          get_local 11
          i32.eqz
          br_if 1 (;@2;)
          get_local 3
          i32.load offset=8
          set_local 12
          get_local 3
          i32.load offset=4
          set_local 13
          get_local 12
          get_local 13
          i32.add
          set_local 14
          get_local 14
          i32.load8_u
          set_local 15
          i32.const 255
          set_local 16
          get_local 15
          get_local 16
          i32.and
          set_local 17
          get_local 17
          call $isxdigit
          set_local 18
          block  ;; label = @4
            get_local 18
            br_if 0 (;@4;)
            i32.const 0
            set_local 19
            get_local 3
            get_local 19
            i32.store8 offset=15
            br 3 (;@1;)
          end
          get_local 3
          i32.load offset=4
          set_local 20
          i32.const 1
          set_local 21
          get_local 20
          get_local 21
          i32.add
          set_local 22
          get_local 3
          get_local 22
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      i32.const 63
      set_local 23
      get_local 3
      get_local 23
      i32.store8 offset=15
    end
    get_local 3
    i32.load8_u offset=15
    set_local 24
    i32.const 255
    set_local 25
    get_local 24
    get_local 25
    i32.and
    set_local 26
    i32.const 16
    set_local 27
    get_local 3
    get_local 27
    i32.add
    set_local 28
    get_local 28
    set_global 0
    get_local 26
    return)
  (func $getEscape (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 1
    i32.const 16
    set_local 2
    get_local 1
    get_local 2
    i32.sub
    set_local 3
    i32.const 0
    set_local 4
    get_local 3
    get_local 0
    i32.store8 offset=14
    get_local 3
    get_local 4
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 8
          set_local 5
          get_local 3
          i32.load offset=8
          set_local 6
          get_local 6
          set_local 7
          get_local 5
          set_local 8
          get_local 7
          get_local 8
          i32.lt_u
          set_local 9
          i32.const 1
          set_local 10
          get_local 9
          get_local 10
          i32.and
          set_local 11
          get_local 11
          i32.eqz
          br_if 1 (;@2;)
          i32.const 2608
          set_local 12
          get_local 3
          i32.load offset=8
          set_local 13
          i32.const 1
          set_local 14
          get_local 13
          get_local 14
          i32.shl
          set_local 15
          get_local 12
          get_local 15
          i32.add
          set_local 16
          get_local 16
          i32.load8_u
          set_local 17
          i32.const 24
          set_local 18
          get_local 17
          get_local 18
          i32.shl
          set_local 19
          get_local 19
          get_local 18
          i32.shr_s
          set_local 20
          get_local 3
          i32.load8_u offset=14
          set_local 21
          i32.const 24
          set_local 22
          get_local 21
          get_local 22
          i32.shl
          set_local 23
          get_local 23
          get_local 22
          i32.shr_s
          set_local 24
          get_local 20
          set_local 25
          get_local 24
          set_local 26
          get_local 25
          get_local 26
          i32.eq
          set_local 27
          i32.const 1
          set_local 28
          get_local 27
          get_local 28
          i32.and
          set_local 29
          block  ;; label = @4
            get_local 29
            i32.eqz
            br_if 0 (;@4;)
            i32.const 2608
            set_local 30
            get_local 3
            i32.load offset=8
            set_local 31
            i32.const 1
            set_local 32
            get_local 31
            get_local 32
            i32.shl
            set_local 33
            get_local 30
            get_local 33
            i32.add
            set_local 34
            get_local 34
            i32.load8_u offset=1
            set_local 35
            get_local 3
            get_local 35
            i32.store8 offset=15
            br 3 (;@1;)
          end
          get_local 3
          i32.load offset=8
          set_local 36
          i32.const 1
          set_local 37
          get_local 36
          get_local 37
          i32.add
          set_local 38
          get_local 3
          get_local 38
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      i32.const 0
      set_local 39
      get_local 3
      get_local 39
      i32.store8 offset=15
    end
    get_local 3
    i32.load8_u offset=15
    set_local 40
    i32.const 24
    set_local 41
    get_local 40
    get_local 41
    i32.shl
    set_local 42
    get_local 42
    get_local 41
    i32.shr_s
    set_local 43
    get_local 43
    return)
  (func $checkStr (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    get_local 0
    i32.store offset=8
    get_local 4
    get_local 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 0
          set_local 5
          get_local 4
          i32.load offset=4
          set_local 6
          get_local 6
          i32.load8_u
          set_local 7
          i32.const 255
          set_local 8
          get_local 7
          get_local 8
          i32.and
          set_local 9
          i32.const 255
          set_local 10
          get_local 5
          get_local 10
          i32.and
          set_local 11
          get_local 9
          get_local 11
          i32.ne
          set_local 12
          i32.const 1
          set_local 13
          get_local 12
          get_local 13
          i32.and
          set_local 14
          get_local 14
          i32.eqz
          br_if 1 (;@2;)
          get_local 4
          i32.load offset=8
          set_local 15
          i32.const 1
          set_local 16
          get_local 15
          get_local 16
          i32.add
          set_local 17
          get_local 4
          get_local 17
          i32.store offset=8
          get_local 15
          i32.load8_u
          set_local 18
          i32.const 24
          set_local 19
          get_local 18
          get_local 19
          i32.shl
          set_local 20
          get_local 20
          get_local 19
          i32.shr_s
          set_local 21
          get_local 4
          i32.load offset=4
          set_local 22
          i32.const 1
          set_local 23
          get_local 22
          get_local 23
          i32.add
          set_local 24
          get_local 4
          get_local 24
          i32.store offset=4
          get_local 22
          i32.load8_u
          set_local 25
          i32.const 24
          set_local 26
          get_local 25
          get_local 26
          i32.shl
          set_local 27
          get_local 27
          get_local 26
          i32.shr_s
          set_local 28
          get_local 21
          set_local 29
          get_local 28
          set_local 30
          get_local 29
          get_local 30
          i32.ne
          set_local 31
          i32.const 1
          set_local 32
          get_local 31
          get_local 32
          i32.and
          set_local 33
          block  ;; label = @4
            get_local 33
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            set_local 34
            get_local 4
            get_local 34
            i32.store offset=12
            br 3 (;@1;)
          end
          br 0 (;@3;)
        end
      end
      get_local 4
      i32.load offset=8
      set_local 35
      get_local 4
      get_local 35
      i32.store offset=12
    end
    get_local 4
    i32.load offset=12
    set_local 36
    get_local 36
    return)
  (func $isOneOfThem (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    set_local 2
    i32.const 16
    set_local 3
    get_local 2
    get_local 3
    i32.sub
    set_local 4
    get_local 4
    get_local 0
    i32.store8 offset=14
    get_local 4
    get_local 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          get_local 4
          i32.load offset=8
          set_local 5
          get_local 5
          i32.load8_u
          set_local 6
          i32.const 24
          set_local 7
          get_local 6
          get_local 7
          i32.shl
          set_local 8
          get_local 8
          get_local 7
          i32.shr_s
          set_local 9
          get_local 9
          i32.eqz
          br_if 1 (;@2;)
          get_local 4
          i32.load8_u offset=14
          set_local 10
          i32.const 24
          set_local 11
          get_local 10
          get_local 11
          i32.shl
          set_local 12
          get_local 12
          get_local 11
          i32.shr_s
          set_local 13
          get_local 4
          i32.load offset=8
          set_local 14
          i32.const 1
          set_local 15
          get_local 14
          get_local 15
          i32.add
          set_local 16
          get_local 4
          get_local 16
          i32.store offset=8
          get_local 14
          i32.load8_u
          set_local 17
          i32.const 24
          set_local 18
          get_local 17
          get_local 18
          i32.shl
          set_local 19
          get_local 19
          get_local 18
          i32.shr_s
          set_local 20
          get_local 13
          set_local 21
          get_local 20
          set_local 22
          get_local 21
          get_local 22
          i32.eq
          set_local 23
          i32.const 1
          set_local 24
          get_local 23
          get_local 24
          i32.and
          set_local 25
          block  ;; label = @4
            get_local 25
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            set_local 26
            i32.const 1
            set_local 27
            get_local 26
            get_local 27
            i32.and
            set_local 28
            get_local 4
            get_local 28
            i32.store8 offset=15
            br 3 (;@1;)
          end
          br 0 (;@3;)
        end
      end
      i32.const 0
      set_local 29
      i32.const 1
      set_local 30
      get_local 29
      get_local 30
      i32.and
      set_local 31
      get_local 4
      get_local 31
      i32.store8 offset=15
    end
    get_local 4
    i32.load8_u offset=15
    set_local 32
    i32.const 1
    set_local 33
    get_local 32
    get_local 33
    i32.and
    set_local 34
    get_local 34
    return)
  (func $malloc (type 0) (param i32) (result i32)
    get_local 0
    call $dlmalloc)
  (func $dlmalloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                get_local 0
                                                                                i32.const 244
                                                                                i32.gt_u
                                                                                br_if 0 (;@38;)
                                                                                i32.const 0
                                                                                i32.load offset=1028
                                                                                tee_local 2
                                                                                i32.const 16
                                                                                get_local 0
                                                                                i32.const 11
                                                                                i32.add
                                                                                i32.const -8
                                                                                i32.and
                                                                                get_local 0
                                                                                i32.const 11
                                                                                i32.lt_u
                                                                                select
                                                                                tee_local 3
                                                                                i32.const 3
                                                                                i32.shr_u
                                                                                tee_local 4
                                                                                i32.shr_u
                                                                                tee_local 0
                                                                                i32.const 3
                                                                                i32.and
                                                                                i32.eqz
                                                                                br_if 1 (;@37;)
                                                                                get_local 0
                                                                                i32.const -1
                                                                                i32.xor
                                                                                i32.const 1
                                                                                i32.and
                                                                                get_local 4
                                                                                i32.add
                                                                                tee_local 5
                                                                                i32.const 3
                                                                                i32.shl
                                                                                tee_local 6
                                                                                i32.const 1076
                                                                                i32.add
                                                                                i32.load
                                                                                tee_local 4
                                                                                i32.const 8
                                                                                i32.add
                                                                                set_local 0
                                                                                get_local 4
                                                                                i32.load offset=8
                                                                                tee_local 3
                                                                                get_local 6
                                                                                i32.const 1068
                                                                                i32.add
                                                                                tee_local 6
                                                                                i32.eq
                                                                                br_if 2 (;@36;)
                                                                                get_local 3
                                                                                get_local 6
                                                                                i32.store offset=12
                                                                                get_local 6
                                                                                i32.const 8
                                                                                i32.add
                                                                                get_local 3
                                                                                i32.store
                                                                                br 3 (;@35;)
                                                                              end
                                                                              i32.const -1
                                                                              set_local 3
                                                                              get_local 0
                                                                              i32.const -65
                                                                              i32.gt_u
                                                                              br_if 14 (;@23;)
                                                                              get_local 0
                                                                              i32.const 11
                                                                              i32.add
                                                                              tee_local 0
                                                                              i32.const -8
                                                                              i32.and
                                                                              set_local 3
                                                                              i32.const 0
                                                                              i32.load offset=1032
                                                                              tee_local 7
                                                                              i32.eqz
                                                                              br_if 14 (;@23;)
                                                                              i32.const 0
                                                                              set_local 8
                                                                              block  ;; label = @38
                                                                                get_local 0
                                                                                i32.const 8
                                                                                i32.shr_u
                                                                                tee_local 0
                                                                                i32.eqz
                                                                                br_if 0 (;@38;)
                                                                                i32.const 31
                                                                                set_local 8
                                                                                get_local 3
                                                                                i32.const 16777215
                                                                                i32.gt_u
                                                                                br_if 0 (;@38;)
                                                                                get_local 3
                                                                                i32.const 14
                                                                                get_local 0
                                                                                get_local 0
                                                                                i32.const 1048320
                                                                                i32.add
                                                                                i32.const 16
                                                                                i32.shr_u
                                                                                i32.const 8
                                                                                i32.and
                                                                                tee_local 4
                                                                                i32.shl
                                                                                tee_local 0
                                                                                i32.const 520192
                                                                                i32.add
                                                                                i32.const 16
                                                                                i32.shr_u
                                                                                i32.const 4
                                                                                i32.and
                                                                                tee_local 5
                                                                                get_local 4
                                                                                i32.or
                                                                                get_local 0
                                                                                get_local 5
                                                                                i32.shl
                                                                                tee_local 0
                                                                                i32.const 245760
                                                                                i32.add
                                                                                i32.const 16
                                                                                i32.shr_u
                                                                                i32.const 2
                                                                                i32.and
                                                                                tee_local 4
                                                                                i32.or
                                                                                i32.sub
                                                                                get_local 0
                                                                                get_local 4
                                                                                i32.shl
                                                                                i32.const 15
                                                                                i32.shr_u
                                                                                i32.add
                                                                                tee_local 0
                                                                                i32.const 7
                                                                                i32.add
                                                                                i32.shr_u
                                                                                i32.const 1
                                                                                i32.and
                                                                                get_local 0
                                                                                i32.const 1
                                                                                i32.shl
                                                                                i32.or
                                                                                set_local 8
                                                                              end
                                                                              i32.const 0
                                                                              get_local 3
                                                                              i32.sub
                                                                              set_local 5
                                                                              get_local 8
                                                                              i32.const 2
                                                                              i32.shl
                                                                              i32.const 1332
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local 4
                                                                              i32.eqz
                                                                              br_if 3 (;@34;)
                                                                              get_local 3
                                                                              i32.const 0
                                                                              i32.const 25
                                                                              get_local 8
                                                                              i32.const 1
                                                                              i32.shr_u
                                                                              i32.sub
                                                                              get_local 8
                                                                              i32.const 31
                                                                              i32.eq
                                                                              select
                                                                              i32.shl
                                                                              set_local 6
                                                                              i32.const 0
                                                                              set_local 0
                                                                              i32.const 0
                                                                              set_local 9
                                                                              loop  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  get_local 4
                                                                                  i32.load offset=4
                                                                                  i32.const -8
                                                                                  i32.and
                                                                                  get_local 3
                                                                                  i32.sub
                                                                                  tee_local 2
                                                                                  get_local 5
                                                                                  i32.ge_u
                                                                                  br_if 0 (;@39;)
                                                                                  get_local 2
                                                                                  set_local 5
                                                                                  get_local 4
                                                                                  set_local 9
                                                                                  get_local 2
                                                                                  i32.eqz
                                                                                  br_if 8 (;@31;)
                                                                                end
                                                                                get_local 0
                                                                                get_local 4
                                                                                i32.const 20
                                                                                i32.add
                                                                                i32.load
                                                                                tee_local 2
                                                                                get_local 2
                                                                                get_local 4
                                                                                get_local 6
                                                                                i32.const 29
                                                                                i32.shr_u
                                                                                i32.const 4
                                                                                i32.and
                                                                                i32.add
                                                                                i32.const 16
                                                                                i32.add
                                                                                i32.load
                                                                                tee_local 4
                                                                                i32.eq
                                                                                select
                                                                                get_local 0
                                                                                get_local 2
                                                                                select
                                                                                set_local 0
                                                                                get_local 6
                                                                                get_local 4
                                                                                i32.const 0
                                                                                i32.ne
                                                                                i32.shl
                                                                                set_local 6
                                                                                get_local 4
                                                                                br_if 0 (;@38;)
                                                                              end
                                                                              get_local 0
                                                                              get_local 9
                                                                              i32.or
                                                                              i32.eqz
                                                                              br_if 4 (;@33;)
                                                                              br 11 (;@26;)
                                                                            end
                                                                            get_local 3
                                                                            i32.const 0
                                                                            i32.load offset=1036
                                                                            tee_local 7
                                                                            i32.le_u
                                                                            br_if 13 (;@23;)
                                                                            get_local 0
                                                                            i32.eqz
                                                                            br_if 4 (;@32;)
                                                                            get_local 0
                                                                            get_local 4
                                                                            i32.shl
                                                                            i32.const 2
                                                                            get_local 4
                                                                            i32.shl
                                                                            tee_local 0
                                                                            i32.const 0
                                                                            get_local 0
                                                                            i32.sub
                                                                            i32.or
                                                                            i32.and
                                                                            tee_local 0
                                                                            i32.const 0
                                                                            get_local 0
                                                                            i32.sub
                                                                            i32.and
                                                                            i32.const -1
                                                                            i32.add
                                                                            tee_local 0
                                                                            get_local 0
                                                                            i32.const 12
                                                                            i32.shr_u
                                                                            i32.const 16
                                                                            i32.and
                                                                            tee_local 0
                                                                            i32.shr_u
                                                                            tee_local 4
                                                                            i32.const 5
                                                                            i32.shr_u
                                                                            i32.const 8
                                                                            i32.and
                                                                            tee_local 5
                                                                            get_local 0
                                                                            i32.or
                                                                            get_local 4
                                                                            get_local 5
                                                                            i32.shr_u
                                                                            tee_local 0
                                                                            i32.const 2
                                                                            i32.shr_u
                                                                            i32.const 4
                                                                            i32.and
                                                                            tee_local 4
                                                                            i32.or
                                                                            get_local 0
                                                                            get_local 4
                                                                            i32.shr_u
                                                                            tee_local 0
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.const 2
                                                                            i32.and
                                                                            tee_local 4
                                                                            i32.or
                                                                            get_local 0
                                                                            get_local 4
                                                                            i32.shr_u
                                                                            tee_local 0
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.const 1
                                                                            i32.and
                                                                            tee_local 4
                                                                            i32.or
                                                                            get_local 0
                                                                            get_local 4
                                                                            i32.shr_u
                                                                            i32.add
                                                                            tee_local 5
                                                                            i32.const 3
                                                                            i32.shl
                                                                            tee_local 6
                                                                            i32.const 1076
                                                                            i32.add
                                                                            i32.load
                                                                            tee_local 4
                                                                            i32.load offset=8
                                                                            tee_local 0
                                                                            get_local 6
                                                                            i32.const 1068
                                                                            i32.add
                                                                            tee_local 6
                                                                            i32.eq
                                                                            br_if 6 (;@30;)
                                                                            get_local 0
                                                                            get_local 6
                                                                            i32.store offset=12
                                                                            get_local 6
                                                                            i32.const 8
                                                                            i32.add
                                                                            get_local 0
                                                                            i32.store
                                                                            br 7 (;@29;)
                                                                          end
                                                                          i32.const 0
                                                                          get_local 2
                                                                          i32.const -2
                                                                          get_local 5
                                                                          i32.rotl
                                                                          i32.and
                                                                          i32.store offset=1028
                                                                        end
                                                                        get_local 4
                                                                        get_local 5
                                                                        i32.const 3
                                                                        i32.shl
                                                                        tee_local 5
                                                                        i32.const 3
                                                                        i32.or
                                                                        i32.store offset=4
                                                                        get_local 4
                                                                        get_local 5
                                                                        i32.add
                                                                        tee_local 4
                                                                        get_local 4
                                                                        i32.load offset=4
                                                                        i32.const 1
                                                                        i32.or
                                                                        i32.store offset=4
                                                                        br 33 (;@1;)
                                                                      end
                                                                      i32.const 0
                                                                      set_local 0
                                                                      i32.const 0
                                                                      set_local 9
                                                                      i32.const 0
                                                                      i32.const 0
                                                                      i32.or
                                                                      br_if 7 (;@26;)
                                                                    end
                                                                    i32.const 2
                                                                    get_local 8
                                                                    i32.shl
                                                                    tee_local 0
                                                                    i32.const 0
                                                                    get_local 0
                                                                    i32.sub
                                                                    i32.or
                                                                    get_local 7
                                                                    i32.and
                                                                    tee_local 0
                                                                    i32.eqz
                                                                    br_if 9 (;@23;)
                                                                    get_local 0
                                                                    i32.const 0
                                                                    get_local 0
                                                                    i32.sub
                                                                    i32.and
                                                                    i32.const -1
                                                                    i32.add
                                                                    tee_local 0
                                                                    get_local 0
                                                                    i32.const 12
                                                                    i32.shr_u
                                                                    i32.const 16
                                                                    i32.and
                                                                    tee_local 0
                                                                    i32.shr_u
                                                                    tee_local 4
                                                                    i32.const 5
                                                                    i32.shr_u
                                                                    i32.const 8
                                                                    i32.and
                                                                    tee_local 6
                                                                    get_local 0
                                                                    i32.or
                                                                    get_local 4
                                                                    get_local 6
                                                                    i32.shr_u
                                                                    tee_local 0
                                                                    i32.const 2
                                                                    i32.shr_u
                                                                    i32.const 4
                                                                    i32.and
                                                                    tee_local 4
                                                                    i32.or
                                                                    get_local 0
                                                                    get_local 4
                                                                    i32.shr_u
                                                                    tee_local 0
                                                                    i32.const 1
                                                                    i32.shr_u
                                                                    i32.const 2
                                                                    i32.and
                                                                    tee_local 4
                                                                    i32.or
                                                                    get_local 0
                                                                    get_local 4
                                                                    i32.shr_u
                                                                    tee_local 0
                                                                    i32.const 1
                                                                    i32.shr_u
                                                                    i32.const 1
                                                                    i32.and
                                                                    tee_local 4
                                                                    i32.or
                                                                    get_local 0
                                                                    get_local 4
                                                                    i32.shr_u
                                                                    i32.add
                                                                    i32.const 2
                                                                    i32.shl
                                                                    i32.const 1332
                                                                    i32.add
                                                                    i32.load
                                                                    tee_local 0
                                                                    br_if 7 (;@25;)
                                                                    br 8 (;@24;)
                                                                  end
                                                                  i32.const 0
                                                                  i32.load offset=1032
                                                                  tee_local 10
                                                                  i32.eqz
                                                                  br_if 8 (;@23;)
                                                                  get_local 10
                                                                  i32.const 0
                                                                  get_local 10
                                                                  i32.sub
                                                                  i32.and
                                                                  i32.const -1
                                                                  i32.add
                                                                  tee_local 0
                                                                  get_local 0
                                                                  i32.const 12
                                                                  i32.shr_u
                                                                  i32.const 16
                                                                  i32.and
                                                                  tee_local 0
                                                                  i32.shr_u
                                                                  tee_local 4
                                                                  i32.const 5
                                                                  i32.shr_u
                                                                  i32.const 8
                                                                  i32.and
                                                                  tee_local 5
                                                                  get_local 0
                                                                  i32.or
                                                                  get_local 4
                                                                  get_local 5
                                                                  i32.shr_u
                                                                  tee_local 0
                                                                  i32.const 2
                                                                  i32.shr_u
                                                                  i32.const 4
                                                                  i32.and
                                                                  tee_local 4
                                                                  i32.or
                                                                  get_local 0
                                                                  get_local 4
                                                                  i32.shr_u
                                                                  tee_local 0
                                                                  i32.const 1
                                                                  i32.shr_u
                                                                  i32.const 2
                                                                  i32.and
                                                                  tee_local 4
                                                                  i32.or
                                                                  get_local 0
                                                                  get_local 4
                                                                  i32.shr_u
                                                                  tee_local 0
                                                                  i32.const 1
                                                                  i32.shr_u
                                                                  i32.const 1
                                                                  i32.and
                                                                  tee_local 4
                                                                  i32.or
                                                                  get_local 0
                                                                  get_local 4
                                                                  i32.shr_u
                                                                  i32.add
                                                                  i32.const 2
                                                                  i32.shl
                                                                  i32.const 1332
                                                                  i32.add
                                                                  i32.load
                                                                  tee_local 6
                                                                  i32.load offset=4
                                                                  i32.const -8
                                                                  i32.and
                                                                  get_local 3
                                                                  i32.sub
                                                                  set_local 5
                                                                  get_local 6
                                                                  tee_local 9
                                                                  i32.load offset=16
                                                                  tee_local 0
                                                                  i32.eqz
                                                                  br_if 3 (;@28;)
                                                                  i32.const 1
                                                                  set_local 4
                                                                  br 4 (;@27;)
                                                                end
                                                                i32.const 0
                                                                set_local 5
                                                                get_local 4
                                                                set_local 9
                                                                get_local 4
                                                                set_local 0
                                                                br 5 (;@25;)
                                                              end
                                                              i32.const 0
                                                              get_local 2
                                                              i32.const -2
                                                              get_local 5
                                                              i32.rotl
                                                              i32.and
                                                              tee_local 2
                                                              i32.store offset=1028
                                                            end
                                                            get_local 4
                                                            i32.const 8
                                                            i32.add
                                                            set_local 0
                                                            get_local 4
                                                            get_local 3
                                                            i32.const 3
                                                            i32.or
                                                            i32.store offset=4
                                                            get_local 4
                                                            get_local 5
                                                            i32.const 3
                                                            i32.shl
                                                            tee_local 5
                                                            i32.add
                                                            get_local 5
                                                            get_local 3
                                                            i32.sub
                                                            tee_local 5
                                                            i32.store
                                                            get_local 4
                                                            get_local 3
                                                            i32.add
                                                            tee_local 6
                                                            get_local 5
                                                            i32.const 1
                                                            i32.or
                                                            i32.store offset=4
                                                            block  ;; label = @29
                                                              get_local 7
                                                              i32.eqz
                                                              br_if 0 (;@29;)
                                                              get_local 7
                                                              i32.const 3
                                                              i32.shr_u
                                                              tee_local 9
                                                              i32.const 3
                                                              i32.shl
                                                              i32.const 1068
                                                              i32.add
                                                              set_local 3
                                                              i32.const 0
                                                              i32.load offset=1048
                                                              set_local 4
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  get_local 2
                                                                  i32.const 1
                                                                  get_local 9
                                                                  i32.shl
                                                                  tee_local 9
                                                                  i32.and
                                                                  i32.eqz
                                                                  br_if 0 (;@31;)
                                                                  get_local 3
                                                                  i32.load offset=8
                                                                  set_local 9
                                                                  br 1 (;@30;)
                                                                end
                                                                i32.const 0
                                                                get_local 2
                                                                get_local 9
                                                                i32.or
                                                                i32.store offset=1028
                                                                get_local 3
                                                                set_local 9
                                                              end
                                                              get_local 9
                                                              get_local 4
                                                              i32.store offset=12
                                                              get_local 3
                                                              get_local 4
                                                              i32.store offset=8
                                                              get_local 4
                                                              get_local 3
                                                              i32.store offset=12
                                                              get_local 4
                                                              get_local 9
                                                              i32.store offset=8
                                                            end
                                                            i32.const 0
                                                            get_local 6
                                                            i32.store offset=1048
                                                            i32.const 0
                                                            get_local 5
                                                            i32.store offset=1036
                                                            br 27 (;@1;)
                                                          end
                                                          i32.const 0
                                                          set_local 4
                                                        end
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            loop  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      get_local 4
                                                                      br_table 1 (;@32;) 0 (;@33;) 0 (;@33;)
                                                                    end
                                                                    get_local 0
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    get_local 3
                                                                    i32.sub
                                                                    tee_local 4
                                                                    get_local 5
                                                                    get_local 4
                                                                    get_local 5
                                                                    i32.lt_u
                                                                    tee_local 4
                                                                    select
                                                                    set_local 5
                                                                    get_local 0
                                                                    get_local 6
                                                                    get_local 4
                                                                    select
                                                                    set_local 6
                                                                    get_local 0
                                                                    tee_local 9
                                                                    i32.load offset=16
                                                                    tee_local 0
                                                                    br_if 1 (;@31;)
                                                                    i32.const 0
                                                                    set_local 4
                                                                    br 3 (;@29;)
                                                                  end
                                                                  get_local 9
                                                                  i32.const 20
                                                                  i32.add
                                                                  i32.load
                                                                  tee_local 0
                                                                  br_if 1 (;@30;)
                                                                  get_local 6
                                                                  get_local 3
                                                                  i32.add
                                                                  tee_local 11
                                                                  get_local 6
                                                                  i32.le_u
                                                                  br_if 8 (;@23;)
                                                                  get_local 6
                                                                  i32.load offset=24
                                                                  set_local 12
                                                                  block  ;; label = @32
                                                                    get_local 6
                                                                    i32.load offset=12
                                                                    tee_local 9
                                                                    get_local 6
                                                                    i32.eq
                                                                    br_if 0 (;@32;)
                                                                    get_local 6
                                                                    i32.load offset=8
                                                                    tee_local 0
                                                                    get_local 9
                                                                    i32.store offset=12
                                                                    get_local 9
                                                                    get_local 0
                                                                    i32.store offset=8
                                                                    get_local 12
                                                                    br_if 4 (;@28;)
                                                                    br 5 (;@27;)
                                                                  end
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      get_local 6
                                                                      i32.const 20
                                                                      i32.add
                                                                      tee_local 4
                                                                      i32.load
                                                                      tee_local 0
                                                                      br_if 0 (;@33;)
                                                                      get_local 6
                                                                      i32.load offset=16
                                                                      tee_local 0
                                                                      i32.eqz
                                                                      br_if 1 (;@32;)
                                                                      get_local 6
                                                                      i32.const 16
                                                                      i32.add
                                                                      set_local 4
                                                                    end
                                                                    loop  ;; label = @33
                                                                      get_local 4
                                                                      set_local 8
                                                                      get_local 0
                                                                      tee_local 9
                                                                      i32.const 20
                                                                      i32.add
                                                                      tee_local 4
                                                                      i32.load
                                                                      tee_local 0
                                                                      br_if 0 (;@33;)
                                                                      get_local 9
                                                                      i32.const 16
                                                                      i32.add
                                                                      set_local 4
                                                                      get_local 9
                                                                      i32.load offset=16
                                                                      tee_local 0
                                                                      br_if 0 (;@33;)
                                                                    end
                                                                    get_local 8
                                                                    i32.const 0
                                                                    i32.store
                                                                    get_local 12
                                                                    i32.eqz
                                                                    br_if 5 (;@27;)
                                                                    br 4 (;@28;)
                                                                  end
                                                                  i32.const 0
                                                                  set_local 9
                                                                  get_local 12
                                                                  br_if 3 (;@28;)
                                                                  br 4 (;@27;)
                                                                end
                                                                i32.const 1
                                                                set_local 4
                                                                br 1 (;@29;)
                                                              end
                                                              i32.const 1
                                                              set_local 4
                                                              br 0 (;@29;)
                                                            end
                                                          end
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                get_local 6
                                                                get_local 6
                                                                i32.load offset=28
                                                                tee_local 4
                                                                i32.const 2
                                                                i32.shl
                                                                i32.const 1332
                                                                i32.add
                                                                tee_local 0
                                                                i32.load
                                                                i32.eq
                                                                br_if 0 (;@30;)
                                                                get_local 12
                                                                i32.const 16
                                                                i32.const 20
                                                                get_local 12
                                                                i32.load offset=16
                                                                get_local 6
                                                                i32.eq
                                                                select
                                                                i32.add
                                                                get_local 9
                                                                i32.store
                                                                get_local 9
                                                                br_if 1 (;@29;)
                                                                br 3 (;@27;)
                                                              end
                                                              get_local 0
                                                              get_local 9
                                                              i32.store
                                                              get_local 9
                                                              i32.eqz
                                                              br_if 1 (;@28;)
                                                            end
                                                            get_local 9
                                                            get_local 12
                                                            i32.store offset=24
                                                            block  ;; label = @29
                                                              get_local 6
                                                              i32.load offset=16
                                                              tee_local 0
                                                              i32.eqz
                                                              br_if 0 (;@29;)
                                                              get_local 9
                                                              get_local 0
                                                              i32.store offset=16
                                                              get_local 0
                                                              get_local 9
                                                              i32.store offset=24
                                                            end
                                                            get_local 6
                                                            i32.const 20
                                                            i32.add
                                                            i32.load
                                                            tee_local 0
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            get_local 9
                                                            i32.const 20
                                                            i32.add
                                                            get_local 0
                                                            i32.store
                                                            get_local 0
                                                            get_local 9
                                                            i32.store offset=24
                                                            br 1 (;@27;)
                                                          end
                                                          i32.const 0
                                                          get_local 10
                                                          i32.const -2
                                                          get_local 4
                                                          i32.rotl
                                                          i32.and
                                                          i32.store offset=1032
                                                        end
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            get_local 5
                                                            i32.const 15
                                                            i32.gt_u
                                                            br_if 0 (;@28;)
                                                            get_local 6
                                                            get_local 5
                                                            get_local 3
                                                            i32.add
                                                            tee_local 0
                                                            i32.const 3
                                                            i32.or
                                                            i32.store offset=4
                                                            get_local 6
                                                            get_local 0
                                                            i32.add
                                                            tee_local 0
                                                            get_local 0
                                                            i32.load offset=4
                                                            i32.const 1
                                                            i32.or
                                                            i32.store offset=4
                                                            br 1 (;@27;)
                                                          end
                                                          get_local 11
                                                          get_local 5
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          get_local 6
                                                          get_local 3
                                                          i32.const 3
                                                          i32.or
                                                          i32.store offset=4
                                                          get_local 11
                                                          get_local 5
                                                          i32.add
                                                          get_local 5
                                                          i32.store
                                                          block  ;; label = @28
                                                            get_local 7
                                                            i32.eqz
                                                            br_if 0 (;@28;)
                                                            get_local 7
                                                            i32.const 3
                                                            i32.shr_u
                                                            tee_local 3
                                                            i32.const 3
                                                            i32.shl
                                                            i32.const 1068
                                                            i32.add
                                                            set_local 4
                                                            i32.const 0
                                                            i32.load offset=1048
                                                            set_local 0
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                i32.const 1
                                                                get_local 3
                                                                i32.shl
                                                                tee_local 3
                                                                get_local 2
                                                                i32.and
                                                                i32.eqz
                                                                br_if 0 (;@30;)
                                                                get_local 4
                                                                i32.load offset=8
                                                                set_local 3
                                                                br 1 (;@29;)
                                                              end
                                                              i32.const 0
                                                              get_local 3
                                                              get_local 2
                                                              i32.or
                                                              i32.store offset=1028
                                                              get_local 4
                                                              set_local 3
                                                            end
                                                            get_local 3
                                                            get_local 0
                                                            i32.store offset=12
                                                            get_local 4
                                                            get_local 0
                                                            i32.store offset=8
                                                            get_local 0
                                                            get_local 4
                                                            i32.store offset=12
                                                            get_local 0
                                                            get_local 3
                                                            i32.store offset=8
                                                          end
                                                          i32.const 0
                                                          get_local 11
                                                          i32.store offset=1048
                                                          i32.const 0
                                                          get_local 5
                                                          i32.store offset=1036
                                                        end
                                                        get_local 6
                                                        i32.const 8
                                                        i32.add
                                                        set_local 0
                                                        br 25 (;@1;)
                                                      end
                                                      get_local 0
                                                      i32.eqz
                                                      br_if 1 (;@24;)
                                                    end
                                                    loop  ;; label = @25
                                                      get_local 0
                                                      i32.load offset=4
                                                      i32.const -8
                                                      i32.and
                                                      get_local 3
                                                      i32.sub
                                                      tee_local 2
                                                      get_local 5
                                                      i32.lt_u
                                                      set_local 6
                                                      block  ;; label = @26
                                                        get_local 0
                                                        i32.load offset=16
                                                        tee_local 4
                                                        br_if 0 (;@26;)
                                                        get_local 0
                                                        i32.const 20
                                                        i32.add
                                                        i32.load
                                                        set_local 4
                                                      end
                                                      get_local 2
                                                      get_local 5
                                                      get_local 6
                                                      select
                                                      set_local 5
                                                      get_local 0
                                                      get_local 9
                                                      get_local 6
                                                      select
                                                      set_local 9
                                                      get_local 4
                                                      set_local 0
                                                      get_local 4
                                                      br_if 0 (;@25;)
                                                    end
                                                  end
                                                  get_local 9
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  get_local 5
                                                  i32.const 0
                                                  i32.load offset=1036
                                                  get_local 3
                                                  i32.sub
                                                  i32.ge_u
                                                  br_if 0 (;@23;)
                                                  get_local 9
                                                  get_local 3
                                                  i32.add
                                                  tee_local 8
                                                  get_local 9
                                                  i32.le_u
                                                  br_if 0 (;@23;)
                                                  get_local 9
                                                  i32.load offset=24
                                                  set_local 10
                                                  get_local 9
                                                  i32.load offset=12
                                                  tee_local 6
                                                  get_local 9
                                                  i32.eq
                                                  br_if 1 (;@22;)
                                                  get_local 9
                                                  i32.load offset=8
                                                  tee_local 0
                                                  get_local 6
                                                  i32.store offset=12
                                                  get_local 6
                                                  get_local 0
                                                  i32.store offset=8
                                                  get_local 10
                                                  br_if 20 (;@3;)
                                                  br 21 (;@2;)
                                                end
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            i32.const 0
                                                            i32.load offset=1036
                                                            tee_local 0
                                                            get_local 3
                                                            i32.ge_u
                                                            br_if 0 (;@28;)
                                                            i32.const 0
                                                            i32.load offset=1040
                                                            tee_local 6
                                                            get_local 3
                                                            i32.le_u
                                                            br_if 1 (;@27;)
                                                            i32.const 0
                                                            i32.load offset=1052
                                                            tee_local 0
                                                            get_local 3
                                                            i32.add
                                                            tee_local 4
                                                            get_local 6
                                                            get_local 3
                                                            i32.sub
                                                            tee_local 5
                                                            i32.const 1
                                                            i32.or
                                                            i32.store offset=4
                                                            i32.const 0
                                                            get_local 5
                                                            i32.store offset=1040
                                                            i32.const 0
                                                            get_local 4
                                                            i32.store offset=1052
                                                            get_local 0
                                                            get_local 3
                                                            i32.const 3
                                                            i32.or
                                                            i32.store offset=4
                                                            get_local 0
                                                            i32.const 8
                                                            i32.add
                                                            set_local 0
                                                            br 27 (;@1;)
                                                          end
                                                          i32.const 0
                                                          i32.load offset=1048
                                                          set_local 4
                                                          get_local 0
                                                          get_local 3
                                                          i32.sub
                                                          tee_local 5
                                                          i32.const 16
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                          get_local 4
                                                          get_local 3
                                                          i32.add
                                                          tee_local 6
                                                          get_local 5
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          i32.const 0
                                                          get_local 5
                                                          i32.store offset=1036
                                                          i32.const 0
                                                          get_local 6
                                                          i32.store offset=1048
                                                          get_local 4
                                                          get_local 0
                                                          i32.add
                                                          get_local 5
                                                          i32.store
                                                          get_local 4
                                                          get_local 3
                                                          i32.const 3
                                                          i32.or
                                                          i32.store offset=4
                                                          br 2 (;@25;)
                                                        end
                                                        i32.const 0
                                                        i32.load offset=1500
                                                        i32.eqz
                                                        br_if 2 (;@24;)
                                                        i32.const 0
                                                        i32.load offset=1508
                                                        set_local 4
                                                        br 3 (;@23;)
                                                      end
                                                      get_local 4
                                                      get_local 0
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local 4
                                                      get_local 0
                                                      i32.add
                                                      tee_local 0
                                                      get_local 0
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      i32.const 0
                                                      i32.const 0
                                                      i32.store offset=1048
                                                      i32.const 0
                                                      i32.const 0
                                                      i32.store offset=1036
                                                    end
                                                    get_local 4
                                                    i32.const 8
                                                    i32.add
                                                    set_local 0
                                                    br 23 (;@1;)
                                                  end
                                                  i32.const 0
                                                  i64.const -1
                                                  i64.store offset=1512 align=4
                                                  i32.const 0
                                                  i64.const 281474976776192
                                                  i64.store offset=1504 align=4
                                                  i32.const 0
                                                  get_local 1
                                                  i32.const 12
                                                  i32.add
                                                  i32.const -16
                                                  i32.and
                                                  i32.const 1431655768
                                                  i32.xor
                                                  i32.store offset=1500
                                                  i32.const 0
                                                  i32.const 0
                                                  i32.store offset=1520
                                                  i32.const 0
                                                  i32.const 0
                                                  i32.store offset=1472
                                                  i32.const 65536
                                                  set_local 4
                                                end
                                                i32.const 0
                                                set_local 0
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    get_local 4
                                                    get_local 3
                                                    i32.const 47
                                                    i32.add
                                                    tee_local 7
                                                    i32.add
                                                    tee_local 2
                                                    i32.const 0
                                                    get_local 4
                                                    i32.sub
                                                    tee_local 8
                                                    i32.and
                                                    tee_local 9
                                                    get_local 3
                                                    i32.le_u
                                                    br_if 0 (;@24;)
                                                    block  ;; label = @25
                                                      i32.const 0
                                                      i32.load offset=1468
                                                      tee_local 0
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 0
                                                      i32.load offset=1460
                                                      tee_local 4
                                                      get_local 9
                                                      i32.add
                                                      tee_local 5
                                                      get_local 4
                                                      i32.le_u
                                                      br_if 2 (;@23;)
                                                      get_local 5
                                                      get_local 0
                                                      i32.gt_u
                                                      br_if 2 (;@23;)
                                                    end
                                                    i32.const 0
                                                    i32.load8_u offset=1472
                                                    i32.const 4
                                                    i32.and
                                                    br_if 10 (;@14;)
                                                    block  ;; label = @25
                                                      i32.const 0
                                                      i32.load offset=1052
                                                      tee_local 4
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 1476
                                                      set_local 0
                                                      loop  ;; label = @26
                                                        block  ;; label = @27
                                                          get_local 0
                                                          i32.load
                                                          tee_local 5
                                                          get_local 4
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          get_local 5
                                                          get_local 0
                                                          i32.load offset=4
                                                          i32.add
                                                          get_local 4
                                                          i32.gt_u
                                                          br_if 6 (;@21;)
                                                        end
                                                        get_local 0
                                                        i32.load offset=8
                                                        tee_local 0
                                                        br_if 0 (;@26;)
                                                      end
                                                    end
                                                    i32.const 0
                                                    call $sbrk
                                                    tee_local 6
                                                    i32.const -1
                                                    i32.eq
                                                    br_if 9 (;@15;)
                                                    get_local 9
                                                    set_local 2
                                                    block  ;; label = @25
                                                      i32.const 0
                                                      i32.load offset=1504
                                                      tee_local 0
                                                      i32.const -1
                                                      i32.add
                                                      tee_local 4
                                                      get_local 6
                                                      i32.and
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      get_local 9
                                                      get_local 6
                                                      i32.sub
                                                      get_local 4
                                                      get_local 6
                                                      i32.add
                                                      i32.const 0
                                                      get_local 0
                                                      i32.sub
                                                      i32.and
                                                      i32.add
                                                      set_local 2
                                                    end
                                                    get_local 2
                                                    get_local 3
                                                    i32.le_u
                                                    br_if 9 (;@15;)
                                                    get_local 2
                                                    i32.const 2147483646
                                                    i32.gt_u
                                                    br_if 9 (;@15;)
                                                    block  ;; label = @25
                                                      i32.const 0
                                                      i32.load offset=1468
                                                      tee_local 0
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 0
                                                      i32.load offset=1460
                                                      tee_local 4
                                                      get_local 2
                                                      i32.add
                                                      tee_local 5
                                                      get_local 4
                                                      i32.le_u
                                                      br_if 10 (;@15;)
                                                      get_local 5
                                                      get_local 0
                                                      i32.gt_u
                                                      br_if 10 (;@15;)
                                                    end
                                                    get_local 2
                                                    call $sbrk
                                                    tee_local 0
                                                    get_local 6
                                                    i32.ne
                                                    br_if 4 (;@20;)
                                                    br 11 (;@13;)
                                                  end
                                                  i32.const 0
                                                  i32.const 48
                                                  i32.store offset=1524
                                                  br 22 (;@1;)
                                                end
                                                i32.const 0
                                                set_local 0
                                                i32.const 0
                                                i32.const 48
                                                i32.store offset=1524
                                                br 21 (;@1;)
                                              end
                                              block  ;; label = @22
                                                get_local 9
                                                i32.const 20
                                                i32.add
                                                tee_local 4
                                                i32.load
                                                tee_local 0
                                                br_if 0 (;@22;)
                                                get_local 9
                                                i32.load offset=16
                                                tee_local 0
                                                i32.eqz
                                                br_if 3 (;@19;)
                                                get_local 9
                                                i32.const 16
                                                i32.add
                                                set_local 4
                                              end
                                              loop  ;; label = @22
                                                get_local 4
                                                set_local 2
                                                get_local 0
                                                tee_local 6
                                                i32.const 20
                                                i32.add
                                                tee_local 4
                                                i32.load
                                                tee_local 0
                                                br_if 0 (;@22;)
                                                get_local 6
                                                i32.const 16
                                                i32.add
                                                set_local 4
                                                get_local 6
                                                i32.load offset=16
                                                tee_local 0
                                                br_if 0 (;@22;)
                                              end
                                              get_local 2
                                              i32.const 0
                                              i32.store
                                              get_local 10
                                              i32.eqz
                                              br_if 19 (;@2;)
                                              br 18 (;@3;)
                                            end
                                            get_local 2
                                            get_local 6
                                            i32.sub
                                            get_local 8
                                            i32.and
                                            tee_local 2
                                            i32.const 2147483646
                                            i32.gt_u
                                            br_if 5 (;@15;)
                                            get_local 2
                                            call $sbrk
                                            tee_local 6
                                            get_local 0
                                            i32.load
                                            get_local 0
                                            i32.load offset=4
                                            i32.add
                                            i32.eq
                                            br_if 3 (;@17;)
                                            get_local 6
                                            set_local 0
                                          end
                                          get_local 0
                                          set_local 6
                                          get_local 3
                                          i32.const 48
                                          i32.add
                                          get_local 2
                                          i32.le_u
                                          br_if 1 (;@18;)
                                          get_local 2
                                          i32.const 2147483646
                                          i32.gt_u
                                          br_if 1 (;@18;)
                                          get_local 6
                                          i32.const -1
                                          i32.eq
                                          br_if 1 (;@18;)
                                          get_local 7
                                          get_local 2
                                          i32.sub
                                          i32.const 0
                                          i32.load offset=1508
                                          tee_local 0
                                          i32.add
                                          i32.const 0
                                          get_local 0
                                          i32.sub
                                          i32.and
                                          tee_local 0
                                          i32.const 2147483646
                                          i32.gt_u
                                          br_if 6 (;@13;)
                                          get_local 0
                                          call $sbrk
                                          i32.const -1
                                          i32.eq
                                          br_if 3 (;@16;)
                                          get_local 0
                                          get_local 2
                                          i32.add
                                          set_local 2
                                          br 6 (;@13;)
                                        end
                                        i32.const 0
                                        set_local 6
                                        get_local 10
                                        br_if 15 (;@3;)
                                        br 16 (;@2;)
                                      end
                                      get_local 6
                                      i32.const -1
                                      i32.ne
                                      br_if 4 (;@13;)
                                      br 2 (;@15;)
                                    end
                                    get_local 6
                                    i32.const -1
                                    i32.ne
                                    br_if 3 (;@13;)
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  get_local 2
                                  i32.sub
                                  call $sbrk
                                  drop
                                end
                                i32.const 0
                                i32.const 0
                                i32.load offset=1472
                                i32.const 4
                                i32.or
                                i32.store offset=1472
                              end
                              get_local 9
                              i32.const 2147483646
                              i32.gt_u
                              br_if 1 (;@12;)
                              get_local 9
                              call $sbrk
                              tee_local 6
                              i32.const 0
                              call $sbrk
                              tee_local 0
                              i32.ge_u
                              br_if 1 (;@12;)
                              get_local 6
                              i32.const -1
                              i32.eq
                              br_if 1 (;@12;)
                              get_local 0
                              i32.const -1
                              i32.eq
                              br_if 1 (;@12;)
                              get_local 0
                              get_local 6
                              i32.sub
                              tee_local 2
                              get_local 3
                              i32.const 40
                              i32.add
                              i32.le_u
                              br_if 1 (;@12;)
                            end
                            i32.const 0
                            i32.const 0
                            i32.load offset=1460
                            get_local 2
                            i32.add
                            tee_local 0
                            i32.store offset=1460
                            block  ;; label = @13
                              get_local 0
                              i32.const 0
                              i32.load offset=1464
                              i32.le_u
                              br_if 0 (;@13;)
                              i32.const 0
                              get_local 0
                              i32.store offset=1464
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load offset=1052
                                    tee_local 4
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 1476
                                    set_local 0
                                    loop  ;; label = @17
                                      get_local 6
                                      get_local 0
                                      i32.load
                                      tee_local 5
                                      get_local 0
                                      i32.load offset=4
                                      tee_local 9
                                      i32.add
                                      i32.eq
                                      br_if 2 (;@15;)
                                      get_local 0
                                      i32.load offset=8
                                      tee_local 0
                                      br_if 0 (;@17;)
                                      br 3 (;@14;)
                                    end
                                  end
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      i32.const 0
                                      i32.load offset=1044
                                      tee_local 0
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      get_local 6
                                      get_local 0
                                      i32.ge_u
                                      br_if 1 (;@16;)
                                    end
                                    i32.const 0
                                    get_local 6
                                    i32.store offset=1044
                                  end
                                  i32.const 0
                                  set_local 0
                                  i32.const 0
                                  get_local 2
                                  i32.store offset=1480
                                  i32.const 0
                                  get_local 6
                                  i32.store offset=1476
                                  i32.const 0
                                  i32.const -1
                                  i32.store offset=1060
                                  i32.const 0
                                  i32.const 0
                                  i32.load offset=1500
                                  i32.store offset=1064
                                  i32.const 0
                                  i32.const 0
                                  i32.store offset=1488
                                  loop  ;; label = @16
                                    get_local 0
                                    i32.const 1076
                                    i32.add
                                    get_local 0
                                    i32.const 1068
                                    i32.add
                                    tee_local 4
                                    i32.store
                                    get_local 0
                                    i32.const 1080
                                    i32.add
                                    get_local 4
                                    i32.store
                                    get_local 0
                                    i32.const 8
                                    i32.add
                                    tee_local 0
                                    i32.const 256
                                    i32.ne
                                    br_if 0 (;@16;)
                                  end
                                  get_local 6
                                  i32.const -8
                                  get_local 6
                                  i32.sub
                                  i32.const 7
                                  i32.and
                                  i32.const 0
                                  get_local 6
                                  i32.const 8
                                  i32.add
                                  i32.const 7
                                  i32.and
                                  select
                                  tee_local 0
                                  i32.add
                                  tee_local 4
                                  get_local 2
                                  i32.const -40
                                  i32.add
                                  tee_local 5
                                  get_local 0
                                  i32.sub
                                  tee_local 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  i32.const 0
                                  i32.const 0
                                  i32.load offset=1516
                                  i32.store offset=1056
                                  i32.const 0
                                  get_local 0
                                  i32.store offset=1040
                                  i32.const 0
                                  get_local 4
                                  i32.store offset=1052
                                  get_local 6
                                  get_local 5
                                  i32.add
                                  i32.const 40
                                  i32.store offset=4
                                  br 2 (;@13;)
                                end
                                get_local 0
                                i32.load8_u offset=12
                                i32.const 8
                                i32.and
                                br_if 0 (;@14;)
                                get_local 6
                                get_local 4
                                i32.le_u
                                br_if 0 (;@14;)
                                get_local 5
                                get_local 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                get_local 4
                                i32.const -8
                                get_local 4
                                i32.sub
                                i32.const 7
                                i32.and
                                i32.const 0
                                get_local 4
                                i32.const 8
                                i32.add
                                i32.const 7
                                i32.and
                                select
                                tee_local 5
                                i32.add
                                tee_local 6
                                i32.const 0
                                i32.load offset=1040
                                get_local 2
                                i32.add
                                tee_local 8
                                get_local 5
                                i32.sub
                                tee_local 5
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                get_local 0
                                i32.const 4
                                i32.add
                                get_local 9
                                get_local 2
                                i32.add
                                i32.store
                                i32.const 0
                                i32.const 0
                                i32.load offset=1516
                                i32.store offset=1056
                                i32.const 0
                                get_local 5
                                i32.store offset=1040
                                i32.const 0
                                get_local 6
                                i32.store offset=1052
                                get_local 4
                                get_local 8
                                i32.add
                                i32.const 40
                                i32.store offset=4
                                br 1 (;@13;)
                              end
                              block  ;; label = @14
                                get_local 6
                                i32.const 0
                                i32.load offset=1044
                                i32.ge_u
                                br_if 0 (;@14;)
                                i32.const 0
                                get_local 6
                                i32.store offset=1044
                              end
                              get_local 6
                              get_local 2
                              i32.add
                              set_local 5
                              i32.const 1476
                              set_local 0
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              loop  ;; label = @22
                                                get_local 0
                                                i32.load
                                                get_local 5
                                                i32.eq
                                                br_if 1 (;@21;)
                                                get_local 0
                                                i32.load offset=8
                                                tee_local 0
                                                br_if 0 (;@22;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            get_local 0
                                            i32.load8_u offset=12
                                            i32.const 8
                                            i32.and
                                            br_if 0 (;@20;)
                                            get_local 0
                                            get_local 6
                                            i32.store
                                            get_local 0
                                            get_local 0
                                            i32.load offset=4
                                            get_local 2
                                            i32.add
                                            i32.store offset=4
                                            get_local 6
                                            i32.const -8
                                            get_local 6
                                            i32.sub
                                            i32.const 7
                                            i32.and
                                            i32.const 0
                                            get_local 6
                                            i32.const 8
                                            i32.add
                                            i32.const 7
                                            i32.and
                                            select
                                            i32.add
                                            tee_local 2
                                            get_local 3
                                            i32.const 3
                                            i32.or
                                            i32.store offset=4
                                            get_local 5
                                            i32.const -8
                                            get_local 5
                                            i32.sub
                                            i32.const 7
                                            i32.and
                                            i32.const 0
                                            get_local 5
                                            i32.const 8
                                            i32.add
                                            i32.const 7
                                            i32.and
                                            select
                                            i32.add
                                            tee_local 6
                                            get_local 2
                                            i32.sub
                                            get_local 3
                                            i32.sub
                                            set_local 0
                                            get_local 2
                                            get_local 3
                                            i32.add
                                            set_local 5
                                            get_local 4
                                            get_local 6
                                            i32.eq
                                            br_if 1 (;@19;)
                                            i32.const 0
                                            i32.load offset=1048
                                            get_local 6
                                            i32.eq
                                            br_if 9 (;@11;)
                                            get_local 6
                                            i32.load offset=4
                                            tee_local 4
                                            i32.const 3
                                            i32.and
                                            i32.const 1
                                            i32.ne
                                            br_if 15 (;@5;)
                                            get_local 4
                                            i32.const -8
                                            i32.and
                                            set_local 7
                                            get_local 4
                                            i32.const 255
                                            i32.gt_u
                                            br_if 10 (;@10;)
                                            get_local 6
                                            i32.load offset=12
                                            tee_local 3
                                            get_local 6
                                            i32.load offset=8
                                            tee_local 9
                                            i32.eq
                                            br_if 11 (;@9;)
                                            get_local 3
                                            get_local 9
                                            i32.store offset=8
                                            get_local 9
                                            get_local 3
                                            i32.store offset=12
                                            br 14 (;@6;)
                                          end
                                          i32.const 1476
                                          set_local 0
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              block  ;; label = @22
                                                get_local 0
                                                i32.load
                                                tee_local 5
                                                get_local 4
                                                i32.gt_u
                                                br_if 0 (;@22;)
                                                get_local 5
                                                get_local 0
                                                i32.load offset=4
                                                i32.add
                                                tee_local 5
                                                get_local 4
                                                i32.gt_u
                                                br_if 2 (;@20;)
                                              end
                                              get_local 0
                                              i32.load offset=8
                                              set_local 0
                                              br 0 (;@21;)
                                            end
                                          end
                                          get_local 6
                                          i32.const -8
                                          get_local 6
                                          i32.sub
                                          i32.const 7
                                          i32.and
                                          i32.const 0
                                          get_local 6
                                          i32.const 8
                                          i32.add
                                          i32.const 7
                                          i32.and
                                          select
                                          tee_local 0
                                          i32.add
                                          tee_local 8
                                          get_local 2
                                          i32.const -40
                                          i32.add
                                          tee_local 9
                                          get_local 0
                                          i32.sub
                                          tee_local 0
                                          i32.const 1
                                          i32.or
                                          i32.store offset=4
                                          get_local 6
                                          get_local 9
                                          i32.add
                                          i32.const 40
                                          i32.store offset=4
                                          get_local 4
                                          get_local 5
                                          i32.const 39
                                          get_local 5
                                          i32.sub
                                          i32.const 7
                                          i32.and
                                          i32.const 0
                                          get_local 5
                                          i32.const -39
                                          i32.add
                                          i32.const 7
                                          i32.and
                                          select
                                          i32.add
                                          i32.const -47
                                          i32.add
                                          tee_local 9
                                          get_local 9
                                          get_local 4
                                          i32.const 16
                                          i32.add
                                          i32.lt_u
                                          select
                                          tee_local 9
                                          i32.const 27
                                          i32.store offset=4
                                          i32.const 0
                                          i32.const 0
                                          i32.load offset=1516
                                          i32.store offset=1056
                                          i32.const 0
                                          get_local 0
                                          i32.store offset=1040
                                          i32.const 0
                                          get_local 8
                                          i32.store offset=1052
                                          get_local 9
                                          i32.const 16
                                          i32.add
                                          i32.const 0
                                          i64.load offset=1484 align=4
                                          i64.store align=4
                                          get_local 9
                                          i32.const 0
                                          i64.load offset=1476 align=4
                                          i64.store offset=8 align=4
                                          i32.const 0
                                          get_local 2
                                          i32.store offset=1480
                                          i32.const 0
                                          get_local 6
                                          i32.store offset=1476
                                          i32.const 0
                                          get_local 9
                                          i32.const 8
                                          i32.add
                                          i32.store offset=1484
                                          i32.const 0
                                          i32.const 0
                                          i32.store offset=1488
                                          get_local 9
                                          i32.const 28
                                          i32.add
                                          set_local 0
                                          loop  ;; label = @20
                                            get_local 0
                                            i32.const 7
                                            i32.store
                                            get_local 0
                                            i32.const 4
                                            i32.add
                                            tee_local 0
                                            get_local 5
                                            i32.lt_u
                                            br_if 0 (;@20;)
                                          end
                                          get_local 9
                                          get_local 4
                                          i32.eq
                                          br_if 6 (;@13;)
                                          get_local 9
                                          i32.const 4
                                          i32.add
                                          tee_local 0
                                          get_local 0
                                          i32.load
                                          i32.const -2
                                          i32.and
                                          i32.store
                                          get_local 9
                                          get_local 9
                                          get_local 4
                                          i32.sub
                                          tee_local 2
                                          i32.store
                                          get_local 4
                                          get_local 2
                                          i32.const 1
                                          i32.or
                                          i32.store offset=4
                                          block  ;; label = @20
                                            get_local 2
                                            i32.const 255
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                            get_local 2
                                            i32.const 3
                                            i32.shr_u
                                            tee_local 5
                                            i32.const 3
                                            i32.shl
                                            i32.const 1068
                                            i32.add
                                            set_local 0
                                            i32.const 0
                                            i32.load offset=1028
                                            tee_local 6
                                            i32.const 1
                                            get_local 5
                                            i32.shl
                                            tee_local 5
                                            i32.and
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            get_local 0
                                            i32.load offset=8
                                            set_local 5
                                            br 3 (;@17;)
                                          end
                                          i32.const 0
                                          set_local 0
                                          block  ;; label = @20
                                            get_local 2
                                            i32.const 8
                                            i32.shr_u
                                            tee_local 5
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            i32.const 31
                                            set_local 0
                                            get_local 2
                                            i32.const 16777215
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                            get_local 2
                                            i32.const 14
                                            get_local 5
                                            get_local 5
                                            i32.const 1048320
                                            i32.add
                                            i32.const 16
                                            i32.shr_u
                                            i32.const 8
                                            i32.and
                                            tee_local 0
                                            i32.shl
                                            tee_local 5
                                            i32.const 520192
                                            i32.add
                                            i32.const 16
                                            i32.shr_u
                                            i32.const 4
                                            i32.and
                                            tee_local 6
                                            get_local 0
                                            i32.or
                                            get_local 5
                                            get_local 6
                                            i32.shl
                                            tee_local 0
                                            i32.const 245760
                                            i32.add
                                            i32.const 16
                                            i32.shr_u
                                            i32.const 2
                                            i32.and
                                            tee_local 5
                                            i32.or
                                            i32.sub
                                            get_local 0
                                            get_local 5
                                            i32.shl
                                            i32.const 15
                                            i32.shr_u
                                            i32.add
                                            tee_local 0
                                            i32.const 7
                                            i32.add
                                            i32.shr_u
                                            i32.const 1
                                            i32.and
                                            get_local 0
                                            i32.const 1
                                            i32.shl
                                            i32.or
                                            set_local 0
                                          end
                                          get_local 4
                                          i64.const 0
                                          i64.store offset=16 align=4
                                          get_local 4
                                          i32.const 28
                                          i32.add
                                          get_local 0
                                          i32.store
                                          get_local 0
                                          i32.const 2
                                          i32.shl
                                          i32.const 1332
                                          i32.add
                                          set_local 5
                                          i32.const 0
                                          i32.load offset=1032
                                          tee_local 6
                                          i32.const 1
                                          get_local 0
                                          i32.shl
                                          tee_local 9
                                          i32.and
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          get_local 2
                                          i32.const 0
                                          i32.const 25
                                          get_local 0
                                          i32.const 1
                                          i32.shr_u
                                          i32.sub
                                          get_local 0
                                          i32.const 31
                                          i32.eq
                                          select
                                          i32.shl
                                          set_local 0
                                          get_local 5
                                          i32.load
                                          set_local 6
                                          loop  ;; label = @20
                                            get_local 6
                                            tee_local 5
                                            i32.load offset=4
                                            i32.const -8
                                            i32.and
                                            get_local 2
                                            i32.eq
                                            br_if 6 (;@14;)
                                            get_local 0
                                            i32.const 29
                                            i32.shr_u
                                            set_local 6
                                            get_local 0
                                            i32.const 1
                                            i32.shl
                                            set_local 0
                                            get_local 5
                                            get_local 6
                                            i32.const 4
                                            i32.and
                                            i32.add
                                            i32.const 16
                                            i32.add
                                            tee_local 9
                                            i32.load
                                            tee_local 6
                                            br_if 0 (;@20;)
                                          end
                                          get_local 9
                                          get_local 4
                                          i32.store
                                          get_local 4
                                          i32.const 24
                                          i32.add
                                          get_local 5
                                          i32.store
                                          br 4 (;@15;)
                                        end
                                        i32.const 0
                                        get_local 5
                                        i32.store offset=1052
                                        i32.const 0
                                        i32.const 0
                                        i32.load offset=1040
                                        get_local 0
                                        i32.add
                                        tee_local 0
                                        i32.store offset=1040
                                        get_local 5
                                        get_local 0
                                        i32.const 1
                                        i32.or
                                        i32.store offset=4
                                        br 14 (;@4;)
                                      end
                                      i32.const 0
                                      get_local 6
                                      get_local 5
                                      i32.or
                                      i32.store offset=1028
                                      get_local 0
                                      set_local 5
                                    end
                                    get_local 5
                                    get_local 4
                                    i32.store offset=12
                                    get_local 0
                                    get_local 4
                                    i32.store offset=8
                                    get_local 4
                                    get_local 0
                                    i32.store offset=12
                                    get_local 4
                                    get_local 5
                                    i32.store offset=8
                                    br 3 (;@13;)
                                  end
                                  get_local 5
                                  get_local 4
                                  i32.store
                                  i32.const 0
                                  get_local 6
                                  get_local 9
                                  i32.or
                                  i32.store offset=1032
                                  get_local 4
                                  i32.const 24
                                  i32.add
                                  get_local 5
                                  i32.store
                                end
                                get_local 4
                                get_local 4
                                i32.store offset=12
                                get_local 4
                                get_local 4
                                i32.store offset=8
                                br 1 (;@13;)
                              end
                              get_local 5
                              i32.load offset=8
                              tee_local 0
                              get_local 4
                              i32.store offset=12
                              get_local 5
                              get_local 4
                              i32.store offset=8
                              get_local 4
                              i32.const 24
                              i32.add
                              i32.const 0
                              i32.store
                              get_local 4
                              get_local 5
                              i32.store offset=12
                              get_local 4
                              get_local 0
                              i32.store offset=8
                            end
                            i32.const 0
                            i32.load offset=1040
                            tee_local 0
                            get_local 3
                            i32.le_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1052
                            tee_local 4
                            get_local 3
                            i32.add
                            tee_local 5
                            get_local 0
                            get_local 3
                            i32.sub
                            tee_local 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            get_local 0
                            i32.store offset=1040
                            i32.const 0
                            get_local 5
                            i32.store offset=1052
                            get_local 4
                            get_local 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            get_local 4
                            i32.const 8
                            i32.add
                            set_local 0
                            br 11 (;@1;)
                          end
                          i32.const 0
                          set_local 0
                          i32.const 0
                          i32.const 48
                          i32.store offset=1524
                          br 10 (;@1;)
                        end
                        i32.const 0
                        get_local 5
                        i32.store offset=1048
                        i32.const 0
                        i32.const 0
                        i32.load offset=1036
                        get_local 0
                        i32.add
                        tee_local 0
                        i32.store offset=1036
                        get_local 5
                        get_local 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        get_local 5
                        get_local 0
                        i32.add
                        get_local 0
                        i32.store
                        br 6 (;@4;)
                      end
                      get_local 6
                      i32.load offset=24
                      set_local 10
                      get_local 6
                      i32.load offset=12
                      tee_local 9
                      get_local 6
                      i32.eq
                      br_if 1 (;@8;)
                      get_local 6
                      i32.load offset=8
                      tee_local 4
                      get_local 9
                      i32.store offset=12
                      get_local 9
                      get_local 4
                      i32.store offset=8
                      get_local 10
                      br_if 2 (;@7;)
                      br 3 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1028
                    i32.const -2
                    get_local 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1028
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 6
                      i32.const 20
                      i32.add
                      tee_local 4
                      i32.load
                      tee_local 3
                      br_if 0 (;@9;)
                      get_local 6
                      i32.const 16
                      i32.add
                      tee_local 4
                      i32.load
                      tee_local 3
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    loop  ;; label = @9
                      get_local 4
                      set_local 8
                      get_local 3
                      tee_local 9
                      i32.const 20
                      i32.add
                      tee_local 4
                      i32.load
                      tee_local 3
                      br_if 0 (;@9;)
                      get_local 9
                      i32.const 16
                      i32.add
                      set_local 4
                      get_local 9
                      i32.load offset=16
                      tee_local 3
                      br_if 0 (;@9;)
                    end
                    get_local 8
                    i32.const 0
                    i32.store
                    get_local 10
                    i32.eqz
                    br_if 2 (;@6;)
                    br 1 (;@7;)
                  end
                  i32.const 0
                  set_local 9
                  get_local 10
                  i32.eqz
                  br_if 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 6
                      i32.load offset=28
                      tee_local 3
                      i32.const 2
                      i32.shl
                      i32.const 1332
                      i32.add
                      tee_local 4
                      i32.load
                      get_local 6
                      i32.eq
                      br_if 0 (;@9;)
                      get_local 10
                      i32.const 16
                      i32.const 20
                      get_local 10
                      i32.load offset=16
                      get_local 6
                      i32.eq
                      select
                      i32.add
                      get_local 9
                      i32.store
                      get_local 9
                      br_if 1 (;@8;)
                      br 3 (;@6;)
                    end
                    get_local 4
                    get_local 9
                    i32.store
                    get_local 9
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  get_local 9
                  get_local 10
                  i32.store offset=24
                  block  ;; label = @8
                    get_local 6
                    i32.load offset=16
                    tee_local 4
                    i32.eqz
                    br_if 0 (;@8;)
                    get_local 9
                    get_local 4
                    i32.store offset=16
                    get_local 4
                    get_local 9
                    i32.store offset=24
                  end
                  get_local 6
                  i32.const 20
                  i32.add
                  i32.load
                  tee_local 4
                  i32.eqz
                  br_if 1 (;@6;)
                  get_local 9
                  i32.const 20
                  i32.add
                  get_local 4
                  i32.store
                  get_local 4
                  get_local 9
                  i32.store offset=24
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1032
                i32.const -2
                get_local 3
                i32.rotl
                i32.and
                i32.store offset=1032
              end
              get_local 7
              get_local 0
              i32.add
              set_local 0
              get_local 6
              get_local 7
              i32.add
              set_local 6
            end
            get_local 6
            get_local 6
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
            get_local 5
            get_local 0
            i32.add
            get_local 0
            i32.store
            get_local 5
            get_local 0
            i32.const 1
            i32.or
            i32.store offset=4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 0
                        i32.const 3
                        i32.shr_u
                        tee_local 4
                        i32.const 3
                        i32.shl
                        i32.const 1068
                        i32.add
                        set_local 0
                        i32.const 0
                        i32.load offset=1028
                        tee_local 3
                        i32.const 1
                        get_local 4
                        i32.shl
                        tee_local 4
                        i32.and
                        i32.eqz
                        br_if 1 (;@9;)
                        get_local 0
                        i32.load offset=8
                        set_local 4
                        br 2 (;@8;)
                      end
                      i32.const 0
                      set_local 4
                      block  ;; label = @10
                        get_local 0
                        i32.const 8
                        i32.shr_u
                        tee_local 3
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        set_local 4
                        get_local 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 0
                        i32.const 14
                        get_local 3
                        get_local 3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        tee_local 4
                        i32.shl
                        tee_local 3
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        tee_local 6
                        get_local 4
                        i32.or
                        get_local 3
                        get_local 6
                        i32.shl
                        tee_local 4
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        tee_local 3
                        i32.or
                        i32.sub
                        get_local 4
                        get_local 3
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        i32.add
                        tee_local 4
                        i32.const 7
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        get_local 4
                        i32.const 1
                        i32.shl
                        i32.or
                        set_local 4
                      end
                      get_local 5
                      get_local 4
                      i32.store offset=28
                      get_local 5
                      i64.const 0
                      i64.store offset=16 align=4
                      get_local 4
                      i32.const 2
                      i32.shl
                      i32.const 1332
                      i32.add
                      set_local 3
                      i32.const 0
                      i32.load offset=1032
                      tee_local 6
                      i32.const 1
                      get_local 4
                      i32.shl
                      tee_local 9
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      get_local 0
                      i32.const 0
                      i32.const 25
                      get_local 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      get_local 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      set_local 4
                      get_local 3
                      i32.load
                      set_local 6
                      loop  ;; label = @10
                        get_local 6
                        tee_local 3
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        get_local 0
                        i32.eq
                        br_if 5 (;@5;)
                        get_local 4
                        i32.const 29
                        i32.shr_u
                        set_local 6
                        get_local 4
                        i32.const 1
                        i32.shl
                        set_local 4
                        get_local 3
                        get_local 6
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        tee_local 9
                        i32.load
                        tee_local 6
                        br_if 0 (;@10;)
                      end
                      get_local 9
                      get_local 5
                      i32.store
                      get_local 5
                      get_local 3
                      i32.store offset=24
                      br 3 (;@6;)
                    end
                    i32.const 0
                    get_local 3
                    get_local 4
                    i32.or
                    i32.store offset=1028
                    get_local 0
                    set_local 4
                  end
                  get_local 4
                  get_local 5
                  i32.store offset=12
                  get_local 0
                  get_local 5
                  i32.store offset=8
                  get_local 5
                  get_local 0
                  i32.store offset=12
                  get_local 5
                  get_local 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                get_local 3
                get_local 5
                i32.store
                i32.const 0
                get_local 6
                get_local 9
                i32.or
                i32.store offset=1032
                get_local 5
                get_local 3
                i32.store offset=24
              end
              get_local 5
              get_local 5
              i32.store offset=12
              get_local 5
              get_local 5
              i32.store offset=8
              br 1 (;@4;)
            end
            get_local 3
            i32.load offset=8
            tee_local 0
            get_local 5
            i32.store offset=12
            get_local 3
            get_local 5
            i32.store offset=8
            get_local 5
            i32.const 0
            i32.store offset=24
            get_local 5
            get_local 3
            i32.store offset=12
            get_local 5
            get_local 0
            i32.store offset=8
          end
          get_local 2
          i32.const 8
          i32.add
          set_local 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 9
              get_local 9
              i32.load offset=28
              tee_local 4
              i32.const 2
              i32.shl
              i32.const 1332
              i32.add
              tee_local 0
              i32.load
              i32.eq
              br_if 0 (;@5;)
              get_local 10
              i32.const 16
              i32.const 20
              get_local 10
              i32.load offset=16
              get_local 9
              i32.eq
              select
              i32.add
              get_local 6
              i32.store
              get_local 6
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            get_local 0
            get_local 6
            i32.store
            get_local 6
            i32.eqz
            br_if 1 (;@3;)
          end
          get_local 6
          get_local 10
          i32.store offset=24
          block  ;; label = @4
            get_local 9
            i32.load offset=16
            tee_local 0
            i32.eqz
            br_if 0 (;@4;)
            get_local 6
            get_local 0
            i32.store offset=16
            get_local 0
            get_local 6
            i32.store offset=24
          end
          get_local 9
          i32.const 20
          i32.add
          i32.load
          tee_local 0
          i32.eqz
          br_if 1 (;@2;)
          get_local 6
          i32.const 20
          i32.add
          get_local 0
          i32.store
          get_local 0
          get_local 6
          i32.store offset=24
          br 1 (;@2;)
        end
        i32.const 0
        get_local 7
        i32.const -2
        get_local 4
        i32.rotl
        i32.and
        tee_local 7
        i32.store offset=1032
      end
      block  ;; label = @2
        block  ;; label = @3
          get_local 5
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          get_local 9
          get_local 5
          get_local 3
          i32.add
          tee_local 0
          i32.const 3
          i32.or
          i32.store offset=4
          get_local 9
          get_local 0
          i32.add
          tee_local 0
          get_local 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        get_local 8
        get_local 5
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 9
        get_local 3
        i32.const 3
        i32.or
        i32.store offset=4
        get_local 8
        get_local 5
        i32.add
        get_local 5
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 5
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  get_local 5
                  i32.const 3
                  i32.shr_u
                  tee_local 4
                  i32.const 3
                  i32.shl
                  i32.const 1068
                  i32.add
                  set_local 0
                  i32.const 0
                  i32.load offset=1028
                  tee_local 5
                  i32.const 1
                  get_local 4
                  i32.shl
                  tee_local 4
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  get_local 0
                  i32.load offset=8
                  set_local 4
                  br 2 (;@5;)
                end
                get_local 5
                i32.const 8
                i32.shr_u
                tee_local 4
                i32.eqz
                br_if 2 (;@4;)
                i32.const 31
                set_local 0
                get_local 5
                i32.const 16777215
                i32.gt_u
                br_if 3 (;@3;)
                get_local 5
                i32.const 14
                get_local 4
                get_local 4
                i32.const 1048320
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 8
                i32.and
                tee_local 0
                i32.shl
                tee_local 4
                i32.const 520192
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 4
                i32.and
                tee_local 3
                get_local 0
                i32.or
                get_local 4
                get_local 3
                i32.shl
                tee_local 0
                i32.const 245760
                i32.add
                i32.const 16
                i32.shr_u
                i32.const 2
                i32.and
                tee_local 4
                i32.or
                i32.sub
                get_local 0
                get_local 4
                i32.shl
                i32.const 15
                i32.shr_u
                i32.add
                tee_local 0
                i32.const 7
                i32.add
                i32.shr_u
                i32.const 1
                i32.and
                get_local 0
                i32.const 1
                i32.shl
                i32.or
                set_local 0
                br 3 (;@3;)
              end
              i32.const 0
              get_local 5
              get_local 4
              i32.or
              i32.store offset=1028
              get_local 0
              set_local 4
            end
            get_local 4
            get_local 8
            i32.store offset=12
            get_local 0
            get_local 8
            i32.store offset=8
            get_local 8
            get_local 0
            i32.store offset=12
            get_local 8
            get_local 4
            i32.store offset=8
            br 2 (;@2;)
          end
          i32.const 0
          set_local 0
        end
        get_local 8
        get_local 0
        i32.store offset=28
        get_local 8
        i64.const 0
        i64.store offset=16 align=4
        get_local 0
        i32.const 2
        i32.shl
        i32.const 1332
        i32.add
        set_local 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 7
              i32.const 1
              get_local 0
              i32.shl
              tee_local 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              get_local 5
              i32.const 0
              i32.const 25
              get_local 0
              i32.const 1
              i32.shr_u
              i32.sub
              get_local 0
              i32.const 31
              i32.eq
              select
              i32.shl
              set_local 0
              get_local 4
              i32.load
              set_local 3
              loop  ;; label = @6
                get_local 3
                tee_local 4
                i32.load offset=4
                i32.const -8
                i32.and
                get_local 5
                i32.eq
                br_if 3 (;@3;)
                get_local 0
                i32.const 29
                i32.shr_u
                set_local 3
                get_local 0
                i32.const 1
                i32.shl
                set_local 0
                get_local 4
                get_local 3
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                tee_local 6
                i32.load
                tee_local 3
                br_if 0 (;@6;)
              end
              get_local 6
              get_local 8
              i32.store
              get_local 8
              get_local 4
              i32.store offset=24
              br 1 (;@4;)
            end
            get_local 4
            get_local 8
            i32.store
            i32.const 0
            get_local 7
            get_local 3
            i32.or
            i32.store offset=1032
            get_local 8
            get_local 4
            i32.store offset=24
          end
          get_local 8
          get_local 8
          i32.store offset=12
          get_local 8
          get_local 8
          i32.store offset=8
          br 1 (;@2;)
        end
        get_local 4
        i32.load offset=8
        tee_local 0
        get_local 8
        i32.store offset=12
        get_local 4
        get_local 8
        i32.store offset=8
        get_local 8
        i32.const 0
        i32.store offset=24
        get_local 8
        get_local 4
        i32.store offset=12
        get_local 8
        get_local 0
        i32.store offset=8
      end
      get_local 9
      i32.const 8
      i32.add
      set_local 0
    end
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $free (type 9) (param i32)
    get_local 0
    call $dlfree)
  (func $dlfree (type 9) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        i32.const -8
        i32.add
        tee_local 1
        get_local 0
        i32.const -4
        i32.add
        i32.load
        tee_local 2
        i32.const -8
        i32.and
        tee_local 0
        i32.add
        set_local 3
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            get_local 2
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            get_local 1
            get_local 1
            i32.load
            tee_local 2
            i32.sub
            tee_local 1
            i32.const 0
            i32.load offset=1044
            i32.lt_u
            br_if 2 (;@2;)
            get_local 2
            get_local 0
            i32.add
            set_local 0
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1048
                      get_local 1
                      i32.eq
                      br_if 0 (;@9;)
                      get_local 2
                      i32.const 255
                      i32.gt_u
                      br_if 1 (;@8;)
                      get_local 1
                      i32.load offset=12
                      tee_local 4
                      get_local 1
                      i32.load offset=8
                      tee_local 5
                      i32.eq
                      br_if 2 (;@7;)
                      get_local 4
                      get_local 5
                      i32.store offset=8
                      get_local 5
                      get_local 4
                      i32.store offset=12
                      get_local 1
                      get_local 3
                      i32.lt_u
                      br_if 6 (;@3;)
                      br 7 (;@2;)
                    end
                    get_local 3
                    i32.load offset=4
                    tee_local 2
                    i32.const 3
                    i32.and
                    i32.const 3
                    i32.ne
                    br_if 4 (;@4;)
                    get_local 3
                    i32.const 4
                    i32.add
                    get_local 2
                    i32.const -2
                    i32.and
                    i32.store
                    i32.const 0
                    get_local 0
                    i32.store offset=1036
                    get_local 1
                    get_local 0
                    i32.add
                    get_local 0
                    i32.store
                    get_local 1
                    get_local 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    return
                  end
                  get_local 1
                  i32.load offset=24
                  set_local 6
                  get_local 1
                  i32.load offset=12
                  tee_local 5
                  get_local 1
                  i32.eq
                  br_if 1 (;@6;)
                  get_local 1
                  i32.load offset=8
                  tee_local 2
                  get_local 5
                  i32.store offset=12
                  get_local 5
                  get_local 2
                  i32.store offset=8
                  get_local 6
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1028
                i32.const -2
                get_local 2
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1028
                get_local 1
                get_local 3
                i32.lt_u
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  get_local 1
                  i32.const 20
                  i32.add
                  tee_local 2
                  i32.load
                  tee_local 4
                  br_if 0 (;@7;)
                  get_local 1
                  i32.const 16
                  i32.add
                  tee_local 2
                  i32.load
                  tee_local 4
                  i32.eqz
                  br_if 1 (;@6;)
                end
                loop  ;; label = @7
                  get_local 2
                  set_local 7
                  get_local 4
                  tee_local 5
                  i32.const 20
                  i32.add
                  tee_local 2
                  i32.load
                  tee_local 4
                  br_if 0 (;@7;)
                  get_local 5
                  i32.const 16
                  i32.add
                  set_local 2
                  get_local 5
                  i32.load offset=16
                  tee_local 4
                  br_if 0 (;@7;)
                end
                get_local 7
                i32.const 0
                i32.store
                get_local 6
                i32.eqz
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              i32.const 0
              set_local 5
              get_local 6
              i32.eqz
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 1
                  i32.load offset=28
                  tee_local 4
                  i32.const 2
                  i32.shl
                  i32.const 1332
                  i32.add
                  tee_local 2
                  i32.load
                  get_local 1
                  i32.eq
                  br_if 0 (;@7;)
                  get_local 6
                  i32.const 16
                  i32.const 20
                  get_local 6
                  i32.load offset=16
                  get_local 1
                  i32.eq
                  select
                  i32.add
                  get_local 5
                  i32.store
                  get_local 5
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                get_local 2
                get_local 5
                i32.store
                get_local 5
                i32.eqz
                br_if 1 (;@5;)
              end
              get_local 5
              get_local 6
              i32.store offset=24
              block  ;; label = @6
                get_local 1
                i32.load offset=16
                tee_local 2
                i32.eqz
                br_if 0 (;@6;)
                get_local 5
                get_local 2
                i32.store offset=16
                get_local 2
                get_local 5
                i32.store offset=24
              end
              get_local 1
              i32.const 20
              i32.add
              i32.load
              tee_local 2
              i32.eqz
              br_if 1 (;@4;)
              get_local 5
              i32.const 20
              i32.add
              get_local 2
              i32.store
              get_local 2
              get_local 5
              i32.store offset=24
              get_local 1
              get_local 3
              i32.lt_u
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1032
            i32.const -2
            get_local 4
            i32.rotl
            i32.and
            i32.store offset=1032
          end
          get_local 1
          get_local 3
          i32.ge_u
          br_if 1 (;@2;)
        end
        get_local 3
        i32.load offset=4
        tee_local 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 2
                          i32.const 2
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1052
                          get_local 3
                          i32.eq
                          br_if 1 (;@10;)
                          i32.const 0
                          i32.load offset=1048
                          get_local 3
                          i32.eq
                          br_if 2 (;@9;)
                          get_local 2
                          i32.const -8
                          i32.and
                          get_local 0
                          i32.add
                          set_local 0
                          get_local 2
                          i32.const 255
                          i32.gt_u
                          br_if 3 (;@8;)
                          get_local 3
                          i32.load offset=12
                          tee_local 4
                          get_local 3
                          i32.load offset=8
                          tee_local 5
                          i32.eq
                          br_if 4 (;@7;)
                          get_local 4
                          get_local 5
                          i32.store offset=8
                          get_local 5
                          get_local 4
                          i32.store offset=12
                          br 7 (;@4;)
                        end
                        get_local 3
                        i32.const 4
                        i32.add
                        get_local 2
                        i32.const -2
                        i32.and
                        i32.store
                        get_local 1
                        get_local 0
                        i32.add
                        get_local 0
                        i32.store
                        get_local 1
                        get_local 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 7 (;@3;)
                      end
                      i32.const 0
                      get_local 1
                      i32.store offset=1052
                      i32.const 0
                      i32.const 0
                      i32.load offset=1040
                      get_local 0
                      i32.add
                      tee_local 0
                      i32.store offset=1040
                      get_local 1
                      get_local 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local 1
                      i32.const 0
                      i32.load offset=1048
                      i32.ne
                      br_if 7 (;@2;)
                      i32.const 0
                      i32.const 0
                      i32.store offset=1036
                      i32.const 0
                      i32.const 0
                      i32.store offset=1048
                      return
                    end
                    i32.const 0
                    get_local 1
                    i32.store offset=1048
                    i32.const 0
                    i32.const 0
                    i32.load offset=1036
                    get_local 0
                    i32.add
                    tee_local 0
                    i32.store offset=1036
                    get_local 1
                    get_local 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 1
                    get_local 0
                    i32.add
                    get_local 0
                    i32.store
                    return
                  end
                  get_local 3
                  i32.load offset=24
                  set_local 6
                  get_local 3
                  i32.load offset=12
                  tee_local 5
                  get_local 3
                  i32.eq
                  br_if 1 (;@6;)
                  get_local 3
                  i32.load offset=8
                  tee_local 2
                  get_local 5
                  i32.store offset=12
                  get_local 5
                  get_local 2
                  i32.store offset=8
                  get_local 6
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1028
                i32.const -2
                get_local 2
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1028
                br 2 (;@4;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  get_local 3
                  i32.const 20
                  i32.add
                  tee_local 2
                  i32.load
                  tee_local 4
                  br_if 0 (;@7;)
                  get_local 3
                  i32.const 16
                  i32.add
                  tee_local 2
                  i32.load
                  tee_local 4
                  i32.eqz
                  br_if 1 (;@6;)
                end
                loop  ;; label = @7
                  get_local 2
                  set_local 7
                  get_local 4
                  tee_local 5
                  i32.const 20
                  i32.add
                  tee_local 2
                  i32.load
                  tee_local 4
                  br_if 0 (;@7;)
                  get_local 5
                  i32.const 16
                  i32.add
                  set_local 2
                  get_local 5
                  i32.load offset=16
                  tee_local 4
                  br_if 0 (;@7;)
                end
                get_local 7
                i32.const 0
                i32.store
                get_local 6
                i32.eqz
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              i32.const 0
              set_local 5
              get_local 6
              i32.eqz
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 3
                  i32.load offset=28
                  tee_local 4
                  i32.const 2
                  i32.shl
                  i32.const 1332
                  i32.add
                  tee_local 2
                  i32.load
                  get_local 3
                  i32.eq
                  br_if 0 (;@7;)
                  get_local 6
                  i32.const 16
                  i32.const 20
                  get_local 6
                  i32.load offset=16
                  get_local 3
                  i32.eq
                  select
                  i32.add
                  get_local 5
                  i32.store
                  get_local 5
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                get_local 2
                get_local 5
                i32.store
                get_local 5
                i32.eqz
                br_if 1 (;@5;)
              end
              get_local 5
              get_local 6
              i32.store offset=24
              block  ;; label = @6
                get_local 3
                i32.load offset=16
                tee_local 2
                i32.eqz
                br_if 0 (;@6;)
                get_local 5
                get_local 2
                i32.store offset=16
                get_local 2
                get_local 5
                i32.store offset=24
              end
              get_local 3
              i32.const 20
              i32.add
              i32.load
              tee_local 2
              i32.eqz
              br_if 1 (;@4;)
              get_local 5
              i32.const 20
              i32.add
              get_local 2
              i32.store
              get_local 2
              get_local 5
              i32.store offset=24
              br 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1032
            i32.const -2
            get_local 4
            i32.rotl
            i32.and
            i32.store offset=1032
          end
          get_local 1
          get_local 0
          i32.add
          get_local 0
          i32.store
          get_local 1
          get_local 0
          i32.const 1
          i32.or
          i32.store offset=4
          get_local 1
          i32.const 0
          i32.load offset=1048
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          get_local 0
          i32.store offset=1036
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 0
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      get_local 0
                      i32.const 3
                      i32.shr_u
                      tee_local 2
                      i32.const 3
                      i32.shl
                      i32.const 1068
                      i32.add
                      set_local 0
                      i32.const 0
                      i32.load offset=1028
                      tee_local 4
                      i32.const 1
                      get_local 2
                      i32.shl
                      tee_local 2
                      i32.and
                      i32.eqz
                      br_if 1 (;@8;)
                      get_local 0
                      i32.load offset=8
                      set_local 2
                      br 2 (;@7;)
                    end
                    i32.const 0
                    set_local 2
                    block  ;; label = @9
                      get_local 0
                      i32.const 8
                      i32.shr_u
                      tee_local 4
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      set_local 2
                      get_local 0
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      get_local 0
                      i32.const 14
                      get_local 4
                      get_local 4
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      tee_local 2
                      i32.shl
                      tee_local 4
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      tee_local 5
                      get_local 2
                      i32.or
                      get_local 4
                      get_local 5
                      i32.shl
                      tee_local 2
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      tee_local 4
                      i32.or
                      i32.sub
                      get_local 2
                      get_local 4
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      i32.add
                      tee_local 2
                      i32.const 7
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      get_local 2
                      i32.const 1
                      i32.shl
                      i32.or
                      set_local 2
                    end
                    get_local 1
                    i64.const 0
                    i64.store offset=16 align=4
                    get_local 1
                    i32.const 28
                    i32.add
                    get_local 2
                    i32.store
                    get_local 2
                    i32.const 2
                    i32.shl
                    i32.const 1332
                    i32.add
                    set_local 4
                    i32.const 0
                    i32.load offset=1032
                    tee_local 5
                    i32.const 1
                    get_local 2
                    i32.shl
                    tee_local 3
                    i32.and
                    i32.eqz
                    br_if 2 (;@6;)
                    get_local 0
                    i32.const 0
                    i32.const 25
                    get_local 2
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    get_local 2
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    set_local 2
                    get_local 4
                    i32.load
                    set_local 5
                    loop  ;; label = @9
                      get_local 5
                      tee_local 4
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      get_local 0
                      i32.eq
                      br_if 5 (;@4;)
                      get_local 2
                      i32.const 29
                      i32.shr_u
                      set_local 5
                      get_local 2
                      i32.const 1
                      i32.shl
                      set_local 2
                      get_local 4
                      get_local 5
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      tee_local 3
                      i32.load
                      tee_local 5
                      br_if 0 (;@9;)
                    end
                    get_local 3
                    get_local 1
                    i32.store
                    get_local 1
                    i32.const 24
                    i32.add
                    get_local 4
                    i32.store
                    br 3 (;@5;)
                  end
                  i32.const 0
                  get_local 4
                  get_local 2
                  i32.or
                  i32.store offset=1028
                  get_local 0
                  set_local 2
                end
                get_local 2
                get_local 1
                i32.store offset=12
                get_local 0
                get_local 1
                i32.store offset=8
                get_local 1
                get_local 0
                i32.store offset=12
                get_local 1
                get_local 2
                i32.store offset=8
                return
              end
              get_local 4
              get_local 1
              i32.store
              i32.const 0
              get_local 5
              get_local 3
              i32.or
              i32.store offset=1032
              get_local 1
              i32.const 24
              i32.add
              get_local 4
              i32.store
            end
            get_local 1
            get_local 1
            i32.store offset=12
            get_local 1
            get_local 1
            i32.store offset=8
            br 1 (;@3;)
          end
          get_local 4
          i32.load offset=8
          tee_local 0
          get_local 1
          i32.store offset=12
          get_local 4
          get_local 1
          i32.store offset=8
          get_local 1
          i32.const 24
          i32.add
          i32.const 0
          i32.store
          get_local 1
          get_local 4
          i32.store offset=12
          get_local 1
          get_local 0
          i32.store offset=8
        end
        i32.const 0
        i32.const 0
        i32.load offset=1060
        i32.const -1
        i32.add
        tee_local 1
        i32.store offset=1060
        get_local 1
        i32.eqz
        br_if 1 (;@1;)
      end
      return
    end
    i32.const 1484
    set_local 1
    loop  ;; label = @1
      get_local 1
      i32.load
      tee_local 0
      i32.const 8
      i32.add
      set_local 1
      get_local 0
      br_if 0 (;@1;)
    end
    i32.const 0
    i32.const -1
    i32.store offset=1060)
  (func $abort (type 4)
    unreachable
    unreachable)
  (func $sbrk (type 0) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      get_local 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 0
        i32.const 16
        i32.shr_u
        memory.grow
        tee_local 0
        i32.const -1
        i32.eq
        br_if 0 (;@2;)
        get_local 0
        i32.const 16
        i32.shl
        return
      end
      i32.const 0
      i32.const 48
      i32.store offset=1524
      i32.const -1
      return
    end
    call $abort
    unreachable)
  (func $strerror (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    set_local 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=1552
      tee_local 2
      br_if 0 (;@1;)
      i32.const 1528
      set_local 2
      i32.const 0
      i32.const 1528
      i32.store offset=1552
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              get_local 1
              i32.const 2720
              i32.add
              i32.load8_u
              get_local 0
              i32.eq
              br_if 1 (;@4;)
              i32.const 77
              set_local 3
              get_local 1
              i32.const 1
              i32.add
              tee_local 1
              i32.const 77
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          get_local 1
          set_local 3
          get_local 1
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 2800
        set_local 1
        loop  ;; label = @3
          get_local 1
          i32.load8_u
          set_local 0
          get_local 1
          i32.const 1
          i32.add
          tee_local 4
          set_local 1
          get_local 0
          br_if 0 (;@3;)
          get_local 4
          set_local 1
          get_local 3
          i32.const -1
          i32.add
          tee_local 3
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 2800
      set_local 4
    end
    get_local 4
    get_local 2
    i32.load offset=20
    call $__lctrans)
  (func $vfprintf (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    get_global 0
    i32.const 208
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 2
    i32.store offset=204
    get_local 3
    i32.const 160
    i32.add
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    get_local 3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    get_local 3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    get_local 3
    i64.const 0
    i64.store offset=168
    get_local 3
    i64.const 0
    i64.store offset=160
    get_local 3
    get_local 3
    i32.load offset=204
    i32.store offset=200
    i32.const -1
    set_local 2
    block  ;; label = @1
      i32.const 0
      get_local 1
      get_local 3
      i32.const 200
      i32.add
      get_local 3
      i32.const 80
      i32.add
      get_local 3
      i32.const 160
      i32.add
      call $printf_core
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      get_local 0
      i32.load
      set_local 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 0
                  i32.load offset=60
                  i32.const 0
                  i32.le_s
                  br_if 0 (;@7;)
                  get_local 0
                  i32.load offset=44
                  i32.eqz
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                get_local 0
                get_local 4
                i32.const -33
                i32.and
                i32.store
                get_local 0
                i32.load offset=44
                br_if 1 (;@5;)
              end
              get_local 0
              i32.const 0
              i32.store offset=24
              get_local 0
              i64.const 0
              i64.store offset=16
              get_local 0
              i32.const 44
              i32.add
              i32.const 80
              i32.store
              get_local 0
              i32.load offset=40
              set_local 5
              get_local 0
              get_local 3
              i32.store offset=40
              br 1 (;@4;)
            end
            i32.const 0
            set_local 5
            get_local 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          set_local 2
          get_local 0
          call $__towrite
          br_if 1 (;@2;)
        end
        get_local 0
        get_local 1
        get_local 3
        i32.const 200
        i32.add
        get_local 3
        i32.const 80
        i32.add
        get_local 3
        i32.const 160
        i32.add
        call $printf_core
        set_local 2
      end
      get_local 4
      i32.const 32
      i32.and
      set_local 1
      block  ;; label = @2
        get_local 5
        i32.eqz
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.const 0
        get_local 0
        i32.load offset=32
        call_indirect (type 1)
        drop
        get_local 0
        i32.const 44
        i32.add
        i32.const 0
        i32.store
        get_local 0
        get_local 5
        i32.store offset=40
        get_local 0
        i32.const 0
        i32.store offset=24
        get_local 0
        i32.const 16
        i32.add
        i32.const 0
        i32.store
        get_local 0
        i32.load offset=20
        set_local 5
        get_local 0
        i32.const 0
        i32.store offset=20
        get_local 2
        i32.const -1
        get_local 5
        select
        set_local 2
      end
      get_local 0
      get_local 0
      i32.load
      tee_local 5
      get_local 1
      i32.or
      i32.store
      i32.const -1
      get_local 2
      get_local 5
      i32.const 32
      i32.and
      select
      set_local 2
    end
    get_local 3
    i32.const 208
    i32.add
    set_global 0
    get_local 2)
  (func $printf_core (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 f64 i32 i64 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 880
    i32.sub
    tee_local 5
    set_global 0
    get_local 5
    i32.const 336
    i32.add
    i32.const 8
    i32.or
    set_local 6
    get_local 5
    i32.const 16
    i32.add
    i32.const 39
    i32.add
    set_local 7
    i32.const -2
    get_local 5
    i32.const 336
    i32.add
    i32.sub
    set_local 8
    get_local 5
    i32.const 336
    i32.add
    i32.const 9
    i32.or
    set_local 9
    get_local 5
    i32.const 656
    i32.add
    set_local 10
    get_local 5
    i32.const 324
    i32.add
    i32.const 12
    i32.add
    set_local 11
    get_local 5
    i32.const 56
    i32.add
    set_local 12
    i32.const 0
    set_local 13
    i32.const 0
    set_local 14
    i32.const 0
    set_local 15
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            get_local 1
            set_local 18
            get_local 15
            i32.const 2147483647
            get_local 14
            i32.sub
            i32.gt_s
            br_if 1 (;@3;)
            get_local 15
            get_local 14
            i32.add
            set_local 14
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                get_local 18
                                                                i32.load8_u
                                                                tee_local 15
                                                                i32.eqz
                                                                br_if 0 (;@30;)
                                                                get_local 18
                                                                set_local 1
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      get_local 15
                                                                      i32.const 255
                                                                      i32.and
                                                                      tee_local 15
                                                                      i32.eqz
                                                                      br_if 0 (;@33;)
                                                                      loop  ;; label = @34
                                                                        get_local 15
                                                                        i32.const 37
                                                                        i32.eq
                                                                        br_if 2 (;@32;)
                                                                        get_local 1
                                                                        i32.load8_u offset=1
                                                                        set_local 15
                                                                        get_local 1
                                                                        i32.const 1
                                                                        i32.add
                                                                        set_local 1
                                                                        get_local 15
                                                                        i32.const 255
                                                                        i32.and
                                                                        tee_local 15
                                                                        br_if 0 (;@34;)
                                                                      end
                                                                    end
                                                                    get_local 1
                                                                    set_local 17
                                                                    br 1 (;@31;)
                                                                  end
                                                                  get_local 1
                                                                  set_local 17
                                                                  get_local 1
                                                                  set_local 15
                                                                  block  ;; label = @32
                                                                    loop  ;; label = @33
                                                                      get_local 15
                                                                      i32.const 1
                                                                      i32.add
                                                                      i32.load8_u
                                                                      i32.const 37
                                                                      i32.ne
                                                                      br_if 1 (;@32;)
                                                                      get_local 17
                                                                      i32.const 1
                                                                      i32.add
                                                                      set_local 17
                                                                      get_local 15
                                                                      i32.load8_u offset=2
                                                                      set_local 19
                                                                      get_local 15
                                                                      i32.const 2
                                                                      i32.add
                                                                      tee_local 1
                                                                      set_local 15
                                                                      get_local 19
                                                                      i32.const 37
                                                                      i32.eq
                                                                      br_if 0 (;@33;)
                                                                      br 2 (;@31;)
                                                                    end
                                                                  end
                                                                  get_local 15
                                                                  set_local 1
                                                                end
                                                                get_local 17
                                                                get_local 18
                                                                i32.sub
                                                                tee_local 15
                                                                i32.const 2147483647
                                                                get_local 14
                                                                i32.sub
                                                                tee_local 17
                                                                i32.gt_s
                                                                br_if 27 (;@3;)
                                                                block  ;; label = @31
                                                                  get_local 0
                                                                  i32.eqz
                                                                  br_if 0 (;@31;)
                                                                  get_local 0
                                                                  i32.load8_u
                                                                  i32.const 32
                                                                  i32.and
                                                                  br_if 0 (;@31;)
                                                                  get_local 18
                                                                  get_local 15
                                                                  get_local 0
                                                                  call $__fwritex
                                                                  drop
                                                                end
                                                                get_local 15
                                                                br_if 26 (;@4;)
                                                                get_local 1
                                                                i32.const 1
                                                                i32.add
                                                                set_local 15
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    get_local 1
                                                                    i32.load8_s offset=1
                                                                    tee_local 16
                                                                    i32.const -48
                                                                    i32.add
                                                                    tee_local 20
                                                                    i32.const 9
                                                                    i32.gt_u
                                                                    br_if 0 (;@32;)
                                                                    get_local 1
                                                                    i32.const 3
                                                                    i32.add
                                                                    get_local 15
                                                                    get_local 1
                                                                    i32.load8_u offset=2
                                                                    i32.const 36
                                                                    i32.eq
                                                                    tee_local 19
                                                                    select
                                                                    set_local 15
                                                                    get_local 20
                                                                    i32.const -1
                                                                    get_local 19
                                                                    select
                                                                    set_local 21
                                                                    i32.const 1
                                                                    get_local 13
                                                                    get_local 19
                                                                    select
                                                                    set_local 13
                                                                    get_local 1
                                                                    i32.const 3
                                                                    i32.const 1
                                                                    get_local 19
                                                                    select
                                                                    i32.add
                                                                    i32.load8_s
                                                                    set_local 16
                                                                    br 1 (;@31;)
                                                                  end
                                                                  i32.const -1
                                                                  set_local 21
                                                                end
                                                                i32.const 0
                                                                set_local 22
                                                                block  ;; label = @31
                                                                  get_local 16
                                                                  i32.const -32
                                                                  i32.add
                                                                  tee_local 1
                                                                  i32.const 31
                                                                  i32.gt_u
                                                                  br_if 0 (;@31;)
                                                                  i32.const 1
                                                                  get_local 1
                                                                  i32.shl
                                                                  tee_local 1
                                                                  i32.const 75913
                                                                  i32.and
                                                                  i32.eqz
                                                                  br_if 0 (;@31;)
                                                                  get_local 15
                                                                  i32.const 1
                                                                  i32.add
                                                                  set_local 19
                                                                  i32.const 0
                                                                  set_local 22
                                                                  loop  ;; label = @32
                                                                    get_local 1
                                                                    get_local 22
                                                                    i32.or
                                                                    set_local 22
                                                                    get_local 19
                                                                    tee_local 15
                                                                    i32.load8_s
                                                                    tee_local 16
                                                                    i32.const -32
                                                                    i32.add
                                                                    tee_local 1
                                                                    i32.const 32
                                                                    i32.ge_u
                                                                    br_if 1 (;@31;)
                                                                    get_local 15
                                                                    i32.const 1
                                                                    i32.add
                                                                    set_local 19
                                                                    i32.const 1
                                                                    get_local 1
                                                                    i32.shl
                                                                    tee_local 1
                                                                    i32.const 75913
                                                                    i32.and
                                                                    br_if 0 (;@32;)
                                                                  end
                                                                end
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            get_local 16
                                                                            i32.const 42
                                                                            i32.ne
                                                                            br_if 0 (;@36;)
                                                                            get_local 15
                                                                            i32.load8_s offset=1
                                                                            i32.const -48
                                                                            i32.add
                                                                            tee_local 1
                                                                            i32.const 9
                                                                            i32.gt_u
                                                                            br_if 1 (;@35;)
                                                                            get_local 15
                                                                            i32.load8_u offset=2
                                                                            i32.const 36
                                                                            i32.ne
                                                                            br_if 1 (;@35;)
                                                                            get_local 4
                                                                            get_local 1
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.add
                                                                            i32.const 10
                                                                            i32.store
                                                                            get_local 15
                                                                            i32.const 3
                                                                            i32.add
                                                                            set_local 23
                                                                            i32.const 1
                                                                            set_local 13
                                                                            get_local 3
                                                                            get_local 15
                                                                            i32.const 1
                                                                            i32.add
                                                                            i32.load8_s
                                                                            i32.const 3
                                                                            i32.shl
                                                                            i32.add
                                                                            i32.const -384
                                                                            i32.add
                                                                            i32.load
                                                                            tee_local 20
                                                                            i32.const -1
                                                                            i32.gt_s
                                                                            br_if 5 (;@31;)
                                                                            br 2 (;@34;)
                                                                          end
                                                                          i32.const 0
                                                                          set_local 20
                                                                          get_local 16
                                                                          i32.const -48
                                                                          i32.add
                                                                          tee_local 19
                                                                          i32.const 9
                                                                          i32.gt_u
                                                                          br_if 2 (;@33;)
                                                                          i32.const 0
                                                                          set_local 1
                                                                          loop  ;; label = @36
                                                                            i32.const -1
                                                                            set_local 20
                                                                            block  ;; label = @37
                                                                              get_local 1
                                                                              i32.const 214748364
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              i32.const -1
                                                                              get_local 1
                                                                              i32.const 10
                                                                              i32.mul
                                                                              tee_local 1
                                                                              get_local 19
                                                                              i32.add
                                                                              get_local 19
                                                                              i32.const 2147483647
                                                                              get_local 1
                                                                              i32.sub
                                                                              i32.gt_s
                                                                              select
                                                                              set_local 20
                                                                            end
                                                                            get_local 15
                                                                            i32.load8_s offset=1
                                                                            set_local 19
                                                                            get_local 15
                                                                            i32.const 1
                                                                            i32.add
                                                                            tee_local 23
                                                                            set_local 15
                                                                            get_local 20
                                                                            set_local 1
                                                                            get_local 19
                                                                            i32.const -48
                                                                            i32.add
                                                                            tee_local 19
                                                                            i32.const 10
                                                                            i32.lt_u
                                                                            br_if 0 (;@36;)
                                                                          end
                                                                          get_local 20
                                                                          i32.const 0
                                                                          i32.ge_s
                                                                          br_if 4 (;@31;)
                                                                          br 32 (;@3;)
                                                                        end
                                                                        get_local 13
                                                                        br_if 16 (;@18;)
                                                                        get_local 15
                                                                        i32.const 1
                                                                        i32.add
                                                                        set_local 23
                                                                        get_local 0
                                                                        i32.eqz
                                                                        br_if 2 (;@32;)
                                                                        get_local 2
                                                                        get_local 2
                                                                        i32.load
                                                                        tee_local 1
                                                                        i32.const 4
                                                                        i32.add
                                                                        i32.store
                                                                        i32.const 0
                                                                        set_local 13
                                                                        get_local 1
                                                                        i32.load
                                                                        tee_local 20
                                                                        i32.const -1
                                                                        i32.gt_s
                                                                        br_if 3 (;@31;)
                                                                      end
                                                                      i32.const 0
                                                                      get_local 20
                                                                      i32.sub
                                                                      set_local 20
                                                                      get_local 22
                                                                      i32.const 8192
                                                                      i32.or
                                                                      set_local 22
                                                                      br 2 (;@31;)
                                                                    end
                                                                    get_local 15
                                                                    set_local 23
                                                                    br 1 (;@31;)
                                                                  end
                                                                  i32.const 0
                                                                  set_local 13
                                                                  i32.const 0
                                                                  set_local 20
                                                                end
                                                                i32.const 0
                                                                set_local 15
                                                                i32.const -1
                                                                set_local 16
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              get_local 23
                                                                              i32.load8_u
                                                                              i32.const 46
                                                                              i32.ne
                                                                              br_if 0 (;@37;)
                                                                              get_local 23
                                                                              i32.load8_s offset=1
                                                                              tee_local 19
                                                                              i32.const 42
                                                                              i32.ne
                                                                              br_if 1 (;@36;)
                                                                              get_local 23
                                                                              i32.load8_s offset=2
                                                                              i32.const -48
                                                                              i32.add
                                                                              tee_local 1
                                                                              i32.const 9
                                                                              i32.gt_u
                                                                              br_if 2 (;@35;)
                                                                              get_local 23
                                                                              i32.load8_u offset=3
                                                                              i32.const 36
                                                                              i32.ne
                                                                              br_if 2 (;@35;)
                                                                              get_local 4
                                                                              get_local 1
                                                                              i32.const 2
                                                                              i32.shl
                                                                              i32.add
                                                                              i32.const 10
                                                                              i32.store
                                                                              get_local 23
                                                                              i32.const 4
                                                                              i32.add
                                                                              set_local 1
                                                                              get_local 3
                                                                              get_local 23
                                                                              i32.const 2
                                                                              i32.add
                                                                              i32.load8_s
                                                                              i32.const 3
                                                                              i32.shl
                                                                              i32.add
                                                                              i32.const -384
                                                                              i32.add
                                                                              i32.load
                                                                              set_local 16
                                                                              br 5 (;@32;)
                                                                            end
                                                                            get_local 23
                                                                            set_local 1
                                                                            i32.const 0
                                                                            set_local 24
                                                                            br 5 (;@31;)
                                                                          end
                                                                          get_local 23
                                                                          i32.const 1
                                                                          i32.add
                                                                          set_local 1
                                                                          get_local 19
                                                                          i32.const -48
                                                                          i32.add
                                                                          tee_local 25
                                                                          i32.const 9
                                                                          i32.gt_u
                                                                          br_if 1 (;@34;)
                                                                          i32.const 0
                                                                          set_local 23
                                                                          get_local 1
                                                                          set_local 19
                                                                          loop  ;; label = @36
                                                                            i32.const -1
                                                                            set_local 16
                                                                            block  ;; label = @37
                                                                              get_local 23
                                                                              i32.const 214748364
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              i32.const -1
                                                                              get_local 23
                                                                              i32.const 10
                                                                              i32.mul
                                                                              tee_local 1
                                                                              get_local 25
                                                                              i32.add
                                                                              get_local 25
                                                                              i32.const 2147483647
                                                                              get_local 1
                                                                              i32.sub
                                                                              i32.gt_s
                                                                              select
                                                                              set_local 16
                                                                            end
                                                                            i32.const 1
                                                                            set_local 24
                                                                            get_local 19
                                                                            i32.load8_s offset=1
                                                                            set_local 25
                                                                            get_local 19
                                                                            i32.const 1
                                                                            i32.add
                                                                            tee_local 1
                                                                            set_local 19
                                                                            get_local 16
                                                                            set_local 23
                                                                            get_local 25
                                                                            i32.const -48
                                                                            i32.add
                                                                            tee_local 25
                                                                            i32.const 10
                                                                            i32.lt_u
                                                                            br_if 0 (;@36;)
                                                                            br 5 (;@31;)
                                                                          end
                                                                        end
                                                                        get_local 13
                                                                        br_if 16 (;@18;)
                                                                        get_local 23
                                                                        i32.const 2
                                                                        i32.add
                                                                        set_local 1
                                                                        get_local 0
                                                                        i32.eqz
                                                                        br_if 1 (;@33;)
                                                                        get_local 2
                                                                        get_local 2
                                                                        i32.load
                                                                        tee_local 19
                                                                        i32.const 4
                                                                        i32.add
                                                                        i32.store
                                                                        get_local 19
                                                                        i32.load
                                                                        set_local 16
                                                                        br 2 (;@32;)
                                                                      end
                                                                      i32.const 1
                                                                      set_local 24
                                                                      i32.const 0
                                                                      set_local 16
                                                                      br 2 (;@31;)
                                                                    end
                                                                    i32.const 0
                                                                    set_local 16
                                                                  end
                                                                  get_local 16
                                                                  i32.const -1
                                                                  i32.xor
                                                                  i32.const 31
                                                                  i32.shr_u
                                                                  set_local 24
                                                                end
                                                                loop  ;; label = @31
                                                                  get_local 15
                                                                  set_local 19
                                                                  get_local 1
                                                                  i32.load8_s
                                                                  i32.const -65
                                                                  i32.add
                                                                  tee_local 15
                                                                  i32.const 57
                                                                  i32.gt_u
                                                                  br_if 13 (;@18;)
                                                                  get_local 1
                                                                  i32.const 1
                                                                  i32.add
                                                                  set_local 1
                                                                  get_local 19
                                                                  i32.const 58
                                                                  i32.mul
                                                                  get_local 15
                                                                  i32.add
                                                                  i32.const 4400
                                                                  i32.add
                                                                  i32.load8_u
                                                                  tee_local 15
                                                                  i32.const -1
                                                                  i32.add
                                                                  i32.const 8
                                                                  i32.lt_u
                                                                  br_if 0 (;@31;)
                                                                end
                                                                get_local 15
                                                                i32.eqz
                                                                br_if 12 (;@18;)
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        get_local 15
                                                                        i32.const 27
                                                                        i32.ne
                                                                        br_if 0 (;@34;)
                                                                        get_local 21
                                                                        i32.const -1
                                                                        i32.le_s
                                                                        br_if 1 (;@33;)
                                                                        br 16 (;@18;)
                                                                      end
                                                                      get_local 21
                                                                      i32.const 0
                                                                      i32.lt_s
                                                                      br_if 1 (;@32;)
                                                                      get_local 4
                                                                      get_local 21
                                                                      i32.const 2
                                                                      i32.shl
                                                                      i32.add
                                                                      get_local 15
                                                                      i32.store
                                                                      get_local 5
                                                                      get_local 3
                                                                      get_local 21
                                                                      i32.const 3
                                                                      i32.shl
                                                                      i32.add
                                                                      i64.load
                                                                      i64.store offset=56
                                                                    end
                                                                    i32.const 0
                                                                    set_local 15
                                                                    get_local 0
                                                                    i32.eqz
                                                                    br_if 28 (;@4;)
                                                                    br 1 (;@31;)
                                                                  end
                                                                  get_local 0
                                                                  i32.eqz
                                                                  br_if 2 (;@29;)
                                                                  get_local 5
                                                                  i32.const 56
                                                                  i32.add
                                                                  get_local 15
                                                                  get_local 2
                                                                  call $pop_arg
                                                                end
                                                                get_local 22
                                                                i32.const -65537
                                                                i32.and
                                                                tee_local 26
                                                                get_local 22
                                                                get_local 22
                                                                i32.const 8192
                                                                i32.and
                                                                select
                                                                set_local 23
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      get_local 1
                                                                                                                                      i32.const -1
                                                                                                                                      i32.add
                                                                                                                                      i32.load8_s
                                                                                                                                      tee_local 15
                                                                                                                                      i32.const -33
                                                                                                                                      i32.and
                                                                                                                                      get_local 15
                                                                                                                                      get_local 15
                                                                                                                                      i32.const 15
                                                                                                                                      i32.and
                                                                                                                                      i32.const 3
                                                                                                                                      i32.eq
                                                                                                                                      select
                                                                                                                                      get_local 15
                                                                                                                                      get_local 19
                                                                                                                                      select
                                                                                                                                      tee_local 25
                                                                                                                                      i32.const -65
                                                                                                                                      i32.add
                                                                                                                                      tee_local 15
                                                                                                                                      i32.const 55
                                                                                                                                      i32.gt_u
                                                                                                                                      br_if 0 (;@65;)
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          get_local 15
                                                                                                                                          br_table 0 (;@67;) 2 (;@65;) 3 (;@64;) 2 (;@65;) 0 (;@67;) 0 (;@67;) 0 (;@67;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 4 (;@63;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 11 (;@56;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 0 (;@67;) 2 (;@65;) 6 (;@61;) 1 (;@66;) 0 (;@67;) 0 (;@67;) 0 (;@67;) 2 (;@65;) 1 (;@66;) 2 (;@65;) 2 (;@65;) 2 (;@65;) 7 (;@60;) 8 (;@59;) 9 (;@58;) 10 (;@57;) 2 (;@65;) 2 (;@65;) 12 (;@55;) 2 (;@65;) 14 (;@53;) 2 (;@65;) 2 (;@65;) 11 (;@56;) 0 (;@67;)
                                                                                                                                        end
                                                                                                                                        block  ;; label = @67
                                                                                                                                          get_local 16
                                                                                                                                          i32.const -1
                                                                                                                                          i32.gt_s
                                                                                                                                          br_if 0 (;@67;)
                                                                                                                                          get_local 24
                                                                                                                                          br_if 64 (;@3;)
                                                                                                                                        end
                                                                                                                                        get_local 5
                                                                                                                                        f64.load offset=56
                                                                                                                                        set_local 27
                                                                                                                                        get_local 5
                                                                                                                                        i32.const 0
                                                                                                                                        i32.store offset=364
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              get_local 27
                                                                                                                                              i64.reinterpret/f64
                                                                                                                                              i64.const -1
                                                                                                                                              i64.le_s
                                                                                                                                              br_if 0 (;@69;)
                                                                                                                                              get_local 23
                                                                                                                                              i32.const 2048
                                                                                                                                              i32.and
                                                                                                                                              br_if 1 (;@68;)
                                                                                                                                              i32.const 5030
                                                                                                                                              i32.const 5025
                                                                                                                                              get_local 23
                                                                                                                                              i32.const 1
                                                                                                                                              i32.and
                                                                                                                                              tee_local 26
                                                                                                                                              select
                                                                                                                                              set_local 28
                                                                                                                                              br 2 (;@67;)
                                                                                                                                            end
                                                                                                                                            get_local 27
                                                                                                                                            f64.neg
                                                                                                                                            set_local 27
                                                                                                                                            i32.const 1
                                                                                                                                            set_local 26
                                                                                                                                            i32.const 5024
                                                                                                                                            set_local 28
                                                                                                                                            br 1 (;@67;)
                                                                                                                                          end
                                                                                                                                          i32.const 1
                                                                                                                                          set_local 26
                                                                                                                                          i32.const 5027
                                                                                                                                          set_local 28
                                                                                                                                        end
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            get_local 27
                                                                                                                                            f64.abs
                                                                                                                                            tee_local 29
                                                                                                                                            f64.const inf (;=inf;)
                                                                                                                                            f64.ne
                                                                                                                                            get_local 29
                                                                                                                                            get_local 29
                                                                                                                                            f64.eq
                                                                                                                                            i32.and
                                                                                                                                            i32.eqz
                                                                                                                                            br_if 0 (;@68;)
                                                                                                                                            block  ;; label = @69
                                                                                                                                              get_local 27
                                                                                                                                              get_local 5
                                                                                                                                              i32.const 364
                                                                                                                                              i32.add
                                                                                                                                              call $frexp
                                                                                                                                              tee_local 27
                                                                                                                                              get_local 27
                                                                                                                                              f64.add
                                                                                                                                              tee_local 27
                                                                                                                                              f64.const 0x0p+0 (;=0;)
                                                                                                                                              f64.eq
                                                                                                                                              br_if 0 (;@69;)
                                                                                                                                              get_local 5
                                                                                                                                              get_local 5
                                                                                                                                              i32.load offset=364
                                                                                                                                              i32.const -1
                                                                                                                                              i32.add
                                                                                                                                              i32.store offset=364
                                                                                                                                            end
                                                                                                                                            get_local 25
                                                                                                                                            i32.const 32
                                                                                                                                            i32.or
                                                                                                                                            tee_local 30
                                                                                                                                            i32.const 97
                                                                                                                                            i32.ne
                                                                                                                                            br_if 1 (;@67;)
                                                                                                                                            get_local 28
                                                                                                                                            i32.const 9
                                                                                                                                            i32.add
                                                                                                                                            get_local 28
                                                                                                                                            get_local 25
                                                                                                                                            i32.const 32
                                                                                                                                            i32.and
                                                                                                                                            tee_local 22
                                                                                                                                            select
                                                                                                                                            set_local 28
                                                                                                                                            get_local 16
                                                                                                                                            i32.const 11
                                                                                                                                            i32.gt_u
                                                                                                                                            br_if 25 (;@43;)
                                                                                                                                            i32.const 12
                                                                                                                                            get_local 16
                                                                                                                                            i32.sub
                                                                                                                                            i32.eqz
                                                                                                                                            br_if 25 (;@43;)
                                                                                                                                            get_local 16
                                                                                                                                            i32.const -12
                                                                                                                                            i32.add
                                                                                                                                            set_local 15
                                                                                                                                            f64.const 0x1p+4 (;=16;)
                                                                                                                                            set_local 29
                                                                                                                                            loop  ;; label = @69
                                                                                                                                              get_local 29
                                                                                                                                              f64.const 0x1p+4 (;=16;)
                                                                                                                                              f64.mul
                                                                                                                                              set_local 29
                                                                                                                                              get_local 15
                                                                                                                                              i32.const 1
                                                                                                                                              i32.add
                                                                                                                                              tee_local 15
                                                                                                                                              br_if 0 (;@69;)
                                                                                                                                            end
                                                                                                                                            get_local 28
                                                                                                                                            i32.load8_u
                                                                                                                                            i32.const 45
                                                                                                                                            i32.ne
                                                                                                                                            br_if 24 (;@44;)
                                                                                                                                            get_local 29
                                                                                                                                            get_local 27
                                                                                                                                            f64.neg
                                                                                                                                            get_local 29
                                                                                                                                            f64.sub
                                                                                                                                            f64.add
                                                                                                                                            f64.neg
                                                                                                                                            set_local 27
                                                                                                                                            br 25 (;@43;)
                                                                                                                                          end
                                                                                                                                          get_local 26
                                                                                                                                          i32.const 3
                                                                                                                                          i32.add
                                                                                                                                          set_local 16
                                                                                                                                          get_local 23
                                                                                                                                          i32.const 8192
                                                                                                                                          i32.and
                                                                                                                                          br_if 21 (;@46;)
                                                                                                                                          get_local 20
                                                                                                                                          get_local 16
                                                                                                                                          i32.le_s
                                                                                                                                          br_if 21 (;@46;)
                                                                                                                                          get_local 5
                                                                                                                                          i32.const 64
                                                                                                                                          i32.add
                                                                                                                                          i32.const 32
                                                                                                                                          get_local 20
                                                                                                                                          get_local 16
                                                                                                                                          i32.sub
                                                                                                                                          tee_local 22
                                                                                                                                          i32.const 256
                                                                                                                                          get_local 22
                                                                                                                                          i32.const 256
                                                                                                                                          i32.lt_u
                                                                                                                                          tee_local 15
                                                                                                                                          select
                                                                                                                                          call $memset
                                                                                                                                          drop
                                                                                                                                          get_local 0
                                                                                                                                          i32.load
                                                                                                                                          tee_local 19
                                                                                                                                          i32.const 32
                                                                                                                                          i32.and
                                                                                                                                          set_local 17
                                                                                                                                          get_local 15
                                                                                                                                          br_if 19 (;@48;)
                                                                                                                                          get_local 17
                                                                                                                                          i32.eqz
                                                                                                                                          set_local 15
                                                                                                                                          get_local 22
                                                                                                                                          set_local 17
                                                                                                                                          loop  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              get_local 15
                                                                                                                                              i32.const 1
                                                                                                                                              i32.and
                                                                                                                                              i32.eqz
                                                                                                                                              br_if 0 (;@69;)
                                                                                                                                              get_local 5
                                                                                                                                              i32.const 64
                                                                                                                                              i32.add
                                                                                                                                              i32.const 256
                                                                                                                                              get_local 0
                                                                                                                                              call $__fwritex
                                                                                                                                              drop
                                                                                                                                              get_local 0
                                                                                                                                              i32.load
                                                                                                                                              set_local 19
                                                                                                                                            end
                                                                                                                                            get_local 19
                                                                                                                                            i32.const 32
                                                                                                                                            i32.and
                                                                                                                                            tee_local 18
                                                                                                                                            i32.eqz
                                                                                                                                            set_local 15
                                                                                                                                            get_local 17
                                                                                                                                            i32.const -256
                                                                                                                                            i32.add
                                                                                                                                            tee_local 17
                                                                                                                                            i32.const 255
                                                                                                                                            i32.gt_u
                                                                                                                                            br_if 0 (;@68;)
                                                                                                                                          end
                                                                                                                                          get_local 18
                                                                                                                                          br_if 21 (;@46;)
                                                                                                                                          get_local 22
                                                                                                                                          i32.const 255
                                                                                                                                          i32.and
                                                                                                                                          set_local 22
                                                                                                                                          br 20 (;@47;)
                                                                                                                                        end
                                                                                                                                        get_local 16
                                                                                                                                        i32.const 0
                                                                                                                                        i32.lt_s
                                                                                                                                        set_local 15
                                                                                                                                        get_local 27
                                                                                                                                        f64.const 0x0p+0 (;=0;)
                                                                                                                                        f64.eq
                                                                                                                                        br_if 14 (;@52;)
                                                                                                                                        get_local 5
                                                                                                                                        get_local 5
                                                                                                                                        i32.load offset=364
                                                                                                                                        i32.const -28
                                                                                                                                        i32.add
                                                                                                                                        tee_local 21
                                                                                                                                        i32.store offset=364
                                                                                                                                        get_local 27
                                                                                                                                        f64.const 0x1p+28 (;=2.68435e+08;)
                                                                                                                                        f64.mul
                                                                                                                                        set_local 27
                                                                                                                                        br 15 (;@51;)
                                                                                                                                      end
                                                                                                                                      get_local 5
                                                                                                                                      i64.load offset=56
                                                                                                                                      tee_local 31
                                                                                                                                      i64.const -1
                                                                                                                                      i64.le_s
                                                                                                                                      br_if 15 (;@50;)
                                                                                                                                      get_local 23
                                                                                                                                      i32.const 2048
                                                                                                                                      i32.and
                                                                                                                                      br_if 20 (;@45;)
                                                                                                                                      i32.const 4376
                                                                                                                                      i32.const 4374
                                                                                                                                      get_local 23
                                                                                                                                      i32.const 1
                                                                                                                                      i32.and
                                                                                                                                      tee_local 21
                                                                                                                                      select
                                                                                                                                      set_local 32
                                                                                                                                      get_local 31
                                                                                                                                      i64.const 4294967296
                                                                                                                                      i64.ge_u
                                                                                                                                      br_if 54 (;@11;)
                                                                                                                                      br 53 (;@12;)
                                                                                                                                    end
                                                                                                                                    i32.const 0
                                                                                                                                    set_local 21
                                                                                                                                    i32.const 4374
                                                                                                                                    set_local 32
                                                                                                                                    br 58 (;@6;)
                                                                                                                                  end
                                                                                                                                  get_local 5
                                                                                                                                  i32.const 8
                                                                                                                                  i32.add
                                                                                                                                  i32.const 4
                                                                                                                                  i32.add
                                                                                                                                  i32.const 0
                                                                                                                                  i32.store
                                                                                                                                  get_local 5
                                                                                                                                  get_local 5
                                                                                                                                  i64.load offset=56
                                                                                                                                  i64.store32 offset=8
                                                                                                                                  get_local 5
                                                                                                                                  get_local 5
                                                                                                                                  i32.const 8
                                                                                                                                  i32.add
                                                                                                                                  i32.store offset=56
                                                                                                                                  i32.const -1
                                                                                                                                  set_local 16
                                                                                                                                  get_local 5
                                                                                                                                  i32.const 8
                                                                                                                                  i32.add
                                                                                                                                  set_local 18
                                                                                                                                  br 1 (;@62;)
                                                                                                                                end
                                                                                                                                get_local 5
                                                                                                                                i32.load offset=56
                                                                                                                                set_local 18
                                                                                                                                get_local 16
                                                                                                                                i32.eqz
                                                                                                                                br_if 22 (;@40;)
                                                                                                                              end
                                                                                                                              i32.const 0
                                                                                                                              set_local 15
                                                                                                                              get_local 18
                                                                                                                              set_local 17
                                                                                                                              loop  ;; label = @62
                                                                                                                                get_local 17
                                                                                                                                i32.load
                                                                                                                                tee_local 19
                                                                                                                                i32.eqz
                                                                                                                                br_if 21 (;@41;)
                                                                                                                                get_local 5
                                                                                                                                i32.const 4
                                                                                                                                i32.add
                                                                                                                                get_local 19
                                                                                                                                call $wctomb
                                                                                                                                tee_local 19
                                                                                                                                i32.const 0
                                                                                                                                i32.lt_s
                                                                                                                                tee_local 22
                                                                                                                                br_if 20 (;@42;)
                                                                                                                                get_local 19
                                                                                                                                get_local 16
                                                                                                                                get_local 15
                                                                                                                                i32.sub
                                                                                                                                i32.gt_u
                                                                                                                                br_if 20 (;@42;)
                                                                                                                                get_local 17
                                                                                                                                i32.const 4
                                                                                                                                i32.add
                                                                                                                                set_local 17
                                                                                                                                get_local 16
                                                                                                                                get_local 19
                                                                                                                                get_local 15
                                                                                                                                i32.add
                                                                                                                                tee_local 15
                                                                                                                                i32.gt_u
                                                                                                                                br_if 0 (;@62;)
                                                                                                                                br 21 (;@41;)
                                                                                                                              end
                                                                                                                            end
                                                                                                                            get_local 5
                                                                                                                            i32.const 16
                                                                                                                            i32.add
                                                                                                                            i32.const 39
                                                                                                                            i32.add
                                                                                                                            get_local 5
                                                                                                                            i64.load offset=56
                                                                                                                            i64.store8
                                                                                                                            i32.const 0
                                                                                                                            set_local 21
                                                                                                                            i32.const 4374
                                                                                                                            set_local 32
                                                                                                                            i32.const 1
                                                                                                                            set_local 16
                                                                                                                            get_local 7
                                                                                                                            set_local 18
                                                                                                                            get_local 12
                                                                                                                            set_local 15
                                                                                                                            get_local 26
                                                                                                                            set_local 23
                                                                                                                            br 55 (;@5;)
                                                                                                                          end
                                                                                                                          i32.const 0
                                                                                                                          i32.load offset=1524
                                                                                                                          call $strerror
                                                                                                                          set_local 18
                                                                                                                          br 5 (;@54;)
                                                                                                                        end
                                                                                                                        i32.const 0
                                                                                                                        set_local 15
                                                                                                                        get_local 19
                                                                                                                        i32.const 255
                                                                                                                        i32.and
                                                                                                                        tee_local 17
                                                                                                                        i32.const 7
                                                                                                                        i32.gt_u
                                                                                                                        br_if 54 (;@4;)
                                                                                                                        block  ;; label = @59
                                                                                                                          get_local 17
                                                                                                                          br_table 0 (;@59;) 23 (;@36;) 24 (;@35;) 25 (;@34;) 26 (;@33;) 55 (;@4;) 27 (;@32;) 28 (;@31;) 0 (;@59;)
                                                                                                                        end
                                                                                                                        get_local 5
                                                                                                                        i32.load offset=56
                                                                                                                        get_local 14
                                                                                                                        i32.store
                                                                                                                        br 54 (;@4;)
                                                                                                                      end
                                                                                                                      get_local 12
                                                                                                                      set_local 18
                                                                                                                      block  ;; label = @58
                                                                                                                        get_local 5
                                                                                                                        i64.load offset=56
                                                                                                                        tee_local 31
                                                                                                                        i64.eqz
                                                                                                                        br_if 0 (;@58;)
                                                                                                                        get_local 12
                                                                                                                        set_local 18
                                                                                                                        loop  ;; label = @59
                                                                                                                          get_local 18
                                                                                                                          i32.const -1
                                                                                                                          i32.add
                                                                                                                          tee_local 18
                                                                                                                          get_local 31
                                                                                                                          i32.wrap/i64
                                                                                                                          i32.const 7
                                                                                                                          i32.and
                                                                                                                          i32.const 48
                                                                                                                          i32.or
                                                                                                                          i32.store8
                                                                                                                          get_local 31
                                                                                                                          i64.const 3
                                                                                                                          i64.shr_u
                                                                                                                          tee_local 31
                                                                                                                          i64.const 0
                                                                                                                          i64.ne
                                                                                                                          br_if 0 (;@59;)
                                                                                                                        end
                                                                                                                      end
                                                                                                                      i32.const 0
                                                                                                                      set_local 21
                                                                                                                      i32.const 4374
                                                                                                                      set_local 32
                                                                                                                      get_local 23
                                                                                                                      i32.const 8
                                                                                                                      i32.and
                                                                                                                      i32.eqz
                                                                                                                      br_if 48 (;@9;)
                                                                                                                      get_local 16
                                                                                                                      get_local 12
                                                                                                                      get_local 18
                                                                                                                      i32.sub
                                                                                                                      tee_local 15
                                                                                                                      i32.const 1
                                                                                                                      i32.add
                                                                                                                      get_local 16
                                                                                                                      get_local 15
                                                                                                                      i32.gt_s
                                                                                                                      select
                                                                                                                      set_local 16
                                                                                                                      get_local 24
                                                                                                                      br_if 49 (;@8;)
                                                                                                                      br 50 (;@7;)
                                                                                                                    end
                                                                                                                    get_local 16
                                                                                                                    i32.const 8
                                                                                                                    get_local 16
                                                                                                                    i32.const 8
                                                                                                                    i32.gt_u
                                                                                                                    select
                                                                                                                    set_local 16
                                                                                                                    get_local 23
                                                                                                                    i32.const 8
                                                                                                                    i32.or
                                                                                                                    set_local 23
                                                                                                                    i32.const 120
                                                                                                                    set_local 25
                                                                                                                  end
                                                                                                                  i32.const 0
                                                                                                                  set_local 21
                                                                                                                  i32.const 4374
                                                                                                                  set_local 32
                                                                                                                  block  ;; label = @56
                                                                                                                    get_local 5
                                                                                                                    i64.load offset=56
                                                                                                                    tee_local 31
                                                                                                                    i64.eqz
                                                                                                                    br_if 0 (;@56;)
                                                                                                                    get_local 25
                                                                                                                    i32.const 32
                                                                                                                    i32.and
                                                                                                                    set_local 15
                                                                                                                    get_local 12
                                                                                                                    set_local 18
                                                                                                                    loop  ;; label = @57
                                                                                                                      get_local 18
                                                                                                                      i32.const -1
                                                                                                                      i32.add
                                                                                                                      tee_local 18
                                                                                                                      get_local 31
                                                                                                                      i32.wrap/i64
                                                                                                                      i32.const 15
                                                                                                                      i32.and
                                                                                                                      i32.const 5008
                                                                                                                      i32.add
                                                                                                                      i32.load8_u
                                                                                                                      get_local 15
                                                                                                                      i32.or
                                                                                                                      i32.store8
                                                                                                                      get_local 31
                                                                                                                      i64.const 4
                                                                                                                      i64.shr_u
                                                                                                                      tee_local 31
                                                                                                                      i64.const 0
                                                                                                                      i64.ne
                                                                                                                      br_if 0 (;@57;)
                                                                                                                    end
                                                                                                                    get_local 23
                                                                                                                    i32.const 8
                                                                                                                    i32.and
                                                                                                                    i32.eqz
                                                                                                                    br_if 47 (;@9;)
                                                                                                                    get_local 5
                                                                                                                    i64.load offset=56
                                                                                                                    i64.eqz
                                                                                                                    br_if 47 (;@9;)
                                                                                                                    get_local 25
                                                                                                                    i32.const 4
                                                                                                                    i32.shr_s
                                                                                                                    i32.const 4374
                                                                                                                    i32.add
                                                                                                                    set_local 32
                                                                                                                    i32.const 2
                                                                                                                    set_local 21
                                                                                                                    get_local 24
                                                                                                                    br_if 48 (;@8;)
                                                                                                                    br 49 (;@7;)
                                                                                                                  end
                                                                                                                  get_local 12
                                                                                                                  set_local 18
                                                                                                                  get_local 24
                                                                                                                  br_if 47 (;@8;)
                                                                                                                  br 48 (;@7;)
                                                                                                                end
                                                                                                                get_local 5
                                                                                                                i32.load offset=56
                                                                                                                tee_local 15
                                                                                                                i32.const 4384
                                                                                                                get_local 15
                                                                                                                select
                                                                                                                set_local 18
                                                                                                              end
                                                                                                              i32.const 0
                                                                                                              set_local 21
                                                                                                              get_local 18
                                                                                                              get_local 18
                                                                                                              i32.const 2147483647
                                                                                                              get_local 16
                                                                                                              get_local 16
                                                                                                              i32.const 0
                                                                                                              i32.lt_s
                                                                                                              select
                                                                                                              call $strnlen
                                                                                                              tee_local 19
                                                                                                              i32.add
                                                                                                              set_local 15
                                                                                                              i32.const 4374
                                                                                                              set_local 32
                                                                                                              get_local 16
                                                                                                              i32.const -1
                                                                                                              i32.le_s
                                                                                                              br_if 4 (;@49;)
                                                                                                              get_local 26
                                                                                                              set_local 23
                                                                                                              get_local 19
                                                                                                              set_local 16
                                                                                                              br 48 (;@5;)
                                                                                                            end
                                                                                                            i32.const 0
                                                                                                            set_local 21
                                                                                                            i32.const 4374
                                                                                                            set_local 32
                                                                                                            get_local 5
                                                                                                            i64.load offset=56
                                                                                                            tee_local 31
                                                                                                            i64.const 4294967296
                                                                                                            i64.lt_u
                                                                                                            br_if 40 (;@12;)
                                                                                                            br 41 (;@11;)
                                                                                                          end
                                                                                                          get_local 5
                                                                                                          i32.load offset=364
                                                                                                          set_local 21
                                                                                                        end
                                                                                                        i32.const 6
                                                                                                        get_local 16
                                                                                                        get_local 15
                                                                                                        select
                                                                                                        set_local 24
                                                                                                        get_local 5
                                                                                                        i32.const 368
                                                                                                        i32.add
                                                                                                        get_local 10
                                                                                                        get_local 21
                                                                                                        i32.const 0
                                                                                                        i32.lt_s
                                                                                                        select
                                                                                                        tee_local 32
                                                                                                        set_local 17
                                                                                                        loop  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              get_local 27
                                                                                                              f64.const 0x1p+32 (;=4.29497e+09;)
                                                                                                              f64.lt
                                                                                                              get_local 27
                                                                                                              f64.const 0x0p+0 (;=0;)
                                                                                                              f64.ge
                                                                                                              i32.and
                                                                                                              br_if 0 (;@53;)
                                                                                                              i32.const 0
                                                                                                              set_local 15
                                                                                                              br 1 (;@52;)
                                                                                                            end
                                                                                                            get_local 27
                                                                                                            i32.trunc_u/f64
                                                                                                            set_local 15
                                                                                                          end
                                                                                                          get_local 17
                                                                                                          get_local 15
                                                                                                          i32.store
                                                                                                          get_local 17
                                                                                                          i32.const 4
                                                                                                          i32.add
                                                                                                          set_local 17
                                                                                                          get_local 27
                                                                                                          get_local 15
                                                                                                          f64.convert_u/i32
                                                                                                          f64.sub
                                                                                                          f64.const 0x1.dcd65p+29 (;=1e+09;)
                                                                                                          f64.mul
                                                                                                          tee_local 27
                                                                                                          f64.const 0x0p+0 (;=0;)
                                                                                                          f64.ne
                                                                                                          br_if 0 (;@51;)
                                                                                                        end
                                                                                                        block  ;; label = @51
                                                                                                          get_local 21
                                                                                                          i32.const 1
                                                                                                          i32.lt_s
                                                                                                          br_if 0 (;@51;)
                                                                                                          get_local 32
                                                                                                          set_local 19
                                                                                                          i32.const 0
                                                                                                          set_local 34
                                                                                                          br 34 (;@17;)
                                                                                                        end
                                                                                                        get_local 17
                                                                                                        set_local 35
                                                                                                        get_local 32
                                                                                                        set_local 19
                                                                                                        i32.const 0
                                                                                                        set_local 15
                                                                                                        br 34 (;@16;)
                                                                                                      end
                                                                                                      get_local 5
                                                                                                      i64.const 0
                                                                                                      get_local 31
                                                                                                      i64.sub
                                                                                                      tee_local 31
                                                                                                      i64.store offset=56
                                                                                                      i32.const 1
                                                                                                      set_local 21
                                                                                                      i32.const 4374
                                                                                                      set_local 32
                                                                                                      get_local 31
                                                                                                      i64.const 4294967296
                                                                                                      i64.ge_u
                                                                                                      br_if 38 (;@11;)
                                                                                                      br 37 (;@12;)
                                                                                                    end
                                                                                                    get_local 26
                                                                                                    set_local 23
                                                                                                    get_local 19
                                                                                                    set_local 16
                                                                                                    get_local 15
                                                                                                    i32.load8_u
                                                                                                    i32.eqz
                                                                                                    br_if 43 (;@5;)
                                                                                                    br 45 (;@3;)
                                                                                                  end
                                                                                                  get_local 17
                                                                                                  br_if 1 (;@46;)
                                                                                                end
                                                                                                get_local 5
                                                                                                i32.const 64
                                                                                                i32.add
                                                                                                get_local 22
                                                                                                get_local 0
                                                                                                call $__fwritex
                                                                                                drop
                                                                                              end
                                                                                              block  ;; label = @46
                                                                                                get_local 0
                                                                                                i32.load
                                                                                                tee_local 15
                                                                                                i32.const 32
                                                                                                i32.and
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 28
                                                                                                get_local 26
                                                                                                get_local 0
                                                                                                call $__fwritex
                                                                                                drop
                                                                                                get_local 0
                                                                                                i32.load
                                                                                                set_local 15
                                                                                              end
                                                                                              block  ;; label = @46
                                                                                                get_local 15
                                                                                                i32.const 32
                                                                                                i32.and
                                                                                                br_if 0 (;@46;)
                                                                                                i32.const 5051
                                                                                                i32.const 5055
                                                                                                get_local 25
                                                                                                i32.const 32
                                                                                                i32.and
                                                                                                i32.const 5
                                                                                                i32.shr_u
                                                                                                tee_local 15
                                                                                                select
                                                                                                i32.const 5043
                                                                                                i32.const 5047
                                                                                                get_local 15
                                                                                                select
                                                                                                get_local 27
                                                                                                get_local 27
                                                                                                f64.ne
                                                                                                select
                                                                                                i32.const 3
                                                                                                get_local 0
                                                                                                call $__fwritex
                                                                                                drop
                                                                                              end
                                                                                              block  ;; label = @46
                                                                                                get_local 23
                                                                                                i32.const 73728
                                                                                                i32.and
                                                                                                i32.const 8192
                                                                                                i32.ne
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 20
                                                                                                get_local 16
                                                                                                i32.le_s
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 5
                                                                                                i32.const 64
                                                                                                i32.add
                                                                                                i32.const 32
                                                                                                get_local 20
                                                                                                get_local 16
                                                                                                i32.sub
                                                                                                tee_local 22
                                                                                                i32.const 256
                                                                                                get_local 22
                                                                                                i32.const 256
                                                                                                i32.lt_u
                                                                                                tee_local 15
                                                                                                select
                                                                                                call $memset
                                                                                                drop
                                                                                                get_local 0
                                                                                                i32.load
                                                                                                tee_local 19
                                                                                                i32.const 32
                                                                                                i32.and
                                                                                                set_local 17
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    get_local 15
                                                                                                    br_if 0 (;@48;)
                                                                                                    get_local 17
                                                                                                    i32.eqz
                                                                                                    set_local 15
                                                                                                    get_local 22
                                                                                                    set_local 17
                                                                                                    loop  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        get_local 15
                                                                                                        i32.const 1
                                                                                                        i32.and
                                                                                                        i32.eqz
                                                                                                        br_if 0 (;@50;)
                                                                                                        get_local 5
                                                                                                        i32.const 64
                                                                                                        i32.add
                                                                                                        i32.const 256
                                                                                                        get_local 0
                                                                                                        call $__fwritex
                                                                                                        drop
                                                                                                        get_local 0
                                                                                                        i32.load
                                                                                                        set_local 19
                                                                                                      end
                                                                                                      get_local 19
                                                                                                      i32.const 32
                                                                                                      i32.and
                                                                                                      tee_local 18
                                                                                                      i32.eqz
                                                                                                      set_local 15
                                                                                                      get_local 17
                                                                                                      i32.const -256
                                                                                                      i32.add
                                                                                                      tee_local 17
                                                                                                      i32.const 255
                                                                                                      i32.gt_u
                                                                                                      br_if 0 (;@49;)
                                                                                                    end
                                                                                                    get_local 18
                                                                                                    br_if 2 (;@46;)
                                                                                                    get_local 22
                                                                                                    i32.const 255
                                                                                                    i32.and
                                                                                                    set_local 22
                                                                                                    br 1 (;@47;)
                                                                                                  end
                                                                                                  get_local 17
                                                                                                  br_if 1 (;@46;)
                                                                                                end
                                                                                                get_local 5
                                                                                                i32.const 64
                                                                                                i32.add
                                                                                                get_local 22
                                                                                                get_local 0
                                                                                                call $__fwritex
                                                                                                drop
                                                                                              end
                                                                                              get_local 20
                                                                                              get_local 16
                                                                                              get_local 20
                                                                                              get_local 16
                                                                                              i32.gt_s
                                                                                              select
                                                                                              set_local 15
                                                                                              br 30 (;@15;)
                                                                                            end
                                                                                            i32.const 1
                                                                                            set_local 21
                                                                                            i32.const 4375
                                                                                            set_local 32
                                                                                            get_local 31
                                                                                            i64.const 4294967296
                                                                                            i64.lt_u
                                                                                            br_if 32 (;@12;)
                                                                                            br 33 (;@11;)
                                                                                          end
                                                                                          get_local 27
                                                                                          get_local 29
                                                                                          f64.add
                                                                                          get_local 29
                                                                                          f64.sub
                                                                                          set_local 27
                                                                                        end
                                                                                        get_local 11
                                                                                        set_local 19
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            get_local 5
                                                                                            i32.load offset=364
                                                                                            tee_local 24
                                                                                            get_local 24
                                                                                            i32.const 31
                                                                                            i32.shr_s
                                                                                            tee_local 15
                                                                                            i32.add
                                                                                            get_local 15
                                                                                            i32.xor
                                                                                            tee_local 15
                                                                                            i32.eqz
                                                                                            br_if 0 (;@44;)
                                                                                            i32.const 0
                                                                                            set_local 17
                                                                                            loop  ;; label = @45
                                                                                              get_local 5
                                                                                              i32.const 324
                                                                                              i32.add
                                                                                              get_local 17
                                                                                              i32.add
                                                                                              i32.const 11
                                                                                              i32.add
                                                                                              get_local 15
                                                                                              get_local 15
                                                                                              i32.const 10
                                                                                              i32.div_u
                                                                                              tee_local 19
                                                                                              i32.const 10
                                                                                              i32.mul
                                                                                              i32.sub
                                                                                              i32.const 48
                                                                                              i32.or
                                                                                              i32.store8
                                                                                              get_local 17
                                                                                              i32.const -1
                                                                                              i32.add
                                                                                              set_local 17
                                                                                              get_local 15
                                                                                              i32.const 9
                                                                                              i32.gt_u
                                                                                              set_local 18
                                                                                              get_local 19
                                                                                              set_local 15
                                                                                              get_local 18
                                                                                              br_if 0 (;@45;)
                                                                                            end
                                                                                            get_local 5
                                                                                            i32.const 324
                                                                                            i32.add
                                                                                            get_local 17
                                                                                            i32.add
                                                                                            i32.const 12
                                                                                            i32.add
                                                                                            set_local 19
                                                                                            get_local 17
                                                                                            br_if 1 (;@43;)
                                                                                          end
                                                                                          get_local 19
                                                                                          i32.const -1
                                                                                          i32.add
                                                                                          tee_local 19
                                                                                          i32.const 48
                                                                                          i32.store8
                                                                                        end
                                                                                        get_local 26
                                                                                        i32.const 2
                                                                                        i32.or
                                                                                        set_local 21
                                                                                        get_local 19
                                                                                        i32.const -2
                                                                                        i32.add
                                                                                        tee_local 26
                                                                                        get_local 25
                                                                                        i32.const 15
                                                                                        i32.add
                                                                                        i32.store8
                                                                                        get_local 19
                                                                                        i32.const -1
                                                                                        i32.add
                                                                                        i32.const 45
                                                                                        i32.const 43
                                                                                        get_local 24
                                                                                        i32.const 0
                                                                                        i32.lt_s
                                                                                        select
                                                                                        i32.store8
                                                                                        get_local 23
                                                                                        i32.const 8
                                                                                        i32.and
                                                                                        set_local 19
                                                                                        get_local 5
                                                                                        i32.const 336
                                                                                        i32.add
                                                                                        set_local 17
                                                                                        loop  ;; label = @43
                                                                                          get_local 17
                                                                                          set_local 15
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              get_local 27
                                                                                              f64.abs
                                                                                              f64.const 0x1p+31 (;=2.14748e+09;)
                                                                                              f64.lt
                                                                                              br_if 0 (;@45;)
                                                                                              i32.const -2147483648
                                                                                              set_local 17
                                                                                              br 1 (;@44;)
                                                                                            end
                                                                                            get_local 27
                                                                                            i32.trunc_s/f64
                                                                                            set_local 17
                                                                                          end
                                                                                          get_local 15
                                                                                          get_local 17
                                                                                          i32.const 5008
                                                                                          i32.add
                                                                                          i32.load8_u
                                                                                          get_local 22
                                                                                          i32.or
                                                                                          i32.store8
                                                                                          get_local 27
                                                                                          get_local 17
                                                                                          f64.convert_s/i32
                                                                                          f64.sub
                                                                                          f64.const 0x1p+4 (;=16;)
                                                                                          f64.mul
                                                                                          set_local 27
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                get_local 15
                                                                                                i32.const 1
                                                                                                i32.add
                                                                                                tee_local 17
                                                                                                get_local 5
                                                                                                i32.const 336
                                                                                                i32.add
                                                                                                i32.sub
                                                                                                i32.const 1
                                                                                                i32.ne
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 19
                                                                                                br_if 1 (;@45;)
                                                                                                get_local 16
                                                                                                i32.const 0
                                                                                                i32.gt_s
                                                                                                br_if 1 (;@45;)
                                                                                                get_local 27
                                                                                                f64.const 0x0p+0 (;=0;)
                                                                                                f64.ne
                                                                                                br_if 1 (;@45;)
                                                                                              end
                                                                                              get_local 27
                                                                                              f64.const 0x0p+0 (;=0;)
                                                                                              f64.ne
                                                                                              br_if 2 (;@43;)
                                                                                              br 1 (;@44;)
                                                                                            end
                                                                                            get_local 15
                                                                                            i32.const 1
                                                                                            i32.add
                                                                                            i32.const 46
                                                                                            i32.store8
                                                                                            get_local 15
                                                                                            i32.const 2
                                                                                            i32.add
                                                                                            set_local 17
                                                                                            get_local 27
                                                                                            f64.const 0x0p+0 (;=0;)
                                                                                            f64.ne
                                                                                            br_if 1 (;@43;)
                                                                                          end
                                                                                        end
                                                                                        i32.const -1
                                                                                        set_local 15
                                                                                        i32.const 2147483645
                                                                                        get_local 21
                                                                                        i32.sub
                                                                                        get_local 11
                                                                                        get_local 26
                                                                                        i32.sub
                                                                                        tee_local 22
                                                                                        i32.sub
                                                                                        get_local 16
                                                                                        i32.lt_s
                                                                                        br_if 27 (;@15;)
                                                                                        get_local 22
                                                                                        get_local 21
                                                                                        i32.add
                                                                                        get_local 16
                                                                                        i32.const 2
                                                                                        i32.add
                                                                                        get_local 17
                                                                                        get_local 5
                                                                                        i32.const 336
                                                                                        i32.add
                                                                                        i32.sub
                                                                                        tee_local 25
                                                                                        get_local 8
                                                                                        get_local 17
                                                                                        i32.add
                                                                                        get_local 16
                                                                                        i32.lt_s
                                                                                        select
                                                                                        get_local 25
                                                                                        get_local 16
                                                                                        select
                                                                                        tee_local 37
                                                                                        i32.add
                                                                                        set_local 16
                                                                                        get_local 23
                                                                                        i32.const 73728
                                                                                        i32.and
                                                                                        tee_local 24
                                                                                        br_if 5 (;@37;)
                                                                                        get_local 20
                                                                                        get_local 16
                                                                                        i32.le_s
                                                                                        br_if 5 (;@37;)
                                                                                        get_local 5
                                                                                        i32.const 64
                                                                                        i32.add
                                                                                        i32.const 32
                                                                                        get_local 20
                                                                                        get_local 16
                                                                                        i32.sub
                                                                                        tee_local 23
                                                                                        i32.const 256
                                                                                        get_local 23
                                                                                        i32.const 256
                                                                                        i32.lt_u
                                                                                        tee_local 15
                                                                                        select
                                                                                        call $memset
                                                                                        drop
                                                                                        get_local 0
                                                                                        i32.load
                                                                                        tee_local 19
                                                                                        i32.const 32
                                                                                        i32.and
                                                                                        set_local 17
                                                                                        get_local 15
                                                                                        br_if 3 (;@39;)
                                                                                        get_local 17
                                                                                        i32.eqz
                                                                                        set_local 15
                                                                                        get_local 23
                                                                                        set_local 17
                                                                                        loop  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            get_local 15
                                                                                            i32.const 1
                                                                                            i32.and
                                                                                            i32.eqz
                                                                                            br_if 0 (;@44;)
                                                                                            get_local 5
                                                                                            i32.const 64
                                                                                            i32.add
                                                                                            i32.const 256
                                                                                            get_local 0
                                                                                            call $__fwritex
                                                                                            drop
                                                                                            get_local 0
                                                                                            i32.load
                                                                                            set_local 19
                                                                                          end
                                                                                          get_local 19
                                                                                          i32.const 32
                                                                                          i32.and
                                                                                          tee_local 18
                                                                                          i32.eqz
                                                                                          set_local 15
                                                                                          get_local 17
                                                                                          i32.const -256
                                                                                          i32.add
                                                                                          tee_local 17
                                                                                          i32.const 255
                                                                                          i32.gt_u
                                                                                          br_if 0 (;@43;)
                                                                                        end
                                                                                        get_local 18
                                                                                        br_if 5 (;@37;)
                                                                                        get_local 23
                                                                                        i32.const 255
                                                                                        i32.and
                                                                                        set_local 23
                                                                                        br 4 (;@38;)
                                                                                      end
                                                                                      get_local 22
                                                                                      br_if 39 (;@2;)
                                                                                    end
                                                                                    get_local 15
                                                                                    i32.const 0
                                                                                    i32.lt_s
                                                                                    br_if 37 (;@3;)
                                                                                    get_local 23
                                                                                    i32.const 73728
                                                                                    i32.and
                                                                                    tee_local 23
                                                                                    br_if 27 (;@13;)
                                                                                    br 26 (;@14;)
                                                                                  end
                                                                                  i32.const 0
                                                                                  set_local 15
                                                                                  get_local 23
                                                                                  i32.const 73728
                                                                                  i32.and
                                                                                  tee_local 23
                                                                                  i32.eqz
                                                                                  br_if 25 (;@14;)
                                                                                  br 26 (;@13;)
                                                                                end
                                                                                get_local 17
                                                                                br_if 1 (;@37;)
                                                                              end
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              get_local 23
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            block  ;; label = @37
                                                                              get_local 0
                                                                              i32.load8_u
                                                                              i32.const 32
                                                                              i32.and
                                                                              br_if 0 (;@37;)
                                                                              get_local 28
                                                                              get_local 21
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            block  ;; label = @37
                                                                              get_local 24
                                                                              i32.const 65536
                                                                              i32.ne
                                                                              br_if 0 (;@37;)
                                                                              get_local 20
                                                                              get_local 16
                                                                              i32.le_s
                                                                              br_if 0 (;@37;)
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              i32.const 48
                                                                              get_local 20
                                                                              get_local 16
                                                                              i32.sub
                                                                              tee_local 23
                                                                              i32.const 256
                                                                              get_local 23
                                                                              i32.const 256
                                                                              i32.lt_u
                                                                              tee_local 15
                                                                              select
                                                                              call $memset
                                                                              drop
                                                                              get_local 0
                                                                              i32.load
                                                                              tee_local 19
                                                                              i32.const 32
                                                                              i32.and
                                                                              set_local 17
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  get_local 15
                                                                                  br_if 0 (;@39;)
                                                                                  get_local 17
                                                                                  i32.eqz
                                                                                  set_local 15
                                                                                  get_local 23
                                                                                  set_local 17
                                                                                  loop  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      get_local 15
                                                                                      i32.const 1
                                                                                      i32.and
                                                                                      i32.eqz
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 5
                                                                                      i32.const 64
                                                                                      i32.add
                                                                                      i32.const 256
                                                                                      get_local 0
                                                                                      call $__fwritex
                                                                                      drop
                                                                                      get_local 0
                                                                                      i32.load
                                                                                      set_local 19
                                                                                    end
                                                                                    get_local 19
                                                                                    i32.const 32
                                                                                    i32.and
                                                                                    tee_local 18
                                                                                    i32.eqz
                                                                                    set_local 15
                                                                                    get_local 17
                                                                                    i32.const -256
                                                                                    i32.add
                                                                                    tee_local 17
                                                                                    i32.const 255
                                                                                    i32.gt_u
                                                                                    br_if 0 (;@40;)
                                                                                  end
                                                                                  get_local 18
                                                                                  br_if 2 (;@37;)
                                                                                  get_local 23
                                                                                  i32.const 255
                                                                                  i32.and
                                                                                  set_local 23
                                                                                  br 1 (;@38;)
                                                                                end
                                                                                get_local 17
                                                                                br_if 1 (;@37;)
                                                                              end
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              get_local 23
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            block  ;; label = @37
                                                                              get_local 0
                                                                              i32.load8_u
                                                                              i32.const 32
                                                                              i32.and
                                                                              br_if 0 (;@37;)
                                                                              get_local 5
                                                                              i32.const 336
                                                                              i32.add
                                                                              get_local 25
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            block  ;; label = @37
                                                                              get_local 37
                                                                              get_local 25
                                                                              i32.sub
                                                                              tee_local 23
                                                                              i32.const 1
                                                                              i32.lt_s
                                                                              br_if 0 (;@37;)
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              i32.const 48
                                                                              get_local 23
                                                                              i32.const 256
                                                                              get_local 23
                                                                              i32.const 256
                                                                              i32.lt_u
                                                                              tee_local 15
                                                                              select
                                                                              call $memset
                                                                              drop
                                                                              get_local 0
                                                                              i32.load
                                                                              tee_local 19
                                                                              i32.const 32
                                                                              i32.and
                                                                              set_local 17
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  get_local 15
                                                                                  br_if 0 (;@39;)
                                                                                  get_local 17
                                                                                  i32.eqz
                                                                                  set_local 15
                                                                                  get_local 23
                                                                                  set_local 17
                                                                                  loop  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      get_local 15
                                                                                      i32.const 1
                                                                                      i32.and
                                                                                      i32.eqz
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 5
                                                                                      i32.const 64
                                                                                      i32.add
                                                                                      i32.const 256
                                                                                      get_local 0
                                                                                      call $__fwritex
                                                                                      drop
                                                                                      get_local 0
                                                                                      i32.load
                                                                                      set_local 19
                                                                                    end
                                                                                    get_local 19
                                                                                    i32.const 32
                                                                                    i32.and
                                                                                    tee_local 18
                                                                                    i32.eqz
                                                                                    set_local 15
                                                                                    get_local 17
                                                                                    i32.const -256
                                                                                    i32.add
                                                                                    tee_local 17
                                                                                    i32.const 255
                                                                                    i32.gt_u
                                                                                    br_if 0 (;@40;)
                                                                                  end
                                                                                  get_local 18
                                                                                  br_if 2 (;@37;)
                                                                                  get_local 23
                                                                                  i32.const 255
                                                                                  i32.and
                                                                                  set_local 23
                                                                                  br 1 (;@38;)
                                                                                end
                                                                                get_local 17
                                                                                br_if 1 (;@37;)
                                                                              end
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              get_local 23
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            block  ;; label = @37
                                                                              get_local 0
                                                                              i32.load8_u
                                                                              i32.const 32
                                                                              i32.and
                                                                              br_if 0 (;@37;)
                                                                              get_local 26
                                                                              get_local 22
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            block  ;; label = @37
                                                                              get_local 24
                                                                              i32.const 8192
                                                                              i32.ne
                                                                              br_if 0 (;@37;)
                                                                              get_local 20
                                                                              get_local 16
                                                                              i32.le_s
                                                                              br_if 0 (;@37;)
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              i32.const 32
                                                                              get_local 20
                                                                              get_local 16
                                                                              i32.sub
                                                                              tee_local 22
                                                                              i32.const 256
                                                                              get_local 22
                                                                              i32.const 256
                                                                              i32.lt_u
                                                                              tee_local 15
                                                                              select
                                                                              call $memset
                                                                              drop
                                                                              get_local 0
                                                                              i32.load
                                                                              tee_local 19
                                                                              i32.const 32
                                                                              i32.and
                                                                              set_local 17
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  get_local 15
                                                                                  br_if 0 (;@39;)
                                                                                  get_local 17
                                                                                  i32.eqz
                                                                                  set_local 15
                                                                                  get_local 22
                                                                                  set_local 17
                                                                                  loop  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      get_local 15
                                                                                      i32.const 1
                                                                                      i32.and
                                                                                      i32.eqz
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 5
                                                                                      i32.const 64
                                                                                      i32.add
                                                                                      i32.const 256
                                                                                      get_local 0
                                                                                      call $__fwritex
                                                                                      drop
                                                                                      get_local 0
                                                                                      i32.load
                                                                                      set_local 19
                                                                                    end
                                                                                    get_local 19
                                                                                    i32.const 32
                                                                                    i32.and
                                                                                    tee_local 18
                                                                                    i32.eqz
                                                                                    set_local 15
                                                                                    get_local 17
                                                                                    i32.const -256
                                                                                    i32.add
                                                                                    tee_local 17
                                                                                    i32.const 255
                                                                                    i32.gt_u
                                                                                    br_if 0 (;@40;)
                                                                                  end
                                                                                  get_local 18
                                                                                  br_if 2 (;@37;)
                                                                                  get_local 22
                                                                                  i32.const 255
                                                                                  i32.and
                                                                                  set_local 22
                                                                                  br 1 (;@38;)
                                                                                end
                                                                                get_local 17
                                                                                br_if 1 (;@37;)
                                                                              end
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              get_local 22
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                            end
                                                                            get_local 20
                                                                            get_local 16
                                                                            get_local 20
                                                                            get_local 16
                                                                            i32.gt_s
                                                                            select
                                                                            set_local 15
                                                                            br 21 (;@15;)
                                                                          end
                                                                          get_local 5
                                                                          i32.load offset=56
                                                                          get_local 14
                                                                          i32.store
                                                                          br 31 (;@4;)
                                                                        end
                                                                        get_local 5
                                                                        i32.load offset=56
                                                                        get_local 14
                                                                        i64.extend_s/i32
                                                                        i64.store
                                                                        br 30 (;@4;)
                                                                      end
                                                                      get_local 5
                                                                      i32.load offset=56
                                                                      get_local 14
                                                                      i32.store16
                                                                      br 29 (;@4;)
                                                                    end
                                                                    get_local 5
                                                                    i32.load offset=56
                                                                    get_local 14
                                                                    i32.store8
                                                                    br 28 (;@4;)
                                                                  end
                                                                  get_local 5
                                                                  i32.load offset=56
                                                                  get_local 14
                                                                  i32.store
                                                                  br 27 (;@4;)
                                                                end
                                                                get_local 5
                                                                i32.load offset=56
                                                                get_local 14
                                                                i64.extend_s/i32
                                                                i64.store
                                                                br 26 (;@4;)
                                                              end
                                                              get_local 0
                                                              br_if 28 (;@1;)
                                                              get_local 13
                                                              i32.eqz
                                                              br_if 0 (;@29;)
                                                              i32.const 1
                                                              set_local 15
                                                              get_local 4
                                                              i32.load offset=4
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 9 (;@20;)
                                                              get_local 3
                                                              i32.const 8
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=8
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 1 (;@28;)
                                                              get_local 3
                                                              i32.const 16
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=12
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                              get_local 3
                                                              i32.const 24
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=16
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 3 (;@26;)
                                                              get_local 3
                                                              i32.const 32
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=20
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 4 (;@25;)
                                                              get_local 3
                                                              i32.const 40
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=24
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 5 (;@24;)
                                                              get_local 3
                                                              i32.const 48
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=28
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 6 (;@23;)
                                                              get_local 3
                                                              i32.const 56
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=32
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 7 (;@22;)
                                                              get_local 3
                                                              i32.const 64
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              get_local 4
                                                              i32.load offset=36
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 8 (;@21;)
                                                              get_local 3
                                                              i32.const 72
                                                              i32.add
                                                              get_local 1
                                                              get_local 2
                                                              call $pop_arg
                                                              br 10 (;@19;)
                                                            end
                                                            i32.const 0
                                                            set_local 14
                                                            br 27 (;@1;)
                                                          end
                                                          i32.const 2
                                                          set_local 15
                                                          br 7 (;@20;)
                                                        end
                                                        i32.const 3
                                                        set_local 15
                                                        br 6 (;@20;)
                                                      end
                                                      i32.const 4
                                                      set_local 15
                                                      br 5 (;@20;)
                                                    end
                                                    i32.const 5
                                                    set_local 15
                                                    br 4 (;@20;)
                                                  end
                                                  i32.const 6
                                                  set_local 15
                                                  br 3 (;@20;)
                                                end
                                                i32.const 7
                                                set_local 15
                                                br 2 (;@20;)
                                              end
                                              i32.const 8
                                              set_local 15
                                              br 1 (;@20;)
                                            end
                                            i32.const 9
                                            set_local 15
                                          end
                                          get_local 4
                                          get_local 15
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          set_local 1
                                          loop  ;; label = @20
                                            get_local 1
                                            i32.load
                                            br_if 2 (;@18;)
                                            get_local 1
                                            i32.const 4
                                            i32.add
                                            set_local 1
                                            get_local 15
                                            i32.const 1
                                            i32.add
                                            tee_local 15
                                            i32.const 9
                                            i32.le_u
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        i32.const 1
                                        set_local 14
                                        br 17 (;@1;)
                                      end
                                      i32.const 0
                                      i32.const 28
                                      i32.store offset=1524
                                      br 15 (;@2;)
                                    end
                                    i32.const 1
                                    set_local 15
                                  end
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  get_local 15
                                                                                                  br_table 0 (;@47;) 1 (;@46;) 1 (;@46;)
                                                                                                end
                                                                                                get_local 21
                                                                                                i32.const -1
                                                                                                i32.gt_s
                                                                                                br_if 1 (;@45;)
                                                                                                get_local 24
                                                                                                i32.const 25
                                                                                                i32.add
                                                                                                i32.const 9
                                                                                                i32.div_u
                                                                                                i32.const 1
                                                                                                i32.add
                                                                                                set_local 36
                                                                                                i32.const 1
                                                                                                set_local 34
                                                                                                br 22 (;@24;)
                                                                                              end
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  get_local 34
                                                                                                  br_table 0 (;@47;) 1 (;@46;) 3 (;@44;) 4 (;@43;) 7 (;@40;) 7 (;@40;)
                                                                                                end
                                                                                                get_local 21
                                                                                                i32.const 29
                                                                                                get_local 21
                                                                                                i32.const 29
                                                                                                i32.lt_s
                                                                                                select
                                                                                                set_local 18
                                                                                                block  ;; label = @47
                                                                                                  get_local 17
                                                                                                  i32.const -4
                                                                                                  i32.add
                                                                                                  tee_local 15
                                                                                                  get_local 19
                                                                                                  i32.lt_u
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 18
                                                                                                  i64.extend_u/i32
                                                                                                  set_local 33
                                                                                                  i64.const 0
                                                                                                  set_local 31
                                                                                                  loop  ;; label = @48
                                                                                                    get_local 15
                                                                                                    get_local 15
                                                                                                    i64.load32_u
                                                                                                    get_local 33
                                                                                                    i64.shl
                                                                                                    get_local 31
                                                                                                    i64.const 4294967295
                                                                                                    i64.and
                                                                                                    i64.add
                                                                                                    tee_local 31
                                                                                                    get_local 31
                                                                                                    i64.const 1000000000
                                                                                                    i64.div_u
                                                                                                    tee_local 31
                                                                                                    i64.const 1000000000
                                                                                                    i64.mul
                                                                                                    i64.sub
                                                                                                    i64.store32
                                                                                                    get_local 15
                                                                                                    i32.const -4
                                                                                                    i32.add
                                                                                                    tee_local 15
                                                                                                    get_local 19
                                                                                                    i32.ge_u
                                                                                                    br_if 0 (;@48;)
                                                                                                  end
                                                                                                  get_local 31
                                                                                                  i32.wrap/i64
                                                                                                  tee_local 15
                                                                                                  i32.eqz
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 19
                                                                                                  i32.const -4
                                                                                                  i32.add
                                                                                                  tee_local 19
                                                                                                  get_local 15
                                                                                                  i32.store
                                                                                                end
                                                                                                block  ;; label = @47
                                                                                                  loop  ;; label = @48
                                                                                                    get_local 17
                                                                                                    tee_local 35
                                                                                                    get_local 19
                                                                                                    i32.le_u
                                                                                                    br_if 1 (;@47;)
                                                                                                    get_local 35
                                                                                                    i32.const -4
                                                                                                    i32.add
                                                                                                    tee_local 17
                                                                                                    i32.load
                                                                                                    i32.eqz
                                                                                                    br_if 0 (;@48;)
                                                                                                  end
                                                                                                end
                                                                                                get_local 5
                                                                                                get_local 5
                                                                                                i32.load offset=364
                                                                                                get_local 18
                                                                                                i32.sub
                                                                                                tee_local 21
                                                                                                i32.store offset=364
                                                                                                get_local 35
                                                                                                set_local 17
                                                                                                get_local 21
                                                                                                i32.const 0
                                                                                                i32.gt_s
                                                                                                br_if 15 (;@31;)
                                                                                                br 20 (;@26;)
                                                                                              end
                                                                                              i32.const 0
                                                                                              get_local 21
                                                                                              i32.sub
                                                                                              tee_local 15
                                                                                              i32.const 9
                                                                                              get_local 15
                                                                                              i32.const 9
                                                                                              i32.lt_s
                                                                                              select
                                                                                              set_local 22
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  get_local 19
                                                                                                  get_local 35
                                                                                                  i32.ge_u
                                                                                                  br_if 0 (;@47;)
                                                                                                  i32.const 1000000000
                                                                                                  get_local 22
                                                                                                  i32.shr_u
                                                                                                  set_local 21
                                                                                                  i32.const -1
                                                                                                  get_local 22
                                                                                                  i32.shl
                                                                                                  i32.const -1
                                                                                                  i32.xor
                                                                                                  set_local 37
                                                                                                  i32.const 0
                                                                                                  set_local 18
                                                                                                  get_local 19
                                                                                                  set_local 15
                                                                                                  loop  ;; label = @48
                                                                                                    get_local 15
                                                                                                    get_local 15
                                                                                                    i32.load
                                                                                                    tee_local 16
                                                                                                    get_local 22
                                                                                                    i32.shr_u
                                                                                                    get_local 18
                                                                                                    i32.add
                                                                                                    i32.store
                                                                                                    get_local 16
                                                                                                    get_local 37
                                                                                                    i32.and
                                                                                                    get_local 21
                                                                                                    i32.mul
                                                                                                    set_local 18
                                                                                                    get_local 15
                                                                                                    i32.const 4
                                                                                                    i32.add
                                                                                                    tee_local 15
                                                                                                    get_local 35
                                                                                                    i32.lt_u
                                                                                                    br_if 0 (;@48;)
                                                                                                  end
                                                                                                  get_local 19
                                                                                                  get_local 19
                                                                                                  i32.const 4
                                                                                                  i32.add
                                                                                                  get_local 19
                                                                                                  i32.load
                                                                                                  select
                                                                                                  set_local 19
                                                                                                  get_local 18
                                                                                                  i32.eqz
                                                                                                  br_if 1 (;@46;)
                                                                                                  get_local 35
                                                                                                  get_local 18
                                                                                                  i32.store
                                                                                                  get_local 35
                                                                                                  i32.const 4
                                                                                                  i32.add
                                                                                                  set_local 35
                                                                                                  br 1 (;@46;)
                                                                                                end
                                                                                                get_local 19
                                                                                                get_local 19
                                                                                                i32.const 4
                                                                                                i32.add
                                                                                                get_local 19
                                                                                                i32.load
                                                                                                select
                                                                                                set_local 19
                                                                                              end
                                                                                              get_local 5
                                                                                              get_local 5
                                                                                              i32.load offset=364
                                                                                              get_local 22
                                                                                              i32.add
                                                                                              tee_local 21
                                                                                              i32.store offset=364
                                                                                              get_local 32
                                                                                              get_local 19
                                                                                              get_local 30
                                                                                              i32.const 102
                                                                                              i32.eq
                                                                                              select
                                                                                              tee_local 15
                                                                                              get_local 36
                                                                                              i32.const 2
                                                                                              i32.shl
                                                                                              i32.add
                                                                                              get_local 35
                                                                                              get_local 35
                                                                                              get_local 15
                                                                                              i32.sub
                                                                                              i32.const 2
                                                                                              i32.shr_s
                                                                                              get_local 36
                                                                                              i32.gt_s
                                                                                              select
                                                                                              set_local 35
                                                                                              get_local 21
                                                                                              i32.const 0
                                                                                              i32.lt_s
                                                                                              br_if 15 (;@30;)
                                                                                            end
                                                                                            i32.const 0
                                                                                            set_local 18
                                                                                            block  ;; label = @45
                                                                                              get_local 19
                                                                                              get_local 35
                                                                                              i32.ge_u
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 32
                                                                                              get_local 19
                                                                                              i32.sub
                                                                                              i32.const 2
                                                                                              i32.shr_s
                                                                                              i32.const 9
                                                                                              i32.mul
                                                                                              set_local 18
                                                                                              get_local 19
                                                                                              i32.load
                                                                                              tee_local 16
                                                                                              i32.const 10
                                                                                              i32.lt_u
                                                                                              br_if 0 (;@45;)
                                                                                              i32.const 10
                                                                                              set_local 15
                                                                                              loop  ;; label = @46
                                                                                                get_local 18
                                                                                                i32.const 1
                                                                                                i32.add
                                                                                                set_local 18
                                                                                                get_local 16
                                                                                                get_local 15
                                                                                                i32.const 10
                                                                                                i32.mul
                                                                                                tee_local 15
                                                                                                i32.ge_u
                                                                                                br_if 0 (;@46;)
                                                                                              end
                                                                                            end
                                                                                            block  ;; label = @45
                                                                                              get_local 24
                                                                                              i32.const 0
                                                                                              get_local 18
                                                                                              get_local 30
                                                                                              i32.const 102
                                                                                              i32.eq
                                                                                              select
                                                                                              tee_local 16
                                                                                              i32.sub
                                                                                              get_local 24
                                                                                              i32.const 0
                                                                                              i32.ne
                                                                                              get_local 30
                                                                                              i32.const 103
                                                                                              i32.eq
                                                                                              tee_local 38
                                                                                              i32.and
                                                                                              tee_local 39
                                                                                              i32.sub
                                                                                              tee_local 15
                                                                                              get_local 35
                                                                                              get_local 32
                                                                                              i32.sub
                                                                                              i32.const 2
                                                                                              i32.shr_s
                                                                                              i32.const 9
                                                                                              i32.mul
                                                                                              i32.const -9
                                                                                              i32.add
                                                                                              i32.ge_s
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 32
                                                                                              get_local 15
                                                                                              i32.const 9216
                                                                                              i32.add
                                                                                              tee_local 40
                                                                                              i32.const 9
                                                                                              i32.div_s
                                                                                              tee_local 37
                                                                                              i32.const 2
                                                                                              i32.shl
                                                                                              i32.add
                                                                                              tee_local 41
                                                                                              i32.const -4092
                                                                                              i32.add
                                                                                              set_local 22
                                                                                              i32.const 10
                                                                                              set_local 15
                                                                                              block  ;; label = @46
                                                                                                get_local 40
                                                                                                get_local 37
                                                                                                i32.const 9
                                                                                                i32.mul
                                                                                                tee_local 37
                                                                                                i32.sub
                                                                                                i32.const 1
                                                                                                i32.add
                                                                                                i32.const 8
                                                                                                i32.gt_s
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 16
                                                                                                get_local 37
                                                                                                i32.add
                                                                                                i32.const -9208
                                                                                                i32.add
                                                                                                get_local 24
                                                                                                i32.sub
                                                                                                i32.const 0
                                                                                                get_local 39
                                                                                                i32.sub
                                                                                                i32.sub
                                                                                                set_local 16
                                                                                                i32.const 10
                                                                                                set_local 15
                                                                                                loop  ;; label = @47
                                                                                                  get_local 15
                                                                                                  i32.const 10
                                                                                                  i32.mul
                                                                                                  set_local 15
                                                                                                  get_local 16
                                                                                                  i32.const -1
                                                                                                  i32.add
                                                                                                  tee_local 16
                                                                                                  br_if 0 (;@47;)
                                                                                                end
                                                                                              end
                                                                                              get_local 22
                                                                                              i32.load
                                                                                              tee_local 39
                                                                                              get_local 39
                                                                                              get_local 15
                                                                                              i32.div_u
                                                                                              tee_local 40
                                                                                              get_local 15
                                                                                              i32.mul
                                                                                              i32.sub
                                                                                              set_local 16
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  get_local 22
                                                                                                  i32.const 4
                                                                                                  i32.add
                                                                                                  tee_local 37
                                                                                                  get_local 35
                                                                                                  i32.ne
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 16
                                                                                                  i32.eqz
                                                                                                  br_if 1 (;@46;)
                                                                                                end
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    get_local 40
                                                                                                    i32.const 1
                                                                                                    i32.and
                                                                                                    br_if 0 (;@48;)
                                                                                                    f64.const 0x1p+53 (;=9.0072e+15;)
                                                                                                    set_local 27
                                                                                                    get_local 22
                                                                                                    get_local 19
                                                                                                    i32.le_u
                                                                                                    br_if 1 (;@47;)
                                                                                                    get_local 15
                                                                                                    i32.const 1000000000
                                                                                                    i32.ne
                                                                                                    br_if 1 (;@47;)
                                                                                                    get_local 22
                                                                                                    i32.const -4
                                                                                                    i32.add
                                                                                                    i32.load8_u
                                                                                                    i32.const 1
                                                                                                    i32.and
                                                                                                    i32.eqz
                                                                                                    br_if 1 (;@47;)
                                                                                                  end
                                                                                                  f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                                                                                  set_local 27
                                                                                                end
                                                                                                f64.const 0x1p-1 (;=0.5;)
                                                                                                set_local 29
                                                                                                block  ;; label = @47
                                                                                                  get_local 16
                                                                                                  get_local 15
                                                                                                  i32.const 1
                                                                                                  i32.shr_u
                                                                                                  tee_local 40
                                                                                                  i32.lt_u
                                                                                                  br_if 0 (;@47;)
                                                                                                  f64.const 0x1p+0 (;=1;)
                                                                                                  f64.const 0x1.8p+0 (;=1.5;)
                                                                                                  get_local 16
                                                                                                  get_local 40
                                                                                                  i32.eq
                                                                                                  select
                                                                                                  f64.const 0x1.8p+0 (;=1.5;)
                                                                                                  get_local 37
                                                                                                  get_local 35
                                                                                                  i32.eq
                                                                                                  select
                                                                                                  set_local 29
                                                                                                end
                                                                                                block  ;; label = @47
                                                                                                  get_local 26
                                                                                                  i32.eqz
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 28
                                                                                                  i32.load8_u
                                                                                                  i32.const 45
                                                                                                  i32.ne
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 29
                                                                                                  f64.neg
                                                                                                  set_local 29
                                                                                                  get_local 27
                                                                                                  f64.neg
                                                                                                  set_local 27
                                                                                                end
                                                                                                get_local 22
                                                                                                get_local 39
                                                                                                get_local 16
                                                                                                i32.sub
                                                                                                tee_local 16
                                                                                                i32.store
                                                                                                get_local 27
                                                                                                get_local 29
                                                                                                f64.add
                                                                                                get_local 27
                                                                                                f64.eq
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 22
                                                                                                get_local 16
                                                                                                get_local 15
                                                                                                i32.add
                                                                                                tee_local 15
                                                                                                i32.store
                                                                                                block  ;; label = @47
                                                                                                  get_local 15
                                                                                                  i32.const 1000000000
                                                                                                  i32.lt_u
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 41
                                                                                                  i32.const -4096
                                                                                                  i32.add
                                                                                                  set_local 15
                                                                                                  loop  ;; label = @48
                                                                                                    get_local 15
                                                                                                    i32.const 4
                                                                                                    i32.add
                                                                                                    i32.const 0
                                                                                                    i32.store
                                                                                                    block  ;; label = @49
                                                                                                      get_local 15
                                                                                                      get_local 19
                                                                                                      i32.ge_u
                                                                                                      br_if 0 (;@49;)
                                                                                                      get_local 19
                                                                                                      i32.const -4
                                                                                                      i32.add
                                                                                                      tee_local 19
                                                                                                      i32.const 0
                                                                                                      i32.store
                                                                                                    end
                                                                                                    get_local 15
                                                                                                    get_local 15
                                                                                                    i32.load
                                                                                                    i32.const 1
                                                                                                    i32.add
                                                                                                    tee_local 18
                                                                                                    i32.store
                                                                                                    get_local 15
                                                                                                    i32.const -4
                                                                                                    i32.add
                                                                                                    set_local 15
                                                                                                    get_local 18
                                                                                                    i32.const 999999999
                                                                                                    i32.gt_u
                                                                                                    br_if 0 (;@48;)
                                                                                                  end
                                                                                                  get_local 15
                                                                                                  i32.const 4
                                                                                                  i32.add
                                                                                                  set_local 22
                                                                                                end
                                                                                                get_local 32
                                                                                                get_local 19
                                                                                                i32.sub
                                                                                                i32.const 2
                                                                                                i32.shr_s
                                                                                                i32.const 9
                                                                                                i32.mul
                                                                                                set_local 18
                                                                                                get_local 19
                                                                                                i32.load
                                                                                                tee_local 16
                                                                                                i32.const 10
                                                                                                i32.lt_u
                                                                                                br_if 0 (;@46;)
                                                                                                i32.const 10
                                                                                                set_local 15
                                                                                                loop  ;; label = @47
                                                                                                  get_local 18
                                                                                                  i32.const 1
                                                                                                  i32.add
                                                                                                  set_local 18
                                                                                                  get_local 16
                                                                                                  get_local 15
                                                                                                  i32.const 10
                                                                                                  i32.mul
                                                                                                  tee_local 15
                                                                                                  i32.ge_u
                                                                                                  br_if 0 (;@47;)
                                                                                                end
                                                                                              end
                                                                                              get_local 22
                                                                                              i32.const 4
                                                                                              i32.add
                                                                                              tee_local 15
                                                                                              get_local 35
                                                                                              get_local 35
                                                                                              get_local 15
                                                                                              i32.gt_u
                                                                                              select
                                                                                              set_local 35
                                                                                            end
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    loop  ;; label = @49
                                                                                                      get_local 35
                                                                                                      tee_local 39
                                                                                                      get_local 19
                                                                                                      i32.le_u
                                                                                                      br_if 1 (;@48;)
                                                                                                      get_local 39
                                                                                                      i32.const -4
                                                                                                      i32.add
                                                                                                      tee_local 35
                                                                                                      i32.load
                                                                                                      i32.eqz
                                                                                                      br_if 0 (;@49;)
                                                                                                    end
                                                                                                    i32.const 1
                                                                                                    set_local 37
                                                                                                    get_local 38
                                                                                                    br_if 2 (;@46;)
                                                                                                    br 1 (;@47;)
                                                                                                  end
                                                                                                  i32.const 0
                                                                                                  set_local 37
                                                                                                  get_local 38
                                                                                                  br_if 1 (;@46;)
                                                                                                end
                                                                                                get_local 23
                                                                                                i32.const 8
                                                                                                i32.and
                                                                                                set_local 38
                                                                                                br 1 (;@45;)
                                                                                              end
                                                                                              get_local 18
                                                                                              i32.const -1
                                                                                              i32.xor
                                                                                              i32.const -1
                                                                                              get_local 24
                                                                                              i32.const 1
                                                                                              get_local 24
                                                                                              select
                                                                                              tee_local 15
                                                                                              get_local 18
                                                                                              i32.gt_s
                                                                                              get_local 18
                                                                                              i32.const -5
                                                                                              i32.gt_s
                                                                                              i32.and
                                                                                              tee_local 16
                                                                                              select
                                                                                              get_local 15
                                                                                              i32.add
                                                                                              set_local 24
                                                                                              i32.const -1
                                                                                              i32.const -2
                                                                                              get_local 16
                                                                                              select
                                                                                              get_local 25
                                                                                              i32.add
                                                                                              set_local 25
                                                                                              get_local 23
                                                                                              i32.const 8
                                                                                              i32.and
                                                                                              tee_local 38
                                                                                              br_if 0 (;@45;)
                                                                                              i32.const 9
                                                                                              set_local 15
                                                                                              block  ;; label = @46
                                                                                                get_local 37
                                                                                                i32.eqz
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 39
                                                                                                i32.const -4
                                                                                                i32.add
                                                                                                i32.load
                                                                                                tee_local 22
                                                                                                i32.eqz
                                                                                                br_if 0 (;@46;)
                                                                                                i32.const 0
                                                                                                set_local 15
                                                                                                get_local 22
                                                                                                i32.const 10
                                                                                                i32.rem_u
                                                                                                br_if 0 (;@46;)
                                                                                                i32.const 10
                                                                                                set_local 16
                                                                                                i32.const 0
                                                                                                set_local 15
                                                                                                loop  ;; label = @47
                                                                                                  get_local 15
                                                                                                  i32.const 1
                                                                                                  i32.add
                                                                                                  set_local 15
                                                                                                  get_local 22
                                                                                                  get_local 16
                                                                                                  i32.const 10
                                                                                                  i32.mul
                                                                                                  tee_local 16
                                                                                                  i32.rem_u
                                                                                                  i32.eqz
                                                                                                  br_if 0 (;@47;)
                                                                                                end
                                                                                              end
                                                                                              get_local 39
                                                                                              get_local 32
                                                                                              i32.sub
                                                                                              i32.const 2
                                                                                              i32.shr_s
                                                                                              i32.const 9
                                                                                              i32.mul
                                                                                              i32.const -9
                                                                                              i32.add
                                                                                              set_local 16
                                                                                              block  ;; label = @46
                                                                                                get_local 25
                                                                                                i32.const 32
                                                                                                i32.or
                                                                                                i32.const 102
                                                                                                i32.ne
                                                                                                br_if 0 (;@46;)
                                                                                                i32.const 0
                                                                                                set_local 38
                                                                                                get_local 24
                                                                                                get_local 16
                                                                                                get_local 15
                                                                                                i32.sub
                                                                                                tee_local 15
                                                                                                i32.const 0
                                                                                                get_local 15
                                                                                                i32.const 0
                                                                                                i32.gt_s
                                                                                                select
                                                                                                tee_local 15
                                                                                                get_local 24
                                                                                                get_local 15
                                                                                                i32.lt_s
                                                                                                select
                                                                                                set_local 24
                                                                                                br 1 (;@45;)
                                                                                              end
                                                                                              i32.const 0
                                                                                              set_local 38
                                                                                              get_local 24
                                                                                              get_local 16
                                                                                              get_local 18
                                                                                              i32.add
                                                                                              get_local 15
                                                                                              i32.sub
                                                                                              tee_local 15
                                                                                              i32.const 0
                                                                                              get_local 15
                                                                                              i32.const 0
                                                                                              i32.gt_s
                                                                                              select
                                                                                              tee_local 15
                                                                                              get_local 24
                                                                                              get_local 15
                                                                                              i32.lt_s
                                                                                              select
                                                                                              set_local 24
                                                                                            end
                                                                                            i32.const -1
                                                                                            set_local 15
                                                                                            get_local 24
                                                                                            i32.const 2147483645
                                                                                            i32.const 2147483646
                                                                                            get_local 24
                                                                                            get_local 38
                                                                                            i32.or
                                                                                            tee_local 40
                                                                                            select
                                                                                            i32.gt_s
                                                                                            br_if 29 (;@15;)
                                                                                            get_local 24
                                                                                            get_local 40
                                                                                            i32.const 0
                                                                                            i32.ne
                                                                                            i32.add
                                                                                            i32.const 1
                                                                                            i32.add
                                                                                            set_local 41
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                get_local 25
                                                                                                i32.const 32
                                                                                                i32.or
                                                                                                i32.const 102
                                                                                                i32.ne
                                                                                                tee_local 42
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 18
                                                                                                i32.const 2147483647
                                                                                                get_local 41
                                                                                                i32.sub
                                                                                                i32.gt_s
                                                                                                br_if 31 (;@15;)
                                                                                                get_local 18
                                                                                                i32.const 0
                                                                                                get_local 18
                                                                                                i32.const 0
                                                                                                i32.gt_s
                                                                                                select
                                                                                                set_local 18
                                                                                                br 1 (;@45;)
                                                                                              end
                                                                                              get_local 11
                                                                                              set_local 16
                                                                                              block  ;; label = @46
                                                                                                get_local 18
                                                                                                get_local 18
                                                                                                i32.const 31
                                                                                                i32.shr_s
                                                                                                tee_local 15
                                                                                                i32.add
                                                                                                get_local 15
                                                                                                i32.xor
                                                                                                tee_local 15
                                                                                                i32.eqz
                                                                                                br_if 0 (;@46;)
                                                                                                loop  ;; label = @47
                                                                                                  get_local 16
                                                                                                  i32.const -1
                                                                                                  i32.add
                                                                                                  tee_local 16
                                                                                                  get_local 15
                                                                                                  get_local 15
                                                                                                  i32.const 10
                                                                                                  i32.div_u
                                                                                                  tee_local 22
                                                                                                  i32.const 10
                                                                                                  i32.mul
                                                                                                  i32.sub
                                                                                                  i32.const 48
                                                                                                  i32.or
                                                                                                  i32.store8
                                                                                                  get_local 15
                                                                                                  i32.const 9
                                                                                                  i32.gt_u
                                                                                                  set_local 43
                                                                                                  get_local 22
                                                                                                  set_local 15
                                                                                                  get_local 43
                                                                                                  br_if 0 (;@47;)
                                                                                                end
                                                                                              end
                                                                                              block  ;; label = @46
                                                                                                get_local 11
                                                                                                get_local 16
                                                                                                i32.sub
                                                                                                i32.const 1
                                                                                                i32.gt_s
                                                                                                br_if 0 (;@46;)
                                                                                                get_local 16
                                                                                                i32.const -1
                                                                                                i32.add
                                                                                                set_local 15
                                                                                                loop  ;; label = @47
                                                                                                  get_local 15
                                                                                                  i32.const 48
                                                                                                  i32.store8
                                                                                                  get_local 11
                                                                                                  get_local 15
                                                                                                  i32.sub
                                                                                                  set_local 16
                                                                                                  get_local 15
                                                                                                  i32.const -1
                                                                                                  i32.add
                                                                                                  tee_local 22
                                                                                                  set_local 15
                                                                                                  get_local 16
                                                                                                  i32.const 2
                                                                                                  i32.lt_s
                                                                                                  br_if 0 (;@47;)
                                                                                                end
                                                                                                get_local 22
                                                                                                i32.const 1
                                                                                                i32.add
                                                                                                set_local 16
                                                                                              end
                                                                                              get_local 16
                                                                                              i32.const -2
                                                                                              i32.add
                                                                                              tee_local 43
                                                                                              get_local 25
                                                                                              i32.store8
                                                                                              i32.const -1
                                                                                              set_local 15
                                                                                              get_local 16
                                                                                              i32.const -1
                                                                                              i32.add
                                                                                              i32.const 45
                                                                                              i32.const 43
                                                                                              get_local 18
                                                                                              i32.const 0
                                                                                              i32.lt_s
                                                                                              select
                                                                                              i32.store8
                                                                                              get_local 11
                                                                                              get_local 43
                                                                                              i32.sub
                                                                                              tee_local 18
                                                                                              i32.const 2147483647
                                                                                              get_local 41
                                                                                              i32.sub
                                                                                              i32.gt_s
                                                                                              br_if 30 (;@15;)
                                                                                            end
                                                                                            i32.const -1
                                                                                            set_local 15
                                                                                            get_local 18
                                                                                            get_local 41
                                                                                            i32.add
                                                                                            tee_local 18
                                                                                            get_local 26
                                                                                            i32.const 2147483647
                                                                                            i32.xor
                                                                                            i32.gt_s
                                                                                            br_if 29 (;@15;)
                                                                                            get_local 18
                                                                                            get_local 26
                                                                                            i32.add
                                                                                            set_local 44
                                                                                            block  ;; label = @45
                                                                                              get_local 23
                                                                                              i32.const 73728
                                                                                              i32.and
                                                                                              tee_local 45
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 20
                                                                                              get_local 44
                                                                                              i32.le_s
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 5
                                                                                              i32.const 64
                                                                                              i32.add
                                                                                              i32.const 32
                                                                                              get_local 20
                                                                                              get_local 44
                                                                                              i32.sub
                                                                                              tee_local 41
                                                                                              i32.const 256
                                                                                              get_local 41
                                                                                              i32.const 256
                                                                                              i32.lt_u
                                                                                              tee_local 15
                                                                                              select
                                                                                              call $memset
                                                                                              drop
                                                                                              get_local 0
                                                                                              i32.load
                                                                                              tee_local 16
                                                                                              i32.const 32
                                                                                              i32.and
                                                                                              set_local 18
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  get_local 15
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 18
                                                                                                  i32.eqz
                                                                                                  set_local 15
                                                                                                  get_local 41
                                                                                                  set_local 18
                                                                                                  loop  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      get_local 15
                                                                                                      i32.const 1
                                                                                                      i32.and
                                                                                                      i32.eqz
                                                                                                      br_if 0 (;@49;)
                                                                                                      get_local 5
                                                                                                      i32.const 64
                                                                                                      i32.add
                                                                                                      i32.const 256
                                                                                                      get_local 0
                                                                                                      call $__fwritex
                                                                                                      drop
                                                                                                      get_local 0
                                                                                                      i32.load
                                                                                                      set_local 16
                                                                                                    end
                                                                                                    get_local 16
                                                                                                    i32.const 32
                                                                                                    i32.and
                                                                                                    tee_local 22
                                                                                                    i32.eqz
                                                                                                    set_local 15
                                                                                                    get_local 18
                                                                                                    i32.const -256
                                                                                                    i32.add
                                                                                                    tee_local 18
                                                                                                    i32.const 255
                                                                                                    i32.gt_u
                                                                                                    br_if 0 (;@48;)
                                                                                                  end
                                                                                                  get_local 22
                                                                                                  br_if 2 (;@45;)
                                                                                                  get_local 41
                                                                                                  i32.const 255
                                                                                                  i32.and
                                                                                                  set_local 41
                                                                                                  br 1 (;@46;)
                                                                                                end
                                                                                                get_local 18
                                                                                                br_if 1 (;@45;)
                                                                                              end
                                                                                              get_local 5
                                                                                              i32.const 64
                                                                                              i32.add
                                                                                              get_local 41
                                                                                              get_local 0
                                                                                              call $__fwritex
                                                                                              drop
                                                                                            end
                                                                                            block  ;; label = @45
                                                                                              get_local 0
                                                                                              i32.load8_u
                                                                                              i32.const 32
                                                                                              i32.and
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 28
                                                                                              get_local 26
                                                                                              get_local 0
                                                                                              call $__fwritex
                                                                                              drop
                                                                                            end
                                                                                            block  ;; label = @45
                                                                                              get_local 45
                                                                                              i32.const 65536
                                                                                              i32.ne
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 20
                                                                                              get_local 44
                                                                                              i32.le_s
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 5
                                                                                              i32.const 64
                                                                                              i32.add
                                                                                              i32.const 48
                                                                                              get_local 20
                                                                                              get_local 44
                                                                                              i32.sub
                                                                                              tee_local 41
                                                                                              i32.const 256
                                                                                              get_local 41
                                                                                              i32.const 256
                                                                                              i32.lt_u
                                                                                              tee_local 15
                                                                                              select
                                                                                              call $memset
                                                                                              drop
                                                                                              get_local 0
                                                                                              i32.load
                                                                                              tee_local 16
                                                                                              i32.const 32
                                                                                              i32.and
                                                                                              set_local 18
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  get_local 15
                                                                                                  br_if 0 (;@47;)
                                                                                                  get_local 18
                                                                                                  i32.eqz
                                                                                                  set_local 15
                                                                                                  get_local 41
                                                                                                  set_local 18
                                                                                                  loop  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      get_local 15
                                                                                                      i32.const 1
                                                                                                      i32.and
                                                                                                      i32.eqz
                                                                                                      br_if 0 (;@49;)
                                                                                                      get_local 5
                                                                                                      i32.const 64
                                                                                                      i32.add
                                                                                                      i32.const 256
                                                                                                      get_local 0
                                                                                                      call $__fwritex
                                                                                                      drop
                                                                                                      get_local 0
                                                                                                      i32.load
                                                                                                      set_local 16
                                                                                                    end
                                                                                                    get_local 16
                                                                                                    i32.const 32
                                                                                                    i32.and
                                                                                                    tee_local 22
                                                                                                    i32.eqz
                                                                                                    set_local 15
                                                                                                    get_local 18
                                                                                                    i32.const -256
                                                                                                    i32.add
                                                                                                    tee_local 18
                                                                                                    i32.const 255
                                                                                                    i32.gt_u
                                                                                                    br_if 0 (;@48;)
                                                                                                  end
                                                                                                  get_local 22
                                                                                                  br_if 2 (;@45;)
                                                                                                  get_local 41
                                                                                                  i32.const 255
                                                                                                  i32.and
                                                                                                  set_local 41
                                                                                                  br 1 (;@46;)
                                                                                                end
                                                                                                get_local 18
                                                                                                br_if 1 (;@45;)
                                                                                              end
                                                                                              get_local 5
                                                                                              i32.const 64
                                                                                              i32.add
                                                                                              get_local 41
                                                                                              get_local 0
                                                                                              call $__fwritex
                                                                                              drop
                                                                                            end
                                                                                            get_local 42
                                                                                            br_if 3 (;@41;)
                                                                                            get_local 32
                                                                                            get_local 19
                                                                                            get_local 19
                                                                                            get_local 32
                                                                                            i32.gt_u
                                                                                            select
                                                                                            tee_local 46
                                                                                            set_local 47
                                                                                            i32.const 2
                                                                                            set_local 34
                                                                                            br 22 (;@22;)
                                                                                          end
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              get_local 47
                                                                                              i32.load
                                                                                              tee_local 15
                                                                                              i32.eqz
                                                                                              br_if 0 (;@45;)
                                                                                              i32.const 0
                                                                                              set_local 18
                                                                                              loop  ;; label = @46
                                                                                                get_local 6
                                                                                                get_local 18
                                                                                                i32.add
                                                                                                get_local 15
                                                                                                get_local 15
                                                                                                i32.const 10
                                                                                                i32.div_u
                                                                                                tee_local 16
                                                                                                i32.const 10
                                                                                                i32.mul
                                                                                                i32.sub
                                                                                                i32.const 48
                                                                                                i32.or
                                                                                                i32.store8
                                                                                                get_local 18
                                                                                                i32.const -1
                                                                                                i32.add
                                                                                                set_local 18
                                                                                                get_local 15
                                                                                                i32.const 9
                                                                                                i32.gt_u
                                                                                                set_local 22
                                                                                                get_local 16
                                                                                                set_local 15
                                                                                                get_local 22
                                                                                                br_if 0 (;@46;)
                                                                                                br 2 (;@44;)
                                                                                              end
                                                                                            end
                                                                                            i32.const 0
                                                                                            set_local 18
                                                                                          end
                                                                                          get_local 9
                                                                                          get_local 18
                                                                                          i32.add
                                                                                          set_local 15
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              get_local 47
                                                                                              get_local 46
                                                                                              i32.eq
                                                                                              br_if 0 (;@45;)
                                                                                              get_local 15
                                                                                              get_local 5
                                                                                              i32.const 336
                                                                                              i32.add
                                                                                              i32.le_u
                                                                                              br_if 1 (;@44;)
                                                                                              loop  ;; label = @46
                                                                                                get_local 15
                                                                                                i32.const -1
                                                                                                i32.add
                                                                                                tee_local 15
                                                                                                i32.const 48
                                                                                                i32.store8
                                                                                                get_local 15
                                                                                                get_local 5
                                                                                                i32.const 336
                                                                                                i32.add
                                                                                                i32.gt_u
                                                                                                br_if 0 (;@46;)
                                                                                                br 2 (;@44;)
                                                                                              end
                                                                                            end
                                                                                            get_local 18
                                                                                            br_if 0 (;@44;)
                                                                                            get_local 15
                                                                                            i32.const -1
                                                                                            i32.add
                                                                                            tee_local 15
                                                                                            i32.const 48
                                                                                            i32.store8
                                                                                          end
                                                                                          block  ;; label = @44
                                                                                            get_local 0
                                                                                            i32.load8_u
                                                                                            i32.const 32
                                                                                            i32.and
                                                                                            br_if 0 (;@44;)
                                                                                            get_local 15
                                                                                            get_local 9
                                                                                            get_local 15
                                                                                            i32.sub
                                                                                            get_local 0
                                                                                            call $__fwritex
                                                                                            drop
                                                                                          end
                                                                                          get_local 47
                                                                                          i32.const 4
                                                                                          i32.add
                                                                                          tee_local 47
                                                                                          get_local 32
                                                                                          i32.le_u
                                                                                          br_if 14 (;@29;)
                                                                                          block  ;; label = @44
                                                                                            get_local 40
                                                                                            i32.eqz
                                                                                            br_if 0 (;@44;)
                                                                                            get_local 0
                                                                                            i32.load8_u
                                                                                            i32.const 32
                                                                                            i32.and
                                                                                            br_if 0 (;@44;)
                                                                                            i32.const 5059
                                                                                            i32.const 1
                                                                                            get_local 0
                                                                                            call $__fwritex
                                                                                            drop
                                                                                          end
                                                                                          get_local 24
                                                                                          i32.const 1
                                                                                          i32.lt_s
                                                                                          br_if 1 (;@42;)
                                                                                          get_local 47
                                                                                          get_local 39
                                                                                          i32.ge_u
                                                                                          br_if 1 (;@42;)
                                                                                          i32.const 3
                                                                                          set_local 34
                                                                                          br 24 (;@19;)
                                                                                        end
                                                                                        get_local 9
                                                                                        set_local 15
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            get_local 47
                                                                                            i32.load
                                                                                            tee_local 18
                                                                                            i32.eqz
                                                                                            br_if 0 (;@44;)
                                                                                            get_local 9
                                                                                            set_local 15
                                                                                            loop  ;; label = @45
                                                                                              get_local 15
                                                                                              i32.const -1
                                                                                              i32.add
                                                                                              tee_local 15
                                                                                              get_local 18
                                                                                              get_local 18
                                                                                              i32.const 10
                                                                                              i32.div_u
                                                                                              tee_local 16
                                                                                              i32.const 10
                                                                                              i32.mul
                                                                                              i32.sub
                                                                                              i32.const 48
                                                                                              i32.or
                                                                                              i32.store8
                                                                                              get_local 18
                                                                                              i32.const 9
                                                                                              i32.gt_u
                                                                                              set_local 22
                                                                                              get_local 16
                                                                                              set_local 18
                                                                                              get_local 22
                                                                                              br_if 0 (;@45;)
                                                                                            end
                                                                                            get_local 15
                                                                                            get_local 5
                                                                                            i32.const 336
                                                                                            i32.add
                                                                                            i32.le_u
                                                                                            br_if 1 (;@43;)
                                                                                          end
                                                                                          loop  ;; label = @44
                                                                                            get_local 15
                                                                                            i32.const -1
                                                                                            i32.add
                                                                                            tee_local 15
                                                                                            i32.const 48
                                                                                            i32.store8
                                                                                            get_local 15
                                                                                            get_local 5
                                                                                            i32.const 336
                                                                                            i32.add
                                                                                            i32.gt_u
                                                                                            br_if 0 (;@44;)
                                                                                          end
                                                                                        end
                                                                                        block  ;; label = @43
                                                                                          get_local 0
                                                                                          i32.load8_u
                                                                                          i32.const 32
                                                                                          i32.and
                                                                                          br_if 0 (;@43;)
                                                                                          get_local 15
                                                                                          get_local 24
                                                                                          i32.const 9
                                                                                          get_local 24
                                                                                          i32.const 9
                                                                                          i32.lt_s
                                                                                          select
                                                                                          get_local 0
                                                                                          call $__fwritex
                                                                                          drop
                                                                                        end
                                                                                        get_local 24
                                                                                        i32.const -9
                                                                                        i32.add
                                                                                        tee_local 24
                                                                                        i32.const 1
                                                                                        i32.lt_s
                                                                                        br_if 0 (;@42;)
                                                                                        get_local 47
                                                                                        i32.const 4
                                                                                        i32.add
                                                                                        tee_local 47
                                                                                        get_local 39
                                                                                        i32.lt_u
                                                                                        br_if 14 (;@28;)
                                                                                      end
                                                                                      get_local 24
                                                                                      i32.const 1
                                                                                      i32.lt_s
                                                                                      br_if 7 (;@34;)
                                                                                      get_local 5
                                                                                      i32.const 64
                                                                                      i32.add
                                                                                      i32.const 48
                                                                                      get_local 24
                                                                                      i32.const 256
                                                                                      get_local 24
                                                                                      i32.const 256
                                                                                      i32.lt_u
                                                                                      tee_local 15
                                                                                      select
                                                                                      call $memset
                                                                                      drop
                                                                                      get_local 0
                                                                                      i32.load
                                                                                      tee_local 19
                                                                                      i32.const 32
                                                                                      i32.and
                                                                                      set_local 17
                                                                                      get_local 15
                                                                                      br_if 2 (;@39;)
                                                                                      get_local 17
                                                                                      i32.eqz
                                                                                      set_local 15
                                                                                      get_local 24
                                                                                      set_local 17
                                                                                      loop  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          get_local 15
                                                                                          i32.const 1
                                                                                          i32.and
                                                                                          i32.eqz
                                                                                          br_if 0 (;@43;)
                                                                                          get_local 5
                                                                                          i32.const 64
                                                                                          i32.add
                                                                                          i32.const 256
                                                                                          get_local 0
                                                                                          call $__fwritex
                                                                                          drop
                                                                                          get_local 0
                                                                                          i32.load
                                                                                          set_local 19
                                                                                        end
                                                                                        get_local 19
                                                                                        i32.const 32
                                                                                        i32.and
                                                                                        tee_local 18
                                                                                        i32.eqz
                                                                                        set_local 15
                                                                                        get_local 17
                                                                                        i32.const -256
                                                                                        i32.add
                                                                                        tee_local 17
                                                                                        i32.const 255
                                                                                        i32.gt_u
                                                                                        br_if 0 (;@42;)
                                                                                      end
                                                                                      get_local 18
                                                                                      br_if 7 (;@34;)
                                                                                      get_local 24
                                                                                      i32.const 255
                                                                                      i32.and
                                                                                      set_local 24
                                                                                      br 3 (;@38;)
                                                                                    end
                                                                                    get_local 24
                                                                                    i32.const -1
                                                                                    i32.le_s
                                                                                    br_if 5 (;@35;)
                                                                                    get_local 39
                                                                                    get_local 19
                                                                                    i32.const 4
                                                                                    i32.add
                                                                                    get_local 37
                                                                                    select
                                                                                    set_local 48
                                                                                    get_local 19
                                                                                    set_local 49
                                                                                    i32.const 4
                                                                                    set_local 34
                                                                                    br 22 (;@18;)
                                                                                  end
                                                                                  get_local 9
                                                                                  set_local 16
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      get_local 49
                                                                                      i32.load
                                                                                      tee_local 15
                                                                                      i32.eqz
                                                                                      br_if 0 (;@41;)
                                                                                      i32.const 0
                                                                                      set_local 18
                                                                                      loop  ;; label = @42
                                                                                        get_local 5
                                                                                        i32.const 336
                                                                                        i32.add
                                                                                        get_local 18
                                                                                        i32.add
                                                                                        i32.const 8
                                                                                        i32.add
                                                                                        get_local 15
                                                                                        get_local 15
                                                                                        i32.const 10
                                                                                        i32.div_u
                                                                                        tee_local 16
                                                                                        i32.const 10
                                                                                        i32.mul
                                                                                        i32.sub
                                                                                        i32.const 48
                                                                                        i32.or
                                                                                        i32.store8
                                                                                        get_local 18
                                                                                        i32.const -1
                                                                                        i32.add
                                                                                        set_local 18
                                                                                        get_local 15
                                                                                        i32.const 9
                                                                                        i32.gt_u
                                                                                        set_local 22
                                                                                        get_local 16
                                                                                        set_local 15
                                                                                        get_local 22
                                                                                        br_if 0 (;@42;)
                                                                                      end
                                                                                      get_local 5
                                                                                      i32.const 336
                                                                                      i32.add
                                                                                      get_local 18
                                                                                      i32.add
                                                                                      i32.const 9
                                                                                      i32.add
                                                                                      set_local 16
                                                                                      get_local 18
                                                                                      br_if 1 (;@40;)
                                                                                    end
                                                                                    get_local 16
                                                                                    i32.const -1
                                                                                    i32.add
                                                                                    tee_local 16
                                                                                    i32.const 48
                                                                                    i32.store8
                                                                                  end
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      get_local 49
                                                                                      get_local 19
                                                                                      i32.eq
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 16
                                                                                      get_local 5
                                                                                      i32.const 336
                                                                                      i32.add
                                                                                      i32.le_u
                                                                                      br_if 1 (;@40;)
                                                                                      loop  ;; label = @42
                                                                                        get_local 16
                                                                                        i32.const -1
                                                                                        i32.add
                                                                                        tee_local 16
                                                                                        i32.const 48
                                                                                        i32.store8
                                                                                        get_local 16
                                                                                        get_local 5
                                                                                        i32.const 336
                                                                                        i32.add
                                                                                        i32.gt_u
                                                                                        br_if 0 (;@42;)
                                                                                        br 2 (;@40;)
                                                                                      end
                                                                                    end
                                                                                    block  ;; label = @41
                                                                                      get_local 0
                                                                                      i32.load8_u
                                                                                      i32.const 32
                                                                                      i32.and
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 16
                                                                                      i32.const 1
                                                                                      get_local 0
                                                                                      call $__fwritex
                                                                                      drop
                                                                                    end
                                                                                    get_local 16
                                                                                    i32.const 1
                                                                                    i32.add
                                                                                    set_local 16
                                                                                    block  ;; label = @41
                                                                                      get_local 38
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 24
                                                                                      i32.const 1
                                                                                      i32.lt_s
                                                                                      br_if 1 (;@40;)
                                                                                    end
                                                                                    get_local 0
                                                                                    i32.load8_u
                                                                                    i32.const 32
                                                                                    i32.and
                                                                                    br_if 0 (;@40;)
                                                                                    i32.const 5059
                                                                                    i32.const 1
                                                                                    get_local 0
                                                                                    call $__fwritex
                                                                                    drop
                                                                                  end
                                                                                  get_local 9
                                                                                  get_local 16
                                                                                  i32.sub
                                                                                  set_local 15
                                                                                  block  ;; label = @40
                                                                                    get_local 0
                                                                                    i32.load8_u
                                                                                    i32.const 32
                                                                                    i32.and
                                                                                    br_if 0 (;@40;)
                                                                                    get_local 16
                                                                                    get_local 15
                                                                                    get_local 24
                                                                                    get_local 24
                                                                                    get_local 15
                                                                                    i32.gt_s
                                                                                    select
                                                                                    get_local 0
                                                                                    call $__fwritex
                                                                                    drop
                                                                                  end
                                                                                  get_local 24
                                                                                  get_local 15
                                                                                  i32.sub
                                                                                  set_local 24
                                                                                  block  ;; label = @40
                                                                                    get_local 49
                                                                                    i32.const 4
                                                                                    i32.add
                                                                                    tee_local 49
                                                                                    get_local 48
                                                                                    i32.ge_u
                                                                                    br_if 0 (;@40;)
                                                                                    get_local 24
                                                                                    i32.const -1
                                                                                    i32.gt_s
                                                                                    br_if 13 (;@27;)
                                                                                  end
                                                                                  get_local 24
                                                                                  i32.const 1
                                                                                  i32.lt_s
                                                                                  br_if 4 (;@35;)
                                                                                  get_local 5
                                                                                  i32.const 64
                                                                                  i32.add
                                                                                  i32.const 48
                                                                                  get_local 24
                                                                                  i32.const 256
                                                                                  get_local 24
                                                                                  i32.const 256
                                                                                  i32.lt_u
                                                                                  tee_local 17
                                                                                  select
                                                                                  call $memset
                                                                                  drop
                                                                                  get_local 0
                                                                                  i32.load
                                                                                  tee_local 19
                                                                                  i32.const 32
                                                                                  i32.and
                                                                                  set_local 15
                                                                                  get_local 17
                                                                                  br_if 2 (;@37;)
                                                                                  get_local 15
                                                                                  i32.eqz
                                                                                  set_local 15
                                                                                  get_local 24
                                                                                  set_local 17
                                                                                  loop  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      get_local 15
                                                                                      i32.const 1
                                                                                      i32.and
                                                                                      i32.eqz
                                                                                      br_if 0 (;@41;)
                                                                                      get_local 5
                                                                                      i32.const 64
                                                                                      i32.add
                                                                                      i32.const 256
                                                                                      get_local 0
                                                                                      call $__fwritex
                                                                                      drop
                                                                                      get_local 0
                                                                                      i32.load
                                                                                      set_local 19
                                                                                    end
                                                                                    get_local 19
                                                                                    i32.const 32
                                                                                    i32.and
                                                                                    tee_local 18
                                                                                    i32.eqz
                                                                                    set_local 15
                                                                                    get_local 17
                                                                                    i32.const -256
                                                                                    i32.add
                                                                                    tee_local 17
                                                                                    i32.const 255
                                                                                    i32.gt_u
                                                                                    br_if 0 (;@40;)
                                                                                  end
                                                                                  get_local 18
                                                                                  br_if 4 (;@35;)
                                                                                  get_local 24
                                                                                  i32.const 255
                                                                                  i32.and
                                                                                  set_local 24
                                                                                  br 3 (;@36;)
                                                                                end
                                                                                get_local 17
                                                                                br_if 4 (;@34;)
                                                                              end
                                                                              get_local 5
                                                                              i32.const 64
                                                                              i32.add
                                                                              get_local 24
                                                                              get_local 0
                                                                              call $__fwritex
                                                                              drop
                                                                              get_local 45
                                                                              i32.const 8192
                                                                              i32.eq
                                                                              br_if 4 (;@33;)
                                                                              br 5 (;@32;)
                                                                            end
                                                                            get_local 15
                                                                            br_if 1 (;@35;)
                                                                          end
                                                                          get_local 5
                                                                          i32.const 64
                                                                          i32.add
                                                                          get_local 24
                                                                          get_local 0
                                                                          call $__fwritex
                                                                          drop
                                                                        end
                                                                        get_local 0
                                                                        i32.load8_u
                                                                        i32.const 32
                                                                        i32.and
                                                                        br_if 0 (;@34;)
                                                                        get_local 43
                                                                        get_local 11
                                                                        get_local 43
                                                                        i32.sub
                                                                        get_local 0
                                                                        call $__fwritex
                                                                        drop
                                                                      end
                                                                      get_local 45
                                                                      i32.const 8192
                                                                      i32.ne
                                                                      br_if 1 (;@32;)
                                                                    end
                                                                    get_local 20
                                                                    get_local 44
                                                                    i32.le_s
                                                                    br_if 0 (;@32;)
                                                                    get_local 5
                                                                    i32.const 64
                                                                    i32.add
                                                                    i32.const 32
                                                                    get_local 20
                                                                    get_local 44
                                                                    i32.sub
                                                                    tee_local 16
                                                                    i32.const 256
                                                                    get_local 16
                                                                    i32.const 256
                                                                    i32.lt_u
                                                                    tee_local 15
                                                                    select
                                                                    call $memset
                                                                    drop
                                                                    get_local 0
                                                                    i32.load
                                                                    tee_local 19
                                                                    i32.const 32
                                                                    i32.and
                                                                    set_local 17
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        get_local 15
                                                                        br_if 0 (;@34;)
                                                                        get_local 17
                                                                        i32.eqz
                                                                        set_local 15
                                                                        get_local 16
                                                                        set_local 17
                                                                        loop  ;; label = @35
                                                                          block  ;; label = @36
                                                                            get_local 15
                                                                            i32.const 1
                                                                            i32.and
                                                                            i32.eqz
                                                                            br_if 0 (;@36;)
                                                                            get_local 5
                                                                            i32.const 64
                                                                            i32.add
                                                                            i32.const 256
                                                                            get_local 0
                                                                            call $__fwritex
                                                                            drop
                                                                            get_local 0
                                                                            i32.load
                                                                            set_local 19
                                                                          end
                                                                          get_local 19
                                                                          i32.const 32
                                                                          i32.and
                                                                          tee_local 18
                                                                          i32.eqz
                                                                          set_local 15
                                                                          get_local 17
                                                                          i32.const -256
                                                                          i32.add
                                                                          tee_local 17
                                                                          i32.const 255
                                                                          i32.gt_u
                                                                          br_if 0 (;@35;)
                                                                        end
                                                                        get_local 18
                                                                        br_if 2 (;@32;)
                                                                        get_local 16
                                                                        i32.const 255
                                                                        i32.and
                                                                        set_local 16
                                                                        br 1 (;@33;)
                                                                      end
                                                                      get_local 17
                                                                      br_if 1 (;@32;)
                                                                    end
                                                                    get_local 5
                                                                    i32.const 64
                                                                    i32.add
                                                                    get_local 16
                                                                    get_local 0
                                                                    call $__fwritex
                                                                    drop
                                                                  end
                                                                  get_local 20
                                                                  get_local 44
                                                                  get_local 20
                                                                  get_local 44
                                                                  i32.gt_s
                                                                  select
                                                                  set_local 15
                                                                  br 16 (;@15;)
                                                                end
                                                                i32.const 0
                                                                set_local 34
                                                                br 5 (;@25;)
                                                              end
                                                              i32.const 1
                                                              set_local 34
                                                              br 6 (;@23;)
                                                            end
                                                            i32.const 2
                                                            set_local 34
                                                            br 7 (;@21;)
                                                          end
                                                          i32.const 3
                                                          set_local 34
                                                          br 7 (;@20;)
                                                        end
                                                        i32.const 4
                                                        set_local 34
                                                        br 9 (;@17;)
                                                      end
                                                      i32.const 0
                                                      set_local 15
                                                      br 9 (;@16;)
                                                    end
                                                    i32.const 1
                                                    set_local 15
                                                    br 8 (;@16;)
                                                  end
                                                  i32.const 1
                                                  set_local 15
                                                  br 7 (;@16;)
                                                end
                                                i32.const 1
                                                set_local 15
                                                br 6 (;@16;)
                                              end
                                              i32.const 1
                                              set_local 15
                                              br 5 (;@16;)
                                            end
                                            i32.const 1
                                            set_local 15
                                            br 4 (;@16;)
                                          end
                                          i32.const 1
                                          set_local 15
                                          br 3 (;@16;)
                                        end
                                        i32.const 1
                                        set_local 15
                                        br 2 (;@16;)
                                      end
                                      i32.const 1
                                      set_local 15
                                      br 1 (;@16;)
                                    end
                                    i32.const 1
                                    set_local 15
                                    br 0 (;@16;)
                                  end
                                end
                                get_local 15
                                i32.const 0
                                i32.ge_s
                                br_if 10 (;@4;)
                                br 11 (;@3;)
                              end
                              get_local 20
                              get_local 15
                              i32.le_s
                              br_if 0 (;@13;)
                              get_local 5
                              i32.const 64
                              i32.add
                              i32.const 32
                              get_local 20
                              get_local 15
                              i32.sub
                              tee_local 25
                              i32.const 256
                              get_local 25
                              i32.const 256
                              i32.lt_u
                              tee_local 17
                              select
                              call $memset
                              drop
                              get_local 0
                              i32.load
                              tee_local 16
                              i32.const 32
                              i32.and
                              set_local 19
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 17
                                  br_if 0 (;@15;)
                                  get_local 19
                                  i32.eqz
                                  set_local 17
                                  get_local 25
                                  set_local 19
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      get_local 17
                                      i32.const 1
                                      i32.and
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      get_local 5
                                      i32.const 64
                                      i32.add
                                      i32.const 256
                                      get_local 0
                                      call $__fwritex
                                      drop
                                      get_local 0
                                      i32.load
                                      set_local 16
                                    end
                                    get_local 16
                                    i32.const 32
                                    i32.and
                                    tee_local 22
                                    i32.eqz
                                    set_local 17
                                    get_local 19
                                    i32.const -256
                                    i32.add
                                    tee_local 19
                                    i32.const 255
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                  end
                                  get_local 22
                                  br_if 2 (;@13;)
                                  get_local 25
                                  i32.const 255
                                  i32.and
                                  set_local 25
                                  br 1 (;@14;)
                                end
                                get_local 19
                                br_if 1 (;@13;)
                              end
                              get_local 5
                              i32.const 64
                              i32.add
                              get_local 25
                              get_local 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              get_local 15
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              set_local 17
                              loop  ;; label = @14
                                get_local 18
                                i32.load
                                tee_local 19
                                i32.eqz
                                br_if 1 (;@13;)
                                get_local 5
                                i32.const 4
                                i32.add
                                get_local 19
                                call $wctomb
                                tee_local 19
                                get_local 17
                                i32.add
                                tee_local 17
                                get_local 15
                                i32.gt_u
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  get_local 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  get_local 5
                                  i32.const 4
                                  i32.add
                                  get_local 19
                                  get_local 0
                                  call $__fwritex
                                  drop
                                end
                                get_local 18
                                i32.const 4
                                i32.add
                                set_local 18
                                get_local 17
                                get_local 15
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              get_local 23
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              get_local 20
                              get_local 15
                              i32.le_s
                              br_if 0 (;@13;)
                              get_local 5
                              i32.const 64
                              i32.add
                              i32.const 32
                              get_local 20
                              get_local 15
                              i32.sub
                              tee_local 22
                              i32.const 256
                              get_local 22
                              i32.const 256
                              i32.lt_u
                              tee_local 17
                              select
                              call $memset
                              drop
                              get_local 0
                              i32.load
                              tee_local 18
                              i32.const 32
                              i32.and
                              set_local 19
                              block  ;; label = @14
                                block  ;; label = @15
                                  get_local 17
                                  br_if 0 (;@15;)
                                  get_local 19
                                  i32.eqz
                                  set_local 17
                                  get_local 22
                                  set_local 19
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      get_local 17
                                      i32.const 1
                                      i32.and
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      get_local 5
                                      i32.const 64
                                      i32.add
                                      i32.const 256
                                      get_local 0
                                      call $__fwritex
                                      drop
                                      get_local 0
                                      i32.load
                                      set_local 18
                                    end
                                    get_local 18
                                    i32.const 32
                                    i32.and
                                    tee_local 16
                                    i32.eqz
                                    set_local 17
                                    get_local 19
                                    i32.const -256
                                    i32.add
                                    tee_local 19
                                    i32.const 255
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                  end
                                  get_local 16
                                  br_if 2 (;@13;)
                                  get_local 22
                                  i32.const 255
                                  i32.and
                                  set_local 22
                                  br 1 (;@14;)
                                end
                                get_local 19
                                br_if 1 (;@13;)
                              end
                              get_local 5
                              i32.const 64
                              i32.add
                              get_local 22
                              get_local 0
                              call $__fwritex
                              drop
                            end
                            get_local 20
                            get_local 15
                            get_local 20
                            get_local 15
                            i32.gt_s
                            select
                            set_local 15
                            br 8 (;@4;)
                          end
                          get_local 31
                          set_local 33
                          get_local 12
                          set_local 18
                          br 1 (;@10;)
                        end
                        get_local 12
                        set_local 18
                        loop  ;; label = @11
                          get_local 18
                          i32.const -1
                          i32.add
                          tee_local 18
                          get_local 31
                          get_local 31
                          i64.const 10
                          i64.div_u
                          tee_local 33
                          i64.const 10
                          i64.mul
                          i64.sub
                          i32.wrap/i64
                          i32.const 48
                          i32.or
                          i32.store8
                          get_local 31
                          i64.const 42949672959
                          i64.gt_u
                          set_local 15
                          get_local 33
                          set_local 31
                          get_local 15
                          br_if 0 (;@11;)
                        end
                      end
                      get_local 33
                      i32.wrap/i64
                      tee_local 15
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        get_local 18
                        i32.const -1
                        i32.add
                        tee_local 18
                        get_local 15
                        get_local 15
                        i32.const 10
                        i32.div_u
                        tee_local 19
                        i32.const 10
                        i32.mul
                        i32.sub
                        i32.const 48
                        i32.or
                        i32.store8
                        get_local 15
                        i32.const 9
                        i32.gt_u
                        set_local 22
                        get_local 19
                        set_local 15
                        get_local 22
                        br_if 0 (;@10;)
                      end
                    end
                    get_local 24
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  get_local 16
                  i32.const 0
                  i32.lt_s
                  br_if 4 (;@3;)
                end
                get_local 23
                i32.const -65537
                i32.and
                get_local 23
                get_local 24
                select
                set_local 23
                get_local 5
                i64.load offset=56
                set_local 31
                block  ;; label = @7
                  get_local 16
                  br_if 0 (;@7;)
                  get_local 31
                  i64.eqz
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 12
                  set_local 18
                  get_local 12
                  set_local 15
                  i32.const 0
                  set_local 16
                  br 2 (;@5;)
                end
                get_local 16
                get_local 12
                get_local 18
                i32.sub
                get_local 31
                i64.eqz
                i32.add
                tee_local 15
                get_local 16
                get_local 15
                i32.gt_s
                select
                set_local 16
              end
              get_local 12
              set_local 15
            end
            get_local 15
            get_local 18
            i32.sub
            tee_local 24
            get_local 16
            get_local 16
            get_local 24
            i32.lt_s
            select
            tee_local 28
            i32.const 2147483647
            get_local 21
            i32.sub
            i32.gt_s
            br_if 1 (;@3;)
            get_local 21
            get_local 28
            i32.add
            tee_local 25
            get_local 20
            get_local 20
            get_local 25
            i32.lt_s
            select
            tee_local 15
            get_local 17
            i32.gt_s
            br_if 1 (;@3;)
            block  ;; label = @5
              get_local 23
              i32.const 73728
              i32.and
              tee_local 26
              br_if 0 (;@5;)
              get_local 25
              get_local 20
              i32.ge_s
              br_if 0 (;@5;)
              get_local 5
              i32.const 64
              i32.add
              i32.const 32
              get_local 15
              get_local 25
              i32.sub
              tee_local 37
              i32.const 256
              get_local 37
              i32.const 256
              i32.lt_u
              tee_local 17
              select
              call $memset
              drop
              get_local 0
              i32.load
              tee_local 22
              i32.const 32
              i32.and
              set_local 19
              block  ;; label = @6
                block  ;; label = @7
                  get_local 17
                  br_if 0 (;@7;)
                  get_local 19
                  i32.eqz
                  set_local 17
                  get_local 37
                  set_local 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      get_local 17
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 5
                      i32.const 64
                      i32.add
                      i32.const 256
                      get_local 0
                      call $__fwritex
                      drop
                      get_local 0
                      i32.load
                      set_local 22
                    end
                    get_local 22
                    i32.const 32
                    i32.and
                    tee_local 23
                    i32.eqz
                    set_local 17
                    get_local 19
                    i32.const -256
                    i32.add
                    tee_local 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  get_local 23
                  br_if 2 (;@5;)
                  get_local 37
                  i32.const 255
                  i32.and
                  set_local 37
                  br 1 (;@6;)
                end
                get_local 19
                br_if 1 (;@5;)
              end
              get_local 5
              i32.const 64
              i32.add
              get_local 37
              get_local 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              get_local 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              get_local 32
              get_local 21
              get_local 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              get_local 26
              i32.const 65536
              i32.ne
              br_if 0 (;@5;)
              get_local 25
              get_local 20
              i32.ge_s
              br_if 0 (;@5;)
              get_local 5
              i32.const 64
              i32.add
              i32.const 48
              get_local 15
              get_local 25
              i32.sub
              tee_local 21
              i32.const 256
              get_local 21
              i32.const 256
              i32.lt_u
              tee_local 17
              select
              call $memset
              drop
              get_local 0
              i32.load
              tee_local 22
              i32.const 32
              i32.and
              set_local 19
              block  ;; label = @6
                block  ;; label = @7
                  get_local 17
                  br_if 0 (;@7;)
                  get_local 19
                  i32.eqz
                  set_local 17
                  get_local 21
                  set_local 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      get_local 17
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 5
                      i32.const 64
                      i32.add
                      i32.const 256
                      get_local 0
                      call $__fwritex
                      drop
                      get_local 0
                      i32.load
                      set_local 22
                    end
                    get_local 22
                    i32.const 32
                    i32.and
                    tee_local 23
                    i32.eqz
                    set_local 17
                    get_local 19
                    i32.const -256
                    i32.add
                    tee_local 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  get_local 23
                  br_if 2 (;@5;)
                  get_local 21
                  i32.const 255
                  i32.and
                  set_local 21
                  br 1 (;@6;)
                end
                get_local 19
                br_if 1 (;@5;)
              end
              get_local 5
              i32.const 64
              i32.add
              get_local 21
              get_local 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              get_local 24
              get_local 16
              i32.ge_s
              br_if 0 (;@5;)
              get_local 5
              i32.const 64
              i32.add
              i32.const 48
              get_local 28
              get_local 24
              i32.sub
              tee_local 23
              i32.const 256
              get_local 23
              i32.const 256
              i32.lt_u
              tee_local 17
              select
              call $memset
              drop
              get_local 0
              i32.load
              tee_local 16
              i32.const 32
              i32.and
              set_local 19
              block  ;; label = @6
                block  ;; label = @7
                  get_local 17
                  br_if 0 (;@7;)
                  get_local 19
                  i32.eqz
                  set_local 17
                  get_local 23
                  set_local 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      get_local 17
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 5
                      i32.const 64
                      i32.add
                      i32.const 256
                      get_local 0
                      call $__fwritex
                      drop
                      get_local 0
                      i32.load
                      set_local 16
                    end
                    get_local 16
                    i32.const 32
                    i32.and
                    tee_local 22
                    i32.eqz
                    set_local 17
                    get_local 19
                    i32.const -256
                    i32.add
                    tee_local 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  get_local 22
                  br_if 2 (;@5;)
                  get_local 23
                  i32.const 255
                  i32.and
                  set_local 23
                  br 1 (;@6;)
                end
                get_local 19
                br_if 1 (;@5;)
              end
              get_local 5
              i32.const 64
              i32.add
              get_local 23
              get_local 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              get_local 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              get_local 18
              get_local 24
              get_local 0
              call $__fwritex
              drop
            end
            get_local 26
            i32.const 8192
            i32.ne
            br_if 0 (;@4;)
            get_local 25
            get_local 20
            i32.ge_s
            br_if 0 (;@4;)
            get_local 5
            i32.const 64
            i32.add
            i32.const 32
            get_local 15
            get_local 25
            i32.sub
            tee_local 16
            i32.const 256
            get_local 16
            i32.const 256
            i32.lt_u
            tee_local 19
            select
            call $memset
            drop
            get_local 0
            i32.load
            tee_local 18
            i32.const 32
            i32.and
            set_local 17
            block  ;; label = @5
              block  ;; label = @6
                get_local 19
                i32.eqz
                br_if 0 (;@6;)
                get_local 17
                i32.eqz
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              get_local 17
              i32.eqz
              set_local 17
              get_local 16
              set_local 19
              loop  ;; label = @6
                block  ;; label = @7
                  get_local 17
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 5
                  i32.const 64
                  i32.add
                  i32.const 256
                  get_local 0
                  call $__fwritex
                  drop
                  get_local 0
                  i32.load
                  set_local 18
                end
                get_local 18
                i32.const 32
                i32.and
                tee_local 20
                i32.eqz
                set_local 17
                get_local 19
                i32.const -256
                i32.add
                tee_local 19
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
              end
              get_local 20
              br_if 1 (;@4;)
              get_local 16
              i32.const 255
              i32.and
              set_local 16
            end
            get_local 5
            i32.const 64
            i32.add
            get_local 16
            get_local 0
            call $__fwritex
            drop
            br 0 (;@4;)
          end
        end
        i32.const 0
        i32.const 61
        i32.store offset=1524
      end
      i32.const -1
      set_local 14
    end
    get_local 5
    i32.const 880
    i32.add
    set_global 0
    get_local 14)
  (func $pop_arg (type 11) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        get_local 1
                                        i32.const -9
                                        i32.add
                                        tee_local 1
                                        i32.const 17
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        block  ;; label = @19
                                          get_local 1
                                          br_table 0 (;@19;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 5 (;@14;) 13 (;@6;) 14 (;@5;) 11 (;@8;) 15 (;@4;) 6 (;@13;) 16 (;@3;) 4 (;@15;) 7 (;@12;) 17 (;@2;) 3 (;@16;) 12 (;@7;) 2 (;@17;) 18 (;@1;) 0 (;@19;)
                                        end
                                        get_local 2
                                        get_local 2
                                        i32.load
                                        tee_local 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        get_local 0
                                        get_local 1
                                        i32.load
                                        i32.store
                                      end
                                      return
                                    end
                                    get_local 2
                                    get_local 2
                                    i32.load
                                    i32.const 7
                                    i32.add
                                    i32.const -8
                                    i32.and
                                    tee_local 1
                                    i32.const 8
                                    i32.add
                                    i32.store
                                    get_local 0
                                    get_local 1
                                    i64.load
                                    i64.store
                                    return
                                  end
                                  get_local 2
                                  get_local 2
                                  i32.load
                                  tee_local 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  get_local 0
                                  get_local 1
                                  i64.load32_s
                                  i64.store
                                  return
                                end
                                get_local 2
                                get_local 2
                                i32.load
                                tee_local 1
                                i32.const 4
                                i32.add
                                i32.store
                                get_local 0
                                get_local 1
                                i64.load32_u
                                i64.store
                                return
                              end
                              get_local 2
                              get_local 2
                              i32.load
                              tee_local 1
                              i32.const 4
                              i32.add
                              i32.store
                              get_local 0
                              get_local 1
                              i64.load32_s
                              i64.store
                              return
                            end
                            get_local 2
                            get_local 2
                            i32.load
                            tee_local 1
                            i32.const 4
                            i32.add
                            i32.store
                            get_local 0
                            get_local 1
                            i64.load8_u
                            i64.store
                            return
                          end
                          get_local 2
                          get_local 2
                          i32.load
                          i32.const 7
                          i32.add
                          i32.const -8
                          i32.and
                          tee_local 1
                          i32.const 8
                          i32.add
                          i32.store
                          get_local 0
                          get_local 1
                          i64.load
                          i64.store
                          return
                        end
                        get_local 2
                        get_local 2
                        i32.load
                        tee_local 1
                        i32.const 4
                        i32.add
                        i32.store
                        get_local 0
                        get_local 1
                        i64.load32_s
                        i64.store
                        return
                      end
                      get_local 2
                      get_local 2
                      i32.load
                      tee_local 1
                      i32.const 4
                      i32.add
                      i32.store
                      get_local 0
                      get_local 1
                      i64.load32_u
                      i64.store
                      return
                    end
                    get_local 2
                    get_local 2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    tee_local 1
                    i32.const 8
                    i32.add
                    i32.store
                    get_local 0
                    get_local 1
                    i64.load
                    i64.store
                    return
                  end
                  get_local 2
                  get_local 2
                  i32.load
                  tee_local 1
                  i32.const 4
                  i32.add
                  i32.store
                  get_local 0
                  get_local 1
                  i64.load16_u
                  i64.store
                  return
                end
                get_local 2
                get_local 2
                i32.load
                tee_local 1
                i32.const 4
                i32.add
                i32.store
                get_local 0
                get_local 1
                i64.load32_u
                i64.store
                return
              end
              get_local 2
              get_local 2
              i32.load
              tee_local 1
              i32.const 4
              i32.add
              i32.store
              get_local 0
              get_local 1
              i64.load32_u
              i64.store
              return
            end
            get_local 2
            get_local 2
            i32.load
            tee_local 1
            i32.const 4
            i32.add
            i32.store
            get_local 0
            get_local 1
            i64.load16_s
            i64.store
            return
          end
          get_local 2
          get_local 2
          i32.load
          tee_local 1
          i32.const 4
          i32.add
          i32.store
          get_local 0
          get_local 1
          i64.load8_s
          i64.store
          return
        end
        get_local 2
        get_local 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        tee_local 1
        i32.const 8
        i32.add
        i32.store
        get_local 0
        get_local 1
        i64.load
        i64.store
        return
      end
      get_local 2
      get_local 2
      i32.load
      i32.const 7
      i32.add
      i32.const -8
      i32.and
      tee_local 1
      i32.const 8
      i32.add
      i32.store
      get_local 0
      get_local 1
      i64.load
      i64.store
      return
    end
    call $long_double_not_supported
    unreachable)
  (func $long_double_not_supported (type 4)
    i32.const 4864
    i32.const 5064
    call $fputs
    drop
    call $abort
    unreachable)
  (func $vsnprintf (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 128
    i32.sub
    tee_local 4
    set_global 0
    i32.const -1
    set_local 5
    get_local 4
    get_local 1
    i32.const -1
    i32.add
    i32.const 0
    get_local 1
    select
    i32.store offset=116
    get_local 4
    get_local 0
    get_local 4
    i32.const 126
    i32.add
    get_local 1
    select
    tee_local 0
    i32.store offset=112
    get_local 4
    i32.const 0
    i32.const 112
    call $memset
    tee_local 4
    i32.const -1
    i32.store offset=64
    get_local 4
    i32.const 3
    i32.store offset=32
    get_local 4
    get_local 4
    i32.const 112
    i32.add
    i32.store offset=68
    get_local 4
    get_local 4
    i32.const 127
    i32.add
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        get_local 0
        i32.const 0
        i32.store8
        get_local 4
        get_local 2
        get_local 3
        call $vfprintf
        set_local 5
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 61
      i32.store offset=1524
    end
    get_local 4
    i32.const 128
    i32.add
    set_global 0
    get_local 5)
  (func $sn_write (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      get_local 0
      i32.load offset=68
      tee_local 3
      i32.load offset=4
      tee_local 4
      get_local 0
      i32.load offset=20
      get_local 0
      i32.load offset=24
      tee_local 5
      i32.sub
      tee_local 6
      get_local 4
      get_local 6
      i32.lt_u
      select
      tee_local 6
      i32.eqz
      br_if 0 (;@1;)
      get_local 3
      i32.load
      get_local 5
      get_local 6
      call $memcpy
      drop
      get_local 3
      get_local 3
      i32.load
      get_local 6
      i32.add
      i32.store
      get_local 3
      i32.const 4
      i32.add
      tee_local 4
      get_local 4
      i32.load
      get_local 6
      i32.sub
      tee_local 4
      i32.store
    end
    get_local 3
    i32.load
    set_local 6
    block  ;; label = @1
      get_local 4
      get_local 2
      get_local 4
      get_local 2
      i32.lt_u
      select
      tee_local 4
      i32.eqz
      br_if 0 (;@1;)
      get_local 6
      get_local 1
      get_local 4
      call $memcpy
      drop
      get_local 3
      get_local 3
      i32.load
      get_local 4
      i32.add
      tee_local 6
      i32.store
      get_local 3
      i32.const 4
      i32.add
      tee_local 3
      get_local 3
      i32.load
      get_local 4
      i32.sub
      i32.store
    end
    get_local 6
    i32.const 0
    i32.store8
    get_local 0
    i32.const 24
    i32.add
    get_local 0
    i32.load offset=40
    tee_local 3
    i32.store
    get_local 0
    i32.const 20
    i32.add
    get_local 3
    i32.store
    get_local 2)
  (func $snprintf (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 4
    set_global 0
    get_local 4
    get_local 3
    i32.store offset=12
    get_local 0
    get_local 1
    get_local 2
    get_local 3
    call $vsnprintf
    set_local 3
    get_local 4
    i32.const 16
    i32.add
    set_global 0
    get_local 3)
  (func $fputs (type 2) (param i32 i32) (result i32)
    (local i32)
    i32.const -1
    i32.const 0
    get_local 0
    call $strlen
    tee_local 2
    get_local 0
    i32.const 1
    get_local 2
    get_local 1
    call $fwrite
    i32.ne
    select)
  (func $__towrite (type 0) (param i32) (result i32)
    (local i32)
    get_local 0
    get_local 0
    i32.load offset=60
    tee_local 1
    i32.const -1
    i32.add
    get_local 1
    i32.or
    i32.store offset=60
    block  ;; label = @1
      get_local 0
      i32.load
      tee_local 1
      i32.const 8
      i32.and
      br_if 0 (;@1;)
      get_local 0
      i64.const 0
      i64.store offset=4 align=4
      get_local 0
      get_local 0
      i32.load offset=40
      tee_local 1
      i32.store offset=24
      get_local 0
      get_local 1
      i32.store offset=20
      get_local 0
      get_local 1
      get_local 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      i32.const 0
      return
    end
    get_local 0
    get_local 1
    i32.const 32
    i32.or
    i32.store
    i32.const -1)
  (func $__fwritex (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.load offset=16
        tee_local 3
        br_if 0 (;@2;)
        i32.const 0
        set_local 6
        get_local 2
        call $__towrite
        br_if 1 (;@1;)
        get_local 2
        i32.const 16
        i32.add
        i32.load
        set_local 3
      end
      block  ;; label = @2
        get_local 3
        get_local 2
        i32.load offset=20
        tee_local 4
        i32.sub
        get_local 1
        i32.ge_u
        br_if 0 (;@2;)
        get_local 2
        get_local 0
        get_local 1
        get_local 2
        i32.load offset=32
        call_indirect (type 1)
        return
      end
      i32.const 0
      set_local 5
      block  ;; label = @2
        get_local 2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 0
        set_local 5
        get_local 0
        set_local 6
        i32.const 0
        set_local 3
        loop  ;; label = @3
          get_local 1
          get_local 3
          i32.eq
          br_if 1 (;@2;)
          get_local 3
          i32.const 1
          i32.add
          set_local 3
          get_local 6
          get_local 1
          i32.add
          set_local 7
          get_local 6
          i32.const -1
          i32.add
          tee_local 8
          set_local 6
          get_local 7
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        get_local 2
        get_local 0
        get_local 1
        get_local 3
        i32.sub
        i32.const 1
        i32.add
        tee_local 5
        get_local 2
        i32.load offset=32
        call_indirect (type 1)
        tee_local 6
        get_local 5
        i32.lt_u
        br_if 1 (;@1;)
        get_local 8
        get_local 1
        i32.add
        i32.const 1
        i32.add
        set_local 0
        get_local 2
        i32.const 20
        i32.add
        i32.load
        set_local 4
        get_local 3
        i32.const -1
        i32.add
        set_local 1
      end
      get_local 4
      get_local 0
      get_local 1
      call $memcpy
      drop
      get_local 2
      i32.const 20
      i32.add
      tee_local 3
      get_local 3
      i32.load
      get_local 1
      i32.add
      i32.store
      get_local 5
      get_local 1
      i32.add
      return
    end
    get_local 6)
  (func $fwrite (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 0
      get_local 2
      get_local 1
      i32.mul
      tee_local 4
      get_local 3
      call $__fwritex
      tee_local 0
      get_local 4
      i32.ne
      br_if 0 (;@1;)
      get_local 2
      i32.const 0
      get_local 1
      select
      return
    end
    get_local 0
    get_local 1
    i32.div_u)
  (func $strlen (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    get_local 0
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 0
          i32.load8_u
          i32.eqz
          br_if 1 (;@2;)
          get_local 0
          i32.const 1
          i32.add
          set_local 1
          loop  ;; label = @4
            get_local 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            get_local 1
            i32.load8_u
            set_local 2
            get_local 1
            i32.const 1
            i32.add
            tee_local 3
            set_local 1
            get_local 2
            br_if 0 (;@4;)
          end
          get_local 3
          i32.const -1
          i32.add
          get_local 0
          i32.sub
          return
        end
        get_local 1
        i32.const -4
        i32.add
        set_local 1
        loop  ;; label = @3
          get_local 1
          i32.const 4
          i32.add
          tee_local 1
          i32.load
          tee_local 2
          i32.const -1
          i32.xor
          get_local 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        get_local 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        loop  ;; label = @3
          get_local 1
          i32.load8_u offset=1
          set_local 2
          get_local 1
          i32.const 1
          i32.add
          tee_local 3
          set_local 1
          get_local 2
          br_if 0 (;@3;)
        end
        get_local 3
        get_local 0
        i32.sub
        return
      end
      get_local 0
      get_local 0
      i32.sub
      return
    end
    get_local 1
    get_local 0
    i32.sub)
  (func $strnlen (type 2) (param i32 i32) (result i32)
    (local i32)
    get_local 0
    i32.const 0
    get_local 1
    call $memchr
    tee_local 2
    get_local 0
    i32.sub
    get_local 1
    get_local 2
    select)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            i32.eqz
            br_if 0 (;@4;)
            get_local 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            get_local 0
            set_local 3
            block  ;; label = @5
              loop  ;; label = @6
                get_local 3
                get_local 1
                i32.load8_u
                i32.store8
                get_local 2
                i32.const -1
                i32.add
                set_local 4
                get_local 3
                i32.const 1
                i32.add
                set_local 3
                get_local 1
                i32.const 1
                i32.add
                set_local 1
                get_local 2
                i32.const 1
                i32.eq
                br_if 1 (;@5;)
                get_local 4
                set_local 2
                get_local 1
                i32.const 3
                i32.and
                br_if 0 (;@6;)
              end
            end
            get_local 3
            i32.const 3
            i32.and
            tee_local 2
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          get_local 2
          set_local 4
          get_local 0
          tee_local 3
          i32.const 3
          i32.and
          tee_local 2
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            get_local 4
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            get_local 4
            i32.const -16
            i32.add
            set_local 2
            loop  ;; label = @5
              get_local 3
              get_local 1
              i32.load
              i32.store
              get_local 3
              i32.const 4
              i32.add
              get_local 1
              i32.const 4
              i32.add
              i32.load
              i32.store
              get_local 3
              i32.const 8
              i32.add
              get_local 1
              i32.const 8
              i32.add
              i32.load
              i32.store
              get_local 3
              i32.const 12
              i32.add
              get_local 1
              i32.const 12
              i32.add
              i32.load
              i32.store
              get_local 3
              i32.const 16
              i32.add
              set_local 3
              get_local 1
              i32.const 16
              i32.add
              set_local 1
              get_local 4
              i32.const -16
              i32.add
              tee_local 4
              i32.const 15
              i32.gt_u
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          get_local 4
          set_local 2
        end
        block  ;; label = @3
          get_local 2
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 1
          i64.load align=4
          i64.store align=4
          get_local 1
          i32.const 8
          i32.add
          set_local 1
          get_local 3
          i32.const 8
          i32.add
          set_local 3
        end
        block  ;; label = @3
          get_local 2
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 1
          i32.load
          i32.store
          get_local 1
          i32.const 4
          i32.add
          set_local 1
          get_local 3
          i32.const 4
          i32.add
          set_local 3
        end
        block  ;; label = @3
          get_local 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          get_local 1
          i32.load8_u
          i32.store8
          get_local 3
          get_local 1
          i32.load8_u offset=1
          i32.store8 offset=1
          get_local 3
          i32.const 2
          i32.add
          set_local 3
          get_local 1
          i32.const 2
          i32.add
          set_local 1
        end
        get_local 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 0
        return
      end
      block  ;; label = @2
        get_local 4
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            get_local 2
            i32.const 2
            i32.eq
            br_if 1 (;@3;)
            get_local 2
            i32.const 1
            i32.ne
            br_if 2 (;@2;)
            get_local 3
            get_local 1
            i32.load8_u offset=1
            i32.store8 offset=1
            get_local 3
            get_local 1
            i32.load
            tee_local 5
            i32.store8
            get_local 3
            get_local 1
            i32.load8_u offset=2
            i32.store8 offset=2
            get_local 4
            i32.const -3
            i32.add
            set_local 6
            get_local 3
            i32.const 3
            i32.add
            set_local 7
            get_local 4
            i32.const -20
            i32.add
            i32.const -16
            i32.and
            set_local 8
            i32.const 0
            set_local 2
            loop  ;; label = @5
              get_local 7
              get_local 2
              i32.add
              tee_local 3
              get_local 1
              get_local 2
              i32.add
              tee_local 9
              i32.const 4
              i32.add
              i32.load
              tee_local 10
              i32.const 8
              i32.shl
              get_local 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 3
              i32.const 4
              i32.add
              get_local 9
              i32.const 8
              i32.add
              i32.load
              tee_local 5
              i32.const 8
              i32.shl
              get_local 10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 3
              i32.const 8
              i32.add
              get_local 9
              i32.const 12
              i32.add
              i32.load
              tee_local 10
              i32.const 8
              i32.shl
              get_local 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 3
              i32.const 12
              i32.add
              get_local 9
              i32.const 16
              i32.add
              i32.load
              tee_local 5
              i32.const 8
              i32.shl
              get_local 10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              get_local 2
              i32.const 16
              i32.add
              set_local 2
              get_local 6
              i32.const -16
              i32.add
              tee_local 6
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            get_local 7
            get_local 2
            i32.add
            set_local 3
            get_local 1
            get_local 2
            i32.add
            i32.const 3
            i32.add
            set_local 1
            get_local 4
            i32.const -19
            i32.add
            get_local 8
            i32.sub
            set_local 4
            br 2 (;@2;)
          end
          get_local 3
          get_local 1
          i32.load
          tee_local 5
          i32.store8
          get_local 4
          i32.const -1
          i32.add
          set_local 6
          get_local 3
          i32.const 1
          i32.add
          set_local 7
          get_local 4
          i32.const -20
          i32.add
          i32.const -16
          i32.and
          set_local 8
          i32.const 0
          set_local 2
          loop  ;; label = @4
            get_local 7
            get_local 2
            i32.add
            tee_local 3
            get_local 1
            get_local 2
            i32.add
            tee_local 9
            i32.const 4
            i32.add
            i32.load
            tee_local 10
            i32.const 24
            i32.shl
            get_local 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            get_local 3
            i32.const 4
            i32.add
            get_local 9
            i32.const 8
            i32.add
            i32.load
            tee_local 5
            i32.const 24
            i32.shl
            get_local 10
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            get_local 3
            i32.const 8
            i32.add
            get_local 9
            i32.const 12
            i32.add
            i32.load
            tee_local 10
            i32.const 24
            i32.shl
            get_local 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            get_local 3
            i32.const 12
            i32.add
            get_local 9
            i32.const 16
            i32.add
            i32.load
            tee_local 5
            i32.const 24
            i32.shl
            get_local 10
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            get_local 2
            i32.const 16
            i32.add
            set_local 2
            get_local 6
            i32.const -16
            i32.add
            tee_local 6
            i32.const 18
            i32.gt_u
            br_if 0 (;@4;)
          end
          get_local 7
          get_local 2
          i32.add
          set_local 3
          get_local 1
          get_local 2
          i32.add
          i32.const 1
          i32.add
          set_local 1
          get_local 4
          i32.const -17
          i32.add
          get_local 8
          i32.sub
          set_local 4
          br 1 (;@2;)
        end
        get_local 3
        get_local 1
        i32.load
        tee_local 5
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 4
        i32.const -2
        i32.add
        set_local 6
        get_local 3
        i32.const 2
        i32.add
        set_local 7
        get_local 4
        i32.const -20
        i32.add
        i32.const -16
        i32.and
        set_local 8
        i32.const 0
        set_local 2
        loop  ;; label = @3
          get_local 7
          get_local 2
          i32.add
          tee_local 3
          get_local 1
          get_local 2
          i32.add
          tee_local 9
          i32.const 4
          i32.add
          i32.load
          tee_local 10
          i32.const 16
          i32.shl
          get_local 5
          i32.const 16
          i32.shr_u
          i32.or
          i32.store
          get_local 3
          i32.const 4
          i32.add
          get_local 9
          i32.const 8
          i32.add
          i32.load
          tee_local 5
          i32.const 16
          i32.shl
          get_local 10
          i32.const 16
          i32.shr_u
          i32.or
          i32.store
          get_local 3
          i32.const 8
          i32.add
          get_local 9
          i32.const 12
          i32.add
          i32.load
          tee_local 10
          i32.const 16
          i32.shl
          get_local 5
          i32.const 16
          i32.shr_u
          i32.or
          i32.store
          get_local 3
          i32.const 12
          i32.add
          get_local 9
          i32.const 16
          i32.add
          i32.load
          tee_local 5
          i32.const 16
          i32.shl
          get_local 10
          i32.const 16
          i32.shr_u
          i32.or
          i32.store
          get_local 2
          i32.const 16
          i32.add
          set_local 2
          get_local 6
          i32.const -16
          i32.add
          tee_local 6
          i32.const 17
          i32.gt_u
          br_if 0 (;@3;)
        end
        get_local 7
        get_local 2
        i32.add
        set_local 3
        get_local 1
        get_local 2
        i32.add
        i32.const 2
        i32.add
        set_local 1
        get_local 4
        i32.const -18
        i32.add
        get_local 8
        i32.sub
        set_local 4
      end
      block  ;; label = @2
        get_local 4
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load16_u align=1
        i32.store16 align=1
        get_local 3
        get_local 1
        i32.load8_u offset=2
        i32.store8 offset=2
        get_local 3
        get_local 1
        i32.load8_u offset=3
        i32.store8 offset=3
        get_local 3
        get_local 1
        i32.load8_u offset=4
        i32.store8 offset=4
        get_local 3
        get_local 1
        i32.load8_u offset=5
        i32.store8 offset=5
        get_local 3
        get_local 1
        i32.load8_u offset=6
        i32.store8 offset=6
        get_local 3
        get_local 1
        i32.load8_u offset=7
        i32.store8 offset=7
        get_local 3
        get_local 1
        i32.load8_u offset=8
        i32.store8 offset=8
        get_local 3
        get_local 1
        i32.load8_u offset=9
        i32.store8 offset=9
        get_local 3
        get_local 1
        i32.load8_u offset=10
        i32.store8 offset=10
        get_local 3
        get_local 1
        i32.load8_u offset=11
        i32.store8 offset=11
        get_local 3
        get_local 1
        i32.load8_u offset=12
        i32.store8 offset=12
        get_local 3
        get_local 1
        i32.load8_u offset=13
        i32.store8 offset=13
        get_local 3
        get_local 1
        i32.load8_u offset=14
        i32.store8 offset=14
        get_local 3
        get_local 1
        i32.load8_u offset=15
        i32.store8 offset=15
        get_local 3
        i32.const 16
        i32.add
        set_local 3
        get_local 1
        i32.const 16
        i32.add
        set_local 1
      end
      block  ;; label = @2
        get_local 4
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 3
        get_local 1
        i32.load8_u offset=2
        i32.store8 offset=2
        get_local 3
        get_local 1
        i32.load8_u offset=3
        i32.store8 offset=3
        get_local 3
        get_local 1
        i32.load8_u offset=4
        i32.store8 offset=4
        get_local 3
        get_local 1
        i32.load8_u offset=5
        i32.store8 offset=5
        get_local 3
        get_local 1
        i32.load8_u offset=6
        i32.store8 offset=6
        get_local 3
        get_local 1
        i32.load8_u offset=7
        i32.store8 offset=7
        get_local 3
        i32.const 8
        i32.add
        set_local 3
        get_local 1
        i32.const 8
        i32.add
        set_local 1
      end
      block  ;; label = @2
        get_local 4
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 3
        get_local 1
        i32.load8_u offset=2
        i32.store8 offset=2
        get_local 3
        get_local 1
        i32.load8_u offset=3
        i32.store8 offset=3
        get_local 3
        i32.const 4
        i32.add
        set_local 3
        get_local 1
        i32.const 4
        i32.add
        set_local 1
      end
      block  ;; label = @2
        get_local 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 3
        get_local 1
        i32.load8_u offset=1
        i32.store8 offset=1
        get_local 3
        i32.const 2
        i32.add
        set_local 3
        get_local 1
        i32.const 2
        i32.add
        set_local 1
      end
      get_local 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      get_local 3
      get_local 1
      i32.load8_u
      i32.store8
    end
    get_local 0)
  (func $memset (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.store8
      get_local 0
      get_local 2
      i32.add
      tee_local 3
      i32.const -1
      i32.add
      get_local 1
      i32.store8
      get_local 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.store8 offset=2
      get_local 0
      get_local 1
      i32.store8 offset=1
      get_local 3
      i32.const -3
      i32.add
      get_local 1
      i32.store8
      get_local 3
      i32.const -2
      i32.add
      get_local 1
      i32.store8
      get_local 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.store8 offset=3
      get_local 3
      i32.const -4
      i32.add
      get_local 1
      i32.store8
      get_local 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      i32.const 0
      get_local 0
      i32.sub
      i32.const 3
      i32.and
      tee_local 4
      i32.add
      tee_local 3
      get_local 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      tee_local 1
      i32.store
      get_local 3
      get_local 2
      get_local 4
      i32.sub
      i32.const -4
      i32.and
      tee_local 4
      i32.add
      tee_local 2
      i32.const -4
      i32.add
      get_local 1
      i32.store
      get_local 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      get_local 3
      get_local 1
      i32.store offset=8
      get_local 3
      get_local 1
      i32.store offset=4
      get_local 2
      i32.const -8
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -12
      i32.add
      get_local 1
      i32.store
      get_local 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      get_local 3
      get_local 1
      i32.store offset=24
      get_local 3
      get_local 1
      i32.store offset=20
      get_local 3
      get_local 1
      i32.store offset=16
      get_local 3
      get_local 1
      i32.store offset=12
      get_local 2
      i32.const -16
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -20
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -24
      i32.add
      get_local 1
      i32.store
      get_local 2
      i32.const -28
      i32.add
      get_local 1
      i32.store
      get_local 4
      get_local 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      tee_local 5
      i32.sub
      tee_local 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      get_local 1
      i64.extend_u/i32
      tee_local 6
      i64.const 32
      i64.shl
      get_local 6
      i64.or
      set_local 6
      get_local 3
      get_local 5
      i32.add
      set_local 1
      loop  ;; label = @2
        get_local 1
        get_local 6
        i64.store
        get_local 1
        i32.const 24
        i32.add
        get_local 6
        i64.store
        get_local 1
        i32.const 16
        i32.add
        get_local 6
        i64.store
        get_local 1
        i32.const 8
        i32.add
        get_local 6
        i64.store
        get_local 1
        i32.const 32
        i32.add
        set_local 1
        get_local 2
        i32.const -32
        i32.add
        tee_local 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    get_local 0)
  (func $strcmp (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    get_local 1
    i32.load8_u
    set_local 2
    block  ;; label = @1
      get_local 0
      i32.load8_u
      tee_local 3
      i32.eqz
      br_if 0 (;@1;)
      get_local 3
      get_local 2
      i32.const 255
      i32.and
      i32.ne
      br_if 0 (;@1;)
      get_local 0
      i32.const 1
      i32.add
      set_local 0
      get_local 1
      i32.const 1
      i32.add
      set_local 1
      loop  ;; label = @2
        get_local 1
        i32.load8_u
        set_local 2
        get_local 0
        i32.load8_u
        tee_local 3
        i32.eqz
        br_if 1 (;@1;)
        get_local 0
        i32.const 1
        i32.add
        set_local 0
        get_local 1
        i32.const 1
        i32.add
        set_local 1
        get_local 3
        get_local 2
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
      end
    end
    get_local 3
    get_local 2
    i32.const 255
    i32.and
    i32.sub)
  (func $memchr (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    get_local 2
    i32.const 0
    i32.ne
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              get_local 2
              i32.eqz
              br_if 0 (;@5;)
              get_local 0
              i32.const 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              get_local 1
              i32.const 255
              i32.and
              set_local 3
              loop  ;; label = @6
                get_local 0
                i32.load8_u
                get_local 3
                i32.eq
                br_if 2 (;@4;)
                get_local 2
                i32.const 1
                i32.ne
                set_local 4
                get_local 2
                i32.const -1
                i32.add
                set_local 5
                get_local 0
                i32.const 1
                i32.add
                set_local 0
                block  ;; label = @7
                  get_local 2
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  get_local 5
                  set_local 2
                  get_local 0
                  i32.const 3
                  i32.and
                  br_if 1 (;@6;)
                end
              end
              get_local 4
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            get_local 2
            set_local 5
            get_local 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          get_local 2
          set_local 5
        end
        block  ;; label = @3
          get_local 0
          i32.load8_u
          get_local 1
          i32.const 255
          i32.and
          i32.eq
          br_if 0 (;@3;)
          get_local 5
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          get_local 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          set_local 3
          loop  ;; label = @4
            get_local 0
            i32.load
            get_local 3
            i32.xor
            tee_local 2
            i32.const -1
            i32.xor
            get_local 2
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@3;)
            get_local 0
            i32.const 4
            i32.add
            set_local 0
            get_local 5
            i32.const -4
            i32.add
            tee_local 5
            i32.const 3
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        get_local 5
        i32.eqz
        br_if 0 (;@2;)
        get_local 1
        i32.const 255
        i32.and
        set_local 2
        loop  ;; label = @3
          get_local 0
          i32.load8_u
          get_local 2
          i32.eq
          br_if 2 (;@1;)
          get_local 0
          i32.const 1
          i32.add
          set_local 0
          get_local 5
          i32.const -1
          i32.add
          tee_local 5
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      return
    end
    get_local 0)
  (func $dummy (type 2) (param i32 i32) (result i32)
    get_local 0)
  (func $__lctrans (type 2) (param i32 i32) (result i32)
    get_local 0
    get_local 1
    call $dummy)
  (func $atoll (type 6) (param i32) (result i64)
    (local i32 i32 i32 i64)
    loop  ;; label = @1
      get_local 0
      i32.load8_s
      tee_local 1
      i32.const -9
      i32.add
      set_local 2
      get_local 0
      i32.const 1
      i32.add
      tee_local 3
      set_local 0
      get_local 1
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      get_local 3
      set_local 0
      get_local 2
      i32.const 5
      i32.lt_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            get_local 1
            i32.const 43
            i32.eq
            br_if 0 (;@4;)
            get_local 1
            i32.const 45
            i32.ne
            br_if 2 (;@2;)
            i32.const 1
            set_local 2
            br 1 (;@3;)
          end
          i32.const 0
          set_local 2
        end
        get_local 3
        i32.load8_s
        set_local 1
        br 1 (;@1;)
      end
      get_local 3
      i32.const -1
      i32.add
      set_local 3
      i32.const 0
      set_local 2
    end
    i64.const 0
    set_local 4
    block  ;; label = @1
      get_local 1
      i32.const -48
      i32.add
      tee_local 1
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      get_local 3
      i32.const 1
      i32.add
      set_local 0
      i64.const 0
      set_local 4
      loop  ;; label = @2
        get_local 4
        i64.const 10
        i64.mul
        get_local 1
        i64.extend_s/i32
        i64.sub
        set_local 4
        get_local 0
        i32.load8_s
        set_local 1
        get_local 0
        i32.const 1
        i32.add
        set_local 0
        get_local 1
        i32.const -48
        i32.add
        tee_local 1
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    get_local 4
    i64.const 0
    get_local 4
    i64.sub
    get_local 2
    select)
  (func $wctomb (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      get_local 1
      i32.const 0
      call $wcrtomb
      return
    end
    i32.const 0)
  (func $wcrtomb (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    set_local 3
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        get_local 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        get_local 0
        get_local 1
        i32.store8
        i32.const 1
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1528
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 1
                  i32.const 2047
                  i32.gt_u
                  br_if 1 (;@6;)
                  get_local 0
                  get_local 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=1
                  get_local 0
                  get_local 1
                  i32.const 6
                  i32.shr_u
                  i32.const 192
                  i32.or
                  i32.store8
                  i32.const 2
                  return
                end
                get_local 1
                i32.const -128
                i32.and
                i32.const 57216
                i32.ne
                br_if 1 (;@5;)
                get_local 0
                get_local 1
                i32.store8
                i32.const 1
                return
              end
              get_local 1
              i32.const 55296
              i32.lt_u
              br_if 1 (;@4;)
              get_local 1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.eq
              br_if 1 (;@4;)
              get_local 1
              i32.const -65536
              i32.add
              i32.const 1048575
              i32.gt_u
              br_if 2 (;@3;)
              get_local 0
              get_local 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              get_local 0
              get_local 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              get_local 0
              get_local 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              get_local 0
              get_local 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              return
            end
            i32.const 0
            i32.const 25
            i32.store offset=1524
            br 2 (;@2;)
          end
          get_local 0
          get_local 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          get_local 0
          get_local 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          get_local 0
          get_local 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          return
        end
        i32.const 0
        i32.const 25
        i32.store offset=1524
      end
      i32.const -1
      set_local 3
    end
    get_local 3)
  (func $isxdigit (type 0) (param i32) (result i32)
    (local i32)
    i32.const 1
    set_local 1
    block  ;; label = @1
      get_local 0
      i32.const -48
      i32.add
      i32.const 10
      i32.lt_u
      br_if 0 (;@1;)
      get_local 0
      i32.const 32
      i32.or
      i32.const -97
      i32.add
      i32.const 6
      i32.lt_u
      set_local 1
    end
    get_local 1)
  (func $isdigit (type 0) (param i32) (result i32)
    get_local 0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func $frexp (type 12) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i64.reinterpret/f64
        tee_local 2
        i64.const 52
        i64.shr_u
        i32.wrap/i64
        i32.const 2047
        i32.and
        tee_local 3
        i32.const 2047
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          get_local 3
          br_if 0 (;@3;)
          get_local 0
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br_if 2 (;@1;)
          get_local 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          get_local 1
          call $frexp
          set_local 0
          get_local 1
          get_local 1
          i32.load
          i32.const -64
          i32.add
          i32.store
          get_local 0
          return
        end
        get_local 1
        get_local 3
        i32.const -1022
        i32.add
        i32.store
        get_local 2
        i64.const -9218868437227405313
        i64.and
        i64.const 4602678819172646912
        i64.or
        f64.reinterpret/i64
        set_local 0
      end
      get_local 0
      return
    end
    get_local 1
    i32.const 0
    i32.store
    get_local 0)
  (table (;0;) 7 7 anyfunc)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 70720))
  (global (;1;) i32 (i32.const 70720))
  (global (;2;) i32 (i32.const 5176))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "invoke" (func $invoke))
  (export "allocate" (func $allocate))
  (export "deallocate" (func $deallocate))
  (elem (;0;) (i32.const 1) $poolAlloc $poolInit $sn_write $__stdio_close $__stdio_write $__stdio_seek)
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 1568) "Mailformed json given\00action\00\00\00\00Given json doesn't contain action field\00\00\00\00\00\00\00\00\00action field is mailformed\00\00Post\00Fetch\00%s given as the action field, but only `Post` and `Fetch` are supported\00username\00message\00Given json doesn't contain message or username field\00\00\00\00\00\00\00\00\00\00\00\00message or action fields are mailformed\00\00\00\00\00\00\00\00\00add_post failed\00get_posts_count failed\00{ count: \22%s\22 }\00offset\00count\00\00\00\00\00\00\00\00\00\00\00\00\00json fields are mailformed\00\00\00\00\00\00get_all_posts failed\00\00\00\00\00\00\00\00\00\00\00\00get_posts_by_username failed\00{ posts: \22%s\22 }\00\00\00\00CREATE TABLE messages(message text, username text)\00INSERT INTO messages VALUES(\22%s\22, \22%s\22)\00SELECT json_group_array(            json_object('message', message, 'username', username)        ) AS json_result FROM (            SELECT * FROM messages LIMIT %d OFFSET %d        )\00SELECT json_group_array(            json_object('message', message, 'username', username)        ) AS json_result FROM (                SELECT * FROM messages where username = '%s' LIMIT %d OFFSET %d        )\00\00\00\00\00\00\00\00\00\00\00\00\00\00SELECT COUNT(*) from messages\00\00\00\22\22\5c\5c//b\08f\0cn\0ar\0dt\09true\00 \0a\0d\09\0c\00}]\00false\00null\00\00\00\00\00\00\00\00-9223372036854775808\00\00\00\00\00\00\00\00\00\00\00\009223372036854775807\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\12D;\02?,G\14=30\0a\1b\06FKE7\0fI\0e\17\03@\1d<+6\1fJ-\1c\01 %)!\08\0c\15\16\22.\108>\0b41\18/A\099\11#C2B:\05\04&('\0d*\1e5\07\1aH\13$L\ff\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00No error information\00\00-+   0X0x\00(null)\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00")
  (data (;2;) (i32.const 5064) "\05\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\06\00\00\00\1c\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
