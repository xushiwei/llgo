; ModuleID = 'main'
source_filename = "main"

%main.S = type { %"github.com/goplus/llgo/internal/runtime.iface" }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.impl = type {}
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.impl = global ptr null, align 8
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [3 x i8] c"one", align 1
@3 = private unnamed_addr constant [8 x i8] c"main.one", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [8 x i8] c"main.two", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [4 x i8] c"impl", align 1
@"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = global ptr null, align 8
@_llgo_main.I = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@7 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@8 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @main.S.one(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 16)
  store %main.S %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call i64 %14(ptr %13)
  ret i64 %15
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.S.two(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 16)
  store %main.S %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" %14(ptr %13)
  ret %"github.com/goplus/llgo/internal/runtime.String" %15
}

define i64 @"main.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.S, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  ret i64 %13
}

define %"github.com/goplus/llgo/internal/runtime.String" @"main.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.S, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call %"github.com/goplus/llgo/internal/runtime.String" %12(ptr %11)
  ret %"github.com/goplus/llgo/internal/runtime.String" %13
}

define i64 @main.impl.one(%main.impl %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.impl.two(%main.impl %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 3, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %4
}

define i64 @"main.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %main.impl, ptr %0, align 1
  %2 = call i64 @main.impl.one(%main.impl %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/internal/runtime.String" @"main.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %main.impl, ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @main.impl.two(%main.impl %1)
  ret %"github.com/goplus/llgo/internal/runtime.String" %2
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = alloca %main.S, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  %4 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr @_llgo_main.impl, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.impl zeroinitializer, ptr %6, align 1
  %7 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %7, ptr %5)
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %9, i32 0, i32 1
  store ptr %6, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %9, align 8
  store %"github.com/goplus/llgo/internal/runtime.iface" %12, ptr %4, align 8
  %13 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %14 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %13, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %14)
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %14, 0
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = alloca { ptr, ptr }, align 8
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %15, ptr %21, align 8
  %22 = load { ptr, ptr }, ptr %19, align 8
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call i64 %24(ptr %23)
  %26 = icmp ne i64 %25, 1
  br i1 %26, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = inttoptr i64 %25 to ptr
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 0
  store ptr %27, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 1
  store ptr %28, ptr %31, align 8
  %32 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %32)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %33 = load %main.S, ptr %3, align 8
  %34 = extractvalue %main.S %33, 0
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %34)
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %34, 0
  %37 = getelementptr ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = alloca { ptr, ptr }, align 8
  %40 = getelementptr inbounds { ptr, ptr }, ptr %39, i32 0, i32 0
  store ptr %38, ptr %40, align 8
  %41 = getelementptr inbounds { ptr, ptr }, ptr %39, i32 0, i32 1
  store ptr %35, ptr %41, align 8
  %42 = load { ptr, ptr }, ptr %39, align 8
  %43 = extractvalue { ptr, ptr } %42, 1
  %44 = extractvalue { ptr, ptr } %42, 0
  %45 = call i64 %44(ptr %43)
  %46 = icmp ne i64 %45, 1
  br i1 %46, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %47 = load ptr, ptr @_llgo_int, align 8
  %48 = inttoptr i64 %45 to ptr
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, i32 0, i32 0
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, i32 0, i32 1
  store ptr %48, ptr %51, align 8
  %52 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %52)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %53 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %54 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %54)
  %56 = load ptr, ptr @_llgo_main.I, align 8
  %57 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %56, ptr %55)
  br i1 %57, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %58 = load ptr, ptr @_llgo_int, align 8
  %59 = inttoptr i64 %166 to ptr
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, i32 0, i32 0
  store ptr %58, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, i32 0, i32 1
  store ptr %59, ptr %62, align 8
  %63 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %63)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %64 = load %main.S, ptr %3, align 8
  %65 = extractvalue %main.S %64, 0
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %65)
  %67 = load ptr, ptr @_llgo_main.I, align 8
  %68 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %67, ptr %66)
  br i1 %68, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %69 = load ptr, ptr @_llgo_int, align 8
  %70 = inttoptr i64 %193 to ptr
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %71, i32 0, i32 0
  store ptr %69, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %71, i32 0, i32 1
  store ptr %70, ptr %73, align 8
  %74 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %71, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %74)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %75 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %76 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %75, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %76)
  %78 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %76, 0
  %79 = getelementptr ptr, ptr %78, i64 4
  %80 = load ptr, ptr %79, align 8
  %81 = alloca { ptr, ptr }, align 8
  %82 = getelementptr inbounds { ptr, ptr }, ptr %81, i32 0, i32 0
  store ptr %80, ptr %82, align 8
  %83 = getelementptr inbounds { ptr, ptr }, ptr %81, i32 0, i32 1
  store ptr %77, ptr %83, align 8
  %84 = load { ptr, ptr }, ptr %81, align 8
  %85 = extractvalue { ptr, ptr } %84, 1
  %86 = extractvalue { ptr, ptr } %84, 0
  %87 = call %"github.com/goplus/llgo/internal/runtime.String" %86(ptr %85)
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr @0, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 3, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  %92 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %87, %"github.com/goplus/llgo/internal/runtime.String" %91)
  %93 = xor i1 %92, true
  br i1 %93, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %94 = load ptr, ptr @_llgo_string, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %99)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %100 = load %main.S, ptr %3, align 8
  %101 = extractvalue %main.S %100, 0
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %101)
  %103 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %101, 0
  %104 = getelementptr ptr, ptr %103, i64 4
  %105 = load ptr, ptr %104, align 8
  %106 = alloca { ptr, ptr }, align 8
  %107 = getelementptr inbounds { ptr, ptr }, ptr %106, i32 0, i32 0
  store ptr %105, ptr %107, align 8
  %108 = getelementptr inbounds { ptr, ptr }, ptr %106, i32 0, i32 1
  store ptr %102, ptr %108, align 8
  %109 = load { ptr, ptr }, ptr %106, align 8
  %110 = extractvalue { ptr, ptr } %109, 1
  %111 = extractvalue { ptr, ptr } %109, 0
  %112 = call %"github.com/goplus/llgo/internal/runtime.String" %111(ptr %110)
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 0
  store ptr @0, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 1
  store i64 3, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %117 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %112, %"github.com/goplus/llgo/internal/runtime.String" %116)
  %118 = xor i1 %117, true
  br i1 %118, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %119 = load ptr, ptr @_llgo_string, align 8
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %112, ptr %120, align 8
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %121, i32 0, i32 0
  store ptr %119, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %121, i32 0, i32 1
  store ptr %120, ptr %123, align 8
  %124 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %121, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %124)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %125 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %126 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %125, align 8
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %126)
  %128 = load ptr, ptr @_llgo_main.I, align 8
  %129 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %128, ptr %127)
  br i1 %129, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %130 = load ptr, ptr @_llgo_string, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %220, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, i32 0, i32 0
  store ptr %130, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, i32 0, i32 1
  store ptr %131, ptr %134, align 8
  %135 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %135)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %136 = load %main.S, ptr %3, align 8
  %137 = extractvalue %main.S %136, 0
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %137)
  %139 = load ptr, ptr @_llgo_main.I, align 8
  %140 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %139, ptr %138)
  br i1 %140, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %141 = load ptr, ptr @_llgo_string, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %252, ptr %142, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, i32 0, i32 0
  store ptr %141, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, i32 0, i32 1
  store ptr %142, ptr %145, align 8
  %146 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %146)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 0
  store ptr @8, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 1
  store i64 4, ptr %149, align 4
  %150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %147, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %150)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_17:                                         ; preds = %_llgo_4
  %151 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %54, 1
  %152 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %152, ptr %55)
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %154, i32 0, i32 0
  store ptr %153, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %154, i32 0, i32 1
  store ptr %151, ptr %156, align 8
  %157 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %159 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %158, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %54, ptr %159, align 8
  %160 = alloca { ptr, ptr }, align 8
  %161 = getelementptr inbounds { ptr, ptr }, ptr %160, i32 0, i32 0
  store ptr @"main.one$bound", ptr %161, align 8
  %162 = getelementptr inbounds { ptr, ptr }, ptr %160, i32 0, i32 1
  store ptr %158, ptr %162, align 8
  %163 = load { ptr, ptr }, ptr %160, align 8
  %164 = extractvalue { ptr, ptr } %163, 1
  %165 = extractvalue { ptr, ptr } %163, 0
  %166 = call i64 %165(ptr %164)
  %167 = icmp ne i64 %166, 1
  br i1 %167, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @7, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 21, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = load ptr, ptr @_llgo_string, align 8
  %173 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %171, ptr %173, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %174, i32 0, i32 0
  store ptr %172, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %174, i32 0, i32 1
  store ptr %173, ptr %176, align 8
  %177 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %174, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %177)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %178 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %65, 1
  %179 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %179, ptr %66)
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %181, i32 0, i32 0
  store ptr %180, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %181, i32 0, i32 1
  store ptr %178, ptr %183, align 8
  %184 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %181, align 8
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %186 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %185, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %65, ptr %186, align 8
  %187 = alloca { ptr, ptr }, align 8
  %188 = getelementptr inbounds { ptr, ptr }, ptr %187, i32 0, i32 0
  store ptr @"main.one$bound", ptr %188, align 8
  %189 = getelementptr inbounds { ptr, ptr }, ptr %187, i32 0, i32 1
  store ptr %185, ptr %189, align 8
  %190 = load { ptr, ptr }, ptr %187, align 8
  %191 = extractvalue { ptr, ptr } %190, 1
  %192 = extractvalue { ptr, ptr } %190, 0
  %193 = call i64 %192(ptr %191)
  %194 = icmp ne i64 %193, 1
  br i1 %194, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @7, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 21, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = load ptr, ptr @_llgo_string, align 8
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %198, ptr %200, align 8
  %201 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %201, i32 0, i32 0
  store ptr %199, ptr %202, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %201, i32 0, i32 1
  store ptr %200, ptr %203, align 8
  %204 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %201, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %204)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %205 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %126, 1
  %206 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %206, ptr %127)
  %208 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %208, i32 0, i32 0
  store ptr %207, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %208, i32 0, i32 1
  store ptr %205, ptr %210, align 8
  %211 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %208, align 8
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %213 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %212, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %126, ptr %213, align 8
  %214 = alloca { ptr, ptr }, align 8
  %215 = getelementptr inbounds { ptr, ptr }, ptr %214, i32 0, i32 0
  store ptr @"main.two$bound", ptr %215, align 8
  %216 = getelementptr inbounds { ptr, ptr }, ptr %214, i32 0, i32 1
  store ptr %212, ptr %216, align 8
  %217 = load { ptr, ptr }, ptr %214, align 8
  %218 = extractvalue { ptr, ptr } %217, 1
  %219 = extractvalue { ptr, ptr } %217, 0
  %220 = call %"github.com/goplus/llgo/internal/runtime.String" %219(ptr %218)
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @0, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 3, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %220, %"github.com/goplus/llgo/internal/runtime.String" %224)
  %226 = xor i1 %225, true
  br i1 %226, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %227 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 0
  store ptr @7, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 1
  store i64 21, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %227, align 8
  %231 = load ptr, ptr @_llgo_string, align 8
  %232 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %230, ptr %232, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %233, i32 0, i32 0
  store ptr %231, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %233, i32 0, i32 1
  store ptr %232, ptr %235, align 8
  %236 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %233, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %236)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %237 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %137, 1
  %238 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %238, ptr %138)
  %240 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %240, i32 0, i32 0
  store ptr %239, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %240, i32 0, i32 1
  store ptr %237, ptr %242, align 8
  %243 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %240, align 8
  %244 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %245 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %244, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %137, ptr %245, align 8
  %246 = alloca { ptr, ptr }, align 8
  %247 = getelementptr inbounds { ptr, ptr }, ptr %246, i32 0, i32 0
  store ptr @"main.two$bound", ptr %247, align 8
  %248 = getelementptr inbounds { ptr, ptr }, ptr %246, i32 0, i32 1
  store ptr %244, ptr %248, align 8
  %249 = load { ptr, ptr }, ptr %246, align 8
  %250 = extractvalue { ptr, ptr } %249, 1
  %251 = extractvalue { ptr, ptr } %249, 0
  %252 = call %"github.com/goplus/llgo/internal/runtime.String" %251(ptr %250)
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 0
  store ptr @0, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 1
  store i64 3, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %253, align 8
  %257 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %252, %"github.com/goplus/llgo/internal/runtime.String" %256)
  %258 = xor i1 %257, true
  br i1 %258, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %259 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %259, i32 0, i32 0
  store ptr @7, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %259, i32 0, i32 1
  store i64 21, ptr %261, align 4
  %262 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %259, align 8
  %263 = load ptr, ptr @_llgo_string, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %262, ptr %264, align 8
  %265 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %265, i32 0, i32 0
  store ptr %263, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %265, i32 0, i32 1
  store ptr %264, ptr %267, align 8
  %268 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %265, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %268)
  unreachable
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %0, ptr @_llgo_main.impl, align 8
  %1 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @1, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 4, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 1
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 2
  store i64 0, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %6, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %12)
  store ptr %13, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @2, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 3, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @3, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 8, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %25, i32 0, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = or i8 %27, 32
  store i8 %28, ptr %26, align 1
  store ptr %25, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %29 = load ptr, ptr @_llgo_int, align 8
  %30 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, i32 0, i32 1
  store i64 0, ptr %35, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, i32 0, i32 2
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %39 = getelementptr ptr, ptr %38, i64 0
  store ptr %29, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 0
  store ptr %38, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 1
  store i64 1, ptr %42, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 2
  store i64 1, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %37, %"github.com/goplus/llgo/internal/runtime.Slice" %44, i1 false)
  store ptr %45, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %46 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %47 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %47, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %22, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %47, i32 0, i32 1
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %47, i32 0, i32 2
  store ptr @"main.(*impl).one", ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %47, i32 0, i32 3
  store ptr @"main.(*impl).one", ptr %51, align 8
  %52 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %47, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %53, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %22, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %53, i32 0, i32 1
  store ptr %46, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %53, i32 0, i32 2
  store ptr @"main.(*impl).one", ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %53, i32 0, i32 3
  store ptr @main.impl.one, ptr %57, align 8
  %58 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %53, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 0
  store ptr @0, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 1
  store i64 3, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %59, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @4, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 8, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %69, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %70 = load ptr, ptr @_llgo_string, align 8
  %71 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, i32 0, i32 0
  store ptr %73, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, i32 0, i32 1
  store i64 0, ptr %76, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, i32 0, i32 2
  store i64 0, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, align 8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %80 = getelementptr ptr, ptr %79, i64 0
  store ptr %70, ptr %80, align 8
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 0
  store ptr %79, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 1
  store i64 1, ptr %83, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 2
  store i64 1, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %78, %"github.com/goplus/llgo/internal/runtime.Slice" %85, i1 false)
  store ptr %86, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %87 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %88 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %88, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %66, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %88, i32 0, i32 1
  store ptr %87, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %88, i32 0, i32 2
  store ptr @"main.(*impl).two", ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %88, i32 0, i32 3
  store ptr @"main.(*impl).two", ptr %92, align 8
  %93 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %88, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %66, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 1
  store ptr %87, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 2
  store ptr @"main.(*impl).two", ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %94, i32 0, i32 3
  store ptr @main.impl.two, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %94, align 8
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %101 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %100, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %58, ptr %101, align 8
  %102 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %100, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %99, ptr %102, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 0
  store ptr %100, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 1
  store i64 2, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 2
  store i64 2, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %109 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %108, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %52, ptr %109, align 8
  %110 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %108, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %93, ptr %110, align 8
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 0
  store ptr %108, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 1
  store i64 2, ptr %113, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 2
  store i64 2, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @1, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 4, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 0
  store ptr @5, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 1
  store i64 4, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %120, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %119, %"github.com/goplus/llgo/internal/runtime.String" %123, ptr %14, %"github.com/goplus/llgo/internal/runtime.Slice" %107, %"github.com/goplus/llgo/internal/runtime.Slice" %115)
  %124 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %125 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @3, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 8, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %129, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i32 0, i32 1
  store ptr %124, ptr %132, align 8
  %133 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr @4, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 8, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %137, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, i32 0, i32 1
  store ptr %125, ptr %140, align 8
  %141 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %143 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %142, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %133, ptr %143, align 8
  %144 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %142, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %141, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 0
  store ptr %142, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 1
  store i64 2, ptr %147, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 2
  store i64 2, ptr %148, align 4
  %149 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @1, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 4, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr null, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 0, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %153, %"github.com/goplus/llgo/internal/runtime.String" %157, %"github.com/goplus/llgo/internal/runtime.Slice" %149)
  store ptr %158, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %159 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %160 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %161 = load ptr, ptr @_llgo_main.I, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 0
  store ptr @3, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 1
  store i64 8, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %163, align 8
  %167 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %167, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %166, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %167, i32 0, i32 1
  store ptr %159, ptr %169, align 8
  %170 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %167, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 0
  store ptr @4, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 1
  store i64 8, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %171, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %174, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, i32 0, i32 1
  store ptr %160, ptr %177, align 8
  %178 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, align 8
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %180 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %179, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %170, ptr %180, align 8
  %181 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %179, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %178, ptr %181, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 0
  store ptr %179, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 1
  store i64 2, ptr %184, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 2
  store i64 2, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @1, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 4, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 0
  store ptr @6, ptr %192, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 1
  store i64 6, ptr %193, align 4
  %194 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %191, align 8
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %190, %"github.com/goplus/llgo/internal/runtime.String" %194, %"github.com/goplus/llgo/internal/runtime.Slice" %186)
  store ptr %195, ptr @_llgo_main.I, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

define i64 @"main.one$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  ret i64 %13
}

declare i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

define %"github.com/goplus/llgo/internal/runtime.String" @"main.two$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call %"github.com/goplus/llgo/internal/runtime.String" %12(ptr %11)
  ret %"github.com/goplus/llgo/internal/runtime.String" %13
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
