; ModuleID = '../bcout/drivers/gpu/drm/drm_fourcc.llvm.bc'
source_filename = "drivers/gpu/drm/drm_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.drm_format_info = type { i32, i8, i8, %union.anon.0, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.0 = type { [4 x i8] }
%struct.drm_device = type { %struct.list_head, i32, %struct.kref, %struct.device*, %struct.anon, %struct.drm_driver*, i8*, %struct.drm_minor*, %struct.drm_minor*, i8, %struct.drm_master*, i32, i8, %struct.inode*, i8*, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, i32, i8, %struct.drm_vblank_crtc*, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.drm_agp_head*, %struct.pci_dev*, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, %struct.drm_vma_offset_manager*, %struct.drm_vram_mm*, i32, %struct.drm_fb_helper* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type opaque
%struct.anon = type { %struct.list_head, i8*, %struct.spinlock }
%struct.drm_driver = type opaque
%struct.drm_minor = type opaque
%struct.drm_master = type opaque
%struct.inode = type opaque
%struct.atomic_t = type { i32 }
%struct.drm_vblank_crtc = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.drm_agp_head = type opaque
%struct.pci_dev = type opaque
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, %struct.drm_modeset_acquire_ctx*, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.drm_mode_config_funcs*, i64, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.drm_property*, i32, i32, %struct.drm_atomic_state*, %struct.drm_mode_config_helper_funcs* }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.task_struct = type opaque
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, %struct.drm_modeset_lock*, %struct.list_head, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.drm_mode_config_funcs = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, void (%struct.drm_device*)*, {}*, i32 (%struct.drm_device*, %struct.drm_atomic_state*)*, i32 (%struct.drm_device*, %struct.drm_atomic_state*, i1)*, %struct.drm_atomic_state* (%struct.drm_device*)*, void (%struct.drm_atomic_state*)*, void (%struct.drm_atomic_state*)* }
%struct.drm_framebuffer = type opaque
%struct.drm_file = type opaque
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.workqueue_struct = type opaque
%struct.drm_property = type opaque
%struct.drm_atomic_state = type opaque
%struct.drm_mode_config_helper_funcs = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_vma_offset_manager = type opaque
%struct.drm_vram_mm = type opaque
%struct.drm_fb_helper = type opaque
%struct.drm_format_name_buf = type { [32 x i8] }

@.str = private unnamed_addr constant [28 x i8] c"%c%c%c%c %s-endian (0x%08x)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@__drm_format_info.formats = internal constant [97 x %struct.drm_format_info] [%struct.drm_format_info { i32 538982467, i8 8, i8 1, %union.anon.0 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943867730, i8 8, i8 1, %union.anon.0 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 944916290, i8 8, i8 1, %union.anon.0 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842093144, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842089048, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842094674, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842094658, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842093121, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842089025, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842088786, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842088770, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892424792, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892420696, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892426322, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892426306, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892424769, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892420673, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892420434, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 892420418, i8 15, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 909199186, i8 16, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 909199170, i8 16, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875710290, i8 24, i8 1, %union.anon.0 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875710274, i8 24, i8 1, %union.anon.0 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875713112, i8 24, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875709016, i8 24, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875714642, i8 24, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875714626, i8 24, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943797586, i8 24, i8 2, %union.anon.0 { [4 x i8] c"\02\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943797570, i8 24, i8 2, %union.anon.0 { [4 x i8] c"\02\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808669784, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665688, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808671314, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808671298, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808669761, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665665, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665426, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665410, i8 30, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875713089, i8 32, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708993, i8 32, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708754, i8 32, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708738, i8 32, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 1211388504, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 1211384408, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 1211388481, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 1211384385, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943798354, i8 32, i8 2, %union.anon.0 { [4 x i8] c"\03\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943798338, i8 32, i8 2, %union.anon.0 { [4 x i8] c"\03\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943805016, i8 32, i8 2, %union.anon.0 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943800920, i8 32, i8 2, %union.anon.0 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943806546, i8 32, i8 2, %union.anon.0 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 943806530, i8 32, i8 2, %union.anon.0 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 961959257, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 4, i8 0, i8 1 }, %struct.drm_format_info { i32 961893977, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 4, i8 0, i8 1 }, %struct.drm_format_info { i32 825316697, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 825316953, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842093913, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 842094169, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 909202777, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 909203033, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875713881, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875714137, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842094158, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 825382478, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 909203022, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 825644622, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875714126, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842290766, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1448695129, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1431918169, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1498831189, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1498765654, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1448434008, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 875713878, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 1448433985, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 808530521, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 842084953, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 909193817, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 808531033, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 842085465, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 909194329, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1 }, %struct.drm_format_info { i32 808670808, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 909334104, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 942954072, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 810299481, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 1, i8 1 }, %struct.drm_format_info { i32 810299480, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 843853913, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 1, i8 1 }, %struct.drm_format_info { i32 843853912, i8 0, i8 1, %union.anon.0 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808530000, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 842084432, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 909193296, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808530512, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 808670550, i8 0, i8 1, %union.anon.0 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1 }, %struct.drm_format_info { i32 942691673, i8 0, i8 1, %union.anon.0 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808539481, i8 0, i8 1, %union.anon.0 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 892425806, i8 0, i8 2, %union.anon.0 { [4 x i8] c"\05\05\00\00" }, [4 x i8] c"\04\02\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1 }, %struct.drm_format_info { i32 808531025, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\02\02\02\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 0, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 825242705, i8 0, i8 3, %union.anon.0 { [4 x i8] c"\02\02\02\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 0, i8 0, i8 0, i8 1 }], align 16, !dbg !0
@.str.3 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/drm_fourcc.c\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mode_legacy_fb_format(i32 %bpp, i32 %depth) #0 !dbg !64 {
entry:
  %bpp.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %fmt = alloca i32, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bpp.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store i32 %depth, i32* %depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %depth.addr, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %fmt, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %fmt, align 4, !dbg !73
  %0 = load i32, i32* %bpp.addr, align 4, !dbg !74
  switch i32 %0, label %sw.default14 [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 24, label %sw.bb4
    i32 32, label %sw.bb8
  ], !dbg !75

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %depth.addr, align 4, !dbg !76
  %cmp = icmp eq i32 %1, 8, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %sw.bb
  store i32 538982467, i32* %fmt, align 4, !dbg !81
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog15, !dbg !83

sw.bb1:                                           ; preds = %entry
  %2 = load i32, i32* %depth.addr, align 4, !dbg !84
  switch i32 %2, label %sw.default [
    i32 15, label %sw.bb2
    i32 16, label %sw.bb3
  ], !dbg !85

sw.bb2:                                           ; preds = %sw.bb1
  store i32 892424792, i32* %fmt, align 4, !dbg !86
  br label %sw.epilog, !dbg !88

sw.bb3:                                           ; preds = %sw.bb1
  store i32 909199186, i32* %fmt, align 4, !dbg !89
  br label %sw.epilog, !dbg !90

sw.default:                                       ; preds = %sw.bb1
  br label %sw.epilog, !dbg !91

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2
  br label %sw.epilog15, !dbg !92

sw.bb4:                                           ; preds = %entry
  %3 = load i32, i32* %depth.addr, align 4, !dbg !93
  %cmp5 = icmp eq i32 %3, 24, !dbg !95
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !96

if.then6:                                         ; preds = %sw.bb4
  store i32 875710290, i32* %fmt, align 4, !dbg !97
  br label %if.end7, !dbg !98

if.end7:                                          ; preds = %if.then6, %sw.bb4
  br label %sw.epilog15, !dbg !99

sw.bb8:                                           ; preds = %entry
  %4 = load i32, i32* %depth.addr, align 4, !dbg !100
  switch i32 %4, label %sw.default12 [
    i32 24, label %sw.bb9
    i32 30, label %sw.bb10
    i32 32, label %sw.bb11
  ], !dbg !101

sw.bb9:                                           ; preds = %sw.bb8
  store i32 875713112, i32* %fmt, align 4, !dbg !102
  br label %sw.epilog13, !dbg !104

sw.bb10:                                          ; preds = %sw.bb8
  store i32 808669784, i32* %fmt, align 4, !dbg !105
  br label %sw.epilog13, !dbg !106

sw.bb11:                                          ; preds = %sw.bb8
  store i32 875713089, i32* %fmt, align 4, !dbg !107
  br label %sw.epilog13, !dbg !108

sw.default12:                                     ; preds = %sw.bb8
  br label %sw.epilog13, !dbg !109

sw.epilog13:                                      ; preds = %sw.default12, %sw.bb11, %sw.bb10, %sw.bb9
  br label %sw.epilog15, !dbg !110

sw.default14:                                     ; preds = %entry
  br label %sw.epilog15, !dbg !111

sw.epilog15:                                      ; preds = %sw.default14, %sw.epilog13, %if.end7, %sw.epilog, %if.end
  %5 = load i32, i32* %fmt, align 4, !dbg !112
  ret i32 %5, !dbg !113
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_driver_legacy_fb_format(%struct.drm_device* %dev, i32 %bpp, i32 %depth) #0 !dbg !114 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %bpp.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %fmt = alloca i32, align 4
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i32 %bpp, i32* %bpp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bpp.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i32 %depth, i32* %depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %depth.addr, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i32* %fmt, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load i32, i32* %bpp.addr, align 4, !dbg !518
  %1 = load i32, i32* %depth.addr, align 4, !dbg !519
  %call = call i32 @drm_mode_legacy_fb_format(i32 %0, i32 %1) #3, !dbg !520
  store i32 %call, i32* %fmt, align 4, !dbg !517
  %2 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !521
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %2, i32 0, i32 35, !dbg !523
  %quirk_addfb_prefer_host_byte_order = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 96, !dbg !524
  %3 = load i8, i8* %quirk_addfb_prefer_host_byte_order, align 1, !dbg !524
  %tobool = trunc i8 %3 to i1, !dbg !524
  br i1 %tobool, label %if.then, label %if.end11, !dbg !525

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %fmt, align 4, !dbg !526
  %cmp = icmp eq i32 %4, 875713112, !dbg !529
  br i1 %cmp, label %if.then1, label %if.end, !dbg !530

if.then1:                                         ; preds = %if.then
  store i32 875713112, i32* %fmt, align 4, !dbg !531
  br label %if.end, !dbg !532

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load i32, i32* %fmt, align 4, !dbg !533
  %cmp2 = icmp eq i32 %5, 875713089, !dbg !535
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !536

if.then3:                                         ; preds = %if.end
  store i32 875713089, i32* %fmt, align 4, !dbg !537
  br label %if.end4, !dbg !538

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %fmt, align 4, !dbg !539
  %cmp5 = icmp eq i32 %6, 909199186, !dbg !541
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !542

if.then6:                                         ; preds = %if.end4
  store i32 909199186, i32* %fmt, align 4, !dbg !543
  br label %if.end7, !dbg !544

if.end7:                                          ; preds = %if.then6, %if.end4
  %7 = load i32, i32* %fmt, align 4, !dbg !545
  %cmp8 = icmp eq i32 %7, 892424792, !dbg !547
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !548

if.then9:                                         ; preds = %if.end7
  store i32 892424792, i32* %fmt, align 4, !dbg !549
  br label %if.end10, !dbg !550

if.end10:                                         ; preds = %if.then9, %if.end7
  br label %if.end11, !dbg !551

if.end11:                                         ; preds = %if.end10, %entry
  %8 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !552
  %mode_config12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 35, !dbg !554
  %quirk_addfb_prefer_xbgr_30bpp = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config12, i32 0, i32 95, !dbg !555
  %9 = load i8, i8* %quirk_addfb_prefer_xbgr_30bpp, align 2, !dbg !555
  %tobool13 = trunc i8 %9 to i1, !dbg !555
  br i1 %tobool13, label %land.lhs.true, label %if.end16, !dbg !556

land.lhs.true:                                    ; preds = %if.end11
  %10 = load i32, i32* %fmt, align 4, !dbg !557
  %cmp14 = icmp eq i32 %10, 808669784, !dbg !558
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !559

if.then15:                                        ; preds = %land.lhs.true
  store i32 808665688, i32* %fmt, align 4, !dbg !560
  br label %if.end16, !dbg !561

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.end11
  %11 = load i32, i32* %fmt, align 4, !dbg !562
  ret i32 %11, !dbg !563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @drm_get_format_name(i32 %format, %struct.drm_format_name_buf* %buf) #0 !dbg !564 {
entry:
  %format.addr = alloca i32, align 4
  %buf.addr = alloca %struct.drm_format_name_buf*, align 8
  store i32 %format, i32* %format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %format.addr, metadata !576, metadata !DIExpression()), !dbg !577
  store %struct.drm_format_name_buf* %buf, %struct.drm_format_name_buf** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_format_name_buf** %buf.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load %struct.drm_format_name_buf*, %struct.drm_format_name_buf** %buf.addr, align 8, !dbg !580
  %str = getelementptr inbounds %struct.drm_format_name_buf, %struct.drm_format_name_buf* %0, i32 0, i32 0, !dbg !581
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %str, i64 0, i64 0, !dbg !580
  %1 = load i32, i32* %format.addr, align 4, !dbg !582
  %and = and i32 %1, 255, !dbg !583
  %call = call signext i8 @printable_char(i32 %and) #3, !dbg !584
  %conv = sext i8 %call to i32, !dbg !584
  %2 = load i32, i32* %format.addr, align 4, !dbg !585
  %shr = lshr i32 %2, 8, !dbg !586
  %and1 = and i32 %shr, 255, !dbg !587
  %call2 = call signext i8 @printable_char(i32 %and1) #3, !dbg !588
  %conv3 = sext i8 %call2 to i32, !dbg !588
  %3 = load i32, i32* %format.addr, align 4, !dbg !589
  %shr4 = lshr i32 %3, 16, !dbg !590
  %and5 = and i32 %shr4, 255, !dbg !591
  %call6 = call signext i8 @printable_char(i32 %and5) #3, !dbg !592
  %conv7 = sext i8 %call6 to i32, !dbg !592
  %4 = load i32, i32* %format.addr, align 4, !dbg !593
  %shr8 = lshr i32 %4, 24, !dbg !594
  %and9 = and i32 %shr8, 127, !dbg !595
  %call10 = call signext i8 @printable_char(i32 %and9) #3, !dbg !596
  %conv11 = sext i8 %call10 to i32, !dbg !596
  %5 = load i32, i32* %format.addr, align 4, !dbg !597
  %and12 = and i32 %5, -2147483648, !dbg !598
  %tobool = icmp ne i32 %and12, 0, !dbg !597
  %6 = zext i1 %tobool to i64, !dbg !597
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), !dbg !597
  %7 = load i32, i32* %format.addr, align 4, !dbg !599
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %conv7, i32 %conv11, i8* %cond, i32 %7) #3, !dbg !600
  %8 = load %struct.drm_format_name_buf*, %struct.drm_format_name_buf** %buf.addr, align 8, !dbg !601
  %str14 = getelementptr inbounds %struct.drm_format_name_buf, %struct.drm_format_name_buf* %8, i32 0, i32 0, !dbg !602
  %arraydecay15 = getelementptr inbounds [32 x i8], [32 x i8]* %str14, i64 0, i64 0, !dbg !601
  ret i8* %arraydecay15, !dbg !603
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal signext i8 @printable_char(i32 %c) #0 !dbg !604 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load i32, i32* %c.addr, align 4, !dbg !609
  %conv = trunc i32 %0 to i8, !dbg !609
  %conv1 = zext i8 %conv to i32, !dbg !609
  %cmp = icmp sle i32 %conv1, 127, !dbg !609
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !610

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !611
  %conv3 = trunc i32 %1 to i8, !dbg !611
  %conv4 = zext i8 %conv3 to i32, !dbg !611
  %idxprom = sext i32 %conv4 to i64, !dbg !611
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !611
  %2 = load i8, i8* %arrayidx, align 1, !dbg !611
  %conv5 = zext i8 %2 to i32, !dbg !611
  %and = and i32 %conv5, 151, !dbg !611
  %cmp6 = icmp ne i32 %and, 0, !dbg !611
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !609

