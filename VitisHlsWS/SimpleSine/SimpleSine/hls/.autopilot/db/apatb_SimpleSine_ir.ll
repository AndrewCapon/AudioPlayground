; ModuleID = '/home/andrewcapon/fpga/ArtixA7/AudioPlatform/AudioPlatformHlsWS/SimpleSine/SimpleSine/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 0, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 0, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>" = type { %"struct.ap_fixed_base<24, 1, true, AP_RND, AP_SAT, 0>" }
%"struct.ap_fixed_base<24, 1, true, AP_RND, AP_SAT, 0>" = type { %"struct.ssdm_int<24, true>" }
%"struct.ssdm_int<24, true>" = type { i24 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_SimpleSine_ir(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull dereferenceable(4) %accumulator, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* nocapture readonly %phaseInc, %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="48" %samples) local_unnamed_addr #0 {
entry:
  %accumulator_copy = alloca i32, align 512
  %0 = bitcast %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* %samples to [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]*
  %samples_copy = alloca [48 x i24], align 512
  call fastcc void @copy_in(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* nonnull %accumulator, i32* nonnull align 512 %accumulator_copy, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* nonnull %0, [48 x i24]* nonnull align 512 %samples_copy)
  call void @apatb_SimpleSine_hw(i32* %accumulator_copy, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %phaseInc, [48 x i24]* %samples_copy)
  call void @copy_back(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %accumulator, i32* %accumulator_copy, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %0, [48 x i24]* %samples_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias readonly "unpacked"="2", [48 x i24]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>.35"(i32* align 512 %1, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([48 x i24]* align 512 %3, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([48 x i24]* noalias nocapture align 512 "unpacked"="0.0" %dst, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([48 x i24]* %dst, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* nonnull %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([48 x i24]* nocapture "unpacked"="0.0" %dst, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"], [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [48 x i24], [48 x i24]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i24, i24* %src.addr.0.0.05, align 4
  store i24 %1, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0", [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias "unpacked"="2", [48 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.25"([48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %2, [48 x i24]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.25"([48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias "unpacked"="0" %dst, [48 x i24]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.28"([48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* nonnull %dst, [48 x i24]* %src, i64 48)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.28"([48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* "unpacked"="0" %dst, [48 x i24]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [48 x i24], [48 x i24]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"], [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i24, i24* %src.addr.0.0.05, align 4
  store i24 %1, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>.35"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_SimpleSine_hw(i32*, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"*, [48 x i24]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0", [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias "unpacked"="2", [48 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a48struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.25"([48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %2, [48 x i24]* align 512 %3)
  ret void
}

declare void @SimpleSine_hw_stub(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* nocapture readonly, %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* noalias nocapture nonnull)

define void @SimpleSine_hw_stub_wrapper(i32*, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"*, [48 x i24]*) #5 {
entry:
  %3 = call i8* @malloc(i64 4)
  %4 = bitcast i8* %3 to %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"*
  %5 = call i8* @malloc(i64 192)
  %6 = bitcast i8* %5 to [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]*
  call void @copy_out(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %4, i32* %0, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %6, [48 x i24]* %2)
  %7 = bitcast [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %6 to %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"*
  call void @SimpleSine_hw_stub(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %4, %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %1, %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* %7)
  call void @copy_in(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %4, i32* %0, [48 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %6, [48 x i24]* %2)
  call void @free(i8* %3)
  call void @free(i8* %5)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
