; ModuleID = '/home/andrewcapon/fpga/ArtixA7/AudioPlayground/VitisHlsWS/MultiSineMaster/MultiSineMaster/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 0, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 0, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>" = type { %"struct.ap_fixed_base<24, 1, true, AP_RND, AP_SAT, 0>" }
%"struct.ap_fixed_base<24, 1, true, AP_RND, AP_SAT, 0>" = type { %"struct.ssdm_int<24, true>" }
%"struct.ssdm_int<24, true>" = type { i24 }

; Function Attrs: noinline willreturn
define void @apatb_MultiSineMaster_ir(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" "maxi" %phaseInc, %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="384" "maxi" %samples) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %phaseInc to [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]*
  %phaseInc_copy = alloca [8 x i32], align 512
  %1 = bitcast %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* %samples to [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]*
  %samples_copy = alloca [384 x i24], align 512
  call fastcc void @copy_in([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [8 x i32]* nonnull align 512 %phaseInc_copy, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* nonnull %1, [384 x i24]* nonnull align 512 %samples_copy)
  call void @apatb_MultiSineMaster_hw([8 x i32]* %phaseInc_copy, [384 x i24]* %samples_copy)
  call void @copy_back([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %0, [8 x i32]* %phaseInc_copy, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %1, [384 x i24]* %samples_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [8 x i32]* noalias nocapture align 512 "unpacked"="1.0", [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias readonly "unpacked"="2", [384 x i24]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>.36"([8 x i32]* align 512 %1, [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([384 x i24]* align 512 %3, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [8 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [8 x i32]* %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [8 x i32]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x i32], [8 x i32]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([384 x i24]* noalias nocapture align 512 "unpacked"="0.0" %dst, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([384 x i24]* %dst, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* nonnull %src, i64 384)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"([384 x i24]* nocapture "unpacked"="0.0" %dst, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"], [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [384 x i24], [384 x i24]* %dst, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0", [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias "unpacked"="2", [384 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %0, [8 x i32]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.26"([384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %2, [384 x i24]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.26"([384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias "unpacked"="0" %dst, [384 x i24]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.29"([384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* nonnull %dst, [384 x i24]* %src, i64 384)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.29"([384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* "unpacked"="0" %dst, [384 x i24]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [384 x i24], [384 x i24]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"], [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>.36"([8 x i32]* noalias nocapture align 512 "unpacked"="0.0" %dst, [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>.39"([8 x i32]* %dst, [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>.39"([8 x i32]* nocapture "unpacked"="0.0" %dst, [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8 x i32], [8 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_MultiSineMaster_hw([8 x i32]*, [384 x i24]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [8 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0", [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* noalias "unpacked"="2", [384 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a384struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>.26"([384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %2, [384 x i24]* align 512 %3)
  ret void
}

declare void @MultiSineMaster_hw_stub(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* noalias nocapture nonnull)

define void @MultiSineMaster_hw_stub_wrapper([8 x i32]*, [384 x i24]*) #5 {
entry:
  %2 = call i8* @malloc(i64 32)
  %3 = bitcast i8* %2 to [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]*
  %4 = call i8* @malloc(i64 1536)
  %5 = bitcast i8* %4 to [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]*
  call void @copy_out([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %3, [8 x i32]* %0, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %5, [384 x i24]* %1)
  %6 = bitcast [8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"*
  %7 = bitcast [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %5 to %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"*
  call void @MultiSineMaster_hw_stub(%"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"* %6, %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"* %7)
  call void @copy_in([8 x %"struct.ap_ufixed<32, 0, AP_TRN, AP_WRAP, 0>"]* %3, [8 x i32]* %0, [384 x %"struct.ap_fixed<24, 1, AP_RND, AP_SAT, 0>"]* %5, [384 x i24]* %1)
  call void @free(i8* %2)
  call void @free(i8* %4)
  ret void
}

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
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