cond.true:                                        ; preds = %land.lhs.true
  %3 = load i32, i32* %c.addr, align 4, !dbg !612
  br label %cond.end, !dbg !609

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !609

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 63, %cond.false ], !dbg !609
  %conv8 = trunc i32 %cond to i8, !dbg !609
  ret i8 %conv8, !dbg !613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_format_info* @__drm_format_info(i32 %format) #0 !dbg !2 {
entry:
  %retval = alloca %struct.drm_format_info*, align 8
  %format.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %format, i32* %format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %format.addr, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata i32* %i, metadata !616, metadata !DIExpression()), !dbg !617
  store i32 0, i32* %i, align 4, !dbg !618
  br label %for.cond, !dbg !620

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !621
  %conv = zext i32 %0 to i64, !dbg !621
  %cmp = icmp ult i64 %conv, 97, !dbg !623
  br i1 %cmp, label %for.body, label %for.end, !dbg !624

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !625
  %idxprom = zext i32 %1 to i64, !dbg !628
  %arrayidx = getelementptr [97 x %struct.drm_format_info], [97 x %struct.drm_format_info]* @__drm_format_info.formats, i64 0, i64 %idxprom, !dbg !628
  %format2 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %arrayidx, i32 0, i32 0, !dbg !629
  %2 = load i32, i32* %format2, align 8, !dbg !629
  %3 = load i32, i32* %format.addr, align 4, !dbg !630
  %cmp3 = icmp eq i32 %2, %3, !dbg !631
  br i1 %cmp3, label %if.then, label %if.end, !dbg !632

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !633
  %idxprom5 = zext i32 %4 to i64, !dbg !634
  %arrayidx6 = getelementptr [97 x %struct.drm_format_info], [97 x %struct.drm_format_info]* @__drm_format_info.formats, i64 0, i64 %idxprom5, !dbg !634
  store %struct.drm_format_info* %arrayidx6, %struct.drm_format_info** %retval, align 8, !dbg !635
  br label %return, !dbg !635

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !636

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !637
  %inc = add i32 %5, 1, !dbg !637
  store i32 %inc, i32* %i, align 4, !dbg !637
  br label %for.cond, !dbg !638, !llvm.loop !639

for.end:                                          ; preds = %for.cond
  store %struct.drm_format_info* null, %struct.drm_format_info** %retval, align 8, !dbg !641
  br label %return, !dbg !641

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct.drm_format_info*, %struct.drm_format_info** %retval, align 8, !dbg !642
  ret %struct.drm_format_info* %6, !dbg !642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_format_info* @drm_format_info(i32 %format) #0 !dbg !643 {
entry:
  %format.addr = alloca i32, align 4
  %info = alloca %struct.drm_format_info*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %format, i32* %format.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %format.addr, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load i32, i32* %format.addr, align 4, !dbg !648
  %call = call %struct.drm_format_info* @__drm_format_info(i32 %0) #3, !dbg !649
  store %struct.drm_format_info* %call, %struct.drm_format_info** %info, align 8, !dbg !650
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !651, metadata !DIExpression()), !dbg !653
  %1 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !653
  %tobool = icmp ne %struct.drm_format_info* %1, null, !dbg !653
  %lnot = xor i1 %tobool, true, !dbg !653
  %lnot1 = xor i1 %lnot, true, !dbg !653
  %lnot2 = xor i1 %lnot1, true, !dbg !653
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !653
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !653
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !654
  %tobool3 = icmp ne i32 %2, 0, !dbg !654
  %lnot4 = xor i1 %tobool3, true, !dbg !654
  %lnot6 = xor i1 %lnot4, true, !dbg !654
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !654
  %conv = sext i32 %lnot.ext7 to i64, !dbg !654
  %tobool8 = icmp ne i64 %conv, 0, !dbg !654
  br i1 %tobool8, label %if.then, label %if.end, !dbg !653

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !654

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !656

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !658

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !656

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 317, i32 2305, i64 12) #4, !dbg !660, !srcloc !662
  br label %do.end11, !dbg !660

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 96) #4, !dbg !663, !srcloc !665
  br label %do.body12, !dbg !656

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !666

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !656

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !656

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !653
  %tobool15 = icmp ne i32 %3, 0, !dbg !653
  %lnot16 = xor i1 %tobool15, true, !dbg !653
  %lnot18 = xor i1 %lnot16, true, !dbg !653
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !653
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !653
  store i64 %conv20, i64* %tmp, align 8, !dbg !654
  %4 = load i64, i64* %tmp, align 8, !dbg !653
  %5 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !668
  ret %struct.drm_format_info* %5, !dbg !669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %dev, %struct.drm_mode_fb_cmd2* %mode_cmd) #0 !dbg !670 {
entry:
  %dev.addr = alloca %struct.drm_device*, align 8
  %mode_cmd.addr = alloca %struct.drm_mode_fb_cmd2*, align 8
  %info = alloca %struct.drm_format_info*, align 8
  store %struct.drm_device* %dev, %struct.drm_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_device** %dev.addr, metadata !673, metadata !DIExpression()), !dbg !674
  store %struct.drm_mode_fb_cmd2* %mode_cmd, %struct.drm_mode_fb_cmd2** %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mode_fb_cmd2** %mode_cmd.addr, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info, metadata !677, metadata !DIExpression()), !dbg !678
  store %struct.drm_format_info* null, %struct.drm_format_info** %info, align 8, !dbg !678
  %0 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !679
  %mode_config = getelementptr inbounds %struct.drm_device, %struct.drm_device* %0, i32 0, i32 35, !dbg !681
  %funcs = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config, i32 0, i32 27, !dbg !682
  %1 = load %struct.drm_mode_config_funcs*, %struct.drm_mode_config_funcs** %funcs, align 8, !dbg !682
  %get_format_info = getelementptr inbounds %struct.drm_mode_config_funcs, %struct.drm_mode_config_funcs* %1, i32 0, i32 1, !dbg !683
  %2 = load %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)** %get_format_info, align 8, !dbg !683
  %tobool = icmp ne %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)* %2, null, !dbg !679
  br i1 %tobool, label %if.then, label %if.end, !dbg !684

if.then:                                          ; preds = %entry
  %3 = load %struct.drm_device*, %struct.drm_device** %dev.addr, align 8, !dbg !685
  %mode_config1 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 35, !dbg !686
  %funcs2 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %mode_config1, i32 0, i32 27, !dbg !687
  %4 = load %struct.drm_mode_config_funcs*, %struct.drm_mode_config_funcs** %funcs2, align 8, !dbg !687
  %get_format_info3 = getelementptr inbounds %struct.drm_mode_config_funcs, %struct.drm_mode_config_funcs* %4, i32 0, i32 1, !dbg !688
  %5 = load %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)*, %struct.drm_format_info* (%struct.drm_mode_fb_cmd2*)** %get_format_info3, align 8, !dbg !688
  %6 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %mode_cmd.addr, align 8, !dbg !689
  %call = call %struct.drm_format_info* %5(%struct.drm_mode_fb_cmd2* %6) #3, !dbg !685
  store %struct.drm_format_info* %call, %struct.drm_format_info** %info, align 8, !dbg !690
  br label %if.end, !dbg !691

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !692
  %tobool4 = icmp ne %struct.drm_format_info* %7, null, !dbg !692
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !694

if.then5:                                         ; preds = %if.end
  %8 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %mode_cmd.addr, align 8, !dbg !695
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 3, !dbg !696
  %9 = load i32, i32* %pixel_format, align 4, !dbg !696
  %call6 = call %struct.drm_format_info* @drm_format_info(i32 %9) #3, !dbg !697
  store %struct.drm_format_info* %call6, %struct.drm_format_info** %info, align 8, !dbg !698
  br label %if.end7, !dbg !699

if.end7:                                          ; preds = %if.then5, %if.end
  %10 = load %struct.drm_format_info*, %struct.drm_format_info** %info, align 8, !dbg !700
  ret %struct.drm_format_info* %10, !dbg !701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_format_info_block_width(%struct.drm_format_info* %info, i32 %plane) #0 !dbg !702 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.drm_format_info*, align 8
  %plane.addr = alloca i32, align 4
  store %struct.drm_format_info* %info, %struct.drm_format_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info.addr, metadata !705, metadata !DIExpression()), !dbg !706
  store i32 %plane, i32* %plane.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %plane.addr, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !709
  %tobool = icmp ne %struct.drm_format_info* %0, null, !dbg !709
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !711

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %plane.addr, align 4, !dbg !712
  %cmp = icmp slt i32 %1, 0, !dbg !713
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !714

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %plane.addr, align 4, !dbg !715
  %3 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !716
  %num_planes = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %3, i32 0, i32 2, !dbg !717
  %4 = load i8, i8* %num_planes, align 1, !dbg !717
  %conv = zext i8 %4 to i32, !dbg !716
  %cmp2 = icmp sge i32 %2, %conv, !dbg !718
  br i1 %cmp2, label %if.then, label %if.end, !dbg !719

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !721
  %block_w = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %5, i32 0, i32 4, !dbg !723
  %6 = load i32, i32* %plane.addr, align 4, !dbg !724
  %idxprom = sext i32 %6 to i64, !dbg !721
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %block_w, i64 0, i64 %idxprom, !dbg !721
  %7 = load i8, i8* %arrayidx, align 1, !dbg !721
  %tobool4 = icmp ne i8 %7, 0, !dbg !721
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !725

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !726
  br label %return, !dbg !726

if.end6:                                          ; preds = %if.end
  %8 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !727
  %block_w7 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %8, i32 0, i32 4, !dbg !728
  %9 = load i32, i32* %plane.addr, align 4, !dbg !729
  %idxprom8 = sext i32 %9 to i64, !dbg !727
  %arrayidx9 = getelementptr [4 x i8], [4 x i8]* %block_w7, i64 0, i64 %idxprom8, !dbg !727
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !727
  %conv10 = zext i8 %10 to i32, !dbg !727
  store i32 %conv10, i32* %retval, align 4, !dbg !730
  br label %return, !dbg !730

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !731
  ret i32 %11, !dbg !731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_format_info_block_height(%struct.drm_format_info* %info, i32 %plane) #0 !dbg !732 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.drm_format_info*, align 8
  %plane.addr = alloca i32, align 4
  store %struct.drm_format_info* %info, %struct.drm_format_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store i32 %plane, i32* %plane.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %plane.addr, metadata !735, metadata !DIExpression()), !dbg !736
  %0 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !737
  %tobool = icmp ne %struct.drm_format_info* %0, null, !dbg !737
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !739

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %plane.addr, align 4, !dbg !740
  %cmp = icmp slt i32 %1, 0, !dbg !741
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !742

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %plane.addr, align 4, !dbg !743
  %3 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !744
  %num_planes = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %3, i32 0, i32 2, !dbg !745
  %4 = load i8, i8* %num_planes, align 1, !dbg !745
  %conv = zext i8 %4 to i32, !dbg !744
  %cmp2 = icmp sge i32 %2, %conv, !dbg !746
  br i1 %cmp2, label %if.then, label %if.end, !dbg !747

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !748
  br label %return, !dbg !748

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !749
  %block_h = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %5, i32 0, i32 5, !dbg !751
  %6 = load i32, i32* %plane.addr, align 4, !dbg !752
  %idxprom = sext i32 %6 to i64, !dbg !749
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %block_h, i64 0, i64 %idxprom, !dbg !749
  %7 = load i8, i8* %arrayidx, align 1, !dbg !749
  %tobool4 = icmp ne i8 %7, 0, !dbg !749
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !753

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !754
  br label %return, !dbg !754

if.end6:                                          ; preds = %if.end
  %8 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !755
  %block_h7 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %8, i32 0, i32 5, !dbg !756
  %9 = load i32, i32* %plane.addr, align 4, !dbg !757
  %idxprom8 = sext i32 %9 to i64, !dbg !755
  %arrayidx9 = getelementptr [4 x i8], [4 x i8]* %block_h7, i64 0, i64 %idxprom8, !dbg !755
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !755
  %conv10 = zext i8 %10 to i32, !dbg !755
  store i32 %conv10, i32* %retval, align 4, !dbg !758
  br label %return, !dbg !758

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !759
  ret i32 %11, !dbg !759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @drm_format_info_min_pitch(%struct.drm_format_info* %info, i32 %plane, i32 %buffer_width) #0 !dbg !760 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca %struct.drm_format_info*, align 8
  %plane.addr = alloca i32, align 4
  %buffer_width.addr = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i64, align 8
  store %struct.drm_format_info* %info, %struct.drm_format_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_format_info** %info.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i32 %plane, i32* %plane.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %plane.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i32 %buffer_width, i32* %buffer_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_width.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %0 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !769
  %tobool = icmp ne %struct.drm_format_info* %0, null, !dbg !769
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !771

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %plane.addr, align 4, !dbg !772
  %cmp = icmp slt i32 %1, 0, !dbg !773
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !774

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %plane.addr, align 4, !dbg !775
  %3 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !776
  %num_planes = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %3, i32 0, i32 2, !dbg !777
  %4 = load i8, i8* %num_planes, align 1, !dbg !777
  %conv = zext i8 %4 to i32, !dbg !776
  %cmp2 = icmp sge i32 %2, %conv, !dbg !778
  br i1 %cmp2, label %if.then, label %if.end, !dbg !779

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i64 0, i64* %retval, align 8, !dbg !780
  br label %return, !dbg !780

if.end:                                           ; preds = %lor.lhs.false1
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !781, metadata !DIExpression()), !dbg !783
  %5 = load i32, i32* %buffer_width.addr, align 4, !dbg !783
  %conv4 = zext i32 %5 to i64, !dbg !783
  %6 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !783
  %7 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %6, i32 0, i32 3, !dbg !783
  %char_per_block = bitcast %union.anon.0* %7 to [4 x i8]*, !dbg !783
  %8 = load i32, i32* %plane.addr, align 4, !dbg !783
  %idxprom = sext i32 %8 to i64, !dbg !783
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %char_per_block, i64 0, i64 %idxprom, !dbg !783
  %9 = load i8, i8* %arrayidx, align 1, !dbg !783
  %conv5 = zext i8 %9 to i64, !dbg !783
  %mul = mul i64 %conv4, %conv5, !dbg !783
  %10 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !783
  %11 = load i32, i32* %plane.addr, align 4, !dbg !783
  %call = call i32 @drm_format_info_block_width(%struct.drm_format_info* %10, i32 %11) #3, !dbg !783
  %12 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !783
  %13 = load i32, i32* %plane.addr, align 4, !dbg !783
  %call6 = call i32 @drm_format_info_block_height(%struct.drm_format_info* %12, i32 %13) #3, !dbg !783
  %mul7 = mul i32 %call, %call6, !dbg !783
  %conv8 = zext i32 %mul7 to i64, !dbg !783
  %add = add i64 %mul, %conv8, !dbg !783
  %sub = sub i64 %add, 1, !dbg !783
  store i64 %sub, i64* %_tmp, align 8, !dbg !783
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !784, metadata !DIExpression()), !dbg !786
  %14 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !786
  %15 = load i32, i32* %plane.addr, align 4, !dbg !786
  %call9 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %14, i32 %15) #3, !dbg !786
  %16 = load %struct.drm_format_info*, %struct.drm_format_info** %info.addr, align 8, !dbg !786
  %17 = load i32, i32* %plane.addr, align 4, !dbg !786
  %call10 = call i32 @drm_format_info_block_height(%struct.drm_format_info* %16, i32 %17) #3, !dbg !786
  %mul11 = mul i32 %call9, %call10, !dbg !786
  store i32 %mul11, i32* %__base, align 4, !dbg !786
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !787, metadata !DIExpression()), !dbg !786
  %18 = load i64, i64* %_tmp, align 8, !dbg !786
  %19 = load i32, i32* %__base, align 4, !dbg !786
  %conv12 = zext i32 %19 to i64, !dbg !786
  %rem = urem i64 %18, %conv12, !dbg !786
  %conv13 = trunc i64 %rem to i32, !dbg !786
  store i32 %conv13, i32* %__rem, align 4, !dbg !786
  %20 = load i64, i64* %_tmp, align 8, !dbg !786
  %21 = load i32, i32* %__base, align 4, !dbg !786
  %conv14 = zext i32 %21 to i64, !dbg !786
  %div = udiv i64 %20, %conv14, !dbg !786
  store i64 %div, i64* %_tmp, align 8, !dbg !786
  %22 = load i32, i32* %__rem, align 4, !dbg !786
  store i32 %22, i32* %tmp, align 4, !dbg !786
  %23 = load i32, i32* %tmp, align 4, !dbg !786
  %24 = load i64, i64* %_tmp, align 8, !dbg !783
  store i64 %24, i64* %tmp15, align 8, !dbg !783
  %25 = load i64, i64* %tmp15, align 8, !dbg !783
  store i64 %25, i64* %retval, align 8, !dbg !788
  br label %return, !dbg !788

return:                                           ; preds = %if.end, %if.then
  %26 = load i64, i64* %retval, align 8, !dbg !789
  ret i64 %26, !dbg !789
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "formats", scope: !2, file: !3, line: 159, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__drm_format_info", scope: !3, file: !3, line: 157, type: !4, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_fourcc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !9, line: 56, size: 192, elements: !10)
!9 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !17, !21, !22, !30, !31, !32, !33, !34, !38}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !8, file: !9, line: 58, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !8, file: !9, line: 67, baseType: !18, size: 8, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !8, file: !9, line: 70, baseType: !18, size: 8, offset: 40)
!22 = !DIDerivedType(tag: DW_TAG_member, scope: !8, file: !9, line: 72, baseType: !23, size: 32, offset: 48)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 72, size: 32, elements: !24)
!24 = !{!25, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !23, file: !9, line: 81, baseType: !26, size: 32)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !23, file: !9, line: 107, baseType: !26, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !8, file: !9, line: 116, baseType: !26, size: 32, offset: 80)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !8, file: !9, line: 124, baseType: !26, size: 32, offset: 112)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !8, file: !9, line: 127, baseType: !18, size: 8, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !8, file: !9, line: 129, baseType: !18, size: 8, offset: 152)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !8, file: !9, line: 132, baseType: !35, size: 8, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 30, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !8, file: !9, line: 135, baseType: !35, size: 8, offset: 168)
!39 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !48, globals: !54, splitDebugInlining: false, nameTableKind: None)
!40 = !{!41}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !42, line: 33, baseType: !16, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3, isUnsigned: true)
!48 = !{!14, !49, !50, !51, !53, !20}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !50)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !36, line: 107, baseType: !51)
!54 = !{!0}
!55 = !{}
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 18624, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 97)
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"Code Model", i32 2}
!63 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!64 = distinct !DISubprogram(name: "drm_mode_legacy_fb_format", scope: !3, file: !3, line: 46, type: !65, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !67, !67}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 104, baseType: !12)
!68 = !DILocalVariable(name: "bpp", arg: 1, scope: !64, file: !3, line: 46, type: !67)
!69 = !DILocation(line: 46, column: 45, scope: !64)
!70 = !DILocalVariable(name: "depth", arg: 2, scope: !64, file: !3, line: 46, type: !67)
!71 = !DILocation(line: 46, column: 59, scope: !64)
!72 = !DILocalVariable(name: "fmt", scope: !64, file: !3, line: 48, type: !67)
!73 = !DILocation(line: 48, column: 11, scope: !64)
!74 = !DILocation(line: 50, column: 10, scope: !64)
!75 = !DILocation(line: 50, column: 2, scope: !64)
!76 = !DILocation(line: 52, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 52, column: 7)
!78 = distinct !DILexicalBlock(scope: !64, file: !3, line: 50, column: 15)
!79 = !DILocation(line: 52, column: 13, scope: !77)
!80 = !DILocation(line: 52, column: 7, scope: !78)
!81 = !DILocation(line: 53, column: 8, scope: !77)
!82 = !DILocation(line: 53, column: 4, scope: !77)
!83 = !DILocation(line: 54, column: 3, scope: !78)
!84 = !DILocation(line: 57, column: 11, scope: !78)
!85 = !DILocation(line: 57, column: 3, scope: !78)
!86 = !DILocation(line: 59, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !3, line: 57, column: 18)
!88 = !DILocation(line: 60, column: 4, scope: !87)
!89 = !DILocation(line: 62, column: 8, scope: !87)
!90 = !DILocation(line: 63, column: 4, scope: !87)
!91 = !DILocation(line: 65, column: 4, scope: !87)
!92 = !DILocation(line: 67, column: 3, scope: !78)
!93 = !DILocation(line: 70, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !78, file: !3, line: 70, column: 7)
!95 = !DILocation(line: 70, column: 13, scope: !94)
!96 = !DILocation(line: 70, column: 7, scope: !78)
!97 = !DILocation(line: 71, column: 8, scope: !94)
!98 = !DILocation(line: 71, column: 4, scope: !94)
!99 = !DILocation(line: 72, column: 3, scope: !78)
!100 = !DILocation(line: 75, column: 11, scope: !78)
!101 = !DILocation(line: 75, column: 3, scope: !78)
!102 = !DILocation(line: 77, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !78, file: !3, line: 75, column: 18)
!104 = !DILocation(line: 78, column: 4, scope: !103)
!105 = !DILocation(line: 80, column: 8, scope: !103)
!106 = !DILocation(line: 81, column: 4, scope: !103)
!107 = !DILocation(line: 83, column: 8, scope: !103)
!108 = !DILocation(line: 84, column: 4, scope: !103)
!109 = !DILocation(line: 86, column: 4, scope: !103)
!110 = !DILocation(line: 88, column: 3, scope: !78)
!111 = !DILocation(line: 91, column: 3, scope: !78)
!112 = !DILocation(line: 94, column: 9, scope: !64)
!113 = !DILocation(line: 94, column: 2, scope: !64)
!114 = distinct !DISubprogram(name: "drm_driver_legacy_fb_format", scope: !3, file: !3, line: 109, type: !115, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!115 = !DISubroutineType(types: !116)
!116 = !{!67, !117, !67, !67}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !42, line: 53, size: 11840, elements: !119)
!119 = !{!120, !126, !127, !141, !144, !165, !168, !169, !172, !173, !174, !177, !178, !179, !183, !186, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !215, !216, !217, !218, !219, !220, !223, !226, !227, !498, !499, !500, !503, !506, !507}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_dev_list", scope: !118, file: !42, line: 59, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !36, line: 178, size: 128, elements: !122)
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !36, line: 179, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !121, file: !36, line: 179, baseType: !124, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !118, file: !42, line: 62, baseType: !49, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !118, file: !42, line: 65, baseType: !128, size: 32, offset: 160)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !129, line: 19, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !128, file: !129, line: 20, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !133, line: 113, baseType: !134)
!133 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !133, line: 111, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !134, file: !133, line: 112, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !36, line: 168, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 166, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !138, file: !36, line: 167, baseType: !49, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !118, file: !42, line: 68, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !42, line: 68, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !118, file: !42, line: 83, baseType: !145, size: 192, offset: 256)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !118, file: !42, line: 76, size: 192, elements: !146)
!146 = !{!147, !148, !150}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !145, file: !42, line: 78, baseType: !121, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !145, file: !42, line: 80, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !145, file: !42, line: 82, baseType: !151, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !152, line: 83, baseType: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !152, line: 71, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 72, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 72, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !156, file: !152, line: 73, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !152, line: 20, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !159, file: !152, line: 21, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !163, line: 25, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 25, elements: !55)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !118, file: !42, line: 86, baseType: !166, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !42, line: 12, flags: DIFlagFwdDecl)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !118, file: !42, line: 98, baseType: !149, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !118, file: !42, line: 101, baseType: !170, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !42, line: 13, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !118, file: !42, line: 104, baseType: !170, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !118, file: !42, line: 111, baseType: !35, size: 8, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !118, file: !42, line: 119, baseType: !175, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !42, line: 14, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !118, file: !42, line: 129, baseType: !12, size: 32, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !118, file: !42, line: 137, baseType: !35, size: 8, offset: 864)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !118, file: !42, line: 140, baseType: !180, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !182, line: 21, flags: DIFlagFwdDecl)
!182 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !118, file: !42, line: 143, baseType: !184, size: 64, offset: 960)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !118, file: !42, line: 153, baseType: !187, size: 192, offset: 1024)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !188, line: 53, size: 192, elements: !189)
!188 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !200, !201}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !187, file: !188, line: 54, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !192, line: 13, baseType: !193)
!192 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !36, line: 175, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 173, size: 64, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !194, file: !36, line: 174, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !13, line: 22, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !15, line: 30, baseType: !199)
!199 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !187, file: !188, line: 55, baseType: !151, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !187, file: !188, line: 59, baseType: !121, size: 128, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !118, file: !42, line: 160, baseType: !187, size: 192, offset: 1216)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !118, file: !42, line: 168, baseType: !137, size: 32, offset: 1408)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !118, file: !42, line: 171, baseType: !187, size: 192, offset: 1472)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !118, file: !42, line: 177, baseType: !121, size: 128, offset: 1664)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !118, file: !42, line: 185, baseType: !121, size: 128, offset: 1792)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !118, file: !42, line: 192, baseType: !187, size: 192, offset: 1920)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !118, file: !42, line: 199, baseType: !121, size: 128, offset: 2112)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !118, file: !42, line: 208, baseType: !35, size: 8, offset: 2240)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !118, file: !42, line: 213, baseType: !49, size: 32, offset: 2272)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !118, file: !42, line: 228, baseType: !35, size: 8, offset: 2304)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !118, file: !42, line: 238, baseType: !213, size: 64, offset: 2368)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !42, line: 16, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !118, file: !42, line: 245, baseType: !151, offset: 2432)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !118, file: !42, line: 250, baseType: !151, offset: 2432)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !118, file: !42, line: 273, baseType: !12, size: 32, offset: 2432)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !118, file: !42, line: 276, baseType: !121, size: 128, offset: 2496)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !118, file: !42, line: 284, baseType: !151, offset: 2624)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !118, file: !42, line: 287, baseType: !221, size: 64, offset: 2624)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_agp_head", file: !42, line: 287, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !118, file: !42, line: 290, baseType: !224, size: 64, offset: 2688)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !42, line: 25, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !118, file: !42, line: 297, baseType: !16, size: 32, offset: 2752)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !118, file: !42, line: 300, baseType: !228, size: 8384, offset: 2816)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !229, line: 358, size: 8384, elements: !230)
!229 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !232, !256, !266, !267, !281, !282, !283, !284, !285, !286, !287, !291, !292, !301, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !389, !392, !393, !394, !395, !421, !422, !423, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !228, file: !229, line: 369, baseType: !187, size: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !228, file: !229, line: 379, baseType: !233, size: 384, offset: 192)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !234, line: 76, size: 384, elements: !235)
!234 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !255}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !233, file: !234, line: 80, baseType: !237, size: 256)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !188, line: 71, size: 256, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !237, file: !188, line: 72, baseType: !187, size: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !237, file: !188, line: 73, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !243, line: 31, size: 192, elements: !244)
!243 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !249, !251, !252, !254}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !242, file: !243, line: 32, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !248, line: 9, flags: DIFlagFwdDecl)
!248 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !242, file: !243, line: 33, baseType: !250, size: 64, offset: 64)
!250 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !242, file: !243, line: 34, baseType: !16, size: 32, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !242, file: !243, line: 35, baseType: !253, size: 16, offset: 160)
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !242, file: !243, line: 36, baseType: !253, size: 16, offset: 176)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !233, file: !234, line: 86, baseType: !121, size: 128, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !228, file: !229, line: 389, baseType: !257, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !234, line: 43, size: 448, elements: !259)
!259 = !{!260, !261, !263, !264, !265}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !258, file: !234, line: 45, baseType: !242, size: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !258, file: !234, line: 52, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !258, file: !234, line: 57, baseType: !121, size: 128, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !258, file: !234, line: 62, baseType: !35, size: 8, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !258, file: !234, line: 65, baseType: !35, size: 8, offset: 392)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !228, file: !229, line: 397, baseType: !187, size: 192, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !228, file: !229, line: 405, baseType: !268, size: 192, offset: 832)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !269, line: 19, size: 192, elements: !270)
!269 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !279, !280}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !268, file: !269, line: 20, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !273, line: 292, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!274 = !{!275, !276, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !272, file: !273, line: 293, baseType: !151)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !272, file: !273, line: 295, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 148, baseType: !16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !272, file: !273, line: 296, baseType: !149, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !268, file: !269, line: 21, baseType: !16, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !268, file: !269, line: 22, baseType: !16, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !228, file: !229, line: 413, baseType: !268, size: 192, offset: 1024)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !228, file: !229, line: 416, baseType: !187, size: 192, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !228, file: !229, line: 418, baseType: !49, size: 32, offset: 1408)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !228, file: !229, line: 420, baseType: !121, size: 128, offset: 1472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !228, file: !229, line: 426, baseType: !151, offset: 1600)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !228, file: !229, line: 431, baseType: !49, size: 32, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !228, file: !229, line: 435, baseType: !288, size: 128, offset: 1664)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !269, line: 244, size: 128, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !288, file: !269, line: 245, baseType: !272, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !228, file: !229, line: 443, baseType: !121, size: 128, offset: 1792)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !228, file: !229, line: 453, baseType: !293, size: 64, offset: 1920)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !294, line: 54, size: 64, elements: !295)
!294 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !293, file: !294, line: 55, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !294, line: 58, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !294, line: 59, baseType: !297, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !228, file: !229, line: 457, baseType: !302, size: 256, offset: 1984)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !303, line: 102, size: 256, elements: !304)
!303 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !302, file: !303, line: 103, baseType: !191, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !302, file: !303, line: 104, baseType: !121, size: 128, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !302, file: !303, line: 105, baseType: !308, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !303, line: 21, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !228, file: !229, line: 465, baseType: !49, size: 32, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !228, file: !229, line: 473, baseType: !121, size: 128, offset: 2304)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !228, file: !229, line: 482, baseType: !49, size: 32, offset: 2432)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !228, file: !229, line: 489, baseType: !121, size: 128, offset: 2496)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !228, file: !229, line: 497, baseType: !49, size: 32, offset: 2624)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !228, file: !229, line: 504, baseType: !121, size: 128, offset: 2688)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !228, file: !229, line: 513, baseType: !121, size: 128, offset: 2816)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !228, file: !229, line: 522, baseType: !121, size: 128, offset: 2944)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !228, file: !229, line: 524, baseType: !49, size: 32, offset: 3072)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !228, file: !229, line: 524, baseType: !49, size: 32, offset: 3104)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !228, file: !229, line: 525, baseType: !49, size: 32, offset: 3136)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !228, file: !229, line: 525, baseType: !49, size: 32, offset: 3168)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !228, file: !229, line: 526, baseType: !326, size: 64, offset: 3200)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !229, line: 47, size: 576, elements: !329)
!329 = !{!330, !354, !358, !362, !370, !376, !380, !384, !388}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !328, file: !229, line: 77, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !117, !336, !338}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !229, line: 77, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !229, line: 34, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !341, line: 494, size: 832, elements: !342)
!341 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !344, !345, !346, !347, !348, !350, !351, !352}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !340, file: !341, line: 495, baseType: !14, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !340, file: !341, line: 496, baseType: !14, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !340, file: !341, line: 497, baseType: !14, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !340, file: !341, line: 498, baseType: !14, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !341, line: 499, baseType: !14, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !340, file: !341, line: 525, baseType: !349, size: 128, offset: 160)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !27)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !340, file: !341, line: 526, baseType: !349, size: 128, offset: 288)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !340, file: !341, line: 527, baseType: !349, size: 128, offset: 416)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !340, file: !341, line: 528, baseType: !353, size: 256, offset: 576)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !27)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !328, file: !229, line: 92, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !338}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !328, file: !229, line: 109, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !117}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !328, file: !229, line: 119, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !117, !367}
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !229, line: 119, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !229, line: 39, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !328, file: !229, line: 196, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!49, !117, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !229, line: 36, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !328, file: !229, line: 278, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!49, !117, !374, !35}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !328, file: !229, line: 297, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!374, !117}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !328, file: !229, line: 318, baseType: !385, size: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !374}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !328, file: !229, line: 333, baseType: !385, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "fb_base", scope: !228, file: !229, line: 527, baseType: !390, size: 64, offset: 3264)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !36, line: 158, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !36, line: 153, baseType: !51)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !228, file: !229, line: 530, baseType: !35, size: 8, offset: 3328)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !228, file: !229, line: 531, baseType: !35, size: 8, offset: 3336)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !228, file: !229, line: 532, baseType: !35, size: 8, offset: 3344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !228, file: !229, line: 533, baseType: !396, size: 704, offset: 3392)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !303, line: 115, size: 704, elements: !397)
!397 = !{!398, !399, !417, !420}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !396, file: !303, line: 116, baseType: !302, size: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !396, file: !303, line: 117, baseType: !400, size: 320, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !401, line: 11, size: 320, elements: !402)
!401 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !410, !411, !416}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !400, file: !401, line: 16, baseType: !404, size: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !36, line: 186, size: 128, elements: !405)
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !36, line: 187, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !404, file: !36, line: 187, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !400, file: !401, line: 17, baseType: !250, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !400, file: !401, line: 18, baseType: !412, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !401, line: 19, baseType: !12, size: 32, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !396, file: !303, line: 120, baseType: !418, size: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !303, line: 18, flags: DIFlagFwdDecl)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !396, file: !303, line: 121, baseType: !49, size: 32, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !228, file: !229, line: 541, baseType: !187, size: 192, offset: 4096)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !228, file: !229, line: 549, baseType: !121, size: 128, offset: 4288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !228, file: !229, line: 557, baseType: !424, size: 64, offset: 4416)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !229, line: 557, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !228, file: !229, line: 562, baseType: !424, size: 64, offset: 4480)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !228, file: !229, line: 567, baseType: !424, size: 64, offset: 4544)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !228, file: !229, line: 573, baseType: !424, size: 64, offset: 4608)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !228, file: !229, line: 578, baseType: !424, size: 64, offset: 4672)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !228, file: !229, line: 583, baseType: !424, size: 64, offset: 4736)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !228, file: !229, line: 588, baseType: !424, size: 64, offset: 4800)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !228, file: !229, line: 593, baseType: !424, size: 64, offset: 4864)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !228, file: !229, line: 598, baseType: !424, size: 64, offset: 4928)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !228, file: !229, line: 603, baseType: !424, size: 64, offset: 4992)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !228, file: !229, line: 608, baseType: !424, size: 64, offset: 5056)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !228, file: !229, line: 613, baseType: !424, size: 64, offset: 5120)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !228, file: !229, line: 618, baseType: !424, size: 64, offset: 5184)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !228, file: !229, line: 623, baseType: !424, size: 64, offset: 5248)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !228, file: !229, line: 628, baseType: !424, size: 64, offset: 5312)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !228, file: !229, line: 633, baseType: !424, size: 64, offset: 5376)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !228, file: !229, line: 639, baseType: !424, size: 64, offset: 5440)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !228, file: !229, line: 644, baseType: !424, size: 64, offset: 5504)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !228, file: !229, line: 653, baseType: !424, size: 64, offset: 5568)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !228, file: !229, line: 659, baseType: !424, size: 64, offset: 5632)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !228, file: !229, line: 665, baseType: !424, size: 64, offset: 5696)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !228, file: !229, line: 670, baseType: !424, size: 64, offset: 5760)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !228, file: !229, line: 676, baseType: !424, size: 64, offset: 5824)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !228, file: !229, line: 681, baseType: !424, size: 64, offset: 5888)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !228, file: !229, line: 687, baseType: !424, size: 64, offset: 5952)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !228, file: !229, line: 693, baseType: !424, size: 64, offset: 6016)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !228, file: !229, line: 698, baseType: !424, size: 64, offset: 6080)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !228, file: !229, line: 703, baseType: !424, size: 64, offset: 6144)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !228, file: !229, line: 708, baseType: !424, size: 64, offset: 6208)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !228, file: !229, line: 713, baseType: !424, size: 64, offset: 6272)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !228, file: !229, line: 718, baseType: !424, size: 64, offset: 6336)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !228, file: !229, line: 723, baseType: !424, size: 64, offset: 6400)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !228, file: !229, line: 728, baseType: !424, size: 64, offset: 6464)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !228, file: !229, line: 733, baseType: !424, size: 64, offset: 6528)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !228, file: !229, line: 738, baseType: !424, size: 64, offset: 6592)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !228, file: !229, line: 743, baseType: !424, size: 64, offset: 6656)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !228, file: !229, line: 748, baseType: !424, size: 64, offset: 6720)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !228, file: !229, line: 752, baseType: !424, size: 64, offset: 6784)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !228, file: !229, line: 758, baseType: !424, size: 64, offset: 6848)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !228, file: !229, line: 763, baseType: !424, size: 64, offset: 6912)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !228, file: !229, line: 768, baseType: !424, size: 64, offset: 6976)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !228, file: !229, line: 773, baseType: !424, size: 64, offset: 7040)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !228, file: !229, line: 778, baseType: !424, size: 64, offset: 7104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !228, file: !229, line: 784, baseType: !424, size: 64, offset: 7168)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !228, file: !229, line: 790, baseType: !424, size: 64, offset: 7232)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !228, file: !229, line: 795, baseType: !424, size: 64, offset: 7296)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !228, file: !229, line: 801, baseType: !424, size: 64, offset: 7360)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !228, file: !229, line: 806, baseType: !424, size: 64, offset: 7424)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !228, file: !229, line: 813, baseType: !424, size: 64, offset: 7488)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !228, file: !229, line: 820, baseType: !424, size: 64, offset: 7552)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !228, file: !229, line: 827, baseType: !424, size: 64, offset: 7616)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !228, file: !229, line: 835, baseType: !424, size: 64, offset: 7680)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !228, file: !229, line: 843, baseType: !424, size: 64, offset: 7744)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !228, file: !229, line: 850, baseType: !424, size: 64, offset: 7808)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !228, file: !229, line: 856, baseType: !424, size: 64, offset: 7872)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !228, file: !229, line: 862, baseType: !424, size: 64, offset: 7936)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !228, file: !229, line: 865, baseType: !67, size: 32, offset: 8000)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !228, file: !229, line: 865, baseType: !67, size: 32, offset: 8032)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow_fbdev", scope: !228, file: !229, line: 872, baseType: !35, size: 8, offset: 8064)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fbdev_use_iomem", scope: !228, file: !229, line: 884, baseType: !35, size: 8, offset: 8072)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !228, file: !229, line: 892, baseType: !35, size: 8, offset: 8080)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !228, file: !229, line: 906, baseType: !35, size: 8, offset: 8088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !228, file: !229, line: 912, baseType: !35, size: 8, offset: 8096)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "allow_fb_modifiers", scope: !228, file: !229, line: 919, baseType: !35, size: 8, offset: 8104)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !228, file: !229, line: 927, baseType: !35, size: 8, offset: 8112)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !228, file: !229, line: 933, baseType: !424, size: 64, offset: 8128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !228, file: !229, line: 936, baseType: !67, size: 32, offset: 8192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !228, file: !229, line: 936, baseType: !67, size: 32, offset: 8224)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !228, file: !229, line: 945, baseType: !374, size: 64, offset: 8256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !228, file: !229, line: 947, baseType: !495, size: 64, offset: 8320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !229, line: 947, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !118, file: !42, line: 303, baseType: !187, size: 192, offset: 11200)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !118, file: !42, line: 306, baseType: !268, size: 192, offset: 11392)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !118, file: !42, line: 309, baseType: !501, size: 64, offset: 11584)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !42, line: 19, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !118, file: !42, line: 312, baseType: !504, size: 64, offset: 11648)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !42, line: 20, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !118, file: !42, line: 322, baseType: !41, size: 32, offset: 11712)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !118, file: !42, line: 330, baseType: !508, size: 64, offset: 11776)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !42, line: 21, flags: DIFlagFwdDecl)
!510 = !DILocalVariable(name: "dev", arg: 1, scope: !114, file: !3, line: 109, type: !117)
!511 = !DILocation(line: 109, column: 57, scope: !114)
!512 = !DILocalVariable(name: "bpp", arg: 2, scope: !114, file: !3, line: 110, type: !67)
!513 = !DILocation(line: 110, column: 19, scope: !114)
!514 = !DILocalVariable(name: "depth", arg: 3, scope: !114, file: !3, line: 110, type: !67)
!515 = !DILocation(line: 110, column: 33, scope: !114)
!516 = !DILocalVariable(name: "fmt", scope: !114, file: !3, line: 112, type: !67)
!517 = !DILocation(line: 112, column: 11, scope: !114)
!518 = !DILocation(line: 112, column: 43, scope: !114)
!519 = !DILocation(line: 112, column: 48, scope: !114)
!520 = !DILocation(line: 112, column: 17, scope: !114)
!521 = !DILocation(line: 114, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !114, file: !3, line: 114, column: 6)
!523 = !DILocation(line: 114, column: 11, scope: !522)
!524 = !DILocation(line: 114, column: 23, scope: !522)
!525 = !DILocation(line: 114, column: 6, scope: !114)
!526 = !DILocation(line: 115, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 115, column: 7)
!528 = distinct !DILexicalBlock(scope: !522, file: !3, line: 114, column: 59)
!529 = !DILocation(line: 115, column: 11, scope: !527)
!530 = !DILocation(line: 115, column: 7, scope: !528)
!531 = !DILocation(line: 116, column: 8, scope: !527)
!532 = !DILocation(line: 116, column: 4, scope: !527)
!533 = !DILocation(line: 117, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !528, file: !3, line: 117, column: 7)
!535 = !DILocation(line: 117, column: 11, scope: !534)
!536 = !DILocation(line: 117, column: 7, scope: !528)
!537 = !DILocation(line: 118, column: 8, scope: !534)
!538 = !DILocation(line: 118, column: 4, scope: !534)
!539 = !DILocation(line: 119, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !528, file: !3, line: 119, column: 7)
!541 = !DILocation(line: 119, column: 11, scope: !540)
!542 = !DILocation(line: 119, column: 7, scope: !528)
!543 = !DILocation(line: 120, column: 8, scope: !540)
!544 = !DILocation(line: 120, column: 4, scope: !540)
!545 = !DILocation(line: 121, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !528, file: !3, line: 121, column: 7)
!547 = !DILocation(line: 121, column: 11, scope: !546)
!548 = !DILocation(line: 121, column: 7, scope: !528)
!549 = !DILocation(line: 122, column: 8, scope: !546)
!550 = !DILocation(line: 122, column: 4, scope: !546)
!551 = !DILocation(line: 123, column: 2, scope: !528)
!552 = !DILocation(line: 125, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 6)
!554 = !DILocation(line: 125, column: 11, scope: !553)
!555 = !DILocation(line: 125, column: 23, scope: !553)
!556 = !DILocation(line: 125, column: 53, scope: !553)
!557 = !DILocation(line: 126, column: 6, scope: !553)
!558 = !DILocation(line: 126, column: 10, scope: !553)
!559 = !DILocation(line: 125, column: 6, scope: !114)
!560 = !DILocation(line: 127, column: 7, scope: !553)
!561 = !DILocation(line: 127, column: 3, scope: !553)
!562 = !DILocation(line: 129, column: 9, scope: !114)
!563 = !DILocation(line: 129, column: 2, scope: !114)
!564 = distinct !DISubprogram(name: "drm_get_format_name", scope: !3, file: !3, line: 138, type: !565, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!565 = !DISubroutineType(types: !566)
!566 = !{!567, !67, !569}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_name_buf", file: !9, line: 142, size: 256, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !570, file: !9, line: 143, baseType: !573, size: 256)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 32)
!576 = !DILocalVariable(name: "format", arg: 1, scope: !564, file: !3, line: 138, type: !67)
!577 = !DILocation(line: 138, column: 42, scope: !564)
!578 = !DILocalVariable(name: "buf", arg: 2, scope: !564, file: !3, line: 138, type: !569)
!579 = !DILocation(line: 138, column: 78, scope: !564)
!580 = !DILocation(line: 140, column: 11, scope: !564)
!581 = !DILocation(line: 140, column: 16, scope: !564)
!582 = !DILocation(line: 142, column: 19, scope: !564)
!583 = !DILocation(line: 142, column: 26, scope: !564)
!584 = !DILocation(line: 142, column: 4, scope: !564)
!585 = !DILocation(line: 143, column: 20, scope: !564)
!586 = !DILocation(line: 143, column: 27, scope: !564)
!587 = !DILocation(line: 143, column: 33, scope: !564)
!588 = !DILocation(line: 143, column: 4, scope: !564)
!589 = !DILocation(line: 144, column: 20, scope: !564)
!590 = !DILocation(line: 144, column: 27, scope: !564)
!591 = !DILocation(line: 144, column: 34, scope: !564)
!592 = !DILocation(line: 144, column: 4, scope: !564)
!593 = !DILocation(line: 145, column: 20, scope: !564)
!594 = !DILocation(line: 145, column: 27, scope: !564)
!595 = !DILocation(line: 145, column: 34, scope: !564)
!596 = !DILocation(line: 145, column: 4, scope: !564)
!597 = !DILocation(line: 146, column: 4, scope: !564)
!598 = !DILocation(line: 146, column: 11, scope: !564)
!599 = !DILocation(line: 147, column: 4, scope: !564)
!600 = !DILocation(line: 140, column: 2, scope: !564)
!601 = !DILocation(line: 149, column: 9, scope: !564)
!602 = !DILocation(line: 149, column: 14, scope: !564)
!603 = !DILocation(line: 149, column: 2, scope: !564)
!604 = distinct !DISubprogram(name: "printable_char", scope: !3, file: !3, line: 33, type: !605, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !55)
!605 = !DISubroutineType(types: !606)
!606 = !{!185, !49}
!607 = !DILocalVariable(name: "c", arg: 1, scope: !604, file: !3, line: 33, type: !49)
!608 = !DILocation(line: 33, column: 32, scope: !604)
!609 = !DILocation(line: 35, column: 9, scope: !604)
!610 = !DILocation(line: 35, column: 20, scope: !604)
!611 = !DILocation(line: 35, column: 23, scope: !604)
!612 = !DILocation(line: 35, column: 36, scope: !604)
!613 = !DILocation(line: 35, column: 2, scope: !604)
!614 = !DILocalVariable(name: "format", arg: 1, scope: !2, file: !3, line: 157, type: !12)
!615 = !DILocation(line: 157, column: 53, scope: !2)
!616 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 291, type: !16)
!617 = !DILocation(line: 291, column: 15, scope: !2)
!618 = !DILocation(line: 293, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !2, file: !3, line: 293, column: 2)
!620 = !DILocation(line: 293, column: 7, scope: !619)
!621 = !DILocation(line: 293, column: 14, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 293, column: 2)
!623 = !DILocation(line: 293, column: 16, scope: !622)
!624 = !DILocation(line: 293, column: 2, scope: !619)
!625 = !DILocation(line: 294, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 294, column: 7)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 293, column: 44)
!628 = !DILocation(line: 294, column: 7, scope: !626)
!629 = !DILocation(line: 294, column: 18, scope: !626)
!630 = !DILocation(line: 294, column: 28, scope: !626)
!631 = !DILocation(line: 294, column: 25, scope: !626)
!632 = !DILocation(line: 294, column: 7, scope: !627)
!633 = !DILocation(line: 295, column: 20, scope: !626)
!634 = !DILocation(line: 295, column: 12, scope: !626)
!635 = !DILocation(line: 295, column: 4, scope: !626)
!636 = !DILocation(line: 296, column: 2, scope: !627)
!637 = !DILocation(line: 293, column: 39, scope: !622)
!638 = !DILocation(line: 293, column: 2, scope: !622)
!639 = distinct !{!639, !624, !640}
!640 = !DILocation(line: 296, column: 2, scope: !619)
!641 = !DILocation(line: 298, column: 2, scope: !2)
!642 = !DILocation(line: 299, column: 1, scope: !2)
!643 = distinct !DISubprogram(name: "drm_format_info", scope: !3, file: !3, line: 312, type: !4, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!644 = !DILocalVariable(name: "format", arg: 1, scope: !643, file: !3, line: 312, type: !12)
!645 = !DILocation(line: 312, column: 51, scope: !643)
!646 = !DILocalVariable(name: "info", scope: !643, file: !3, line: 314, type: !6)
!647 = !DILocation(line: 314, column: 32, scope: !643)
!648 = !DILocation(line: 316, column: 27, scope: !643)
!649 = !DILocation(line: 316, column: 9, scope: !643)
!650 = !DILocation(line: 316, column: 7, scope: !643)
!651 = !DILocalVariable(name: "__ret_warn_on", scope: !652, file: !3, line: 317, type: !49)
!652 = distinct !DILexicalBlock(scope: !643, file: !3, line: 317, column: 2)
!653 = !DILocation(line: 317, column: 2, scope: !652)
!654 = !DILocation(line: 317, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !3, line: 317, column: 2)
!656 = !DILocation(line: 317, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !3, line: 317, column: 2)
!658 = !DILocation(line: 317, column: 2, scope: !659)
!659 = distinct !DILexicalBlock(scope: !657, file: !3, line: 317, column: 2)
!660 = !DILocation(line: 317, column: 2, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !3, line: 317, column: 2)
!662 = !{i32 -2144352846, i32 -2144352817, i32 -2144352771, i32 -2144352713, i32 -2144352659, i32 -2144352605, i32 -2144352550, i32 -2144352519}
!663 = !DILocation(line: 317, column: 2, scope: !664)
!664 = distinct !DILexicalBlock(scope: !657, file: !3, line: 317, column: 2)
!665 = !{i32 -2144352109, i32 -2144352102, i32 -2144352050, i32 -2144352019, i32 -2144351989}
!666 = !DILocation(line: 317, column: 2, scope: !667)
!667 = distinct !DILexicalBlock(scope: !657, file: !3, line: 317, column: 2)
!668 = !DILocation(line: 318, column: 9, scope: !643)
!669 = !DILocation(line: 318, column: 2, scope: !643)
!670 = distinct !DISubprogram(name: "drm_get_format_info", scope: !3, file: !3, line: 332, type: !671, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!671 = !DISubroutineType(types: !672)
!672 = !{!6, !117, !338}
!673 = !DILocalVariable(name: "dev", arg: 1, scope: !670, file: !3, line: 332, type: !117)
!674 = !DILocation(line: 332, column: 40, scope: !670)
!675 = !DILocalVariable(name: "mode_cmd", arg: 2, scope: !670, file: !3, line: 333, type: !338)
!676 = !DILocation(line: 333, column: 38, scope: !670)
!677 = !DILocalVariable(name: "info", scope: !670, file: !3, line: 335, type: !6)
!678 = !DILocation(line: 335, column: 32, scope: !670)
!679 = !DILocation(line: 337, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !670, file: !3, line: 337, column: 6)
!681 = !DILocation(line: 337, column: 11, scope: !680)
!682 = !DILocation(line: 337, column: 23, scope: !680)
!683 = !DILocation(line: 337, column: 30, scope: !680)
!684 = !DILocation(line: 337, column: 6, scope: !670)
!685 = !DILocation(line: 338, column: 10, scope: !680)
!686 = !DILocation(line: 338, column: 15, scope: !680)
!687 = !DILocation(line: 338, column: 27, scope: !680)
!688 = !DILocation(line: 338, column: 34, scope: !680)
!689 = !DILocation(line: 338, column: 50, scope: !680)
!690 = !DILocation(line: 338, column: 8, scope: !680)
!691 = !DILocation(line: 338, column: 3, scope: !680)
!692 = !DILocation(line: 340, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !670, file: !3, line: 340, column: 6)
!694 = !DILocation(line: 340, column: 6, scope: !670)
!695 = !DILocation(line: 341, column: 26, scope: !693)
!696 = !DILocation(line: 341, column: 36, scope: !693)
!697 = !DILocation(line: 341, column: 10, scope: !693)
!698 = !DILocation(line: 341, column: 8, scope: !693)
!699 = !DILocation(line: 341, column: 3, scope: !693)
!700 = !DILocation(line: 343, column: 9, scope: !670)
!701 = !DILocation(line: 343, column: 2, scope: !670)
!702 = distinct !DISubprogram(name: "drm_format_info_block_width", scope: !3, file: !3, line: 355, type: !703, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!703 = !DISubroutineType(types: !704)
!704 = !{!16, !6, !49}
!705 = !DILocalVariable(name: "info", arg: 1, scope: !702, file: !3, line: 355, type: !6)
!706 = !DILocation(line: 355, column: 72, scope: !702)
!707 = !DILocalVariable(name: "plane", arg: 2, scope: !702, file: !3, line: 356, type: !49)
!708 = !DILocation(line: 356, column: 11, scope: !702)
!709 = !DILocation(line: 358, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !702, file: !3, line: 358, column: 6)
!711 = !DILocation(line: 358, column: 12, scope: !710)
!712 = !DILocation(line: 358, column: 15, scope: !710)
!713 = !DILocation(line: 358, column: 21, scope: !710)
!714 = !DILocation(line: 358, column: 25, scope: !710)
!715 = !DILocation(line: 358, column: 28, scope: !710)
!716 = !DILocation(line: 358, column: 37, scope: !710)
!717 = !DILocation(line: 358, column: 43, scope: !710)
!718 = !DILocation(line: 358, column: 34, scope: !710)
!719 = !DILocation(line: 358, column: 6, scope: !702)
!720 = !DILocation(line: 359, column: 3, scope: !710)
!721 = !DILocation(line: 361, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !702, file: !3, line: 361, column: 6)
!723 = !DILocation(line: 361, column: 13, scope: !722)
!724 = !DILocation(line: 361, column: 21, scope: !722)
!725 = !DILocation(line: 361, column: 6, scope: !702)
!726 = !DILocation(line: 362, column: 3, scope: !722)
!727 = !DILocation(line: 363, column: 9, scope: !702)
!728 = !DILocation(line: 363, column: 15, scope: !702)
!729 = !DILocation(line: 363, column: 23, scope: !702)
!730 = !DILocation(line: 363, column: 2, scope: !702)
!731 = !DILocation(line: 364, column: 1, scope: !702)
!732 = distinct !DISubprogram(name: "drm_format_info_block_height", scope: !3, file: !3, line: 375, type: !703, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!733 = !DILocalVariable(name: "info", arg: 1, scope: !732, file: !3, line: 375, type: !6)
!734 = !DILocation(line: 375, column: 73, scope: !732)
!735 = !DILocalVariable(name: "plane", arg: 2, scope: !732, file: !3, line: 376, type: !49)
!736 = !DILocation(line: 376, column: 12, scope: !732)
!737 = !DILocation(line: 378, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !3, line: 378, column: 6)
!739 = !DILocation(line: 378, column: 12, scope: !738)
!740 = !DILocation(line: 378, column: 15, scope: !738)
!741 = !DILocation(line: 378, column: 21, scope: !738)
!742 = !DILocation(line: 378, column: 25, scope: !738)
!743 = !DILocation(line: 378, column: 28, scope: !738)
!744 = !DILocation(line: 378, column: 37, scope: !738)
!745 = !DILocation(line: 378, column: 43, scope: !738)
!746 = !DILocation(line: 378, column: 34, scope: !738)
!747 = !DILocation(line: 378, column: 6, scope: !732)
!748 = !DILocation(line: 379, column: 3, scope: !738)
!749 = !DILocation(line: 381, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !732, file: !3, line: 381, column: 6)
!751 = !DILocation(line: 381, column: 13, scope: !750)
!752 = !DILocation(line: 381, column: 21, scope: !750)
!753 = !DILocation(line: 381, column: 6, scope: !732)
!754 = !DILocation(line: 382, column: 3, scope: !750)
!755 = !DILocation(line: 383, column: 9, scope: !732)
!756 = !DILocation(line: 383, column: 15, scope: !732)
!757 = !DILocation(line: 383, column: 23, scope: !732)
!758 = !DILocation(line: 383, column: 2, scope: !732)
!759 = !DILocation(line: 384, column: 1, scope: !732)
!760 = distinct !DISubprogram(name: "drm_format_info_min_pitch", scope: !3, file: !3, line: 397, type: !761, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !55)
!761 = !DISubroutineType(types: !762)
!762 = !{!53, !6, !49, !16}
!763 = !DILocalVariable(name: "info", arg: 1, scope: !760, file: !3, line: 397, type: !6)
!764 = !DILocation(line: 397, column: 66, scope: !760)
!765 = !DILocalVariable(name: "plane", arg: 2, scope: !760, file: !3, line: 398, type: !49)
!766 = !DILocation(line: 398, column: 12, scope: !760)
!767 = !DILocalVariable(name: "buffer_width", arg: 3, scope: !760, file: !3, line: 398, type: !16)
!768 = !DILocation(line: 398, column: 32, scope: !760)
!769 = !DILocation(line: 400, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !760, file: !3, line: 400, column: 6)
!771 = !DILocation(line: 400, column: 12, scope: !770)
!772 = !DILocation(line: 400, column: 15, scope: !770)
!773 = !DILocation(line: 400, column: 21, scope: !770)
!774 = !DILocation(line: 400, column: 25, scope: !770)
!775 = !DILocation(line: 400, column: 28, scope: !770)
!776 = !DILocation(line: 400, column: 37, scope: !770)
!777 = !DILocation(line: 400, column: 43, scope: !770)
!778 = !DILocation(line: 400, column: 34, scope: !770)
!779 = !DILocation(line: 400, column: 6, scope: !760)
!780 = !DILocation(line: 401, column: 3, scope: !770)
!781 = !DILocalVariable(name: "_tmp", scope: !782, file: !3, line: 403, type: !50)
!782 = distinct !DILexicalBlock(scope: !760, file: !3, line: 403, column: 9)
!783 = !DILocation(line: 403, column: 9, scope: !782)
!784 = !DILocalVariable(name: "__base", scope: !785, file: !3, line: 403, type: !67)
!785 = distinct !DILexicalBlock(scope: !782, file: !3, line: 403, column: 9)
!786 = !DILocation(line: 403, column: 9, scope: !785)
!787 = !DILocalVariable(name: "__rem", scope: !785, file: !3, line: 403, type: !67)
!788 = !DILocation(line: 403, column: 2, scope: !760)
!789 = !DILocation(line: 406, column: 1, scope: !760)
