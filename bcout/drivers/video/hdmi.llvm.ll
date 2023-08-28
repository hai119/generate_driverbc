; ModuleID = '../bcout/drivers/video/hdmi.llvm.bc'
source_filename = "drivers/video/hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_spd_infoframe = type { i32, i8, i8, [8 x i8], [16 x i8], i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_drm_infoframe = type { i32, i8, i8, i32, i32, [3 x %struct.anon], %struct.anon.0, i16, i16, i16, i16 }
%struct.anon = type { i16, i16 }
%struct.anon.0 = type { i16, i16 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_any_infoframe = type { i32, i8, i8 }
%union.hdmi_vendor_any_infoframe = type { %struct.hdmi_vendor_infoframe }
%struct.anon.1 = type { i32, i8, i8, i32 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.40, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.40 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.39, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.20, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type opaque
%struct.key = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.12 }
%struct.anon.12 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.19, i32, [12 x i8] }
%union.anon.19 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.20 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.21, %union.anon.34, %struct.atomic_t, [8 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.34 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.35, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.38 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { i64, i64 }
%union.anon.38 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.39 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque

@.str = private unnamed_addr constant [23 x i8] c"Bad infoframe type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/video/hdmi.c\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"    colorspace: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"    scan mode: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"    colorimetry: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    picture aspect: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"    active aspect: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"    itc: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"IT Content\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"No Data\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"    extended colorimetry: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"    quantization range: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    nups: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"    video code: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"    ycc quantization range: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"    hdmi content type: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"    pixel repeat: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"    bar top %u, bottom %u, left %u, right %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"HDMI infoframe: %s, version %u, length %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Auxiliary Video Information (AVI)\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Source Product Description (SPD)\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Dynamic Range and Mastering\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"YCbCr 4:2:2\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"YCbCr 4:4:4\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"YCbCr 4:2:0\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Reserved (4)\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Reserved (5)\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Reserved (6)\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"IDO Defined\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Overscan\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Underscan\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"ITU601\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"ITU709\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Extended\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"4:3\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"16:9\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"64:27\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"256:135\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"16:9 Top\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"14:9 Top\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"16:9 Center\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"Same as Picture\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"14:9\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"4:3 SP 14:9\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"16:9 SP 14:9\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"16:9 SP 4:3\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"xvYCC 601\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"xvYCC 709\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"sYCC 601\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"opYCC 601\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"opRGB\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"BT.2020 Constant Luminance\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"BT.2020\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Limited\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"Unknown Non-uniform Scaling\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"Horizontally Scaled\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Vertically Scaled\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"Horizontally and Vertically Scaled\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"Photo\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Cinema\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"    vendor: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"    product: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"    source device information: %s (0x%x)\0A\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Digital STB\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"DVD Player\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"D-VHS\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"HDD Videorecorder\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"DVC\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"DSC\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Video CD\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"PC General\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"Blu-Ray Disc (BD)\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"Super Audio CD\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"HD DVD\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"PMP\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"    channels: %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"    channels: Refer to stream header\0A\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"    coding type: %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"    sample size: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"    sample frequency: %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"    coding type ext: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"    channel allocation: 0x%x\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"    level shift value: %u dB\0A\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"    downmix inhibit: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"Refer to Stream Header\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"AC-3\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"MPEG1\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"MP3\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"MPEG2\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"AAC\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"DTS\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"ATRAC\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"One Bit Audio\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Dolby Digital +\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"DTS-HD\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"MAT (MLP)\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"WMA PRO\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"Refer to CXT\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"16 bit\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"20 bit\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"24 bit\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"32 kHz\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"44.1 kHz (CD)\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"48 kHz\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"88.2 kHz\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"96 kHz\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"176.4 kHz\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"192 kHz\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"Refer to CT\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"HE AAC\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"HE AAC v2\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"MPEG SURROUND\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"MPEG-4 HE AAC\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"MPEG-4 HE AAC v2\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"MPEG-4 AAC LC\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"DRA\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"MPEG-4 HE AAC + MPEG Surround\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"MPEG-4 AAC LC + MPEG Surround\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"    not a HDMI vendor infoframe\0A\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"    empty frame\0A\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"    HDMI VIC: %u\0A\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"    3D structure: %s\0A\00", align 1
@.str.136 = private unnamed_addr constant [27 x i8] c"    3D extension data: %d\0A\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"Frame Packing\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"Field Alternative\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"Line Alternative\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"Side-by-side (Full)\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"L + Depth\00", align 1
@.str.142 = private unnamed_addr constant [38 x i8] c"L + Depth + Graphics + Graphics-depth\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Top-and-Bottom\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"Side-by-side (Half)\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"metadata type: %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"eotf: %d\0A\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"x[%d]: %d\0A\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"y[%d]: %d\0A\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"white point x: %d\0A\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"white point y: %d\0A\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"max_display_mastering_luminance: %d\0A\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"min_display_mastering_luminance: %d\0A\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"max_cll: %d\0A\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"max_fall: %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe* %frame) #0 !dbg !233 {
entry:
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !266
  %1 = bitcast %struct.hdmi_avi_infoframe* %0 to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 68, i1 false), !dbg !267
  %2 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !268
  %type = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %2, i32 0, i32 0, !dbg !269
  store i32 130, i32* %type, align 4, !dbg !270
  %3 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !271
  %version = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %3, i32 0, i32 1, !dbg !272
  store i8 2, i8* %version, align 4, !dbg !273
  %4 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !274
  %length = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %4, i32 0, i32 2, !dbg !275
  store i8 13, i8* %length, align 1, !dbg !276
  ret void, !dbg !277
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_avi_infoframe_check(%struct.hdmi_avi_infoframe* %frame) #0 !dbg !278 {
entry:
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !283
  %call = call i32 @hdmi_avi_infoframe_check_only(%struct.hdmi_avi_infoframe* %0) #5, !dbg !284
  ret i32 %call, !dbg !285
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_avi_infoframe_check_only(%struct.hdmi_avi_infoframe* %frame) #0 !dbg !286 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !293
  %type = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %0, i32 0, i32 0, !dbg !295
  %1 = load i32, i32* %type, align 4, !dbg !295
  %cmp = icmp ne i32 %1, 130, !dbg !296
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !298
  %version = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %2, i32 0, i32 1, !dbg !299
  %3 = load i8, i8* %version, align 4, !dbg !299
  %conv = zext i8 %3 to i32, !dbg !298
  %cmp1 = icmp ne i32 %conv, 2, !dbg !300
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !301

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !302
  %length = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %4, i32 0, i32 2, !dbg !303
  %5 = load i8, i8* %length, align 1, !dbg !303
  %conv4 = zext i8 %5 to i32, !dbg !302
  %cmp5 = icmp ne i32 %conv4, 13, !dbg !304
  br i1 %cmp5, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !306
  br label %return, !dbg !306

if.end:                                           ; preds = %lor.lhs.false3
  %6 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !307
  %picture_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %6, i32 0, i32 6, !dbg !309
  %7 = load i32, i32* %picture_aspect, align 4, !dbg !309
  %cmp7 = icmp ugt i32 %7, 2, !dbg !310
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !311

if.then9:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !312
  br label %return, !dbg !312

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !313
  br label %return, !dbg !313

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !314
  ret i32 %8, !dbg !314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_avi_infoframe_pack_only(%struct.hdmi_avi_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !315 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %length = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !328, metadata !DIExpression()), !dbg !329
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !330, metadata !DIExpression()), !dbg !331
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !334, metadata !DIExpression()), !dbg !340
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !341
  store i8* %0, i8** %ptr, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata i64* %length, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !344, metadata !DIExpression()), !dbg !345
  %1 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !346
  %call = call i32 @hdmi_avi_infoframe_check_only(%struct.hdmi_avi_infoframe* %1) #5, !dbg !347
  store i32 %call, i32* %ret, align 4, !dbg !348
  %2 = load i32, i32* %ret, align 4, !dbg !349
  %tobool = icmp ne i32 %2, 0, !dbg !349
  br i1 %tobool, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !352
  %conv = sext i32 %3 to i64, !dbg !352
  store i64 %conv, i64* %retval, align 8, !dbg !353
  br label %return, !dbg !353

if.end:                                           ; preds = %entry
  %4 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !354
  %length1 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %4, i32 0, i32 2, !dbg !355
  %5 = load i8, i8* %length1, align 1, !dbg !355
  %conv2 = zext i8 %5 to i32, !dbg !354
  %add = add i32 4, %conv2, !dbg !356
  %conv3 = sext i32 %add to i64, !dbg !357
  store i64 %conv3, i64* %length, align 8, !dbg !358
  %6 = load i64, i64* %size.addr, align 8, !dbg !359
  %7 = load i64, i64* %length, align 8, !dbg !361
  %cmp = icmp ult i64 %6, %7, !dbg !362
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !363

if.then5:                                         ; preds = %if.end
  store i64 -28, i64* %retval, align 8, !dbg !364
  br label %return, !dbg !364

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !365
  %9 = load i64, i64* %size.addr, align 8, !dbg !366
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %9, i1 false), !dbg !367
  %10 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !368
  %type = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %10, i32 0, i32 0, !dbg !369
  %11 = load i32, i32* %type, align 4, !dbg !369
  %conv7 = trunc i32 %11 to i8, !dbg !368
  %12 = load i8*, i8** %ptr, align 8, !dbg !370
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !370
  store i8 %conv7, i8* %arrayidx, align 1, !dbg !371
  %13 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !372
  %version = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %13, i32 0, i32 1, !dbg !373
  %14 = load i8, i8* %version, align 4, !dbg !373
  %15 = load i8*, i8** %ptr, align 8, !dbg !374
  %arrayidx8 = getelementptr i8, i8* %15, i64 1, !dbg !374
  store i8 %14, i8* %arrayidx8, align 1, !dbg !375
  %16 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !376
  %length9 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %16, i32 0, i32 2, !dbg !377
  %17 = load i8, i8* %length9, align 1, !dbg !377
  %18 = load i8*, i8** %ptr, align 8, !dbg !378
  %arrayidx10 = getelementptr i8, i8* %18, i64 2, !dbg !378
  store i8 %17, i8* %arrayidx10, align 1, !dbg !379
  %19 = load i8*, i8** %ptr, align 8, !dbg !380
  %arrayidx11 = getelementptr i8, i8* %19, i64 3, !dbg !380
  store i8 0, i8* %arrayidx11, align 1, !dbg !381
  %20 = load i8*, i8** %ptr, align 8, !dbg !382
  %add.ptr = getelementptr i8, i8* %20, i64 4, !dbg !382
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !382
  %21 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !383
  %colorspace = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %21, i32 0, i32 3, !dbg !384
  %22 = load i32, i32* %colorspace, align 4, !dbg !384
  %and = and i32 %22, 3, !dbg !385
  %shl = shl i32 %and, 5, !dbg !386
  %23 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !387
  %scan_mode = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %23, i32 0, i32 4, !dbg !388
  %24 = load i32, i32* %scan_mode, align 4, !dbg !388
  %and12 = and i32 %24, 3, !dbg !389
  %or = or i32 %shl, %and12, !dbg !390
  %conv13 = trunc i32 %or to i8, !dbg !391
  %25 = load i8*, i8** %ptr, align 8, !dbg !392
  %arrayidx14 = getelementptr i8, i8* %25, i64 0, !dbg !392
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !393
  %26 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !394
  %active_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %26, i32 0, i32 7, !dbg !396
  %27 = load i32, i32* %active_aspect, align 4, !dbg !396
  %and15 = and i32 %27, 15, !dbg !397
  %tobool16 = icmp ne i32 %and15, 0, !dbg !397
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !398

if.then17:                                        ; preds = %if.end6
  %28 = load i8*, i8** %ptr, align 8, !dbg !399
  %arrayidx18 = getelementptr i8, i8* %28, i64 0, !dbg !399
  %29 = load i8, i8* %arrayidx18, align 1, !dbg !400
  %conv19 = zext i8 %29 to i64, !dbg !400
  %or20 = or i64 %conv19, 16, !dbg !400
  %conv21 = trunc i64 %or20 to i8, !dbg !400
  store i8 %conv21, i8* %arrayidx18, align 1, !dbg !400
  br label %if.end22, !dbg !399

if.end22:                                         ; preds = %if.then17, %if.end6
  %30 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !401
  %top_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %30, i32 0, i32 16, !dbg !403
  %31 = load i16, i16* %top_bar, align 2, !dbg !403
  %conv23 = zext i16 %31 to i32, !dbg !401
  %tobool24 = icmp ne i32 %conv23, 0, !dbg !401
  br i1 %tobool24, label %if.then27, label %lor.lhs.false, !dbg !404

lor.lhs.false:                                    ; preds = %if.end22
  %32 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !405
  %bottom_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %32, i32 0, i32 17, !dbg !406
  %33 = load i16, i16* %bottom_bar, align 4, !dbg !406
  %conv25 = zext i16 %33 to i32, !dbg !405
  %tobool26 = icmp ne i32 %conv25, 0, !dbg !405
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !407

if.then27:                                        ; preds = %lor.lhs.false, %if.end22
  %34 = load i8*, i8** %ptr, align 8, !dbg !408
  %arrayidx28 = getelementptr i8, i8* %34, i64 0, !dbg !408
  %35 = load i8, i8* %arrayidx28, align 1, !dbg !409
  %conv29 = zext i8 %35 to i64, !dbg !409
  %or30 = or i64 %conv29, 8, !dbg !409
  %conv31 = trunc i64 %or30 to i8, !dbg !409
  store i8 %conv31, i8* %arrayidx28, align 1, !dbg !409
  br label %if.end32, !dbg !408

if.end32:                                         ; preds = %if.then27, %lor.lhs.false
  %36 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !410
  %left_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %36, i32 0, i32 18, !dbg !412
  %37 = load i16, i16* %left_bar, align 2, !dbg !412
  %conv33 = zext i16 %37 to i32, !dbg !410
  %tobool34 = icmp ne i32 %conv33, 0, !dbg !410
  br i1 %tobool34, label %if.then38, label %lor.lhs.false35, !dbg !413

lor.lhs.false35:                                  ; preds = %if.end32
  %38 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !414
  %right_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %38, i32 0, i32 19, !dbg !415
  %39 = load i16, i16* %right_bar, align 4, !dbg !415
  %conv36 = zext i16 %39 to i32, !dbg !414
  %tobool37 = icmp ne i32 %conv36, 0, !dbg !414
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !416

if.then38:                                        ; preds = %lor.lhs.false35, %if.end32
  %40 = load i8*, i8** %ptr, align 8, !dbg !417
  %arrayidx39 = getelementptr i8, i8* %40, i64 0, !dbg !417
  %41 = load i8, i8* %arrayidx39, align 1, !dbg !418
  %conv40 = zext i8 %41 to i64, !dbg !418
  %or41 = or i64 %conv40, 4, !dbg !418
  %conv42 = trunc i64 %or41 to i8, !dbg !418
  store i8 %conv42, i8* %arrayidx39, align 1, !dbg !418
  br label %if.end43, !dbg !417

if.end43:                                         ; preds = %if.then38, %lor.lhs.false35
  %42 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !419
  %colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %42, i32 0, i32 5, !dbg !420
  %43 = load i32, i32* %colorimetry, align 4, !dbg !420
  %and44 = and i32 %43, 3, !dbg !421
  %shl45 = shl i32 %and44, 6, !dbg !422
  %44 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !423
  %picture_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %44, i32 0, i32 6, !dbg !424
  %45 = load i32, i32* %picture_aspect, align 4, !dbg !424
  %and46 = and i32 %45, 3, !dbg !425
  %shl47 = shl i32 %and46, 4, !dbg !426
  %or48 = or i32 %shl45, %shl47, !dbg !427
  %46 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !428
  %active_aspect49 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %46, i32 0, i32 7, !dbg !429
  %47 = load i32, i32* %active_aspect49, align 4, !dbg !429
  %and50 = and i32 %47, 15, !dbg !430
  %or51 = or i32 %or48, %and50, !dbg !431
  %conv52 = trunc i32 %or51 to i8, !dbg !432
  %48 = load i8*, i8** %ptr, align 8, !dbg !433
  %arrayidx53 = getelementptr i8, i8* %48, i64 1, !dbg !433
  store i8 %conv52, i8* %arrayidx53, align 1, !dbg !434
  %49 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !435
  %extended_colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %49, i32 0, i32 9, !dbg !436
  %50 = load i32, i32* %extended_colorimetry, align 4, !dbg !436
  %and54 = and i32 %50, 7, !dbg !437
  %shl55 = shl i32 %and54, 4, !dbg !438
  %51 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !439
  %quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %51, i32 0, i32 10, !dbg !440
  %52 = load i32, i32* %quantization_range, align 4, !dbg !440
  %and56 = and i32 %52, 3, !dbg !441
  %shl57 = shl i32 %and56, 2, !dbg !442
  %or58 = or i32 %shl55, %shl57, !dbg !443
  %53 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !444
  %nups = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %53, i32 0, i32 11, !dbg !445
  %54 = load i32, i32* %nups, align 4, !dbg !445
  %and59 = and i32 %54, 3, !dbg !446
  %or60 = or i32 %or58, %and59, !dbg !447
  %conv61 = trunc i32 %or60 to i8, !dbg !448
  %55 = load i8*, i8** %ptr, align 8, !dbg !449
  %arrayidx62 = getelementptr i8, i8* %55, i64 2, !dbg !449
  store i8 %conv61, i8* %arrayidx62, align 1, !dbg !450
  %56 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !451
  %itc = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %56, i32 0, i32 8, !dbg !453
  %57 = load i8, i8* %itc, align 4, !dbg !453
  %tobool63 = trunc i8 %57 to i1, !dbg !453
  br i1 %tobool63, label %if.then64, label %if.end69, !dbg !454

if.then64:                                        ; preds = %if.end43
  %58 = load i8*, i8** %ptr, align 8, !dbg !455
  %arrayidx65 = getelementptr i8, i8* %58, i64 2, !dbg !455
  %59 = load i8, i8* %arrayidx65, align 1, !dbg !456
  %conv66 = zext i8 %59 to i64, !dbg !456
  %or67 = or i64 %conv66, 128, !dbg !456
  %conv68 = trunc i64 %or67 to i8, !dbg !456
  store i8 %conv68, i8* %arrayidx65, align 1, !dbg !456
  br label %if.end69, !dbg !455

if.end69:                                         ; preds = %if.then64, %if.end43
  %60 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !457
  %video_code = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %60, i32 0, i32 12, !dbg !458
  %61 = load i8, i8* %video_code, align 4, !dbg !458
  %conv70 = zext i8 %61 to i32, !dbg !457
  %and71 = and i32 %conv70, 127, !dbg !459
  %conv72 = trunc i32 %and71 to i8, !dbg !457
  %62 = load i8*, i8** %ptr, align 8, !dbg !460
  %arrayidx73 = getelementptr i8, i8* %62, i64 3, !dbg !460
  store i8 %conv72, i8* %arrayidx73, align 1, !dbg !461
  %63 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !462
  %ycc_quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %63, i32 0, i32 13, !dbg !463
  %64 = load i32, i32* %ycc_quantization_range, align 4, !dbg !463
  %and74 = and i32 %64, 3, !dbg !464
  %shl75 = shl i32 %and74, 6, !dbg !465
  %65 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !466
  %content_type = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %65, i32 0, i32 14, !dbg !467
  %66 = load i32, i32* %content_type, align 4, !dbg !467
  %and76 = and i32 %66, 3, !dbg !468
  %shl77 = shl i32 %and76, 4, !dbg !469
  %or78 = or i32 %shl75, %shl77, !dbg !470
  %67 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !471
  %pixel_repeat = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %67, i32 0, i32 15, !dbg !472
  %68 = load i8, i8* %pixel_repeat, align 4, !dbg !472
  %conv79 = zext i8 %68 to i32, !dbg !471
  %and80 = and i32 %conv79, 15, !dbg !473
  %or81 = or i32 %or78, %and80, !dbg !474
  %conv82 = trunc i32 %or81 to i8, !dbg !475
  %69 = load i8*, i8** %ptr, align 8, !dbg !476
  %arrayidx83 = getelementptr i8, i8* %69, i64 4, !dbg !476
  store i8 %conv82, i8* %arrayidx83, align 1, !dbg !477
  %70 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !478
  %top_bar84 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %70, i32 0, i32 16, !dbg !479
  %71 = load i16, i16* %top_bar84, align 2, !dbg !479
  %conv85 = zext i16 %71 to i32, !dbg !478
  %and86 = and i32 %conv85, 255, !dbg !480
  %conv87 = trunc i32 %and86 to i8, !dbg !478
  %72 = load i8*, i8** %ptr, align 8, !dbg !481
  %arrayidx88 = getelementptr i8, i8* %72, i64 5, !dbg !481
  store i8 %conv87, i8* %arrayidx88, align 1, !dbg !482
  %73 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !483
  %top_bar89 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %73, i32 0, i32 16, !dbg !484
  %74 = load i16, i16* %top_bar89, align 2, !dbg !484
  %conv90 = zext i16 %74 to i32, !dbg !483
  %shr = ashr i32 %conv90, 8, !dbg !485
  %and91 = and i32 %shr, 255, !dbg !486
  %conv92 = trunc i32 %and91 to i8, !dbg !487
  %75 = load i8*, i8** %ptr, align 8, !dbg !488
  %arrayidx93 = getelementptr i8, i8* %75, i64 6, !dbg !488
  store i8 %conv92, i8* %arrayidx93, align 1, !dbg !489
  %76 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !490
  %bottom_bar94 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %76, i32 0, i32 17, !dbg !491
  %77 = load i16, i16* %bottom_bar94, align 4, !dbg !491
  %conv95 = zext i16 %77 to i32, !dbg !490
  %and96 = and i32 %conv95, 255, !dbg !492
  %conv97 = trunc i32 %and96 to i8, !dbg !490
  %78 = load i8*, i8** %ptr, align 8, !dbg !493
  %arrayidx98 = getelementptr i8, i8* %78, i64 7, !dbg !493
  store i8 %conv97, i8* %arrayidx98, align 1, !dbg !494
  %79 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !495
  %bottom_bar99 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %79, i32 0, i32 17, !dbg !496
  %80 = load i16, i16* %bottom_bar99, align 4, !dbg !496
  %conv100 = zext i16 %80 to i32, !dbg !495
  %shr101 = ashr i32 %conv100, 8, !dbg !497
  %and102 = and i32 %shr101, 255, !dbg !498
  %conv103 = trunc i32 %and102 to i8, !dbg !499
  %81 = load i8*, i8** %ptr, align 8, !dbg !500
  %arrayidx104 = getelementptr i8, i8* %81, i64 8, !dbg !500
  store i8 %conv103, i8* %arrayidx104, align 1, !dbg !501
  %82 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !502
  %left_bar105 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %82, i32 0, i32 18, !dbg !503
  %83 = load i16, i16* %left_bar105, align 2, !dbg !503
  %conv106 = zext i16 %83 to i32, !dbg !502
  %and107 = and i32 %conv106, 255, !dbg !504
  %conv108 = trunc i32 %and107 to i8, !dbg !502
  %84 = load i8*, i8** %ptr, align 8, !dbg !505
  %arrayidx109 = getelementptr i8, i8* %84, i64 9, !dbg !505
  store i8 %conv108, i8* %arrayidx109, align 1, !dbg !506
  %85 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !507
  %left_bar110 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %85, i32 0, i32 18, !dbg !508
  %86 = load i16, i16* %left_bar110, align 2, !dbg !508
  %conv111 = zext i16 %86 to i32, !dbg !507
  %shr112 = ashr i32 %conv111, 8, !dbg !509
  %and113 = and i32 %shr112, 255, !dbg !510
  %conv114 = trunc i32 %and113 to i8, !dbg !511
  %87 = load i8*, i8** %ptr, align 8, !dbg !512
  %arrayidx115 = getelementptr i8, i8* %87, i64 10, !dbg !512
  store i8 %conv114, i8* %arrayidx115, align 1, !dbg !513
  %88 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !514
  %right_bar116 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %88, i32 0, i32 19, !dbg !515
  %89 = load i16, i16* %right_bar116, align 4, !dbg !515
  %conv117 = zext i16 %89 to i32, !dbg !514
  %and118 = and i32 %conv117, 255, !dbg !516
  %conv119 = trunc i32 %and118 to i8, !dbg !514
  %90 = load i8*, i8** %ptr, align 8, !dbg !517
  %arrayidx120 = getelementptr i8, i8* %90, i64 11, !dbg !517
  store i8 %conv119, i8* %arrayidx120, align 1, !dbg !518
  %91 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !519
  %right_bar121 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %91, i32 0, i32 19, !dbg !520
  %92 = load i16, i16* %right_bar121, align 4, !dbg !520
  %conv122 = zext i16 %92 to i32, !dbg !519
  %shr123 = ashr i32 %conv122, 8, !dbg !521
  %and124 = and i32 %shr123, 255, !dbg !522
  %conv125 = trunc i32 %and124 to i8, !dbg !523
  %93 = load i8*, i8** %ptr, align 8, !dbg !524
  %arrayidx126 = getelementptr i8, i8* %93, i64 12, !dbg !524
  store i8 %conv125, i8* %arrayidx126, align 1, !dbg !525
  %94 = load i8*, i8** %buffer.addr, align 8, !dbg !526
  %95 = load i64, i64* %length, align 8, !dbg !527
  call void @hdmi_infoframe_set_checksum(i8* %94, i64 %95) #5, !dbg !528
  %96 = load i64, i64* %length, align 8, !dbg !529
  store i64 %96, i64* %retval, align 8, !dbg !530
  br label %return, !dbg !530

return:                                           ; preds = %if.end69, %if.then5, %if.then
  %97 = load i64, i64* %retval, align 8, !dbg !531
  ret i64 %97, !dbg !531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_infoframe_set_checksum(i8* %buffer, i64 %size) #0 !dbg !532 {
entry:
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !541
  store i8* %0, i8** %ptr, align 8, !dbg !540
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !542
  %2 = load i64, i64* %size.addr, align 8, !dbg !543
  %call = call zeroext i8 @hdmi_infoframe_checksum(i8* %1, i64 %2) #5, !dbg !544
  %3 = load i8*, i8** %ptr, align 8, !dbg !545
  %arrayidx = getelementptr i8, i8* %3, i64 3, !dbg !545
  store i8 %call, i8* %arrayidx, align 1, !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !548 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !557, metadata !DIExpression()), !dbg !558
  %0 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !559
  %call = call i32 @hdmi_avi_infoframe_check(%struct.hdmi_avi_infoframe* %0) #5, !dbg !560
  store i32 %call, i32* %ret, align 4, !dbg !561
  %1 = load i32, i32* %ret, align 4, !dbg !562
  %tobool = icmp ne i32 %1, 0, !dbg !562
  br i1 %tobool, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !565
  %conv = sext i32 %2 to i64, !dbg !565
  store i64 %conv, i64* %retval, align 8, !dbg !566
  br label %return, !dbg !566

if.end:                                           ; preds = %entry
  %3 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !567
  %4 = load i8*, i8** %buffer.addr, align 8, !dbg !568
  %5 = load i64, i64* %size.addr, align 8, !dbg !569
  %call1 = call i64 @hdmi_avi_infoframe_pack_only(%struct.hdmi_avi_infoframe* %3, i8* %4, i64 %5) #5, !dbg !570
  store i64 %call1, i64* %retval, align 8, !dbg !571
  br label %return, !dbg !571

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !572
  ret i64 %6, !dbg !572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %frame, i8* %vendor, i8* %product) #0 !dbg !573 {
entry:
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  %vendor.addr = alloca i8*, align 8
  %product.addr = alloca i8*, align 8
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !594, metadata !DIExpression()), !dbg !595
  store i8* %vendor, i8** %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vendor.addr, metadata !596, metadata !DIExpression()), !dbg !597
  store i8* %product, i8** %product.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %product.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !600
  %1 = bitcast %struct.hdmi_spd_infoframe* %0 to i8*, !dbg !601
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 36, i1 false), !dbg !601
  %2 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !602
  %type = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %2, i32 0, i32 0, !dbg !603
  store i32 131, i32* %type, align 4, !dbg !604
  %3 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !605
  %version = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %3, i32 0, i32 1, !dbg !606
  store i8 1, i8* %version, align 4, !dbg !607
  %4 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !608
  %length = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %4, i32 0, i32 2, !dbg !609
  store i8 25, i8* %length, align 1, !dbg !610
  %5 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !611
  %vendor1 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %5, i32 0, i32 3, !dbg !612
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %vendor1, i64 0, i64 0, !dbg !611
  %6 = load i8*, i8** %vendor.addr, align 8, !dbg !613
  %call = call i8* @strncpy(i8* %arraydecay, i8* %6, i64 8) #5, !dbg !614
  %7 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !615
  %product2 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %7, i32 0, i32 4, !dbg !616
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %product2, i64 0, i64 0, !dbg !615
  %8 = load i8*, i8** %product.addr, align 8, !dbg !617
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %8, i64 16) #5, !dbg !618
  ret i32 0, !dbg !619
}

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_spd_infoframe_check(%struct.hdmi_spd_infoframe* %frame) #0 !dbg !620 {
entry:
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !623, metadata !DIExpression()), !dbg !624
  %0 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !625
  %call = call i32 @hdmi_spd_infoframe_check_only(%struct.hdmi_spd_infoframe* %0) #5, !dbg !626
  ret i32 %call, !dbg !627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_spd_infoframe_check_only(%struct.hdmi_spd_infoframe* %frame) #0 !dbg !628 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !633, metadata !DIExpression()), !dbg !634
  %0 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !635
  %type = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %0, i32 0, i32 0, !dbg !637
  %1 = load i32, i32* %type, align 4, !dbg !637
  %cmp = icmp ne i32 %1, 131, !dbg !638
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !639

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !640
  %version = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %2, i32 0, i32 1, !dbg !641
  %3 = load i8, i8* %version, align 4, !dbg !641
  %conv = zext i8 %3 to i32, !dbg !640
  %cmp1 = icmp ne i32 %conv, 1, !dbg !642
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !643

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !644
  %length = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %4, i32 0, i32 2, !dbg !645
  %5 = load i8, i8* %length, align 1, !dbg !645
  %conv4 = zext i8 %5 to i32, !dbg !644
  %cmp5 = icmp ne i32 %conv4, 25, !dbg !646
  br i1 %cmp5, label %if.then, label %if.end, !dbg !647

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !648
  br label %return, !dbg !648

if.end:                                           ; preds = %lor.lhs.false3
  store i32 0, i32* %retval, align 4, !dbg !649
  br label %return, !dbg !649

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !650
  ret i32 %6, !dbg !650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_spd_infoframe_pack_only(%struct.hdmi_spd_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !651 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %length = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !654, metadata !DIExpression()), !dbg !655
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !658, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !662
  store i8* %0, i8** %ptr, align 8, !dbg !661
  call void @llvm.dbg.declare(metadata i64* %length, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !665, metadata !DIExpression()), !dbg !666
  %1 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !667
  %call = call i32 @hdmi_spd_infoframe_check_only(%struct.hdmi_spd_infoframe* %1) #5, !dbg !668
  store i32 %call, i32* %ret, align 4, !dbg !669
  %2 = load i32, i32* %ret, align 4, !dbg !670
  %tobool = icmp ne i32 %2, 0, !dbg !670
  br i1 %tobool, label %if.then, label %if.end, !dbg !672

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !673
  %conv = sext i32 %3 to i64, !dbg !673
  store i64 %conv, i64* %retval, align 8, !dbg !674
  br label %return, !dbg !674

if.end:                                           ; preds = %entry
  %4 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !675
  %length1 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %4, i32 0, i32 2, !dbg !676
  %5 = load i8, i8* %length1, align 1, !dbg !676
  %conv2 = zext i8 %5 to i32, !dbg !675
  %add = add i32 4, %conv2, !dbg !677
  %conv3 = sext i32 %add to i64, !dbg !678
  store i64 %conv3, i64* %length, align 8, !dbg !679
  %6 = load i64, i64* %size.addr, align 8, !dbg !680
  %7 = load i64, i64* %length, align 8, !dbg !682
  %cmp = icmp ult i64 %6, %7, !dbg !683
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !684

if.then5:                                         ; preds = %if.end
  store i64 -28, i64* %retval, align 8, !dbg !685
  br label %return, !dbg !685

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !686
  %9 = load i64, i64* %size.addr, align 8, !dbg !687
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %9, i1 false), !dbg !688
  %10 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !689
  %type = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %10, i32 0, i32 0, !dbg !690
  %11 = load i32, i32* %type, align 4, !dbg !690
  %conv7 = trunc i32 %11 to i8, !dbg !689
  %12 = load i8*, i8** %ptr, align 8, !dbg !691
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !691
  store i8 %conv7, i8* %arrayidx, align 1, !dbg !692
  %13 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !693
  %version = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %13, i32 0, i32 1, !dbg !694
  %14 = load i8, i8* %version, align 4, !dbg !694
  %15 = load i8*, i8** %ptr, align 8, !dbg !695
  %arrayidx8 = getelementptr i8, i8* %15, i64 1, !dbg !695
  store i8 %14, i8* %arrayidx8, align 1, !dbg !696
  %16 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !697
  %length9 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %16, i32 0, i32 2, !dbg !698
  %17 = load i8, i8* %length9, align 1, !dbg !698
  %18 = load i8*, i8** %ptr, align 8, !dbg !699
  %arrayidx10 = getelementptr i8, i8* %18, i64 2, !dbg !699
  store i8 %17, i8* %arrayidx10, align 1, !dbg !700
  %19 = load i8*, i8** %ptr, align 8, !dbg !701
  %arrayidx11 = getelementptr i8, i8* %19, i64 3, !dbg !701
  store i8 0, i8* %arrayidx11, align 1, !dbg !702
  %20 = load i8*, i8** %ptr, align 8, !dbg !703
  %add.ptr = getelementptr i8, i8* %20, i64 4, !dbg !703
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !703
  %21 = load i8*, i8** %ptr, align 8, !dbg !704
  %22 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !705
  %vendor = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %22, i32 0, i32 3, !dbg !706
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %vendor, i64 0, i64 0, !dbg !707
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 2 %arraydecay, i64 8, i1 false), !dbg !707
  %23 = load i8*, i8** %ptr, align 8, !dbg !708
  %add.ptr12 = getelementptr i8, i8* %23, i64 8, !dbg !709
  %24 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !710
  %product = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %24, i32 0, i32 4, !dbg !711
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %product, i64 0, i64 0, !dbg !712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr12, i8* align 2 %arraydecay13, i64 16, i1 false), !dbg !712
  %25 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !713
  %sdi = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %25, i32 0, i32 5, !dbg !714
  %26 = load i32, i32* %sdi, align 4, !dbg !714
  %conv14 = trunc i32 %26 to i8, !dbg !713
  %27 = load i8*, i8** %ptr, align 8, !dbg !715
  %arrayidx15 = getelementptr i8, i8* %27, i64 24, !dbg !715
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !716
  %28 = load i8*, i8** %buffer.addr, align 8, !dbg !717
  %29 = load i64, i64* %length, align 8, !dbg !718
  call void @hdmi_infoframe_set_checksum(i8* %28, i64 %29) #5, !dbg !719
  %30 = load i64, i64* %length, align 8, !dbg !720
  store i64 %30, i64* %retval, align 8, !dbg !721
  br label %return, !dbg !721

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %31 = load i64, i64* %retval, align 8, !dbg !722
  ret i64 %31, !dbg !722
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_spd_infoframe_pack(%struct.hdmi_spd_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !723 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !728, metadata !DIExpression()), !dbg !729
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !732, metadata !DIExpression()), !dbg !733
  %0 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !734
  %call = call i32 @hdmi_spd_infoframe_check(%struct.hdmi_spd_infoframe* %0) #5, !dbg !735
  store i32 %call, i32* %ret, align 4, !dbg !736
  %1 = load i32, i32* %ret, align 4, !dbg !737
  %tobool = icmp ne i32 %1, 0, !dbg !737
  br i1 %tobool, label %if.then, label %if.end, !dbg !739

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !740
  %conv = sext i32 %2 to i64, !dbg !740
  store i64 %conv, i64* %retval, align 8, !dbg !741
  br label %return, !dbg !741

if.end:                                           ; preds = %entry
  %3 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !742
  %4 = load i8*, i8** %buffer.addr, align 8, !dbg !743
  %5 = load i64, i64* %size.addr, align 8, !dbg !744
  %call1 = call i64 @hdmi_spd_infoframe_pack_only(%struct.hdmi_spd_infoframe* %3, i8* %4, i64 %5) #5, !dbg !745
  store i64 %call1, i64* %retval, align 8, !dbg !746
  br label %return, !dbg !746

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !747
  ret i64 %6, !dbg !747
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %frame) #0 !dbg !748 {
entry:
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !765, metadata !DIExpression()), !dbg !766
  %0 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !767
  %1 = bitcast %struct.hdmi_audio_infoframe* %0 to i8*, !dbg !768
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 28, i1 false), !dbg !768
  %2 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !769
  %type = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %2, i32 0, i32 0, !dbg !770
  store i32 132, i32* %type, align 4, !dbg !771
  %3 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !772
  %version = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %3, i32 0, i32 1, !dbg !773
  store i8 1, i8* %version, align 4, !dbg !774
  %4 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !775
  %length = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 2, !dbg !776
  store i8 10, i8* %length, align 1, !dbg !777
  ret i32 0, !dbg !778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_audio_infoframe_check(%struct.hdmi_audio_infoframe* %frame) #0 !dbg !779 {
entry:
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !780, metadata !DIExpression()), !dbg !781
  %0 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !782
  %call = call i32 @hdmi_audio_infoframe_check_only(%struct.hdmi_audio_infoframe* %0) #5, !dbg !783
  ret i32 %call, !dbg !784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_audio_infoframe_check_only(%struct.hdmi_audio_infoframe* %frame) #0 !dbg !785 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !792
  %type = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %0, i32 0, i32 0, !dbg !794
  %1 = load i32, i32* %type, align 4, !dbg !794
  %cmp = icmp ne i32 %1, 132, !dbg !795
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !796

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !797
  %version = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %2, i32 0, i32 1, !dbg !798
  %3 = load i8, i8* %version, align 4, !dbg !798
  %conv = zext i8 %3 to i32, !dbg !797
  %cmp1 = icmp ne i32 %conv, 1, !dbg !799
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !800

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !801
  %length = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 2, !dbg !802
  %5 = load i8, i8* %length, align 1, !dbg !802
  %conv4 = zext i8 %5 to i32, !dbg !801
  %cmp5 = icmp ne i32 %conv4, 10, !dbg !803
  br i1 %cmp5, label %if.then, label %if.end, !dbg !804

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !805
  br label %return, !dbg !805

if.end:                                           ; preds = %lor.lhs.false3
  store i32 0, i32* %retval, align 4, !dbg !806
  br label %return, !dbg !806

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !807
  ret i32 %6, !dbg !807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_audio_infoframe_pack_only(%struct.hdmi_audio_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !808 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %channels = alloca i8, align 1
  %ptr = alloca i8*, align 8
  %length = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !813, metadata !DIExpression()), !dbg !814
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata i8* %channels, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !821
  store i8* %0, i8** %ptr, align 8, !dbg !820
  call void @llvm.dbg.declare(metadata i64* %length, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !824, metadata !DIExpression()), !dbg !825
  %1 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !826
  %call = call i32 @hdmi_audio_infoframe_check_only(%struct.hdmi_audio_infoframe* %1) #5, !dbg !827
  store i32 %call, i32* %ret, align 4, !dbg !828
  %2 = load i32, i32* %ret, align 4, !dbg !829
  %tobool = icmp ne i32 %2, 0, !dbg !829
  br i1 %tobool, label %if.then, label %if.end, !dbg !831

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !832
  %conv = sext i32 %3 to i64, !dbg !832
  store i64 %conv, i64* %retval, align 8, !dbg !833
  br label %return, !dbg !833

if.end:                                           ; preds = %entry
  %4 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !834
  %length1 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 2, !dbg !835
  %5 = load i8, i8* %length1, align 1, !dbg !835
  %conv2 = zext i8 %5 to i32, !dbg !834
  %add = add i32 4, %conv2, !dbg !836
  %conv3 = sext i32 %add to i64, !dbg !837
  store i64 %conv3, i64* %length, align 8, !dbg !838
  %6 = load i64, i64* %size.addr, align 8, !dbg !839
  %7 = load i64, i64* %length, align 8, !dbg !841
  %cmp = icmp ult i64 %6, %7, !dbg !842
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !843

if.then5:                                         ; preds = %if.end
  store i64 -28, i64* %retval, align 8, !dbg !844
  br label %return, !dbg !844

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !845
  %9 = load i64, i64* %size.addr, align 8, !dbg !846
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %9, i1 false), !dbg !847
  %10 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !848
  %channels7 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %10, i32 0, i32 3, !dbg !850
  %11 = load i8, i8* %channels7, align 2, !dbg !850
  %conv8 = zext i8 %11 to i32, !dbg !848
  %cmp9 = icmp sge i32 %conv8, 2, !dbg !851
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !852

if.then11:                                        ; preds = %if.end6
  %12 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !853
  %channels12 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %12, i32 0, i32 3, !dbg !854
  %13 = load i8, i8* %channels12, align 2, !dbg !854
  %conv13 = zext i8 %13 to i32, !dbg !853
  %sub = sub i32 %conv13, 1, !dbg !855
  %conv14 = trunc i32 %sub to i8, !dbg !853
  store i8 %conv14, i8* %channels, align 1, !dbg !856
  br label %if.end15, !dbg !857

if.else:                                          ; preds = %if.end6
  store i8 0, i8* %channels, align 1, !dbg !858
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %14 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !859
  %type = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %14, i32 0, i32 0, !dbg !860
  %15 = load i32, i32* %type, align 4, !dbg !860
  %conv16 = trunc i32 %15 to i8, !dbg !859
  %16 = load i8*, i8** %ptr, align 8, !dbg !861
  %arrayidx = getelementptr i8, i8* %16, i64 0, !dbg !861
  store i8 %conv16, i8* %arrayidx, align 1, !dbg !862
  %17 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !863
  %version = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %17, i32 0, i32 1, !dbg !864
  %18 = load i8, i8* %version, align 4, !dbg !864
  %19 = load i8*, i8** %ptr, align 8, !dbg !865
  %arrayidx17 = getelementptr i8, i8* %19, i64 1, !dbg !865
  store i8 %18, i8* %arrayidx17, align 1, !dbg !866
  %20 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !867
  %length18 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %20, i32 0, i32 2, !dbg !868
  %21 = load i8, i8* %length18, align 1, !dbg !868
  %22 = load i8*, i8** %ptr, align 8, !dbg !869
  %arrayidx19 = getelementptr i8, i8* %22, i64 2, !dbg !869
  store i8 %21, i8* %arrayidx19, align 1, !dbg !870
  %23 = load i8*, i8** %ptr, align 8, !dbg !871
  %arrayidx20 = getelementptr i8, i8* %23, i64 3, !dbg !871
  store i8 0, i8* %arrayidx20, align 1, !dbg !872
  %24 = load i8*, i8** %ptr, align 8, !dbg !873
  %add.ptr = getelementptr i8, i8* %24, i64 4, !dbg !873
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !873
  %25 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !874
  %coding_type = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %25, i32 0, i32 4, !dbg !875
  %26 = load i32, i32* %coding_type, align 4, !dbg !875
  %and = and i32 %26, 15, !dbg !876
  %shl = shl i32 %and, 4, !dbg !877
  %27 = load i8, i8* %channels, align 1, !dbg !878
  %conv21 = zext i8 %27 to i32, !dbg !878
  %and22 = and i32 %conv21, 7, !dbg !879
  %or = or i32 %shl, %and22, !dbg !880
  %conv23 = trunc i32 %or to i8, !dbg !881
  %28 = load i8*, i8** %ptr, align 8, !dbg !882
  %arrayidx24 = getelementptr i8, i8* %28, i64 0, !dbg !882
  store i8 %conv23, i8* %arrayidx24, align 1, !dbg !883
  %29 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !884
  %sample_frequency = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %29, i32 0, i32 6, !dbg !885
  %30 = load i32, i32* %sample_frequency, align 4, !dbg !885
  %and25 = and i32 %30, 7, !dbg !886
  %shl26 = shl i32 %and25, 2, !dbg !887
  %31 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !888
  %sample_size = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %31, i32 0, i32 5, !dbg !889
  %32 = load i32, i32* %sample_size, align 4, !dbg !889
  %and27 = and i32 %32, 3, !dbg !890
  %or28 = or i32 %shl26, %and27, !dbg !891
  %conv29 = trunc i32 %or28 to i8, !dbg !892
  %33 = load i8*, i8** %ptr, align 8, !dbg !893
  %arrayidx30 = getelementptr i8, i8* %33, i64 1, !dbg !893
  store i8 %conv29, i8* %arrayidx30, align 1, !dbg !894
  %34 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !895
  %coding_type_ext = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %34, i32 0, i32 7, !dbg !896
  %35 = load i32, i32* %coding_type_ext, align 4, !dbg !896
  %and31 = and i32 %35, 31, !dbg !897
  %conv32 = trunc i32 %and31 to i8, !dbg !895
  %36 = load i8*, i8** %ptr, align 8, !dbg !898
  %arrayidx33 = getelementptr i8, i8* %36, i64 2, !dbg !898
  store i8 %conv32, i8* %arrayidx33, align 1, !dbg !899
  %37 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !900
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %37, i32 0, i32 8, !dbg !901
  %38 = load i8, i8* %channel_allocation, align 4, !dbg !901
  %39 = load i8*, i8** %ptr, align 8, !dbg !902
  %arrayidx34 = getelementptr i8, i8* %39, i64 3, !dbg !902
  store i8 %38, i8* %arrayidx34, align 1, !dbg !903
  %40 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !904
  %level_shift_value = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %40, i32 0, i32 9, !dbg !905
  %41 = load i8, i8* %level_shift_value, align 1, !dbg !905
  %conv35 = zext i8 %41 to i32, !dbg !904
  %and36 = and i32 %conv35, 15, !dbg !906
  %shl37 = shl i32 %and36, 3, !dbg !907
  %conv38 = trunc i32 %shl37 to i8, !dbg !908
  %42 = load i8*, i8** %ptr, align 8, !dbg !909
  %arrayidx39 = getelementptr i8, i8* %42, i64 4, !dbg !909
  store i8 %conv38, i8* %arrayidx39, align 1, !dbg !910
  %43 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !911
  %downmix_inhibit = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %43, i32 0, i32 10, !dbg !913
  %44 = load i8, i8* %downmix_inhibit, align 2, !dbg !913
  %tobool40 = trunc i8 %44 to i1, !dbg !913
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !914

if.then41:                                        ; preds = %if.end15
  %45 = load i8*, i8** %ptr, align 8, !dbg !915
  %arrayidx42 = getelementptr i8, i8* %45, i64 4, !dbg !915
  %46 = load i8, i8* %arrayidx42, align 1, !dbg !916
  %conv43 = zext i8 %46 to i64, !dbg !916
  %or44 = or i64 %conv43, 128, !dbg !916
  %conv45 = trunc i64 %or44 to i8, !dbg !916
  store i8 %conv45, i8* %arrayidx42, align 1, !dbg !916
  br label %if.end46, !dbg !915

if.end46:                                         ; preds = %if.then41, %if.end15
  %47 = load i8*, i8** %buffer.addr, align 8, !dbg !917
  %48 = load i64, i64* %length, align 8, !dbg !918
  call void @hdmi_infoframe_set_checksum(i8* %47, i64 %48) #5, !dbg !919
  %49 = load i64, i64* %length, align 8, !dbg !920
  store i64 %49, i64* %retval, align 8, !dbg !921
  br label %return, !dbg !921

return:                                           ; preds = %if.end46, %if.then5, %if.then
  %50 = load i64, i64* %retval, align 8, !dbg !922
  ret i64 %50, !dbg !922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !923 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !926, metadata !DIExpression()), !dbg !927
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !928, metadata !DIExpression()), !dbg !929
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !934
  %call = call i32 @hdmi_audio_infoframe_check(%struct.hdmi_audio_infoframe* %0) #5, !dbg !935
  store i32 %call, i32* %ret, align 4, !dbg !936
  %1 = load i32, i32* %ret, align 4, !dbg !937
  %tobool = icmp ne i32 %1, 0, !dbg !937
  br i1 %tobool, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !940
  %conv = sext i32 %2 to i64, !dbg !940
  store i64 %conv, i64* %retval, align 8, !dbg !941
  br label %return, !dbg !941

if.end:                                           ; preds = %entry
  %3 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !942
  %4 = load i8*, i8** %buffer.addr, align 8, !dbg !943
  %5 = load i64, i64* %size.addr, align 8, !dbg !944
  %call1 = call i64 @hdmi_audio_infoframe_pack_only(%struct.hdmi_audio_infoframe* %3, i8* %4, i64 %5) #5, !dbg !945
  store i64 %call1, i64* %retval, align 8, !dbg !946
  br label %return, !dbg !946

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !947
  ret i64 %6, !dbg !947
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %frame) #0 !dbg !948 {
entry:
  %frame.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %struct.hdmi_vendor_infoframe* %frame, %struct.hdmi_vendor_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %frame.addr, metadata !961, metadata !DIExpression()), !dbg !962
  %0 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !963
  %1 = bitcast %struct.hdmi_vendor_infoframe* %0 to i8*, !dbg !964
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 24, i1 false), !dbg !964
  %2 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !965
  %type = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %2, i32 0, i32 0, !dbg !966
  store i32 129, i32* %type, align 4, !dbg !967
  %3 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !968
  %version = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %3, i32 0, i32 1, !dbg !969
  store i8 1, i8* %version, align 4, !dbg !970
  %4 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !971
  %oui = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %4, i32 0, i32 3, !dbg !972
  store i32 3075, i32* %oui, align 4, !dbg !973
  %5 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !974
  %s3d_struct = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %5, i32 0, i32 5, !dbg !975
  store i32 -1, i32* %s3d_struct, align 4, !dbg !976
  %6 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !977
  %length = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %6, i32 0, i32 2, !dbg !978
  store i8 4, i8* %length, align 1, !dbg !979
  ret i32 0, !dbg !980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_vendor_infoframe_check(%struct.hdmi_vendor_infoframe* %frame) #0 !dbg !981 {
entry:
  %frame.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %struct.hdmi_vendor_infoframe* %frame, %struct.hdmi_vendor_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %frame.addr, metadata !982, metadata !DIExpression()), !dbg !983
  %0 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !984
  %call = call i32 @hdmi_vendor_infoframe_length(%struct.hdmi_vendor_infoframe* %0) #5, !dbg !985
  %conv = trunc i32 %call to i8, !dbg !985
  %1 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !986
  %length = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %1, i32 0, i32 2, !dbg !987
  store i8 %conv, i8* %length, align 1, !dbg !988
  %2 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !989
  %call1 = call i32 @hdmi_vendor_infoframe_check_only(%struct.hdmi_vendor_infoframe* %2) #5, !dbg !990
  ret i32 %call1, !dbg !991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_vendor_infoframe_length(%struct.hdmi_vendor_infoframe* %frame) #0 !dbg !992 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %struct.hdmi_vendor_infoframe* %frame, %struct.hdmi_vendor_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %frame.addr, metadata !997, metadata !DIExpression()), !dbg !998
  %0 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !999
  %s3d_struct = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %0, i32 0, i32 5, !dbg !1001
  %1 = load i32, i32* %s3d_struct, align 4, !dbg !1001
  %cmp = icmp sge i32 %1, 8, !dbg !1002
  br i1 %cmp, label %if.then, label %if.else, !dbg !1003

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !1004
  br label %return, !dbg !1004

if.else:                                          ; preds = %entry
  %2 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1005
  %vic = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %2, i32 0, i32 4, !dbg !1007
  %3 = load i8, i8* %vic, align 4, !dbg !1007
  %conv = zext i8 %3 to i32, !dbg !1005
  %cmp1 = icmp ne i32 %conv, 0, !dbg !1008
  br i1 %cmp1, label %if.then6, label %lor.lhs.false, !dbg !1009

lor.lhs.false:                                    ; preds = %if.else
  %4 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1010
  %s3d_struct3 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %4, i32 0, i32 5, !dbg !1011
  %5 = load i32, i32* %s3d_struct3, align 4, !dbg !1011
  %cmp4 = icmp ne i32 %5, -1, !dbg !1012
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !1013

if.then6:                                         ; preds = %lor.lhs.false, %if.else
  store i32 5, i32* %retval, align 4, !dbg !1014
  br label %return, !dbg !1014

if.else7:                                         ; preds = %lor.lhs.false
  store i32 4, i32* %retval, align 4, !dbg !1015
  br label %return, !dbg !1015

return:                                           ; preds = %if.else7, %if.then6, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !1016
  ret i32 %6, !dbg !1016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_vendor_infoframe_check_only(%struct.hdmi_vendor_infoframe* %frame) #0 !dbg !1017 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %struct.hdmi_vendor_infoframe* %frame, %struct.hdmi_vendor_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %frame.addr, metadata !1018, metadata !DIExpression()), !dbg !1019
  %0 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1020
  %type = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %0, i32 0, i32 0, !dbg !1022
  %1 = load i32, i32* %type, align 4, !dbg !1022
  %cmp = icmp ne i32 %1, 129, !dbg !1023
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1024

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1025
  %version = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %2, i32 0, i32 1, !dbg !1026
  %3 = load i8, i8* %version, align 4, !dbg !1026
  %conv = zext i8 %3 to i32, !dbg !1025
  %cmp1 = icmp ne i32 %conv, 1, !dbg !1027
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !1028

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1029
  %oui = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %4, i32 0, i32 3, !dbg !1030
  %5 = load i32, i32* %oui, align 4, !dbg !1030
  %cmp4 = icmp ne i32 %5, 3075, !dbg !1031
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1032

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !1033
  br label %return, !dbg !1033

if.end:                                           ; preds = %lor.lhs.false3
  %6 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1034
  %vic = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %6, i32 0, i32 4, !dbg !1036
  %7 = load i8, i8* %vic, align 4, !dbg !1036
  %conv6 = zext i8 %7 to i32, !dbg !1034
  %cmp7 = icmp ne i32 %conv6, 0, !dbg !1037
  br i1 %cmp7, label %land.lhs.true, label %if.end12, !dbg !1038

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1039
  %s3d_struct = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %8, i32 0, i32 5, !dbg !1040
  %9 = load i32, i32* %s3d_struct, align 4, !dbg !1040
  %cmp9 = icmp ne i32 %9, -1, !dbg !1041
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1042

if.then11:                                        ; preds = %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !1043
  br label %return, !dbg !1043

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1044
  %length = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %10, i32 0, i32 2, !dbg !1046
  %11 = load i8, i8* %length, align 1, !dbg !1046
  %conv13 = zext i8 %11 to i32, !dbg !1044
  %12 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1047
  %call = call i32 @hdmi_vendor_infoframe_length(%struct.hdmi_vendor_infoframe* %12) #5, !dbg !1048
  %cmp14 = icmp ne i32 %conv13, %call, !dbg !1049
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1050

if.then16:                                        ; preds = %if.end12
  store i32 -22, i32* %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

if.end17:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !1052
  br label %return, !dbg !1052

return:                                           ; preds = %if.end17, %if.then16, %if.then11, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1053
  ret i32 %13, !dbg !1053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_vendor_infoframe_pack_only(%struct.hdmi_vendor_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1054 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %length = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_vendor_infoframe* %frame, %struct.hdmi_vendor_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %frame.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1059, metadata !DIExpression()), !dbg !1060
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !1063, metadata !DIExpression()), !dbg !1064
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !1065
  store i8* %0, i8** %ptr, align 8, !dbg !1064
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1068, metadata !DIExpression()), !dbg !1069
  %1 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1070
  %call = call i32 @hdmi_vendor_infoframe_check_only(%struct.hdmi_vendor_infoframe* %1) #5, !dbg !1071
  store i32 %call, i32* %ret, align 4, !dbg !1072
  %2 = load i32, i32* %ret, align 4, !dbg !1073
  %tobool = icmp ne i32 %2, 0, !dbg !1073
  br i1 %tobool, label %if.then, label %if.end, !dbg !1075

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !1076
  %conv = sext i32 %3 to i64, !dbg !1076
  store i64 %conv, i64* %retval, align 8, !dbg !1077
  br label %return, !dbg !1077

if.end:                                           ; preds = %entry
  %4 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1078
  %length1 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %4, i32 0, i32 2, !dbg !1079
  %5 = load i8, i8* %length1, align 1, !dbg !1079
  %conv2 = zext i8 %5 to i32, !dbg !1078
  %add = add i32 4, %conv2, !dbg !1080
  %conv3 = sext i32 %add to i64, !dbg !1081
  store i64 %conv3, i64* %length, align 8, !dbg !1082
  %6 = load i64, i64* %size.addr, align 8, !dbg !1083
  %7 = load i64, i64* %length, align 8, !dbg !1085
  %cmp = icmp ult i64 %6, %7, !dbg !1086
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1087

if.then5:                                         ; preds = %if.end
  store i64 -28, i64* %retval, align 8, !dbg !1088
  br label %return, !dbg !1088

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !1089
  %9 = load i64, i64* %size.addr, align 8, !dbg !1090
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %9, i1 false), !dbg !1091
  %10 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1092
  %type = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %10, i32 0, i32 0, !dbg !1093
  %11 = load i32, i32* %type, align 4, !dbg !1093
  %conv7 = trunc i32 %11 to i8, !dbg !1092
  %12 = load i8*, i8** %ptr, align 8, !dbg !1094
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !1094
  store i8 %conv7, i8* %arrayidx, align 1, !dbg !1095
  %13 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1096
  %version = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %13, i32 0, i32 1, !dbg !1097
  %14 = load i8, i8* %version, align 4, !dbg !1097
  %15 = load i8*, i8** %ptr, align 8, !dbg !1098
  %arrayidx8 = getelementptr i8, i8* %15, i64 1, !dbg !1098
  store i8 %14, i8* %arrayidx8, align 1, !dbg !1099
  %16 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1100
  %length9 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %16, i32 0, i32 2, !dbg !1101
  %17 = load i8, i8* %length9, align 1, !dbg !1101
  %18 = load i8*, i8** %ptr, align 8, !dbg !1102
  %arrayidx10 = getelementptr i8, i8* %18, i64 2, !dbg !1102
  store i8 %17, i8* %arrayidx10, align 1, !dbg !1103
  %19 = load i8*, i8** %ptr, align 8, !dbg !1104
  %arrayidx11 = getelementptr i8, i8* %19, i64 3, !dbg !1104
  store i8 0, i8* %arrayidx11, align 1, !dbg !1105
  %20 = load i8*, i8** %ptr, align 8, !dbg !1106
  %arrayidx12 = getelementptr i8, i8* %20, i64 4, !dbg !1106
  store i8 3, i8* %arrayidx12, align 1, !dbg !1107
  %21 = load i8*, i8** %ptr, align 8, !dbg !1108
  %arrayidx13 = getelementptr i8, i8* %21, i64 5, !dbg !1108
  store i8 12, i8* %arrayidx13, align 1, !dbg !1109
  %22 = load i8*, i8** %ptr, align 8, !dbg !1110
  %arrayidx14 = getelementptr i8, i8* %22, i64 6, !dbg !1110
  store i8 0, i8* %arrayidx14, align 1, !dbg !1111
  %23 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1112
  %s3d_struct = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %23, i32 0, i32 5, !dbg !1114
  %24 = load i32, i32* %s3d_struct, align 4, !dbg !1114
  %cmp15 = icmp ne i32 %24, -1, !dbg !1115
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !1116

if.then17:                                        ; preds = %if.end6
  %25 = load i8*, i8** %ptr, align 8, !dbg !1117
  %arrayidx18 = getelementptr i8, i8* %25, i64 7, !dbg !1117
  store i8 64, i8* %arrayidx18, align 1, !dbg !1119
  %26 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1120
  %s3d_struct19 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %26, i32 0, i32 5, !dbg !1121
  %27 = load i32, i32* %s3d_struct19, align 4, !dbg !1121
  %and = and i32 %27, 15, !dbg !1122
  %shl = shl i32 %and, 4, !dbg !1123
  %conv20 = trunc i32 %shl to i8, !dbg !1124
  %28 = load i8*, i8** %ptr, align 8, !dbg !1125
  %arrayidx21 = getelementptr i8, i8* %28, i64 8, !dbg !1125
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !1126
  %29 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1127
  %s3d_struct22 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %29, i32 0, i32 5, !dbg !1129
  %30 = load i32, i32* %s3d_struct22, align 4, !dbg !1129
  %cmp23 = icmp sge i32 %30, 8, !dbg !1130
  br i1 %cmp23, label %if.then25, label %if.end30, !dbg !1131

if.then25:                                        ; preds = %if.then17
  %31 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1132
  %s3d_ext_data = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %31, i32 0, i32 6, !dbg !1133
  %32 = load i32, i32* %s3d_ext_data, align 4, !dbg !1133
  %and26 = and i32 %32, 15, !dbg !1134
  %shl27 = shl i32 %and26, 4, !dbg !1135
  %conv28 = trunc i32 %shl27 to i8, !dbg !1136
  %33 = load i8*, i8** %ptr, align 8, !dbg !1137
  %arrayidx29 = getelementptr i8, i8* %33, i64 9, !dbg !1137
  store i8 %conv28, i8* %arrayidx29, align 1, !dbg !1138
  br label %if.end30, !dbg !1137

if.end30:                                         ; preds = %if.then25, %if.then17
  br label %if.end39, !dbg !1139

if.else:                                          ; preds = %if.end6
  %34 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1140
  %vic = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %34, i32 0, i32 4, !dbg !1142
  %35 = load i8, i8* %vic, align 4, !dbg !1142
  %tobool31 = icmp ne i8 %35, 0, !dbg !1140
  br i1 %tobool31, label %if.then32, label %if.else36, !dbg !1143

if.then32:                                        ; preds = %if.else
  %36 = load i8*, i8** %ptr, align 8, !dbg !1144
  %arrayidx33 = getelementptr i8, i8* %36, i64 7, !dbg !1144
  store i8 32, i8* %arrayidx33, align 1, !dbg !1146
  %37 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1147
  %vic34 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %37, i32 0, i32 4, !dbg !1148
  %38 = load i8, i8* %vic34, align 4, !dbg !1148
  %39 = load i8*, i8** %ptr, align 8, !dbg !1149
  %arrayidx35 = getelementptr i8, i8* %39, i64 8, !dbg !1149
  store i8 %38, i8* %arrayidx35, align 1, !dbg !1150
  br label %if.end38, !dbg !1151

if.else36:                                        ; preds = %if.else
  %40 = load i8*, i8** %ptr, align 8, !dbg !1152
  %arrayidx37 = getelementptr i8, i8* %40, i64 7, !dbg !1152
  store i8 0, i8* %arrayidx37, align 1, !dbg !1154
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then32
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end30
  %41 = load i8*, i8** %buffer.addr, align 8, !dbg !1155
  %42 = load i64, i64* %length, align 8, !dbg !1156
  call void @hdmi_infoframe_set_checksum(i8* %41, i64 %42) #5, !dbg !1157
  %43 = load i64, i64* %length, align 8, !dbg !1158
  store i64 %43, i64* %retval, align 8, !dbg !1159
  br label %return, !dbg !1159

return:                                           ; preds = %if.end39, %if.then5, %if.then
  %44 = load i64, i64* %retval, align 8, !dbg !1160
  ret i64 %44, !dbg !1160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_vendor_infoframe_pack(%struct.hdmi_vendor_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1161 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_vendor_infoframe* %frame, %struct.hdmi_vendor_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %frame.addr, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1170, metadata !DIExpression()), !dbg !1171
  %0 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1172
  %call = call i32 @hdmi_vendor_infoframe_check(%struct.hdmi_vendor_infoframe* %0) #5, !dbg !1173
  store i32 %call, i32* %ret, align 4, !dbg !1174
  %1 = load i32, i32* %ret, align 4, !dbg !1175
  %tobool = icmp ne i32 %1, 0, !dbg !1175
  br i1 %tobool, label %if.then, label %if.end, !dbg !1177

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !1178
  %conv = sext i32 %2 to i64, !dbg !1178
  store i64 %conv, i64* %retval, align 8, !dbg !1179
  br label %return, !dbg !1179

if.end:                                           ; preds = %entry
  %3 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %frame.addr, align 8, !dbg !1180
  %4 = load i8*, i8** %buffer.addr, align 8, !dbg !1181
  %5 = load i64, i64* %size.addr, align 8, !dbg !1182
  %call1 = call i64 @hdmi_vendor_infoframe_pack_only(%struct.hdmi_vendor_infoframe* %3, i8* %4, i64 %5) #5, !dbg !1183
  store i64 %call1, i64* %retval, align 8, !dbg !1184
  br label %return, !dbg !1184

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !1185
  ret i64 %6, !dbg !1185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_drm_infoframe_init(%struct.hdmi_drm_infoframe* %frame) #0 !dbg !1186 {
entry:
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !1216, metadata !DIExpression()), !dbg !1217
  %0 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1218
  %1 = bitcast %struct.hdmi_drm_infoframe* %0 to i8*, !dbg !1219
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 40, i1 false), !dbg !1219
  %2 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1220
  %type = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %2, i32 0, i32 0, !dbg !1221
  store i32 135, i32* %type, align 4, !dbg !1222
  %3 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1223
  %version = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %3, i32 0, i32 1, !dbg !1224
  store i8 1, i8* %version, align 4, !dbg !1225
  %4 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1226
  %length = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %4, i32 0, i32 2, !dbg !1227
  store i8 26, i8* %length, align 1, !dbg !1228
  ret i32 0, !dbg !1229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_drm_infoframe_check(%struct.hdmi_drm_infoframe* %frame) #0 !dbg !1230 {
entry:
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !1231, metadata !DIExpression()), !dbg !1232
  %0 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1233
  %call = call i32 @hdmi_drm_infoframe_check_only(%struct.hdmi_drm_infoframe* %0) #5, !dbg !1234
  ret i32 %call, !dbg !1235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_drm_infoframe_check_only(%struct.hdmi_drm_infoframe* %frame) #0 !dbg !1236 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !1241, metadata !DIExpression()), !dbg !1242
  %0 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1243
  %type = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %0, i32 0, i32 0, !dbg !1245
  %1 = load i32, i32* %type, align 4, !dbg !1245
  %cmp = icmp ne i32 %1, 135, !dbg !1246
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1247

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1248
  %version = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %2, i32 0, i32 1, !dbg !1249
  %3 = load i8, i8* %version, align 4, !dbg !1249
  %conv = zext i8 %3 to i32, !dbg !1248
  %cmp1 = icmp ne i32 %conv, 1, !dbg !1250
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1251

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !1252
  br label %return, !dbg !1252

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1253
  %length = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %4, i32 0, i32 2, !dbg !1255
  %5 = load i8, i8* %length, align 1, !dbg !1255
  %conv3 = zext i8 %5 to i32, !dbg !1253
  %cmp4 = icmp ne i32 %conv3, 26, !dbg !1256
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1257

if.then6:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !1258
  br label %return, !dbg !1258

if.end7:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1259
  br label %return, !dbg !1259

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !1260
  ret i32 %6, !dbg !1260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_drm_infoframe_pack_only(%struct.hdmi_drm_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1261 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %length = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1268, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !1270, metadata !DIExpression()), !dbg !1271
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !1272
  store i8* %0, i8** %ptr, align 8, !dbg !1271
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1273, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1275, metadata !DIExpression()), !dbg !1276
  %1 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1277
  %length1 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %1, i32 0, i32 2, !dbg !1278
  %2 = load i8, i8* %length1, align 1, !dbg !1278
  %conv = zext i8 %2 to i32, !dbg !1277
  %add = add i32 4, %conv, !dbg !1279
  %conv2 = sext i32 %add to i64, !dbg !1280
  store i64 %conv2, i64* %length, align 8, !dbg !1281
  %3 = load i64, i64* %size.addr, align 8, !dbg !1282
  %4 = load i64, i64* %length, align 8, !dbg !1284
  %cmp = icmp ult i64 %3, %4, !dbg !1285
  br i1 %cmp, label %if.then, label %if.end, !dbg !1286

if.then:                                          ; preds = %entry
  store i64 -28, i64* %retval, align 8, !dbg !1287
  br label %return, !dbg !1287

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !1288
  %6 = load i64, i64* %size.addr, align 8, !dbg !1289
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 %6, i1 false), !dbg !1290
  %7 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1291
  %type = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %7, i32 0, i32 0, !dbg !1292
  %8 = load i32, i32* %type, align 4, !dbg !1292
  %conv4 = trunc i32 %8 to i8, !dbg !1291
  %9 = load i8*, i8** %ptr, align 8, !dbg !1293
  %arrayidx = getelementptr i8, i8* %9, i64 0, !dbg !1293
  store i8 %conv4, i8* %arrayidx, align 1, !dbg !1294
  %10 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1295
  %version = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %10, i32 0, i32 1, !dbg !1296
  %11 = load i8, i8* %version, align 4, !dbg !1296
  %12 = load i8*, i8** %ptr, align 8, !dbg !1297
  %arrayidx5 = getelementptr i8, i8* %12, i64 1, !dbg !1297
  store i8 %11, i8* %arrayidx5, align 1, !dbg !1298
  %13 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1299
  %length6 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %13, i32 0, i32 2, !dbg !1300
  %14 = load i8, i8* %length6, align 1, !dbg !1300
  %15 = load i8*, i8** %ptr, align 8, !dbg !1301
  %arrayidx7 = getelementptr i8, i8* %15, i64 2, !dbg !1301
  store i8 %14, i8* %arrayidx7, align 1, !dbg !1302
  %16 = load i8*, i8** %ptr, align 8, !dbg !1303
  %arrayidx8 = getelementptr i8, i8* %16, i64 3, !dbg !1303
  store i8 0, i8* %arrayidx8, align 1, !dbg !1304
  %17 = load i8*, i8** %ptr, align 8, !dbg !1305
  %add.ptr = getelementptr i8, i8* %17, i64 4, !dbg !1305
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !1305
  %18 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1306
  %eotf = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %18, i32 0, i32 3, !dbg !1307
  %19 = load i32, i32* %eotf, align 4, !dbg !1307
  %conv9 = trunc i32 %19 to i8, !dbg !1306
  %20 = load i8*, i8** %ptr, align 8, !dbg !1308
  %incdec.ptr = getelementptr i8, i8* %20, i32 1, !dbg !1308
  store i8* %incdec.ptr, i8** %ptr, align 8, !dbg !1308
  store i8 %conv9, i8* %20, align 1, !dbg !1309
  %21 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1310
  %metadata_type = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %21, i32 0, i32 4, !dbg !1311
  %22 = load i32, i32* %metadata_type, align 4, !dbg !1311
  %conv10 = trunc i32 %22 to i8, !dbg !1310
  %23 = load i8*, i8** %ptr, align 8, !dbg !1312
  %incdec.ptr11 = getelementptr i8, i8* %23, i32 1, !dbg !1312
  store i8* %incdec.ptr11, i8** %ptr, align 8, !dbg !1312
  store i8 %conv10, i8* %23, align 1, !dbg !1313
  store i32 0, i32* %i, align 4, !dbg !1314
  br label %for.cond, !dbg !1316

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %i, align 4, !dbg !1317
  %cmp12 = icmp slt i32 %24, 3, !dbg !1319
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1320

for.body:                                         ; preds = %for.cond
  %25 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1321
  %display_primaries = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %25, i32 0, i32 5, !dbg !1323
  %26 = load i32, i32* %i, align 4, !dbg !1324
  %idxprom = sext i32 %26 to i64, !dbg !1321
  %arrayidx14 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries, i64 0, i64 %idxprom, !dbg !1321
  %x = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx14, i32 0, i32 0, !dbg !1325
  %27 = load i16, i16* %x, align 4, !dbg !1325
  %conv15 = trunc i16 %27 to i8, !dbg !1321
  %28 = load i8*, i8** %ptr, align 8, !dbg !1326
  %incdec.ptr16 = getelementptr i8, i8* %28, i32 1, !dbg !1326
  store i8* %incdec.ptr16, i8** %ptr, align 8, !dbg !1326
  store i8 %conv15, i8* %28, align 1, !dbg !1327
  %29 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1328
  %display_primaries17 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %29, i32 0, i32 5, !dbg !1329
  %30 = load i32, i32* %i, align 4, !dbg !1330
  %idxprom18 = sext i32 %30 to i64, !dbg !1328
  %arrayidx19 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries17, i64 0, i64 %idxprom18, !dbg !1328
  %x20 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx19, i32 0, i32 0, !dbg !1331
  %31 = load i16, i16* %x20, align 4, !dbg !1331
  %conv21 = zext i16 %31 to i32, !dbg !1328
  %shr = ashr i32 %conv21, 8, !dbg !1332
  %conv22 = trunc i32 %shr to i8, !dbg !1328
  %32 = load i8*, i8** %ptr, align 8, !dbg !1333
  %incdec.ptr23 = getelementptr i8, i8* %32, i32 1, !dbg !1333
  store i8* %incdec.ptr23, i8** %ptr, align 8, !dbg !1333
  store i8 %conv22, i8* %32, align 1, !dbg !1334
  %33 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1335
  %display_primaries24 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %33, i32 0, i32 5, !dbg !1336
  %34 = load i32, i32* %i, align 4, !dbg !1337
  %idxprom25 = sext i32 %34 to i64, !dbg !1335
  %arrayidx26 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries24, i64 0, i64 %idxprom25, !dbg !1335
  %y = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx26, i32 0, i32 1, !dbg !1338
  %35 = load i16, i16* %y, align 2, !dbg !1338
  %conv27 = trunc i16 %35 to i8, !dbg !1335
  %36 = load i8*, i8** %ptr, align 8, !dbg !1339
  %incdec.ptr28 = getelementptr i8, i8* %36, i32 1, !dbg !1339
  store i8* %incdec.ptr28, i8** %ptr, align 8, !dbg !1339
  store i8 %conv27, i8* %36, align 1, !dbg !1340
  %37 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1341
  %display_primaries29 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %37, i32 0, i32 5, !dbg !1342
  %38 = load i32, i32* %i, align 4, !dbg !1343
  %idxprom30 = sext i32 %38 to i64, !dbg !1341
  %arrayidx31 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries29, i64 0, i64 %idxprom30, !dbg !1341
  %y32 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx31, i32 0, i32 1, !dbg !1344
  %39 = load i16, i16* %y32, align 2, !dbg !1344
  %conv33 = zext i16 %39 to i32, !dbg !1341
  %shr34 = ashr i32 %conv33, 8, !dbg !1345
  %conv35 = trunc i32 %shr34 to i8, !dbg !1341
  %40 = load i8*, i8** %ptr, align 8, !dbg !1346
  %incdec.ptr36 = getelementptr i8, i8* %40, i32 1, !dbg !1346
  store i8* %incdec.ptr36, i8** %ptr, align 8, !dbg !1346
  store i8 %conv35, i8* %40, align 1, !dbg !1347
  br label %for.inc, !dbg !1348

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !dbg !1349
  %inc = add i32 %41, 1, !dbg !1349
  store i32 %inc, i32* %i, align 4, !dbg !1349
  br label %for.cond, !dbg !1350, !llvm.loop !1351

for.end:                                          ; preds = %for.cond
  %42 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1353
  %white_point = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %42, i32 0, i32 6, !dbg !1354
  %x37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point, i32 0, i32 0, !dbg !1355
  %43 = load i16, i16* %x37, align 4, !dbg !1355
  %conv38 = trunc i16 %43 to i8, !dbg !1353
  %44 = load i8*, i8** %ptr, align 8, !dbg !1356
  %incdec.ptr39 = getelementptr i8, i8* %44, i32 1, !dbg !1356
  store i8* %incdec.ptr39, i8** %ptr, align 8, !dbg !1356
  store i8 %conv38, i8* %44, align 1, !dbg !1357
  %45 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1358
  %white_point40 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %45, i32 0, i32 6, !dbg !1359
  %x41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point40, i32 0, i32 0, !dbg !1360
  %46 = load i16, i16* %x41, align 4, !dbg !1360
  %conv42 = zext i16 %46 to i32, !dbg !1358
  %shr43 = ashr i32 %conv42, 8, !dbg !1361
  %conv44 = trunc i32 %shr43 to i8, !dbg !1358
  %47 = load i8*, i8** %ptr, align 8, !dbg !1362
  %incdec.ptr45 = getelementptr i8, i8* %47, i32 1, !dbg !1362
  store i8* %incdec.ptr45, i8** %ptr, align 8, !dbg !1362
  store i8 %conv44, i8* %47, align 1, !dbg !1363
  %48 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1364
  %white_point46 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %48, i32 0, i32 6, !dbg !1365
  %y47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point46, i32 0, i32 1, !dbg !1366
  %49 = load i16, i16* %y47, align 2, !dbg !1366
  %conv48 = trunc i16 %49 to i8, !dbg !1364
  %50 = load i8*, i8** %ptr, align 8, !dbg !1367
  %incdec.ptr49 = getelementptr i8, i8* %50, i32 1, !dbg !1367
  store i8* %incdec.ptr49, i8** %ptr, align 8, !dbg !1367
  store i8 %conv48, i8* %50, align 1, !dbg !1368
  %51 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1369
  %white_point50 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %51, i32 0, i32 6, !dbg !1370
  %y51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point50, i32 0, i32 1, !dbg !1371
  %52 = load i16, i16* %y51, align 2, !dbg !1371
  %conv52 = zext i16 %52 to i32, !dbg !1369
  %shr53 = ashr i32 %conv52, 8, !dbg !1372
  %conv54 = trunc i32 %shr53 to i8, !dbg !1369
  %53 = load i8*, i8** %ptr, align 8, !dbg !1373
  %incdec.ptr55 = getelementptr i8, i8* %53, i32 1, !dbg !1373
  store i8* %incdec.ptr55, i8** %ptr, align 8, !dbg !1373
  store i8 %conv54, i8* %53, align 1, !dbg !1374
  %54 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1375
  %max_display_mastering_luminance = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %54, i32 0, i32 7, !dbg !1376
  %55 = load i16, i16* %max_display_mastering_luminance, align 4, !dbg !1376
  %conv56 = trunc i16 %55 to i8, !dbg !1375
  %56 = load i8*, i8** %ptr, align 8, !dbg !1377
  %incdec.ptr57 = getelementptr i8, i8* %56, i32 1, !dbg !1377
  store i8* %incdec.ptr57, i8** %ptr, align 8, !dbg !1377
  store i8 %conv56, i8* %56, align 1, !dbg !1378
  %57 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1379
  %max_display_mastering_luminance58 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %57, i32 0, i32 7, !dbg !1380
  %58 = load i16, i16* %max_display_mastering_luminance58, align 4, !dbg !1380
  %conv59 = zext i16 %58 to i32, !dbg !1379
  %shr60 = ashr i32 %conv59, 8, !dbg !1381
  %conv61 = trunc i32 %shr60 to i8, !dbg !1379
  %59 = load i8*, i8** %ptr, align 8, !dbg !1382
  %incdec.ptr62 = getelementptr i8, i8* %59, i32 1, !dbg !1382
  store i8* %incdec.ptr62, i8** %ptr, align 8, !dbg !1382
  store i8 %conv61, i8* %59, align 1, !dbg !1383
  %60 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1384
  %min_display_mastering_luminance = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %60, i32 0, i32 8, !dbg !1385
  %61 = load i16, i16* %min_display_mastering_luminance, align 2, !dbg !1385
  %conv63 = trunc i16 %61 to i8, !dbg !1384
  %62 = load i8*, i8** %ptr, align 8, !dbg !1386
  %incdec.ptr64 = getelementptr i8, i8* %62, i32 1, !dbg !1386
  store i8* %incdec.ptr64, i8** %ptr, align 8, !dbg !1386
  store i8 %conv63, i8* %62, align 1, !dbg !1387
  %63 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1388
  %min_display_mastering_luminance65 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %63, i32 0, i32 8, !dbg !1389
  %64 = load i16, i16* %min_display_mastering_luminance65, align 2, !dbg !1389
  %conv66 = zext i16 %64 to i32, !dbg !1388
  %shr67 = ashr i32 %conv66, 8, !dbg !1390
  %conv68 = trunc i32 %shr67 to i8, !dbg !1388
  %65 = load i8*, i8** %ptr, align 8, !dbg !1391
  %incdec.ptr69 = getelementptr i8, i8* %65, i32 1, !dbg !1391
  store i8* %incdec.ptr69, i8** %ptr, align 8, !dbg !1391
  store i8 %conv68, i8* %65, align 1, !dbg !1392
  %66 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1393
  %max_cll = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %66, i32 0, i32 9, !dbg !1394
  %67 = load i16, i16* %max_cll, align 4, !dbg !1394
  %conv70 = trunc i16 %67 to i8, !dbg !1393
  %68 = load i8*, i8** %ptr, align 8, !dbg !1395
  %incdec.ptr71 = getelementptr i8, i8* %68, i32 1, !dbg !1395
  store i8* %incdec.ptr71, i8** %ptr, align 8, !dbg !1395
  store i8 %conv70, i8* %68, align 1, !dbg !1396
  %69 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1397
  %max_cll72 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %69, i32 0, i32 9, !dbg !1398
  %70 = load i16, i16* %max_cll72, align 4, !dbg !1398
  %conv73 = zext i16 %70 to i32, !dbg !1397
  %shr74 = ashr i32 %conv73, 8, !dbg !1399
  %conv75 = trunc i32 %shr74 to i8, !dbg !1397
  %71 = load i8*, i8** %ptr, align 8, !dbg !1400
  %incdec.ptr76 = getelementptr i8, i8* %71, i32 1, !dbg !1400
  store i8* %incdec.ptr76, i8** %ptr, align 8, !dbg !1400
  store i8 %conv75, i8* %71, align 1, !dbg !1401
  %72 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1402
  %max_fall = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %72, i32 0, i32 10, !dbg !1403
  %73 = load i16, i16* %max_fall, align 2, !dbg !1403
  %conv77 = trunc i16 %73 to i8, !dbg !1402
  %74 = load i8*, i8** %ptr, align 8, !dbg !1404
  %incdec.ptr78 = getelementptr i8, i8* %74, i32 1, !dbg !1404
  store i8* %incdec.ptr78, i8** %ptr, align 8, !dbg !1404
  store i8 %conv77, i8* %74, align 1, !dbg !1405
  %75 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1406
  %max_fall79 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %75, i32 0, i32 10, !dbg !1407
  %76 = load i16, i16* %max_fall79, align 2, !dbg !1407
  %conv80 = zext i16 %76 to i32, !dbg !1406
  %shr81 = ashr i32 %conv80, 8, !dbg !1408
  %conv82 = trunc i32 %shr81 to i8, !dbg !1406
  %77 = load i8*, i8** %ptr, align 8, !dbg !1409
  %incdec.ptr83 = getelementptr i8, i8* %77, i32 1, !dbg !1409
  store i8* %incdec.ptr83, i8** %ptr, align 8, !dbg !1409
  store i8 %conv82, i8* %77, align 1, !dbg !1410
  %78 = load i8*, i8** %buffer.addr, align 8, !dbg !1411
  %79 = load i64, i64* %length, align 8, !dbg !1412
  call void @hdmi_infoframe_set_checksum(i8* %78, i64 %79) #5, !dbg !1413
  %80 = load i64, i64* %length, align 8, !dbg !1414
  store i64 %80, i64* %retval, align 8, !dbg !1415
  br label %return, !dbg !1415

return:                                           ; preds = %for.end, %if.then
  %81 = load i64, i64* %retval, align 8, !dbg !1416
  ret i64 %81, !dbg !1416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_drm_infoframe_pack(%struct.hdmi_drm_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1417 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !1420, metadata !DIExpression()), !dbg !1421
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1424, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1426, metadata !DIExpression()), !dbg !1427
  %0 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1428
  %call = call i32 @hdmi_drm_infoframe_check(%struct.hdmi_drm_infoframe* %0) #5, !dbg !1429
  store i32 %call, i32* %ret, align 4, !dbg !1430
  %1 = load i32, i32* %ret, align 4, !dbg !1431
  %tobool = icmp ne i32 %1, 0, !dbg !1431
  br i1 %tobool, label %if.then, label %if.end, !dbg !1433

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !1434
  %conv = sext i32 %2 to i64, !dbg !1434
  store i64 %conv, i64* %retval, align 8, !dbg !1435
  br label %return, !dbg !1435

if.end:                                           ; preds = %entry
  %3 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !1436
  %4 = load i8*, i8** %buffer.addr, align 8, !dbg !1437
  %5 = load i64, i64* %size.addr, align 8, !dbg !1438
  %call1 = call i64 @hdmi_drm_infoframe_pack_only(%struct.hdmi_drm_infoframe* %3, i8* %4, i64 %5) #5, !dbg !1439
  store i64 %call1, i64* %retval, align 8, !dbg !1440
  br label %return, !dbg !1440

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !1441
  ret i64 %6, !dbg !1441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_infoframe_check(%union.hdmi_infoframe* %frame) #0 !dbg !1442 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %union.hdmi_infoframe*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %union.hdmi_infoframe* %frame, %union.hdmi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_infoframe** %frame.addr, metadata !1464, metadata !DIExpression()), !dbg !1465
  %0 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1466
  %any = bitcast %union.hdmi_infoframe* %0 to %struct.hdmi_any_infoframe*, !dbg !1467
  %type = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any, i32 0, i32 0, !dbg !1468
  %1 = load i32, i32* %type, align 4, !dbg !1468
  switch i32 %1, label %sw.default [
    i32 130, label %sw.bb
    i32 131, label %sw.bb1
    i32 132, label %sw.bb3
    i32 129, label %sw.bb5
  ], !dbg !1469

sw.bb:                                            ; preds = %entry
  %2 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1470
  %avi = bitcast %union.hdmi_infoframe* %2 to %struct.hdmi_avi_infoframe*, !dbg !1472
  %call = call i32 @hdmi_avi_infoframe_check(%struct.hdmi_avi_infoframe* %avi) #5, !dbg !1473
  store i32 %call, i32* %retval, align 4, !dbg !1474
  br label %return, !dbg !1474

sw.bb1:                                           ; preds = %entry
  %3 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1475
  %spd = bitcast %union.hdmi_infoframe* %3 to %struct.hdmi_spd_infoframe*, !dbg !1476
  %call2 = call i32 @hdmi_spd_infoframe_check(%struct.hdmi_spd_infoframe* %spd) #5, !dbg !1477
  store i32 %call2, i32* %retval, align 4, !dbg !1478
  br label %return, !dbg !1478

sw.bb3:                                           ; preds = %entry
  %4 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1479
  %audio = bitcast %union.hdmi_infoframe* %4 to %struct.hdmi_audio_infoframe*, !dbg !1480
  %call4 = call i32 @hdmi_audio_infoframe_check(%struct.hdmi_audio_infoframe* %audio) #5, !dbg !1481
  store i32 %call4, i32* %retval, align 4, !dbg !1482
  br label %return, !dbg !1482

sw.bb5:                                           ; preds = %entry
  %5 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1483
  %vendor = bitcast %union.hdmi_infoframe* %5 to %union.hdmi_vendor_any_infoframe*, !dbg !1484
  %call6 = call i32 @hdmi_vendor_any_infoframe_check(%union.hdmi_vendor_any_infoframe* %vendor) #5, !dbg !1485
  store i32 %call6, i32* %retval, align 4, !dbg !1486
  br label %return, !dbg !1486

sw.default:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1487, metadata !DIExpression()), !dbg !1489
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !1489
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !1490
  %tobool = icmp ne i32 %6, 0, !dbg !1490
  %lnot = xor i1 %tobool, true, !dbg !1490
  %lnot7 = xor i1 %lnot, true, !dbg !1490
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1490
  %conv = sext i32 %lnot.ext to i64, !dbg !1490
  %tobool8 = icmp ne i64 %conv, 0, !dbg !1490
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1489

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !1490

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1492

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !1494

do.end:                                           ; preds = %do.body9
  %7 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1492
  %any10 = bitcast %union.hdmi_infoframe* %7 to %struct.hdmi_any_infoframe*, !dbg !1492
  %type11 = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any10, i32 0, i32 0, !dbg !1492
  %8 = load i32, i32* %type11, align 4, !dbg !1492
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %8) #5, !dbg !1492
  br label %do.body12, !dbg !1492

do.body12:                                        ; preds = %do.end
  br label %do.body13, !dbg !1496

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1498

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !1496

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 871, i32 2313, i64 12) #6, !dbg !1500, !srcloc !1502
  br label %do.end16, !dbg !1500

do.end16:                                         ; preds = %do.body15
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 155) #6, !dbg !1503, !srcloc !1505
  br label %do.body17, !dbg !1496

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !1506

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !1496

do.end19:                                         ; preds = %do.end18
  br label %do.body20, !dbg !1492

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1508

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !1492

do.end22:                                         ; preds = %do.end21
  br label %if.end, !dbg !1492

if.end:                                           ; preds = %do.end22, %sw.default
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !1489
  %tobool23 = icmp ne i32 %9, 0, !dbg !1489
  %lnot24 = xor i1 %tobool23, true, !dbg !1489
  %lnot26 = xor i1 %lnot24, true, !dbg !1489
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !1489
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !1489
  store i64 %conv28, i64* %tmp, align 8, !dbg !1490
  %10 = load i64, i64* %tmp, align 8, !dbg !1489
  store i32 -22, i32* %retval, align 4, !dbg !1510
  br label %return, !dbg !1510

return:                                           ; preds = %if.end, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %11 = load i32, i32* %retval, align 4, !dbg !1511
  ret i32 %11, !dbg !1511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_vendor_any_infoframe_check(%union.hdmi_vendor_any_infoframe* %frame) #0 !dbg !1512 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %ret = alloca i32, align 4
  store %union.hdmi_vendor_any_infoframe* %frame, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_vendor_any_infoframe** %frame.addr, metadata !1516, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1518, metadata !DIExpression()), !dbg !1519
  %0 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1520
  %call = call i32 @hdmi_vendor_any_infoframe_check_only(%union.hdmi_vendor_any_infoframe* %0) #5, !dbg !1521
  store i32 %call, i32* %ret, align 4, !dbg !1522
  %1 = load i32, i32* %ret, align 4, !dbg !1523
  %tobool = icmp ne i32 %1, 0, !dbg !1523
  br i1 %tobool, label %if.then, label %if.end, !dbg !1525

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !1526
  store i32 %2, i32* %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end:                                           ; preds = %entry
  %3 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1528
  %any = bitcast %union.hdmi_vendor_any_infoframe* %3 to %struct.anon.1*, !dbg !1530
  %oui = getelementptr inbounds %struct.anon.1, %struct.anon.1* %any, i32 0, i32 3, !dbg !1531
  %4 = load i32, i32* %oui, align 4, !dbg !1531
  %cmp = icmp ne i32 %4, 3075, !dbg !1532
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1533

if.then1:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !1534
  br label %return, !dbg !1534

if.end2:                                          ; preds = %if.end
  %5 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1535
  %hdmi = bitcast %union.hdmi_vendor_any_infoframe* %5 to %struct.hdmi_vendor_infoframe*, !dbg !1536
  %call3 = call i32 @hdmi_vendor_infoframe_check(%struct.hdmi_vendor_infoframe* %hdmi) #5, !dbg !1537
  store i32 %call3, i32* %retval, align 4, !dbg !1538
  br label %return, !dbg !1538

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !1539
  ret i32 %6, !dbg !1539
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_infoframe_pack_only(%union.hdmi_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1540 {
entry:
  %frame.addr = alloca %union.hdmi_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %length = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %union.hdmi_infoframe* %frame, %union.hdmi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_infoframe** %frame.addr, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1547, metadata !DIExpression()), !dbg !1548
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1549, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1551, metadata !DIExpression()), !dbg !1552
  %0 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1553
  %any = bitcast %union.hdmi_infoframe* %0 to %struct.hdmi_any_infoframe*, !dbg !1554
  %type = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any, i32 0, i32 0, !dbg !1555
  %1 = load i32, i32* %type, align 4, !dbg !1555
  switch i32 %1, label %sw.default [
    i32 130, label %sw.bb
    i32 135, label %sw.bb1
    i32 131, label %sw.bb3
    i32 132, label %sw.bb5
    i32 129, label %sw.bb7
  ], !dbg !1556

sw.bb:                                            ; preds = %entry
  %2 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1557
  %avi = bitcast %union.hdmi_infoframe* %2 to %struct.hdmi_avi_infoframe*, !dbg !1559
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !1560
  %4 = load i64, i64* %size.addr, align 8, !dbg !1561
  %call = call i64 @hdmi_avi_infoframe_pack_only(%struct.hdmi_avi_infoframe* %avi, i8* %3, i64 %4) #5, !dbg !1562
  store i64 %call, i64* %length, align 8, !dbg !1563
  br label %sw.epilog, !dbg !1564

sw.bb1:                                           ; preds = %entry
  %5 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1565
  %drm = bitcast %union.hdmi_infoframe* %5 to %struct.hdmi_drm_infoframe*, !dbg !1566
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !1567
  %7 = load i64, i64* %size.addr, align 8, !dbg !1568
  %call2 = call i64 @hdmi_drm_infoframe_pack_only(%struct.hdmi_drm_infoframe* %drm, i8* %6, i64 %7) #5, !dbg !1569
  store i64 %call2, i64* %length, align 8, !dbg !1570
  br label %sw.epilog, !dbg !1571

sw.bb3:                                           ; preds = %entry
  %8 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1572
  %spd = bitcast %union.hdmi_infoframe* %8 to %struct.hdmi_spd_infoframe*, !dbg !1573
  %9 = load i8*, i8** %buffer.addr, align 8, !dbg !1574
  %10 = load i64, i64* %size.addr, align 8, !dbg !1575
  %call4 = call i64 @hdmi_spd_infoframe_pack_only(%struct.hdmi_spd_infoframe* %spd, i8* %9, i64 %10) #5, !dbg !1576
  store i64 %call4, i64* %length, align 8, !dbg !1577
  br label %sw.epilog, !dbg !1578

sw.bb5:                                           ; preds = %entry
  %11 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1579
  %audio = bitcast %union.hdmi_infoframe* %11 to %struct.hdmi_audio_infoframe*, !dbg !1580
  %12 = load i8*, i8** %buffer.addr, align 8, !dbg !1581
  %13 = load i64, i64* %size.addr, align 8, !dbg !1582
  %call6 = call i64 @hdmi_audio_infoframe_pack_only(%struct.hdmi_audio_infoframe* %audio, i8* %12, i64 %13) #5, !dbg !1583
  store i64 %call6, i64* %length, align 8, !dbg !1584
  br label %sw.epilog, !dbg !1585

sw.bb7:                                           ; preds = %entry
  %14 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1586
  %vendor = bitcast %union.hdmi_infoframe* %14 to %union.hdmi_vendor_any_infoframe*, !dbg !1587
  %15 = load i8*, i8** %buffer.addr, align 8, !dbg !1588
  %16 = load i64, i64* %size.addr, align 8, !dbg !1589
  %call8 = call i64 @hdmi_vendor_any_infoframe_pack_only(%union.hdmi_vendor_any_infoframe* %vendor, i8* %15, i64 %16) #5, !dbg !1590
  store i64 %call8, i64* %length, align 8, !dbg !1591
  br label %sw.epilog, !dbg !1592

sw.default:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1593, metadata !DIExpression()), !dbg !1595
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !1595
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !1596
  %tobool = icmp ne i32 %17, 0, !dbg !1596
  %lnot = xor i1 %tobool, true, !dbg !1596
  %lnot9 = xor i1 %lnot, true, !dbg !1596
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !1596
  %conv = sext i32 %lnot.ext to i64, !dbg !1596
  %tobool10 = icmp ne i64 %conv, 0, !dbg !1596
  br i1 %tobool10, label %if.then, label %if.end, !dbg !1595

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !1596

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !1598

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !1600

do.end:                                           ; preds = %do.body11
  %18 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1598
  %any12 = bitcast %union.hdmi_infoframe* %18 to %struct.hdmi_any_infoframe*, !dbg !1598
  %type13 = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any12, i32 0, i32 0, !dbg !1598
  %19 = load i32, i32* %type13, align 4, !dbg !1598
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19) #5, !dbg !1598
  br label %do.body14, !dbg !1598

do.body14:                                        ; preds = %do.end
  br label %do.body15, !dbg !1602

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1604

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !1602

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 918, i32 2313, i64 12) #6, !dbg !1606, !srcloc !1608
  br label %do.end18, !dbg !1606

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #6, !dbg !1609, !srcloc !1611
  br label %do.body19, !dbg !1602

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1612

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !1602

do.end21:                                         ; preds = %do.end20
  br label %do.body22, !dbg !1598

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !1614

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !1598

do.end24:                                         ; preds = %do.end23
  br label %if.end, !dbg !1598

if.end:                                           ; preds = %do.end24, %sw.default
  %20 = load i32, i32* %__ret_warn_on, align 4, !dbg !1595
  %tobool25 = icmp ne i32 %20, 0, !dbg !1595
  %lnot26 = xor i1 %tobool25, true, !dbg !1595
  %lnot28 = xor i1 %lnot26, true, !dbg !1595
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !1595
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !1595
  store i64 %conv30, i64* %tmp, align 8, !dbg !1596
  %21 = load i64, i64* %tmp, align 8, !dbg !1595
  store i64 -22, i64* %length, align 8, !dbg !1616
  br label %sw.epilog, !dbg !1617

sw.epilog:                                        ; preds = %if.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %22 = load i64, i64* %length, align 8, !dbg !1618
  ret i64 %22, !dbg !1619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hdmi_vendor_any_infoframe_pack_only(%union.hdmi_vendor_any_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1620 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %union.hdmi_vendor_any_infoframe* %frame, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_vendor_any_infoframe** %frame.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1631, metadata !DIExpression()), !dbg !1632
  %0 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1633
  %call = call i32 @hdmi_vendor_any_infoframe_check_only(%union.hdmi_vendor_any_infoframe* %0) #5, !dbg !1634
  store i32 %call, i32* %ret, align 4, !dbg !1635
  %1 = load i32, i32* %ret, align 4, !dbg !1636
  %tobool = icmp ne i32 %1, 0, !dbg !1636
  br i1 %tobool, label %if.then, label %if.end, !dbg !1638

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !1639
  %conv = sext i32 %2 to i64, !dbg !1639
  store i64 %conv, i64* %retval, align 8, !dbg !1640
  br label %return, !dbg !1640

if.end:                                           ; preds = %entry
  %3 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1641
  %any = bitcast %union.hdmi_vendor_any_infoframe* %3 to %struct.anon.1*, !dbg !1643
  %oui = getelementptr inbounds %struct.anon.1, %struct.anon.1* %any, i32 0, i32 3, !dbg !1644
  %4 = load i32, i32* %oui, align 4, !dbg !1644
  %cmp = icmp ne i32 %4, 3075, !dbg !1645
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1646

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !1647
  br label %return, !dbg !1647

if.end3:                                          ; preds = %if.end
  %5 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1648
  %hdmi = bitcast %union.hdmi_vendor_any_infoframe* %5 to %struct.hdmi_vendor_infoframe*, !dbg !1649
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !1650
  %7 = load i64, i64* %size.addr, align 8, !dbg !1651
  %call4 = call i64 @hdmi_vendor_infoframe_pack_only(%struct.hdmi_vendor_infoframe* %hdmi, i8* %6, i64 %7) #5, !dbg !1652
  store i64 %call4, i64* %retval, align 8, !dbg !1653
  br label %return, !dbg !1653

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i64, i64* %retval, align 8, !dbg !1654
  ret i64 %8, !dbg !1654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hdmi_infoframe_pack(%union.hdmi_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1655 {
entry:
  %frame.addr = alloca %union.hdmi_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %length = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %union.hdmi_infoframe* %frame, %union.hdmi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_infoframe** %frame.addr, metadata !1658, metadata !DIExpression()), !dbg !1659
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1660, metadata !DIExpression()), !dbg !1661
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1662, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1664, metadata !DIExpression()), !dbg !1665
  %0 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1666
  %any = bitcast %union.hdmi_infoframe* %0 to %struct.hdmi_any_infoframe*, !dbg !1667
  %type = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any, i32 0, i32 0, !dbg !1668
  %1 = load i32, i32* %type, align 4, !dbg !1668
  switch i32 %1, label %sw.default [
    i32 130, label %sw.bb
    i32 135, label %sw.bb1
    i32 131, label %sw.bb3
    i32 132, label %sw.bb5
    i32 129, label %sw.bb7
  ], !dbg !1669

sw.bb:                                            ; preds = %entry
  %2 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1670
  %avi = bitcast %union.hdmi_infoframe* %2 to %struct.hdmi_avi_infoframe*, !dbg !1672
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !1673
  %4 = load i64, i64* %size.addr, align 8, !dbg !1674
  %call = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %avi, i8* %3, i64 %4) #5, !dbg !1675
  store i64 %call, i64* %length, align 8, !dbg !1676
  br label %sw.epilog, !dbg !1677

sw.bb1:                                           ; preds = %entry
  %5 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1678
  %drm = bitcast %union.hdmi_infoframe* %5 to %struct.hdmi_drm_infoframe*, !dbg !1679
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !1680
  %7 = load i64, i64* %size.addr, align 8, !dbg !1681
  %call2 = call i64 @hdmi_drm_infoframe_pack(%struct.hdmi_drm_infoframe* %drm, i8* %6, i64 %7) #5, !dbg !1682
  store i64 %call2, i64* %length, align 8, !dbg !1683
  br label %sw.epilog, !dbg !1684

sw.bb3:                                           ; preds = %entry
  %8 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1685
  %spd = bitcast %union.hdmi_infoframe* %8 to %struct.hdmi_spd_infoframe*, !dbg !1686
  %9 = load i8*, i8** %buffer.addr, align 8, !dbg !1687
  %10 = load i64, i64* %size.addr, align 8, !dbg !1688
  %call4 = call i64 @hdmi_spd_infoframe_pack(%struct.hdmi_spd_infoframe* %spd, i8* %9, i64 %10) #5, !dbg !1689
  store i64 %call4, i64* %length, align 8, !dbg !1690
  br label %sw.epilog, !dbg !1691

sw.bb5:                                           ; preds = %entry
  %11 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1692
  %audio = bitcast %union.hdmi_infoframe* %11 to %struct.hdmi_audio_infoframe*, !dbg !1693
  %12 = load i8*, i8** %buffer.addr, align 8, !dbg !1694
  %13 = load i64, i64* %size.addr, align 8, !dbg !1695
  %call6 = call i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %audio, i8* %12, i64 %13) #5, !dbg !1696
  store i64 %call6, i64* %length, align 8, !dbg !1697
  br label %sw.epilog, !dbg !1698

sw.bb7:                                           ; preds = %entry
  %14 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1699
  %vendor = bitcast %union.hdmi_infoframe* %14 to %union.hdmi_vendor_any_infoframe*, !dbg !1700
  %15 = load i8*, i8** %buffer.addr, align 8, !dbg !1701
  %16 = load i64, i64* %size.addr, align 8, !dbg !1702
  %call8 = call i64 @hdmi_vendor_any_infoframe_pack(%union.hdmi_vendor_any_infoframe* %vendor, i8* %15, i64 %16) #5, !dbg !1703
  store i64 %call8, i64* %length, align 8, !dbg !1704
  br label %sw.epilog, !dbg !1705

sw.default:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1706, metadata !DIExpression()), !dbg !1708
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !1708
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !1709
  %tobool = icmp ne i32 %17, 0, !dbg !1709
  %lnot = xor i1 %tobool, true, !dbg !1709
  %lnot9 = xor i1 %lnot, true, !dbg !1709
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !1709
  %conv = sext i32 %lnot.ext to i64, !dbg !1709
  %tobool10 = icmp ne i64 %conv, 0, !dbg !1709
  br i1 %tobool10, label %if.then, label %if.end, !dbg !1708

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !1709

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !1711

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !1713

do.end:                                           ; preds = %do.body11
  %18 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !1711
  %any12 = bitcast %union.hdmi_infoframe* %18 to %struct.hdmi_any_infoframe*, !dbg !1711
  %type13 = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any12, i32 0, i32 0, !dbg !1711
  %19 = load i32, i32* %type13, align 4, !dbg !1711
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19) #5, !dbg !1711
  br label %do.body14, !dbg !1711

do.body14:                                        ; preds = %do.end
  br label %do.body15, !dbg !1715

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1717

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !1715

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 967, i32 2313, i64 12) #6, !dbg !1719, !srcloc !1721
  br label %do.end18, !dbg !1719

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 157) #6, !dbg !1722, !srcloc !1724
  br label %do.body19, !dbg !1715

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1725

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !1715

do.end21:                                         ; preds = %do.end20
  br label %do.body22, !dbg !1711

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !1727

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !1711

do.end24:                                         ; preds = %do.end23
  br label %if.end, !dbg !1711

if.end:                                           ; preds = %do.end24, %sw.default
  %20 = load i32, i32* %__ret_warn_on, align 4, !dbg !1708
  %tobool25 = icmp ne i32 %20, 0, !dbg !1708
  %lnot26 = xor i1 %tobool25, true, !dbg !1708
  %lnot28 = xor i1 %lnot26, true, !dbg !1708
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !1708
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !1708
  store i64 %conv30, i64* %tmp, align 8, !dbg !1709
  %21 = load i64, i64* %tmp, align 8, !dbg !1708
  store i64 -22, i64* %length, align 8, !dbg !1729
  br label %sw.epilog, !dbg !1730

sw.epilog:                                        ; preds = %if.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %22 = load i64, i64* %length, align 8, !dbg !1731
  ret i64 %22, !dbg !1732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hdmi_vendor_any_infoframe_pack(%union.hdmi_vendor_any_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !1733 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %union.hdmi_vendor_any_infoframe* %frame, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_vendor_any_infoframe** %frame.addr, metadata !1736, metadata !DIExpression()), !dbg !1737
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1738, metadata !DIExpression()), !dbg !1739
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1742, metadata !DIExpression()), !dbg !1743
  %0 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1744
  %call = call i32 @hdmi_vendor_any_infoframe_check(%union.hdmi_vendor_any_infoframe* %0) #5, !dbg !1745
  store i32 %call, i32* %ret, align 4, !dbg !1746
  %1 = load i32, i32* %ret, align 4, !dbg !1747
  %tobool = icmp ne i32 %1, 0, !dbg !1747
  br i1 %tobool, label %if.then, label %if.end, !dbg !1749

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !1750
  %conv = sext i32 %2 to i64, !dbg !1750
  store i64 %conv, i64* %retval, align 8, !dbg !1751
  br label %return, !dbg !1751

if.end:                                           ; preds = %entry
  %3 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !1752
  %4 = load i8*, i8** %buffer.addr, align 8, !dbg !1753
  %5 = load i64, i64* %size.addr, align 8, !dbg !1754
  %call1 = call i64 @hdmi_vendor_any_infoframe_pack_only(%union.hdmi_vendor_any_infoframe* %3, i8* %4, i64 %5) #5, !dbg !1755
  store i64 %call1, i64* %retval, align 8, !dbg !1756
  br label %return, !dbg !1756

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !1757
  ret i64 %6, !dbg !1757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hdmi_infoframe_log(i8* %level, %struct.device* %dev, %union.hdmi_infoframe* %frame) #0 !dbg !1758 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %union.hdmi_infoframe*, align 8
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3559, metadata !DIExpression()), !dbg !3560
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3561, metadata !DIExpression()), !dbg !3562
  store %union.hdmi_infoframe* %frame, %union.hdmi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_infoframe** %frame.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  %0 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3565
  %any = bitcast %union.hdmi_infoframe* %0 to %struct.hdmi_any_infoframe*, !dbg !3566
  %type = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %any, i32 0, i32 0, !dbg !3567
  %1 = load i32, i32* %type, align 4, !dbg !3567
  switch i32 %1, label %sw.epilog [
    i32 130, label %sw.bb
    i32 131, label %sw.bb1
    i32 132, label %sw.bb2
    i32 129, label %sw.bb3
    i32 135, label %sw.bb4
  ], !dbg !3568

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %level.addr, align 8, !dbg !3569
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3571
  %4 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3572
  %avi = bitcast %union.hdmi_infoframe* %4 to %struct.hdmi_avi_infoframe*, !dbg !3573
  call void @hdmi_avi_infoframe_log(i8* %2, %struct.device* %3, %struct.hdmi_avi_infoframe* %avi) #5, !dbg !3574
  br label %sw.epilog, !dbg !3575

sw.bb1:                                           ; preds = %entry
  %5 = load i8*, i8** %level.addr, align 8, !dbg !3576
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3577
  %7 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3578
  %spd = bitcast %union.hdmi_infoframe* %7 to %struct.hdmi_spd_infoframe*, !dbg !3579
  call void @hdmi_spd_infoframe_log(i8* %5, %struct.device* %6, %struct.hdmi_spd_infoframe* %spd) #5, !dbg !3580
  br label %sw.epilog, !dbg !3581

sw.bb2:                                           ; preds = %entry
  %8 = load i8*, i8** %level.addr, align 8, !dbg !3582
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3583
  %10 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3584
  %audio = bitcast %union.hdmi_infoframe* %10 to %struct.hdmi_audio_infoframe*, !dbg !3585
  call void @hdmi_audio_infoframe_log(i8* %8, %struct.device* %9, %struct.hdmi_audio_infoframe* %audio) #5, !dbg !3586
  br label %sw.epilog, !dbg !3587

sw.bb3:                                           ; preds = %entry
  %11 = load i8*, i8** %level.addr, align 8, !dbg !3588
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3589
  %13 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3590
  %vendor = bitcast %union.hdmi_infoframe* %13 to %union.hdmi_vendor_any_infoframe*, !dbg !3591
  call void @hdmi_vendor_any_infoframe_log(i8* %11, %struct.device* %12, %union.hdmi_vendor_any_infoframe* %vendor) #5, !dbg !3592
  br label %sw.epilog, !dbg !3593

sw.bb4:                                           ; preds = %entry
  %14 = load i8*, i8** %level.addr, align 8, !dbg !3594
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3595
  %16 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3596
  %drm = bitcast %union.hdmi_infoframe* %16 to %struct.hdmi_drm_infoframe*, !dbg !3597
  call void @hdmi_drm_infoframe_log(i8* %14, %struct.device* %15, %struct.hdmi_drm_infoframe* %drm) #5, !dbg !3598
  br label %sw.epilog, !dbg !3599

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !3600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_avi_infoframe_log(i8* %level, %struct.device* %dev, %struct.hdmi_avi_infoframe* %frame) #0 !dbg !3601 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3604, metadata !DIExpression()), !dbg !3605
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3606, metadata !DIExpression()), !dbg !3607
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !3608, metadata !DIExpression()), !dbg !3609
  %0 = load i8*, i8** %level.addr, align 8, !dbg !3610
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3611
  %2 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3612
  %3 = bitcast %struct.hdmi_avi_infoframe* %2 to %struct.hdmi_any_infoframe*, !dbg !3613
  call void @hdmi_infoframe_log_header(i8* %0, %struct.device* %1, %struct.hdmi_any_infoframe* %3) #5, !dbg !3614
  %4 = load i8*, i8** %level.addr, align 8, !dbg !3615
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3615
  %6 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3615
  %colorspace = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %6, i32 0, i32 3, !dbg !3615
  %7 = load i32, i32* %colorspace, align 4, !dbg !3615
  %call = call i8* @hdmi_colorspace_get_name(i32 %7) #5, !dbg !3615
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %4, %struct.device* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %call) #7, !dbg !3615
  %8 = load i8*, i8** %level.addr, align 8, !dbg !3616
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3616
  %10 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3616
  %scan_mode = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %10, i32 0, i32 4, !dbg !3616
  %11 = load i32, i32* %scan_mode, align 4, !dbg !3616
  %call1 = call i8* @hdmi_scan_mode_get_name(i32 %11) #5, !dbg !3616
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %8, %struct.device* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %call1) #7, !dbg !3616
  %12 = load i8*, i8** %level.addr, align 8, !dbg !3617
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3617
  %14 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3617
  %colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %14, i32 0, i32 5, !dbg !3617
  %15 = load i32, i32* %colorimetry, align 4, !dbg !3617
  %call2 = call i8* @hdmi_colorimetry_get_name(i32 %15) #5, !dbg !3617
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %12, %struct.device* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %call2) #7, !dbg !3617
  %16 = load i8*, i8** %level.addr, align 8, !dbg !3618
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3618
  %18 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3618
  %picture_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %18, i32 0, i32 6, !dbg !3618
  %19 = load i32, i32* %picture_aspect, align 4, !dbg !3618
  %call3 = call i8* @hdmi_picture_aspect_get_name(i32 %19) #5, !dbg !3618
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %16, %struct.device* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %call3) #7, !dbg !3618
  %20 = load i8*, i8** %level.addr, align 8, !dbg !3619
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3619
  %22 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3619
  %active_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %22, i32 0, i32 7, !dbg !3619
  %23 = load i32, i32* %active_aspect, align 4, !dbg !3619
  %call4 = call i8* @hdmi_active_aspect_get_name(i32 %23) #5, !dbg !3619
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %20, %struct.device* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %call4) #7, !dbg !3619
  %24 = load i8*, i8** %level.addr, align 8, !dbg !3620
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3620
  %26 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3620
  %itc = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %26, i32 0, i32 8, !dbg !3620
  %27 = load i8, i8* %itc, align 4, !dbg !3620
  %tobool = trunc i8 %27 to i1, !dbg !3620
  %28 = zext i1 %tobool to i64, !dbg !3620
  %cond = select i1 %tobool, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), !dbg !3620
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %24, %struct.device* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %cond) #7, !dbg !3620
  %29 = load i8*, i8** %level.addr, align 8, !dbg !3621
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3621
  %31 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3621
  %extended_colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %31, i32 0, i32 9, !dbg !3621
  %32 = load i32, i32* %extended_colorimetry, align 4, !dbg !3621
  %call5 = call i8* @hdmi_extended_colorimetry_get_name(i32 %32) #5, !dbg !3621
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %29, %struct.device* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %call5) #7, !dbg !3621
  %33 = load i8*, i8** %level.addr, align 8, !dbg !3622
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3622
  %35 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3622
  %quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %35, i32 0, i32 10, !dbg !3622
  %36 = load i32, i32* %quantization_range, align 4, !dbg !3622
  %call6 = call i8* @hdmi_quantization_range_get_name(i32 %36) #5, !dbg !3622
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %33, %struct.device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %call6) #7, !dbg !3622
  %37 = load i8*, i8** %level.addr, align 8, !dbg !3623
  %38 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3623
  %39 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3623
  %nups = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %39, i32 0, i32 11, !dbg !3623
  %40 = load i32, i32* %nups, align 4, !dbg !3623
  %call7 = call i8* @hdmi_nups_get_name(i32 %40) #5, !dbg !3623
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %37, %struct.device* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %call7) #7, !dbg !3623
  %41 = load i8*, i8** %level.addr, align 8, !dbg !3624
  %42 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3624
  %43 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3624
  %video_code = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %43, i32 0, i32 12, !dbg !3624
  %44 = load i8, i8* %video_code, align 4, !dbg !3624
  %conv = zext i8 %44 to i32, !dbg !3624
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %41, %struct.device* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %conv) #7, !dbg !3624
  %45 = load i8*, i8** %level.addr, align 8, !dbg !3625
  %46 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3625
  %47 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3625
  %ycc_quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %47, i32 0, i32 13, !dbg !3625
  %48 = load i32, i32* %ycc_quantization_range, align 4, !dbg !3625
  %call8 = call i8* @hdmi_ycc_quantization_range_get_name(i32 %48) #5, !dbg !3625
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %45, %struct.device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %call8) #7, !dbg !3625
  %49 = load i8*, i8** %level.addr, align 8, !dbg !3626
  %50 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3626
  %51 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3626
  %content_type = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %51, i32 0, i32 14, !dbg !3626
  %52 = load i32, i32* %content_type, align 4, !dbg !3626
  %call9 = call i8* @hdmi_content_type_get_name(i32 %52) #5, !dbg !3626
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %49, %struct.device* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %call9) #7, !dbg !3626
  %53 = load i8*, i8** %level.addr, align 8, !dbg !3627
  %54 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3627
  %55 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3627
  %pixel_repeat = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %55, i32 0, i32 15, !dbg !3627
  %56 = load i8, i8* %pixel_repeat, align 4, !dbg !3627
  %conv10 = zext i8 %56 to i32, !dbg !3627
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %53, %struct.device* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %conv10) #7, !dbg !3627
  %57 = load i8*, i8** %level.addr, align 8, !dbg !3628
  %58 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3628
  %59 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3628
  %top_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %59, i32 0, i32 16, !dbg !3628
  %60 = load i16, i16* %top_bar, align 2, !dbg !3628
  %conv11 = zext i16 %60 to i32, !dbg !3628
  %61 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3628
  %bottom_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %61, i32 0, i32 17, !dbg !3628
  %62 = load i16, i16* %bottom_bar, align 4, !dbg !3628
  %conv12 = zext i16 %62 to i32, !dbg !3628
  %63 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3628
  %left_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %63, i32 0, i32 18, !dbg !3628
  %64 = load i16, i16* %left_bar, align 2, !dbg !3628
  %conv13 = zext i16 %64 to i32, !dbg !3628
  %65 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !3628
  %right_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %65, i32 0, i32 19, !dbg !3628
  %66 = load i16, i16* %right_bar, align 4, !dbg !3628
  %conv14 = zext i16 %66 to i32, !dbg !3628
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %57, %struct.device* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %conv11, i32 %conv12, i32 %conv13, i32 %conv14) #7, !dbg !3628
  ret void, !dbg !3629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_spd_infoframe_log(i8* %level, %struct.device* %dev, %struct.hdmi_spd_infoframe* %frame) #0 !dbg !3630 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  %buf = alloca [17 x i8], align 16
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3633, metadata !DIExpression()), !dbg !3634
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.declare(metadata [17 x i8]* %buf, metadata !3639, metadata !DIExpression()), !dbg !3643
  %0 = load i8*, i8** %level.addr, align 8, !dbg !3644
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3645
  %2 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !3646
  %3 = bitcast %struct.hdmi_spd_infoframe* %2 to %struct.hdmi_any_infoframe*, !dbg !3647
  call void @hdmi_infoframe_log_header(i8* %0, %struct.device* %1, %struct.hdmi_any_infoframe* %3) #5, !dbg !3648
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %buf, i64 0, i64 0, !dbg !3649
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 17, i1 false), !dbg !3649
  %arraydecay1 = getelementptr inbounds [17 x i8], [17 x i8]* %buf, i64 0, i64 0, !dbg !3650
  %4 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !3651
  %vendor = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %4, i32 0, i32 3, !dbg !3652
  %arraydecay2 = getelementptr inbounds [8 x i8], [8 x i8]* %vendor, i64 0, i64 0, !dbg !3651
  %call = call i8* @strncpy(i8* %arraydecay1, i8* %arraydecay2, i64 8) #5, !dbg !3653
  %5 = load i8*, i8** %level.addr, align 8, !dbg !3654
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3654
  %arraydecay3 = getelementptr inbounds [17 x i8], [17 x i8]* %buf, i64 0, i64 0, !dbg !3654
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %5, %struct.device* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i8* %arraydecay3) #7, !dbg !3654
  %arraydecay4 = getelementptr inbounds [17 x i8], [17 x i8]* %buf, i64 0, i64 0, !dbg !3655
  %7 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !3656
  %product = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %7, i32 0, i32 4, !dbg !3657
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %product, i64 0, i64 0, !dbg !3656
  %call6 = call i8* @strncpy(i8* %arraydecay4, i8* %arraydecay5, i64 16) #5, !dbg !3658
  %8 = load i8*, i8** %level.addr, align 8, !dbg !3659
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3659
  %arraydecay7 = getelementptr inbounds [17 x i8], [17 x i8]* %buf, i64 0, i64 0, !dbg !3659
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %8, %struct.device* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i8* %arraydecay7) #7, !dbg !3659
  %10 = load i8*, i8** %level.addr, align 8, !dbg !3660
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3660
  %12 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !3660
  %sdi = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %12, i32 0, i32 5, !dbg !3660
  %13 = load i32, i32* %sdi, align 4, !dbg !3660
  %call8 = call i8* @hdmi_spd_sdi_get_name(i32 %13) #5, !dbg !3660
  %14 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !3660
  %sdi9 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %14, i32 0, i32 5, !dbg !3660
  %15 = load i32, i32* %sdi9, align 4, !dbg !3660
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %10, %struct.device* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i64 0, i64 0), i8* %call8, i32 %15) #7, !dbg !3660
  ret void, !dbg !3661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_audio_infoframe_log(i8* %level, %struct.device* %dev, %struct.hdmi_audio_infoframe* %frame) #0 !dbg !3662 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3665, metadata !DIExpression()), !dbg !3666
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !3669, metadata !DIExpression()), !dbg !3670
  %0 = load i8*, i8** %level.addr, align 8, !dbg !3671
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3672
  %2 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3673
  %3 = bitcast %struct.hdmi_audio_infoframe* %2 to %struct.hdmi_any_infoframe*, !dbg !3674
  call void @hdmi_infoframe_log_header(i8* %0, %struct.device* %1, %struct.hdmi_any_infoframe* %3) #5, !dbg !3675
  %4 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3676
  %channels = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 3, !dbg !3678
  %5 = load i8, i8* %channels, align 2, !dbg !3678
  %tobool = icmp ne i8 %5, 0, !dbg !3676
  br i1 %tobool, label %if.then, label %if.else, !dbg !3679

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %level.addr, align 8, !dbg !3680
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3680
  %8 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3680
  %channels1 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %8, i32 0, i32 3, !dbg !3680
  %9 = load i8, i8* %channels1, align 2, !dbg !3680
  %conv = zext i8 %9 to i32, !dbg !3680
  %sub = sub i32 %conv, 1, !dbg !3680
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %6, %struct.device* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i64 0, i64 0), i32 %sub) #7, !dbg !3680
  br label %if.end, !dbg !3680

if.else:                                          ; preds = %entry
  %10 = load i8*, i8** %level.addr, align 8, !dbg !3681
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3681
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %10, %struct.device* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0)) #7, !dbg !3681
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i8*, i8** %level.addr, align 8, !dbg !3682
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3682
  %14 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3682
  %coding_type = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %14, i32 0, i32 4, !dbg !3682
  %15 = load i32, i32* %coding_type, align 4, !dbg !3682
  %call = call i8* @hdmi_audio_coding_type_get_name(i32 %15) #5, !dbg !3682
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %12, %struct.device* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i64 0, i64 0), i8* %call) #7, !dbg !3682
  %16 = load i8*, i8** %level.addr, align 8, !dbg !3683
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3683
  %18 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3683
  %sample_size = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %18, i32 0, i32 5, !dbg !3683
  %19 = load i32, i32* %sample_size, align 4, !dbg !3683
  %call2 = call i8* @hdmi_audio_sample_size_get_name(i32 %19) #5, !dbg !3683
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %16, %struct.device* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i64 0, i64 0), i8* %call2) #7, !dbg !3683
  %20 = load i8*, i8** %level.addr, align 8, !dbg !3684
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3684
  %22 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3684
  %sample_frequency = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %22, i32 0, i32 6, !dbg !3684
  %23 = load i32, i32* %sample_frequency, align 4, !dbg !3684
  %call3 = call i8* @hdmi_audio_sample_frequency_get_name(i32 %23) #5, !dbg !3684
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %20, %struct.device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.89, i64 0, i64 0), i8* %call3) #7, !dbg !3684
  %24 = load i8*, i8** %level.addr, align 8, !dbg !3685
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3685
  %26 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3685
  %coding_type_ext = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %26, i32 0, i32 7, !dbg !3685
  %27 = load i32, i32* %coding_type_ext, align 4, !dbg !3685
  %call4 = call i8* @hdmi_audio_coding_type_ext_get_name(i32 %27) #5, !dbg !3685
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %24, %struct.device* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i8* %call4) #7, !dbg !3685
  %28 = load i8*, i8** %level.addr, align 8, !dbg !3686
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3686
  %30 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3686
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %30, i32 0, i32 8, !dbg !3686
  %31 = load i8, i8* %channel_allocation, align 4, !dbg !3686
  %conv5 = zext i8 %31 to i32, !dbg !3686
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %28, %struct.device* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), i32 %conv5) #7, !dbg !3686
  %32 = load i8*, i8** %level.addr, align 8, !dbg !3687
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3687
  %34 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3687
  %level_shift_value = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %34, i32 0, i32 9, !dbg !3687
  %35 = load i8, i8* %level_shift_value, align 1, !dbg !3687
  %conv6 = zext i8 %35 to i32, !dbg !3687
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %32, %struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.92, i64 0, i64 0), i32 %conv6) #7, !dbg !3687
  %36 = load i8*, i8** %level.addr, align 8, !dbg !3688
  %37 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3688
  %38 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !3688
  %downmix_inhibit = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %38, i32 0, i32 10, !dbg !3688
  %39 = load i8, i8* %downmix_inhibit, align 2, !dbg !3688
  %tobool7 = trunc i8 %39 to i1, !dbg !3688
  %40 = zext i1 %tobool7 to i64, !dbg !3688
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), !dbg !3688
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %36, %struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i64 0, i64 0), i8* %cond) #7, !dbg !3688
  ret void, !dbg !3689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_vendor_any_infoframe_log(i8* %level, %struct.device* %dev, %union.hdmi_vendor_any_infoframe* %frame) #0 !dbg !3690 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %hvf = alloca %struct.hdmi_vendor_infoframe*, align 8
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3693, metadata !DIExpression()), !dbg !3694
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  store %union.hdmi_vendor_any_infoframe* %frame, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_vendor_any_infoframe** %frame.addr, metadata !3697, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %hvf, metadata !3699, metadata !DIExpression()), !dbg !3700
  %0 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !3701
  %hdmi = bitcast %union.hdmi_vendor_any_infoframe* %0 to %struct.hdmi_vendor_infoframe*, !dbg !3702
  store %struct.hdmi_vendor_infoframe* %hdmi, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3700
  %1 = load i8*, i8** %level.addr, align 8, !dbg !3703
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3704
  %3 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !3705
  %4 = bitcast %union.hdmi_vendor_any_infoframe* %3 to %struct.hdmi_any_infoframe*, !dbg !3706
  call void @hdmi_infoframe_log_header(i8* %1, %struct.device* %2, %struct.hdmi_any_infoframe* %4) #5, !dbg !3707
  %5 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !3708
  %any = bitcast %union.hdmi_vendor_any_infoframe* %5 to %struct.anon.1*, !dbg !3710
  %oui = getelementptr inbounds %struct.anon.1, %struct.anon.1* %any, i32 0, i32 3, !dbg !3711
  %6 = load i32, i32* %oui, align 4, !dbg !3711
  %cmp = icmp ne i32 %6, 3075, !dbg !3712
  br i1 %cmp, label %if.then, label %if.end, !dbg !3713

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %level.addr, align 8, !dbg !3714
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3714
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %7, %struct.device* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.132, i64 0, i64 0)) #7, !dbg !3714
  br label %if.end22, !dbg !3716

if.end:                                           ; preds = %entry
  %9 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3717
  %vic = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %9, i32 0, i32 4, !dbg !3719
  %10 = load i8, i8* %vic, align 4, !dbg !3719
  %conv = zext i8 %10 to i32, !dbg !3717
  %cmp1 = icmp eq i32 %conv, 0, !dbg !3720
  br i1 %cmp1, label %land.lhs.true, label %if.end6, !dbg !3721

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3722
  %s3d_struct = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %11, i32 0, i32 5, !dbg !3723
  %12 = load i32, i32* %s3d_struct, align 4, !dbg !3723
  %cmp3 = icmp eq i32 %12, -1, !dbg !3724
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !3725

if.then5:                                         ; preds = %land.lhs.true
  %13 = load i8*, i8** %level.addr, align 8, !dbg !3726
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3726
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %13, %struct.device* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.133, i64 0, i64 0)) #7, !dbg !3726
  br label %if.end22, !dbg !3728

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %15 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3729
  %vic7 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %15, i32 0, i32 4, !dbg !3731
  %16 = load i8, i8* %vic7, align 4, !dbg !3731
  %tobool = icmp ne i8 %16, 0, !dbg !3729
  br i1 %tobool, label %if.then8, label %if.end11, !dbg !3732

if.then8:                                         ; preds = %if.end6
  %17 = load i8*, i8** %level.addr, align 8, !dbg !3733
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3733
  %19 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3733
  %vic9 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %19, i32 0, i32 4, !dbg !3733
  %20 = load i8, i8* %vic9, align 4, !dbg !3733
  %conv10 = zext i8 %20 to i32, !dbg !3733
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %17, %struct.device* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i64 0, i64 0), i32 %conv10) #7, !dbg !3733
  br label %if.end11, !dbg !3733

if.end11:                                         ; preds = %if.then8, %if.end6
  %21 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3734
  %s3d_struct12 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %21, i32 0, i32 5, !dbg !3736
  %22 = load i32, i32* %s3d_struct12, align 4, !dbg !3736
  %cmp13 = icmp ne i32 %22, -1, !dbg !3737
  br i1 %cmp13, label %if.then15, label %if.end22, !dbg !3738

if.then15:                                        ; preds = %if.end11
  %23 = load i8*, i8** %level.addr, align 8, !dbg !3739
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3739
  %25 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3739
  %s3d_struct16 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %25, i32 0, i32 5, !dbg !3739
  %26 = load i32, i32* %s3d_struct16, align 4, !dbg !3739
  %call = call i8* @hdmi_3d_structure_get_name(i32 %26) #5, !dbg !3739
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %23, %struct.device* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.135, i64 0, i64 0), i8* %call) #7, !dbg !3739
  %27 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3741
  %s3d_struct17 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %27, i32 0, i32 5, !dbg !3743
  %28 = load i32, i32* %s3d_struct17, align 4, !dbg !3743
  %cmp18 = icmp sge i32 %28, 8, !dbg !3744
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3745

if.then20:                                        ; preds = %if.then15
  %29 = load i8*, i8** %level.addr, align 8, !dbg !3746
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3746
  %31 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !3746
  %s3d_ext_data = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %31, i32 0, i32 6, !dbg !3746
  %32 = load i32, i32* %s3d_ext_data, align 4, !dbg !3746
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %29, %struct.device* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.136, i64 0, i64 0), i32 %32) #7, !dbg !3746
  br label %if.end21, !dbg !3746

if.end21:                                         ; preds = %if.then20, %if.then15
  br label %if.end22, !dbg !3747

if.end22:                                         ; preds = %if.then, %if.then5, %if.end21, %if.end11
  ret void, !dbg !3748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_drm_infoframe_log(i8* %level, %struct.device* %dev, %struct.hdmi_drm_infoframe* %frame) #0 !dbg !3749 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  %i = alloca i32, align 4
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3754, metadata !DIExpression()), !dbg !3755
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !3756, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3758, metadata !DIExpression()), !dbg !3759
  %0 = load i8*, i8** %level.addr, align 8, !dbg !3760
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3761
  %2 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3762
  %3 = bitcast %struct.hdmi_drm_infoframe* %2 to %struct.hdmi_any_infoframe*, !dbg !3763
  call void @hdmi_infoframe_log_header(i8* %0, %struct.device* %1, %struct.hdmi_any_infoframe* %3) #5, !dbg !3764
  %4 = load i8*, i8** %level.addr, align 8, !dbg !3765
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3765
  %6 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3765
  %length = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %6, i32 0, i32 2, !dbg !3765
  %7 = load i8, i8* %length, align 1, !dbg !3765
  %conv = zext i8 %7 to i32, !dbg !3765
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %4, %struct.device* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0), i32 %conv) #7, !dbg !3765
  %8 = load i8*, i8** %level.addr, align 8, !dbg !3766
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3766
  %10 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3766
  %metadata_type = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %10, i32 0, i32 4, !dbg !3766
  %11 = load i32, i32* %metadata_type, align 4, !dbg !3766
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %8, %struct.device* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i64 0, i64 0), i32 %11) #7, !dbg !3766
  %12 = load i8*, i8** %level.addr, align 8, !dbg !3767
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3767
  %14 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3767
  %eotf = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %14, i32 0, i32 3, !dbg !3767
  %15 = load i32, i32* %eotf, align 4, !dbg !3767
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %12, %struct.device* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i64 0, i64 0), i32 %15) #7, !dbg !3767
  store i32 0, i32* %i, align 4, !dbg !3768
  br label %for.cond, !dbg !3770

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4, !dbg !3771
  %cmp = icmp slt i32 %16, 3, !dbg !3773
  br i1 %cmp, label %for.body, label %for.end, !dbg !3774

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %level.addr, align 8, !dbg !3775
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3775
  %19 = load i32, i32* %i, align 4, !dbg !3775
  %20 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3775
  %display_primaries = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %20, i32 0, i32 5, !dbg !3775
  %21 = load i32, i32* %i, align 4, !dbg !3775
  %idxprom = sext i32 %21 to i64, !dbg !3775
  %arrayidx = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries, i64 0, i64 %idxprom, !dbg !3775
  %x = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0, !dbg !3775
  %22 = load i16, i16* %x, align 4, !dbg !3775
  %conv2 = zext i16 %22 to i32, !dbg !3775
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %17, %struct.device* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i64 0, i64 0), i32 %19, i32 %conv2) #7, !dbg !3775
  %23 = load i8*, i8** %level.addr, align 8, !dbg !3777
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3777
  %25 = load i32, i32* %i, align 4, !dbg !3777
  %26 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3777
  %display_primaries3 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %26, i32 0, i32 5, !dbg !3777
  %27 = load i32, i32* %i, align 4, !dbg !3777
  %idxprom4 = sext i32 %27 to i64, !dbg !3777
  %arrayidx5 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries3, i64 0, i64 %idxprom4, !dbg !3777
  %y = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 1, !dbg !3777
  %28 = load i16, i16* %y, align 2, !dbg !3777
  %conv6 = zext i16 %28 to i32, !dbg !3777
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %23, %struct.device* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i64 0, i64 0), i32 %25, i32 %conv6) #7, !dbg !3777
  br label %for.inc, !dbg !3778

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !3779
  %inc = add i32 %29, 1, !dbg !3779
  store i32 %inc, i32* %i, align 4, !dbg !3779
  br label %for.cond, !dbg !3780, !llvm.loop !3781

for.end:                                          ; preds = %for.cond
  %30 = load i8*, i8** %level.addr, align 8, !dbg !3783
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3783
  %32 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3783
  %white_point = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %32, i32 0, i32 6, !dbg !3783
  %x7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point, i32 0, i32 0, !dbg !3783
  %33 = load i16, i16* %x7, align 4, !dbg !3783
  %conv8 = zext i16 %33 to i32, !dbg !3783
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %30, %struct.device* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.150, i64 0, i64 0), i32 %conv8) #7, !dbg !3783
  %34 = load i8*, i8** %level.addr, align 8, !dbg !3784
  %35 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3784
  %36 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3784
  %white_point9 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %36, i32 0, i32 6, !dbg !3784
  %y10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point9, i32 0, i32 1, !dbg !3784
  %37 = load i16, i16* %y10, align 2, !dbg !3784
  %conv11 = zext i16 %37 to i32, !dbg !3784
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %34, %struct.device* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.151, i64 0, i64 0), i32 %conv11) #7, !dbg !3784
  %38 = load i8*, i8** %level.addr, align 8, !dbg !3785
  %39 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3785
  %40 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3785
  %max_display_mastering_luminance = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %40, i32 0, i32 7, !dbg !3785
  %41 = load i16, i16* %max_display_mastering_luminance, align 4, !dbg !3785
  %conv12 = zext i16 %41 to i32, !dbg !3785
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %38, %struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.152, i64 0, i64 0), i32 %conv12) #7, !dbg !3785
  %42 = load i8*, i8** %level.addr, align 8, !dbg !3786
  %43 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3786
  %44 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3786
  %min_display_mastering_luminance = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %44, i32 0, i32 8, !dbg !3786
  %45 = load i16, i16* %min_display_mastering_luminance, align 2, !dbg !3786
  %conv13 = zext i16 %45 to i32, !dbg !3786
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %42, %struct.device* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.153, i64 0, i64 0), i32 %conv13) #7, !dbg !3786
  %46 = load i8*, i8** %level.addr, align 8, !dbg !3787
  %47 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3787
  %48 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3787
  %max_cll = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %48, i32 0, i32 9, !dbg !3787
  %49 = load i16, i16* %max_cll, align 4, !dbg !3787
  %conv14 = zext i16 %49 to i32, !dbg !3787
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %46, %struct.device* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i64 0, i64 0), i32 %conv14) #7, !dbg !3787
  %50 = load i8*, i8** %level.addr, align 8, !dbg !3788
  %51 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3788
  %52 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3788
  %max_fall = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %52, i32 0, i32 10, !dbg !3788
  %53 = load i16, i16* %max_fall, align 2, !dbg !3788
  %conv15 = zext i16 %53 to i32, !dbg !3788
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %50, %struct.device* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i64 0, i64 0), i32 %conv15) #7, !dbg !3788
  ret void, !dbg !3789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_drm_infoframe_unpack_only(%struct.hdmi_drm_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !3790 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %x_lsb = alloca i8, align 1
  %x_msb = alloca i8, align 1
  %y_lsb = alloca i8, align 1
  %y_msb = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3795, metadata !DIExpression()), !dbg !3796
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !3799, metadata !DIExpression()), !dbg !3802
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !3803
  store i8* %0, i8** %ptr, align 8, !dbg !3802
  call void @llvm.dbg.declare(metadata i8** %temp, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.declare(metadata i8* %x_lsb, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.declare(metadata i8* %x_msb, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.declare(metadata i8* %y_lsb, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.declare(metadata i8* %y_msb, metadata !3812, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3816, metadata !DIExpression()), !dbg !3817
  %1 = load i64, i64* %size.addr, align 8, !dbg !3818
  %cmp = icmp ult i64 %1, 26, !dbg !3820
  br i1 %cmp, label %if.then, label %if.end, !dbg !3821

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3822
  br label %return, !dbg !3822

if.end:                                           ; preds = %entry
  %2 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3823
  %call = call i32 @hdmi_drm_infoframe_init(%struct.hdmi_drm_infoframe* %2) #5, !dbg !3824
  store i32 %call, i32* %ret, align 4, !dbg !3825
  %3 = load i32, i32* %ret, align 4, !dbg !3826
  %tobool = icmp ne i32 %3, 0, !dbg !3826
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3828

if.then1:                                         ; preds = %if.end
  %4 = load i32, i32* %ret, align 4, !dbg !3829
  store i32 %4, i32* %retval, align 4, !dbg !3830
  br label %return, !dbg !3830

if.end2:                                          ; preds = %if.end
  %5 = load i8*, i8** %ptr, align 8, !dbg !3831
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !3831
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3831
  %conv = zext i8 %6 to i32, !dbg !3831
  %and = and i32 %conv, 7, !dbg !3832
  %7 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3833
  %eotf = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %7, i32 0, i32 3, !dbg !3834
  store i32 %and, i32* %eotf, align 4, !dbg !3835
  %8 = load i8*, i8** %ptr, align 8, !dbg !3836
  %arrayidx3 = getelementptr i8, i8* %8, i64 1, !dbg !3836
  %9 = load i8, i8* %arrayidx3, align 1, !dbg !3836
  %conv4 = zext i8 %9 to i32, !dbg !3836
  %and5 = and i32 %conv4, 7, !dbg !3837
  %10 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3838
  %metadata_type = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %10, i32 0, i32 4, !dbg !3839
  store i32 %and5, i32* %metadata_type, align 4, !dbg !3840
  %11 = load i8*, i8** %ptr, align 8, !dbg !3841
  %add.ptr = getelementptr i8, i8* %11, i64 2, !dbg !3842
  store i8* %add.ptr, i8** %temp, align 8, !dbg !3843
  store i32 0, i32* %i, align 4, !dbg !3844
  br label %for.cond, !dbg !3846

for.cond:                                         ; preds = %for.inc, %if.end2
  %12 = load i32, i32* %i, align 4, !dbg !3847
  %cmp6 = icmp slt i32 %12, 3, !dbg !3849
  br i1 %cmp6, label %for.body, label %for.end, !dbg !3850

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %temp, align 8, !dbg !3851
  %incdec.ptr = getelementptr i8, i8* %13, i32 1, !dbg !3851
  store i8* %incdec.ptr, i8** %temp, align 8, !dbg !3851
  %14 = load i8, i8* %13, align 1, !dbg !3853
  store i8 %14, i8* %x_lsb, align 1, !dbg !3854
  %15 = load i8*, i8** %temp, align 8, !dbg !3855
  %incdec.ptr8 = getelementptr i8, i8* %15, i32 1, !dbg !3855
  store i8* %incdec.ptr8, i8** %temp, align 8, !dbg !3855
  %16 = load i8, i8* %15, align 1, !dbg !3856
  store i8 %16, i8* %x_msb, align 1, !dbg !3857
  %17 = load i8, i8* %x_msb, align 1, !dbg !3858
  %conv9 = zext i8 %17 to i32, !dbg !3858
  %shl = shl i32 %conv9, 8, !dbg !3859
  %18 = load i8, i8* %x_lsb, align 1, !dbg !3860
  %conv10 = zext i8 %18 to i32, !dbg !3860
  %or = or i32 %shl, %conv10, !dbg !3861
  %conv11 = trunc i32 %or to i16, !dbg !3862
  %19 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3863
  %display_primaries = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %19, i32 0, i32 5, !dbg !3864
  %20 = load i32, i32* %i, align 4, !dbg !3865
  %idxprom = sext i32 %20 to i64, !dbg !3863
  %arrayidx12 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries, i64 0, i64 %idxprom, !dbg !3863
  %x = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx12, i32 0, i32 0, !dbg !3866
  store i16 %conv11, i16* %x, align 4, !dbg !3867
  %21 = load i8*, i8** %temp, align 8, !dbg !3868
  %incdec.ptr13 = getelementptr i8, i8* %21, i32 1, !dbg !3868
  store i8* %incdec.ptr13, i8** %temp, align 8, !dbg !3868
  %22 = load i8, i8* %21, align 1, !dbg !3869
  store i8 %22, i8* %y_lsb, align 1, !dbg !3870
  %23 = load i8*, i8** %temp, align 8, !dbg !3871
  %incdec.ptr14 = getelementptr i8, i8* %23, i32 1, !dbg !3871
  store i8* %incdec.ptr14, i8** %temp, align 8, !dbg !3871
  %24 = load i8, i8* %23, align 1, !dbg !3872
  store i8 %24, i8* %y_msb, align 1, !dbg !3873
  %25 = load i8, i8* %y_msb, align 1, !dbg !3874
  %conv15 = zext i8 %25 to i32, !dbg !3874
  %shl16 = shl i32 %conv15, 8, !dbg !3875
  %26 = load i8, i8* %y_lsb, align 1, !dbg !3876
  %conv17 = zext i8 %26 to i32, !dbg !3876
  %or18 = or i32 %shl16, %conv17, !dbg !3877
  %conv19 = trunc i32 %or18 to i16, !dbg !3878
  %27 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3879
  %display_primaries20 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %27, i32 0, i32 5, !dbg !3880
  %28 = load i32, i32* %i, align 4, !dbg !3881
  %idxprom21 = sext i32 %28 to i64, !dbg !3879
  %arrayidx22 = getelementptr [3 x %struct.anon], [3 x %struct.anon]* %display_primaries20, i64 0, i64 %idxprom21, !dbg !3879
  %y = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx22, i32 0, i32 1, !dbg !3882
  store i16 %conv19, i16* %y, align 2, !dbg !3883
  br label %for.inc, !dbg !3884

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !3885
  %inc = add i32 %29, 1, !dbg !3885
  store i32 %inc, i32* %i, align 4, !dbg !3885
  br label %for.cond, !dbg !3886, !llvm.loop !3887

for.end:                                          ; preds = %for.cond
  %30 = load i8*, i8** %ptr, align 8, !dbg !3889
  %arrayidx23 = getelementptr i8, i8* %30, i64 15, !dbg !3889
  %31 = load i8, i8* %arrayidx23, align 1, !dbg !3889
  %conv24 = zext i8 %31 to i32, !dbg !3889
  %shl25 = shl i32 %conv24, 8, !dbg !3890
  %32 = load i8*, i8** %ptr, align 8, !dbg !3891
  %arrayidx26 = getelementptr i8, i8* %32, i64 14, !dbg !3891
  %33 = load i8, i8* %arrayidx26, align 1, !dbg !3891
  %conv27 = zext i8 %33 to i32, !dbg !3891
  %or28 = or i32 %shl25, %conv27, !dbg !3892
  %conv29 = trunc i32 %or28 to i16, !dbg !3893
  %34 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3894
  %white_point = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %34, i32 0, i32 6, !dbg !3895
  %x30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point, i32 0, i32 0, !dbg !3896
  store i16 %conv29, i16* %x30, align 4, !dbg !3897
  %35 = load i8*, i8** %ptr, align 8, !dbg !3898
  %arrayidx31 = getelementptr i8, i8* %35, i64 17, !dbg !3898
  %36 = load i8, i8* %arrayidx31, align 1, !dbg !3898
  %conv32 = zext i8 %36 to i32, !dbg !3898
  %shl33 = shl i32 %conv32, 8, !dbg !3899
  %37 = load i8*, i8** %ptr, align 8, !dbg !3900
  %arrayidx34 = getelementptr i8, i8* %37, i64 16, !dbg !3900
  %38 = load i8, i8* %arrayidx34, align 1, !dbg !3900
  %conv35 = zext i8 %38 to i32, !dbg !3900
  %or36 = or i32 %shl33, %conv35, !dbg !3901
  %conv37 = trunc i32 %or36 to i16, !dbg !3902
  %39 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3903
  %white_point38 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %39, i32 0, i32 6, !dbg !3904
  %y39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %white_point38, i32 0, i32 1, !dbg !3905
  store i16 %conv37, i16* %y39, align 2, !dbg !3906
  %40 = load i8*, i8** %ptr, align 8, !dbg !3907
  %arrayidx40 = getelementptr i8, i8* %40, i64 19, !dbg !3907
  %41 = load i8, i8* %arrayidx40, align 1, !dbg !3907
  %conv41 = zext i8 %41 to i32, !dbg !3907
  %shl42 = shl i32 %conv41, 8, !dbg !3908
  %42 = load i8*, i8** %ptr, align 8, !dbg !3909
  %arrayidx43 = getelementptr i8, i8* %42, i64 18, !dbg !3909
  %43 = load i8, i8* %arrayidx43, align 1, !dbg !3909
  %conv44 = zext i8 %43 to i32, !dbg !3909
  %or45 = or i32 %shl42, %conv44, !dbg !3910
  %conv46 = trunc i32 %or45 to i16, !dbg !3911
  %44 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3912
  %max_display_mastering_luminance = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %44, i32 0, i32 7, !dbg !3913
  store i16 %conv46, i16* %max_display_mastering_luminance, align 4, !dbg !3914
  %45 = load i8*, i8** %ptr, align 8, !dbg !3915
  %arrayidx47 = getelementptr i8, i8* %45, i64 21, !dbg !3915
  %46 = load i8, i8* %arrayidx47, align 1, !dbg !3915
  %conv48 = zext i8 %46 to i32, !dbg !3915
  %shl49 = shl i32 %conv48, 8, !dbg !3916
  %47 = load i8*, i8** %ptr, align 8, !dbg !3917
  %arrayidx50 = getelementptr i8, i8* %47, i64 20, !dbg !3917
  %48 = load i8, i8* %arrayidx50, align 1, !dbg !3917
  %conv51 = zext i8 %48 to i32, !dbg !3917
  %or52 = or i32 %shl49, %conv51, !dbg !3918
  %conv53 = trunc i32 %or52 to i16, !dbg !3919
  %49 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3920
  %min_display_mastering_luminance = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %49, i32 0, i32 8, !dbg !3921
  store i16 %conv53, i16* %min_display_mastering_luminance, align 2, !dbg !3922
  %50 = load i8*, i8** %ptr, align 8, !dbg !3923
  %arrayidx54 = getelementptr i8, i8* %50, i64 23, !dbg !3923
  %51 = load i8, i8* %arrayidx54, align 1, !dbg !3923
  %conv55 = zext i8 %51 to i32, !dbg !3923
  %shl56 = shl i32 %conv55, 8, !dbg !3924
  %52 = load i8*, i8** %ptr, align 8, !dbg !3925
  %arrayidx57 = getelementptr i8, i8* %52, i64 22, !dbg !3925
  %53 = load i8, i8* %arrayidx57, align 1, !dbg !3925
  %conv58 = zext i8 %53 to i32, !dbg !3925
  %or59 = or i32 %shl56, %conv58, !dbg !3926
  %conv60 = trunc i32 %or59 to i16, !dbg !3927
  %54 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3928
  %max_cll = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %54, i32 0, i32 9, !dbg !3929
  store i16 %conv60, i16* %max_cll, align 4, !dbg !3930
  %55 = load i8*, i8** %ptr, align 8, !dbg !3931
  %arrayidx61 = getelementptr i8, i8* %55, i64 25, !dbg !3931
  %56 = load i8, i8* %arrayidx61, align 1, !dbg !3931
  %conv62 = zext i8 %56 to i32, !dbg !3931
  %shl63 = shl i32 %conv62, 8, !dbg !3932
  %57 = load i8*, i8** %ptr, align 8, !dbg !3933
  %arrayidx64 = getelementptr i8, i8* %57, i64 24, !dbg !3933
  %58 = load i8, i8* %arrayidx64, align 1, !dbg !3933
  %conv65 = zext i8 %58 to i32, !dbg !3933
  %or66 = or i32 %shl63, %conv65, !dbg !3934
  %conv67 = trunc i32 %or66 to i16, !dbg !3935
  %59 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !3936
  %max_fall = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %59, i32 0, i32 10, !dbg !3937
  store i16 %conv67, i16* %max_fall, align 2, !dbg !3938
  store i32 0, i32* %retval, align 4, !dbg !3939
  br label %return, !dbg !3939

return:                                           ; preds = %for.end, %if.then1, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !3940
  ret i32 %60, !dbg !3940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !3941 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %union.hdmi_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %union.hdmi_infoframe* %frame, %union.hdmi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_infoframe** %frame.addr, metadata !3944, metadata !DIExpression()), !dbg !3945
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !3946, metadata !DIExpression()), !dbg !3947
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3948, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3950, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !3952, metadata !DIExpression()), !dbg !3953
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !3954
  store i8* %0, i8** %ptr, align 8, !dbg !3953
  %1 = load i64, i64* %size.addr, align 8, !dbg !3955
  %cmp = icmp ult i64 %1, 4, !dbg !3957
  br i1 %cmp, label %if.then, label %if.end, !dbg !3958

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3959
  br label %return, !dbg !3959

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8, !dbg !3960
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !3960
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3960
  %conv = zext i8 %3 to i32, !dbg !3960
  switch i32 %conv, label %sw.default [
    i32 130, label %sw.bb
    i32 135, label %sw.bb1
    i32 131, label %sw.bb3
    i32 132, label %sw.bb5
    i32 129, label %sw.bb7
  ], !dbg !3961

sw.bb:                                            ; preds = %if.end
  %4 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3962
  %avi = bitcast %union.hdmi_infoframe* %4 to %struct.hdmi_avi_infoframe*, !dbg !3964
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !3965
  %6 = load i64, i64* %size.addr, align 8, !dbg !3966
  %call = call i32 @hdmi_avi_infoframe_unpack(%struct.hdmi_avi_infoframe* %avi, i8* %5, i64 %6) #5, !dbg !3967
  store i32 %call, i32* %ret, align 4, !dbg !3968
  br label %sw.epilog, !dbg !3969

sw.bb1:                                           ; preds = %if.end
  %7 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3970
  %drm = bitcast %union.hdmi_infoframe* %7 to %struct.hdmi_drm_infoframe*, !dbg !3971
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !3972
  %9 = load i64, i64* %size.addr, align 8, !dbg !3973
  %call2 = call i32 @hdmi_drm_infoframe_unpack(%struct.hdmi_drm_infoframe* %drm, i8* %8, i64 %9) #5, !dbg !3974
  store i32 %call2, i32* %ret, align 4, !dbg !3975
  br label %sw.epilog, !dbg !3976

sw.bb3:                                           ; preds = %if.end
  %10 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3977
  %spd = bitcast %union.hdmi_infoframe* %10 to %struct.hdmi_spd_infoframe*, !dbg !3978
  %11 = load i8*, i8** %buffer.addr, align 8, !dbg !3979
  %12 = load i64, i64* %size.addr, align 8, !dbg !3980
  %call4 = call i32 @hdmi_spd_infoframe_unpack(%struct.hdmi_spd_infoframe* %spd, i8* %11, i64 %12) #5, !dbg !3981
  store i32 %call4, i32* %ret, align 4, !dbg !3982
  br label %sw.epilog, !dbg !3983

sw.bb5:                                           ; preds = %if.end
  %13 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3984
  %audio = bitcast %union.hdmi_infoframe* %13 to %struct.hdmi_audio_infoframe*, !dbg !3985
  %14 = load i8*, i8** %buffer.addr, align 8, !dbg !3986
  %15 = load i64, i64* %size.addr, align 8, !dbg !3987
  %call6 = call i32 @hdmi_audio_infoframe_unpack(%struct.hdmi_audio_infoframe* %audio, i8* %14, i64 %15) #5, !dbg !3988
  store i32 %call6, i32* %ret, align 4, !dbg !3989
  br label %sw.epilog, !dbg !3990

sw.bb7:                                           ; preds = %if.end
  %16 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %frame.addr, align 8, !dbg !3991
  %vendor = bitcast %union.hdmi_infoframe* %16 to %union.hdmi_vendor_any_infoframe*, !dbg !3992
  %17 = load i8*, i8** %buffer.addr, align 8, !dbg !3993
  %18 = load i64, i64* %size.addr, align 8, !dbg !3994
  %call8 = call i32 @hdmi_vendor_any_infoframe_unpack(%union.hdmi_vendor_any_infoframe* %vendor, i8* %17, i64 %18) #5, !dbg !3995
  store i32 %call8, i32* %ret, align 4, !dbg !3996
  br label %sw.epilog, !dbg !3997

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !3998
  br label %sw.epilog, !dbg !3999

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %19 = load i32, i32* %ret, align 4, !dbg !4000
  store i32 %19, i32* %retval, align 4, !dbg !4001
  br label %return, !dbg !4001

return:                                           ; preds = %sw.epilog, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4002
  ret i32 %20, !dbg !4002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_avi_infoframe_unpack(%struct.hdmi_avi_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !4003 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store %struct.hdmi_avi_infoframe* %frame, %struct.hdmi_avi_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %frame.addr, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4008, metadata !DIExpression()), !dbg !4009
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !4012, metadata !DIExpression()), !dbg !4013
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !4014
  store i8* %0, i8** %ptr, align 8, !dbg !4013
  %1 = load i64, i64* %size.addr, align 8, !dbg !4015
  %cmp = icmp ult i64 %1, 17, !dbg !4017
  br i1 %cmp, label %if.then, label %if.end, !dbg !4018

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4019
  br label %return, !dbg !4019

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8, !dbg !4020
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !4020
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4020
  %conv = zext i8 %3 to i32, !dbg !4020
  %cmp1 = icmp ne i32 %conv, 130, !dbg !4022
  br i1 %cmp1, label %if.then12, label %lor.lhs.false, !dbg !4023

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %ptr, align 8, !dbg !4024
  %arrayidx3 = getelementptr i8, i8* %4, i64 1, !dbg !4024
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !4024
  %conv4 = zext i8 %5 to i32, !dbg !4024
  %cmp5 = icmp ne i32 %conv4, 2, !dbg !4025
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !4026

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %ptr, align 8, !dbg !4027
  %arrayidx8 = getelementptr i8, i8* %6, i64 2, !dbg !4027
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !4027
  %conv9 = zext i8 %7 to i32, !dbg !4027
  %cmp10 = icmp ne i32 %conv9, 13, !dbg !4028
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4029

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4030
  br label %return, !dbg !4030

if.end13:                                         ; preds = %lor.lhs.false7
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !4031
  %call = call zeroext i8 @hdmi_infoframe_checksum(i8* %8, i64 17) #5, !dbg !4033
  %conv14 = zext i8 %call to i32, !dbg !4033
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !4034
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4035

if.then17:                                        ; preds = %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !4036
  br label %return, !dbg !4036

if.end18:                                         ; preds = %if.end13
  %9 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4037
  call void @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe* %9) #5, !dbg !4038
  %10 = load i8*, i8** %ptr, align 8, !dbg !4039
  %add.ptr = getelementptr i8, i8* %10, i64 4, !dbg !4039
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !4039
  %11 = load i8*, i8** %ptr, align 8, !dbg !4040
  %arrayidx19 = getelementptr i8, i8* %11, i64 0, !dbg !4040
  %12 = load i8, i8* %arrayidx19, align 1, !dbg !4040
  %conv20 = zext i8 %12 to i32, !dbg !4040
  %shr = ashr i32 %conv20, 5, !dbg !4041
  %and = and i32 %shr, 3, !dbg !4042
  %13 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4043
  %colorspace = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %13, i32 0, i32 3, !dbg !4044
  store i32 %and, i32* %colorspace, align 4, !dbg !4045
  %14 = load i8*, i8** %ptr, align 8, !dbg !4046
  %arrayidx21 = getelementptr i8, i8* %14, i64 0, !dbg !4046
  %15 = load i8, i8* %arrayidx21, align 1, !dbg !4046
  %conv22 = zext i8 %15 to i32, !dbg !4046
  %and23 = and i32 %conv22, 16, !dbg !4048
  %tobool = icmp ne i32 %and23, 0, !dbg !4048
  br i1 %tobool, label %if.then24, label %if.end28, !dbg !4049

if.then24:                                        ; preds = %if.end18
  %16 = load i8*, i8** %ptr, align 8, !dbg !4050
  %arrayidx25 = getelementptr i8, i8* %16, i64 1, !dbg !4050
  %17 = load i8, i8* %arrayidx25, align 1, !dbg !4050
  %conv26 = zext i8 %17 to i32, !dbg !4050
  %and27 = and i32 %conv26, 15, !dbg !4051
  %18 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4052
  %active_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %18, i32 0, i32 7, !dbg !4053
  store i32 %and27, i32* %active_aspect, align 4, !dbg !4054
  br label %if.end28, !dbg !4052

if.end28:                                         ; preds = %if.then24, %if.end18
  %19 = load i8*, i8** %ptr, align 8, !dbg !4055
  %arrayidx29 = getelementptr i8, i8* %19, i64 0, !dbg !4055
  %20 = load i8, i8* %arrayidx29, align 1, !dbg !4055
  %conv30 = zext i8 %20 to i32, !dbg !4055
  %and31 = and i32 %conv30, 8, !dbg !4057
  %tobool32 = icmp ne i32 %and31, 0, !dbg !4057
  br i1 %tobool32, label %if.then33, label %if.end46, !dbg !4058

if.then33:                                        ; preds = %if.end28
  %21 = load i8*, i8** %ptr, align 8, !dbg !4059
  %arrayidx34 = getelementptr i8, i8* %21, i64 6, !dbg !4059
  %22 = load i8, i8* %arrayidx34, align 1, !dbg !4059
  %conv35 = zext i8 %22 to i32, !dbg !4059
  %shl = shl i32 %conv35, 8, !dbg !4061
  %23 = load i8*, i8** %ptr, align 8, !dbg !4062
  %arrayidx36 = getelementptr i8, i8* %23, i64 5, !dbg !4062
  %24 = load i8, i8* %arrayidx36, align 1, !dbg !4062
  %conv37 = zext i8 %24 to i32, !dbg !4062
  %or = or i32 %shl, %conv37, !dbg !4063
  %conv38 = trunc i32 %or to i16, !dbg !4064
  %25 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4065
  %top_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %25, i32 0, i32 16, !dbg !4066
  store i16 %conv38, i16* %top_bar, align 2, !dbg !4067
  %26 = load i8*, i8** %ptr, align 8, !dbg !4068
  %arrayidx39 = getelementptr i8, i8* %26, i64 8, !dbg !4068
  %27 = load i8, i8* %arrayidx39, align 1, !dbg !4068
  %conv40 = zext i8 %27 to i32, !dbg !4068
  %shl41 = shl i32 %conv40, 8, !dbg !4069
  %28 = load i8*, i8** %ptr, align 8, !dbg !4070
  %arrayidx42 = getelementptr i8, i8* %28, i64 7, !dbg !4070
  %29 = load i8, i8* %arrayidx42, align 1, !dbg !4070
  %conv43 = zext i8 %29 to i32, !dbg !4070
  %or44 = or i32 %shl41, %conv43, !dbg !4071
  %conv45 = trunc i32 %or44 to i16, !dbg !4072
  %30 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4073
  %bottom_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %30, i32 0, i32 17, !dbg !4074
  store i16 %conv45, i16* %bottom_bar, align 4, !dbg !4075
  br label %if.end46, !dbg !4076

if.end46:                                         ; preds = %if.then33, %if.end28
  %31 = load i8*, i8** %ptr, align 8, !dbg !4077
  %arrayidx47 = getelementptr i8, i8* %31, i64 0, !dbg !4077
  %32 = load i8, i8* %arrayidx47, align 1, !dbg !4077
  %conv48 = zext i8 %32 to i32, !dbg !4077
  %and49 = and i32 %conv48, 4, !dbg !4079
  %tobool50 = icmp ne i32 %and49, 0, !dbg !4079
  br i1 %tobool50, label %if.then51, label %if.end66, !dbg !4080

if.then51:                                        ; preds = %if.end46
  %33 = load i8*, i8** %ptr, align 8, !dbg !4081
  %arrayidx52 = getelementptr i8, i8* %33, i64 10, !dbg !4081
  %34 = load i8, i8* %arrayidx52, align 1, !dbg !4081
  %conv53 = zext i8 %34 to i32, !dbg !4081
  %shl54 = shl i32 %conv53, 8, !dbg !4083
  %35 = load i8*, i8** %ptr, align 8, !dbg !4084
  %arrayidx55 = getelementptr i8, i8* %35, i64 9, !dbg !4084
  %36 = load i8, i8* %arrayidx55, align 1, !dbg !4084
  %conv56 = zext i8 %36 to i32, !dbg !4084
  %or57 = or i32 %shl54, %conv56, !dbg !4085
  %conv58 = trunc i32 %or57 to i16, !dbg !4086
  %37 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4087
  %left_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %37, i32 0, i32 18, !dbg !4088
  store i16 %conv58, i16* %left_bar, align 2, !dbg !4089
  %38 = load i8*, i8** %ptr, align 8, !dbg !4090
  %arrayidx59 = getelementptr i8, i8* %38, i64 12, !dbg !4090
  %39 = load i8, i8* %arrayidx59, align 1, !dbg !4090
  %conv60 = zext i8 %39 to i32, !dbg !4090
  %shl61 = shl i32 %conv60, 8, !dbg !4091
  %40 = load i8*, i8** %ptr, align 8, !dbg !4092
  %arrayidx62 = getelementptr i8, i8* %40, i64 11, !dbg !4092
  %41 = load i8, i8* %arrayidx62, align 1, !dbg !4092
  %conv63 = zext i8 %41 to i32, !dbg !4092
  %or64 = or i32 %shl61, %conv63, !dbg !4093
  %conv65 = trunc i32 %or64 to i16, !dbg !4094
  %42 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4095
  %right_bar = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %42, i32 0, i32 19, !dbg !4096
  store i16 %conv65, i16* %right_bar, align 4, !dbg !4097
  br label %if.end66, !dbg !4098

if.end66:                                         ; preds = %if.then51, %if.end46
  %43 = load i8*, i8** %ptr, align 8, !dbg !4099
  %arrayidx67 = getelementptr i8, i8* %43, i64 0, !dbg !4099
  %44 = load i8, i8* %arrayidx67, align 1, !dbg !4099
  %conv68 = zext i8 %44 to i32, !dbg !4099
  %and69 = and i32 %conv68, 3, !dbg !4100
  %45 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4101
  %scan_mode = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %45, i32 0, i32 4, !dbg !4102
  store i32 %and69, i32* %scan_mode, align 4, !dbg !4103
  %46 = load i8*, i8** %ptr, align 8, !dbg !4104
  %arrayidx70 = getelementptr i8, i8* %46, i64 1, !dbg !4104
  %47 = load i8, i8* %arrayidx70, align 1, !dbg !4104
  %conv71 = zext i8 %47 to i32, !dbg !4104
  %shr72 = ashr i32 %conv71, 6, !dbg !4105
  %and73 = and i32 %shr72, 3, !dbg !4106
  %48 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4107
  %colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %48, i32 0, i32 5, !dbg !4108
  store i32 %and73, i32* %colorimetry, align 4, !dbg !4109
  %49 = load i8*, i8** %ptr, align 8, !dbg !4110
  %arrayidx74 = getelementptr i8, i8* %49, i64 1, !dbg !4110
  %50 = load i8, i8* %arrayidx74, align 1, !dbg !4110
  %conv75 = zext i8 %50 to i32, !dbg !4110
  %shr76 = ashr i32 %conv75, 4, !dbg !4111
  %and77 = and i32 %shr76, 3, !dbg !4112
  %51 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4113
  %picture_aspect = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %51, i32 0, i32 6, !dbg !4114
  store i32 %and77, i32* %picture_aspect, align 4, !dbg !4115
  %52 = load i8*, i8** %ptr, align 8, !dbg !4116
  %arrayidx78 = getelementptr i8, i8* %52, i64 1, !dbg !4116
  %53 = load i8, i8* %arrayidx78, align 1, !dbg !4116
  %conv79 = zext i8 %53 to i32, !dbg !4116
  %and80 = and i32 %conv79, 15, !dbg !4117
  %54 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4118
  %active_aspect81 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %54, i32 0, i32 7, !dbg !4119
  store i32 %and80, i32* %active_aspect81, align 4, !dbg !4120
  %55 = load i8*, i8** %ptr, align 8, !dbg !4121
  %arrayidx82 = getelementptr i8, i8* %55, i64 2, !dbg !4121
  %56 = load i8, i8* %arrayidx82, align 1, !dbg !4121
  %conv83 = zext i8 %56 to i32, !dbg !4121
  %and84 = and i32 %conv83, 128, !dbg !4122
  %tobool85 = icmp ne i32 %and84, 0, !dbg !4121
  %57 = zext i1 %tobool85 to i64, !dbg !4121
  %cond = select i1 %tobool85, i32 1, i32 0, !dbg !4121
  %tobool86 = icmp ne i32 %cond, 0, !dbg !4121
  %58 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4123
  %itc = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %58, i32 0, i32 8, !dbg !4124
  %frombool = zext i1 %tobool86 to i8, !dbg !4125
  store i8 %frombool, i8* %itc, align 4, !dbg !4125
  %59 = load i8*, i8** %ptr, align 8, !dbg !4126
  %arrayidx87 = getelementptr i8, i8* %59, i64 2, !dbg !4126
  %60 = load i8, i8* %arrayidx87, align 1, !dbg !4126
  %conv88 = zext i8 %60 to i32, !dbg !4126
  %shr89 = ashr i32 %conv88, 4, !dbg !4127
  %and90 = and i32 %shr89, 7, !dbg !4128
  %61 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4129
  %extended_colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %61, i32 0, i32 9, !dbg !4130
  store i32 %and90, i32* %extended_colorimetry, align 4, !dbg !4131
  %62 = load i8*, i8** %ptr, align 8, !dbg !4132
  %arrayidx91 = getelementptr i8, i8* %62, i64 2, !dbg !4132
  %63 = load i8, i8* %arrayidx91, align 1, !dbg !4132
  %conv92 = zext i8 %63 to i32, !dbg !4132
  %shr93 = ashr i32 %conv92, 2, !dbg !4133
  %and94 = and i32 %shr93, 3, !dbg !4134
  %64 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4135
  %quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %64, i32 0, i32 10, !dbg !4136
  store i32 %and94, i32* %quantization_range, align 4, !dbg !4137
  %65 = load i8*, i8** %ptr, align 8, !dbg !4138
  %arrayidx95 = getelementptr i8, i8* %65, i64 2, !dbg !4138
  %66 = load i8, i8* %arrayidx95, align 1, !dbg !4138
  %conv96 = zext i8 %66 to i32, !dbg !4138
  %and97 = and i32 %conv96, 3, !dbg !4139
  %67 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4140
  %nups = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %67, i32 0, i32 11, !dbg !4141
  store i32 %and97, i32* %nups, align 4, !dbg !4142
  %68 = load i8*, i8** %ptr, align 8, !dbg !4143
  %arrayidx98 = getelementptr i8, i8* %68, i64 3, !dbg !4143
  %69 = load i8, i8* %arrayidx98, align 1, !dbg !4143
  %conv99 = zext i8 %69 to i32, !dbg !4143
  %and100 = and i32 %conv99, 127, !dbg !4144
  %conv101 = trunc i32 %and100 to i8, !dbg !4143
  %70 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4145
  %video_code = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %70, i32 0, i32 12, !dbg !4146
  store i8 %conv101, i8* %video_code, align 4, !dbg !4147
  %71 = load i8*, i8** %ptr, align 8, !dbg !4148
  %arrayidx102 = getelementptr i8, i8* %71, i64 4, !dbg !4148
  %72 = load i8, i8* %arrayidx102, align 1, !dbg !4148
  %conv103 = zext i8 %72 to i32, !dbg !4148
  %shr104 = ashr i32 %conv103, 6, !dbg !4149
  %and105 = and i32 %shr104, 3, !dbg !4150
  %73 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4151
  %ycc_quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %73, i32 0, i32 13, !dbg !4152
  store i32 %and105, i32* %ycc_quantization_range, align 4, !dbg !4153
  %74 = load i8*, i8** %ptr, align 8, !dbg !4154
  %arrayidx106 = getelementptr i8, i8* %74, i64 4, !dbg !4154
  %75 = load i8, i8* %arrayidx106, align 1, !dbg !4154
  %conv107 = zext i8 %75 to i32, !dbg !4154
  %shr108 = ashr i32 %conv107, 4, !dbg !4155
  %and109 = and i32 %shr108, 3, !dbg !4156
  %76 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4157
  %content_type = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %76, i32 0, i32 14, !dbg !4158
  store i32 %and109, i32* %content_type, align 4, !dbg !4159
  %77 = load i8*, i8** %ptr, align 8, !dbg !4160
  %arrayidx110 = getelementptr i8, i8* %77, i64 4, !dbg !4160
  %78 = load i8, i8* %arrayidx110, align 1, !dbg !4160
  %conv111 = zext i8 %78 to i32, !dbg !4160
  %and112 = and i32 %conv111, 15, !dbg !4161
  %conv113 = trunc i32 %and112 to i8, !dbg !4160
  %79 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %frame.addr, align 8, !dbg !4162
  %pixel_repeat = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %79, i32 0, i32 15, !dbg !4163
  store i8 %conv113, i8* %pixel_repeat, align 4, !dbg !4164
  store i32 0, i32* %retval, align 4, !dbg !4165
  br label %return, !dbg !4165

return:                                           ; preds = %if.end66, %if.then17, %if.then12, %if.then
  %80 = load i32, i32* %retval, align 4, !dbg !4166
  ret i32 %80, !dbg !4166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_drm_infoframe_unpack(%struct.hdmi_drm_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !4167 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_drm_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %frame, %struct.hdmi_drm_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_drm_infoframe** %frame.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !4174, metadata !DIExpression()), !dbg !4175
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !4176
  store i8* %0, i8** %ptr, align 8, !dbg !4175
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4177, metadata !DIExpression()), !dbg !4178
  %1 = load i64, i64* %size.addr, align 8, !dbg !4179
  %cmp = icmp ult i64 %1, 30, !dbg !4181
  br i1 %cmp, label %if.then, label %if.end, !dbg !4182

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4183
  br label %return, !dbg !4183

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8, !dbg !4184
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !4184
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4184
  %conv = zext i8 %3 to i32, !dbg !4184
  %cmp1 = icmp ne i32 %conv, 135, !dbg !4186
  br i1 %cmp1, label %if.then12, label %lor.lhs.false, !dbg !4187

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %ptr, align 8, !dbg !4188
  %arrayidx3 = getelementptr i8, i8* %4, i64 1, !dbg !4188
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !4188
  %conv4 = zext i8 %5 to i32, !dbg !4188
  %cmp5 = icmp ne i32 %conv4, 1, !dbg !4189
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !4190

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %ptr, align 8, !dbg !4191
  %arrayidx8 = getelementptr i8, i8* %6, i64 2, !dbg !4191
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !4191
  %conv9 = zext i8 %7 to i32, !dbg !4191
  %cmp10 = icmp ne i32 %conv9, 26, !dbg !4192
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4193

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4194
  br label %return, !dbg !4194

if.end13:                                         ; preds = %lor.lhs.false7
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !4195
  %call = call zeroext i8 @hdmi_infoframe_checksum(i8* %8, i64 30) #5, !dbg !4197
  %conv14 = zext i8 %call to i32, !dbg !4197
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !4198
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4199

if.then17:                                        ; preds = %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !4200
  br label %return, !dbg !4200

if.end18:                                         ; preds = %if.end13
  %9 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %frame.addr, align 8, !dbg !4201
  %10 = load i8*, i8** %ptr, align 8, !dbg !4202
  %add.ptr = getelementptr i8, i8* %10, i64 4, !dbg !4203
  %11 = load i64, i64* %size.addr, align 8, !dbg !4204
  %sub = sub i64 %11, 4, !dbg !4205
  %call19 = call i32 @hdmi_drm_infoframe_unpack_only(%struct.hdmi_drm_infoframe* %9, i8* %add.ptr, i64 %sub) #5, !dbg !4206
  store i32 %call19, i32* %ret, align 4, !dbg !4207
  %12 = load i32, i32* %ret, align 4, !dbg !4208
  store i32 %12, i32* %retval, align 4, !dbg !4209
  br label %return, !dbg !4209

return:                                           ; preds = %if.end18, %if.then17, %if.then12, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4210
  ret i32 %13, !dbg !4210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_spd_infoframe_unpack(%struct.hdmi_spd_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !4211 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_spd_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_spd_infoframe* %frame, %struct.hdmi_spd_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_spd_infoframe** %frame.addr, metadata !4214, metadata !DIExpression()), !dbg !4215
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !4220, metadata !DIExpression()), !dbg !4221
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !4222
  store i8* %0, i8** %ptr, align 8, !dbg !4221
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4223, metadata !DIExpression()), !dbg !4224
  %1 = load i64, i64* %size.addr, align 8, !dbg !4225
  %cmp = icmp ult i64 %1, 29, !dbg !4227
  br i1 %cmp, label %if.then, label %if.end, !dbg !4228

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4229
  br label %return, !dbg !4229

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8, !dbg !4230
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !4230
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4230
  %conv = zext i8 %3 to i32, !dbg !4230
  %cmp1 = icmp ne i32 %conv, 131, !dbg !4232
  br i1 %cmp1, label %if.then12, label %lor.lhs.false, !dbg !4233

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %ptr, align 8, !dbg !4234
  %arrayidx3 = getelementptr i8, i8* %4, i64 1, !dbg !4234
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !4234
  %conv4 = zext i8 %5 to i32, !dbg !4234
  %cmp5 = icmp ne i32 %conv4, 1, !dbg !4235
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !4236

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %ptr, align 8, !dbg !4237
  %arrayidx8 = getelementptr i8, i8* %6, i64 2, !dbg !4237
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !4237
  %conv9 = zext i8 %7 to i32, !dbg !4237
  %cmp10 = icmp ne i32 %conv9, 25, !dbg !4238
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4239

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4240
  br label %return, !dbg !4240

if.end13:                                         ; preds = %lor.lhs.false7
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !4242
  %call = call zeroext i8 @hdmi_infoframe_checksum(i8* %8, i64 29) #5, !dbg !4244
  %conv14 = zext i8 %call to i32, !dbg !4244
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !4245
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4246

if.then17:                                        ; preds = %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !4247
  br label %return, !dbg !4247

if.end18:                                         ; preds = %if.end13
  %9 = load i8*, i8** %ptr, align 8, !dbg !4248
  %add.ptr = getelementptr i8, i8* %9, i64 4, !dbg !4248
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !4248
  %10 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !4249
  %11 = load i8*, i8** %ptr, align 8, !dbg !4250
  %12 = load i8*, i8** %ptr, align 8, !dbg !4251
  %add.ptr19 = getelementptr i8, i8* %12, i64 8, !dbg !4252
  %call20 = call i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %10, i8* %11, i8* %add.ptr19) #5, !dbg !4253
  store i32 %call20, i32* %ret, align 4, !dbg !4254
  %13 = load i32, i32* %ret, align 4, !dbg !4255
  %tobool = icmp ne i32 %13, 0, !dbg !4255
  br i1 %tobool, label %if.then21, label %if.end22, !dbg !4257

if.then21:                                        ; preds = %if.end18
  %14 = load i32, i32* %ret, align 4, !dbg !4258
  store i32 %14, i32* %retval, align 4, !dbg !4259
  br label %return, !dbg !4259

if.end22:                                         ; preds = %if.end18
  %15 = load i8*, i8** %ptr, align 8, !dbg !4260
  %arrayidx23 = getelementptr i8, i8* %15, i64 24, !dbg !4260
  %16 = load i8, i8* %arrayidx23, align 1, !dbg !4260
  %conv24 = zext i8 %16 to i32, !dbg !4260
  %17 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %frame.addr, align 8, !dbg !4261
  %sdi = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %17, i32 0, i32 5, !dbg !4262
  store i32 %conv24, i32* %sdi, align 4, !dbg !4263
  store i32 0, i32* %retval, align 4, !dbg !4264
  br label %return, !dbg !4264

return:                                           ; preds = %if.end22, %if.then21, %if.then17, %if.then12, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4265
  ret i32 %18, !dbg !4265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_audio_infoframe_unpack(%struct.hdmi_audio_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !4266 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct.hdmi_audio_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %frame, %struct.hdmi_audio_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_audio_infoframe** %frame.addr, metadata !4269, metadata !DIExpression()), !dbg !4270
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !4275, metadata !DIExpression()), !dbg !4276
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !4277
  store i8* %0, i8** %ptr, align 8, !dbg !4276
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4278, metadata !DIExpression()), !dbg !4279
  %1 = load i64, i64* %size.addr, align 8, !dbg !4280
  %cmp = icmp ult i64 %1, 14, !dbg !4282
  br i1 %cmp, label %if.then, label %if.end, !dbg !4283

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4284
  br label %return, !dbg !4284

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ptr, align 8, !dbg !4285
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !4285
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4285
  %conv = zext i8 %3 to i32, !dbg !4285
  %cmp1 = icmp ne i32 %conv, 132, !dbg !4287
  br i1 %cmp1, label %if.then12, label %lor.lhs.false, !dbg !4288

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %ptr, align 8, !dbg !4289
  %arrayidx3 = getelementptr i8, i8* %4, i64 1, !dbg !4289
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !4289
  %conv4 = zext i8 %5 to i32, !dbg !4289
  %cmp5 = icmp ne i32 %conv4, 1, !dbg !4290
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !4291

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load i8*, i8** %ptr, align 8, !dbg !4292
  %arrayidx8 = getelementptr i8, i8* %6, i64 2, !dbg !4292
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !4292
  %conv9 = zext i8 %7 to i32, !dbg !4292
  %cmp10 = icmp ne i32 %conv9, 10, !dbg !4293
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4294

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4295
  br label %return, !dbg !4295

if.end13:                                         ; preds = %lor.lhs.false7
  %8 = load i8*, i8** %buffer.addr, align 8, !dbg !4297
  %call = call zeroext i8 @hdmi_infoframe_checksum(i8* %8, i64 14) #5, !dbg !4299
  %conv14 = zext i8 %call to i32, !dbg !4299
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !4300
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4301

if.then17:                                        ; preds = %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !4302
  br label %return, !dbg !4302

if.end18:                                         ; preds = %if.end13
  %9 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4303
  %call19 = call i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %9) #5, !dbg !4304
  store i32 %call19, i32* %ret, align 4, !dbg !4305
  %10 = load i32, i32* %ret, align 4, !dbg !4306
  %tobool = icmp ne i32 %10, 0, !dbg !4306
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !4308

if.then20:                                        ; preds = %if.end18
  %11 = load i32, i32* %ret, align 4, !dbg !4309
  store i32 %11, i32* %retval, align 4, !dbg !4310
  br label %return, !dbg !4310

if.end21:                                         ; preds = %if.end18
  %12 = load i8*, i8** %ptr, align 8, !dbg !4311
  %add.ptr = getelementptr i8, i8* %12, i64 4, !dbg !4311
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !4311
  %13 = load i8*, i8** %ptr, align 8, !dbg !4312
  %arrayidx22 = getelementptr i8, i8* %13, i64 0, !dbg !4312
  %14 = load i8, i8* %arrayidx22, align 1, !dbg !4312
  %conv23 = zext i8 %14 to i32, !dbg !4312
  %and = and i32 %conv23, 7, !dbg !4313
  %conv24 = trunc i32 %and to i8, !dbg !4312
  %15 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4314
  %channels = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %15, i32 0, i32 3, !dbg !4315
  store i8 %conv24, i8* %channels, align 2, !dbg !4316
  %16 = load i8*, i8** %ptr, align 8, !dbg !4317
  %arrayidx25 = getelementptr i8, i8* %16, i64 0, !dbg !4317
  %17 = load i8, i8* %arrayidx25, align 1, !dbg !4317
  %conv26 = zext i8 %17 to i32, !dbg !4317
  %shr = ashr i32 %conv26, 4, !dbg !4318
  %and27 = and i32 %shr, 15, !dbg !4319
  %18 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4320
  %coding_type = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %18, i32 0, i32 4, !dbg !4321
  store i32 %and27, i32* %coding_type, align 4, !dbg !4322
  %19 = load i8*, i8** %ptr, align 8, !dbg !4323
  %arrayidx28 = getelementptr i8, i8* %19, i64 1, !dbg !4323
  %20 = load i8, i8* %arrayidx28, align 1, !dbg !4323
  %conv29 = zext i8 %20 to i32, !dbg !4323
  %and30 = and i32 %conv29, 3, !dbg !4324
  %21 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4325
  %sample_size = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %21, i32 0, i32 5, !dbg !4326
  store i32 %and30, i32* %sample_size, align 4, !dbg !4327
  %22 = load i8*, i8** %ptr, align 8, !dbg !4328
  %arrayidx31 = getelementptr i8, i8* %22, i64 1, !dbg !4328
  %23 = load i8, i8* %arrayidx31, align 1, !dbg !4328
  %conv32 = zext i8 %23 to i32, !dbg !4328
  %shr33 = ashr i32 %conv32, 2, !dbg !4329
  %and34 = and i32 %shr33, 7, !dbg !4330
  %24 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4331
  %sample_frequency = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %24, i32 0, i32 6, !dbg !4332
  store i32 %and34, i32* %sample_frequency, align 4, !dbg !4333
  %25 = load i8*, i8** %ptr, align 8, !dbg !4334
  %arrayidx35 = getelementptr i8, i8* %25, i64 2, !dbg !4334
  %26 = load i8, i8* %arrayidx35, align 1, !dbg !4334
  %conv36 = zext i8 %26 to i32, !dbg !4334
  %and37 = and i32 %conv36, 31, !dbg !4335
  %27 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4336
  %coding_type_ext = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %27, i32 0, i32 7, !dbg !4337
  store i32 %and37, i32* %coding_type_ext, align 4, !dbg !4338
  %28 = load i8*, i8** %ptr, align 8, !dbg !4339
  %arrayidx38 = getelementptr i8, i8* %28, i64 3, !dbg !4339
  %29 = load i8, i8* %arrayidx38, align 1, !dbg !4339
  %30 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4340
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %30, i32 0, i32 8, !dbg !4341
  store i8 %29, i8* %channel_allocation, align 4, !dbg !4342
  %31 = load i8*, i8** %ptr, align 8, !dbg !4343
  %arrayidx39 = getelementptr i8, i8* %31, i64 4, !dbg !4343
  %32 = load i8, i8* %arrayidx39, align 1, !dbg !4343
  %conv40 = zext i8 %32 to i32, !dbg !4343
  %shr41 = ashr i32 %conv40, 3, !dbg !4344
  %and42 = and i32 %shr41, 15, !dbg !4345
  %conv43 = trunc i32 %and42 to i8, !dbg !4346
  %33 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4347
  %level_shift_value = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %33, i32 0, i32 9, !dbg !4348
  store i8 %conv43, i8* %level_shift_value, align 1, !dbg !4349
  %34 = load i8*, i8** %ptr, align 8, !dbg !4350
  %arrayidx44 = getelementptr i8, i8* %34, i64 4, !dbg !4350
  %35 = load i8, i8* %arrayidx44, align 1, !dbg !4350
  %conv45 = zext i8 %35 to i32, !dbg !4350
  %and46 = and i32 %conv45, 128, !dbg !4351
  %tobool47 = icmp ne i32 %and46, 0, !dbg !4350
  %36 = zext i1 %tobool47 to i64, !dbg !4350
  %cond = select i1 %tobool47, i32 1, i32 0, !dbg !4350
  %tobool48 = icmp ne i32 %cond, 0, !dbg !4350
  %37 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %frame.addr, align 8, !dbg !4352
  %downmix_inhibit = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %37, i32 0, i32 10, !dbg !4353
  %frombool = zext i1 %tobool48 to i8, !dbg !4354
  store i8 %frombool, i8* %downmix_inhibit, align 2, !dbg !4354
  store i32 0, i32* %retval, align 4, !dbg !4355
  br label %return, !dbg !4355

return:                                           ; preds = %if.end21, %if.then20, %if.then17, %if.then12, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !4356
  ret i32 %38, !dbg !4356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_vendor_any_infoframe_unpack(%union.hdmi_vendor_any_infoframe* %frame, i8* %buffer, i64 %size) #0 !dbg !4357 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %length = alloca i64, align 8
  %ret = alloca i32, align 4
  %hdmi_video_format = alloca i8, align 1
  %hvf = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %union.hdmi_vendor_any_infoframe* %frame, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_vendor_any_infoframe** %frame.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !4366, metadata !DIExpression()), !dbg !4367
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !4368
  store i8* %0, i8** %ptr, align 8, !dbg !4367
  call void @llvm.dbg.declare(metadata i64* %length, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4371, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.declare(metadata i8* %hdmi_video_format, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %hvf, metadata !4375, metadata !DIExpression()), !dbg !4376
  %1 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !4377
  %hdmi = bitcast %union.hdmi_vendor_any_infoframe* %1 to %struct.hdmi_vendor_infoframe*, !dbg !4378
  store %struct.hdmi_vendor_infoframe* %hdmi, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4376
  %2 = load i64, i64* %size.addr, align 8, !dbg !4379
  %cmp = icmp ult i64 %2, 4, !dbg !4381
  br i1 %cmp, label %if.then, label %if.end, !dbg !4382

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4383
  br label %return, !dbg !4383

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ptr, align 8, !dbg !4384
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !4384
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4384
  %conv = zext i8 %4 to i32, !dbg !4384
  %cmp1 = icmp ne i32 %conv, 129, !dbg !4386
  br i1 %cmp1, label %if.then21, label %lor.lhs.false, !dbg !4387

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** %ptr, align 8, !dbg !4388
  %arrayidx3 = getelementptr i8, i8* %5, i64 1, !dbg !4388
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !4388
  %conv4 = zext i8 %6 to i32, !dbg !4388
  %cmp5 = icmp ne i32 %conv4, 1, !dbg !4389
  br i1 %cmp5, label %if.then21, label %lor.lhs.false7, !dbg !4390

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load i8*, i8** %ptr, align 8, !dbg !4391
  %arrayidx8 = getelementptr i8, i8* %7, i64 2, !dbg !4391
  %8 = load i8, i8* %arrayidx8, align 1, !dbg !4391
  %conv9 = zext i8 %8 to i32, !dbg !4391
  %cmp10 = icmp ne i32 %conv9, 4, !dbg !4392
  br i1 %cmp10, label %land.lhs.true, label %if.end22, !dbg !4393

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %9 = load i8*, i8** %ptr, align 8, !dbg !4394
  %arrayidx12 = getelementptr i8, i8* %9, i64 2, !dbg !4394
  %10 = load i8, i8* %arrayidx12, align 1, !dbg !4394
  %conv13 = zext i8 %10 to i32, !dbg !4394
  %cmp14 = icmp ne i32 %conv13, 5, !dbg !4395
  br i1 %cmp14, label %land.lhs.true16, label %if.end22, !dbg !4396

land.lhs.true16:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** %ptr, align 8, !dbg !4397
  %arrayidx17 = getelementptr i8, i8* %11, i64 2, !dbg !4397
  %12 = load i8, i8* %arrayidx17, align 1, !dbg !4397
  %conv18 = zext i8 %12 to i32, !dbg !4397
  %cmp19 = icmp ne i32 %conv18, 6, !dbg !4398
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4399

if.then21:                                        ; preds = %land.lhs.true16, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4400
  br label %return, !dbg !4400

if.end22:                                         ; preds = %land.lhs.true16, %land.lhs.true, %lor.lhs.false7
  %13 = load i8*, i8** %ptr, align 8, !dbg !4401
  %arrayidx23 = getelementptr i8, i8* %13, i64 2, !dbg !4401
  %14 = load i8, i8* %arrayidx23, align 1, !dbg !4401
  %conv24 = zext i8 %14 to i64, !dbg !4401
  store i64 %conv24, i64* %length, align 8, !dbg !4402
  %15 = load i64, i64* %size.addr, align 8, !dbg !4403
  %16 = load i64, i64* %length, align 8, !dbg !4405
  %add = add i64 4, %16, !dbg !4406
  %cmp25 = icmp ult i64 %15, %add, !dbg !4407
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4408

if.then27:                                        ; preds = %if.end22
  store i32 -22, i32* %retval, align 4, !dbg !4409
  br label %return, !dbg !4409

if.end28:                                         ; preds = %if.end22
  %17 = load i8*, i8** %buffer.addr, align 8, !dbg !4410
  %18 = load i64, i64* %length, align 8, !dbg !4412
  %add29 = add i64 4, %18, !dbg !4413
  %call = call zeroext i8 @hdmi_infoframe_checksum(i8* %17, i64 %add29) #5, !dbg !4414
  %conv30 = zext i8 %call to i32, !dbg !4414
  %cmp31 = icmp ne i32 %conv30, 0, !dbg !4415
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4416

if.then33:                                        ; preds = %if.end28
  store i32 -22, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

if.end34:                                         ; preds = %if.end28
  %19 = load i8*, i8** %ptr, align 8, !dbg !4418
  %add.ptr = getelementptr i8, i8* %19, i64 4, !dbg !4418
  store i8* %add.ptr, i8** %ptr, align 8, !dbg !4418
  %20 = load i8*, i8** %ptr, align 8, !dbg !4419
  %arrayidx35 = getelementptr i8, i8* %20, i64 0, !dbg !4419
  %21 = load i8, i8* %arrayidx35, align 1, !dbg !4419
  %conv36 = zext i8 %21 to i32, !dbg !4419
  %cmp37 = icmp ne i32 %conv36, 3, !dbg !4421
  br i1 %cmp37, label %if.then49, label %lor.lhs.false39, !dbg !4422

lor.lhs.false39:                                  ; preds = %if.end34
  %22 = load i8*, i8** %ptr, align 8, !dbg !4423
  %arrayidx40 = getelementptr i8, i8* %22, i64 1, !dbg !4423
  %23 = load i8, i8* %arrayidx40, align 1, !dbg !4423
  %conv41 = zext i8 %23 to i32, !dbg !4423
  %cmp42 = icmp ne i32 %conv41, 12, !dbg !4424
  br i1 %cmp42, label %if.then49, label %lor.lhs.false44, !dbg !4425

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %24 = load i8*, i8** %ptr, align 8, !dbg !4426
  %arrayidx45 = getelementptr i8, i8* %24, i64 2, !dbg !4426
  %25 = load i8, i8* %arrayidx45, align 1, !dbg !4426
  %conv46 = zext i8 %25 to i32, !dbg !4426
  %cmp47 = icmp ne i32 %conv46, 0, !dbg !4427
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !4428

if.then49:                                        ; preds = %lor.lhs.false44, %lor.lhs.false39, %if.end34
  store i32 -22, i32* %retval, align 4, !dbg !4429
  br label %return, !dbg !4429

if.end50:                                         ; preds = %lor.lhs.false44
  %26 = load i8*, i8** %ptr, align 8, !dbg !4430
  %arrayidx51 = getelementptr i8, i8* %26, i64 3, !dbg !4430
  %27 = load i8, i8* %arrayidx51, align 1, !dbg !4430
  %conv52 = zext i8 %27 to i32, !dbg !4430
  %shr = ashr i32 %conv52, 5, !dbg !4431
  %conv53 = trunc i32 %shr to i8, !dbg !4430
  store i8 %conv53, i8* %hdmi_video_format, align 1, !dbg !4432
  %28 = load i8, i8* %hdmi_video_format, align 1, !dbg !4433
  %conv54 = zext i8 %28 to i32, !dbg !4433
  %cmp55 = icmp sgt i32 %conv54, 2, !dbg !4435
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !4436

if.then57:                                        ; preds = %if.end50
  store i32 -22, i32* %retval, align 4, !dbg !4437
  br label %return, !dbg !4437

if.end58:                                         ; preds = %if.end50
  %29 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4438
  %call59 = call i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %29) #5, !dbg !4439
  store i32 %call59, i32* %ret, align 4, !dbg !4440
  %30 = load i32, i32* %ret, align 4, !dbg !4441
  %tobool = icmp ne i32 %30, 0, !dbg !4441
  br i1 %tobool, label %if.then60, label %if.end61, !dbg !4443

if.then60:                                        ; preds = %if.end58
  %31 = load i32, i32* %ret, align 4, !dbg !4444
  store i32 %31, i32* %retval, align 4, !dbg !4445
  br label %return, !dbg !4445

if.end61:                                         ; preds = %if.end58
  %32 = load i64, i64* %length, align 8, !dbg !4446
  %conv62 = trunc i64 %32 to i8, !dbg !4446
  %33 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4447
  %length63 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %33, i32 0, i32 2, !dbg !4448
  store i8 %conv62, i8* %length63, align 1, !dbg !4449
  %34 = load i8, i8* %hdmi_video_format, align 1, !dbg !4450
  %conv64 = zext i8 %34 to i32, !dbg !4450
  %cmp65 = icmp eq i32 %conv64, 2, !dbg !4452
  br i1 %cmp65, label %if.then67, label %if.else, !dbg !4453

if.then67:                                        ; preds = %if.end61
  %35 = load i64, i64* %length, align 8, !dbg !4454
  %cmp68 = icmp ne i64 %35, 5, !dbg !4457
  br i1 %cmp68, label %land.lhs.true70, label %if.end74, !dbg !4458

land.lhs.true70:                                  ; preds = %if.then67
  %36 = load i64, i64* %length, align 8, !dbg !4459
  %cmp71 = icmp ne i64 %36, 6, !dbg !4460
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !4461

if.then73:                                        ; preds = %land.lhs.true70
  store i32 -22, i32* %retval, align 4, !dbg !4462
  br label %return, !dbg !4462

if.end74:                                         ; preds = %land.lhs.true70, %if.then67
  %37 = load i8*, i8** %ptr, align 8, !dbg !4463
  %arrayidx75 = getelementptr i8, i8* %37, i64 4, !dbg !4463
  %38 = load i8, i8* %arrayidx75, align 1, !dbg !4463
  %conv76 = zext i8 %38 to i32, !dbg !4463
  %shr77 = ashr i32 %conv76, 4, !dbg !4464
  %39 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4465
  %s3d_struct = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %39, i32 0, i32 5, !dbg !4466
  store i32 %shr77, i32* %s3d_struct, align 4, !dbg !4467
  %40 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4468
  %s3d_struct78 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %40, i32 0, i32 5, !dbg !4470
  %41 = load i32, i32* %s3d_struct78, align 4, !dbg !4470
  %cmp79 = icmp sge i32 %41, 8, !dbg !4471
  br i1 %cmp79, label %if.then81, label %if.end89, !dbg !4472

if.then81:                                        ; preds = %if.end74
  %42 = load i64, i64* %length, align 8, !dbg !4473
  %cmp82 = icmp ne i64 %42, 6, !dbg !4476
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !4477

if.then84:                                        ; preds = %if.then81
  store i32 -22, i32* %retval, align 4, !dbg !4478
  br label %return, !dbg !4478

if.end85:                                         ; preds = %if.then81
  %43 = load i8*, i8** %ptr, align 8, !dbg !4479
  %arrayidx86 = getelementptr i8, i8* %43, i64 5, !dbg !4479
  %44 = load i8, i8* %arrayidx86, align 1, !dbg !4479
  %conv87 = zext i8 %44 to i32, !dbg !4479
  %shr88 = ashr i32 %conv87, 4, !dbg !4480
  %45 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4481
  %s3d_ext_data = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %45, i32 0, i32 6, !dbg !4482
  store i32 %shr88, i32* %s3d_ext_data, align 4, !dbg !4483
  br label %if.end89, !dbg !4484

if.end89:                                         ; preds = %if.end85, %if.end74
  br label %if.end105, !dbg !4485

if.else:                                          ; preds = %if.end61
  %46 = load i8, i8* %hdmi_video_format, align 1, !dbg !4486
  %conv90 = zext i8 %46 to i32, !dbg !4486
  %cmp91 = icmp eq i32 %conv90, 1, !dbg !4488
  br i1 %cmp91, label %if.then93, label %if.else99, !dbg !4489

if.then93:                                        ; preds = %if.else
  %47 = load i64, i64* %length, align 8, !dbg !4490
  %cmp94 = icmp ne i64 %47, 5, !dbg !4493
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !4494

if.then96:                                        ; preds = %if.then93
  store i32 -22, i32* %retval, align 4, !dbg !4495
  br label %return, !dbg !4495

if.end97:                                         ; preds = %if.then93
  %48 = load i8*, i8** %ptr, align 8, !dbg !4496
  %arrayidx98 = getelementptr i8, i8* %48, i64 4, !dbg !4496
  %49 = load i8, i8* %arrayidx98, align 1, !dbg !4496
  %50 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hvf, align 8, !dbg !4497
  %vic = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %50, i32 0, i32 4, !dbg !4498
  store i8 %49, i8* %vic, align 4, !dbg !4499
  br label %if.end104, !dbg !4500

if.else99:                                        ; preds = %if.else
  %51 = load i64, i64* %length, align 8, !dbg !4501
  %cmp100 = icmp ne i64 %51, 4, !dbg !4504
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !4505

if.then102:                                       ; preds = %if.else99
  store i32 -22, i32* %retval, align 4, !dbg !4506
  br label %return, !dbg !4506

if.end103:                                        ; preds = %if.else99
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end97
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end89
  store i32 0, i32* %retval, align 4, !dbg !4507
  br label %return, !dbg !4507

return:                                           ; preds = %if.end105, %if.then102, %if.then96, %if.then84, %if.then73, %if.then60, %if.then57, %if.then49, %if.then33, %if.then27, %if.then21, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !4508
  ret i32 %52, !dbg !4508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @hdmi_infoframe_checksum(i8* %ptr, i64 %size) #0 !dbg !4509 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %csum = alloca i8, align 1
  %i = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.declare(metadata i8* %csum, metadata !4516, metadata !DIExpression()), !dbg !4517
  store i8 0, i8* %csum, align 1, !dbg !4517
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i64 0, i64* %i, align 8, !dbg !4520
  br label %for.cond, !dbg !4522

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !4523
  %1 = load i64, i64* %size.addr, align 8, !dbg !4525
  %cmp = icmp ult i64 %0, %1, !dbg !4526
  br i1 %cmp, label %for.body, label %for.end, !dbg !4527

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !4528
  %3 = load i64, i64* %i, align 8, !dbg !4529
  %arrayidx = getelementptr i8, i8* %2, i64 %3, !dbg !4528
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4528
  %conv = zext i8 %4 to i32, !dbg !4528
  %5 = load i8, i8* %csum, align 1, !dbg !4530
  %conv1 = zext i8 %5 to i32, !dbg !4530
  %add = add i32 %conv1, %conv, !dbg !4530
  %conv2 = trunc i32 %add to i8, !dbg !4530
  store i8 %conv2, i8* %csum, align 1, !dbg !4530
  br label %for.inc, !dbg !4531

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8, !dbg !4532
  %inc = add i64 %6, 1, !dbg !4532
  store i64 %inc, i64* %i, align 8, !dbg !4532
  br label %for.cond, !dbg !4533, !llvm.loop !4534

for.end:                                          ; preds = %for.cond
  %7 = load i8, i8* %csum, align 1, !dbg !4536
  %conv3 = zext i8 %7 to i32, !dbg !4536
  %sub = sub i32 256, %conv3, !dbg !4537
  %conv4 = trunc i32 %sub to i8, !dbg !4538
  ret i8 %conv4, !dbg !4539
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hdmi_vendor_any_infoframe_check_only(%union.hdmi_vendor_any_infoframe* %frame) #0 !dbg !4540 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %union.hdmi_vendor_any_infoframe*, align 8
  store %union.hdmi_vendor_any_infoframe* %frame, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %union.hdmi_vendor_any_infoframe** %frame.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  %0 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !4545
  %any = bitcast %union.hdmi_vendor_any_infoframe* %0 to %struct.anon.1*, !dbg !4547
  %type = getelementptr inbounds %struct.anon.1, %struct.anon.1* %any, i32 0, i32 0, !dbg !4548
  %1 = load i32, i32* %type, align 4, !dbg !4548
  %cmp = icmp ne i32 %1, 129, !dbg !4549
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4550

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %frame.addr, align 8, !dbg !4551
  %any1 = bitcast %union.hdmi_vendor_any_infoframe* %2 to %struct.anon.1*, !dbg !4552
  %version = getelementptr inbounds %struct.anon.1, %struct.anon.1* %any1, i32 0, i32 1, !dbg !4553
  %3 = load i8, i8* %version, align 4, !dbg !4553
  %conv = zext i8 %3 to i32, !dbg !4551
  %cmp2 = icmp ne i32 %conv, 1, !dbg !4554
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4555

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4556
  br label %return, !dbg !4556

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4557
  br label %return, !dbg !4557

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4558
  ret i32 %4, !dbg !4558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hdmi_infoframe_log_header(i8* %level, %struct.device* %dev, %struct.hdmi_any_infoframe* %frame) #0 !dbg !4559 {
entry:
  %level.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %frame.addr = alloca %struct.hdmi_any_infoframe*, align 8
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  store %struct.hdmi_any_infoframe* %frame, %struct.hdmi_any_infoframe** %frame.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_any_infoframe** %frame.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  %0 = load i8*, i8** %level.addr, align 8, !dbg !4568
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4568
  %2 = load %struct.hdmi_any_infoframe*, %struct.hdmi_any_infoframe** %frame.addr, align 8, !dbg !4568
  %type = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %2, i32 0, i32 0, !dbg !4568
  %3 = load i32, i32* %type, align 4, !dbg !4568
  %call = call i8* @hdmi_infoframe_type_get_name(i32 %3) #5, !dbg !4568
  %4 = load %struct.hdmi_any_infoframe*, %struct.hdmi_any_infoframe** %frame.addr, align 8, !dbg !4568
  %version = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %4, i32 0, i32 1, !dbg !4568
  %5 = load i8, i8* %version, align 4, !dbg !4568
  %conv = zext i8 %5 to i32, !dbg !4568
  %6 = load %struct.hdmi_any_infoframe*, %struct.hdmi_any_infoframe** %frame.addr, align 8, !dbg !4568
  %length = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %6, i32 0, i32 2, !dbg !4568
  %7 = load i8, i8* %length, align 1, !dbg !4568
  %conv1 = zext i8 %7 to i32, !dbg !4568
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* %0, %struct.device* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i8* %call, i32 %conv, i32 %conv1) #7, !dbg !4568
  ret void, !dbg !4569
}

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_colorspace_get_name(i32 %colorspace) #0 !dbg !4570 {
entry:
  %retval = alloca i8*, align 8
  %colorspace.addr = alloca i32, align 4
  store i32 %colorspace, i32* %colorspace.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %colorspace.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  %0 = load i32, i32* %colorspace.addr, align 4, !dbg !4575
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ], !dbg !4576

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** %retval, align 8, !dbg !4577
  br label %return, !dbg !4577

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8** %retval, align 8, !dbg !4579
  br label %return, !dbg !4579

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8** %retval, align 8, !dbg !4580
  br label %return, !dbg !4580

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8** %retval, align 8, !dbg !4581
  br label %return, !dbg !4581

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %retval, align 8, !dbg !4582
  br label %return, !dbg !4582

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8, !dbg !4583
  br label %return, !dbg !4583

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8, !dbg !4584
  br label %return, !dbg !4584

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8, !dbg !4585
  br label %return, !dbg !4585

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4586
  br label %return, !dbg !4586

return:                                           ; preds = %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4587
  ret i8* %1, !dbg !4587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_scan_mode_get_name(i32 %scan_mode) #0 !dbg !4588 {
entry:
  %retval = alloca i8*, align 8
  %scan_mode.addr = alloca i32, align 4
  store i32 %scan_mode, i32* %scan_mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %scan_mode.addr, metadata !4591, metadata !DIExpression()), !dbg !4592
  %0 = load i32, i32* %scan_mode.addr, align 4, !dbg !4593
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4594

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8, !dbg !4595
  br label %return, !dbg !4595

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8** %retval, align 8, !dbg !4597
  br label %return, !dbg !4597

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8** %retval, align 8, !dbg !4598
  br label %return, !dbg !4598

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4599
  br label %return, !dbg !4599

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4600
  br label %return, !dbg !4600

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4601
  ret i8* %1, !dbg !4601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_colorimetry_get_name(i32 %colorimetry) #0 !dbg !4602 {
entry:
  %retval = alloca i8*, align 8
  %colorimetry.addr = alloca i32, align 4
  store i32 %colorimetry, i32* %colorimetry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %colorimetry.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  %0 = load i32, i32* %colorimetry.addr, align 4, !dbg !4607
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4608

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8, !dbg !4609
  br label %return, !dbg !4609

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8** %retval, align 8, !dbg !4611
  br label %return, !dbg !4611

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8** %retval, align 8, !dbg !4612
  br label %return, !dbg !4612

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8** %retval, align 8, !dbg !4613
  br label %return, !dbg !4613

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4614
  br label %return, !dbg !4614

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4615
  ret i8* %1, !dbg !4615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_picture_aspect_get_name(i32 %picture_aspect) #0 !dbg !4616 {
entry:
  %retval = alloca i8*, align 8
  %picture_aspect.addr = alloca i32, align 4
  store i32 %picture_aspect, i32* %picture_aspect.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %picture_aspect.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load i32, i32* %picture_aspect.addr, align 4, !dbg !4621
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ], !dbg !4622

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8, !dbg !4623
  br label %return, !dbg !4623

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8** %retval, align 8, !dbg !4625
  br label %return, !dbg !4625

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8** %retval, align 8, !dbg !4626
  br label %return, !dbg !4626

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8** %retval, align 8, !dbg !4627
  br label %return, !dbg !4627

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8** %retval, align 8, !dbg !4628
  br label %return, !dbg !4628

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4629
  br label %return, !dbg !4629

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4630
  br label %return, !dbg !4630

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4631
  ret i8* %1, !dbg !4631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_active_aspect_get_name(i32 %active_aspect) #0 !dbg !4632 {
entry:
  %retval = alloca i8*, align 8
  %active_aspect.addr = alloca i32, align 4
  store i32 %active_aspect, i32* %active_aspect.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %active_aspect.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load i32, i32* %active_aspect.addr, align 4, !dbg !4637
  %cmp = icmp ult i32 %0, 0, !dbg !4639
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4640

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %active_aspect.addr, align 4, !dbg !4641
  %cmp1 = icmp ugt i32 %1, 15, !dbg !4642
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4643

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4644
  br label %return, !dbg !4644

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %active_aspect.addr, align 4, !dbg !4645
  switch i32 %2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
    i32 9, label %sw.bb5
    i32 10, label %sw.bb6
    i32 11, label %sw.bb7
    i32 13, label %sw.bb8
    i32 14, label %sw.bb9
    i32 15, label %sw.bb10
  ], !dbg !4646

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8** %retval, align 8, !dbg !4647
  br label %return, !dbg !4647

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8** %retval, align 8, !dbg !4649
  br label %return, !dbg !4649

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8** %retval, align 8, !dbg !4650
  br label %return, !dbg !4650

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8** %retval, align 8, !dbg !4651
  br label %return, !dbg !4651

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8** %retval, align 8, !dbg !4652
  br label %return, !dbg !4652

sw.bb6:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8** %retval, align 8, !dbg !4653
  br label %return, !dbg !4653

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8** %retval, align 8, !dbg !4654
  br label %return, !dbg !4654

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8** %retval, align 8, !dbg !4655
  br label %return, !dbg !4655

sw.bb9:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i8** %retval, align 8, !dbg !4656
  br label %return, !dbg !4656

sw.bb10:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8** %retval, align 8, !dbg !4657
  br label %return, !dbg !4657

sw.epilog:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4658
  br label %return, !dbg !4658

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !4659
  ret i8* %3, !dbg !4659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_extended_colorimetry_get_name(i32 %ext_col) #0 !dbg !4660 {
entry:
  %retval = alloca i8*, align 8
  %ext_col.addr = alloca i32, align 4
  store i32 %ext_col, i32* %ext_col.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ext_col.addr, metadata !4663, metadata !DIExpression()), !dbg !4664
  %0 = load i32, i32* %ext_col.addr, align 4, !dbg !4665
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ], !dbg !4666

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i8** %retval, align 8, !dbg !4667
  br label %return, !dbg !4667

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i8** %retval, align 8, !dbg !4669
  br label %return, !dbg !4669

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8** %retval, align 8, !dbg !4670
  br label %return, !dbg !4670

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8** %retval, align 8, !dbg !4671
  br label %return, !dbg !4671

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i8** %retval, align 8, !dbg !4672
  br label %return, !dbg !4672

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8** %retval, align 8, !dbg !4673
  br label %return, !dbg !4673

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i8** %retval, align 8, !dbg !4674
  br label %return, !dbg !4674

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4675
  br label %return, !dbg !4675

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4676
  br label %return, !dbg !4676

return:                                           ; preds = %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4677
  ret i8* %1, !dbg !4677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_quantization_range_get_name(i32 %qrange) #0 !dbg !4678 {
entry:
  %retval = alloca i8*, align 8
  %qrange.addr = alloca i32, align 4
  store i32 %qrange, i32* %qrange.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %qrange.addr, metadata !4681, metadata !DIExpression()), !dbg !4682
  %0 = load i32, i32* %qrange.addr, align 4, !dbg !4683
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4684

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i8** %retval, align 8, !dbg !4685
  br label %return, !dbg !4685

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i8** %retval, align 8, !dbg !4687
  br label %return, !dbg !4687

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8** %retval, align 8, !dbg !4688
  br label %return, !dbg !4688

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4689
  br label %return, !dbg !4689

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4690
  br label %return, !dbg !4690

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4691
  ret i8* %1, !dbg !4691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_nups_get_name(i32 %nups) #0 !dbg !4692 {
entry:
  %retval = alloca i8*, align 8
  %nups.addr = alloca i32, align 4
  store i32 %nups, i32* %nups.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nups.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  %0 = load i32, i32* %nups.addr, align 4, !dbg !4697
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4698

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i8** %retval, align 8, !dbg !4699
  br label %return, !dbg !4699

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0), i8** %retval, align 8, !dbg !4701
  br label %return, !dbg !4701

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8** %retval, align 8, !dbg !4702
  br label %return, !dbg !4702

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i64 0, i64 0), i8** %retval, align 8, !dbg !4703
  br label %return, !dbg !4703

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4704
  br label %return, !dbg !4704

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4705
  ret i8* %1, !dbg !4705
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_ycc_quantization_range_get_name(i32 %qrange) #0 !dbg !4706 {
entry:
  %retval = alloca i8*, align 8
  %qrange.addr = alloca i32, align 4
  store i32 %qrange, i32* %qrange.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %qrange.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load i32, i32* %qrange.addr, align 4, !dbg !4711
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !4712

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i8** %retval, align 8, !dbg !4713
  br label %return, !dbg !4713

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8** %retval, align 8, !dbg !4715
  br label %return, !dbg !4715

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4716
  br label %return, !dbg !4716

return:                                           ; preds = %sw.epilog, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4717
  ret i8* %1, !dbg !4717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_content_type_get_name(i32 %content_type) #0 !dbg !4718 {
entry:
  %retval = alloca i8*, align 8
  %content_type.addr = alloca i32, align 4
  store i32 %content_type, i32* %content_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %content_type.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  %0 = load i32, i32* %content_type.addr, align 4, !dbg !4723
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4724

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i8** %retval, align 8, !dbg !4725
  br label %return, !dbg !4725

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8** %retval, align 8, !dbg !4727
  br label %return, !dbg !4727

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i8** %retval, align 8, !dbg !4728
  br label %return, !dbg !4728

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8** %retval, align 8, !dbg !4729
  br label %return, !dbg !4729

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4730
  br label %return, !dbg !4730

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4731
  ret i8* %1, !dbg !4731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_infoframe_type_get_name(i32 %type) #0 !dbg !4732 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  %0 = load i32, i32* %type.addr, align 4, !dbg !4737
  %cmp = icmp ult i32 %0, 128, !dbg !4739
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4740

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !4741
  %cmp1 = icmp ugt i32 %1, 159, !dbg !4742
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4743

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4744
  br label %return, !dbg !4744

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %type.addr, align 4, !dbg !4745
  switch i32 %2, label %sw.epilog [
    i32 129, label %sw.bb
    i32 130, label %sw.bb2
    i32 131, label %sw.bb3
    i32 132, label %sw.bb4
    i32 135, label %sw.bb5
  ], !dbg !4746

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8, !dbg !4747
  br label %return, !dbg !4747

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8, !dbg !4749
  br label %return, !dbg !4749

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8** %retval, align 8, !dbg !4750
  br label %return, !dbg !4750

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8, !dbg !4751
  br label %return, !dbg !4751

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8, !dbg !4752
  br label %return, !dbg !4752

sw.epilog:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4753
  br label %return, !dbg !4753

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !4754
  ret i8* %3, !dbg !4754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_spd_sdi_get_name(i32 %sdi) #0 !dbg !4755 {
entry:
  %retval = alloca i8*, align 8
  %sdi.addr = alloca i32, align 4
  store i32 %sdi, i32* %sdi.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sdi.addr, metadata !4758, metadata !DIExpression()), !dbg !4759
  %0 = load i32, i32* %sdi.addr, align 4, !dbg !4760
  %cmp = icmp ult i32 %0, 0, !dbg !4762
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4763

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %sdi.addr, align 4, !dbg !4764
  %cmp1 = icmp ugt i32 %1, 255, !dbg !4765
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4766

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4767
  br label %return, !dbg !4767

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %sdi.addr, align 4, !dbg !4768
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
    i32 10, label %sw.bb11
    i32 11, label %sw.bb12
    i32 12, label %sw.bb13
    i32 13, label %sw.bb14
  ], !dbg !4769

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), i8** %retval, align 8, !dbg !4770
  br label %return, !dbg !4770

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8** %retval, align 8, !dbg !4772
  br label %return, !dbg !4772

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0), i8** %retval, align 8, !dbg !4773
  br label %return, !dbg !4773

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i8** %retval, align 8, !dbg !4774
  br label %return, !dbg !4774

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i8** %retval, align 8, !dbg !4775
  br label %return, !dbg !4775

sw.bb6:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0), i8** %retval, align 8, !dbg !4776
  br label %return, !dbg !4776

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8** %retval, align 8, !dbg !4777
  br label %return, !dbg !4777

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i64 0, i64 0), i8** %retval, align 8, !dbg !4778
  br label %return, !dbg !4778

sw.bb9:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8** %retval, align 8, !dbg !4779
  br label %return, !dbg !4779

sw.bb10:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i64 0, i64 0), i8** %retval, align 8, !dbg !4780
  br label %return, !dbg !4780

sw.bb11:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i64 0, i64 0), i8** %retval, align 8, !dbg !4781
  br label %return, !dbg !4781

sw.bb12:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i8** %retval, align 8, !dbg !4782
  br label %return, !dbg !4782

sw.bb13:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i64 0, i64 0), i8** %retval, align 8, !dbg !4783
  br label %return, !dbg !4783

sw.bb14:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i8** %retval, align 8, !dbg !4784
  br label %return, !dbg !4784

sw.epilog:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4785
  br label %return, !dbg !4785

return:                                           ; preds = %sw.epilog, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !4786
  ret i8* %3, !dbg !4786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_audio_coding_type_get_name(i32 %coding_type) #0 !dbg !4787 {
entry:
  %retval = alloca i8*, align 8
  %coding_type.addr = alloca i32, align 4
  store i32 %coding_type, i32* %coding_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %coding_type.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  %0 = load i32, i32* %coding_type.addr, align 4, !dbg !4792
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
  ], !dbg !4793

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i64 0, i64 0), i8** %retval, align 8, !dbg !4794
  br label %return, !dbg !4794

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0), i8** %retval, align 8, !dbg !4796
  br label %return, !dbg !4796

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), i8** %retval, align 8, !dbg !4797
  br label %return, !dbg !4797

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8** %retval, align 8, !dbg !4798
  br label %return, !dbg !4798

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0), i8** %retval, align 8, !dbg !4799
  br label %return, !dbg !4799

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i64 0, i64 0), i8** %retval, align 8, !dbg !4800
  br label %return, !dbg !4800

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0), i8** %retval, align 8, !dbg !4801
  br label %return, !dbg !4801

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0), i8** %retval, align 8, !dbg !4802
  br label %return, !dbg !4802

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0), i8** %retval, align 8, !dbg !4803
  br label %return, !dbg !4803

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i64 0, i64 0), i8** %retval, align 8, !dbg !4804
  br label %return, !dbg !4804

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i64 0, i64 0), i8** %retval, align 8, !dbg !4805
  br label %return, !dbg !4805

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i64 0, i64 0), i8** %retval, align 8, !dbg !4806
  br label %return, !dbg !4806

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i64 0, i64 0), i8** %retval, align 8, !dbg !4807
  br label %return, !dbg !4807

sw.bb13:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), i8** %retval, align 8, !dbg !4808
  br label %return, !dbg !4808

sw.bb14:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i64 0, i64 0), i8** %retval, align 8, !dbg !4809
  br label %return, !dbg !4809

sw.bb15:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i64 0, i64 0), i8** %retval, align 8, !dbg !4810
  br label %return, !dbg !4810

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4811
  br label %return, !dbg !4811

return:                                           ; preds = %sw.epilog, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4812
  ret i8* %1, !dbg !4812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_audio_sample_size_get_name(i32 %sample_size) #0 !dbg !4813 {
entry:
  %retval = alloca i8*, align 8
  %sample_size.addr = alloca i32, align 4
  store i32 %sample_size, i32* %sample_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sample_size.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load i32, i32* %sample_size.addr, align 4, !dbg !4818
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4819

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i64 0, i64 0), i8** %retval, align 8, !dbg !4820
  br label %return, !dbg !4820

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), i8** %retval, align 8, !dbg !4822
  br label %return, !dbg !4822

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i64 0, i64 0), i8** %retval, align 8, !dbg !4823
  br label %return, !dbg !4823

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i64 0, i64 0), i8** %retval, align 8, !dbg !4824
  br label %return, !dbg !4824

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4825
  br label %return, !dbg !4825

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4826
  ret i8* %1, !dbg !4826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_audio_sample_frequency_get_name(i32 %freq) #0 !dbg !4827 {
entry:
  %retval = alloca i8*, align 8
  %freq.addr = alloca i32, align 4
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  %0 = load i32, i32* %freq.addr, align 4, !dbg !4832
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ], !dbg !4833

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i64 0, i64 0), i8** %retval, align 8, !dbg !4834
  br label %return, !dbg !4834

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8** %retval, align 8, !dbg !4836
  br label %return, !dbg !4836

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i64 0, i64 0), i8** %retval, align 8, !dbg !4837
  br label %return, !dbg !4837

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i64 0, i64 0), i8** %retval, align 8, !dbg !4838
  br label %return, !dbg !4838

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i64 0, i64 0), i8** %retval, align 8, !dbg !4839
  br label %return, !dbg !4839

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i64 0, i64 0), i8** %retval, align 8, !dbg !4840
  br label %return, !dbg !4840

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i64 0, i64 0), i8** %retval, align 8, !dbg !4841
  br label %return, !dbg !4841

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0), i8** %retval, align 8, !dbg !4842
  br label %return, !dbg !4842

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4843
  br label %return, !dbg !4843

return:                                           ; preds = %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4844
  ret i8* %1, !dbg !4844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_audio_coding_type_ext_get_name(i32 %ctx) #0 !dbg !4845 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i32, align 4
  store i32 %ctx, i32* %ctx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ctx.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  %0 = load i32, i32* %ctx.addr, align 4, !dbg !4850
  %cmp = icmp ult i32 %0, 0, !dbg !4852
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4853

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ctx.addr, align 4, !dbg !4854
  %cmp1 = icmp ugt i32 %1, 31, !dbg !4855
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4856

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4857
  br label %return, !dbg !4857

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %ctx.addr, align 4, !dbg !4858
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 10, label %sw.bb10
  ], !dbg !4859

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i64 0, i64 0), i8** %retval, align 8, !dbg !4860
  br label %return, !dbg !4860

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i64 0, i64 0), i8** %retval, align 8, !dbg !4862
  br label %return, !dbg !4862

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i64 0, i64 0), i8** %retval, align 8, !dbg !4863
  br label %return, !dbg !4863

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i64 0, i64 0), i8** %retval, align 8, !dbg !4864
  br label %return, !dbg !4864

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i64 0, i64 0), i8** %retval, align 8, !dbg !4865
  br label %return, !dbg !4865

sw.bb6:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i64 0, i64 0), i8** %retval, align 8, !dbg !4866
  br label %return, !dbg !4866

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i64 0, i64 0), i8** %retval, align 8, !dbg !4867
  br label %return, !dbg !4867

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8** %retval, align 8, !dbg !4868
  br label %return, !dbg !4868

sw.bb9:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.130, i64 0, i64 0), i8** %retval, align 8, !dbg !4869
  br label %return, !dbg !4869

sw.bb10:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.131, i64 0, i64 0), i8** %retval, align 8, !dbg !4870
  br label %return, !dbg !4870

sw.epilog:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4871
  br label %return, !dbg !4871

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !4872
  ret i8* %3, !dbg !4872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hdmi_3d_structure_get_name(i32 %s3d_struct) #0 !dbg !4873 {
entry:
  %retval = alloca i8*, align 8
  %s3d_struct.addr = alloca i32, align 4
  store i32 %s3d_struct, i32* %s3d_struct.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s3d_struct.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  %0 = load i32, i32* %s3d_struct.addr, align 4, !dbg !4878
  %cmp = icmp slt i32 %0, 0, !dbg !4880
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4881

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %s3d_struct.addr, align 4, !dbg !4882
  %cmp1 = icmp sgt i32 %1, 15, !dbg !4883
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4884

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !4885
  br label %return, !dbg !4885

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %s3d_struct.addr, align 4, !dbg !4886
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 8, label %sw.bb8
  ], !dbg !4887

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i64 0, i64 0), i8** %retval, align 8, !dbg !4888
  br label %return, !dbg !4888

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138, i64 0, i64 0), i8** %retval, align 8, !dbg !4890
  br label %return, !dbg !4890

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.139, i64 0, i64 0), i8** %retval, align 8, !dbg !4891
  br label %return, !dbg !4891

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i64 0, i64 0), i8** %retval, align 8, !dbg !4892
  br label %return, !dbg !4892

sw.bb5:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i64 0, i64 0), i8** %retval, align 8, !dbg !4893
  br label %return, !dbg !4893

sw.bb6:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.142, i64 0, i64 0), i8** %retval, align 8, !dbg !4894
  br label %return, !dbg !4894

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i64 0, i64 0), i8** %retval, align 8, !dbg !4895
  br label %return, !dbg !4895

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.144, i64 0, i64 0), i8** %retval, align 8, !dbg !4896
  br label %return, !dbg !4896

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !4897

sw.epilog:                                        ; preds = %sw.default
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4898
  br label %return, !dbg !4898

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !4899
  ret i8* %3, !dbg !4899
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !218, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/video/hdmi.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !12, !22, !28, !34, !42, !54, !64, !70, !76, !80, !86, !102, !120, !126, !136, !148, !160, !166, !169, !174, !180, !186, !192, !199, !207, !213}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_infoframe_type", file: !4, line: 45, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_VENDOR", value: 129, isUnsigned: true)
!8 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_AVI", value: 130, isUnsigned: true)
!9 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_SPD", value: 131, isUnsigned: true)
!10 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_AUDIO", value: 132, isUnsigned: true)
!11 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_DRM", value: 135, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_colorspace", file: !4, line: 71, baseType: !5, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "HDMI_COLORSPACE_RGB", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "HDMI_COLORSPACE_YUV422", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "HDMI_COLORSPACE_YUV444", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "HDMI_COLORSPACE_YUV420", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "HDMI_COLORSPACE_RESERVED4", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "HDMI_COLORSPACE_RESERVED5", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "HDMI_COLORSPACE_RESERVED6", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "HDMI_COLORSPACE_IDO_DEFINED", value: 7, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_scan_mode", file: !4, line: 82, baseType: !5, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "HDMI_SCAN_MODE_NONE", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "HDMI_SCAN_MODE_OVERSCAN", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "HDMI_SCAN_MODE_UNDERSCAN", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "HDMI_SCAN_MODE_RESERVED", value: 3, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_colorimetry", file: !4, line: 89, baseType: !5, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "HDMI_COLORIMETRY_NONE", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "HDMI_COLORIMETRY_ITU_601", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "HDMI_COLORIMETRY_ITU_709", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "HDMI_COLORIMETRY_EXTENDED", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !4, line: 96, baseType: !5, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!41 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_active_aspect", file: !4, line: 105, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!44 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_TOP", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_14_9_TOP", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_CENTER", value: 4, isUnsigned: true)
!47 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_PICTURE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_4_3", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_14_9", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_4_3_SP_14_9", value: 13, isUnsigned: true)
!52 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_SP_14_9", value: 14, isUnsigned: true)
!53 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_SP_4_3", value: 15, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_extended_colorimetry", file: !4, line: 118, baseType: !5, size: 32, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63}
!56 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_XV_YCC_601", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_XV_YCC_709", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_S_YCC_601", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_OPYCC_601", value: 3, isUnsigned: true)
!60 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_OPRGB", value: 4, isUnsigned: true)
!61 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_BT2020_CONST_LUM", value: 5, isUnsigned: true)
!62 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_BT2020", value: 6, isUnsigned: true)
!63 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_RESERVED", value: 7, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_quantization_range", file: !4, line: 131, baseType: !5, size: 32, elements: !65)
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_DEFAULT", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_LIMITED", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_FULL", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_RESERVED", value: 3, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_nups", file: !4, line: 139, baseType: !5, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "HDMI_NUPS_UNKNOWN", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "HDMI_NUPS_HORIZONTAL", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "HDMI_NUPS_VERTICAL", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "HDMI_NUPS_BOTH", value: 3, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_ycc_quantization_range", file: !4, line: 146, baseType: !5, size: 32, elements: !77)
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "HDMI_YCC_QUANTIZATION_RANGE_LIMITED", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "HDMI_YCC_QUANTIZATION_RANGE_FULL", value: 1, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_content_type", file: !4, line: 151, baseType: !5, size: 32, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_GRAPHICS", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_PHOTO", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_CINEMA", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_GAME", value: 3, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_spd_sdi", file: !4, line: 226, baseType: !5, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!88 = !DIEnumerator(name: "HDMI_SPD_SDI_UNKNOWN", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "HDMI_SPD_SDI_DSTB", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "HDMI_SPD_SDI_DVDP", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "HDMI_SPD_SDI_DVHS", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "HDMI_SPD_SDI_HDDVR", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "HDMI_SPD_SDI_DVC", value: 5, isUnsigned: true)
!94 = !DIEnumerator(name: "HDMI_SPD_SDI_DSC", value: 6, isUnsigned: true)
!95 = !DIEnumerator(name: "HDMI_SPD_SDI_VCD", value: 7, isUnsigned: true)
!96 = !DIEnumerator(name: "HDMI_SPD_SDI_GAME", value: 8, isUnsigned: true)
!97 = !DIEnumerator(name: "HDMI_SPD_SDI_PC", value: 9, isUnsigned: true)
!98 = !DIEnumerator(name: "HDMI_SPD_SDI_BD", value: 10, isUnsigned: true)
!99 = !DIEnumerator(name: "HDMI_SPD_SDI_SACD", value: 11, isUnsigned: true)
!100 = !DIEnumerator(name: "HDMI_SPD_SDI_HDDVD", value: 12, isUnsigned: true)
!101 = !DIEnumerator(name: "HDMI_SPD_SDI_PMP", value: 13, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_audio_coding_type", file: !4, line: 260, baseType: !5, size: 32, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!104 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_STREAM", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_PCM", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_AC3", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_MPEG1", value: 3, isUnsigned: true)
!108 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_MP3", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_MPEG2", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_AAC_LC", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_DTS", value: 7, isUnsigned: true)
!112 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_ATRAC", value: 8, isUnsigned: true)
!113 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_DSD", value: 9, isUnsigned: true)
!114 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EAC3", value: 10, isUnsigned: true)
!115 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_DTS_HD", value: 11, isUnsigned: true)
!116 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_MLP", value: 12, isUnsigned: true)
!117 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_DST", value: 13, isUnsigned: true)
!118 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_WMA_PRO", value: 14, isUnsigned: true)
!119 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_CXT", value: 15, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_audio_sample_size", file: !4, line: 279, baseType: !5, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_SIZE_STREAM", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_SIZE_16", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_SIZE_20", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_SIZE_24", value: 3, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_audio_sample_frequency", file: !4, line: 286, baseType: !5, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135}
!128 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_32000", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_44100", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_48000", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_88200", value: 4, isUnsigned: true)
!133 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_96000", value: 5, isUnsigned: true)
!134 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_176400", value: 6, isUnsigned: true)
!135 = !DIEnumerator(name: "HDMI_AUDIO_SAMPLE_FREQUENCY_192000", value: 7, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_audio_coding_type_ext", file: !4, line: 297, baseType: !5, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!138 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_CT", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_HE_AAC", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_HE_AAC_V2", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_MPEG_SURROUND", value: 3, isUnsigned: true)
!142 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_HE_AAC", value: 4, isUnsigned: true)
!143 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_HE_AAC_V2", value: 5, isUnsigned: true)
!144 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_AAC_LC", value: 6, isUnsigned: true)
!145 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_DRA", value: 7, isUnsigned: true)
!146 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_HE_AAC_SURROUND", value: 8, isUnsigned: true)
!147 = !DIEnumerator(name: "HDMI_AUDIO_CODING_TYPE_EXT_MPEG4_AAC_LC_SURROUND", value: 10, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_3d_structure", file: !4, line: 341, baseType: !149, size: 32, elements: !150)
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_INVALID", value: -1)
!152 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_FRAME_PACKING", value: 0)
!153 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE", value: 1)
!154 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_LINE_ALTERNATIVE", value: 2)
!155 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL", value: 3)
!156 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_L_DEPTH", value: 4)
!157 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH", value: 5)
!158 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_TOP_AND_BOTTOM", value: 6)
!159 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF", value: 8)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_eotf", file: !4, line: 162, baseType: !5, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "HDMI_EOTF_TRADITIONAL_GAMMA_SDR", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "HDMI_EOTF_TRADITIONAL_GAMMA_HDR", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "HDMI_EOTF_SMPTE_ST2084", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "HDMI_EOTF_BT_2100_HLG", value: 3, isUnsigned: true)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_metadata_type", file: !4, line: 158, baseType: !5, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIEnumerator(name: "HDMI_STATIC_METADATA_TYPE1", value: 1, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !170, line: 65, baseType: !5, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173}
!172 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !175, line: 16, baseType: !5, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !181, line: 26, baseType: !5, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !187, line: 44, baseType: !5, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!190 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!191 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !193, line: 343, baseType: !5, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!196 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!197 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!198 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !200, line: 524, baseType: !5, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !203, !204, !205, !206}
!202 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!204 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!205 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!206 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !200, line: 502, baseType: !5, size: 32, elements: !208)
!208 = !{!209, !210, !211, !212}
!209 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!212 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !214, line: 10, baseType: !5, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !217}
!216 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!218 = !{!219, !227}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_any_infoframe", file: !4, line: 65, size: 64, elements: !222)
!222 = !{!223, !224, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !4, line: 66, baseType: !3, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !221, file: !4, line: 67, baseType: !225, size: 8, offset: 32)
!225 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !221, file: !4, line: 68, baseType: !225, size: 8, offset: 40)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!228 = !{i32 7, !"Dwarf Version", i32 4}
!229 = !{i32 2, !"Debug Info Version", i32 3}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"Code Model", i32 2}
!232 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!233 = distinct !DISubprogram(name: "hdmi_avi_infoframe_init", scope: !1, file: !1, line: 57, type: !234, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_avi_infoframe", file: !4, line: 169, size: 544, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !251, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !237, file: !4, line: 170, baseType: !3, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !237, file: !4, line: 171, baseType: !225, size: 8, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !237, file: !4, line: 172, baseType: !225, size: 8, offset: 40)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !237, file: !4, line: 173, baseType: !12, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "scan_mode", scope: !237, file: !4, line: 174, baseType: !22, size: 32, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "colorimetry", scope: !237, file: !4, line: 175, baseType: !28, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect", scope: !237, file: !4, line: 176, baseType: !34, size: 32, offset: 160)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "active_aspect", scope: !237, file: !4, line: 177, baseType: !42, size: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itc", scope: !237, file: !4, line: 178, baseType: !248, size: 8, offset: 224)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !249, line: 30, baseType: !250)
!249 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extended_colorimetry", scope: !237, file: !4, line: 179, baseType: !54, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "quantization_range", scope: !237, file: !4, line: 180, baseType: !64, size: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !237, file: !4, line: 181, baseType: !70, size: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "video_code", scope: !237, file: !4, line: 182, baseType: !225, size: 8, offset: 352)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ycc_quantization_range", scope: !237, file: !4, line: 183, baseType: !76, size: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !237, file: !4, line: 184, baseType: !80, size: 32, offset: 416)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_repeat", scope: !237, file: !4, line: 185, baseType: !225, size: 8, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "top_bar", scope: !237, file: !4, line: 186, baseType: !259, size: 16, offset: 464)
!259 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_bar", scope: !237, file: !4, line: 187, baseType: !259, size: 16, offset: 480)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "left_bar", scope: !237, file: !4, line: 188, baseType: !259, size: 16, offset: 496)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "right_bar", scope: !237, file: !4, line: 189, baseType: !259, size: 16, offset: 512)
!263 = !{}
!264 = !DILocalVariable(name: "frame", arg: 1, scope: !233, file: !1, line: 57, type: !236)
!265 = !DILocation(line: 57, column: 57, scope: !233)
!266 = !DILocation(line: 59, column: 9, scope: !233)
!267 = !DILocation(line: 59, column: 2, scope: !233)
!268 = !DILocation(line: 61, column: 2, scope: !233)
!269 = !DILocation(line: 61, column: 9, scope: !233)
!270 = !DILocation(line: 61, column: 14, scope: !233)
!271 = !DILocation(line: 62, column: 2, scope: !233)
!272 = !DILocation(line: 62, column: 9, scope: !233)
!273 = !DILocation(line: 62, column: 17, scope: !233)
!274 = !DILocation(line: 63, column: 2, scope: !233)
!275 = !DILocation(line: 63, column: 9, scope: !233)
!276 = !DILocation(line: 63, column: 16, scope: !233)
!277 = !DILocation(line: 64, column: 1, scope: !233)
!278 = distinct !DISubprogram(name: "hdmi_avi_infoframe_check", scope: !1, file: !1, line: 89, type: !279, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!279 = !DISubroutineType(types: !280)
!280 = !{!149, !236}
!281 = !DILocalVariable(name: "frame", arg: 1, scope: !278, file: !1, line: 89, type: !236)
!282 = !DILocation(line: 89, column: 57, scope: !278)
!283 = !DILocation(line: 91, column: 39, scope: !278)
!284 = !DILocation(line: 91, column: 9, scope: !278)
!285 = !DILocation(line: 91, column: 2, scope: !278)
!286 = distinct !DISubprogram(name: "hdmi_avi_infoframe_check_only", scope: !1, file: !1, line: 67, type: !287, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!287 = !DISubroutineType(types: !288)
!288 = !{!149, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!291 = !DILocalVariable(name: "frame", arg: 1, scope: !286, file: !1, line: 67, type: !289)
!292 = !DILocation(line: 67, column: 75, scope: !286)
!293 = !DILocation(line: 69, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !286, file: !1, line: 69, column: 6)
!295 = !DILocation(line: 69, column: 13, scope: !294)
!296 = !DILocation(line: 69, column: 18, scope: !294)
!297 = !DILocation(line: 69, column: 45, scope: !294)
!298 = !DILocation(line: 70, column: 6, scope: !294)
!299 = !DILocation(line: 70, column: 13, scope: !294)
!300 = !DILocation(line: 70, column: 21, scope: !294)
!301 = !DILocation(line: 70, column: 26, scope: !294)
!302 = !DILocation(line: 71, column: 6, scope: !294)
!303 = !DILocation(line: 71, column: 13, scope: !294)
!304 = !DILocation(line: 71, column: 20, scope: !294)
!305 = !DILocation(line: 69, column: 6, scope: !286)
!306 = !DILocation(line: 72, column: 3, scope: !294)
!307 = !DILocation(line: 74, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !286, file: !1, line: 74, column: 6)
!309 = !DILocation(line: 74, column: 13, scope: !308)
!310 = !DILocation(line: 74, column: 28, scope: !308)
!311 = !DILocation(line: 74, column: 6, scope: !286)
!312 = !DILocation(line: 75, column: 3, scope: !308)
!313 = !DILocation(line: 77, column: 2, scope: !286)
!314 = !DILocation(line: 78, column: 1, scope: !286)
!315 = distinct !DISubprogram(name: "hdmi_avi_infoframe_pack_only", scope: !1, file: !1, line: 109, type: !316, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !289, !323, !324}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !249, line: 60, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !320, line: 73, baseType: !321)
!320 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !320, line: 15, baseType: !322)
!322 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !249, line: 55, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !320, line: 72, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !320, line: 16, baseType: !327)
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DILocalVariable(name: "frame", arg: 1, scope: !315, file: !1, line: 109, type: !289)
!329 = !DILocation(line: 109, column: 71, scope: !315)
!330 = !DILocalVariable(name: "buffer", arg: 2, scope: !315, file: !1, line: 110, type: !323)
!331 = !DILocation(line: 110, column: 16, scope: !315)
!332 = !DILocalVariable(name: "size", arg: 3, scope: !315, file: !1, line: 110, type: !324)
!333 = !DILocation(line: 110, column: 31, scope: !315)
!334 = !DILocalVariable(name: "ptr", scope: !315, file: !1, line: 112, type: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !337, line: 17, baseType: !338)
!337 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !339, line: 21, baseType: !225)
!339 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DILocation(line: 112, column: 6, scope: !315)
!341 = !DILocation(line: 112, column: 12, scope: !315)
!342 = !DILocalVariable(name: "length", scope: !315, file: !1, line: 113, type: !324)
!343 = !DILocation(line: 113, column: 9, scope: !315)
!344 = !DILocalVariable(name: "ret", scope: !315, file: !1, line: 114, type: !149)
!345 = !DILocation(line: 114, column: 6, scope: !315)
!346 = !DILocation(line: 116, column: 38, scope: !315)
!347 = !DILocation(line: 116, column: 8, scope: !315)
!348 = !DILocation(line: 116, column: 6, scope: !315)
!349 = !DILocation(line: 117, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !315, file: !1, line: 117, column: 6)
!351 = !DILocation(line: 117, column: 6, scope: !315)
!352 = !DILocation(line: 118, column: 10, scope: !350)
!353 = !DILocation(line: 118, column: 3, scope: !350)
!354 = !DILocation(line: 120, column: 40, scope: !315)
!355 = !DILocation(line: 120, column: 47, scope: !315)
!356 = !DILocation(line: 120, column: 38, scope: !315)
!357 = !DILocation(line: 120, column: 11, scope: !315)
!358 = !DILocation(line: 120, column: 9, scope: !315)
!359 = !DILocation(line: 122, column: 6, scope: !360)
!360 = distinct !DILexicalBlock(scope: !315, file: !1, line: 122, column: 6)
!361 = !DILocation(line: 122, column: 13, scope: !360)
!362 = !DILocation(line: 122, column: 11, scope: !360)
!363 = !DILocation(line: 122, column: 6, scope: !315)
!364 = !DILocation(line: 123, column: 3, scope: !360)
!365 = !DILocation(line: 125, column: 9, scope: !315)
!366 = !DILocation(line: 125, column: 20, scope: !315)
!367 = !DILocation(line: 125, column: 2, scope: !315)
!368 = !DILocation(line: 127, column: 11, scope: !315)
!369 = !DILocation(line: 127, column: 18, scope: !315)
!370 = !DILocation(line: 127, column: 2, scope: !315)
!371 = !DILocation(line: 127, column: 9, scope: !315)
!372 = !DILocation(line: 128, column: 11, scope: !315)
!373 = !DILocation(line: 128, column: 18, scope: !315)
!374 = !DILocation(line: 128, column: 2, scope: !315)
!375 = !DILocation(line: 128, column: 9, scope: !315)
!376 = !DILocation(line: 129, column: 11, scope: !315)
!377 = !DILocation(line: 129, column: 18, scope: !315)
!378 = !DILocation(line: 129, column: 2, scope: !315)
!379 = !DILocation(line: 129, column: 9, scope: !315)
!380 = !DILocation(line: 130, column: 2, scope: !315)
!381 = !DILocation(line: 130, column: 9, scope: !315)
!382 = !DILocation(line: 133, column: 6, scope: !315)
!383 = !DILocation(line: 135, column: 13, scope: !315)
!384 = !DILocation(line: 135, column: 20, scope: !315)
!385 = !DILocation(line: 135, column: 31, scope: !315)
!386 = !DILocation(line: 135, column: 38, scope: !315)
!387 = !DILocation(line: 135, column: 47, scope: !315)
!388 = !DILocation(line: 135, column: 54, scope: !315)
!389 = !DILocation(line: 135, column: 64, scope: !315)
!390 = !DILocation(line: 135, column: 44, scope: !315)
!391 = !DILocation(line: 135, column: 11, scope: !315)
!392 = !DILocation(line: 135, column: 2, scope: !315)
!393 = !DILocation(line: 135, column: 9, scope: !315)
!394 = !DILocation(line: 141, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !315, file: !1, line: 141, column: 6)
!396 = !DILocation(line: 141, column: 13, scope: !395)
!397 = !DILocation(line: 141, column: 27, scope: !395)
!398 = !DILocation(line: 141, column: 6, scope: !315)
!399 = !DILocation(line: 142, column: 3, scope: !395)
!400 = !DILocation(line: 142, column: 10, scope: !395)
!401 = !DILocation(line: 145, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !315, file: !1, line: 145, column: 6)
!403 = !DILocation(line: 145, column: 13, scope: !402)
!404 = !DILocation(line: 145, column: 21, scope: !402)
!405 = !DILocation(line: 145, column: 24, scope: !402)
!406 = !DILocation(line: 145, column: 31, scope: !402)
!407 = !DILocation(line: 145, column: 6, scope: !315)
!408 = !DILocation(line: 146, column: 3, scope: !402)
!409 = !DILocation(line: 146, column: 10, scope: !402)
!410 = !DILocation(line: 148, column: 6, scope: !411)
!411 = distinct !DILexicalBlock(scope: !315, file: !1, line: 148, column: 6)
!412 = !DILocation(line: 148, column: 13, scope: !411)
!413 = !DILocation(line: 148, column: 22, scope: !411)
!414 = !DILocation(line: 148, column: 25, scope: !411)
!415 = !DILocation(line: 148, column: 32, scope: !411)
!416 = !DILocation(line: 148, column: 6, scope: !315)
!417 = !DILocation(line: 149, column: 3, scope: !411)
!418 = !DILocation(line: 149, column: 10, scope: !411)
!419 = !DILocation(line: 151, column: 13, scope: !315)
!420 = !DILocation(line: 151, column: 20, scope: !315)
!421 = !DILocation(line: 151, column: 32, scope: !315)
!422 = !DILocation(line: 151, column: 39, scope: !315)
!423 = !DILocation(line: 152, column: 6, scope: !315)
!424 = !DILocation(line: 152, column: 13, scope: !315)
!425 = !DILocation(line: 152, column: 28, scope: !315)
!426 = !DILocation(line: 152, column: 35, scope: !315)
!427 = !DILocation(line: 151, column: 45, scope: !315)
!428 = !DILocation(line: 153, column: 5, scope: !315)
!429 = !DILocation(line: 153, column: 12, scope: !315)
!430 = !DILocation(line: 153, column: 26, scope: !315)
!431 = !DILocation(line: 152, column: 41, scope: !315)
!432 = !DILocation(line: 151, column: 11, scope: !315)
!433 = !DILocation(line: 151, column: 2, scope: !315)
!434 = !DILocation(line: 151, column: 9, scope: !315)
!435 = !DILocation(line: 155, column: 13, scope: !315)
!436 = !DILocation(line: 155, column: 20, scope: !315)
!437 = !DILocation(line: 155, column: 41, scope: !315)
!438 = !DILocation(line: 155, column: 48, scope: !315)
!439 = !DILocation(line: 156, column: 6, scope: !315)
!440 = !DILocation(line: 156, column: 13, scope: !315)
!441 = !DILocation(line: 156, column: 32, scope: !315)
!442 = !DILocation(line: 156, column: 39, scope: !315)
!443 = !DILocation(line: 155, column: 54, scope: !315)
!444 = !DILocation(line: 157, column: 5, scope: !315)
!445 = !DILocation(line: 157, column: 12, scope: !315)
!446 = !DILocation(line: 157, column: 17, scope: !315)
!447 = !DILocation(line: 156, column: 45, scope: !315)
!448 = !DILocation(line: 155, column: 11, scope: !315)
!449 = !DILocation(line: 155, column: 2, scope: !315)
!450 = !DILocation(line: 155, column: 9, scope: !315)
!451 = !DILocation(line: 159, column: 6, scope: !452)
!452 = distinct !DILexicalBlock(scope: !315, file: !1, line: 159, column: 6)
!453 = !DILocation(line: 159, column: 13, scope: !452)
!454 = !DILocation(line: 159, column: 6, scope: !315)
!455 = !DILocation(line: 160, column: 3, scope: !452)
!456 = !DILocation(line: 160, column: 10, scope: !452)
!457 = !DILocation(line: 162, column: 11, scope: !315)
!458 = !DILocation(line: 162, column: 18, scope: !315)
!459 = !DILocation(line: 162, column: 29, scope: !315)
!460 = !DILocation(line: 162, column: 2, scope: !315)
!461 = !DILocation(line: 162, column: 9, scope: !315)
!462 = !DILocation(line: 164, column: 13, scope: !315)
!463 = !DILocation(line: 164, column: 20, scope: !315)
!464 = !DILocation(line: 164, column: 43, scope: !315)
!465 = !DILocation(line: 164, column: 50, scope: !315)
!466 = !DILocation(line: 165, column: 6, scope: !315)
!467 = !DILocation(line: 165, column: 13, scope: !315)
!468 = !DILocation(line: 165, column: 26, scope: !315)
!469 = !DILocation(line: 165, column: 33, scope: !315)
!470 = !DILocation(line: 164, column: 56, scope: !315)
!471 = !DILocation(line: 166, column: 5, scope: !315)
!472 = !DILocation(line: 166, column: 12, scope: !315)
!473 = !DILocation(line: 166, column: 25, scope: !315)
!474 = !DILocation(line: 165, column: 39, scope: !315)
!475 = !DILocation(line: 164, column: 11, scope: !315)
!476 = !DILocation(line: 164, column: 2, scope: !315)
!477 = !DILocation(line: 164, column: 9, scope: !315)
!478 = !DILocation(line: 168, column: 11, scope: !315)
!479 = !DILocation(line: 168, column: 18, scope: !315)
!480 = !DILocation(line: 168, column: 26, scope: !315)
!481 = !DILocation(line: 168, column: 2, scope: !315)
!482 = !DILocation(line: 168, column: 9, scope: !315)
!483 = !DILocation(line: 169, column: 12, scope: !315)
!484 = !DILocation(line: 169, column: 19, scope: !315)
!485 = !DILocation(line: 169, column: 27, scope: !315)
!486 = !DILocation(line: 169, column: 33, scope: !315)
!487 = !DILocation(line: 169, column: 11, scope: !315)
!488 = !DILocation(line: 169, column: 2, scope: !315)
!489 = !DILocation(line: 169, column: 9, scope: !315)
!490 = !DILocation(line: 170, column: 11, scope: !315)
!491 = !DILocation(line: 170, column: 18, scope: !315)
!492 = !DILocation(line: 170, column: 29, scope: !315)
!493 = !DILocation(line: 170, column: 2, scope: !315)
!494 = !DILocation(line: 170, column: 9, scope: !315)
!495 = !DILocation(line: 171, column: 12, scope: !315)
!496 = !DILocation(line: 171, column: 19, scope: !315)
!497 = !DILocation(line: 171, column: 30, scope: !315)
!498 = !DILocation(line: 171, column: 36, scope: !315)
!499 = !DILocation(line: 171, column: 11, scope: !315)
!500 = !DILocation(line: 171, column: 2, scope: !315)
!501 = !DILocation(line: 171, column: 9, scope: !315)
!502 = !DILocation(line: 172, column: 11, scope: !315)
!503 = !DILocation(line: 172, column: 18, scope: !315)
!504 = !DILocation(line: 172, column: 27, scope: !315)
!505 = !DILocation(line: 172, column: 2, scope: !315)
!506 = !DILocation(line: 172, column: 9, scope: !315)
!507 = !DILocation(line: 173, column: 13, scope: !315)
!508 = !DILocation(line: 173, column: 20, scope: !315)
!509 = !DILocation(line: 173, column: 29, scope: !315)
!510 = !DILocation(line: 173, column: 35, scope: !315)
!511 = !DILocation(line: 173, column: 12, scope: !315)
!512 = !DILocation(line: 173, column: 2, scope: !315)
!513 = !DILocation(line: 173, column: 10, scope: !315)
!514 = !DILocation(line: 174, column: 12, scope: !315)
!515 = !DILocation(line: 174, column: 19, scope: !315)
!516 = !DILocation(line: 174, column: 29, scope: !315)
!517 = !DILocation(line: 174, column: 2, scope: !315)
!518 = !DILocation(line: 174, column: 10, scope: !315)
!519 = !DILocation(line: 175, column: 13, scope: !315)
!520 = !DILocation(line: 175, column: 20, scope: !315)
!521 = !DILocation(line: 175, column: 30, scope: !315)
!522 = !DILocation(line: 175, column: 36, scope: !315)
!523 = !DILocation(line: 175, column: 12, scope: !315)
!524 = !DILocation(line: 175, column: 2, scope: !315)
!525 = !DILocation(line: 175, column: 10, scope: !315)
!526 = !DILocation(line: 177, column: 30, scope: !315)
!527 = !DILocation(line: 177, column: 38, scope: !315)
!528 = !DILocation(line: 177, column: 2, scope: !315)
!529 = !DILocation(line: 179, column: 9, scope: !315)
!530 = !DILocation(line: 179, column: 2, scope: !315)
!531 = !DILocation(line: 180, column: 1, scope: !315)
!532 = distinct !DISubprogram(name: "hdmi_infoframe_set_checksum", scope: !1, file: !1, line: 46, type: !533, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !323, !324}
!535 = !DILocalVariable(name: "buffer", arg: 1, scope: !532, file: !1, line: 46, type: !323)
!536 = !DILocation(line: 46, column: 47, scope: !532)
!537 = !DILocalVariable(name: "size", arg: 2, scope: !532, file: !1, line: 46, type: !324)
!538 = !DILocation(line: 46, column: 62, scope: !532)
!539 = !DILocalVariable(name: "ptr", scope: !532, file: !1, line: 48, type: !335)
!540 = !DILocation(line: 48, column: 6, scope: !532)
!541 = !DILocation(line: 48, column: 12, scope: !532)
!542 = !DILocation(line: 50, column: 35, scope: !532)
!543 = !DILocation(line: 50, column: 43, scope: !532)
!544 = !DILocation(line: 50, column: 11, scope: !532)
!545 = !DILocation(line: 50, column: 2, scope: !532)
!546 = !DILocation(line: 50, column: 9, scope: !532)
!547 = !DILocation(line: 51, column: 1, scope: !532)
!548 = distinct !DISubprogram(name: "hdmi_avi_infoframe_pack", scope: !1, file: !1, line: 200, type: !549, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!549 = !DISubroutineType(types: !550)
!550 = !{!318, !236, !323, !324}
!551 = !DILocalVariable(name: "frame", arg: 1, scope: !548, file: !1, line: 200, type: !236)
!552 = !DILocation(line: 200, column: 60, scope: !548)
!553 = !DILocalVariable(name: "buffer", arg: 2, scope: !548, file: !1, line: 201, type: !323)
!554 = !DILocation(line: 201, column: 11, scope: !548)
!555 = !DILocalVariable(name: "size", arg: 3, scope: !548, file: !1, line: 201, type: !324)
!556 = !DILocation(line: 201, column: 26, scope: !548)
!557 = !DILocalVariable(name: "ret", scope: !548, file: !1, line: 203, type: !149)
!558 = !DILocation(line: 203, column: 6, scope: !548)
!559 = !DILocation(line: 205, column: 33, scope: !548)
!560 = !DILocation(line: 205, column: 8, scope: !548)
!561 = !DILocation(line: 205, column: 6, scope: !548)
!562 = !DILocation(line: 206, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !548, file: !1, line: 206, column: 6)
!564 = !DILocation(line: 206, column: 6, scope: !548)
!565 = !DILocation(line: 207, column: 10, scope: !563)
!566 = !DILocation(line: 207, column: 3, scope: !563)
!567 = !DILocation(line: 209, column: 38, scope: !548)
!568 = !DILocation(line: 209, column: 45, scope: !548)
!569 = !DILocation(line: 209, column: 53, scope: !548)
!570 = !DILocation(line: 209, column: 9, scope: !548)
!571 = !DILocation(line: 209, column: 2, scope: !548)
!572 = !DILocation(line: 210, column: 1, scope: !548)
!573 = distinct !DISubprogram(name: "hdmi_spd_infoframe_init", scope: !1, file: !1, line: 221, type: !574, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!574 = !DISubroutineType(types: !575)
!575 = !{!149, !576, !592, !592}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_spd_infoframe", file: !4, line: 243, size: 288, elements: !578)
!578 = !{!579, !580, !581, !582, !587, !591}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !4, line: 244, baseType: !3, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !577, file: !4, line: 245, baseType: !225, size: 8, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !577, file: !4, line: 246, baseType: !225, size: 8, offset: 40)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !577, file: !4, line: 247, baseType: !583, size: 64, offset: 48)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 64, elements: !585)
!584 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!585 = !{!586}
!586 = !DISubrange(count: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !577, file: !4, line: 248, baseType: !588, size: 128, offset: 112)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 128, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 16)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sdi", scope: !577, file: !4, line: 249, baseType: !86, size: 32, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!594 = !DILocalVariable(name: "frame", arg: 1, scope: !573, file: !1, line: 221, type: !576)
!595 = !DILocation(line: 221, column: 56, scope: !573)
!596 = !DILocalVariable(name: "vendor", arg: 2, scope: !573, file: !1, line: 222, type: !592)
!597 = !DILocation(line: 222, column: 20, scope: !573)
!598 = !DILocalVariable(name: "product", arg: 3, scope: !573, file: !1, line: 222, type: !592)
!599 = !DILocation(line: 222, column: 40, scope: !573)
!600 = !DILocation(line: 224, column: 9, scope: !573)
!601 = !DILocation(line: 224, column: 2, scope: !573)
!602 = !DILocation(line: 226, column: 2, scope: !573)
!603 = !DILocation(line: 226, column: 9, scope: !573)
!604 = !DILocation(line: 226, column: 14, scope: !573)
!605 = !DILocation(line: 227, column: 2, scope: !573)
!606 = !DILocation(line: 227, column: 9, scope: !573)
!607 = !DILocation(line: 227, column: 17, scope: !573)
!608 = !DILocation(line: 228, column: 2, scope: !573)
!609 = !DILocation(line: 228, column: 9, scope: !573)
!610 = !DILocation(line: 228, column: 16, scope: !573)
!611 = !DILocation(line: 230, column: 10, scope: !573)
!612 = !DILocation(line: 230, column: 17, scope: !573)
!613 = !DILocation(line: 230, column: 25, scope: !573)
!614 = !DILocation(line: 230, column: 2, scope: !573)
!615 = !DILocation(line: 231, column: 10, scope: !573)
!616 = !DILocation(line: 231, column: 17, scope: !573)
!617 = !DILocation(line: 231, column: 26, scope: !573)
!618 = !DILocation(line: 231, column: 2, scope: !573)
!619 = !DILocation(line: 233, column: 2, scope: !573)
!620 = distinct !DISubprogram(name: "hdmi_spd_infoframe_check", scope: !1, file: !1, line: 256, type: !621, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!621 = !DISubroutineType(types: !622)
!622 = !{!149, !576}
!623 = !DILocalVariable(name: "frame", arg: 1, scope: !620, file: !1, line: 256, type: !576)
!624 = !DILocation(line: 256, column: 57, scope: !620)
!625 = !DILocation(line: 258, column: 39, scope: !620)
!626 = !DILocation(line: 258, column: 9, scope: !620)
!627 = !DILocation(line: 258, column: 2, scope: !620)
!628 = distinct !DISubprogram(name: "hdmi_spd_infoframe_check_only", scope: !1, file: !1, line: 237, type: !629, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!629 = !DISubroutineType(types: !630)
!630 = !{!149, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!633 = !DILocalVariable(name: "frame", arg: 1, scope: !628, file: !1, line: 237, type: !631)
!634 = !DILocation(line: 237, column: 75, scope: !628)
!635 = !DILocation(line: 239, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !1, line: 239, column: 6)
!637 = !DILocation(line: 239, column: 13, scope: !636)
!638 = !DILocation(line: 239, column: 18, scope: !636)
!639 = !DILocation(line: 239, column: 45, scope: !636)
!640 = !DILocation(line: 240, column: 6, scope: !636)
!641 = !DILocation(line: 240, column: 13, scope: !636)
!642 = !DILocation(line: 240, column: 21, scope: !636)
!643 = !DILocation(line: 240, column: 26, scope: !636)
!644 = !DILocation(line: 241, column: 6, scope: !636)
!645 = !DILocation(line: 241, column: 13, scope: !636)
!646 = !DILocation(line: 241, column: 20, scope: !636)
!647 = !DILocation(line: 239, column: 6, scope: !628)
!648 = !DILocation(line: 242, column: 3, scope: !636)
!649 = !DILocation(line: 244, column: 2, scope: !628)
!650 = !DILocation(line: 245, column: 1, scope: !628)
!651 = distinct !DISubprogram(name: "hdmi_spd_infoframe_pack_only", scope: !1, file: !1, line: 276, type: !652, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!652 = !DISubroutineType(types: !653)
!653 = !{!318, !631, !323, !324}
!654 = !DILocalVariable(name: "frame", arg: 1, scope: !651, file: !1, line: 276, type: !631)
!655 = !DILocation(line: 276, column: 71, scope: !651)
!656 = !DILocalVariable(name: "buffer", arg: 2, scope: !651, file: !1, line: 277, type: !323)
!657 = !DILocation(line: 277, column: 16, scope: !651)
!658 = !DILocalVariable(name: "size", arg: 3, scope: !651, file: !1, line: 277, type: !324)
!659 = !DILocation(line: 277, column: 31, scope: !651)
!660 = !DILocalVariable(name: "ptr", scope: !651, file: !1, line: 279, type: !335)
!661 = !DILocation(line: 279, column: 6, scope: !651)
!662 = !DILocation(line: 279, column: 12, scope: !651)
!663 = !DILocalVariable(name: "length", scope: !651, file: !1, line: 280, type: !324)
!664 = !DILocation(line: 280, column: 9, scope: !651)
!665 = !DILocalVariable(name: "ret", scope: !651, file: !1, line: 281, type: !149)
!666 = !DILocation(line: 281, column: 6, scope: !651)
!667 = !DILocation(line: 283, column: 38, scope: !651)
!668 = !DILocation(line: 283, column: 8, scope: !651)
!669 = !DILocation(line: 283, column: 6, scope: !651)
!670 = !DILocation(line: 284, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !651, file: !1, line: 284, column: 6)
!672 = !DILocation(line: 284, column: 6, scope: !651)
!673 = !DILocation(line: 285, column: 10, scope: !671)
!674 = !DILocation(line: 285, column: 3, scope: !671)
!675 = !DILocation(line: 287, column: 40, scope: !651)
!676 = !DILocation(line: 287, column: 47, scope: !651)
!677 = !DILocation(line: 287, column: 38, scope: !651)
!678 = !DILocation(line: 287, column: 11, scope: !651)
!679 = !DILocation(line: 287, column: 9, scope: !651)
!680 = !DILocation(line: 289, column: 6, scope: !681)
!681 = distinct !DILexicalBlock(scope: !651, file: !1, line: 289, column: 6)
!682 = !DILocation(line: 289, column: 13, scope: !681)
!683 = !DILocation(line: 289, column: 11, scope: !681)
!684 = !DILocation(line: 289, column: 6, scope: !651)
!685 = !DILocation(line: 290, column: 3, scope: !681)
!686 = !DILocation(line: 292, column: 9, scope: !651)
!687 = !DILocation(line: 292, column: 20, scope: !651)
!688 = !DILocation(line: 292, column: 2, scope: !651)
!689 = !DILocation(line: 294, column: 11, scope: !651)
!690 = !DILocation(line: 294, column: 18, scope: !651)
!691 = !DILocation(line: 294, column: 2, scope: !651)
!692 = !DILocation(line: 294, column: 9, scope: !651)
!693 = !DILocation(line: 295, column: 11, scope: !651)
!694 = !DILocation(line: 295, column: 18, scope: !651)
!695 = !DILocation(line: 295, column: 2, scope: !651)
!696 = !DILocation(line: 295, column: 9, scope: !651)
!697 = !DILocation(line: 296, column: 11, scope: !651)
!698 = !DILocation(line: 296, column: 18, scope: !651)
!699 = !DILocation(line: 296, column: 2, scope: !651)
!700 = !DILocation(line: 296, column: 9, scope: !651)
!701 = !DILocation(line: 297, column: 2, scope: !651)
!702 = !DILocation(line: 297, column: 9, scope: !651)
!703 = !DILocation(line: 300, column: 6, scope: !651)
!704 = !DILocation(line: 302, column: 9, scope: !651)
!705 = !DILocation(line: 302, column: 14, scope: !651)
!706 = !DILocation(line: 302, column: 21, scope: !651)
!707 = !DILocation(line: 302, column: 2, scope: !651)
!708 = !DILocation(line: 303, column: 9, scope: !651)
!709 = !DILocation(line: 303, column: 13, scope: !651)
!710 = !DILocation(line: 303, column: 18, scope: !651)
!711 = !DILocation(line: 303, column: 25, scope: !651)
!712 = !DILocation(line: 303, column: 2, scope: !651)
!713 = !DILocation(line: 305, column: 12, scope: !651)
!714 = !DILocation(line: 305, column: 19, scope: !651)
!715 = !DILocation(line: 305, column: 2, scope: !651)
!716 = !DILocation(line: 305, column: 10, scope: !651)
!717 = !DILocation(line: 307, column: 30, scope: !651)
!718 = !DILocation(line: 307, column: 38, scope: !651)
!719 = !DILocation(line: 307, column: 2, scope: !651)
!720 = !DILocation(line: 309, column: 9, scope: !651)
!721 = !DILocation(line: 309, column: 2, scope: !651)
!722 = !DILocation(line: 310, column: 1, scope: !651)
!723 = distinct !DISubprogram(name: "hdmi_spd_infoframe_pack", scope: !1, file: !1, line: 330, type: !724, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!724 = !DISubroutineType(types: !725)
!725 = !{!318, !576, !323, !324}
!726 = !DILocalVariable(name: "frame", arg: 1, scope: !723, file: !1, line: 330, type: !576)
!727 = !DILocation(line: 330, column: 60, scope: !723)
!728 = !DILocalVariable(name: "buffer", arg: 2, scope: !723, file: !1, line: 331, type: !323)
!729 = !DILocation(line: 331, column: 11, scope: !723)
!730 = !DILocalVariable(name: "size", arg: 3, scope: !723, file: !1, line: 331, type: !324)
!731 = !DILocation(line: 331, column: 26, scope: !723)
!732 = !DILocalVariable(name: "ret", scope: !723, file: !1, line: 333, type: !149)
!733 = !DILocation(line: 333, column: 6, scope: !723)
!734 = !DILocation(line: 335, column: 33, scope: !723)
!735 = !DILocation(line: 335, column: 8, scope: !723)
!736 = !DILocation(line: 335, column: 6, scope: !723)
!737 = !DILocation(line: 336, column: 6, scope: !738)
!738 = distinct !DILexicalBlock(scope: !723, file: !1, line: 336, column: 6)
!739 = !DILocation(line: 336, column: 6, scope: !723)
!740 = !DILocation(line: 337, column: 10, scope: !738)
!741 = !DILocation(line: 337, column: 3, scope: !738)
!742 = !DILocation(line: 339, column: 38, scope: !723)
!743 = !DILocation(line: 339, column: 45, scope: !723)
!744 = !DILocation(line: 339, column: 53, scope: !723)
!745 = !DILocation(line: 339, column: 9, scope: !723)
!746 = !DILocation(line: 339, column: 2, scope: !723)
!747 = !DILocation(line: 340, column: 1, scope: !723)
!748 = distinct !DISubprogram(name: "hdmi_audio_infoframe_init", scope: !1, file: !1, line: 349, type: !749, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!749 = !DISubroutineType(types: !750)
!750 = !{!149, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_audio_infoframe", file: !4, line: 319, size: 224, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !4, line: 320, baseType: !3, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !752, file: !4, line: 321, baseType: !225, size: 8, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !752, file: !4, line: 322, baseType: !225, size: 8, offset: 40)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !752, file: !4, line: 323, baseType: !225, size: 8, offset: 48)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "coding_type", scope: !752, file: !4, line: 324, baseType: !102, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sample_size", scope: !752, file: !4, line: 325, baseType: !120, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sample_frequency", scope: !752, file: !4, line: 326, baseType: !126, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "coding_type_ext", scope: !752, file: !4, line: 327, baseType: !136, size: 32, offset: 160)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "channel_allocation", scope: !752, file: !4, line: 328, baseType: !225, size: 8, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "level_shift_value", scope: !752, file: !4, line: 329, baseType: !225, size: 8, offset: 200)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "downmix_inhibit", scope: !752, file: !4, line: 330, baseType: !248, size: 8, offset: 208)
!765 = !DILocalVariable(name: "frame", arg: 1, scope: !748, file: !1, line: 349, type: !751)
!766 = !DILocation(line: 349, column: 60, scope: !748)
!767 = !DILocation(line: 351, column: 9, scope: !748)
!768 = !DILocation(line: 351, column: 2, scope: !748)
!769 = !DILocation(line: 353, column: 2, scope: !748)
!770 = !DILocation(line: 353, column: 9, scope: !748)
!771 = !DILocation(line: 353, column: 14, scope: !748)
!772 = !DILocation(line: 354, column: 2, scope: !748)
!773 = !DILocation(line: 354, column: 9, scope: !748)
!774 = !DILocation(line: 354, column: 17, scope: !748)
!775 = !DILocation(line: 355, column: 2, scope: !748)
!776 = !DILocation(line: 355, column: 9, scope: !748)
!777 = !DILocation(line: 355, column: 16, scope: !748)
!778 = !DILocation(line: 357, column: 2, scope: !748)
!779 = distinct !DISubprogram(name: "hdmi_audio_infoframe_check", scope: !1, file: !1, line: 380, type: !749, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!780 = !DILocalVariable(name: "frame", arg: 1, scope: !779, file: !1, line: 380, type: !751)
!781 = !DILocation(line: 380, column: 61, scope: !779)
!782 = !DILocation(line: 382, column: 41, scope: !779)
!783 = !DILocation(line: 382, column: 9, scope: !779)
!784 = !DILocation(line: 382, column: 2, scope: !779)
!785 = distinct !DISubprogram(name: "hdmi_audio_infoframe_check_only", scope: !1, file: !1, line: 361, type: !786, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!786 = !DISubroutineType(types: !787)
!787 = !{!149, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!790 = !DILocalVariable(name: "frame", arg: 1, scope: !785, file: !1, line: 361, type: !788)
!791 = !DILocation(line: 361, column: 79, scope: !785)
!792 = !DILocation(line: 363, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !785, file: !1, line: 363, column: 6)
!794 = !DILocation(line: 363, column: 13, scope: !793)
!795 = !DILocation(line: 363, column: 18, scope: !793)
!796 = !DILocation(line: 363, column: 47, scope: !793)
!797 = !DILocation(line: 364, column: 6, scope: !793)
!798 = !DILocation(line: 364, column: 13, scope: !793)
!799 = !DILocation(line: 364, column: 21, scope: !793)
!800 = !DILocation(line: 364, column: 26, scope: !793)
!801 = !DILocation(line: 365, column: 6, scope: !793)
!802 = !DILocation(line: 365, column: 13, scope: !793)
!803 = !DILocation(line: 365, column: 20, scope: !793)
!804 = !DILocation(line: 363, column: 6, scope: !785)
!805 = !DILocation(line: 366, column: 3, scope: !793)
!806 = !DILocation(line: 368, column: 2, scope: !785)
!807 = !DILocation(line: 369, column: 1, scope: !785)
!808 = distinct !DISubprogram(name: "hdmi_audio_infoframe_pack_only", scope: !1, file: !1, line: 400, type: !809, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!809 = !DISubroutineType(types: !810)
!810 = !{!318, !788, !323, !324}
!811 = !DILocalVariable(name: "frame", arg: 1, scope: !808, file: !1, line: 400, type: !788)
!812 = !DILocation(line: 400, column: 75, scope: !808)
!813 = !DILocalVariable(name: "buffer", arg: 2, scope: !808, file: !1, line: 401, type: !323)
!814 = !DILocation(line: 401, column: 18, scope: !808)
!815 = !DILocalVariable(name: "size", arg: 3, scope: !808, file: !1, line: 401, type: !324)
!816 = !DILocation(line: 401, column: 33, scope: !808)
!817 = !DILocalVariable(name: "channels", scope: !808, file: !1, line: 403, type: !225)
!818 = !DILocation(line: 403, column: 16, scope: !808)
!819 = !DILocalVariable(name: "ptr", scope: !808, file: !1, line: 404, type: !335)
!820 = !DILocation(line: 404, column: 6, scope: !808)
!821 = !DILocation(line: 404, column: 12, scope: !808)
!822 = !DILocalVariable(name: "length", scope: !808, file: !1, line: 405, type: !324)
!823 = !DILocation(line: 405, column: 9, scope: !808)
!824 = !DILocalVariable(name: "ret", scope: !808, file: !1, line: 406, type: !149)
!825 = !DILocation(line: 406, column: 6, scope: !808)
!826 = !DILocation(line: 408, column: 40, scope: !808)
!827 = !DILocation(line: 408, column: 8, scope: !808)
!828 = !DILocation(line: 408, column: 6, scope: !808)
!829 = !DILocation(line: 409, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !808, file: !1, line: 409, column: 6)
!831 = !DILocation(line: 409, column: 6, scope: !808)
!832 = !DILocation(line: 410, column: 10, scope: !830)
!833 = !DILocation(line: 410, column: 3, scope: !830)
!834 = !DILocation(line: 412, column: 40, scope: !808)
!835 = !DILocation(line: 412, column: 47, scope: !808)
!836 = !DILocation(line: 412, column: 38, scope: !808)
!837 = !DILocation(line: 412, column: 11, scope: !808)
!838 = !DILocation(line: 412, column: 9, scope: !808)
!839 = !DILocation(line: 414, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !808, file: !1, line: 414, column: 6)
!841 = !DILocation(line: 414, column: 13, scope: !840)
!842 = !DILocation(line: 414, column: 11, scope: !840)
!843 = !DILocation(line: 414, column: 6, scope: !808)
!844 = !DILocation(line: 415, column: 3, scope: !840)
!845 = !DILocation(line: 417, column: 9, scope: !808)
!846 = !DILocation(line: 417, column: 20, scope: !808)
!847 = !DILocation(line: 417, column: 2, scope: !808)
!848 = !DILocation(line: 419, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !808, file: !1, line: 419, column: 6)
!850 = !DILocation(line: 419, column: 13, scope: !849)
!851 = !DILocation(line: 419, column: 22, scope: !849)
!852 = !DILocation(line: 419, column: 6, scope: !808)
!853 = !DILocation(line: 420, column: 14, scope: !849)
!854 = !DILocation(line: 420, column: 21, scope: !849)
!855 = !DILocation(line: 420, column: 30, scope: !849)
!856 = !DILocation(line: 420, column: 12, scope: !849)
!857 = !DILocation(line: 420, column: 3, scope: !849)
!858 = !DILocation(line: 422, column: 12, scope: !849)
!859 = !DILocation(line: 424, column: 11, scope: !808)
!860 = !DILocation(line: 424, column: 18, scope: !808)
!861 = !DILocation(line: 424, column: 2, scope: !808)
!862 = !DILocation(line: 424, column: 9, scope: !808)
!863 = !DILocation(line: 425, column: 11, scope: !808)
!864 = !DILocation(line: 425, column: 18, scope: !808)
!865 = !DILocation(line: 425, column: 2, scope: !808)
!866 = !DILocation(line: 425, column: 9, scope: !808)
!867 = !DILocation(line: 426, column: 11, scope: !808)
!868 = !DILocation(line: 426, column: 18, scope: !808)
!869 = !DILocation(line: 426, column: 2, scope: !808)
!870 = !DILocation(line: 426, column: 9, scope: !808)
!871 = !DILocation(line: 427, column: 2, scope: !808)
!872 = !DILocation(line: 427, column: 9, scope: !808)
!873 = !DILocation(line: 430, column: 6, scope: !808)
!874 = !DILocation(line: 432, column: 13, scope: !808)
!875 = !DILocation(line: 432, column: 20, scope: !808)
!876 = !DILocation(line: 432, column: 32, scope: !808)
!877 = !DILocation(line: 432, column: 39, scope: !808)
!878 = !DILocation(line: 432, column: 48, scope: !808)
!879 = !DILocation(line: 432, column: 57, scope: !808)
!880 = !DILocation(line: 432, column: 45, scope: !808)
!881 = !DILocation(line: 432, column: 11, scope: !808)
!882 = !DILocation(line: 432, column: 2, scope: !808)
!883 = !DILocation(line: 432, column: 9, scope: !808)
!884 = !DILocation(line: 433, column: 13, scope: !808)
!885 = !DILocation(line: 433, column: 20, scope: !808)
!886 = !DILocation(line: 433, column: 37, scope: !808)
!887 = !DILocation(line: 433, column: 44, scope: !808)
!888 = !DILocation(line: 434, column: 5, scope: !808)
!889 = !DILocation(line: 434, column: 12, scope: !808)
!890 = !DILocation(line: 434, column: 24, scope: !808)
!891 = !DILocation(line: 433, column: 50, scope: !808)
!892 = !DILocation(line: 433, column: 11, scope: !808)
!893 = !DILocation(line: 433, column: 2, scope: !808)
!894 = !DILocation(line: 433, column: 9, scope: !808)
!895 = !DILocation(line: 435, column: 11, scope: !808)
!896 = !DILocation(line: 435, column: 18, scope: !808)
!897 = !DILocation(line: 435, column: 34, scope: !808)
!898 = !DILocation(line: 435, column: 2, scope: !808)
!899 = !DILocation(line: 435, column: 9, scope: !808)
!900 = !DILocation(line: 436, column: 11, scope: !808)
!901 = !DILocation(line: 436, column: 18, scope: !808)
!902 = !DILocation(line: 436, column: 2, scope: !808)
!903 = !DILocation(line: 436, column: 9, scope: !808)
!904 = !DILocation(line: 437, column: 12, scope: !808)
!905 = !DILocation(line: 437, column: 19, scope: !808)
!906 = !DILocation(line: 437, column: 37, scope: !808)
!907 = !DILocation(line: 437, column: 44, scope: !808)
!908 = !DILocation(line: 437, column: 11, scope: !808)
!909 = !DILocation(line: 437, column: 2, scope: !808)
!910 = !DILocation(line: 437, column: 9, scope: !808)
!911 = !DILocation(line: 439, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !808, file: !1, line: 439, column: 6)
!913 = !DILocation(line: 439, column: 13, scope: !912)
!914 = !DILocation(line: 439, column: 6, scope: !808)
!915 = !DILocation(line: 440, column: 3, scope: !912)
!916 = !DILocation(line: 440, column: 10, scope: !912)
!917 = !DILocation(line: 442, column: 30, scope: !808)
!918 = !DILocation(line: 442, column: 38, scope: !808)
!919 = !DILocation(line: 442, column: 2, scope: !808)
!920 = !DILocation(line: 444, column: 9, scope: !808)
!921 = !DILocation(line: 444, column: 2, scope: !808)
!922 = !DILocation(line: 445, column: 1, scope: !808)
!923 = distinct !DISubprogram(name: "hdmi_audio_infoframe_pack", scope: !1, file: !1, line: 465, type: !924, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!924 = !DISubroutineType(types: !925)
!925 = !{!318, !751, !323, !324}
!926 = !DILocalVariable(name: "frame", arg: 1, scope: !923, file: !1, line: 465, type: !751)
!927 = !DILocation(line: 465, column: 64, scope: !923)
!928 = !DILocalVariable(name: "buffer", arg: 2, scope: !923, file: !1, line: 466, type: !323)
!929 = !DILocation(line: 466, column: 13, scope: !923)
!930 = !DILocalVariable(name: "size", arg: 3, scope: !923, file: !1, line: 466, type: !324)
!931 = !DILocation(line: 466, column: 28, scope: !923)
!932 = !DILocalVariable(name: "ret", scope: !923, file: !1, line: 468, type: !149)
!933 = !DILocation(line: 468, column: 6, scope: !923)
!934 = !DILocation(line: 470, column: 35, scope: !923)
!935 = !DILocation(line: 470, column: 8, scope: !923)
!936 = !DILocation(line: 470, column: 6, scope: !923)
!937 = !DILocation(line: 471, column: 6, scope: !938)
!938 = distinct !DILexicalBlock(scope: !923, file: !1, line: 471, column: 6)
!939 = !DILocation(line: 471, column: 6, scope: !923)
!940 = !DILocation(line: 472, column: 10, scope: !938)
!941 = !DILocation(line: 472, column: 3, scope: !938)
!942 = !DILocation(line: 474, column: 40, scope: !923)
!943 = !DILocation(line: 474, column: 47, scope: !923)
!944 = !DILocation(line: 474, column: 55, scope: !923)
!945 = !DILocation(line: 474, column: 9, scope: !923)
!946 = !DILocation(line: 474, column: 2, scope: !923)
!947 = !DILocation(line: 475, column: 1, scope: !923)
!948 = distinct !DISubprogram(name: "hdmi_vendor_infoframe_init", scope: !1, file: !1, line: 484, type: !949, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!949 = !DISubroutineType(types: !950)
!950 = !{!149, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_vendor_infoframe", file: !4, line: 354, size: 192, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !4, line: 355, baseType: !3, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !952, file: !4, line: 356, baseType: !225, size: 8, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !952, file: !4, line: 357, baseType: !225, size: 8, offset: 40)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "oui", scope: !952, file: !4, line: 358, baseType: !5, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vic", scope: !952, file: !4, line: 359, baseType: !336, size: 8, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s3d_struct", scope: !952, file: !4, line: 360, baseType: !148, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s3d_ext_data", scope: !952, file: !4, line: 361, baseType: !5, size: 32, offset: 160)
!961 = !DILocalVariable(name: "frame", arg: 1, scope: !948, file: !1, line: 484, type: !951)
!962 = !DILocation(line: 484, column: 62, scope: !948)
!963 = !DILocation(line: 486, column: 9, scope: !948)
!964 = !DILocation(line: 486, column: 2, scope: !948)
!965 = !DILocation(line: 488, column: 2, scope: !948)
!966 = !DILocation(line: 488, column: 9, scope: !948)
!967 = !DILocation(line: 488, column: 14, scope: !948)
!968 = !DILocation(line: 489, column: 2, scope: !948)
!969 = !DILocation(line: 489, column: 9, scope: !948)
!970 = !DILocation(line: 489, column: 17, scope: !948)
!971 = !DILocation(line: 491, column: 2, scope: !948)
!972 = !DILocation(line: 491, column: 9, scope: !948)
!973 = !DILocation(line: 491, column: 13, scope: !948)
!974 = !DILocation(line: 497, column: 2, scope: !948)
!975 = !DILocation(line: 497, column: 9, scope: !948)
!976 = !DILocation(line: 497, column: 20, scope: !948)
!977 = !DILocation(line: 498, column: 2, scope: !948)
!978 = !DILocation(line: 498, column: 9, scope: !948)
!979 = !DILocation(line: 498, column: 16, scope: !948)
!980 = !DILocation(line: 500, column: 2, scope: !948)
!981 = distinct !DISubprogram(name: "hdmi_vendor_infoframe_check", scope: !1, file: !1, line: 541, type: !949, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!982 = !DILocalVariable(name: "frame", arg: 1, scope: !981, file: !1, line: 541, type: !951)
!983 = !DILocation(line: 541, column: 63, scope: !981)
!984 = !DILocation(line: 543, column: 47, scope: !981)
!985 = !DILocation(line: 543, column: 18, scope: !981)
!986 = !DILocation(line: 543, column: 2, scope: !981)
!987 = !DILocation(line: 543, column: 9, scope: !981)
!988 = !DILocation(line: 543, column: 16, scope: !981)
!989 = !DILocation(line: 545, column: 42, scope: !981)
!990 = !DILocation(line: 545, column: 9, scope: !981)
!991 = !DILocation(line: 545, column: 2, scope: !981)
!992 = distinct !DISubprogram(name: "hdmi_vendor_infoframe_length", scope: !1, file: !1, line: 504, type: !993, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!993 = !DISubroutineType(types: !994)
!994 = !{!149, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!997 = !DILocalVariable(name: "frame", arg: 1, scope: !992, file: !1, line: 504, type: !995)
!998 = !DILocation(line: 504, column: 77, scope: !992)
!999 = !DILocation(line: 507, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !992, file: !1, line: 507, column: 6)
!1001 = !DILocation(line: 507, column: 13, scope: !1000)
!1002 = !DILocation(line: 507, column: 24, scope: !1000)
!1003 = !DILocation(line: 507, column: 6, scope: !992)
!1004 = !DILocation(line: 508, column: 3, scope: !1000)
!1005 = !DILocation(line: 509, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 509, column: 11)
!1007 = !DILocation(line: 509, column: 18, scope: !1006)
!1008 = !DILocation(line: 509, column: 22, scope: !1006)
!1009 = !DILocation(line: 509, column: 27, scope: !1006)
!1010 = !DILocation(line: 509, column: 30, scope: !1006)
!1011 = !DILocation(line: 509, column: 37, scope: !1006)
!1012 = !DILocation(line: 509, column: 48, scope: !1006)
!1013 = !DILocation(line: 509, column: 11, scope: !1000)
!1014 = !DILocation(line: 510, column: 3, scope: !1006)
!1015 = !DILocation(line: 512, column: 3, scope: !1006)
!1016 = !DILocation(line: 513, column: 1, scope: !992)
!1017 = distinct !DISubprogram(name: "hdmi_vendor_infoframe_check_only", scope: !1, file: !1, line: 515, type: !993, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1018 = !DILocalVariable(name: "frame", arg: 1, scope: !1017, file: !1, line: 515, type: !995)
!1019 = !DILocation(line: 515, column: 81, scope: !1017)
!1020 = !DILocation(line: 517, column: 6, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 517, column: 6)
!1022 = !DILocation(line: 517, column: 13, scope: !1021)
!1023 = !DILocation(line: 517, column: 18, scope: !1021)
!1024 = !DILocation(line: 517, column: 48, scope: !1021)
!1025 = !DILocation(line: 518, column: 6, scope: !1021)
!1026 = !DILocation(line: 518, column: 13, scope: !1021)
!1027 = !DILocation(line: 518, column: 21, scope: !1021)
!1028 = !DILocation(line: 518, column: 26, scope: !1021)
!1029 = !DILocation(line: 519, column: 6, scope: !1021)
!1030 = !DILocation(line: 519, column: 13, scope: !1021)
!1031 = !DILocation(line: 519, column: 17, scope: !1021)
!1032 = !DILocation(line: 517, column: 6, scope: !1017)
!1033 = !DILocation(line: 520, column: 3, scope: !1021)
!1034 = !DILocation(line: 523, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 523, column: 6)
!1036 = !DILocation(line: 523, column: 13, scope: !1035)
!1037 = !DILocation(line: 523, column: 17, scope: !1035)
!1038 = !DILocation(line: 523, column: 22, scope: !1035)
!1039 = !DILocation(line: 523, column: 25, scope: !1035)
!1040 = !DILocation(line: 523, column: 32, scope: !1035)
!1041 = !DILocation(line: 523, column: 43, scope: !1035)
!1042 = !DILocation(line: 523, column: 6, scope: !1017)
!1043 = !DILocation(line: 524, column: 3, scope: !1035)
!1044 = !DILocation(line: 526, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 526, column: 6)
!1046 = !DILocation(line: 526, column: 13, scope: !1045)
!1047 = !DILocation(line: 526, column: 52, scope: !1045)
!1048 = !DILocation(line: 526, column: 23, scope: !1045)
!1049 = !DILocation(line: 526, column: 20, scope: !1045)
!1050 = !DILocation(line: 526, column: 6, scope: !1017)
!1051 = !DILocation(line: 527, column: 3, scope: !1045)
!1052 = !DILocation(line: 529, column: 2, scope: !1017)
!1053 = !DILocation(line: 530, column: 1, scope: !1017)
!1054 = distinct !DISubprogram(name: "hdmi_vendor_infoframe_pack_only", scope: !1, file: !1, line: 563, type: !1055, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!318, !995, !323, !324}
!1057 = !DILocalVariable(name: "frame", arg: 1, scope: !1054, file: !1, line: 563, type: !995)
!1058 = !DILocation(line: 563, column: 77, scope: !1054)
!1059 = !DILocalVariable(name: "buffer", arg: 2, scope: !1054, file: !1, line: 564, type: !323)
!1060 = !DILocation(line: 564, column: 12, scope: !1054)
!1061 = !DILocalVariable(name: "size", arg: 3, scope: !1054, file: !1, line: 564, type: !324)
!1062 = !DILocation(line: 564, column: 27, scope: !1054)
!1063 = !DILocalVariable(name: "ptr", scope: !1054, file: !1, line: 566, type: !335)
!1064 = !DILocation(line: 566, column: 6, scope: !1054)
!1065 = !DILocation(line: 566, column: 12, scope: !1054)
!1066 = !DILocalVariable(name: "length", scope: !1054, file: !1, line: 567, type: !324)
!1067 = !DILocation(line: 567, column: 9, scope: !1054)
!1068 = !DILocalVariable(name: "ret", scope: !1054, file: !1, line: 568, type: !149)
!1069 = !DILocation(line: 568, column: 6, scope: !1054)
!1070 = !DILocation(line: 570, column: 41, scope: !1054)
!1071 = !DILocation(line: 570, column: 8, scope: !1054)
!1072 = !DILocation(line: 570, column: 6, scope: !1054)
!1073 = !DILocation(line: 571, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 571, column: 6)
!1075 = !DILocation(line: 571, column: 6, scope: !1054)
!1076 = !DILocation(line: 572, column: 10, scope: !1074)
!1077 = !DILocation(line: 572, column: 3, scope: !1074)
!1078 = !DILocation(line: 574, column: 40, scope: !1054)
!1079 = !DILocation(line: 574, column: 47, scope: !1054)
!1080 = !DILocation(line: 574, column: 38, scope: !1054)
!1081 = !DILocation(line: 574, column: 11, scope: !1054)
!1082 = !DILocation(line: 574, column: 9, scope: !1054)
!1083 = !DILocation(line: 576, column: 6, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 576, column: 6)
!1085 = !DILocation(line: 576, column: 13, scope: !1084)
!1086 = !DILocation(line: 576, column: 11, scope: !1084)
!1087 = !DILocation(line: 576, column: 6, scope: !1054)
!1088 = !DILocation(line: 577, column: 3, scope: !1084)
!1089 = !DILocation(line: 579, column: 9, scope: !1054)
!1090 = !DILocation(line: 579, column: 20, scope: !1054)
!1091 = !DILocation(line: 579, column: 2, scope: !1054)
!1092 = !DILocation(line: 581, column: 11, scope: !1054)
!1093 = !DILocation(line: 581, column: 18, scope: !1054)
!1094 = !DILocation(line: 581, column: 2, scope: !1054)
!1095 = !DILocation(line: 581, column: 9, scope: !1054)
!1096 = !DILocation(line: 582, column: 11, scope: !1054)
!1097 = !DILocation(line: 582, column: 18, scope: !1054)
!1098 = !DILocation(line: 582, column: 2, scope: !1054)
!1099 = !DILocation(line: 582, column: 9, scope: !1054)
!1100 = !DILocation(line: 583, column: 11, scope: !1054)
!1101 = !DILocation(line: 583, column: 18, scope: !1054)
!1102 = !DILocation(line: 583, column: 2, scope: !1054)
!1103 = !DILocation(line: 583, column: 9, scope: !1054)
!1104 = !DILocation(line: 584, column: 2, scope: !1054)
!1105 = !DILocation(line: 584, column: 9, scope: !1054)
!1106 = !DILocation(line: 587, column: 2, scope: !1054)
!1107 = !DILocation(line: 587, column: 9, scope: !1054)
!1108 = !DILocation(line: 588, column: 2, scope: !1054)
!1109 = !DILocation(line: 588, column: 9, scope: !1054)
!1110 = !DILocation(line: 589, column: 2, scope: !1054)
!1111 = !DILocation(line: 589, column: 9, scope: !1054)
!1112 = !DILocation(line: 591, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 591, column: 6)
!1114 = !DILocation(line: 591, column: 13, scope: !1113)
!1115 = !DILocation(line: 591, column: 24, scope: !1113)
!1116 = !DILocation(line: 591, column: 6, scope: !1054)
!1117 = !DILocation(line: 592, column: 3, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 591, column: 54)
!1119 = !DILocation(line: 592, column: 10, scope: !1118)
!1120 = !DILocation(line: 593, column: 13, scope: !1118)
!1121 = !DILocation(line: 593, column: 20, scope: !1118)
!1122 = !DILocation(line: 593, column: 31, scope: !1118)
!1123 = !DILocation(line: 593, column: 38, scope: !1118)
!1124 = !DILocation(line: 593, column: 12, scope: !1118)
!1125 = !DILocation(line: 593, column: 3, scope: !1118)
!1126 = !DILocation(line: 593, column: 10, scope: !1118)
!1127 = !DILocation(line: 594, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 594, column: 7)
!1129 = !DILocation(line: 594, column: 14, scope: !1128)
!1130 = !DILocation(line: 594, column: 25, scope: !1128)
!1131 = !DILocation(line: 594, column: 7, scope: !1118)
!1132 = !DILocation(line: 595, column: 14, scope: !1128)
!1133 = !DILocation(line: 595, column: 21, scope: !1128)
!1134 = !DILocation(line: 595, column: 34, scope: !1128)
!1135 = !DILocation(line: 595, column: 41, scope: !1128)
!1136 = !DILocation(line: 595, column: 13, scope: !1128)
!1137 = !DILocation(line: 595, column: 4, scope: !1128)
!1138 = !DILocation(line: 595, column: 11, scope: !1128)
!1139 = !DILocation(line: 596, column: 2, scope: !1118)
!1140 = !DILocation(line: 596, column: 13, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 596, column: 13)
!1142 = !DILocation(line: 596, column: 20, scope: !1141)
!1143 = !DILocation(line: 596, column: 13, scope: !1113)
!1144 = !DILocation(line: 597, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 596, column: 25)
!1146 = !DILocation(line: 597, column: 10, scope: !1145)
!1147 = !DILocation(line: 598, column: 12, scope: !1145)
!1148 = !DILocation(line: 598, column: 19, scope: !1145)
!1149 = !DILocation(line: 598, column: 3, scope: !1145)
!1150 = !DILocation(line: 598, column: 10, scope: !1145)
!1151 = !DILocation(line: 599, column: 2, scope: !1145)
!1152 = !DILocation(line: 600, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 599, column: 9)
!1154 = !DILocation(line: 600, column: 10, scope: !1153)
!1155 = !DILocation(line: 603, column: 30, scope: !1054)
!1156 = !DILocation(line: 603, column: 38, scope: !1054)
!1157 = !DILocation(line: 603, column: 2, scope: !1054)
!1158 = !DILocation(line: 605, column: 9, scope: !1054)
!1159 = !DILocation(line: 605, column: 2, scope: !1054)
!1160 = !DILocation(line: 606, column: 1, scope: !1054)
!1161 = distinct !DISubprogram(name: "hdmi_vendor_infoframe_pack", scope: !1, file: !1, line: 626, type: !1162, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!318, !951, !323, !324}
!1164 = !DILocalVariable(name: "frame", arg: 1, scope: !1161, file: !1, line: 626, type: !951)
!1165 = !DILocation(line: 626, column: 66, scope: !1161)
!1166 = !DILocalVariable(name: "buffer", arg: 2, scope: !1161, file: !1, line: 627, type: !323)
!1167 = !DILocation(line: 627, column: 14, scope: !1161)
!1168 = !DILocalVariable(name: "size", arg: 3, scope: !1161, file: !1, line: 627, type: !324)
!1169 = !DILocation(line: 627, column: 29, scope: !1161)
!1170 = !DILocalVariable(name: "ret", scope: !1161, file: !1, line: 629, type: !149)
!1171 = !DILocation(line: 629, column: 6, scope: !1161)
!1172 = !DILocation(line: 631, column: 36, scope: !1161)
!1173 = !DILocation(line: 631, column: 8, scope: !1161)
!1174 = !DILocation(line: 631, column: 6, scope: !1161)
!1175 = !DILocation(line: 632, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 632, column: 6)
!1177 = !DILocation(line: 632, column: 6, scope: !1161)
!1178 = !DILocation(line: 633, column: 10, scope: !1176)
!1179 = !DILocation(line: 633, column: 3, scope: !1176)
!1180 = !DILocation(line: 635, column: 41, scope: !1161)
!1181 = !DILocation(line: 635, column: 48, scope: !1161)
!1182 = !DILocation(line: 635, column: 56, scope: !1161)
!1183 = !DILocation(line: 635, column: 9, scope: !1161)
!1184 = !DILocation(line: 635, column: 2, scope: !1161)
!1185 = !DILocation(line: 636, column: 1, scope: !1161)
!1186 = distinct !DISubprogram(name: "hdmi_drm_infoframe_init", scope: !1, file: !1, line: 656, type: !1187, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!149, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_drm_infoframe", file: !4, line: 193, size: 320, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1207, !1212, !1213, !1214, !1215}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1190, file: !4, line: 194, baseType: !3, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1190, file: !4, line: 195, baseType: !225, size: 8, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1190, file: !4, line: 196, baseType: !225, size: 8, offset: 40)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !1190, file: !4, line: 197, baseType: !160, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !1190, file: !4, line: 198, baseType: !166, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "display_primaries", scope: !1190, file: !4, line: 201, baseType: !1198, size: 96, offset: 128)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 96, elements: !1205)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !4, line: 199, size: 32, elements: !1200)
!1200 = !{!1201, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1199, file: !4, line: 200, baseType: !1202, size: 16)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !337, line: 19, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !339, line: 24, baseType: !259)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1199, file: !4, line: 200, baseType: !1202, size: 16, offset: 16)
!1205 = !{!1206}
!1206 = !DISubrange(count: 3)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !1190, file: !4, line: 204, baseType: !1208, size: 32, offset: 224)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !4, line: 202, size: 32, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1208, file: !4, line: 203, baseType: !1202, size: 16)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1208, file: !4, line: 203, baseType: !1202, size: 16, offset: 16)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "max_display_mastering_luminance", scope: !1190, file: !4, line: 205, baseType: !1202, size: 16, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "min_display_mastering_luminance", scope: !1190, file: !4, line: 206, baseType: !1202, size: 16, offset: 272)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !1190, file: !4, line: 207, baseType: !1202, size: 16, offset: 288)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !1190, file: !4, line: 208, baseType: !1202, size: 16, offset: 304)
!1216 = !DILocalVariable(name: "frame", arg: 1, scope: !1186, file: !1, line: 656, type: !1189)
!1217 = !DILocation(line: 656, column: 56, scope: !1186)
!1218 = !DILocation(line: 658, column: 9, scope: !1186)
!1219 = !DILocation(line: 658, column: 2, scope: !1186)
!1220 = !DILocation(line: 660, column: 2, scope: !1186)
!1221 = !DILocation(line: 660, column: 9, scope: !1186)
!1222 = !DILocation(line: 660, column: 14, scope: !1186)
!1223 = !DILocation(line: 661, column: 2, scope: !1186)
!1224 = !DILocation(line: 661, column: 9, scope: !1186)
!1225 = !DILocation(line: 661, column: 17, scope: !1186)
!1226 = !DILocation(line: 662, column: 2, scope: !1186)
!1227 = !DILocation(line: 662, column: 9, scope: !1186)
!1228 = !DILocation(line: 662, column: 16, scope: !1186)
!1229 = !DILocation(line: 664, column: 2, scope: !1186)
!1230 = distinct !DISubprogram(name: "hdmi_drm_infoframe_check", scope: !1, file: !1, line: 687, type: !1187, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1231 = !DILocalVariable(name: "frame", arg: 1, scope: !1230, file: !1, line: 687, type: !1189)
!1232 = !DILocation(line: 687, column: 57, scope: !1230)
!1233 = !DILocation(line: 689, column: 39, scope: !1230)
!1234 = !DILocation(line: 689, column: 9, scope: !1230)
!1235 = !DILocation(line: 689, column: 2, scope: !1230)
!1236 = distinct !DISubprogram(name: "hdmi_drm_infoframe_check_only", scope: !1, file: !1, line: 668, type: !1237, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!149, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1241 = !DILocalVariable(name: "frame", arg: 1, scope: !1236, file: !1, line: 668, type: !1239)
!1242 = !DILocation(line: 668, column: 75, scope: !1236)
!1243 = !DILocation(line: 670, column: 6, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 670, column: 6)
!1245 = !DILocation(line: 670, column: 13, scope: !1244)
!1246 = !DILocation(line: 670, column: 18, scope: !1244)
!1247 = !DILocation(line: 670, column: 45, scope: !1244)
!1248 = !DILocation(line: 671, column: 6, scope: !1244)
!1249 = !DILocation(line: 671, column: 13, scope: !1244)
!1250 = !DILocation(line: 671, column: 21, scope: !1244)
!1251 = !DILocation(line: 670, column: 6, scope: !1236)
!1252 = !DILocation(line: 672, column: 3, scope: !1244)
!1253 = !DILocation(line: 674, column: 6, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 674, column: 6)
!1255 = !DILocation(line: 674, column: 13, scope: !1254)
!1256 = !DILocation(line: 674, column: 20, scope: !1254)
!1257 = !DILocation(line: 674, column: 6, scope: !1236)
!1258 = !DILocation(line: 675, column: 3, scope: !1254)
!1259 = !DILocation(line: 677, column: 2, scope: !1236)
!1260 = !DILocation(line: 678, column: 1, scope: !1236)
!1261 = distinct !DISubprogram(name: "hdmi_drm_infoframe_pack_only", scope: !1, file: !1, line: 707, type: !1262, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!318, !1239, !323, !324}
!1264 = !DILocalVariable(name: "frame", arg: 1, scope: !1261, file: !1, line: 707, type: !1239)
!1265 = !DILocation(line: 707, column: 71, scope: !1261)
!1266 = !DILocalVariable(name: "buffer", arg: 2, scope: !1261, file: !1, line: 708, type: !323)
!1267 = !DILocation(line: 708, column: 16, scope: !1261)
!1268 = !DILocalVariable(name: "size", arg: 3, scope: !1261, file: !1, line: 708, type: !324)
!1269 = !DILocation(line: 708, column: 31, scope: !1261)
!1270 = !DILocalVariable(name: "ptr", scope: !1261, file: !1, line: 710, type: !335)
!1271 = !DILocation(line: 710, column: 6, scope: !1261)
!1272 = !DILocation(line: 710, column: 12, scope: !1261)
!1273 = !DILocalVariable(name: "length", scope: !1261, file: !1, line: 711, type: !324)
!1274 = !DILocation(line: 711, column: 9, scope: !1261)
!1275 = !DILocalVariable(name: "i", scope: !1261, file: !1, line: 712, type: !149)
!1276 = !DILocation(line: 712, column: 6, scope: !1261)
!1277 = !DILocation(line: 714, column: 40, scope: !1261)
!1278 = !DILocation(line: 714, column: 47, scope: !1261)
!1279 = !DILocation(line: 714, column: 38, scope: !1261)
!1280 = !DILocation(line: 714, column: 11, scope: !1261)
!1281 = !DILocation(line: 714, column: 9, scope: !1261)
!1282 = !DILocation(line: 716, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 716, column: 6)
!1284 = !DILocation(line: 716, column: 13, scope: !1283)
!1285 = !DILocation(line: 716, column: 11, scope: !1283)
!1286 = !DILocation(line: 716, column: 6, scope: !1261)
!1287 = !DILocation(line: 717, column: 3, scope: !1283)
!1288 = !DILocation(line: 719, column: 9, scope: !1261)
!1289 = !DILocation(line: 719, column: 20, scope: !1261)
!1290 = !DILocation(line: 719, column: 2, scope: !1261)
!1291 = !DILocation(line: 721, column: 11, scope: !1261)
!1292 = !DILocation(line: 721, column: 18, scope: !1261)
!1293 = !DILocation(line: 721, column: 2, scope: !1261)
!1294 = !DILocation(line: 721, column: 9, scope: !1261)
!1295 = !DILocation(line: 722, column: 11, scope: !1261)
!1296 = !DILocation(line: 722, column: 18, scope: !1261)
!1297 = !DILocation(line: 722, column: 2, scope: !1261)
!1298 = !DILocation(line: 722, column: 9, scope: !1261)
!1299 = !DILocation(line: 723, column: 11, scope: !1261)
!1300 = !DILocation(line: 723, column: 18, scope: !1261)
!1301 = !DILocation(line: 723, column: 2, scope: !1261)
!1302 = !DILocation(line: 723, column: 9, scope: !1261)
!1303 = !DILocation(line: 724, column: 2, scope: !1261)
!1304 = !DILocation(line: 724, column: 9, scope: !1261)
!1305 = !DILocation(line: 727, column: 6, scope: !1261)
!1306 = !DILocation(line: 729, column: 11, scope: !1261)
!1307 = !DILocation(line: 729, column: 18, scope: !1261)
!1308 = !DILocation(line: 729, column: 6, scope: !1261)
!1309 = !DILocation(line: 729, column: 9, scope: !1261)
!1310 = !DILocation(line: 730, column: 11, scope: !1261)
!1311 = !DILocation(line: 730, column: 18, scope: !1261)
!1312 = !DILocation(line: 730, column: 6, scope: !1261)
!1313 = !DILocation(line: 730, column: 9, scope: !1261)
!1314 = !DILocation(line: 732, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 732, column: 2)
!1316 = !DILocation(line: 732, column: 7, scope: !1315)
!1317 = !DILocation(line: 732, column: 14, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 732, column: 2)
!1319 = !DILocation(line: 732, column: 16, scope: !1318)
!1320 = !DILocation(line: 732, column: 2, scope: !1315)
!1321 = !DILocation(line: 733, column: 12, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 732, column: 26)
!1323 = !DILocation(line: 733, column: 19, scope: !1322)
!1324 = !DILocation(line: 733, column: 37, scope: !1322)
!1325 = !DILocation(line: 733, column: 40, scope: !1322)
!1326 = !DILocation(line: 733, column: 7, scope: !1322)
!1327 = !DILocation(line: 733, column: 10, scope: !1322)
!1328 = !DILocation(line: 734, column: 12, scope: !1322)
!1329 = !DILocation(line: 734, column: 19, scope: !1322)
!1330 = !DILocation(line: 734, column: 37, scope: !1322)
!1331 = !DILocation(line: 734, column: 40, scope: !1322)
!1332 = !DILocation(line: 734, column: 42, scope: !1322)
!1333 = !DILocation(line: 734, column: 7, scope: !1322)
!1334 = !DILocation(line: 734, column: 10, scope: !1322)
!1335 = !DILocation(line: 735, column: 12, scope: !1322)
!1336 = !DILocation(line: 735, column: 19, scope: !1322)
!1337 = !DILocation(line: 735, column: 37, scope: !1322)
!1338 = !DILocation(line: 735, column: 40, scope: !1322)
!1339 = !DILocation(line: 735, column: 7, scope: !1322)
!1340 = !DILocation(line: 735, column: 10, scope: !1322)
!1341 = !DILocation(line: 736, column: 12, scope: !1322)
!1342 = !DILocation(line: 736, column: 19, scope: !1322)
!1343 = !DILocation(line: 736, column: 37, scope: !1322)
!1344 = !DILocation(line: 736, column: 40, scope: !1322)
!1345 = !DILocation(line: 736, column: 42, scope: !1322)
!1346 = !DILocation(line: 736, column: 7, scope: !1322)
!1347 = !DILocation(line: 736, column: 10, scope: !1322)
!1348 = !DILocation(line: 737, column: 2, scope: !1322)
!1349 = !DILocation(line: 732, column: 22, scope: !1318)
!1350 = !DILocation(line: 732, column: 2, scope: !1318)
!1351 = distinct !{!1351, !1320, !1352}
!1352 = !DILocation(line: 737, column: 2, scope: !1315)
!1353 = !DILocation(line: 739, column: 11, scope: !1261)
!1354 = !DILocation(line: 739, column: 18, scope: !1261)
!1355 = !DILocation(line: 739, column: 30, scope: !1261)
!1356 = !DILocation(line: 739, column: 6, scope: !1261)
!1357 = !DILocation(line: 739, column: 9, scope: !1261)
!1358 = !DILocation(line: 740, column: 11, scope: !1261)
!1359 = !DILocation(line: 740, column: 18, scope: !1261)
!1360 = !DILocation(line: 740, column: 30, scope: !1261)
!1361 = !DILocation(line: 740, column: 32, scope: !1261)
!1362 = !DILocation(line: 740, column: 6, scope: !1261)
!1363 = !DILocation(line: 740, column: 9, scope: !1261)
!1364 = !DILocation(line: 742, column: 11, scope: !1261)
!1365 = !DILocation(line: 742, column: 18, scope: !1261)
!1366 = !DILocation(line: 742, column: 30, scope: !1261)
!1367 = !DILocation(line: 742, column: 6, scope: !1261)
!1368 = !DILocation(line: 742, column: 9, scope: !1261)
!1369 = !DILocation(line: 743, column: 11, scope: !1261)
!1370 = !DILocation(line: 743, column: 18, scope: !1261)
!1371 = !DILocation(line: 743, column: 30, scope: !1261)
!1372 = !DILocation(line: 743, column: 32, scope: !1261)
!1373 = !DILocation(line: 743, column: 6, scope: !1261)
!1374 = !DILocation(line: 743, column: 9, scope: !1261)
!1375 = !DILocation(line: 745, column: 11, scope: !1261)
!1376 = !DILocation(line: 745, column: 18, scope: !1261)
!1377 = !DILocation(line: 745, column: 6, scope: !1261)
!1378 = !DILocation(line: 745, column: 9, scope: !1261)
!1379 = !DILocation(line: 746, column: 11, scope: !1261)
!1380 = !DILocation(line: 746, column: 18, scope: !1261)
!1381 = !DILocation(line: 746, column: 50, scope: !1261)
!1382 = !DILocation(line: 746, column: 6, scope: !1261)
!1383 = !DILocation(line: 746, column: 9, scope: !1261)
!1384 = !DILocation(line: 748, column: 11, scope: !1261)
!1385 = !DILocation(line: 748, column: 18, scope: !1261)
!1386 = !DILocation(line: 748, column: 6, scope: !1261)
!1387 = !DILocation(line: 748, column: 9, scope: !1261)
!1388 = !DILocation(line: 749, column: 11, scope: !1261)
!1389 = !DILocation(line: 749, column: 18, scope: !1261)
!1390 = !DILocation(line: 749, column: 50, scope: !1261)
!1391 = !DILocation(line: 749, column: 6, scope: !1261)
!1392 = !DILocation(line: 749, column: 9, scope: !1261)
!1393 = !DILocation(line: 751, column: 11, scope: !1261)
!1394 = !DILocation(line: 751, column: 18, scope: !1261)
!1395 = !DILocation(line: 751, column: 6, scope: !1261)
!1396 = !DILocation(line: 751, column: 9, scope: !1261)
!1397 = !DILocation(line: 752, column: 11, scope: !1261)
!1398 = !DILocation(line: 752, column: 18, scope: !1261)
!1399 = !DILocation(line: 752, column: 26, scope: !1261)
!1400 = !DILocation(line: 752, column: 6, scope: !1261)
!1401 = !DILocation(line: 752, column: 9, scope: !1261)
!1402 = !DILocation(line: 754, column: 11, scope: !1261)
!1403 = !DILocation(line: 754, column: 18, scope: !1261)
!1404 = !DILocation(line: 754, column: 6, scope: !1261)
!1405 = !DILocation(line: 754, column: 9, scope: !1261)
!1406 = !DILocation(line: 755, column: 11, scope: !1261)
!1407 = !DILocation(line: 755, column: 18, scope: !1261)
!1408 = !DILocation(line: 755, column: 27, scope: !1261)
!1409 = !DILocation(line: 755, column: 6, scope: !1261)
!1410 = !DILocation(line: 755, column: 9, scope: !1261)
!1411 = !DILocation(line: 757, column: 30, scope: !1261)
!1412 = !DILocation(line: 757, column: 38, scope: !1261)
!1413 = !DILocation(line: 757, column: 2, scope: !1261)
!1414 = !DILocation(line: 759, column: 9, scope: !1261)
!1415 = !DILocation(line: 759, column: 2, scope: !1261)
!1416 = !DILocation(line: 760, column: 1, scope: !1261)
!1417 = distinct !DISubprogram(name: "hdmi_drm_infoframe_pack", scope: !1, file: !1, line: 780, type: !1418, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!318, !1189, !323, !324}
!1420 = !DILocalVariable(name: "frame", arg: 1, scope: !1417, file: !1, line: 780, type: !1189)
!1421 = !DILocation(line: 780, column: 60, scope: !1417)
!1422 = !DILocalVariable(name: "buffer", arg: 2, scope: !1417, file: !1, line: 781, type: !323)
!1423 = !DILocation(line: 781, column: 11, scope: !1417)
!1424 = !DILocalVariable(name: "size", arg: 3, scope: !1417, file: !1, line: 781, type: !324)
!1425 = !DILocation(line: 781, column: 26, scope: !1417)
!1426 = !DILocalVariable(name: "ret", scope: !1417, file: !1, line: 783, type: !149)
!1427 = !DILocation(line: 783, column: 6, scope: !1417)
!1428 = !DILocation(line: 785, column: 33, scope: !1417)
!1429 = !DILocation(line: 785, column: 8, scope: !1417)
!1430 = !DILocation(line: 785, column: 6, scope: !1417)
!1431 = !DILocation(line: 786, column: 6, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 786, column: 6)
!1433 = !DILocation(line: 786, column: 6, scope: !1417)
!1434 = !DILocation(line: 787, column: 10, scope: !1432)
!1435 = !DILocation(line: 787, column: 3, scope: !1432)
!1436 = !DILocation(line: 789, column: 38, scope: !1417)
!1437 = !DILocation(line: 789, column: 45, scope: !1417)
!1438 = !DILocation(line: 789, column: 53, scope: !1417)
!1439 = !DILocation(line: 789, column: 9, scope: !1417)
!1440 = !DILocation(line: 789, column: 2, scope: !1417)
!1441 = !DILocation(line: 790, column: 1, scope: !1417)
!1442 = distinct !DISubprogram(name: "hdmi_infoframe_check", scope: !1, file: !1, line: 859, type: !1443, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!149, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hdmi_infoframe", file: !4, line: 421, size: 544, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1462, !1463}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !1446, file: !4, line: 422, baseType: !221, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !1446, file: !4, line: 423, baseType: !237, size: 544)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "spd", scope: !1446, file: !4, line: 424, baseType: !577, size: 288)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !1446, file: !4, line: 425, baseType: !1452, size: 192)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hdmi_vendor_any_infoframe", file: !4, line: 398, size: 192, elements: !1453)
!1453 = !{!1454, !1461}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !1452, file: !4, line: 404, baseType: !1455, size: 96)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !4, line: 399, size: 96, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1455, file: !4, line: 400, baseType: !3, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1455, file: !4, line: 401, baseType: !225, size: 8, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1455, file: !4, line: 402, baseType: !225, size: 8, offset: 40)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "oui", scope: !1455, file: !4, line: 403, baseType: !5, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !1452, file: !4, line: 405, baseType: !952, size: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "audio", scope: !1446, file: !4, line: 426, baseType: !752, size: 224)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "drm", scope: !1446, file: !4, line: 427, baseType: !1190, size: 320)
!1464 = !DILocalVariable(name: "frame", arg: 1, scope: !1442, file: !1, line: 859, type: !1445)
!1465 = !DILocation(line: 859, column: 44, scope: !1442)
!1466 = !DILocation(line: 861, column: 10, scope: !1442)
!1467 = !DILocation(line: 861, column: 17, scope: !1442)
!1468 = !DILocation(line: 861, column: 21, scope: !1442)
!1469 = !DILocation(line: 861, column: 2, scope: !1442)
!1470 = !DILocation(line: 863, column: 36, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 861, column: 27)
!1472 = !DILocation(line: 863, column: 43, scope: !1471)
!1473 = !DILocation(line: 863, column: 10, scope: !1471)
!1474 = !DILocation(line: 863, column: 3, scope: !1471)
!1475 = !DILocation(line: 865, column: 36, scope: !1471)
!1476 = !DILocation(line: 865, column: 43, scope: !1471)
!1477 = !DILocation(line: 865, column: 10, scope: !1471)
!1478 = !DILocation(line: 865, column: 3, scope: !1471)
!1479 = !DILocation(line: 867, column: 38, scope: !1471)
!1480 = !DILocation(line: 867, column: 45, scope: !1471)
!1481 = !DILocation(line: 867, column: 10, scope: !1471)
!1482 = !DILocation(line: 867, column: 3, scope: !1471)
!1483 = !DILocation(line: 869, column: 43, scope: !1471)
!1484 = !DILocation(line: 869, column: 50, scope: !1471)
!1485 = !DILocation(line: 869, column: 10, scope: !1471)
!1486 = !DILocation(line: 869, column: 3, scope: !1471)
!1487 = !DILocalVariable(name: "__ret_warn_on", scope: !1488, file: !1, line: 871, type: !149)
!1488 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 871, column: 3)
!1489 = !DILocation(line: 871, column: 3, scope: !1488)
!1490 = !DILocation(line: 871, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 871, column: 3)
!1492 = !DILocation(line: 871, column: 3, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 871, column: 3)
!1494 = !DILocation(line: 871, column: 3, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 871, column: 3)
!1496 = !DILocation(line: 871, column: 3, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 871, column: 3)
!1498 = !DILocation(line: 871, column: 3, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 871, column: 3)
!1500 = !DILocation(line: 871, column: 3, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 871, column: 3)
!1502 = !{i32 -2143752569, i32 -2143752540, i32 -2143752494, i32 -2143752436, i32 -2143752382, i32 -2143752328, i32 -2143752273, i32 -2143752242}
!1503 = !DILocation(line: 871, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 871, column: 3)
!1505 = !{i32 -2143751829, i32 -2143751822, i32 -2143751770, i32 -2143751739, i32 -2143751709}
!1506 = !DILocation(line: 871, column: 3, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 871, column: 3)
!1508 = !DILocation(line: 871, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 871, column: 3)
!1510 = !DILocation(line: 872, column: 3, scope: !1471)
!1511 = !DILocation(line: 874, column: 1, scope: !1442)
!1512 = distinct !DISubprogram(name: "hdmi_vendor_any_infoframe_check", scope: !1, file: !1, line: 797, type: !1513, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!149, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1516 = !DILocalVariable(name: "frame", arg: 1, scope: !1512, file: !1, line: 797, type: !1515)
!1517 = !DILocation(line: 797, column: 66, scope: !1512)
!1518 = !DILocalVariable(name: "ret", scope: !1512, file: !1, line: 799, type: !149)
!1519 = !DILocation(line: 799, column: 6, scope: !1512)
!1520 = !DILocation(line: 801, column: 45, scope: !1512)
!1521 = !DILocation(line: 801, column: 8, scope: !1512)
!1522 = !DILocation(line: 801, column: 6, scope: !1512)
!1523 = !DILocation(line: 802, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 802, column: 6)
!1525 = !DILocation(line: 802, column: 6, scope: !1512)
!1526 = !DILocation(line: 803, column: 10, scope: !1524)
!1527 = !DILocation(line: 803, column: 3, scope: !1524)
!1528 = !DILocation(line: 806, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 806, column: 6)
!1530 = !DILocation(line: 806, column: 13, scope: !1529)
!1531 = !DILocation(line: 806, column: 17, scope: !1529)
!1532 = !DILocation(line: 806, column: 21, scope: !1529)
!1533 = !DILocation(line: 806, column: 6, scope: !1512)
!1534 = !DILocation(line: 807, column: 3, scope: !1529)
!1535 = !DILocation(line: 809, column: 38, scope: !1512)
!1536 = !DILocation(line: 809, column: 45, scope: !1512)
!1537 = !DILocation(line: 809, column: 9, scope: !1512)
!1538 = !DILocation(line: 809, column: 2, scope: !1512)
!1539 = !DILocation(line: 810, column: 1, scope: !1512)
!1540 = distinct !DISubprogram(name: "hdmi_infoframe_pack_only", scope: !1, file: !1, line: 892, type: !1541, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!318, !1543, !323, !324}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1545 = !DILocalVariable(name: "frame", arg: 1, scope: !1540, file: !1, line: 892, type: !1543)
!1546 = !DILocation(line: 892, column: 54, scope: !1540)
!1547 = !DILocalVariable(name: "buffer", arg: 2, scope: !1540, file: !1, line: 892, type: !323)
!1548 = !DILocation(line: 892, column: 67, scope: !1540)
!1549 = !DILocalVariable(name: "size", arg: 3, scope: !1540, file: !1, line: 892, type: !324)
!1550 = !DILocation(line: 892, column: 82, scope: !1540)
!1551 = !DILocalVariable(name: "length", scope: !1540, file: !1, line: 894, type: !318)
!1552 = !DILocation(line: 894, column: 10, scope: !1540)
!1553 = !DILocation(line: 896, column: 10, scope: !1540)
!1554 = !DILocation(line: 896, column: 17, scope: !1540)
!1555 = !DILocation(line: 896, column: 21, scope: !1540)
!1556 = !DILocation(line: 896, column: 2, scope: !1540)
!1557 = !DILocation(line: 898, column: 42, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 896, column: 27)
!1559 = !DILocation(line: 898, column: 49, scope: !1558)
!1560 = !DILocation(line: 899, column: 13, scope: !1558)
!1561 = !DILocation(line: 899, column: 21, scope: !1558)
!1562 = !DILocation(line: 898, column: 12, scope: !1558)
!1563 = !DILocation(line: 898, column: 10, scope: !1558)
!1564 = !DILocation(line: 900, column: 3, scope: !1558)
!1565 = !DILocation(line: 902, column: 42, scope: !1558)
!1566 = !DILocation(line: 902, column: 49, scope: !1558)
!1567 = !DILocation(line: 903, column: 13, scope: !1558)
!1568 = !DILocation(line: 903, column: 21, scope: !1558)
!1569 = !DILocation(line: 902, column: 12, scope: !1558)
!1570 = !DILocation(line: 902, column: 10, scope: !1558)
!1571 = !DILocation(line: 904, column: 3, scope: !1558)
!1572 = !DILocation(line: 906, column: 42, scope: !1558)
!1573 = !DILocation(line: 906, column: 49, scope: !1558)
!1574 = !DILocation(line: 907, column: 13, scope: !1558)
!1575 = !DILocation(line: 907, column: 21, scope: !1558)
!1576 = !DILocation(line: 906, column: 12, scope: !1558)
!1577 = !DILocation(line: 906, column: 10, scope: !1558)
!1578 = !DILocation(line: 908, column: 3, scope: !1558)
!1579 = !DILocation(line: 910, column: 44, scope: !1558)
!1580 = !DILocation(line: 910, column: 51, scope: !1558)
!1581 = !DILocation(line: 911, column: 8, scope: !1558)
!1582 = !DILocation(line: 911, column: 16, scope: !1558)
!1583 = !DILocation(line: 910, column: 12, scope: !1558)
!1584 = !DILocation(line: 910, column: 10, scope: !1558)
!1585 = !DILocation(line: 912, column: 3, scope: !1558)
!1586 = !DILocation(line: 914, column: 49, scope: !1558)
!1587 = !DILocation(line: 914, column: 56, scope: !1558)
!1588 = !DILocation(line: 915, column: 13, scope: !1558)
!1589 = !DILocation(line: 915, column: 21, scope: !1558)
!1590 = !DILocation(line: 914, column: 12, scope: !1558)
!1591 = !DILocation(line: 914, column: 10, scope: !1558)
!1592 = !DILocation(line: 916, column: 3, scope: !1558)
!1593 = !DILocalVariable(name: "__ret_warn_on", scope: !1594, file: !1, line: 918, type: !149)
!1594 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 918, column: 3)
!1595 = !DILocation(line: 918, column: 3, scope: !1594)
!1596 = !DILocation(line: 918, column: 3, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 918, column: 3)
!1598 = !DILocation(line: 918, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 918, column: 3)
!1600 = !DILocation(line: 918, column: 3, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 918, column: 3)
!1602 = !DILocation(line: 918, column: 3, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 918, column: 3)
!1604 = !DILocation(line: 918, column: 3, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 918, column: 3)
!1606 = !DILocation(line: 918, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 918, column: 3)
!1608 = !{i32 -2143750738, i32 -2143750709, i32 -2143750663, i32 -2143750605, i32 -2143750551, i32 -2143750497, i32 -2143750442, i32 -2143750411}
!1609 = !DILocation(line: 918, column: 3, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 918, column: 3)
!1611 = !{i32 -2143749998, i32 -2143749991, i32 -2143749939, i32 -2143749908, i32 -2143749878}
!1612 = !DILocation(line: 918, column: 3, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 918, column: 3)
!1614 = !DILocation(line: 918, column: 3, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 918, column: 3)
!1616 = !DILocation(line: 919, column: 10, scope: !1558)
!1617 = !DILocation(line: 920, column: 2, scope: !1558)
!1618 = !DILocation(line: 922, column: 9, scope: !1540)
!1619 = !DILocation(line: 922, column: 2, scope: !1540)
!1620 = distinct !DISubprogram(name: "hdmi_vendor_any_infoframe_pack_only", scope: !1, file: !1, line: 816, type: !1621, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!318, !1623, !323, !324}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452)
!1625 = !DILocalVariable(name: "frame", arg: 1, scope: !1620, file: !1, line: 816, type: !1623)
!1626 = !DILocation(line: 816, column: 76, scope: !1620)
!1627 = !DILocalVariable(name: "buffer", arg: 2, scope: !1620, file: !1, line: 817, type: !323)
!1628 = !DILocation(line: 817, column: 15, scope: !1620)
!1629 = !DILocalVariable(name: "size", arg: 3, scope: !1620, file: !1, line: 817, type: !324)
!1630 = !DILocation(line: 817, column: 30, scope: !1620)
!1631 = !DILocalVariable(name: "ret", scope: !1620, file: !1, line: 819, type: !149)
!1632 = !DILocation(line: 819, column: 6, scope: !1620)
!1633 = !DILocation(line: 821, column: 45, scope: !1620)
!1634 = !DILocation(line: 821, column: 8, scope: !1620)
!1635 = !DILocation(line: 821, column: 6, scope: !1620)
!1636 = !DILocation(line: 822, column: 6, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 822, column: 6)
!1638 = !DILocation(line: 822, column: 6, scope: !1620)
!1639 = !DILocation(line: 823, column: 10, scope: !1637)
!1640 = !DILocation(line: 823, column: 3, scope: !1637)
!1641 = !DILocation(line: 826, column: 6, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 826, column: 6)
!1643 = !DILocation(line: 826, column: 13, scope: !1642)
!1644 = !DILocation(line: 826, column: 17, scope: !1642)
!1645 = !DILocation(line: 826, column: 21, scope: !1642)
!1646 = !DILocation(line: 826, column: 6, scope: !1620)
!1647 = !DILocation(line: 827, column: 3, scope: !1642)
!1648 = !DILocation(line: 829, column: 42, scope: !1620)
!1649 = !DILocation(line: 829, column: 49, scope: !1620)
!1650 = !DILocation(line: 829, column: 55, scope: !1620)
!1651 = !DILocation(line: 829, column: 63, scope: !1620)
!1652 = !DILocation(line: 829, column: 9, scope: !1620)
!1653 = !DILocation(line: 829, column: 2, scope: !1620)
!1654 = !DILocation(line: 830, column: 1, scope: !1620)
!1655 = distinct !DISubprogram(name: "hdmi_infoframe_pack", scope: !1, file: !1, line: 944, type: !1656, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!318, !1445, !323, !324}
!1658 = !DILocalVariable(name: "frame", arg: 1, scope: !1655, file: !1, line: 944, type: !1445)
!1659 = !DILocation(line: 944, column: 43, scope: !1655)
!1660 = !DILocalVariable(name: "buffer", arg: 2, scope: !1655, file: !1, line: 945, type: !323)
!1661 = !DILocation(line: 945, column: 13, scope: !1655)
!1662 = !DILocalVariable(name: "size", arg: 3, scope: !1655, file: !1, line: 945, type: !324)
!1663 = !DILocation(line: 945, column: 28, scope: !1655)
!1664 = !DILocalVariable(name: "length", scope: !1655, file: !1, line: 947, type: !318)
!1665 = !DILocation(line: 947, column: 10, scope: !1655)
!1666 = !DILocation(line: 949, column: 10, scope: !1655)
!1667 = !DILocation(line: 949, column: 17, scope: !1655)
!1668 = !DILocation(line: 949, column: 21, scope: !1655)
!1669 = !DILocation(line: 949, column: 2, scope: !1655)
!1670 = !DILocation(line: 951, column: 37, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 949, column: 27)
!1672 = !DILocation(line: 951, column: 44, scope: !1671)
!1673 = !DILocation(line: 951, column: 49, scope: !1671)
!1674 = !DILocation(line: 951, column: 57, scope: !1671)
!1675 = !DILocation(line: 951, column: 12, scope: !1671)
!1676 = !DILocation(line: 951, column: 10, scope: !1671)
!1677 = !DILocation(line: 952, column: 3, scope: !1671)
!1678 = !DILocation(line: 954, column: 37, scope: !1671)
!1679 = !DILocation(line: 954, column: 44, scope: !1671)
!1680 = !DILocation(line: 954, column: 49, scope: !1671)
!1681 = !DILocation(line: 954, column: 57, scope: !1671)
!1682 = !DILocation(line: 954, column: 12, scope: !1671)
!1683 = !DILocation(line: 954, column: 10, scope: !1671)
!1684 = !DILocation(line: 955, column: 3, scope: !1671)
!1685 = !DILocation(line: 957, column: 37, scope: !1671)
!1686 = !DILocation(line: 957, column: 44, scope: !1671)
!1687 = !DILocation(line: 957, column: 49, scope: !1671)
!1688 = !DILocation(line: 957, column: 57, scope: !1671)
!1689 = !DILocation(line: 957, column: 12, scope: !1671)
!1690 = !DILocation(line: 957, column: 10, scope: !1671)
!1691 = !DILocation(line: 958, column: 3, scope: !1671)
!1692 = !DILocation(line: 960, column: 39, scope: !1671)
!1693 = !DILocation(line: 960, column: 46, scope: !1671)
!1694 = !DILocation(line: 960, column: 53, scope: !1671)
!1695 = !DILocation(line: 960, column: 61, scope: !1671)
!1696 = !DILocation(line: 960, column: 12, scope: !1671)
!1697 = !DILocation(line: 960, column: 10, scope: !1671)
!1698 = !DILocation(line: 961, column: 3, scope: !1671)
!1699 = !DILocation(line: 963, column: 44, scope: !1671)
!1700 = !DILocation(line: 963, column: 51, scope: !1671)
!1701 = !DILocation(line: 964, column: 8, scope: !1671)
!1702 = !DILocation(line: 964, column: 16, scope: !1671)
!1703 = !DILocation(line: 963, column: 12, scope: !1671)
!1704 = !DILocation(line: 963, column: 10, scope: !1671)
!1705 = !DILocation(line: 965, column: 3, scope: !1671)
!1706 = !DILocalVariable(name: "__ret_warn_on", scope: !1707, file: !1, line: 967, type: !149)
!1707 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 967, column: 3)
!1708 = !DILocation(line: 967, column: 3, scope: !1707)
!1709 = !DILocation(line: 967, column: 3, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 967, column: 3)
!1711 = !DILocation(line: 967, column: 3, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1710, file: !1, line: 967, column: 3)
!1713 = !DILocation(line: 967, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 967, column: 3)
!1715 = !DILocation(line: 967, column: 3, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 967, column: 3)
!1717 = !DILocation(line: 967, column: 3, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 967, column: 3)
!1719 = !DILocation(line: 967, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 967, column: 3)
!1721 = !{i32 -2143748899, i32 -2143748870, i32 -2143748824, i32 -2143748766, i32 -2143748712, i32 -2143748658, i32 -2143748603, i32 -2143748572}
!1722 = !DILocation(line: 967, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 967, column: 3)
!1724 = !{i32 -2143748159, i32 -2143748152, i32 -2143748100, i32 -2143748069, i32 -2143748039}
!1725 = !DILocation(line: 967, column: 3, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 967, column: 3)
!1727 = !DILocation(line: 967, column: 3, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 967, column: 3)
!1729 = !DILocation(line: 968, column: 10, scope: !1671)
!1730 = !DILocation(line: 969, column: 2, scope: !1671)
!1731 = !DILocation(line: 971, column: 9, scope: !1655)
!1732 = !DILocation(line: 971, column: 2, scope: !1655)
!1733 = distinct !DISubprogram(name: "hdmi_vendor_any_infoframe_pack", scope: !1, file: !1, line: 837, type: !1734, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!318, !1515, !323, !324}
!1736 = !DILocalVariable(name: "frame", arg: 1, scope: !1733, file: !1, line: 837, type: !1515)
!1737 = !DILocation(line: 837, column: 65, scope: !1733)
!1738 = !DILocalVariable(name: "buffer", arg: 2, scope: !1733, file: !1, line: 838, type: !323)
!1739 = !DILocation(line: 838, column: 17, scope: !1733)
!1740 = !DILocalVariable(name: "size", arg: 3, scope: !1733, file: !1, line: 838, type: !324)
!1741 = !DILocation(line: 838, column: 32, scope: !1733)
!1742 = !DILocalVariable(name: "ret", scope: !1733, file: !1, line: 840, type: !149)
!1743 = !DILocation(line: 840, column: 6, scope: !1733)
!1744 = !DILocation(line: 842, column: 40, scope: !1733)
!1745 = !DILocation(line: 842, column: 8, scope: !1733)
!1746 = !DILocation(line: 842, column: 6, scope: !1733)
!1747 = !DILocation(line: 843, column: 6, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 843, column: 6)
!1749 = !DILocation(line: 843, column: 6, scope: !1733)
!1750 = !DILocation(line: 844, column: 10, scope: !1748)
!1751 = !DILocation(line: 844, column: 3, scope: !1748)
!1752 = !DILocation(line: 846, column: 45, scope: !1733)
!1753 = !DILocation(line: 846, column: 52, scope: !1733)
!1754 = !DILocation(line: 846, column: 60, scope: !1733)
!1755 = !DILocation(line: 846, column: 9, scope: !1733)
!1756 = !DILocation(line: 846, column: 2, scope: !1733)
!1757 = !DILocation(line: 847, column: 1, scope: !1733)
!1758 = distinct !DISubprogram(name: "hdmi_infoframe_log", scope: !1, file: !1, line: 1511, type: !1759, scopeLine: 1514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !592, !1761, !1543}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !193, line: 461, size: 5568, elements: !1763)
!1763 = !{!1764, !3211, !3212, !3215, !3216, !3267, !3345, !3346, !3347, !3348, !3349, !3358, !3463, !3476, !3479, !3480, !3484, !3486, !3487, !3488, !3492, !3498, !3499, !3502, !3506, !3509, !3512, !3513, !3514, !3515, !3547, !3548, !3549, !3552, !3555, !3556, !3557, !3558}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1762, file: !193, line: 462, baseType: !1765, size: 512)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1766, line: 64, size: 512, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1775, !1777, !1834, !3047, !3201, !3206, !3207, !3208, !3209, !3210}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1765, file: !1766, line: 65, baseType: !592, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1765, file: !1766, line: 66, baseType: !1770, size: 128, offset: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !249, line: 178, size: 128, elements: !1771)
!1771 = !{!1772, !1774}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1770, file: !249, line: 179, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1770, file: !249, line: 179, baseType: !1773, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1765, file: !1766, line: 67, baseType: !1776, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1765, file: !1766, line: 68, baseType: !1778, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1766, line: 192, size: 704, elements: !1780)
!1780 = !{!1781, !1782, !1797, !1798}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1779, file: !1766, line: 193, baseType: !1770, size: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1779, file: !1766, line: 194, baseType: !1783, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1784, line: 83, baseType: !1785)
!1784 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1784, line: 71, elements: !1786)
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1784, line: 72, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1784, line: 72, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1788, file: !1784, line: 73, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1784, line: 20, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1791, file: !1784, line: 21, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1795, line: 25, baseType: !1796)
!1795 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1795, line: 25, elements: !263)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1779, file: !1766, line: 195, baseType: !1765, size: 512, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1779, file: !1766, line: 196, baseType: !1799, size: 64, offset: 640)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1766, line: 156, size: 192, elements: !1802)
!1802 = !{!1803, !1808, !1813}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1801, file: !1766, line: 157, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!149, !1778, !1776}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1801, file: !1766, line: 158, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!592, !1778, !1776}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1801, file: !1766, line: 159, baseType: !1814, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!149, !1778, !1776, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1766, line: 148, size: 20736, elements: !1820)
!1820 = !{!1821, !1824, !1828, !1829, !1833}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1819, file: !1766, line: 149, baseType: !1822, size: 192)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, size: 192, elements: !1205)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1819, file: !1766, line: 150, baseType: !1825, size: 4096, offset: 192)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, size: 4096, elements: !1826)
!1826 = !{!1827}
!1827 = !DISubrange(count: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1819, file: !1766, line: 151, baseType: !149, size: 32, offset: 4288)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1819, file: !1766, line: 152, baseType: !1830, size: 16384, offset: 4320)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 16384, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: 2048)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1819, file: !1766, line: 153, baseType: !149, size: 32, offset: 20704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1765, file: !1766, line: 69, baseType: !1835, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1766, line: 138, size: 448, elements: !1837)
!1837 = !{!1838, !1842, !1862, !1864, !2993, !3026, !3030}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1836, file: !1766, line: 139, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1776}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1836, file: !1766, line: 140, baseType: !1843, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1846, line: 230, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1858}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1845, file: !1846, line: 231, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!318, !1776, !1852, !1823}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1846, line: 30, size: 128, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1853, file: !1846, line: 31, baseType: !592, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1853, file: !1846, line: 32, baseType: !1857, size: 16, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !249, line: 19, baseType: !259)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1845, file: !1846, line: 232, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!318, !1776, !1852, !592, !324}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1836, file: !1766, line: 141, baseType: !1863, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1836, file: !1766, line: 142, baseType: !1865, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1846, line: 84, size: 320, elements: !1869)
!1869 = !{!1870, !1871, !1875, !2990, !2991}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !1846, line: 85, baseType: !592, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1868, file: !1846, line: 86, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1857, !1776, !1852, !149}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1868, file: !1846, line: 88, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1857, !1776, !1879, !149}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1846, line: 168, size: 448, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1895, !1896}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1880, file: !1846, line: 169, baseType: !1853, size: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1880, file: !1846, line: 170, baseType: !324, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1880, file: !1846, line: 171, baseType: !323, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1880, file: !1846, line: 172, baseType: !1886, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!318, !1889, !1776, !1879, !1823, !1892, !324}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1891, line: 526, flags: DIFlagFwdDecl)
!1891 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !249, line: 46, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !320, line: 88, baseType: !1894)
!1894 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1880, file: !1846, line: 174, baseType: !1886, size: 64, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1880, file: !1846, line: 176, baseType: !1897, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!149, !1889, !1776, !1879, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1902, line: 305, size: 1472, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1916, !1917, !2964, !2970, !2971, !2976, !2977, !2980, !2984, !2985, !2986, !2987, !2988}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1901, file: !1902, line: 308, baseType: !327, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1901, file: !1902, line: 309, baseType: !327, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1901, file: !1902, line: 313, baseType: !1900, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1901, file: !1902, line: 313, baseType: !1900, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1901, file: !1902, line: 315, baseType: !1909, size: 192, align: 64, offset: 256)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1910, line: 24, size: 192, align: 64, elements: !1911)
!1910 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1911 = !{!1912, !1913, !1915}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1909, file: !1910, line: 25, baseType: !327, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1909, file: !1910, line: 26, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1909, file: !1910, line: 27, baseType: !1914, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1901, file: !1902, line: 323, baseType: !327, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1901, file: !1902, line: 327, baseType: !1918, size: 64, offset: 512)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1902, line: 388, size: 7296, elements: !1920)
!1920 = !{!1921, !2960}
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !1902, line: 389, baseType: !1922, size: 7296)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1902, line: 389, size: 7296, elements: !1923)
!1923 = !{!1924, !1925, !1929, !1933, !1937, !1938, !1939, !1940, !1941, !1949, !1954, !1955, !1956, !1957, !1966, !1967, !1968, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2003, !2011, !2014, !2044, !2045, !2930, !2931, !2934, !2938, !2939, !2942, !2943, !2944, !2947, !2959}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1922, file: !1902, line: 390, baseType: !1900, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1922, file: !1902, line: 391, baseType: !1926, size: 64, offset: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1910, line: 31, size: 64, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1926, file: !1910, line: 32, baseType: !1914, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1922, file: !1902, line: 392, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !337, line: 23, baseType: !1931)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !339, line: 31, baseType: !1932)
!1932 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1922, file: !1902, line: 394, baseType: !1934, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!327, !1889, !327, !327, !327, !327}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1922, file: !1902, line: 398, baseType: !327, size: 64, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1922, file: !1902, line: 399, baseType: !327, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1922, file: !1902, line: 405, baseType: !327, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1922, file: !1902, line: 406, baseType: !327, size: 64, offset: 448)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1922, file: !1902, line: 407, baseType: !1942, size: 64, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1891, line: 286, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1891, line: 286, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1944, file: !1891, line: 286, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1948, line: 18, baseType: !327)
!1948 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1922, file: !1902, line: 416, baseType: !1950, size: 32, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !249, line: 168, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 166, size: 32, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1951, file: !249, line: 167, baseType: !149, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1922, file: !1902, line: 428, baseType: !1950, size: 32, offset: 608)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1922, file: !1902, line: 437, baseType: !1950, size: 32, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1922, file: !1902, line: 447, baseType: !1950, size: 32, offset: 672)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1922, file: !1902, line: 450, baseType: !1958, size: 64, offset: 704)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1959, line: 13, baseType: !1960)
!1959 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !249, line: 175, baseType: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 173, size: 64, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1961, file: !249, line: 174, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !337, line: 22, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !339, line: 30, baseType: !1894)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1922, file: !1902, line: 452, baseType: !149, size: 32, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1922, file: !1902, line: 454, baseType: !1783, offset: 800)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1922, file: !1902, line: 457, baseType: !1969, size: 256, offset: 832)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1970, line: 35, size: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1973, !1974, !1976}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1969, file: !1970, line: 36, baseType: !1958, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1969, file: !1970, line: 42, baseType: !1958, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1969, file: !1970, line: 46, baseType: !1975, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1784, line: 29, baseType: !1791)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1969, file: !1970, line: 47, baseType: !1770, size: 128, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1922, file: !1902, line: 459, baseType: !1770, size: 128, offset: 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1922, file: !1902, line: 466, baseType: !327, size: 64, offset: 1216)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1922, file: !1902, line: 467, baseType: !327, size: 64, offset: 1280)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1922, file: !1902, line: 469, baseType: !327, size: 64, offset: 1344)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1922, file: !1902, line: 470, baseType: !327, size: 64, offset: 1408)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1922, file: !1902, line: 471, baseType: !1960, size: 64, offset: 1472)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1922, file: !1902, line: 472, baseType: !327, size: 64, offset: 1536)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1922, file: !1902, line: 473, baseType: !327, size: 64, offset: 1600)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1922, file: !1902, line: 474, baseType: !327, size: 64, offset: 1664)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1922, file: !1902, line: 475, baseType: !327, size: 64, offset: 1728)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1922, file: !1902, line: 477, baseType: !1783, offset: 1792)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1922, file: !1902, line: 478, baseType: !327, size: 64, offset: 1792)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1922, file: !1902, line: 478, baseType: !327, size: 64, offset: 1856)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1922, file: !1902, line: 478, baseType: !327, size: 64, offset: 1920)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1922, file: !1902, line: 478, baseType: !327, size: 64, offset: 1984)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1922, file: !1902, line: 479, baseType: !327, size: 64, offset: 2048)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1922, file: !1902, line: 479, baseType: !327, size: 64, offset: 2112)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1922, file: !1902, line: 479, baseType: !327, size: 64, offset: 2176)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1922, file: !1902, line: 480, baseType: !327, size: 64, offset: 2240)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1922, file: !1902, line: 480, baseType: !327, size: 64, offset: 2304)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1922, file: !1902, line: 480, baseType: !327, size: 64, offset: 2368)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1922, file: !1902, line: 480, baseType: !327, size: 64, offset: 2432)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1922, file: !1902, line: 482, baseType: !2000, size: 2816, offset: 2496)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2816, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 44)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1922, file: !1902, line: 488, baseType: !2004, size: 256, offset: 5312)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2005, line: 60, size: 256, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2004, file: !2005, line: 61, baseType: !2008, size: 256)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1958, size: 256, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 4)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1922, file: !1902, line: 490, baseType: !2012, size: 64, offset: 5568)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1902, line: 490, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1922, file: !1902, line: 493, baseType: !2015, size: 896, offset: 5632)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2016, line: 53, baseType: !2017)
!2016 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2016, line: 13, size: 896, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2025, !2026, !2033, !2034, !2038, !2039, !2040}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2017, file: !2016, line: 18, baseType: !1930, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2017, file: !2016, line: 28, baseType: !1960, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2017, file: !2016, line: 31, baseType: !1969, size: 256, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2017, file: !2016, line: 32, baseType: !2023, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2016, line: 32, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2017, file: !2016, line: 37, baseType: !259, size: 16, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2017, file: !2016, line: 40, baseType: !2027, size: 192, offset: 512)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !2028, line: 53, size: 192, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2027, file: !2028, line: 54, baseType: !1958, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2027, file: !2028, line: 55, baseType: !1783, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2027, file: !2028, line: 59, baseType: !1770, size: 128, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2017, file: !2016, line: 41, baseType: !323, size: 64, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2017, file: !2016, line: 42, baseType: !2035, size: 64, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2016, line: 42, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2017, file: !2016, line: 44, baseType: !1950, size: 32, offset: 832)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2017, file: !2016, line: 50, baseType: !1202, size: 16, offset: 864)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2017, file: !2016, line: 51, baseType: !2041, size: 16, offset: 880)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !337, line: 18, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !339, line: 23, baseType: !2043)
!2043 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1902, line: 495, baseType: !327, size: 64, offset: 6528)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1922, file: !1902, line: 497, baseType: !2046, size: 64, offset: 6592)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1902, line: 381, size: 384, elements: !2048)
!2048 = !{!2049, !2050, !2929}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2047, file: !1902, line: 382, baseType: !1950, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2047, file: !1902, line: 383, baseType: !2051, size: 128, offset: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1902, line: 376, size: 128, elements: !2052)
!2052 = !{!2053, !2927}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2051, file: !1902, line: 377, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2056, line: 640, size: 48640, elements: !2057)
!2056 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2057 = !{!2058, !2066, !2068, !2069, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2086, !2104, !2115, !2205, !2206, !2207, !2218, !2219, !2221, !2222, !2223, !2224, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2303, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2359, !2361, !2362, !2363, !2375, !2377, !2378, !2379, !2380, !2381, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2405, !2410, !2414, !2415, !2416, !2419, !2420, !2423, !2426, !2429, !2432, !2435, !2438, !2441, !2447, !2448, !2449, !2455, !2456, !2457, !2458, !2459, !2468, !2469, !2470, !2471, !2472, !2477, !2478, !2479, !2482, !2483, !2486, !2489, !2492, !2495, !2498, !2501, !2502, !2581, !2584, !2587, !2588, !2591, !2592, !2593, !2599, !2600, !2601, !2614, !2615, !2616, !2626, !2631, !2634, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2055, file: !2056, line: 646, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2060, line: 56, size: 128, elements: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2059, file: !2060, line: 57, baseType: !327, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2059, file: !2060, line: 58, baseType: !2064, size: 32, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !337, line: 21, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !339, line: 27, baseType: !5)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2055, file: !2056, line: 649, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !322)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2055, file: !2056, line: 657, baseType: !323, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2055, file: !2056, line: 658, baseType: !2070, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2071, line: 113, baseType: !2072)
!2071 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2071, line: 111, size: 32, elements: !2073)
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2072, file: !2071, line: 112, baseType: !1950, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2055, file: !2056, line: 660, baseType: !5, size: 32, offset: 288)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2055, file: !2056, line: 661, baseType: !5, size: 32, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2055, file: !2056, line: 684, baseType: !149, size: 32, offset: 352)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2055, file: !2056, line: 686, baseType: !149, size: 32, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2055, file: !2056, line: 687, baseType: !149, size: 32, offset: 416)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2055, file: !2056, line: 688, baseType: !149, size: 32, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2055, file: !2056, line: 689, baseType: !5, size: 32, offset: 480)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2055, file: !2056, line: 691, baseType: !2083, size: 64, offset: 512)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2056, line: 691, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2055, file: !2056, line: 692, baseType: !2087, size: 832, offset: 576)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2056, line: 451, size: 832, elements: !2088)
!2088 = !{!2089, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2087, file: !2056, line: 453, baseType: !2090, size: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2056, line: 325, size: 128, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2090, file: !2056, line: 326, baseType: !327, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2090, file: !2056, line: 327, baseType: !2064, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2087, file: !2056, line: 454, baseType: !1909, size: 192, align: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2087, file: !2056, line: 455, baseType: !1770, size: 128, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2087, file: !2056, line: 456, baseType: !5, size: 32, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2087, file: !2056, line: 458, baseType: !1930, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2087, file: !2056, line: 459, baseType: !1930, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2087, file: !2056, line: 460, baseType: !1930, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2087, file: !2056, line: 461, baseType: !1930, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2087, file: !2056, line: 463, baseType: !1930, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2087, file: !2056, line: 465, baseType: !2103, offset: 832)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2056, line: 415, elements: !263)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2055, file: !2056, line: 693, baseType: !2105, size: 384, offset: 1408)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2056, line: 489, size: 384, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2105, file: !2056, line: 490, baseType: !1770, size: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2105, file: !2056, line: 491, baseType: !327, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2105, file: !2056, line: 492, baseType: !327, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2105, file: !2056, line: 493, baseType: !5, size: 32, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2105, file: !2056, line: 494, baseType: !259, size: 16, offset: 288)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2105, file: !2056, line: 495, baseType: !259, size: 16, offset: 304)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2105, file: !2056, line: 497, baseType: !2114, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2055, file: !2056, line: 697, baseType: !2116, size: 1792, offset: 1792)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2056, line: 507, size: 1792, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2202, !2203}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2116, file: !2056, line: 508, baseType: !1909, size: 192, align: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2116, file: !2056, line: 515, baseType: !1930, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2116, file: !2056, line: 516, baseType: !1930, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2116, file: !2056, line: 517, baseType: !1930, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2116, file: !2056, line: 518, baseType: !1930, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2116, file: !2056, line: 519, baseType: !1930, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2116, file: !2056, line: 526, baseType: !1964, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2116, file: !2056, line: 527, baseType: !1930, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !2056, line: 528, baseType: !5, size: 32, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2116, file: !2056, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2116, file: !2056, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2116, file: !2056, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2116, file: !2056, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2116, file: !2056, line: 563, baseType: !2132, size: 512, offset: 704)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !170, line: 118, size: 512, elements: !2133)
!2133 = !{!2134, !2142, !2143, !2148, !2198, !2199, !2200, !2201}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2132, file: !170, line: 119, baseType: !2135, size: 256)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2136, line: 9, size: 256, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2135, file: !2136, line: 10, baseType: !1909, size: 192, align: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2135, file: !2136, line: 11, baseType: !2140, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2141, line: 29, baseType: !1964)
!2141 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2132, file: !170, line: 120, baseType: !2140, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2132, file: !170, line: 121, baseType: !2144, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!169, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2132, file: !170, line: 122, baseType: !2149, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !170, line: 159, size: 512, align: 512, elements: !2151)
!2151 = !{!2152, !2170, !2171, !2174, !2184, !2185, !2193, !2197}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2150, file: !170, line: 160, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !170, line: 214, size: 4608, align: 512, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2154, file: !170, line: 215, baseType: !1975)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2154, file: !170, line: 216, baseType: !5, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2154, file: !170, line: 217, baseType: !5, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2154, file: !170, line: 218, baseType: !5, size: 32, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2154, file: !170, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2154, file: !170, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2154, file: !170, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2154, file: !170, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2154, file: !170, line: 233, baseType: !2140, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2154, file: !170, line: 234, baseType: !2147, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2154, file: !170, line: 235, baseType: !2140, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2154, file: !170, line: 236, baseType: !2147, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2154, file: !170, line: 237, baseType: !2169, size: 4096, offset: 512)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2150, size: 4096, elements: !585)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2150, file: !170, line: 161, baseType: !5, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2150, file: !170, line: 162, baseType: !2172, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !249, line: 27, baseType: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !320, line: 96, baseType: !149)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2150, file: !170, line: 163, baseType: !2175, size: 32, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !2176, line: 276, baseType: !2177)
!2176 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !2176, line: 276, size: 32, elements: !2178)
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2177, file: !2176, line: 276, baseType: !2180, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !2176, line: 70, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !2176, line: 65, size: 32, elements: !2182)
!2182 = !{!2183}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !2181, file: !2176, line: 66, baseType: !5, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2150, file: !170, line: 164, baseType: !2147, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2150, file: !170, line: 165, baseType: !2186, size: 128, offset: 256)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2136, line: 14, size: 128, elements: !2187)
!2187 = !{!2188}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2186, file: !2136, line: 15, baseType: !2189, size: 128)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1910, line: 125, size: 128, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2189, file: !1910, line: 126, baseType: !1926, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2189, file: !1910, line: 127, baseType: !1914, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2150, file: !170, line: 166, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!2140}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2150, file: !170, line: 167, baseType: !2140, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2132, file: !170, line: 123, baseType: !336, size: 8, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2132, file: !170, line: 124, baseType: !336, size: 8, offset: 456)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2132, file: !170, line: 125, baseType: !336, size: 8, offset: 464)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2132, file: !170, line: 126, baseType: !336, size: 8, offset: 472)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2116, file: !2056, line: 572, baseType: !2132, size: 512, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2116, file: !2056, line: 580, baseType: !2204, size: 64, offset: 1728)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2055, file: !2056, line: 721, baseType: !5, size: 32, offset: 3584)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2055, file: !2056, line: 722, baseType: !149, size: 32, offset: 3616)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2055, file: !2056, line: 723, baseType: !2208, size: 64, offset: 3648)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2211, line: 17, baseType: !2212)
!2211 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2211, line: 17, size: 64, elements: !2213)
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2212, file: !2211, line: 17, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: 1)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2055, file: !2056, line: 724, baseType: !2210, size: 64, offset: 3712)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2055, file: !2056, line: 749, baseType: !2220, offset: 3776)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2056, line: 290, elements: !263)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2055, file: !2056, line: 751, baseType: !1770, size: 128, offset: 3776)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2055, file: !2056, line: 757, baseType: !1918, size: 64, offset: 3904)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2055, file: !2056, line: 758, baseType: !1918, size: 64, offset: 3968)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2055, file: !2056, line: 761, baseType: !2225, size: 320, offset: 4032)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2005, line: 34, size: 320, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2225, file: !2005, line: 35, baseType: !1930, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2225, file: !2005, line: 36, baseType: !2229, size: 256, offset: 64)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, size: 256, elements: !2009)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2055, file: !2056, line: 766, baseType: !149, size: 32, offset: 4352)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2055, file: !2056, line: 767, baseType: !149, size: 32, offset: 4384)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2055, file: !2056, line: 768, baseType: !149, size: 32, offset: 4416)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2055, file: !2056, line: 770, baseType: !149, size: 32, offset: 4448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2055, file: !2056, line: 772, baseType: !327, size: 64, offset: 4480)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2055, file: !2056, line: 775, baseType: !5, size: 32, offset: 4544)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2055, file: !2056, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2055, file: !2056, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2055, file: !2056, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2055, file: !2056, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2055, file: !2056, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2055, file: !2056, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2055, file: !2056, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2055, file: !2056, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2055, file: !2056, line: 831, baseType: !327, size: 64, offset: 4672)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2055, file: !2056, line: 833, baseType: !2246, size: 384, offset: 4736)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !175, line: 25, size: 384, elements: !2247)
!2247 = !{!2248, !2253}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2246, file: !175, line: 26, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!322, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !175, line: 27, baseType: !2254, size: 320, offset: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2246, file: !175, line: 27, size: 320, elements: !2255)
!2255 = !{!2256, !2266, !2293}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2254, file: !175, line: 36, baseType: !2257, size: 320)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2254, file: !175, line: 29, size: 320, elements: !2258)
!2258 = !{!2259, !2261, !2262, !2263, !2264, !2265}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2257, file: !175, line: 30, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2257, file: !175, line: 31, baseType: !2064, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !175, line: 32, baseType: !2064, size: 32, offset: 96)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2257, file: !175, line: 33, baseType: !2064, size: 32, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2257, file: !175, line: 34, baseType: !1930, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2257, file: !175, line: 35, baseType: !2260, size: 64, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2254, file: !175, line: 46, baseType: !2267, size: 192)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2254, file: !175, line: 38, size: 192, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2292}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2267, file: !175, line: 39, baseType: !2172, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2267, file: !175, line: 40, baseType: !174, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !175, line: 41, baseType: !2272, size: 64, offset: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !175, line: 41, size: 64, elements: !2273)
!2273 = !{!2274, !2282}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2272, file: !175, line: 42, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2277, line: 7, size: 128, elements: !2278)
!2277 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !{!2279, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2276, file: !2277, line: 8, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !320, line: 93, baseType: !1894)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2276, file: !2277, line: 9, baseType: !1894, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2272, file: !175, line: 43, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2285, line: 7, size: 64, elements: !2286)
!2285 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !{!2287, !2291}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2284, file: !2285, line: 8, baseType: !2288, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2285, line: 5, baseType: !2289)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !337, line: 20, baseType: !2290)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !339, line: 26, baseType: !149)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2284, file: !2285, line: 9, baseType: !2289, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2267, file: !175, line: 45, baseType: !1930, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2254, file: !175, line: 54, baseType: !2294, size: 256)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2254, file: !175, line: 48, size: 256, elements: !2295)
!2295 = !{!2296, !2299, !2300, !2301, !2302}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2294, file: !175, line: 49, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !175, line: 14, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2294, file: !175, line: 50, baseType: !149, size: 32, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2294, file: !175, line: 51, baseType: !149, size: 32, offset: 96)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2294, file: !175, line: 52, baseType: !327, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2294, file: !175, line: 53, baseType: !327, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2055, file: !2056, line: 835, baseType: !2304, size: 32, offset: 5120)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !249, line: 22, baseType: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !320, line: 28, baseType: !149)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2055, file: !2056, line: 836, baseType: !2304, size: 32, offset: 5152)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2055, file: !2056, line: 840, baseType: !327, size: 64, offset: 5184)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2055, file: !2056, line: 849, baseType: !2054, size: 64, offset: 5248)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2055, file: !2056, line: 852, baseType: !2054, size: 64, offset: 5312)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2055, file: !2056, line: 857, baseType: !1770, size: 128, offset: 5376)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2055, file: !2056, line: 858, baseType: !1770, size: 128, offset: 5504)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2055, file: !2056, line: 859, baseType: !2054, size: 64, offset: 5632)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2055, file: !2056, line: 867, baseType: !1770, size: 128, offset: 5696)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2055, file: !2056, line: 868, baseType: !1770, size: 128, offset: 5824)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2055, file: !2056, line: 871, baseType: !2316, size: 64, offset: 5952)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !2318, line: 59, size: 768, elements: !2319)
!2318 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!2319 = !{!2320, !2321, !2322, !2323, !2334, !2335, !2342, !2351}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2317, file: !2318, line: 61, baseType: !2070, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2317, file: !2318, line: 62, baseType: !5, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2317, file: !2318, line: 63, baseType: !1783, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2317, file: !2318, line: 65, baseType: !2324, size: 256, offset: 64)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2325, size: 256, elements: !2009)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !249, line: 182, size: 64, elements: !2326)
!2326 = !{!2327}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2325, file: !249, line: 183, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !249, line: 186, size: 128, elements: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2329, file: !249, line: 187, baseType: !2328, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2329, file: !249, line: 187, baseType: !2333, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2317, file: !2318, line: 66, baseType: !2325, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2317, file: !2318, line: 68, baseType: !2336, size: 128, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !2337, line: 40, baseType: !2338)
!2337 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !2337, line: 36, size: 128, elements: !2339)
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2338, file: !2337, line: 37, baseType: !1783)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2338, file: !2337, line: 38, baseType: !1770, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2317, file: !2318, line: 69, baseType: !2343, size: 128, align: 64, offset: 512)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !249, line: 216, size: 128, align: 64, elements: !2344)
!2344 = !{!2345, !2347}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2343, file: !249, line: 217, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2343, file: !249, line: 218, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2346}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2317, file: !2318, line: 70, baseType: !2352, size: 128, offset: 640)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2353, size: 128, elements: !2216)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !2318, line: 54, size: 128, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2353, file: !2318, line: 55, baseType: !149, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2353, file: !2318, line: 56, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2318, line: 56, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2055, file: !2056, line: 872, baseType: !2360, size: 512, offset: 6016)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2329, size: 512, elements: !2009)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2055, file: !2056, line: 873, baseType: !1770, size: 128, offset: 6528)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2055, file: !2056, line: 874, baseType: !1770, size: 128, offset: 6656)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2055, file: !2056, line: 876, baseType: !2364, size: 64, offset: 6784)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2366, line: 26, size: 192, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2365, file: !2366, line: 27, baseType: !5, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2365, file: !2366, line: 28, baseType: !2370, size: 128, offset: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2371, line: 43, size: 128, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2370, file: !2371, line: 44, baseType: !1975)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2370, file: !2371, line: 45, baseType: !1770, size: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2055, file: !2056, line: 879, baseType: !2376, size: 64, offset: 6848)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2055, file: !2056, line: 882, baseType: !2376, size: 64, offset: 6912)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2055, file: !2056, line: 884, baseType: !1930, size: 64, offset: 6976)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2055, file: !2056, line: 885, baseType: !1930, size: 64, offset: 7040)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2055, file: !2056, line: 890, baseType: !1930, size: 64, offset: 7104)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2055, file: !2056, line: 891, baseType: !2382, size: 128, offset: 7168)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2056, line: 242, size: 128, elements: !2383)
!2383 = !{!2384, !2385, !2386}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2382, file: !2056, line: 244, baseType: !1930, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2382, file: !2056, line: 245, baseType: !1930, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2382, file: !2056, line: 246, baseType: !1975, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2055, file: !2056, line: 900, baseType: !327, size: 64, offset: 7296)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2055, file: !2056, line: 901, baseType: !327, size: 64, offset: 7360)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2055, file: !2056, line: 904, baseType: !1930, size: 64, offset: 7424)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2055, file: !2056, line: 907, baseType: !1930, size: 64, offset: 7488)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2055, file: !2056, line: 910, baseType: !327, size: 64, offset: 7552)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2055, file: !2056, line: 911, baseType: !327, size: 64, offset: 7616)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2055, file: !2056, line: 914, baseType: !2394, size: 640, offset: 7680)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2395, line: 123, size: 640, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2396 = !{!2397, !2403, !2404}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2394, file: !2395, line: 124, baseType: !2398, size: 576)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2399, size: 576, elements: !1205)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2395, line: 108, size: 192, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2399, file: !2395, line: 109, baseType: !1930, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2399, file: !2395, line: 110, baseType: !2186, size: 128, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2394, file: !2395, line: 125, baseType: !5, size: 32, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2394, file: !2395, line: 126, baseType: !5, size: 32, offset: 608)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2055, file: !2056, line: 917, baseType: !2406, size: 192, offset: 8320)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2395, line: 134, size: 192, elements: !2407)
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2406, file: !2395, line: 135, baseType: !2343, size: 128, align: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2406, file: !2395, line: 136, baseType: !5, size: 32, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2055, file: !2056, line: 923, baseType: !2411, size: 64, offset: 8512)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2413)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2056, line: 923, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2055, file: !2056, line: 926, baseType: !2411, size: 64, offset: 8576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2055, file: !2056, line: 929, baseType: !2411, size: 64, offset: 8640)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2055, file: !2056, line: 933, baseType: !2417, size: 64, offset: 8704)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2056, line: 933, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2055, file: !2056, line: 943, baseType: !588, size: 128, offset: 8768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2055, file: !2056, line: 945, baseType: !2421, size: 64, offset: 8896)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2056, line: 49, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2055, file: !2056, line: 956, baseType: !2424, size: 64, offset: 8960)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2056, line: 45, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2055, file: !2056, line: 959, baseType: !2427, size: 64, offset: 9024)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2056, line: 959, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2055, file: !2056, line: 962, baseType: !2430, size: 64, offset: 9088)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2056, line: 66, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2055, file: !2056, line: 966, baseType: !2433, size: 64, offset: 9152)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2056, line: 50, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2055, file: !2056, line: 969, baseType: !2436, size: 64, offset: 9216)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2395, line: 223, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2055, file: !2056, line: 970, baseType: !2439, size: 64, offset: 9280)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2056, line: 62, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2055, file: !2056, line: 971, baseType: !2442, size: 64, offset: 9344)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2443, line: 25, baseType: !2444)
!2443 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2443, line: 23, size: 64, elements: !2445)
!2445 = !{!2446}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2444, file: !2443, line: 24, baseType: !2215, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2055, file: !2056, line: 972, baseType: !2442, size: 64, offset: 9408)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2055, file: !2056, line: 974, baseType: !2442, size: 64, offset: 9472)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2055, file: !2056, line: 975, baseType: !2450, size: 192, offset: 9536)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2451, line: 30, size: 192, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2450, file: !2451, line: 31, baseType: !1770, size: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2450, file: !2451, line: 32, baseType: !2442, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2055, file: !2056, line: 976, baseType: !327, size: 64, offset: 9728)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2055, file: !2056, line: 977, baseType: !324, size: 64, offset: 9792)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2055, file: !2056, line: 978, baseType: !5, size: 32, offset: 9856)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2055, file: !2056, line: 980, baseType: !2346, size: 64, offset: 9920)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2055, file: !2056, line: 989, baseType: !2460, size: 128, offset: 9984)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2461, line: 35, size: 128, elements: !2462)
!2461 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2462 = !{!2463, !2464, !2465}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2460, file: !2461, line: 36, baseType: !149, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2460, file: !2461, line: 37, baseType: !1950, size: 32, offset: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2460, file: !2461, line: 38, baseType: !2466, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2461, line: 23, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2055, file: !2056, line: 992, baseType: !1930, size: 64, offset: 10112)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2055, file: !2056, line: 993, baseType: !1930, size: 64, offset: 10176)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2055, file: !2056, line: 996, baseType: !1783, offset: 10240)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2055, file: !2056, line: 999, baseType: !1975, offset: 10240)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2055, file: !2056, line: 1001, baseType: !2473, size: 64, offset: 10240)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2056, line: 636, size: 64, elements: !2474)
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2473, file: !2056, line: 637, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2055, file: !2056, line: 1005, baseType: !2189, size: 128, offset: 10304)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2055, file: !2056, line: 1007, baseType: !2054, size: 64, offset: 10432)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2055, file: !2056, line: 1009, baseType: !2480, size: 64, offset: 10496)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2056, line: 1009, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2055, file: !2056, line: 1043, baseType: !323, size: 64, offset: 10560)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2055, file: !2056, line: 1046, baseType: !2484, size: 64, offset: 10624)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2056, line: 41, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2055, file: !2056, line: 1050, baseType: !2487, size: 64, offset: 10688)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2056, line: 42, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2055, file: !2056, line: 1054, baseType: !2490, size: 64, offset: 10752)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2056, line: 55, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2055, file: !2056, line: 1056, baseType: !2493, size: 64, offset: 10816)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !2056, line: 40, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2055, file: !2056, line: 1058, baseType: !2496, size: 64, offset: 10880)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2056, line: 47, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2055, file: !2056, line: 1061, baseType: !2499, size: 64, offset: 10944)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2056, line: 43, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2055, file: !2056, line: 1064, baseType: !327, size: 64, offset: 11008)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2055, file: !2056, line: 1065, baseType: !2503, size: 64, offset: 11072)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2451, line: 14, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2451, line: 12, size: 384, elements: !2506)
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2505, file: !2451, line: 13, baseType: !2508, size: 384)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2505, file: !2451, line: 13, size: 384, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2508, file: !2451, line: 13, baseType: !149, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2508, file: !2451, line: 13, baseType: !149, size: 32, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2508, file: !2451, line: 13, baseType: !149, size: 32, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2508, file: !2451, line: 13, baseType: !2514, size: 256, offset: 128)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2515, line: 32, size: 256, elements: !2516)
!2515 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2516 = !{!2517, !2523, !2536, !2542, !2551, !2570, !2575}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2514, file: !2515, line: 37, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 34, size: 64, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2518, file: !2515, line: 35, baseType: !2305, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2518, file: !2515, line: 36, baseType: !2522, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !320, line: 49, baseType: !5)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2514, file: !2515, line: 45, baseType: !2524, size: 192)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 40, size: 192, elements: !2525)
!2525 = !{!2526, !2528, !2529, !2535}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2524, file: !2515, line: 41, baseType: !2527, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !320, line: 95, baseType: !149)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2524, file: !2515, line: 42, baseType: !149, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2524, file: !2515, line: 43, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2515, line: 11, baseType: !2531)
!2531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2515, line: 8, size: 64, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2531, file: !2515, line: 9, baseType: !149, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2531, file: !2515, line: 10, baseType: !323, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2524, file: !2515, line: 44, baseType: !149, size: 32, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2514, file: !2515, line: 52, baseType: !2537, size: 128)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 48, size: 128, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2537, file: !2515, line: 49, baseType: !2305, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2537, file: !2515, line: 50, baseType: !2522, size: 32, offset: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2537, file: !2515, line: 51, baseType: !2530, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2514, file: !2515, line: 61, baseType: !2543, size: 256)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 55, size: 256, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2550}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2543, file: !2515, line: 56, baseType: !2305, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2543, file: !2515, line: 57, baseType: !2522, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2543, file: !2515, line: 58, baseType: !149, size: 32, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2543, file: !2515, line: 59, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !320, line: 94, baseType: !321)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2543, file: !2515, line: 60, baseType: !2549, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2514, file: !2515, line: 95, baseType: !2552, size: 256)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 64, size: 256, elements: !2553)
!2553 = !{!2554, !2555}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2552, file: !2515, line: 65, baseType: !323, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2515, line: 77, baseType: !2556, size: 192, offset: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !2515, line: 77, size: 192, elements: !2557)
!2557 = !{!2558, !2559, !2565}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2556, file: !2515, line: 82, baseType: !2043, size: 16)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2556, file: !2515, line: 88, baseType: !2560, size: 192)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !2515, line: 84, size: 192, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2560, file: !2515, line: 85, baseType: !583, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2560, file: !2515, line: 86, baseType: !323, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2560, file: !2515, line: 87, baseType: !323, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2556, file: !2515, line: 93, baseType: !2566, size: 96)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2556, file: !2515, line: 90, size: 96, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2566, file: !2515, line: 91, baseType: !583, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2566, file: !2515, line: 92, baseType: !2065, size: 32, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2514, file: !2515, line: 101, baseType: !2571, size: 128)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 98, size: 128, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2571, file: !2515, line: 99, baseType: !322, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2571, file: !2515, line: 100, baseType: !149, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2514, file: !2515, line: 108, baseType: !2576, size: 128)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2514, file: !2515, line: 104, size: 128, elements: !2577)
!2577 = !{!2578, !2579, !2580}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2576, file: !2515, line: 105, baseType: !323, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2576, file: !2515, line: 106, baseType: !149, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2576, file: !2515, line: 107, baseType: !5, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2055, file: !2056, line: 1067, baseType: !2582, offset: 11136)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2583, line: 12, elements: !263)
!2583 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2055, file: !2056, line: 1099, baseType: !2585, size: 64, offset: 11136)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2056, line: 56, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2055, file: !2056, line: 1103, baseType: !1770, size: 128, offset: 11200)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2055, file: !2056, line: 1104, baseType: !2589, size: 64, offset: 11328)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2056, line: 46, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2055, file: !2056, line: 1105, baseType: !2027, size: 192, offset: 11392)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2055, file: !2056, line: 1106, baseType: !5, size: 32, offset: 11584)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2055, file: !2056, line: 1109, baseType: !2594, size: 128, offset: 11648)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 128, elements: !2597)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2056, line: 51, flags: DIFlagFwdDecl)
!2597 = !{!2598}
!2598 = !DISubrange(count: 2)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2055, file: !2056, line: 1110, baseType: !2027, size: 192, offset: 11776)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2055, file: !2056, line: 1111, baseType: !1770, size: 128, offset: 11968)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2055, file: !2056, line: 1173, baseType: !2602, size: 64, offset: 12096)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2604, line: 62, size: 256, align: 256, elements: !2605)
!2604 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2605 = !{!2606, !2607, !2608, !2613}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2603, file: !2604, line: 75, baseType: !2065, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2603, file: !2604, line: 90, baseType: !2065, size: 32, offset: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2603, file: !2604, line: 124, baseType: !2609, size: 64, offset: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2603, file: !2604, line: 109, size: 64, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2609, file: !2604, line: 110, baseType: !1931, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2609, file: !2604, line: 112, baseType: !1931, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2603, file: !2604, line: 144, baseType: !2065, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2055, file: !2056, line: 1174, baseType: !2064, size: 32, offset: 12160)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2055, file: !2056, line: 1179, baseType: !327, size: 64, offset: 12224)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2055, file: !2056, line: 1182, baseType: !2617, size: 128, offset: 12288)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2005, line: 76, size: 128, elements: !2618)
!2618 = !{!2619, !2624, !2625}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2617, file: !2005, line: 85, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2621, line: 7, size: 64, elements: !2622)
!2621 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2620, file: !2621, line: 12, baseType: !2212, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2617, file: !2005, line: 88, baseType: !248, size: 8, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2617, file: !2005, line: 95, baseType: !248, size: 8, offset: 72)
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !2056, line: 1184, baseType: !2627, size: 128, offset: 12416)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2055, file: !2056, line: 1184, size: 128, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2627, file: !2056, line: 1185, baseType: !2070, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2627, file: !2056, line: 1186, baseType: !2343, size: 128, align: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2055, file: !2056, line: 1190, baseType: !2632, size: 64, offset: 12544)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2056, line: 53, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2055, file: !2056, line: 1192, baseType: !2635, size: 128, offset: 12608)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2005, line: 64, size: 128, elements: !2636)
!2636 = !{!2637, !2730, !2731}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2635, file: !2005, line: 65, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1902, line: 68, size: 512, align: 128, elements: !2640)
!2640 = !{!2641, !2642, !2722, !2729}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2639, file: !1902, line: 69, baseType: !327, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !1902, line: 77, baseType: !2643, size: 320, offset: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !1902, line: 77, size: 320, elements: !2644)
!2644 = !{!2645, !2654, !2659, !2687, !2695, !2701, !2714, !2721}
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 78, baseType: !2646, size: 320)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 78, size: 320, elements: !2647)
!2647 = !{!2648, !2649, !2652, !2653}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2646, file: !1902, line: 84, baseType: !1770, size: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2646, file: !1902, line: 86, baseType: !2650, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1902, line: 26, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2646, file: !1902, line: 87, baseType: !327, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2646, file: !1902, line: 94, baseType: !327, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 96, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 96, size: 64, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2655, file: !1902, line: 101, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !249, line: 143, baseType: !1930)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 103, baseType: !2660, size: 320)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 103, size: 320, elements: !2661)
!2661 = !{!2662, !2672, !2675, !2676}
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !1902, line: 104, baseType: !2663, size: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2660, file: !1902, line: 104, size: 128, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2663, file: !1902, line: 105, baseType: !1770, size: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !1902, line: 106, baseType: !2667, size: 128)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !1902, line: 106, size: 128, elements: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2667, file: !1902, line: 107, baseType: !2638, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2667, file: !1902, line: 109, baseType: !149, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2667, file: !1902, line: 110, baseType: !149, size: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2660, file: !1902, line: 117, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1902, line: 117, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2660, file: !1902, line: 119, baseType: !323, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, scope: !2660, file: !1902, line: 120, baseType: !2677, size: 64, offset: 256)
!2677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2660, file: !1902, line: 120, size: 64, elements: !2678)
!2678 = !{!2679, !2680, !2681}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2677, file: !1902, line: 121, baseType: !323, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2677, file: !1902, line: 122, baseType: !327, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, scope: !2677, file: !1902, line: 123, baseType: !2682, size: 32)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !1902, line: 123, size: 32, elements: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2682, file: !1902, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2682, file: !1902, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2682, file: !1902, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2687 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 130, baseType: !2688, size: 192)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 130, size: 192, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2688, file: !1902, line: 131, baseType: !327, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2688, file: !1902, line: 134, baseType: !225, size: 8, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2688, file: !1902, line: 135, baseType: !225, size: 8, offset: 72)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2688, file: !1902, line: 136, baseType: !1950, size: 32, offset: 96)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2688, file: !1902, line: 137, baseType: !5, size: 32, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 139, baseType: !2696, size: 256)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 139, size: 256, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2696, file: !1902, line: 140, baseType: !327, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2696, file: !1902, line: 141, baseType: !1950, size: 32, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2696, file: !1902, line: 143, baseType: !1770, size: 128, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 145, baseType: !2702, size: 256)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 145, size: 256, elements: !2703)
!2703 = !{!2704, !2705, !2707, !2708, !2713}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2702, file: !1902, line: 146, baseType: !327, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2702, file: !1902, line: 147, baseType: !2706, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1891, line: 509, baseType: !2638)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2702, file: !1902, line: 148, baseType: !327, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !1902, line: 149, baseType: !2709, size: 64, offset: 192)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2702, file: !1902, line: 149, size: 64, elements: !2710)
!2710 = !{!2711, !2712}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2709, file: !1902, line: 150, baseType: !1918, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2709, file: !1902, line: 151, baseType: !1950, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2702, file: !1902, line: 156, baseType: !1783, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1902, line: 159, baseType: !2715, size: 128)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1902, line: 159, size: 128, elements: !2716)
!2716 = !{!2717, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2715, file: !1902, line: 161, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1902, line: 161, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2715, file: !1902, line: 162, baseType: !323, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2643, file: !1902, line: 176, baseType: !2343, size: 128, align: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !1902, line: 179, baseType: !2723, size: 32, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !1902, line: 179, size: 32, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2723, file: !1902, line: 184, baseType: !1950, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2723, file: !1902, line: 192, baseType: !5, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2723, file: !1902, line: 194, baseType: !5, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2723, file: !1902, line: 195, baseType: !149, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2639, file: !1902, line: 199, baseType: !1950, size: 32, offset: 416)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2635, file: !2005, line: 67, baseType: !2065, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2635, file: !2005, line: 68, baseType: !2065, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2055, file: !2056, line: 1206, baseType: !149, size: 32, offset: 12736)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2055, file: !2056, line: 1207, baseType: !149, size: 32, offset: 12768)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2055, file: !2056, line: 1209, baseType: !327, size: 64, offset: 12800)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2055, file: !2056, line: 1219, baseType: !1930, size: 64, offset: 12864)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2055, file: !2056, line: 1220, baseType: !1930, size: 64, offset: 12928)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2055, file: !2056, line: 1317, baseType: !149, size: 32, offset: 12992)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2055, file: !2056, line: 1319, baseType: !2054, size: 64, offset: 13056)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2055, file: !2056, line: 1322, baseType: !2740, size: 64, offset: 13120)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2056, line: 1322, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2055, file: !2056, line: 1326, baseType: !2070, size: 32, offset: 13184)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2055, file: !2056, line: 1342, baseType: !323, size: 64, offset: 13248)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2055, file: !2056, line: 1343, baseType: !1931, size: 64, offset: 13312)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2055, file: !2056, line: 1344, baseType: !1930, size: 64, offset: 13376)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2055, file: !2056, line: 1345, baseType: !1931, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2055, file: !2056, line: 1346, baseType: !1931, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2055, file: !2056, line: 1347, baseType: !1931, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2055, file: !2056, line: 1348, baseType: !2343, size: 128, align: 64, offset: 13504)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2055, file: !2056, line: 1358, baseType: !2751, size: 34816, offset: 13824)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2752, line: 485, size: 34816, elements: !2753)
!2752 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !{!2754, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2783, !2784, !2785, !2786, !2787, !2788, !2791, !2792, !2793}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2751, file: !2752, line: 487, baseType: !2755, size: 192)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2756, size: 192, elements: !1205)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2757, line: 16, size: 64, elements: !2758)
!2757 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2756, file: !2757, line: 17, baseType: !1202, size: 16)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2756, file: !2757, line: 18, baseType: !1202, size: 16, offset: 16)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2756, file: !2757, line: 19, baseType: !1202, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2756, file: !2757, line: 19, baseType: !1202, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2756, file: !2757, line: 19, baseType: !1202, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2756, file: !2757, line: 19, baseType: !1202, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2756, file: !2757, line: 19, baseType: !1202, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2756, file: !2757, line: 20, baseType: !1202, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2756, file: !2757, line: 20, baseType: !1202, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2756, file: !2757, line: 20, baseType: !1202, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2756, file: !2757, line: 20, baseType: !1202, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2756, file: !2757, line: 20, baseType: !1202, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2756, file: !2757, line: 20, baseType: !1202, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2751, file: !2752, line: 491, baseType: !327, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2751, file: !2752, line: 495, baseType: !259, size: 16, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2751, file: !2752, line: 496, baseType: !259, size: 16, offset: 272)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2751, file: !2752, line: 497, baseType: !259, size: 16, offset: 288)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2751, file: !2752, line: 498, baseType: !259, size: 16, offset: 304)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2751, file: !2752, line: 502, baseType: !327, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2751, file: !2752, line: 503, baseType: !327, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2751, file: !2752, line: 514, baseType: !2780, size: 256, offset: 448)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2781, size: 256, elements: !2009)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2752, line: 483, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2751, file: !2752, line: 516, baseType: !327, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2751, file: !2752, line: 518, baseType: !327, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2751, file: !2752, line: 520, baseType: !327, size: 64, offset: 832)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2751, file: !2752, line: 521, baseType: !327, size: 64, offset: 896)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2751, file: !2752, line: 522, baseType: !327, size: 64, offset: 960)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2751, file: !2752, line: 528, baseType: !2789, size: 64, offset: 1024)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2752, line: 10, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2751, file: !2752, line: 535, baseType: !327, size: 64, offset: 1088)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2751, file: !2752, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2751, file: !2752, line: 540, baseType: !2794, size: 33280, offset: 1536)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2795, line: 317, size: 33280, elements: !2796)
!2795 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2794, file: !2795, line: 330, baseType: !5, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2794, file: !2795, line: 337, baseType: !327, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2794, file: !2795, line: 348, baseType: !2800, size: 32768, offset: 512)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2795, line: 304, size: 32768, elements: !2801)
!2801 = !{!2802, !2817, !2856, !2906, !2923}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2800, file: !2795, line: 305, baseType: !2803, size: 896)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2795, line: 12, size: 896, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2816}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2803, file: !2795, line: 13, baseType: !2064, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2803, file: !2795, line: 14, baseType: !2064, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2803, file: !2795, line: 15, baseType: !2064, size: 32, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2803, file: !2795, line: 16, baseType: !2064, size: 32, offset: 96)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2803, file: !2795, line: 17, baseType: !2064, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2803, file: !2795, line: 18, baseType: !2064, size: 32, offset: 160)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2803, file: !2795, line: 19, baseType: !2064, size: 32, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2803, file: !2795, line: 22, baseType: !2813, size: 640, offset: 224)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 640, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 20)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2803, file: !2795, line: 25, baseType: !2064, size: 32, offset: 864)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2800, file: !2795, line: 306, baseType: !2818, size: 4096, align: 128)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2795, line: 34, size: 4096, align: 128, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2839, !2840, !2841, !2845, !2847, !2851}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2818, file: !2795, line: 35, baseType: !1202, size: 16)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2818, file: !2795, line: 36, baseType: !1202, size: 16, offset: 16)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2818, file: !2795, line: 37, baseType: !1202, size: 16, offset: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2818, file: !2795, line: 38, baseType: !1202, size: 16, offset: 48)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !2795, line: 39, baseType: !2825, size: 128, offset: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2818, file: !2795, line: 39, size: 128, elements: !2826)
!2826 = !{!2827, !2832}
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !2795, line: 40, baseType: !2828, size: 128)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !2795, line: 40, size: 128, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2828, file: !2795, line: 41, baseType: !1930, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2828, file: !2795, line: 42, baseType: !1930, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !2795, line: 44, baseType: !2833, size: 128)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !2795, line: 44, size: 128, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2833, file: !2795, line: 45, baseType: !2064, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2833, file: !2795, line: 46, baseType: !2064, size: 32, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2833, file: !2795, line: 47, baseType: !2064, size: 32, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2833, file: !2795, line: 48, baseType: !2064, size: 32, offset: 96)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2818, file: !2795, line: 51, baseType: !2064, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2818, file: !2795, line: 52, baseType: !2064, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2818, file: !2795, line: 55, baseType: !2842, size: 1024, offset: 256)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 1024, elements: !2843)
!2843 = !{!2844}
!2844 = !DISubrange(count: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2818, file: !2795, line: 58, baseType: !2846, size: 2048, offset: 1280)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 2048, elements: !1826)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2818, file: !2795, line: 60, baseType: !2848, size: 384, offset: 3328)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 384, elements: !2849)
!2849 = !{!2850}
!2850 = !DISubrange(count: 12)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !2795, line: 62, baseType: !2852, size: 384, offset: 3712)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2818, file: !2795, line: 62, size: 384, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2852, file: !2795, line: 63, baseType: !2848, size: 384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2852, file: !2795, line: 64, baseType: !2848, size: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2800, file: !2795, line: 307, baseType: !2857, size: 1088)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2795, line: 79, size: 1088, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2905}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2857, file: !2795, line: 80, baseType: !2064, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2857, file: !2795, line: 81, baseType: !2064, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2857, file: !2795, line: 82, baseType: !2064, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2857, file: !2795, line: 83, baseType: !2064, size: 32, offset: 96)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2857, file: !2795, line: 84, baseType: !2064, size: 32, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2857, file: !2795, line: 85, baseType: !2064, size: 32, offset: 160)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2857, file: !2795, line: 86, baseType: !2064, size: 32, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2857, file: !2795, line: 88, baseType: !2813, size: 640, offset: 224)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2857, file: !2795, line: 89, baseType: !336, size: 8, offset: 864)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2857, file: !2795, line: 90, baseType: !336, size: 8, offset: 872)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2857, file: !2795, line: 91, baseType: !336, size: 8, offset: 880)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2857, file: !2795, line: 92, baseType: !336, size: 8, offset: 888)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2857, file: !2795, line: 93, baseType: !336, size: 8, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2857, file: !2795, line: 94, baseType: !336, size: 8, offset: 904)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2857, file: !2795, line: 95, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2876, line: 11, size: 128, elements: !2877)
!2876 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2875, file: !2876, line: 12, baseType: !322, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2875, file: !2876, line: 13, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2882, line: 56, size: 1344, elements: !2883)
!2882 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2881, file: !2882, line: 61, baseType: !327, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2881, file: !2882, line: 62, baseType: !327, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2881, file: !2882, line: 63, baseType: !327, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2881, file: !2882, line: 64, baseType: !327, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2881, file: !2882, line: 65, baseType: !327, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2881, file: !2882, line: 66, baseType: !327, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2881, file: !2882, line: 68, baseType: !327, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2881, file: !2882, line: 69, baseType: !327, size: 64, offset: 448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2881, file: !2882, line: 70, baseType: !327, size: 64, offset: 512)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2881, file: !2882, line: 71, baseType: !327, size: 64, offset: 576)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2881, file: !2882, line: 72, baseType: !327, size: 64, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2881, file: !2882, line: 73, baseType: !327, size: 64, offset: 704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2881, file: !2882, line: 74, baseType: !327, size: 64, offset: 768)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2881, file: !2882, line: 75, baseType: !327, size: 64, offset: 832)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2881, file: !2882, line: 76, baseType: !327, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2881, file: !2882, line: 81, baseType: !327, size: 64, offset: 960)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2881, file: !2882, line: 83, baseType: !327, size: 64, offset: 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2881, file: !2882, line: 84, baseType: !327, size: 64, offset: 1088)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2881, file: !2882, line: 85, baseType: !327, size: 64, offset: 1152)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2881, file: !2882, line: 86, baseType: !327, size: 64, offset: 1216)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2881, file: !2882, line: 87, baseType: !327, size: 64, offset: 1280)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2857, file: !2795, line: 96, baseType: !2064, size: 32, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2800, file: !2795, line: 308, baseType: !2907, size: 4608, align: 512)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2795, line: 289, size: 4608, align: 512, elements: !2908)
!2908 = !{!2909, !2910, !2919}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2907, file: !2795, line: 290, baseType: !2818, size: 4096, align: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2907, file: !2795, line: 291, baseType: !2911, size: 512, offset: 4096)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2795, line: 268, size: 512, elements: !2912)
!2912 = !{!2913, !2914, !2915}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2911, file: !2795, line: 269, baseType: !1930, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2911, file: !2795, line: 270, baseType: !1930, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2911, file: !2795, line: 271, baseType: !2916, size: 384, offset: 128)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1930, size: 384, elements: !2917)
!2917 = !{!2918}
!2918 = !DISubrange(count: 6)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2907, file: !2795, line: 292, baseType: !2920, offset: 4608)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, elements: !2921)
!2921 = !{!2922}
!2922 = !DISubrange(count: 0)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2800, file: !2795, line: 309, baseType: !2924, size: 32768)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 32768, elements: !2925)
!2925 = !{!2926}
!2926 = !DISubrange(count: 4096)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2051, file: !1902, line: 378, baseType: !2928, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2047, file: !1902, line: 384, baseType: !2365, size: 192, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1922, file: !1902, line: 500, baseType: !1783, offset: 6656)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1922, file: !1902, line: 501, baseType: !2932, size: 64, offset: 6656)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1902, line: 387, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1922, file: !1902, line: 516, baseType: !2935, size: 64, offset: 6720)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2937, line: 18, flags: DIFlagFwdDecl)
!2937 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1922, file: !1902, line: 519, baseType: !1889, size: 64, offset: 6784)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1922, file: !1902, line: 521, baseType: !2940, size: 64, offset: 6848)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1902, line: 521, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1922, file: !1902, line: 545, baseType: !1950, size: 32, offset: 6912)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1922, file: !1902, line: 548, baseType: !248, size: 8, offset: 6944)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1922, file: !1902, line: 550, baseType: !2945, offset: 6952)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2946, line: 142, elements: !263)
!2946 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1922, file: !1902, line: 554, baseType: !2948, size: 256, offset: 6976)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2949, line: 102, size: 256, elements: !2950)
!2949 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2948, file: !2949, line: 103, baseType: !1958, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2948, file: !2949, line: 104, baseType: !1770, size: 128, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2948, file: !2949, line: 105, baseType: !2954, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2949, line: 21, baseType: !2955)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2958}
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1922, file: !1902, line: 557, baseType: !2064, size: 32, offset: 7232)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1919, file: !1902, line: 565, baseType: !2961, offset: 7296)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !2962)
!2962 = !{!2963}
!2963 = !DISubrange(count: -1)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1901, file: !1902, line: 333, baseType: !2965, size: 64, offset: 576)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1891, line: 284, baseType: !2966)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1891, line: 284, size: 64, elements: !2967)
!2967 = !{!2968}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2966, file: !1891, line: 284, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1948, line: 19, baseType: !327)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1901, file: !1902, line: 334, baseType: !327, size: 64, offset: 640)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1901, file: !1902, line: 343, baseType: !2972, size: 256, offset: 704)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !1902, line: 340, size: 256, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2972, file: !1902, line: 341, baseType: !1909, size: 192, align: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2972, file: !1902, line: 342, baseType: !327, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1901, file: !1902, line: 351, baseType: !1770, size: 128, offset: 960)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1901, file: !1902, line: 353, baseType: !2978, size: 64, offset: 1088)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1902, line: 353, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1901, file: !1902, line: 356, baseType: !2981, size: 64, offset: 1152)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2983)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1902, line: 356, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1901, file: !1902, line: 359, baseType: !327, size: 64, offset: 1216)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1901, file: !1902, line: 361, baseType: !1889, size: 64, offset: 1280)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1901, file: !1902, line: 362, baseType: !323, size: 64, offset: 1344)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1901, file: !1902, line: 365, baseType: !1958, size: 64, offset: 1408)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1901, file: !1902, line: 373, baseType: !2989, offset: 1472)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1902, line: 296, elements: !263)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1868, file: !1846, line: 90, baseType: !1863, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1868, file: !1846, line: 91, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1836, file: !1766, line: 143, baseType: !2994, size: 64, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2997, !1776}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !181, line: 39, size: 384, elements: !3000)
!3000 = !{!3001, !3002, !3006, !3010, !3018, !3022}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2999, file: !181, line: 40, baseType: !180, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2999, file: !181, line: 41, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!248}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2999, file: !181, line: 42, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!323}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2999, file: !181, line: 43, baseType: !3011, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3014, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !181, line: 19, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2999, file: !181, line: 44, baseType: !3019, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!3014}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2999, file: !181, line: 45, baseType: !3023, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !323}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1836, file: !1766, line: 144, baseType: !3027, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!3014, !1776}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1836, file: !1766, line: 145, baseType: !3031, size: 64, offset: 384)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !1776, !3034, !3040}
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !2937, line: 23, baseType: !3036)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2937, line: 21, size: 32, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3036, file: !2937, line: 22, baseType: !3039, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !249, line: 32, baseType: !2522)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !2937, line: 28, baseType: !3042)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2937, line: 26, size: 32, elements: !3043)
!3043 = !{!3044}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3042, file: !2937, line: 27, baseType: !3045, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !249, line: 33, baseType: !3046)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !320, line: 50, baseType: !5)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1765, file: !1766, line: 70, baseType: !3048, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3050, line: 123, size: 1024, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3194, !3195, !3196, !3197, !3198}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3049, file: !3050, line: 124, baseType: !1950, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3049, file: !3050, line: 125, baseType: !1950, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3049, file: !3050, line: 135, baseType: !3048, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3049, file: !3050, line: 136, baseType: !592, size: 64, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3049, file: !3050, line: 138, baseType: !1909, size: 192, align: 64, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3049, file: !3050, line: 140, baseType: !3014, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3049, file: !3050, line: 141, baseType: !5, size: 32, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, scope: !3049, file: !3050, line: 142, baseType: !3060, size: 256, offset: 512)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3049, file: !3050, line: 142, size: 256, elements: !3061)
!3061 = !{!3062, !3117, !3121}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3060, file: !3050, line: 143, baseType: !3063, size: 192)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3050, line: 91, size: 192, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3063, file: !3050, line: 92, baseType: !327, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3063, file: !3050, line: 94, baseType: !1926, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3063, file: !3050, line: 100, baseType: !3068, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3050, line: 180, size: 704, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3087, !3088, !3089, !3115, !3116}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3069, file: !3050, line: 182, baseType: !3048, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3069, file: !3050, line: 183, baseType: !5, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3069, file: !3050, line: 186, baseType: !3074, size: 192, offset: 128)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3075, line: 19, size: 192, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3076 = !{!3077, !3085, !3086}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3074, file: !3075, line: 20, baseType: !3078, size: 128)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3079, line: 292, size: 128, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!3080 = !{!3081, !3082, !3084}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3078, file: !3079, line: 293, baseType: !1783)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3078, file: !3079, line: 295, baseType: !3083, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !249, line: 148, baseType: !5)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3078, file: !3079, line: 296, baseType: !323, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3074, file: !3075, line: 21, baseType: !5, size: 32, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3074, file: !3075, line: 22, baseType: !5, size: 32, offset: 160)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3069, file: !3050, line: 187, baseType: !2064, size: 32, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3069, file: !3050, line: 188, baseType: !2064, size: 32, offset: 352)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3069, file: !3050, line: 189, baseType: !3090, size: 64, offset: 384)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3050, line: 168, size: 320, elements: !3092)
!3092 = !{!3093, !3099, !3103, !3107, !3111}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3091, file: !3050, line: 169, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!149, !3097, !3068}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1891, line: 539, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3091, file: !3050, line: 171, baseType: !3100, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!149, !3048, !592, !1857}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3091, file: !3050, line: 173, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!149, !3048}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3091, file: !3050, line: 174, baseType: !3108, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!149, !3048, !3048, !592}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3091, file: !3050, line: 176, baseType: !3112, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!149, !3097, !3048, !3068}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3069, file: !3050, line: 192, baseType: !1770, size: 128, offset: 448)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3069, file: !3050, line: 194, baseType: !2336, size: 128, offset: 576)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3060, file: !3050, line: 144, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3050, line: 103, size: 64, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3118, file: !3050, line: 104, baseType: !3048, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3060, file: !3050, line: 145, baseType: !3122, size: 256)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3050, line: 107, size: 256, elements: !3123)
!3123 = !{!3124, !3189, !3192, !3193}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3122, file: !3050, line: 108, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3050, line: 217, size: 768, elements: !3128)
!3128 = !{!3129, !3149, !3153, !3157, !3162, !3166, !3170, !3174, !3175, !3176, !3177, !3185}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3127, file: !3050, line: 222, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!149, !3133}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3050, line: 197, size: 1088, elements: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3134, file: !3050, line: 199, baseType: !3048, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3134, file: !3050, line: 200, baseType: !1889, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3134, file: !3050, line: 201, baseType: !3097, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3134, file: !3050, line: 202, baseType: !323, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3134, file: !3050, line: 205, baseType: !2027, size: 192, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3134, file: !3050, line: 206, baseType: !2027, size: 192, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3134, file: !3050, line: 207, baseType: !149, size: 32, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3134, file: !3050, line: 208, baseType: !1770, size: 128, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3134, file: !3050, line: 209, baseType: !1823, size: 64, offset: 832)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3134, file: !3050, line: 211, baseType: !324, size: 64, offset: 896)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3134, file: !3050, line: 212, baseType: !248, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3134, file: !3050, line: 213, baseType: !248, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3134, file: !3050, line: 214, baseType: !2981, size: 64, offset: 1024)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3127, file: !3050, line: 223, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3133}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3127, file: !3050, line: 236, baseType: !3154, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!149, !3097, !323}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3127, file: !3050, line: 238, baseType: !3158, size: 64, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!323, !3097, !3161}
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3127, file: !3050, line: 239, baseType: !3163, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!323, !3097, !323, !3161}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3127, file: !3050, line: 240, baseType: !3167, size: 64, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !3097, !323}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3127, file: !3050, line: 242, baseType: !3171, size: 64, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!318, !3133, !1823, !324, !1892}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3127, file: !3050, line: 252, baseType: !324, size: 64, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3127, file: !3050, line: 259, baseType: !248, size: 8, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3127, file: !3050, line: 260, baseType: !3171, size: 64, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3127, file: !3050, line: 263, baseType: !3178, size: 64, offset: 640)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!3181, !3133, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3182, line: 52, baseType: !5)
!3182 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3050, line: 27, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3127, file: !3050, line: 266, baseType: !3186, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!149, !3133, !1900}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3122, file: !3050, line: 109, baseType: !3190, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3050, line: 31, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3122, file: !3050, line: 110, baseType: !1892, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3122, file: !3050, line: 111, baseType: !3048, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3049, file: !3050, line: 148, baseType: !323, size: 64, offset: 768)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3049, file: !3050, line: 154, baseType: !1930, size: 64, offset: 832)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3049, file: !3050, line: 156, baseType: !259, size: 16, offset: 896)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3049, file: !3050, line: 157, baseType: !1857, size: 16, offset: 912)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3049, file: !3050, line: 158, baseType: !3199, size: 64, offset: 960)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3050, line: 32, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1765, file: !1766, line: 71, baseType: !3202, size: 32, offset: 448)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3203, line: 19, size: 32, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3204 = !{!3205}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3202, file: !3203, line: 20, baseType: !2070, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1765, file: !1766, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1765, file: !1766, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1765, file: !1766, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1765, file: !1766, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1765, file: !1766, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1762, file: !193, line: 463, baseType: !1761, size: 64, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1762, file: !193, line: 465, baseType: !3213, size: 64, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !193, line: 36, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1762, file: !193, line: 467, baseType: !592, size: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1762, file: !193, line: 468, baseType: !3217, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !193, line: 87, size: 384, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3227, !3232, !3236}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3219, file: !193, line: 88, baseType: !592, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3219, file: !193, line: 89, baseType: !1865, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3219, file: !193, line: 90, baseType: !3224, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!149, !1761, !1818}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3219, file: !193, line: 91, baseType: !3228, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!1823, !1761, !3231, !3034, !3040}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3219, file: !193, line: 93, baseType: !3233, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !1761}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3219, file: !193, line: 95, baseType: !3237, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !200, line: 278, size: 1472, elements: !3240)
!3240 = !{!3241, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3239, file: !200, line: 279, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!149, !1761}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3239, file: !200, line: 280, baseType: !3233, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3239, file: !200, line: 281, baseType: !3242, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3239, file: !200, line: 282, baseType: !3242, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3239, file: !200, line: 283, baseType: !3242, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3239, file: !200, line: 284, baseType: !3242, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3239, file: !200, line: 285, baseType: !3242, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3239, file: !200, line: 286, baseType: !3242, size: 64, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3239, file: !200, line: 287, baseType: !3242, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3239, file: !200, line: 288, baseType: !3242, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3239, file: !200, line: 289, baseType: !3242, size: 64, offset: 640)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3239, file: !200, line: 290, baseType: !3242, size: 64, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3239, file: !200, line: 291, baseType: !3242, size: 64, offset: 768)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3239, file: !200, line: 292, baseType: !3242, size: 64, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3239, file: !200, line: 293, baseType: !3242, size: 64, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3239, file: !200, line: 294, baseType: !3242, size: 64, offset: 960)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3239, file: !200, line: 295, baseType: !3242, size: 64, offset: 1024)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3239, file: !200, line: 296, baseType: !3242, size: 64, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3239, file: !200, line: 297, baseType: !3242, size: 64, offset: 1152)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3239, file: !200, line: 298, baseType: !3242, size: 64, offset: 1216)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3239, file: !200, line: 299, baseType: !3242, size: 64, offset: 1280)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3239, file: !200, line: 300, baseType: !3242, size: 64, offset: 1344)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3239, file: !200, line: 301, baseType: !3242, size: 64, offset: 1408)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1762, file: !193, line: 470, baseType: !3268, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3270, line: 82, size: 1408, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3338, !3341, !3344}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3269, file: !3270, line: 83, baseType: !592, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3269, file: !3270, line: 84, baseType: !592, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3269, file: !3270, line: 85, baseType: !1761, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3269, file: !3270, line: 86, baseType: !1865, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3269, file: !3270, line: 87, baseType: !1865, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3269, file: !3270, line: 88, baseType: !1865, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3269, file: !3270, line: 90, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!149, !1761, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !187, line: 95, size: 1152, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3291, !3292, !3293, !3294, !3298, !3302, !3303, !3304, !3305, !3306, !3314, !3315, !3316, !3317, !3318, !3319}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3283, file: !187, line: 96, baseType: !592, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3283, file: !187, line: 97, baseType: !3268, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3283, file: !187, line: 99, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !3290, line: 76, flags: DIFlagFwdDecl)
!3290 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3283, file: !187, line: 100, baseType: !592, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3283, file: !187, line: 102, baseType: !248, size: 8, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3283, file: !187, line: 103, baseType: !186, size: 32, offset: 288)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3283, file: !187, line: 105, baseType: !3295, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3297)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !187, line: 105, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3283, file: !187, line: 106, baseType: !3299, size: 64, offset: 384)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !187, line: 106, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3283, file: !187, line: 108, baseType: !3242, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3283, file: !187, line: 109, baseType: !3233, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3283, file: !187, line: 110, baseType: !3242, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3283, file: !187, line: 111, baseType: !3233, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3283, file: !187, line: 112, baseType: !3307, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!149, !1761, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !200, line: 52, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !200, line: 50, size: 32, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3311, file: !200, line: 51, baseType: !149, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3283, file: !187, line: 113, baseType: !3242, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3283, file: !187, line: 114, baseType: !1865, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3283, file: !187, line: 115, baseType: !1865, size: 64, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3283, file: !187, line: 117, baseType: !3237, size: 64, offset: 960)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3283, file: !187, line: 118, baseType: !3233, size: 64, offset: 1024)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3283, file: !187, line: 120, baseType: !3320, size: 64, offset: 1088)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !187, line: 120, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3269, file: !3270, line: 91, baseType: !3224, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3269, file: !3270, line: 92, baseType: !3242, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3269, file: !3270, line: 93, baseType: !3233, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3269, file: !3270, line: 94, baseType: !3242, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3269, file: !3270, line: 95, baseType: !3233, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3269, file: !3270, line: 97, baseType: !3242, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3269, file: !3270, line: 98, baseType: !3242, size: 64, offset: 832)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3269, file: !3270, line: 100, baseType: !3307, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3269, file: !3270, line: 101, baseType: !3242, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3269, file: !3270, line: 103, baseType: !3242, size: 64, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3269, file: !3270, line: 105, baseType: !3242, size: 64, offset: 1088)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3269, file: !3270, line: 107, baseType: !3237, size: 64, offset: 1152)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3269, file: !3270, line: 109, baseType: !3335, size: 64, offset: 1216)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3270, line: 109, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3269, file: !3270, line: 111, baseType: !3339, size: 64, offset: 1280)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3270, line: 111, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3269, file: !3270, line: 112, baseType: !3342, offset: 1344)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3343, line: 187, elements: !263)
!3343 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3269, file: !3270, line: 114, baseType: !248, size: 8, offset: 1344)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1762, file: !193, line: 471, baseType: !3282, size: 64, offset: 832)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1762, file: !193, line: 473, baseType: !323, size: 64, offset: 896)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1762, file: !193, line: 475, baseType: !323, size: 64, offset: 960)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1762, file: !193, line: 480, baseType: !2027, size: 192, offset: 1024)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1762, file: !193, line: 484, baseType: !3350, size: 576, offset: 1216)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !193, line: 361, size: 576, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3350, file: !193, line: 362, baseType: !1770, size: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3350, file: !193, line: 363, baseType: !1770, size: 128, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3350, file: !193, line: 364, baseType: !1770, size: 128, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3350, file: !193, line: 365, baseType: !1770, size: 128, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3350, file: !193, line: 366, baseType: !248, size: 8, offset: 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3350, file: !193, line: 367, baseType: !192, size: 32, offset: 544)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1762, file: !193, line: 485, baseType: !3359, size: 2304, offset: 1792)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !200, line: 565, size: 2304, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3456, !3460}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3359, file: !200, line: 566, baseType: !3310, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3359, file: !200, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3359, file: !200, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3359, file: !200, line: 569, baseType: !248, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3359, file: !200, line: 570, baseType: !248, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3359, file: !200, line: 571, baseType: !248, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3359, file: !200, line: 572, baseType: !248, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3359, file: !200, line: 573, baseType: !248, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3359, file: !200, line: 574, baseType: !248, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3359, file: !200, line: 575, baseType: !248, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3359, file: !200, line: 576, baseType: !248, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3359, file: !200, line: 577, baseType: !2064, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3359, file: !200, line: 578, baseType: !1783, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3359, file: !200, line: 580, baseType: !1770, size: 128, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3359, file: !200, line: 581, baseType: !2365, size: 192, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3359, file: !200, line: 582, baseType: !3377, size: 64, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3379, line: 43, size: 1472, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3380 = !{!3381, !3382, !3383, !3384, !3385, !3388, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3378, file: !3379, line: 44, baseType: !592, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3378, file: !3379, line: 45, baseType: !149, size: 32, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3378, file: !3379, line: 46, baseType: !1770, size: 128, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3378, file: !3379, line: 47, baseType: !1783, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3378, file: !3379, line: 48, baseType: !3386, size: 64, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !200, line: 533, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3378, file: !3379, line: 49, baseType: !3389, size: 320, offset: 320)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3390, line: 11, size: 320, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3391 = !{!3392, !3393, !3394, !3399}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3389, file: !3390, line: 16, baseType: !2329, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3389, file: !3390, line: 17, baseType: !327, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3389, file: !3390, line: 18, baseType: !3395, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3398}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3389, file: !3390, line: 19, baseType: !2064, size: 32, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3378, file: !3379, line: 50, baseType: !327, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3378, file: !3379, line: 51, baseType: !2140, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3378, file: !3379, line: 52, baseType: !2140, size: 64, offset: 768)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3378, file: !3379, line: 53, baseType: !2140, size: 64, offset: 832)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3378, file: !3379, line: 54, baseType: !2140, size: 64, offset: 896)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3378, file: !3379, line: 55, baseType: !2140, size: 64, offset: 960)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3378, file: !3379, line: 56, baseType: !327, size: 64, offset: 1024)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3378, file: !3379, line: 57, baseType: !327, size: 64, offset: 1088)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3378, file: !3379, line: 58, baseType: !327, size: 64, offset: 1152)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3378, file: !3379, line: 59, baseType: !327, size: 64, offset: 1216)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3378, file: !3379, line: 60, baseType: !327, size: 64, offset: 1280)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3378, file: !3379, line: 61, baseType: !1761, size: 64, offset: 1344)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3378, file: !3379, line: 62, baseType: !248, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3378, file: !3379, line: 63, baseType: !248, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3359, file: !200, line: 583, baseType: !248, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3359, file: !200, line: 584, baseType: !248, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3359, file: !200, line: 585, baseType: !248, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3359, file: !200, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3359, file: !200, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3359, file: !200, line: 592, baseType: !2132, size: 512, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3359, file: !200, line: 593, baseType: !1930, size: 64, offset: 1088)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3359, file: !200, line: 594, baseType: !2948, size: 256, offset: 1152)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3359, file: !200, line: 595, baseType: !2336, size: 128, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3359, file: !200, line: 596, baseType: !3386, size: 64, offset: 1536)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3359, file: !200, line: 597, baseType: !1950, size: 32, offset: 1600)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3359, file: !200, line: 598, baseType: !1950, size: 32, offset: 1632)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3359, file: !200, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3359, file: !200, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3359, file: !200, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3359, file: !200, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3359, file: !200, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3359, file: !200, line: 604, baseType: !248, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3359, file: !200, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3359, file: !200, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3359, file: !200, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3359, file: !200, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3359, file: !200, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3359, file: !200, line: 610, baseType: !5, size: 32, offset: 1696)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3359, file: !200, line: 611, baseType: !199, size: 32, offset: 1728)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3359, file: !200, line: 612, baseType: !207, size: 32, offset: 1760)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3359, file: !200, line: 613, baseType: !149, size: 32, offset: 1792)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3359, file: !200, line: 614, baseType: !149, size: 32, offset: 1824)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3359, file: !200, line: 615, baseType: !1930, size: 64, offset: 1856)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3359, file: !200, line: 616, baseType: !1930, size: 64, offset: 1920)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3359, file: !200, line: 617, baseType: !1930, size: 64, offset: 1984)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3359, file: !200, line: 618, baseType: !1930, size: 64, offset: 2048)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3359, file: !200, line: 620, baseType: !3447, size: 64, offset: 2112)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !200, line: 536, size: 256, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3448, file: !200, line: 537, baseType: !1783)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3448, file: !200, line: 538, baseType: !5, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3448, file: !200, line: 540, baseType: !1770, size: 128, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3448, file: !200, line: 543, baseType: !3454, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !200, line: 534, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3359, file: !200, line: 621, baseType: !3457, size: 64, offset: 2176)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !1761, !2289}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3359, file: !200, line: 622, baseType: !3461, size: 64, offset: 2240)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !200, line: 622, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1762, file: !193, line: 486, baseType: !3464, size: 64, offset: 4096)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !200, line: 642, size: 1792, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3473, !3474, !3475}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3465, file: !200, line: 643, baseType: !3239, size: 1472)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3465, file: !200, line: 644, baseType: !3242, size: 64, offset: 1472)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3465, file: !200, line: 645, baseType: !3470, size: 64, offset: 1536)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !1761, !248}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3465, file: !200, line: 646, baseType: !3242, size: 64, offset: 1600)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3465, file: !200, line: 647, baseType: !3233, size: 64, offset: 1664)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3465, file: !200, line: 648, baseType: !3233, size: 64, offset: 1728)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1762, file: !193, line: 493, baseType: !3477, size: 64, offset: 4160)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !193, line: 493, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1762, file: !193, line: 499, baseType: !1770, size: 128, offset: 4224)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1762, file: !193, line: 502, baseType: !3481, size: 64, offset: 4352)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !193, line: 502, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1762, file: !193, line: 504, baseType: !3485, size: 64, offset: 4416)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1762, file: !193, line: 505, baseType: !1930, size: 64, offset: 4480)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1762, file: !193, line: 510, baseType: !1930, size: 64, offset: 4544)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1762, file: !193, line: 511, baseType: !3489, size: 64, offset: 4608)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3491)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !193, line: 511, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1762, file: !193, line: 513, baseType: !3493, size: 64, offset: 4672)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !193, line: 288, size: 128, elements: !3495)
!3495 = !{!3496, !3497}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3494, file: !193, line: 293, baseType: !5, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3494, file: !193, line: 294, baseType: !327, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1762, file: !193, line: 515, baseType: !1770, size: 128, offset: 4736)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1762, file: !193, line: 526, baseType: !3500, offset: 4864)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3501, line: 5, elements: !263)
!3501 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1762, file: !193, line: 528, baseType: !3503, size: 64, offset: 4864)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3505, line: 14, flags: DIFlagFwdDecl)
!3505 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1762, file: !193, line: 529, baseType: !3507, size: 64, offset: 4928)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3270, line: 22, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1762, file: !193, line: 534, baseType: !3510, size: 32, offset: 4992)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !249, line: 16, baseType: !3511)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !249, line: 13, baseType: !2064)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1762, file: !193, line: 535, baseType: !2064, size: 32, offset: 5024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1762, file: !193, line: 537, baseType: !1783, offset: 5056)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1762, file: !193, line: 538, baseType: !1770, size: 128, offset: 5056)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1762, file: !193, line: 540, baseType: !3516, size: 64, offset: 5184)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3518, line: 54, size: 960, elements: !3519)
!3518 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3530, !3534, !3535, !3536, !3537, !3541, !3545, !3546}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3517, file: !3518, line: 55, baseType: !592, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3517, file: !3518, line: 56, baseType: !3288, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3517, file: !3518, line: 58, baseType: !1865, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3517, file: !3518, line: 59, baseType: !1865, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3517, file: !3518, line: 60, baseType: !1776, size: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3517, file: !3518, line: 62, baseType: !3224, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3517, file: !3518, line: 63, baseType: !3527, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!1823, !1761, !3231}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3517, file: !3518, line: 65, baseType: !3531, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !3516}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3517, file: !3518, line: 66, baseType: !3233, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3517, file: !3518, line: 68, baseType: !3242, size: 64, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3517, file: !3518, line: 70, baseType: !2997, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3517, file: !3518, line: 71, baseType: !3538, size: 64, offset: 704)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!3014, !1761}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3517, file: !3518, line: 73, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !1761, !3034, !3040}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3517, file: !3518, line: 75, baseType: !3237, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3517, file: !3518, line: 77, baseType: !3339, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1762, file: !193, line: 541, baseType: !1865, size: 64, offset: 5248)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1762, file: !193, line: 543, baseType: !3233, size: 64, offset: 5312)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1762, file: !193, line: 544, baseType: !3550, size: 64, offset: 5376)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !193, line: 45, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1762, file: !193, line: 545, baseType: !3553, size: 64, offset: 5440)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !193, line: 47, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1762, file: !193, line: 547, baseType: !248, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1762, file: !193, line: 548, baseType: !248, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1762, file: !193, line: 549, baseType: !248, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1762, file: !193, line: 550, baseType: !248, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3559 = !DILocalVariable(name: "level", arg: 1, scope: !1758, file: !1, line: 1511, type: !592)
!3560 = !DILocation(line: 1511, column: 37, scope: !1758)
!3561 = !DILocalVariable(name: "dev", arg: 2, scope: !1758, file: !1, line: 1512, type: !1761)
!3562 = !DILocation(line: 1512, column: 19, scope: !1758)
!3563 = !DILocalVariable(name: "frame", arg: 3, scope: !1758, file: !1, line: 1513, type: !1543)
!3564 = !DILocation(line: 1513, column: 32, scope: !1758)
!3565 = !DILocation(line: 1515, column: 10, scope: !1758)
!3566 = !DILocation(line: 1515, column: 17, scope: !1758)
!3567 = !DILocation(line: 1515, column: 21, scope: !1758)
!3568 = !DILocation(line: 1515, column: 2, scope: !1758)
!3569 = !DILocation(line: 1517, column: 26, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 1515, column: 27)
!3571 = !DILocation(line: 1517, column: 33, scope: !3570)
!3572 = !DILocation(line: 1517, column: 39, scope: !3570)
!3573 = !DILocation(line: 1517, column: 46, scope: !3570)
!3574 = !DILocation(line: 1517, column: 3, scope: !3570)
!3575 = !DILocation(line: 1518, column: 3, scope: !3570)
!3576 = !DILocation(line: 1520, column: 26, scope: !3570)
!3577 = !DILocation(line: 1520, column: 33, scope: !3570)
!3578 = !DILocation(line: 1520, column: 39, scope: !3570)
!3579 = !DILocation(line: 1520, column: 46, scope: !3570)
!3580 = !DILocation(line: 1520, column: 3, scope: !3570)
!3581 = !DILocation(line: 1521, column: 3, scope: !3570)
!3582 = !DILocation(line: 1523, column: 28, scope: !3570)
!3583 = !DILocation(line: 1523, column: 35, scope: !3570)
!3584 = !DILocation(line: 1523, column: 41, scope: !3570)
!3585 = !DILocation(line: 1523, column: 48, scope: !3570)
!3586 = !DILocation(line: 1523, column: 3, scope: !3570)
!3587 = !DILocation(line: 1524, column: 3, scope: !3570)
!3588 = !DILocation(line: 1526, column: 33, scope: !3570)
!3589 = !DILocation(line: 1526, column: 40, scope: !3570)
!3590 = !DILocation(line: 1526, column: 46, scope: !3570)
!3591 = !DILocation(line: 1526, column: 53, scope: !3570)
!3592 = !DILocation(line: 1526, column: 3, scope: !3570)
!3593 = !DILocation(line: 1527, column: 3, scope: !3570)
!3594 = !DILocation(line: 1529, column: 26, scope: !3570)
!3595 = !DILocation(line: 1529, column: 33, scope: !3570)
!3596 = !DILocation(line: 1529, column: 39, scope: !3570)
!3597 = !DILocation(line: 1529, column: 46, scope: !3570)
!3598 = !DILocation(line: 1529, column: 3, scope: !3570)
!3599 = !DILocation(line: 1530, column: 3, scope: !3570)
!3600 = !DILocation(line: 1532, column: 1, scope: !1758)
!3601 = distinct !DISubprogram(name: "hdmi_avi_infoframe_log", scope: !1, file: !1, line: 1190, type: !3602, scopeLine: 1193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !592, !1761, !289}
!3604 = !DILocalVariable(name: "level", arg: 1, scope: !3601, file: !1, line: 1190, type: !592)
!3605 = !DILocation(line: 1190, column: 48, scope: !3601)
!3606 = !DILocalVariable(name: "dev", arg: 2, scope: !3601, file: !1, line: 1191, type: !1761)
!3607 = !DILocation(line: 1191, column: 23, scope: !3601)
!3608 = !DILocalVariable(name: "frame", arg: 3, scope: !3601, file: !1, line: 1192, type: !289)
!3609 = !DILocation(line: 1192, column: 41, scope: !3601)
!3610 = !DILocation(line: 1194, column: 28, scope: !3601)
!3611 = !DILocation(line: 1194, column: 35, scope: !3601)
!3612 = !DILocation(line: 1195, column: 42, scope: !3601)
!3613 = !DILocation(line: 1195, column: 7, scope: !3601)
!3614 = !DILocation(line: 1194, column: 2, scope: !3601)
!3615 = !DILocation(line: 1197, column: 2, scope: !3601)
!3616 = !DILocation(line: 1199, column: 2, scope: !3601)
!3617 = !DILocation(line: 1201, column: 2, scope: !3601)
!3618 = !DILocation(line: 1203, column: 2, scope: !3601)
!3619 = !DILocation(line: 1205, column: 2, scope: !3601)
!3620 = !DILocation(line: 1207, column: 2, scope: !3601)
!3621 = !DILocation(line: 1208, column: 2, scope: !3601)
!3622 = !DILocation(line: 1210, column: 2, scope: !3601)
!3623 = !DILocation(line: 1212, column: 2, scope: !3601)
!3624 = !DILocation(line: 1213, column: 2, scope: !3601)
!3625 = !DILocation(line: 1214, column: 2, scope: !3601)
!3626 = !DILocation(line: 1216, column: 2, scope: !3601)
!3627 = !DILocation(line: 1218, column: 2, scope: !3601)
!3628 = !DILocation(line: 1219, column: 2, scope: !3601)
!3629 = !DILocation(line: 1222, column: 1, scope: !3601)
!3630 = distinct !DISubprogram(name: "hdmi_spd_infoframe_log", scope: !1, file: !1, line: 1261, type: !3631, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !592, !1761, !631}
!3633 = !DILocalVariable(name: "level", arg: 1, scope: !3630, file: !1, line: 1261, type: !592)
!3634 = !DILocation(line: 1261, column: 48, scope: !3630)
!3635 = !DILocalVariable(name: "dev", arg: 2, scope: !3630, file: !1, line: 1262, type: !1761)
!3636 = !DILocation(line: 1262, column: 23, scope: !3630)
!3637 = !DILocalVariable(name: "frame", arg: 3, scope: !3630, file: !1, line: 1263, type: !631)
!3638 = !DILocation(line: 1263, column: 41, scope: !3630)
!3639 = !DILocalVariable(name: "buf", scope: !3630, file: !1, line: 1265, type: !3640)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 136, elements: !3641)
!3641 = !{!3642}
!3642 = !DISubrange(count: 17)
!3643 = !DILocation(line: 1265, column: 5, scope: !3630)
!3644 = !DILocation(line: 1267, column: 28, scope: !3630)
!3645 = !DILocation(line: 1267, column: 35, scope: !3630)
!3646 = !DILocation(line: 1268, column: 42, scope: !3630)
!3647 = !DILocation(line: 1268, column: 7, scope: !3630)
!3648 = !DILocation(line: 1267, column: 2, scope: !3630)
!3649 = !DILocation(line: 1270, column: 2, scope: !3630)
!3650 = !DILocation(line: 1272, column: 10, scope: !3630)
!3651 = !DILocation(line: 1272, column: 15, scope: !3630)
!3652 = !DILocation(line: 1272, column: 22, scope: !3630)
!3653 = !DILocation(line: 1272, column: 2, scope: !3630)
!3654 = !DILocation(line: 1273, column: 2, scope: !3630)
!3655 = !DILocation(line: 1274, column: 10, scope: !3630)
!3656 = !DILocation(line: 1274, column: 15, scope: !3630)
!3657 = !DILocation(line: 1274, column: 22, scope: !3630)
!3658 = !DILocation(line: 1274, column: 2, scope: !3630)
!3659 = !DILocation(line: 1275, column: 2, scope: !3630)
!3660 = !DILocation(line: 1276, column: 2, scope: !3630)
!3661 = !DILocation(line: 1278, column: 1, scope: !3630)
!3662 = distinct !DISubprogram(name: "hdmi_audio_infoframe_log", scope: !1, file: !1, line: 1391, type: !3663, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null, !592, !1761, !788}
!3665 = !DILocalVariable(name: "level", arg: 1, scope: !3662, file: !1, line: 1391, type: !592)
!3666 = !DILocation(line: 1391, column: 50, scope: !3662)
!3667 = !DILocalVariable(name: "dev", arg: 2, scope: !3662, file: !1, line: 1392, type: !1761)
!3668 = !DILocation(line: 1392, column: 25, scope: !3662)
!3669 = !DILocalVariable(name: "frame", arg: 3, scope: !3662, file: !1, line: 1393, type: !788)
!3670 = !DILocation(line: 1393, column: 45, scope: !3662)
!3671 = !DILocation(line: 1395, column: 28, scope: !3662)
!3672 = !DILocation(line: 1395, column: 35, scope: !3662)
!3673 = !DILocation(line: 1396, column: 42, scope: !3662)
!3674 = !DILocation(line: 1396, column: 7, scope: !3662)
!3675 = !DILocation(line: 1395, column: 2, scope: !3662)
!3676 = !DILocation(line: 1398, column: 6, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3662, file: !1, line: 1398, column: 6)
!3678 = !DILocation(line: 1398, column: 13, scope: !3677)
!3679 = !DILocation(line: 1398, column: 6, scope: !3662)
!3680 = !DILocation(line: 1399, column: 3, scope: !3677)
!3681 = !DILocation(line: 1401, column: 3, scope: !3677)
!3682 = !DILocation(line: 1402, column: 2, scope: !3662)
!3683 = !DILocation(line: 1404, column: 2, scope: !3662)
!3684 = !DILocation(line: 1406, column: 2, scope: !3662)
!3685 = !DILocation(line: 1408, column: 2, scope: !3662)
!3686 = !DILocation(line: 1410, column: 2, scope: !3662)
!3687 = !DILocation(line: 1412, column: 2, scope: !3662)
!3688 = !DILocation(line: 1414, column: 2, scope: !3662)
!3689 = !DILocation(line: 1416, column: 1, scope: !3662)
!3690 = distinct !DISubprogram(name: "hdmi_vendor_any_infoframe_log", scope: !1, file: !1, line: 1476, type: !3691, scopeLine: 1479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !592, !1761, !1623}
!3693 = !DILocalVariable(name: "level", arg: 1, scope: !3690, file: !1, line: 1476, type: !592)
!3694 = !DILocation(line: 1476, column: 43, scope: !3690)
!3695 = !DILocalVariable(name: "dev", arg: 2, scope: !3690, file: !1, line: 1477, type: !1761)
!3696 = !DILocation(line: 1477, column: 25, scope: !3690)
!3697 = !DILocalVariable(name: "frame", arg: 3, scope: !3690, file: !1, line: 1478, type: !1623)
!3698 = !DILocation(line: 1478, column: 49, scope: !3690)
!3699 = !DILocalVariable(name: "hvf", scope: !3690, file: !1, line: 1480, type: !995)
!3700 = !DILocation(line: 1480, column: 38, scope: !3690)
!3701 = !DILocation(line: 1480, column: 45, scope: !3690)
!3702 = !DILocation(line: 1480, column: 52, scope: !3690)
!3703 = !DILocation(line: 1482, column: 28, scope: !3690)
!3704 = !DILocation(line: 1482, column: 35, scope: !3690)
!3705 = !DILocation(line: 1483, column: 42, scope: !3690)
!3706 = !DILocation(line: 1483, column: 7, scope: !3690)
!3707 = !DILocation(line: 1482, column: 2, scope: !3690)
!3708 = !DILocation(line: 1485, column: 6, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 1485, column: 6)
!3710 = !DILocation(line: 1485, column: 13, scope: !3709)
!3711 = !DILocation(line: 1485, column: 17, scope: !3709)
!3712 = !DILocation(line: 1485, column: 21, scope: !3709)
!3713 = !DILocation(line: 1485, column: 6, scope: !3690)
!3714 = !DILocation(line: 1486, column: 3, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !1, line: 1485, column: 39)
!3716 = !DILocation(line: 1487, column: 3, scope: !3715)
!3717 = !DILocation(line: 1489, column: 6, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 1489, column: 6)
!3719 = !DILocation(line: 1489, column: 11, scope: !3718)
!3720 = !DILocation(line: 1489, column: 15, scope: !3718)
!3721 = !DILocation(line: 1489, column: 20, scope: !3718)
!3722 = !DILocation(line: 1489, column: 23, scope: !3718)
!3723 = !DILocation(line: 1489, column: 28, scope: !3718)
!3724 = !DILocation(line: 1489, column: 39, scope: !3718)
!3725 = !DILocation(line: 1489, column: 6, scope: !3690)
!3726 = !DILocation(line: 1490, column: 3, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3718, file: !1, line: 1489, column: 69)
!3728 = !DILocation(line: 1491, column: 3, scope: !3727)
!3729 = !DILocation(line: 1494, column: 6, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 1494, column: 6)
!3731 = !DILocation(line: 1494, column: 11, scope: !3730)
!3732 = !DILocation(line: 1494, column: 6, scope: !3690)
!3733 = !DILocation(line: 1495, column: 3, scope: !3730)
!3734 = !DILocation(line: 1496, column: 6, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 1496, column: 6)
!3736 = !DILocation(line: 1496, column: 11, scope: !3735)
!3737 = !DILocation(line: 1496, column: 22, scope: !3735)
!3738 = !DILocation(line: 1496, column: 6, scope: !3690)
!3739 = !DILocation(line: 1497, column: 3, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3735, file: !1, line: 1496, column: 52)
!3741 = !DILocation(line: 1499, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 1499, column: 7)
!3743 = !DILocation(line: 1499, column: 12, scope: !3742)
!3744 = !DILocation(line: 1499, column: 23, scope: !3742)
!3745 = !DILocation(line: 1499, column: 7, scope: !3740)
!3746 = !DILocation(line: 1500, column: 4, scope: !3742)
!3747 = !DILocation(line: 1502, column: 2, scope: !3740)
!3748 = !DILocation(line: 1503, column: 1, scope: !3690)
!3749 = distinct !DISubprogram(name: "hdmi_drm_infoframe_log", scope: !1, file: !1, line: 1418, type: !3750, scopeLine: 1421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !592, !1761, !1239}
!3752 = !DILocalVariable(name: "level", arg: 1, scope: !3749, file: !1, line: 1418, type: !592)
!3753 = !DILocation(line: 1418, column: 48, scope: !3749)
!3754 = !DILocalVariable(name: "dev", arg: 2, scope: !3749, file: !1, line: 1419, type: !1761)
!3755 = !DILocation(line: 1419, column: 23, scope: !3749)
!3756 = !DILocalVariable(name: "frame", arg: 3, scope: !3749, file: !1, line: 1420, type: !1239)
!3757 = !DILocation(line: 1420, column: 41, scope: !3749)
!3758 = !DILocalVariable(name: "i", scope: !3749, file: !1, line: 1422, type: !149)
!3759 = !DILocation(line: 1422, column: 6, scope: !3749)
!3760 = !DILocation(line: 1424, column: 28, scope: !3749)
!3761 = !DILocation(line: 1424, column: 35, scope: !3749)
!3762 = !DILocation(line: 1425, column: 36, scope: !3749)
!3763 = !DILocation(line: 1425, column: 7, scope: !3749)
!3764 = !DILocation(line: 1424, column: 2, scope: !3749)
!3765 = !DILocation(line: 1426, column: 2, scope: !3749)
!3766 = !DILocation(line: 1427, column: 2, scope: !3749)
!3767 = !DILocation(line: 1428, column: 2, scope: !3749)
!3768 = !DILocation(line: 1429, column: 9, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3749, file: !1, line: 1429, column: 2)
!3770 = !DILocation(line: 1429, column: 7, scope: !3769)
!3771 = !DILocation(line: 1429, column: 14, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3769, file: !1, line: 1429, column: 2)
!3773 = !DILocation(line: 1429, column: 16, scope: !3772)
!3774 = !DILocation(line: 1429, column: 2, scope: !3769)
!3775 = !DILocation(line: 1430, column: 3, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3772, file: !1, line: 1429, column: 26)
!3777 = !DILocation(line: 1431, column: 3, scope: !3776)
!3778 = !DILocation(line: 1432, column: 2, scope: !3776)
!3779 = !DILocation(line: 1429, column: 22, scope: !3772)
!3780 = !DILocation(line: 1429, column: 2, scope: !3772)
!3781 = distinct !{!3781, !3774, !3782}
!3782 = !DILocation(line: 1432, column: 2, scope: !3769)
!3783 = !DILocation(line: 1434, column: 2, scope: !3749)
!3784 = !DILocation(line: 1435, column: 2, scope: !3749)
!3785 = !DILocation(line: 1437, column: 2, scope: !3749)
!3786 = !DILocation(line: 1439, column: 2, scope: !3749)
!3787 = !DILocation(line: 1442, column: 2, scope: !3749)
!3788 = !DILocation(line: 1443, column: 2, scope: !3749)
!3789 = !DILocation(line: 1444, column: 1, scope: !3749)
!3790 = distinct !DISubprogram(name: "hdmi_drm_infoframe_unpack_only", scope: !1, file: !1, line: 1784, type: !3791, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!149, !1189, !3014, !324}
!3793 = !DILocalVariable(name: "frame", arg: 1, scope: !3790, file: !1, line: 1784, type: !1189)
!3794 = !DILocation(line: 1784, column: 63, scope: !3790)
!3795 = !DILocalVariable(name: "buffer", arg: 2, scope: !3790, file: !1, line: 1785, type: !3014)
!3796 = !DILocation(line: 1785, column: 20, scope: !3790)
!3797 = !DILocalVariable(name: "size", arg: 3, scope: !3790, file: !1, line: 1785, type: !324)
!3798 = !DILocation(line: 1785, column: 35, scope: !3790)
!3799 = !DILocalVariable(name: "ptr", scope: !3790, file: !1, line: 1787, type: !3800)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!3802 = !DILocation(line: 1787, column: 12, scope: !3790)
!3803 = !DILocation(line: 1787, column: 18, scope: !3790)
!3804 = !DILocalVariable(name: "temp", scope: !3790, file: !1, line: 1788, type: !3800)
!3805 = !DILocation(line: 1788, column: 12, scope: !3790)
!3806 = !DILocalVariable(name: "x_lsb", scope: !3790, file: !1, line: 1789, type: !336)
!3807 = !DILocation(line: 1789, column: 5, scope: !3790)
!3808 = !DILocalVariable(name: "x_msb", scope: !3790, file: !1, line: 1789, type: !336)
!3809 = !DILocation(line: 1789, column: 12, scope: !3790)
!3810 = !DILocalVariable(name: "y_lsb", scope: !3790, file: !1, line: 1790, type: !336)
!3811 = !DILocation(line: 1790, column: 5, scope: !3790)
!3812 = !DILocalVariable(name: "y_msb", scope: !3790, file: !1, line: 1790, type: !336)
!3813 = !DILocation(line: 1790, column: 12, scope: !3790)
!3814 = !DILocalVariable(name: "ret", scope: !3790, file: !1, line: 1791, type: !149)
!3815 = !DILocation(line: 1791, column: 6, scope: !3790)
!3816 = !DILocalVariable(name: "i", scope: !3790, file: !1, line: 1792, type: !149)
!3817 = !DILocation(line: 1792, column: 6, scope: !3790)
!3818 = !DILocation(line: 1794, column: 6, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3790, file: !1, line: 1794, column: 6)
!3820 = !DILocation(line: 1794, column: 11, scope: !3819)
!3821 = !DILocation(line: 1794, column: 6, scope: !3790)
!3822 = !DILocation(line: 1795, column: 3, scope: !3819)
!3823 = !DILocation(line: 1797, column: 32, scope: !3790)
!3824 = !DILocation(line: 1797, column: 8, scope: !3790)
!3825 = !DILocation(line: 1797, column: 6, scope: !3790)
!3826 = !DILocation(line: 1798, column: 6, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3790, file: !1, line: 1798, column: 6)
!3828 = !DILocation(line: 1798, column: 6, scope: !3790)
!3829 = !DILocation(line: 1799, column: 10, scope: !3827)
!3830 = !DILocation(line: 1799, column: 3, scope: !3827)
!3831 = !DILocation(line: 1801, column: 16, scope: !3790)
!3832 = !DILocation(line: 1801, column: 23, scope: !3790)
!3833 = !DILocation(line: 1801, column: 2, scope: !3790)
!3834 = !DILocation(line: 1801, column: 9, scope: !3790)
!3835 = !DILocation(line: 1801, column: 14, scope: !3790)
!3836 = !DILocation(line: 1802, column: 25, scope: !3790)
!3837 = !DILocation(line: 1802, column: 32, scope: !3790)
!3838 = !DILocation(line: 1802, column: 2, scope: !3790)
!3839 = !DILocation(line: 1802, column: 9, scope: !3790)
!3840 = !DILocation(line: 1802, column: 23, scope: !3790)
!3841 = !DILocation(line: 1804, column: 9, scope: !3790)
!3842 = !DILocation(line: 1804, column: 13, scope: !3790)
!3843 = !DILocation(line: 1804, column: 7, scope: !3790)
!3844 = !DILocation(line: 1805, column: 9, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3790, file: !1, line: 1805, column: 2)
!3846 = !DILocation(line: 1805, column: 7, scope: !3845)
!3847 = !DILocation(line: 1805, column: 14, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3845, file: !1, line: 1805, column: 2)
!3849 = !DILocation(line: 1805, column: 16, scope: !3848)
!3850 = !DILocation(line: 1805, column: 2, scope: !3845)
!3851 = !DILocation(line: 1806, column: 16, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !1, line: 1805, column: 26)
!3853 = !DILocation(line: 1806, column: 11, scope: !3852)
!3854 = !DILocation(line: 1806, column: 9, scope: !3852)
!3855 = !DILocation(line: 1807, column: 16, scope: !3852)
!3856 = !DILocation(line: 1807, column: 11, scope: !3852)
!3857 = !DILocation(line: 1807, column: 9, scope: !3852)
!3858 = !DILocation(line: 1808, column: 36, scope: !3852)
!3859 = !DILocation(line: 1808, column: 42, scope: !3852)
!3860 = !DILocation(line: 1808, column: 50, scope: !3852)
!3861 = !DILocation(line: 1808, column: 48, scope: !3852)
!3862 = !DILocation(line: 1808, column: 35, scope: !3852)
!3863 = !DILocation(line: 1808, column: 3, scope: !3852)
!3864 = !DILocation(line: 1808, column: 10, scope: !3852)
!3865 = !DILocation(line: 1808, column: 28, scope: !3852)
!3866 = !DILocation(line: 1808, column: 31, scope: !3852)
!3867 = !DILocation(line: 1808, column: 33, scope: !3852)
!3868 = !DILocation(line: 1809, column: 16, scope: !3852)
!3869 = !DILocation(line: 1809, column: 11, scope: !3852)
!3870 = !DILocation(line: 1809, column: 9, scope: !3852)
!3871 = !DILocation(line: 1810, column: 16, scope: !3852)
!3872 = !DILocation(line: 1810, column: 11, scope: !3852)
!3873 = !DILocation(line: 1810, column: 9, scope: !3852)
!3874 = !DILocation(line: 1811, column: 36, scope: !3852)
!3875 = !DILocation(line: 1811, column: 42, scope: !3852)
!3876 = !DILocation(line: 1811, column: 50, scope: !3852)
!3877 = !DILocation(line: 1811, column: 48, scope: !3852)
!3878 = !DILocation(line: 1811, column: 35, scope: !3852)
!3879 = !DILocation(line: 1811, column: 3, scope: !3852)
!3880 = !DILocation(line: 1811, column: 10, scope: !3852)
!3881 = !DILocation(line: 1811, column: 28, scope: !3852)
!3882 = !DILocation(line: 1811, column: 31, scope: !3852)
!3883 = !DILocation(line: 1811, column: 33, scope: !3852)
!3884 = !DILocation(line: 1812, column: 2, scope: !3852)
!3885 = !DILocation(line: 1805, column: 22, scope: !3848)
!3886 = !DILocation(line: 1805, column: 2, scope: !3848)
!3887 = distinct !{!3887, !3850, !3888}
!3888 = !DILocation(line: 1812, column: 2, scope: !3845)
!3889 = !DILocation(line: 1814, column: 26, scope: !3790)
!3890 = !DILocation(line: 1814, column: 34, scope: !3790)
!3891 = !DILocation(line: 1814, column: 42, scope: !3790)
!3892 = !DILocation(line: 1814, column: 40, scope: !3790)
!3893 = !DILocation(line: 1814, column: 25, scope: !3790)
!3894 = !DILocation(line: 1814, column: 2, scope: !3790)
!3895 = !DILocation(line: 1814, column: 9, scope: !3790)
!3896 = !DILocation(line: 1814, column: 21, scope: !3790)
!3897 = !DILocation(line: 1814, column: 23, scope: !3790)
!3898 = !DILocation(line: 1815, column: 26, scope: !3790)
!3899 = !DILocation(line: 1815, column: 34, scope: !3790)
!3900 = !DILocation(line: 1815, column: 42, scope: !3790)
!3901 = !DILocation(line: 1815, column: 40, scope: !3790)
!3902 = !DILocation(line: 1815, column: 25, scope: !3790)
!3903 = !DILocation(line: 1815, column: 2, scope: !3790)
!3904 = !DILocation(line: 1815, column: 9, scope: !3790)
!3905 = !DILocation(line: 1815, column: 21, scope: !3790)
!3906 = !DILocation(line: 1815, column: 23, scope: !3790)
!3907 = !DILocation(line: 1817, column: 44, scope: !3790)
!3908 = !DILocation(line: 1817, column: 52, scope: !3790)
!3909 = !DILocation(line: 1817, column: 60, scope: !3790)
!3910 = !DILocation(line: 1817, column: 58, scope: !3790)
!3911 = !DILocation(line: 1817, column: 43, scope: !3790)
!3912 = !DILocation(line: 1817, column: 2, scope: !3790)
!3913 = !DILocation(line: 1817, column: 9, scope: !3790)
!3914 = !DILocation(line: 1817, column: 41, scope: !3790)
!3915 = !DILocation(line: 1818, column: 44, scope: !3790)
!3916 = !DILocation(line: 1818, column: 52, scope: !3790)
!3917 = !DILocation(line: 1818, column: 60, scope: !3790)
!3918 = !DILocation(line: 1818, column: 58, scope: !3790)
!3919 = !DILocation(line: 1818, column: 43, scope: !3790)
!3920 = !DILocation(line: 1818, column: 2, scope: !3790)
!3921 = !DILocation(line: 1818, column: 9, scope: !3790)
!3922 = !DILocation(line: 1818, column: 41, scope: !3790)
!3923 = !DILocation(line: 1819, column: 20, scope: !3790)
!3924 = !DILocation(line: 1819, column: 28, scope: !3790)
!3925 = !DILocation(line: 1819, column: 36, scope: !3790)
!3926 = !DILocation(line: 1819, column: 34, scope: !3790)
!3927 = !DILocation(line: 1819, column: 19, scope: !3790)
!3928 = !DILocation(line: 1819, column: 2, scope: !3790)
!3929 = !DILocation(line: 1819, column: 9, scope: !3790)
!3930 = !DILocation(line: 1819, column: 17, scope: !3790)
!3931 = !DILocation(line: 1820, column: 21, scope: !3790)
!3932 = !DILocation(line: 1820, column: 29, scope: !3790)
!3933 = !DILocation(line: 1820, column: 37, scope: !3790)
!3934 = !DILocation(line: 1820, column: 35, scope: !3790)
!3935 = !DILocation(line: 1820, column: 20, scope: !3790)
!3936 = !DILocation(line: 1820, column: 2, scope: !3790)
!3937 = !DILocation(line: 1820, column: 9, scope: !3790)
!3938 = !DILocation(line: 1820, column: 18, scope: !3790)
!3939 = !DILocation(line: 1822, column: 2, scope: !3790)
!3940 = !DILocation(line: 1823, column: 1, scope: !3790)
!3941 = distinct !DISubprogram(name: "hdmi_infoframe_unpack", scope: !1, file: !1, line: 1874, type: !3942, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !263)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!149, !1445, !3014, !324}
!3944 = !DILocalVariable(name: "frame", arg: 1, scope: !3941, file: !1, line: 1874, type: !1445)
!3945 = !DILocation(line: 1874, column: 49, scope: !3941)
!3946 = !DILocalVariable(name: "buffer", arg: 2, scope: !3941, file: !1, line: 1875, type: !3014)
!3947 = !DILocation(line: 1875, column: 18, scope: !3941)
!3948 = !DILocalVariable(name: "size", arg: 3, scope: !3941, file: !1, line: 1875, type: !324)
!3949 = !DILocation(line: 1875, column: 33, scope: !3941)
!3950 = !DILocalVariable(name: "ret", scope: !3941, file: !1, line: 1877, type: !149)
!3951 = !DILocation(line: 1877, column: 6, scope: !3941)
!3952 = !DILocalVariable(name: "ptr", scope: !3941, file: !1, line: 1878, type: !3800)
!3953 = !DILocation(line: 1878, column: 12, scope: !3941)
!3954 = !DILocation(line: 1878, column: 18, scope: !3941)
!3955 = !DILocation(line: 1880, column: 6, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3941, file: !1, line: 1880, column: 6)
!3957 = !DILocation(line: 1880, column: 11, scope: !3956)
!3958 = !DILocation(line: 1880, column: 6, scope: !3941)
!3959 = !DILocation(line: 1881, column: 3, scope: !3956)
!3960 = !DILocation(line: 1883, column: 10, scope: !3941)
!3961 = !DILocation(line: 1883, column: 2, scope: !3941)
!3962 = !DILocation(line: 1885, column: 36, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3941, file: !1, line: 1883, column: 18)
!3964 = !DILocation(line: 1885, column: 43, scope: !3963)
!3965 = !DILocation(line: 1885, column: 48, scope: !3963)
!3966 = !DILocation(line: 1885, column: 56, scope: !3963)
!3967 = !DILocation(line: 1885, column: 9, scope: !3963)
!3968 = !DILocation(line: 1885, column: 7, scope: !3963)
!3969 = !DILocation(line: 1886, column: 3, scope: !3963)
!3970 = !DILocation(line: 1888, column: 36, scope: !3963)
!3971 = !DILocation(line: 1888, column: 43, scope: !3963)
!3972 = !DILocation(line: 1888, column: 48, scope: !3963)
!3973 = !DILocation(line: 1888, column: 56, scope: !3963)
!3974 = !DILocation(line: 1888, column: 9, scope: !3963)
!3975 = !DILocation(line: 1888, column: 7, scope: !3963)
!3976 = !DILocation(line: 1889, column: 3, scope: !3963)
!3977 = !DILocation(line: 1891, column: 36, scope: !3963)
!3978 = !DILocation(line: 1891, column: 43, scope: !3963)
!3979 = !DILocation(line: 1891, column: 48, scope: !3963)
!3980 = !DILocation(line: 1891, column: 56, scope: !3963)
!3981 = !DILocation(line: 1891, column: 9, scope: !3963)
!3982 = !DILocation(line: 1891, column: 7, scope: !3963)
!3983 = !DILocation(line: 1892, column: 3, scope: !3963)
!3984 = !DILocation(line: 1894, column: 38, scope: !3963)
!3985 = !DILocation(line: 1894, column: 45, scope: !3963)
!3986 = !DILocation(line: 1894, column: 52, scope: !3963)
!3987 = !DILocation(line: 1894, column: 60, scope: !3963)
!3988 = !DILocation(line: 1894, column: 9, scope: !3963)
!3989 = !DILocation(line: 1894, column: 7, scope: !3963)
!3990 = !DILocation(line: 1895, column: 3, scope: !3963)
!3991 = !DILocation(line: 1897, column: 43, scope: !3963)
!3992 = !DILocation(line: 1897, column: 50, scope: !3963)
!3993 = !DILocation(line: 1897, column: 58, scope: !3963)
!3994 = !DILocation(line: 1897, column: 66, scope: !3963)
!3995 = !DILocation(line: 1897, column: 9, scope: !3963)
!3996 = !DILocation(line: 1897, column: 7, scope: !3963)
!3997 = !DILocation(line: 1898, column: 3, scope: !3963)
!3998 = !DILocation(line: 1900, column: 7, scope: !3963)
!3999 = !DILocation(line: 1901, column: 3, scope: !3963)
!4000 = !DILocation(line: 1904, column: 9, scope: !3941)
!4001 = !DILocation(line: 1904, column: 2, scope: !3941)
!4002 = !DILocation(line: 1905, column: 1, scope: !3941)
!4003 = distinct !DISubprogram(name: "hdmi_avi_infoframe_unpack", scope: !1, file: !1, line: 1548, type: !4004, scopeLine: 1550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!149, !236, !3014, !324}
!4006 = !DILocalVariable(name: "frame", arg: 1, scope: !4003, file: !1, line: 1548, type: !236)
!4007 = !DILocation(line: 1548, column: 65, scope: !4003)
!4008 = !DILocalVariable(name: "buffer", arg: 2, scope: !4003, file: !1, line: 1549, type: !3014)
!4009 = !DILocation(line: 1549, column: 22, scope: !4003)
!4010 = !DILocalVariable(name: "size", arg: 3, scope: !4003, file: !1, line: 1549, type: !324)
!4011 = !DILocation(line: 1549, column: 37, scope: !4003)
!4012 = !DILocalVariable(name: "ptr", scope: !4003, file: !1, line: 1551, type: !3800)
!4013 = !DILocation(line: 1551, column: 12, scope: !4003)
!4014 = !DILocation(line: 1551, column: 18, scope: !4003)
!4015 = !DILocation(line: 1553, column: 6, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1553, column: 6)
!4017 = !DILocation(line: 1553, column: 11, scope: !4016)
!4018 = !DILocation(line: 1553, column: 6, scope: !4003)
!4019 = !DILocation(line: 1554, column: 3, scope: !4016)
!4020 = !DILocation(line: 1556, column: 6, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1556, column: 6)
!4022 = !DILocation(line: 1556, column: 13, scope: !4021)
!4023 = !DILocation(line: 1556, column: 40, scope: !4021)
!4024 = !DILocation(line: 1557, column: 6, scope: !4021)
!4025 = !DILocation(line: 1557, column: 13, scope: !4021)
!4026 = !DILocation(line: 1557, column: 18, scope: !4021)
!4027 = !DILocation(line: 1558, column: 6, scope: !4021)
!4028 = !DILocation(line: 1558, column: 13, scope: !4021)
!4029 = !DILocation(line: 1556, column: 6, scope: !4003)
!4030 = !DILocation(line: 1559, column: 3, scope: !4021)
!4031 = !DILocation(line: 1561, column: 30, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1561, column: 6)
!4033 = !DILocation(line: 1561, column: 6, scope: !4032)
!4034 = !DILocation(line: 1561, column: 64, scope: !4032)
!4035 = !DILocation(line: 1561, column: 6, scope: !4003)
!4036 = !DILocation(line: 1562, column: 3, scope: !4032)
!4037 = !DILocation(line: 1564, column: 26, scope: !4003)
!4038 = !DILocation(line: 1564, column: 2, scope: !4003)
!4039 = !DILocation(line: 1566, column: 6, scope: !4003)
!4040 = !DILocation(line: 1568, column: 23, scope: !4003)
!4041 = !DILocation(line: 1568, column: 30, scope: !4003)
!4042 = !DILocation(line: 1568, column: 36, scope: !4003)
!4043 = !DILocation(line: 1568, column: 2, scope: !4003)
!4044 = !DILocation(line: 1568, column: 9, scope: !4003)
!4045 = !DILocation(line: 1568, column: 20, scope: !4003)
!4046 = !DILocation(line: 1569, column: 6, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1569, column: 6)
!4048 = !DILocation(line: 1569, column: 13, scope: !4047)
!4049 = !DILocation(line: 1569, column: 6, scope: !4003)
!4050 = !DILocation(line: 1570, column: 26, scope: !4047)
!4051 = !DILocation(line: 1570, column: 33, scope: !4047)
!4052 = !DILocation(line: 1570, column: 3, scope: !4047)
!4053 = !DILocation(line: 1570, column: 10, scope: !4047)
!4054 = !DILocation(line: 1570, column: 24, scope: !4047)
!4055 = !DILocation(line: 1571, column: 6, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1571, column: 6)
!4057 = !DILocation(line: 1571, column: 13, scope: !4056)
!4058 = !DILocation(line: 1571, column: 6, scope: !4003)
!4059 = !DILocation(line: 1572, column: 21, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4056, file: !1, line: 1571, column: 20)
!4061 = !DILocation(line: 1572, column: 28, scope: !4060)
!4062 = !DILocation(line: 1572, column: 36, scope: !4060)
!4063 = !DILocation(line: 1572, column: 34, scope: !4060)
!4064 = !DILocation(line: 1572, column: 20, scope: !4060)
!4065 = !DILocation(line: 1572, column: 3, scope: !4060)
!4066 = !DILocation(line: 1572, column: 10, scope: !4060)
!4067 = !DILocation(line: 1572, column: 18, scope: !4060)
!4068 = !DILocation(line: 1573, column: 24, scope: !4060)
!4069 = !DILocation(line: 1573, column: 31, scope: !4060)
!4070 = !DILocation(line: 1573, column: 39, scope: !4060)
!4071 = !DILocation(line: 1573, column: 37, scope: !4060)
!4072 = !DILocation(line: 1573, column: 23, scope: !4060)
!4073 = !DILocation(line: 1573, column: 3, scope: !4060)
!4074 = !DILocation(line: 1573, column: 10, scope: !4060)
!4075 = !DILocation(line: 1573, column: 21, scope: !4060)
!4076 = !DILocation(line: 1574, column: 2, scope: !4060)
!4077 = !DILocation(line: 1575, column: 6, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1575, column: 6)
!4079 = !DILocation(line: 1575, column: 13, scope: !4078)
!4080 = !DILocation(line: 1575, column: 6, scope: !4003)
!4081 = !DILocation(line: 1576, column: 22, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4078, file: !1, line: 1575, column: 20)
!4083 = !DILocation(line: 1576, column: 30, scope: !4082)
!4084 = !DILocation(line: 1576, column: 38, scope: !4082)
!4085 = !DILocation(line: 1576, column: 36, scope: !4082)
!4086 = !DILocation(line: 1576, column: 21, scope: !4082)
!4087 = !DILocation(line: 1576, column: 3, scope: !4082)
!4088 = !DILocation(line: 1576, column: 10, scope: !4082)
!4089 = !DILocation(line: 1576, column: 19, scope: !4082)
!4090 = !DILocation(line: 1577, column: 23, scope: !4082)
!4091 = !DILocation(line: 1577, column: 31, scope: !4082)
!4092 = !DILocation(line: 1577, column: 39, scope: !4082)
!4093 = !DILocation(line: 1577, column: 37, scope: !4082)
!4094 = !DILocation(line: 1577, column: 22, scope: !4082)
!4095 = !DILocation(line: 1577, column: 3, scope: !4082)
!4096 = !DILocation(line: 1577, column: 10, scope: !4082)
!4097 = !DILocation(line: 1577, column: 20, scope: !4082)
!4098 = !DILocation(line: 1578, column: 2, scope: !4082)
!4099 = !DILocation(line: 1579, column: 21, scope: !4003)
!4100 = !DILocation(line: 1579, column: 28, scope: !4003)
!4101 = !DILocation(line: 1579, column: 2, scope: !4003)
!4102 = !DILocation(line: 1579, column: 9, scope: !4003)
!4103 = !DILocation(line: 1579, column: 19, scope: !4003)
!4104 = !DILocation(line: 1581, column: 24, scope: !4003)
!4105 = !DILocation(line: 1581, column: 31, scope: !4003)
!4106 = !DILocation(line: 1581, column: 37, scope: !4003)
!4107 = !DILocation(line: 1581, column: 2, scope: !4003)
!4108 = !DILocation(line: 1581, column: 9, scope: !4003)
!4109 = !DILocation(line: 1581, column: 21, scope: !4003)
!4110 = !DILocation(line: 1582, column: 27, scope: !4003)
!4111 = !DILocation(line: 1582, column: 34, scope: !4003)
!4112 = !DILocation(line: 1582, column: 40, scope: !4003)
!4113 = !DILocation(line: 1582, column: 2, scope: !4003)
!4114 = !DILocation(line: 1582, column: 9, scope: !4003)
!4115 = !DILocation(line: 1582, column: 24, scope: !4003)
!4116 = !DILocation(line: 1583, column: 25, scope: !4003)
!4117 = !DILocation(line: 1583, column: 32, scope: !4003)
!4118 = !DILocation(line: 1583, column: 2, scope: !4003)
!4119 = !DILocation(line: 1583, column: 9, scope: !4003)
!4120 = !DILocation(line: 1583, column: 23, scope: !4003)
!4121 = !DILocation(line: 1585, column: 15, scope: !4003)
!4122 = !DILocation(line: 1585, column: 22, scope: !4003)
!4123 = !DILocation(line: 1585, column: 2, scope: !4003)
!4124 = !DILocation(line: 1585, column: 9, scope: !4003)
!4125 = !DILocation(line: 1585, column: 13, scope: !4003)
!4126 = !DILocation(line: 1586, column: 33, scope: !4003)
!4127 = !DILocation(line: 1586, column: 40, scope: !4003)
!4128 = !DILocation(line: 1586, column: 46, scope: !4003)
!4129 = !DILocation(line: 1586, column: 2, scope: !4003)
!4130 = !DILocation(line: 1586, column: 9, scope: !4003)
!4131 = !DILocation(line: 1586, column: 30, scope: !4003)
!4132 = !DILocation(line: 1587, column: 31, scope: !4003)
!4133 = !DILocation(line: 1587, column: 38, scope: !4003)
!4134 = !DILocation(line: 1587, column: 44, scope: !4003)
!4135 = !DILocation(line: 1587, column: 2, scope: !4003)
!4136 = !DILocation(line: 1587, column: 9, scope: !4003)
!4137 = !DILocation(line: 1587, column: 28, scope: !4003)
!4138 = !DILocation(line: 1588, column: 16, scope: !4003)
!4139 = !DILocation(line: 1588, column: 23, scope: !4003)
!4140 = !DILocation(line: 1588, column: 2, scope: !4003)
!4141 = !DILocation(line: 1588, column: 9, scope: !4003)
!4142 = !DILocation(line: 1588, column: 14, scope: !4003)
!4143 = !DILocation(line: 1590, column: 22, scope: !4003)
!4144 = !DILocation(line: 1590, column: 29, scope: !4003)
!4145 = !DILocation(line: 1590, column: 2, scope: !4003)
!4146 = !DILocation(line: 1590, column: 9, scope: !4003)
!4147 = !DILocation(line: 1590, column: 20, scope: !4003)
!4148 = !DILocation(line: 1591, column: 35, scope: !4003)
!4149 = !DILocation(line: 1591, column: 42, scope: !4003)
!4150 = !DILocation(line: 1591, column: 48, scope: !4003)
!4151 = !DILocation(line: 1591, column: 2, scope: !4003)
!4152 = !DILocation(line: 1591, column: 9, scope: !4003)
!4153 = !DILocation(line: 1591, column: 32, scope: !4003)
!4154 = !DILocation(line: 1592, column: 25, scope: !4003)
!4155 = !DILocation(line: 1592, column: 32, scope: !4003)
!4156 = !DILocation(line: 1592, column: 38, scope: !4003)
!4157 = !DILocation(line: 1592, column: 2, scope: !4003)
!4158 = !DILocation(line: 1592, column: 9, scope: !4003)
!4159 = !DILocation(line: 1592, column: 22, scope: !4003)
!4160 = !DILocation(line: 1594, column: 24, scope: !4003)
!4161 = !DILocation(line: 1594, column: 31, scope: !4003)
!4162 = !DILocation(line: 1594, column: 2, scope: !4003)
!4163 = !DILocation(line: 1594, column: 9, scope: !4003)
!4164 = !DILocation(line: 1594, column: 22, scope: !4003)
!4165 = !DILocation(line: 1596, column: 2, scope: !4003)
!4166 = !DILocation(line: 1597, column: 1, scope: !4003)
!4167 = distinct !DISubprogram(name: "hdmi_drm_infoframe_unpack", scope: !1, file: !1, line: 1839, type: !3791, scopeLine: 1841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4168 = !DILocalVariable(name: "frame", arg: 1, scope: !4167, file: !1, line: 1839, type: !1189)
!4169 = !DILocation(line: 1839, column: 65, scope: !4167)
!4170 = !DILocalVariable(name: "buffer", arg: 2, scope: !4167, file: !1, line: 1840, type: !3014)
!4171 = !DILocation(line: 1840, column: 22, scope: !4167)
!4172 = !DILocalVariable(name: "size", arg: 3, scope: !4167, file: !1, line: 1840, type: !324)
!4173 = !DILocation(line: 1840, column: 37, scope: !4167)
!4174 = !DILocalVariable(name: "ptr", scope: !4167, file: !1, line: 1842, type: !3800)
!4175 = !DILocation(line: 1842, column: 12, scope: !4167)
!4176 = !DILocation(line: 1842, column: 18, scope: !4167)
!4177 = !DILocalVariable(name: "ret", scope: !4167, file: !1, line: 1843, type: !149)
!4178 = !DILocation(line: 1843, column: 6, scope: !4167)
!4179 = !DILocation(line: 1845, column: 6, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4167, file: !1, line: 1845, column: 6)
!4181 = !DILocation(line: 1845, column: 11, scope: !4180)
!4182 = !DILocation(line: 1845, column: 6, scope: !4167)
!4183 = !DILocation(line: 1846, column: 3, scope: !4180)
!4184 = !DILocation(line: 1848, column: 6, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4167, file: !1, line: 1848, column: 6)
!4186 = !DILocation(line: 1848, column: 13, scope: !4185)
!4187 = !DILocation(line: 1848, column: 40, scope: !4185)
!4188 = !DILocation(line: 1849, column: 6, scope: !4185)
!4189 = !DILocation(line: 1849, column: 13, scope: !4185)
!4190 = !DILocation(line: 1849, column: 18, scope: !4185)
!4191 = !DILocation(line: 1850, column: 6, scope: !4185)
!4192 = !DILocation(line: 1850, column: 13, scope: !4185)
!4193 = !DILocation(line: 1848, column: 6, scope: !4167)
!4194 = !DILocation(line: 1851, column: 3, scope: !4185)
!4195 = !DILocation(line: 1853, column: 30, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4167, file: !1, line: 1853, column: 6)
!4197 = !DILocation(line: 1853, column: 6, scope: !4196)
!4198 = !DILocation(line: 1853, column: 64, scope: !4196)
!4199 = !DILocation(line: 1853, column: 6, scope: !4167)
!4200 = !DILocation(line: 1854, column: 3, scope: !4196)
!4201 = !DILocation(line: 1856, column: 39, scope: !4167)
!4202 = !DILocation(line: 1856, column: 46, scope: !4167)
!4203 = !DILocation(line: 1856, column: 50, scope: !4167)
!4204 = !DILocation(line: 1857, column: 11, scope: !4167)
!4205 = !DILocation(line: 1857, column: 16, scope: !4167)
!4206 = !DILocation(line: 1856, column: 8, scope: !4167)
!4207 = !DILocation(line: 1856, column: 6, scope: !4167)
!4208 = !DILocation(line: 1858, column: 9, scope: !4167)
!4209 = !DILocation(line: 1858, column: 2, scope: !4167)
!4210 = !DILocation(line: 1859, column: 1, scope: !4167)
!4211 = distinct !DISubprogram(name: "hdmi_spd_infoframe_unpack", scope: !1, file: !1, line: 1612, type: !4212, scopeLine: 1614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!149, !576, !3014, !324}
!4214 = !DILocalVariable(name: "frame", arg: 1, scope: !4211, file: !1, line: 1612, type: !576)
!4215 = !DILocation(line: 1612, column: 65, scope: !4211)
!4216 = !DILocalVariable(name: "buffer", arg: 2, scope: !4211, file: !1, line: 1613, type: !3014)
!4217 = !DILocation(line: 1613, column: 22, scope: !4211)
!4218 = !DILocalVariable(name: "size", arg: 3, scope: !4211, file: !1, line: 1613, type: !324)
!4219 = !DILocation(line: 1613, column: 37, scope: !4211)
!4220 = !DILocalVariable(name: "ptr", scope: !4211, file: !1, line: 1615, type: !3800)
!4221 = !DILocation(line: 1615, column: 12, scope: !4211)
!4222 = !DILocation(line: 1615, column: 18, scope: !4211)
!4223 = !DILocalVariable(name: "ret", scope: !4211, file: !1, line: 1616, type: !149)
!4224 = !DILocation(line: 1616, column: 6, scope: !4211)
!4225 = !DILocation(line: 1618, column: 6, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4211, file: !1, line: 1618, column: 6)
!4227 = !DILocation(line: 1618, column: 11, scope: !4226)
!4228 = !DILocation(line: 1618, column: 6, scope: !4211)
!4229 = !DILocation(line: 1619, column: 3, scope: !4226)
!4230 = !DILocation(line: 1621, column: 6, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4211, file: !1, line: 1621, column: 6)
!4232 = !DILocation(line: 1621, column: 13, scope: !4231)
!4233 = !DILocation(line: 1621, column: 40, scope: !4231)
!4234 = !DILocation(line: 1622, column: 6, scope: !4231)
!4235 = !DILocation(line: 1622, column: 13, scope: !4231)
!4236 = !DILocation(line: 1622, column: 18, scope: !4231)
!4237 = !DILocation(line: 1623, column: 6, scope: !4231)
!4238 = !DILocation(line: 1623, column: 13, scope: !4231)
!4239 = !DILocation(line: 1621, column: 6, scope: !4211)
!4240 = !DILocation(line: 1624, column: 3, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4231, file: !1, line: 1623, column: 41)
!4242 = !DILocation(line: 1627, column: 30, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4211, file: !1, line: 1627, column: 6)
!4244 = !DILocation(line: 1627, column: 6, scope: !4243)
!4245 = !DILocation(line: 1627, column: 64, scope: !4243)
!4246 = !DILocation(line: 1627, column: 6, scope: !4211)
!4247 = !DILocation(line: 1628, column: 3, scope: !4243)
!4248 = !DILocation(line: 1630, column: 6, scope: !4211)
!4249 = !DILocation(line: 1632, column: 32, scope: !4211)
!4250 = !DILocation(line: 1632, column: 39, scope: !4211)
!4251 = !DILocation(line: 1632, column: 44, scope: !4211)
!4252 = !DILocation(line: 1632, column: 48, scope: !4211)
!4253 = !DILocation(line: 1632, column: 8, scope: !4211)
!4254 = !DILocation(line: 1632, column: 6, scope: !4211)
!4255 = !DILocation(line: 1633, column: 6, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4211, file: !1, line: 1633, column: 6)
!4257 = !DILocation(line: 1633, column: 6, scope: !4211)
!4258 = !DILocation(line: 1634, column: 10, scope: !4256)
!4259 = !DILocation(line: 1634, column: 3, scope: !4256)
!4260 = !DILocation(line: 1636, column: 15, scope: !4211)
!4261 = !DILocation(line: 1636, column: 2, scope: !4211)
!4262 = !DILocation(line: 1636, column: 9, scope: !4211)
!4263 = !DILocation(line: 1636, column: 13, scope: !4211)
!4264 = !DILocation(line: 1638, column: 2, scope: !4211)
!4265 = !DILocation(line: 1639, column: 1, scope: !4211)
!4266 = distinct !DISubprogram(name: "hdmi_audio_infoframe_unpack", scope: !1, file: !1, line: 1654, type: !4267, scopeLine: 1656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!149, !751, !3014, !324}
!4269 = !DILocalVariable(name: "frame", arg: 1, scope: !4266, file: !1, line: 1654, type: !751)
!4270 = !DILocation(line: 1654, column: 69, scope: !4266)
!4271 = !DILocalVariable(name: "buffer", arg: 2, scope: !4266, file: !1, line: 1655, type: !3014)
!4272 = !DILocation(line: 1655, column: 24, scope: !4266)
!4273 = !DILocalVariable(name: "size", arg: 3, scope: !4266, file: !1, line: 1655, type: !324)
!4274 = !DILocation(line: 1655, column: 39, scope: !4266)
!4275 = !DILocalVariable(name: "ptr", scope: !4266, file: !1, line: 1657, type: !3800)
!4276 = !DILocation(line: 1657, column: 12, scope: !4266)
!4277 = !DILocation(line: 1657, column: 18, scope: !4266)
!4278 = !DILocalVariable(name: "ret", scope: !4266, file: !1, line: 1658, type: !149)
!4279 = !DILocation(line: 1658, column: 6, scope: !4266)
!4280 = !DILocation(line: 1660, column: 6, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 1660, column: 6)
!4282 = !DILocation(line: 1660, column: 11, scope: !4281)
!4283 = !DILocation(line: 1660, column: 6, scope: !4266)
!4284 = !DILocation(line: 1661, column: 3, scope: !4281)
!4285 = !DILocation(line: 1663, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 1663, column: 6)
!4287 = !DILocation(line: 1663, column: 13, scope: !4286)
!4288 = !DILocation(line: 1663, column: 42, scope: !4286)
!4289 = !DILocation(line: 1664, column: 6, scope: !4286)
!4290 = !DILocation(line: 1664, column: 13, scope: !4286)
!4291 = !DILocation(line: 1664, column: 18, scope: !4286)
!4292 = !DILocation(line: 1665, column: 6, scope: !4286)
!4293 = !DILocation(line: 1665, column: 13, scope: !4286)
!4294 = !DILocation(line: 1663, column: 6, scope: !4266)
!4295 = !DILocation(line: 1666, column: 3, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4286, file: !1, line: 1665, column: 43)
!4297 = !DILocation(line: 1669, column: 30, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 1669, column: 6)
!4299 = !DILocation(line: 1669, column: 6, scope: !4298)
!4300 = !DILocation(line: 1669, column: 66, scope: !4298)
!4301 = !DILocation(line: 1669, column: 6, scope: !4266)
!4302 = !DILocation(line: 1670, column: 3, scope: !4298)
!4303 = !DILocation(line: 1672, column: 34, scope: !4266)
!4304 = !DILocation(line: 1672, column: 8, scope: !4266)
!4305 = !DILocation(line: 1672, column: 6, scope: !4266)
!4306 = !DILocation(line: 1673, column: 6, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4266, file: !1, line: 1673, column: 6)
!4308 = !DILocation(line: 1673, column: 6, scope: !4266)
!4309 = !DILocation(line: 1674, column: 10, scope: !4307)
!4310 = !DILocation(line: 1674, column: 3, scope: !4307)
!4311 = !DILocation(line: 1676, column: 6, scope: !4266)
!4312 = !DILocation(line: 1678, column: 20, scope: !4266)
!4313 = !DILocation(line: 1678, column: 27, scope: !4266)
!4314 = !DILocation(line: 1678, column: 2, scope: !4266)
!4315 = !DILocation(line: 1678, column: 9, scope: !4266)
!4316 = !DILocation(line: 1678, column: 18, scope: !4266)
!4317 = !DILocation(line: 1679, column: 24, scope: !4266)
!4318 = !DILocation(line: 1679, column: 31, scope: !4266)
!4319 = !DILocation(line: 1679, column: 37, scope: !4266)
!4320 = !DILocation(line: 1679, column: 2, scope: !4266)
!4321 = !DILocation(line: 1679, column: 9, scope: !4266)
!4322 = !DILocation(line: 1679, column: 21, scope: !4266)
!4323 = !DILocation(line: 1680, column: 23, scope: !4266)
!4324 = !DILocation(line: 1680, column: 30, scope: !4266)
!4325 = !DILocation(line: 1680, column: 2, scope: !4266)
!4326 = !DILocation(line: 1680, column: 9, scope: !4266)
!4327 = !DILocation(line: 1680, column: 21, scope: !4266)
!4328 = !DILocation(line: 1681, column: 29, scope: !4266)
!4329 = !DILocation(line: 1681, column: 36, scope: !4266)
!4330 = !DILocation(line: 1681, column: 42, scope: !4266)
!4331 = !DILocation(line: 1681, column: 2, scope: !4266)
!4332 = !DILocation(line: 1681, column: 9, scope: !4266)
!4333 = !DILocation(line: 1681, column: 26, scope: !4266)
!4334 = !DILocation(line: 1682, column: 27, scope: !4266)
!4335 = !DILocation(line: 1682, column: 34, scope: !4266)
!4336 = !DILocation(line: 1682, column: 2, scope: !4266)
!4337 = !DILocation(line: 1682, column: 9, scope: !4266)
!4338 = !DILocation(line: 1682, column: 25, scope: !4266)
!4339 = !DILocation(line: 1683, column: 30, scope: !4266)
!4340 = !DILocation(line: 1683, column: 2, scope: !4266)
!4341 = !DILocation(line: 1683, column: 9, scope: !4266)
!4342 = !DILocation(line: 1683, column: 28, scope: !4266)
!4343 = !DILocation(line: 1684, column: 30, scope: !4266)
!4344 = !DILocation(line: 1684, column: 37, scope: !4266)
!4345 = !DILocation(line: 1684, column: 43, scope: !4266)
!4346 = !DILocation(line: 1684, column: 29, scope: !4266)
!4347 = !DILocation(line: 1684, column: 2, scope: !4266)
!4348 = !DILocation(line: 1684, column: 9, scope: !4266)
!4349 = !DILocation(line: 1684, column: 27, scope: !4266)
!4350 = !DILocation(line: 1685, column: 27, scope: !4266)
!4351 = !DILocation(line: 1685, column: 34, scope: !4266)
!4352 = !DILocation(line: 1685, column: 2, scope: !4266)
!4353 = !DILocation(line: 1685, column: 9, scope: !4266)
!4354 = !DILocation(line: 1685, column: 25, scope: !4266)
!4355 = !DILocation(line: 1687, column: 2, scope: !4266)
!4356 = !DILocation(line: 1688, column: 1, scope: !4266)
!4357 = distinct !DISubprogram(name: "hdmi_vendor_any_infoframe_unpack", scope: !1, file: !1, line: 1704, type: !4358, scopeLine: 1706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!149, !1515, !3014, !324}
!4360 = !DILocalVariable(name: "frame", arg: 1, scope: !4357, file: !1, line: 1704, type: !1515)
!4361 = !DILocation(line: 1704, column: 67, scope: !4357)
!4362 = !DILocalVariable(name: "buffer", arg: 2, scope: !4357, file: !1, line: 1705, type: !3014)
!4363 = !DILocation(line: 1705, column: 18, scope: !4357)
!4364 = !DILocalVariable(name: "size", arg: 3, scope: !4357, file: !1, line: 1705, type: !324)
!4365 = !DILocation(line: 1705, column: 33, scope: !4357)
!4366 = !DILocalVariable(name: "ptr", scope: !4357, file: !1, line: 1707, type: !3800)
!4367 = !DILocation(line: 1707, column: 12, scope: !4357)
!4368 = !DILocation(line: 1707, column: 18, scope: !4357)
!4369 = !DILocalVariable(name: "length", scope: !4357, file: !1, line: 1708, type: !324)
!4370 = !DILocation(line: 1708, column: 9, scope: !4357)
!4371 = !DILocalVariable(name: "ret", scope: !4357, file: !1, line: 1709, type: !149)
!4372 = !DILocation(line: 1709, column: 6, scope: !4357)
!4373 = !DILocalVariable(name: "hdmi_video_format", scope: !4357, file: !1, line: 1710, type: !336)
!4374 = !DILocation(line: 1710, column: 5, scope: !4357)
!4375 = !DILocalVariable(name: "hvf", scope: !4357, file: !1, line: 1711, type: !951)
!4376 = !DILocation(line: 1711, column: 32, scope: !4357)
!4377 = !DILocation(line: 1711, column: 39, scope: !4357)
!4378 = !DILocation(line: 1711, column: 46, scope: !4357)
!4379 = !DILocation(line: 1713, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1713, column: 6)
!4381 = !DILocation(line: 1713, column: 11, scope: !4380)
!4382 = !DILocation(line: 1713, column: 6, scope: !4357)
!4383 = !DILocation(line: 1714, column: 3, scope: !4380)
!4384 = !DILocation(line: 1716, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1716, column: 6)
!4386 = !DILocation(line: 1716, column: 13, scope: !4385)
!4387 = !DILocation(line: 1716, column: 43, scope: !4385)
!4388 = !DILocation(line: 1717, column: 6, scope: !4385)
!4389 = !DILocation(line: 1717, column: 13, scope: !4385)
!4390 = !DILocation(line: 1717, column: 18, scope: !4385)
!4391 = !DILocation(line: 1718, column: 7, scope: !4385)
!4392 = !DILocation(line: 1718, column: 14, scope: !4385)
!4393 = !DILocation(line: 1718, column: 19, scope: !4385)
!4394 = !DILocation(line: 1718, column: 22, scope: !4385)
!4395 = !DILocation(line: 1718, column: 29, scope: !4385)
!4396 = !DILocation(line: 1718, column: 34, scope: !4385)
!4397 = !DILocation(line: 1718, column: 37, scope: !4385)
!4398 = !DILocation(line: 1718, column: 44, scope: !4385)
!4399 = !DILocation(line: 1716, column: 6, scope: !4357)
!4400 = !DILocation(line: 1719, column: 3, scope: !4385)
!4401 = !DILocation(line: 1721, column: 11, scope: !4357)
!4402 = !DILocation(line: 1721, column: 9, scope: !4357)
!4403 = !DILocation(line: 1723, column: 6, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1723, column: 6)
!4405 = !DILocation(line: 1723, column: 42, scope: !4404)
!4406 = !DILocation(line: 1723, column: 40, scope: !4404)
!4407 = !DILocation(line: 1723, column: 11, scope: !4404)
!4408 = !DILocation(line: 1723, column: 6, scope: !4357)
!4409 = !DILocation(line: 1724, column: 3, scope: !4404)
!4410 = !DILocation(line: 1726, column: 30, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1726, column: 6)
!4412 = !DILocation(line: 1727, column: 38, scope: !4411)
!4413 = !DILocation(line: 1727, column: 36, scope: !4411)
!4414 = !DILocation(line: 1726, column: 6, scope: !4411)
!4415 = !DILocation(line: 1727, column: 46, scope: !4411)
!4416 = !DILocation(line: 1726, column: 6, scope: !4357)
!4417 = !DILocation(line: 1728, column: 3, scope: !4411)
!4418 = !DILocation(line: 1730, column: 6, scope: !4357)
!4419 = !DILocation(line: 1733, column: 7, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1733, column: 6)
!4421 = !DILocation(line: 1733, column: 14, scope: !4420)
!4422 = !DILocation(line: 1733, column: 23, scope: !4420)
!4423 = !DILocation(line: 1734, column: 7, scope: !4420)
!4424 = !DILocation(line: 1734, column: 14, scope: !4420)
!4425 = !DILocation(line: 1734, column: 23, scope: !4420)
!4426 = !DILocation(line: 1735, column: 7, scope: !4420)
!4427 = !DILocation(line: 1735, column: 14, scope: !4420)
!4428 = !DILocation(line: 1733, column: 6, scope: !4357)
!4429 = !DILocation(line: 1736, column: 3, scope: !4420)
!4430 = !DILocation(line: 1738, column: 22, scope: !4357)
!4431 = !DILocation(line: 1738, column: 29, scope: !4357)
!4432 = !DILocation(line: 1738, column: 20, scope: !4357)
!4433 = !DILocation(line: 1740, column: 6, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1740, column: 6)
!4435 = !DILocation(line: 1740, column: 24, scope: !4434)
!4436 = !DILocation(line: 1740, column: 6, scope: !4357)
!4437 = !DILocation(line: 1741, column: 3, scope: !4434)
!4438 = !DILocation(line: 1743, column: 35, scope: !4357)
!4439 = !DILocation(line: 1743, column: 8, scope: !4357)
!4440 = !DILocation(line: 1743, column: 6, scope: !4357)
!4441 = !DILocation(line: 1744, column: 6, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1744, column: 6)
!4443 = !DILocation(line: 1744, column: 6, scope: !4357)
!4444 = !DILocation(line: 1745, column: 10, scope: !4442)
!4445 = !DILocation(line: 1745, column: 3, scope: !4442)
!4446 = !DILocation(line: 1747, column: 16, scope: !4357)
!4447 = !DILocation(line: 1747, column: 2, scope: !4357)
!4448 = !DILocation(line: 1747, column: 7, scope: !4357)
!4449 = !DILocation(line: 1747, column: 14, scope: !4357)
!4450 = !DILocation(line: 1749, column: 6, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4357, file: !1, line: 1749, column: 6)
!4452 = !DILocation(line: 1749, column: 24, scope: !4451)
!4453 = !DILocation(line: 1749, column: 6, scope: !4357)
!4454 = !DILocation(line: 1750, column: 7, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !1, line: 1750, column: 7)
!4456 = distinct !DILexicalBlock(scope: !4451, file: !1, line: 1749, column: 32)
!4457 = !DILocation(line: 1750, column: 14, scope: !4455)
!4458 = !DILocation(line: 1750, column: 19, scope: !4455)
!4459 = !DILocation(line: 1750, column: 22, scope: !4455)
!4460 = !DILocation(line: 1750, column: 29, scope: !4455)
!4461 = !DILocation(line: 1750, column: 7, scope: !4456)
!4462 = !DILocation(line: 1751, column: 4, scope: !4455)
!4463 = !DILocation(line: 1752, column: 21, scope: !4456)
!4464 = !DILocation(line: 1752, column: 28, scope: !4456)
!4465 = !DILocation(line: 1752, column: 3, scope: !4456)
!4466 = !DILocation(line: 1752, column: 8, scope: !4456)
!4467 = !DILocation(line: 1752, column: 19, scope: !4456)
!4468 = !DILocation(line: 1753, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4456, file: !1, line: 1753, column: 7)
!4470 = !DILocation(line: 1753, column: 12, scope: !4469)
!4471 = !DILocation(line: 1753, column: 23, scope: !4469)
!4472 = !DILocation(line: 1753, column: 7, scope: !4456)
!4473 = !DILocation(line: 1754, column: 8, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 1754, column: 8)
!4475 = distinct !DILexicalBlock(scope: !4469, file: !1, line: 1753, column: 63)
!4476 = !DILocation(line: 1754, column: 15, scope: !4474)
!4477 = !DILocation(line: 1754, column: 8, scope: !4475)
!4478 = !DILocation(line: 1755, column: 5, scope: !4474)
!4479 = !DILocation(line: 1756, column: 24, scope: !4475)
!4480 = !DILocation(line: 1756, column: 31, scope: !4475)
!4481 = !DILocation(line: 1756, column: 4, scope: !4475)
!4482 = !DILocation(line: 1756, column: 9, scope: !4475)
!4483 = !DILocation(line: 1756, column: 22, scope: !4475)
!4484 = !DILocation(line: 1757, column: 3, scope: !4475)
!4485 = !DILocation(line: 1758, column: 2, scope: !4456)
!4486 = !DILocation(line: 1758, column: 13, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4451, file: !1, line: 1758, column: 13)
!4488 = !DILocation(line: 1758, column: 31, scope: !4487)
!4489 = !DILocation(line: 1758, column: 13, scope: !4451)
!4490 = !DILocation(line: 1759, column: 7, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !1, line: 1759, column: 7)
!4492 = distinct !DILexicalBlock(scope: !4487, file: !1, line: 1758, column: 39)
!4493 = !DILocation(line: 1759, column: 14, scope: !4491)
!4494 = !DILocation(line: 1759, column: 7, scope: !4492)
!4495 = !DILocation(line: 1760, column: 4, scope: !4491)
!4496 = !DILocation(line: 1761, column: 14, scope: !4492)
!4497 = !DILocation(line: 1761, column: 3, scope: !4492)
!4498 = !DILocation(line: 1761, column: 8, scope: !4492)
!4499 = !DILocation(line: 1761, column: 12, scope: !4492)
!4500 = !DILocation(line: 1762, column: 2, scope: !4492)
!4501 = !DILocation(line: 1763, column: 7, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 1763, column: 7)
!4503 = distinct !DILexicalBlock(scope: !4487, file: !1, line: 1762, column: 9)
!4504 = !DILocation(line: 1763, column: 14, scope: !4502)
!4505 = !DILocation(line: 1763, column: 7, scope: !4503)
!4506 = !DILocation(line: 1764, column: 4, scope: !4502)
!4507 = !DILocation(line: 1767, column: 2, scope: !4357)
!4508 = !DILocation(line: 1768, column: 1, scope: !4357)
!4509 = distinct !DISubprogram(name: "hdmi_infoframe_checksum", scope: !1, file: !1, line: 34, type: !4510, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!336, !3800, !324}
!4512 = !DILocalVariable(name: "ptr", arg: 1, scope: !4509, file: !1, line: 34, type: !3800)
!4513 = !DILocation(line: 34, column: 45, scope: !4509)
!4514 = !DILocalVariable(name: "size", arg: 2, scope: !4509, file: !1, line: 34, type: !324)
!4515 = !DILocation(line: 34, column: 57, scope: !4509)
!4516 = !DILocalVariable(name: "csum", scope: !4509, file: !1, line: 36, type: !336)
!4517 = !DILocation(line: 36, column: 5, scope: !4509)
!4518 = !DILocalVariable(name: "i", scope: !4509, file: !1, line: 37, type: !324)
!4519 = !DILocation(line: 37, column: 9, scope: !4509)
!4520 = !DILocation(line: 40, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4509, file: !1, line: 40, column: 2)
!4522 = !DILocation(line: 40, column: 7, scope: !4521)
!4523 = !DILocation(line: 40, column: 14, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !1, line: 40, column: 2)
!4525 = !DILocation(line: 40, column: 18, scope: !4524)
!4526 = !DILocation(line: 40, column: 16, scope: !4524)
!4527 = !DILocation(line: 40, column: 2, scope: !4521)
!4528 = !DILocation(line: 41, column: 11, scope: !4524)
!4529 = !DILocation(line: 41, column: 15, scope: !4524)
!4530 = !DILocation(line: 41, column: 8, scope: !4524)
!4531 = !DILocation(line: 41, column: 3, scope: !4524)
!4532 = !DILocation(line: 40, column: 25, scope: !4524)
!4533 = !DILocation(line: 40, column: 2, scope: !4524)
!4534 = distinct !{!4534, !4527, !4535}
!4535 = !DILocation(line: 41, column: 16, scope: !4521)
!4536 = !DILocation(line: 43, column: 15, scope: !4509)
!4537 = !DILocation(line: 43, column: 13, scope: !4509)
!4538 = !DILocation(line: 43, column: 9, scope: !4509)
!4539 = !DILocation(line: 43, column: 2, scope: !4509)
!4540 = distinct !DISubprogram(name: "hdmi_vendor_any_infoframe_check_only", scope: !1, file: !1, line: 640, type: !4541, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!149, !1623}
!4543 = !DILocalVariable(name: "frame", arg: 1, scope: !4540, file: !1, line: 640, type: !1623)
!4544 = !DILocation(line: 640, column: 77, scope: !4540)
!4545 = !DILocation(line: 642, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 642, column: 6)
!4547 = !DILocation(line: 642, column: 13, scope: !4546)
!4548 = !DILocation(line: 642, column: 17, scope: !4546)
!4549 = !DILocation(line: 642, column: 22, scope: !4546)
!4550 = !DILocation(line: 642, column: 52, scope: !4546)
!4551 = !DILocation(line: 643, column: 6, scope: !4546)
!4552 = !DILocation(line: 643, column: 13, scope: !4546)
!4553 = !DILocation(line: 643, column: 17, scope: !4546)
!4554 = !DILocation(line: 643, column: 25, scope: !4546)
!4555 = !DILocation(line: 642, column: 6, scope: !4540)
!4556 = !DILocation(line: 644, column: 3, scope: !4546)
!4557 = !DILocation(line: 646, column: 2, scope: !4540)
!4558 = !DILocation(line: 647, column: 1, scope: !4540)
!4559 = distinct !DISubprogram(name: "hdmi_infoframe_log_header", scope: !1, file: !1, line: 994, type: !4560, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !592, !1761, !219}
!4562 = !DILocalVariable(name: "level", arg: 1, scope: !4559, file: !1, line: 994, type: !592)
!4563 = !DILocation(line: 994, column: 51, scope: !4559)
!4564 = !DILocalVariable(name: "dev", arg: 2, scope: !4559, file: !1, line: 995, type: !1761)
!4565 = !DILocation(line: 995, column: 26, scope: !4559)
!4566 = !DILocalVariable(name: "frame", arg: 3, scope: !4559, file: !1, line: 996, type: !219)
!4567 = !DILocation(line: 996, column: 44, scope: !4559)
!4568 = !DILocation(line: 998, column: 2, scope: !4559)
!4569 = !DILocation(line: 1001, column: 1, scope: !4559)
!4570 = distinct !DISubprogram(name: "hdmi_colorspace_get_name", scope: !1, file: !1, line: 1003, type: !4571, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!592, !12}
!4573 = !DILocalVariable(name: "colorspace", arg: 1, scope: !4570, file: !1, line: 1003, type: !12)
!4574 = !DILocation(line: 1003, column: 66, scope: !4570)
!4575 = !DILocation(line: 1005, column: 10, scope: !4570)
!4576 = !DILocation(line: 1005, column: 2, scope: !4570)
!4577 = !DILocation(line: 1007, column: 3, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4570, file: !1, line: 1005, column: 22)
!4579 = !DILocation(line: 1009, column: 3, scope: !4578)
!4580 = !DILocation(line: 1011, column: 3, scope: !4578)
!4581 = !DILocation(line: 1013, column: 3, scope: !4578)
!4582 = !DILocation(line: 1015, column: 3, scope: !4578)
!4583 = !DILocation(line: 1017, column: 3, scope: !4578)
!4584 = !DILocation(line: 1019, column: 3, scope: !4578)
!4585 = !DILocation(line: 1021, column: 3, scope: !4578)
!4586 = !DILocation(line: 1023, column: 2, scope: !4570)
!4587 = !DILocation(line: 1024, column: 1, scope: !4570)
!4588 = distinct !DISubprogram(name: "hdmi_scan_mode_get_name", scope: !1, file: !1, line: 1026, type: !4589, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!592, !22}
!4591 = !DILocalVariable(name: "scan_mode", arg: 1, scope: !4588, file: !1, line: 1026, type: !22)
!4592 = !DILocation(line: 1026, column: 64, scope: !4588)
!4593 = !DILocation(line: 1028, column: 10, scope: !4588)
!4594 = !DILocation(line: 1028, column: 2, scope: !4588)
!4595 = !DILocation(line: 1030, column: 3, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4588, file: !1, line: 1028, column: 21)
!4597 = !DILocation(line: 1032, column: 3, scope: !4596)
!4598 = !DILocation(line: 1034, column: 3, scope: !4596)
!4599 = !DILocation(line: 1036, column: 3, scope: !4596)
!4600 = !DILocation(line: 1038, column: 2, scope: !4588)
!4601 = !DILocation(line: 1039, column: 1, scope: !4588)
!4602 = distinct !DISubprogram(name: "hdmi_colorimetry_get_name", scope: !1, file: !1, line: 1041, type: !4603, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!592, !28}
!4605 = !DILocalVariable(name: "colorimetry", arg: 1, scope: !4602, file: !1, line: 1041, type: !28)
!4606 = !DILocation(line: 1041, column: 68, scope: !4602)
!4607 = !DILocation(line: 1043, column: 10, scope: !4602)
!4608 = !DILocation(line: 1043, column: 2, scope: !4602)
!4609 = !DILocation(line: 1045, column: 3, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4602, file: !1, line: 1043, column: 23)
!4611 = !DILocation(line: 1047, column: 3, scope: !4610)
!4612 = !DILocation(line: 1049, column: 3, scope: !4610)
!4613 = !DILocation(line: 1051, column: 3, scope: !4610)
!4614 = !DILocation(line: 1053, column: 2, scope: !4602)
!4615 = !DILocation(line: 1054, column: 1, scope: !4602)
!4616 = distinct !DISubprogram(name: "hdmi_picture_aspect_get_name", scope: !1, file: !1, line: 1057, type: !4617, scopeLine: 1058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!592, !34}
!4619 = !DILocalVariable(name: "picture_aspect", arg: 1, scope: !4616, file: !1, line: 1057, type: !34)
!4620 = !DILocation(line: 1057, column: 55, scope: !4616)
!4621 = !DILocation(line: 1059, column: 10, scope: !4616)
!4622 = !DILocation(line: 1059, column: 2, scope: !4616)
!4623 = !DILocation(line: 1061, column: 3, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4616, file: !1, line: 1059, column: 26)
!4625 = !DILocation(line: 1063, column: 3, scope: !4624)
!4626 = !DILocation(line: 1065, column: 3, scope: !4624)
!4627 = !DILocation(line: 1067, column: 3, scope: !4624)
!4628 = !DILocation(line: 1069, column: 3, scope: !4624)
!4629 = !DILocation(line: 1071, column: 3, scope: !4624)
!4630 = !DILocation(line: 1073, column: 2, scope: !4616)
!4631 = !DILocation(line: 1074, column: 1, scope: !4616)
!4632 = distinct !DISubprogram(name: "hdmi_active_aspect_get_name", scope: !1, file: !1, line: 1077, type: !4633, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!592, !42}
!4635 = !DILocalVariable(name: "active_aspect", arg: 1, scope: !4632, file: !1, line: 1077, type: !42)
!4636 = !DILocation(line: 1077, column: 53, scope: !4632)
!4637 = !DILocation(line: 1079, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 1079, column: 6)
!4639 = !DILocation(line: 1079, column: 20, scope: !4638)
!4640 = !DILocation(line: 1079, column: 24, scope: !4638)
!4641 = !DILocation(line: 1079, column: 27, scope: !4638)
!4642 = !DILocation(line: 1079, column: 41, scope: !4638)
!4643 = !DILocation(line: 1079, column: 6, scope: !4632)
!4644 = !DILocation(line: 1080, column: 3, scope: !4638)
!4645 = !DILocation(line: 1082, column: 10, scope: !4632)
!4646 = !DILocation(line: 1082, column: 2, scope: !4632)
!4647 = !DILocation(line: 1084, column: 3, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 1082, column: 25)
!4649 = !DILocation(line: 1086, column: 3, scope: !4648)
!4650 = !DILocation(line: 1088, column: 3, scope: !4648)
!4651 = !DILocation(line: 1090, column: 3, scope: !4648)
!4652 = !DILocation(line: 1092, column: 3, scope: !4648)
!4653 = !DILocation(line: 1094, column: 3, scope: !4648)
!4654 = !DILocation(line: 1096, column: 3, scope: !4648)
!4655 = !DILocation(line: 1098, column: 3, scope: !4648)
!4656 = !DILocation(line: 1100, column: 3, scope: !4648)
!4657 = !DILocation(line: 1102, column: 3, scope: !4648)
!4658 = !DILocation(line: 1104, column: 2, scope: !4632)
!4659 = !DILocation(line: 1105, column: 1, scope: !4632)
!4660 = distinct !DISubprogram(name: "hdmi_extended_colorimetry_get_name", scope: !1, file: !1, line: 1108, type: !4661, scopeLine: 1109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!592, !54}
!4663 = !DILocalVariable(name: "ext_col", arg: 1, scope: !4660, file: !1, line: 1108, type: !54)
!4664 = !DILocation(line: 1108, column: 67, scope: !4660)
!4665 = !DILocation(line: 1110, column: 10, scope: !4660)
!4666 = !DILocation(line: 1110, column: 2, scope: !4660)
!4667 = !DILocation(line: 1112, column: 3, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4660, file: !1, line: 1110, column: 19)
!4669 = !DILocation(line: 1114, column: 3, scope: !4668)
!4670 = !DILocation(line: 1116, column: 3, scope: !4668)
!4671 = !DILocation(line: 1118, column: 3, scope: !4668)
!4672 = !DILocation(line: 1120, column: 3, scope: !4668)
!4673 = !DILocation(line: 1122, column: 3, scope: !4668)
!4674 = !DILocation(line: 1124, column: 3, scope: !4668)
!4675 = !DILocation(line: 1126, column: 3, scope: !4668)
!4676 = !DILocation(line: 1128, column: 2, scope: !4660)
!4677 = !DILocation(line: 1129, column: 1, scope: !4660)
!4678 = distinct !DISubprogram(name: "hdmi_quantization_range_get_name", scope: !1, file: !1, line: 1132, type: !4679, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!592, !64}
!4681 = !DILocalVariable(name: "qrange", arg: 1, scope: !4678, file: !1, line: 1132, type: !64)
!4682 = !DILocation(line: 1132, column: 63, scope: !4678)
!4683 = !DILocation(line: 1134, column: 10, scope: !4678)
!4684 = !DILocation(line: 1134, column: 2, scope: !4678)
!4685 = !DILocation(line: 1136, column: 3, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4678, file: !1, line: 1134, column: 18)
!4687 = !DILocation(line: 1138, column: 3, scope: !4686)
!4688 = !DILocation(line: 1140, column: 3, scope: !4686)
!4689 = !DILocation(line: 1142, column: 3, scope: !4686)
!4690 = !DILocation(line: 1144, column: 2, scope: !4678)
!4691 = !DILocation(line: 1145, column: 1, scope: !4678)
!4692 = distinct !DISubprogram(name: "hdmi_nups_get_name", scope: !1, file: !1, line: 1147, type: !4693, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!592, !70}
!4695 = !DILocalVariable(name: "nups", arg: 1, scope: !4692, file: !1, line: 1147, type: !70)
!4696 = !DILocation(line: 1147, column: 54, scope: !4692)
!4697 = !DILocation(line: 1149, column: 10, scope: !4692)
!4698 = !DILocation(line: 1149, column: 2, scope: !4692)
!4699 = !DILocation(line: 1151, column: 3, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4692, file: !1, line: 1149, column: 16)
!4701 = !DILocation(line: 1153, column: 3, scope: !4700)
!4702 = !DILocation(line: 1155, column: 3, scope: !4700)
!4703 = !DILocation(line: 1157, column: 3, scope: !4700)
!4704 = !DILocation(line: 1159, column: 2, scope: !4692)
!4705 = !DILocation(line: 1160, column: 1, scope: !4692)
!4706 = distinct !DISubprogram(name: "hdmi_ycc_quantization_range_get_name", scope: !1, file: !1, line: 1163, type: !4707, scopeLine: 1164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!592, !76}
!4709 = !DILocalVariable(name: "qrange", arg: 1, scope: !4706, file: !1, line: 1163, type: !76)
!4710 = !DILocation(line: 1163, column: 71, scope: !4706)
!4711 = !DILocation(line: 1165, column: 10, scope: !4706)
!4712 = !DILocation(line: 1165, column: 2, scope: !4706)
!4713 = !DILocation(line: 1167, column: 3, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4706, file: !1, line: 1165, column: 18)
!4715 = !DILocation(line: 1169, column: 3, scope: !4714)
!4716 = !DILocation(line: 1171, column: 2, scope: !4706)
!4717 = !DILocation(line: 1172, column: 1, scope: !4706)
!4718 = distinct !DISubprogram(name: "hdmi_content_type_get_name", scope: !1, file: !1, line: 1175, type: !4719, scopeLine: 1176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!592, !80}
!4721 = !DILocalVariable(name: "content_type", arg: 1, scope: !4718, file: !1, line: 1175, type: !80)
!4722 = !DILocation(line: 1175, column: 51, scope: !4718)
!4723 = !DILocation(line: 1177, column: 10, scope: !4718)
!4724 = !DILocation(line: 1177, column: 2, scope: !4718)
!4725 = !DILocation(line: 1179, column: 3, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4718, file: !1, line: 1177, column: 24)
!4727 = !DILocation(line: 1181, column: 3, scope: !4726)
!4728 = !DILocation(line: 1183, column: 3, scope: !4726)
!4729 = !DILocation(line: 1185, column: 3, scope: !4726)
!4730 = !DILocation(line: 1187, column: 2, scope: !4718)
!4731 = !DILocation(line: 1188, column: 1, scope: !4718)
!4732 = distinct !DISubprogram(name: "hdmi_infoframe_type_get_name", scope: !1, file: !1, line: 975, type: !4733, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!592, !3}
!4735 = !DILocalVariable(name: "type", arg: 1, scope: !4732, file: !1, line: 975, type: !3)
!4736 = !DILocation(line: 975, column: 74, scope: !4732)
!4737 = !DILocation(line: 977, column: 6, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4732, file: !1, line: 977, column: 6)
!4739 = !DILocation(line: 977, column: 11, scope: !4738)
!4740 = !DILocation(line: 977, column: 18, scope: !4738)
!4741 = !DILocation(line: 977, column: 21, scope: !4738)
!4742 = !DILocation(line: 977, column: 26, scope: !4738)
!4743 = !DILocation(line: 977, column: 6, scope: !4732)
!4744 = !DILocation(line: 978, column: 3, scope: !4738)
!4745 = !DILocation(line: 979, column: 10, scope: !4732)
!4746 = !DILocation(line: 979, column: 2, scope: !4732)
!4747 = !DILocation(line: 981, column: 3, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4732, file: !1, line: 979, column: 16)
!4749 = !DILocation(line: 983, column: 3, scope: !4748)
!4750 = !DILocation(line: 985, column: 3, scope: !4748)
!4751 = !DILocation(line: 987, column: 3, scope: !4748)
!4752 = !DILocation(line: 989, column: 3, scope: !4748)
!4753 = !DILocation(line: 991, column: 2, scope: !4732)
!4754 = !DILocation(line: 992, column: 1, scope: !4732)
!4755 = distinct !DISubprogram(name: "hdmi_spd_sdi_get_name", scope: !1, file: !1, line: 1224, type: !4756, scopeLine: 1225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!592, !86}
!4758 = !DILocalVariable(name: "sdi", arg: 1, scope: !4755, file: !1, line: 1224, type: !86)
!4759 = !DILocation(line: 1224, column: 60, scope: !4755)
!4760 = !DILocation(line: 1226, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4755, file: !1, line: 1226, column: 6)
!4762 = !DILocation(line: 1226, column: 10, scope: !4761)
!4763 = !DILocation(line: 1226, column: 14, scope: !4761)
!4764 = !DILocation(line: 1226, column: 17, scope: !4761)
!4765 = !DILocation(line: 1226, column: 21, scope: !4761)
!4766 = !DILocation(line: 1226, column: 6, scope: !4755)
!4767 = !DILocation(line: 1227, column: 3, scope: !4761)
!4768 = !DILocation(line: 1228, column: 10, scope: !4755)
!4769 = !DILocation(line: 1228, column: 2, scope: !4755)
!4770 = !DILocation(line: 1230, column: 3, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4755, file: !1, line: 1228, column: 15)
!4772 = !DILocation(line: 1232, column: 3, scope: !4771)
!4773 = !DILocation(line: 1234, column: 3, scope: !4771)
!4774 = !DILocation(line: 1236, column: 3, scope: !4771)
!4775 = !DILocation(line: 1238, column: 3, scope: !4771)
!4776 = !DILocation(line: 1240, column: 3, scope: !4771)
!4777 = !DILocation(line: 1242, column: 3, scope: !4771)
!4778 = !DILocation(line: 1244, column: 3, scope: !4771)
!4779 = !DILocation(line: 1246, column: 3, scope: !4771)
!4780 = !DILocation(line: 1248, column: 3, scope: !4771)
!4781 = !DILocation(line: 1250, column: 3, scope: !4771)
!4782 = !DILocation(line: 1252, column: 3, scope: !4771)
!4783 = !DILocation(line: 1254, column: 3, scope: !4771)
!4784 = !DILocation(line: 1256, column: 3, scope: !4771)
!4785 = !DILocation(line: 1258, column: 2, scope: !4755)
!4786 = !DILocation(line: 1259, column: 1, scope: !4755)
!4787 = distinct !DISubprogram(name: "hdmi_audio_coding_type_get_name", scope: !1, file: !1, line: 1281, type: !4788, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!592, !102}
!4790 = !DILocalVariable(name: "coding_type", arg: 1, scope: !4787, file: !1, line: 1281, type: !102)
!4791 = !DILocation(line: 1281, column: 61, scope: !4787)
!4792 = !DILocation(line: 1283, column: 10, scope: !4787)
!4793 = !DILocation(line: 1283, column: 2, scope: !4787)
!4794 = !DILocation(line: 1285, column: 3, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4787, file: !1, line: 1283, column: 23)
!4796 = !DILocation(line: 1287, column: 3, scope: !4795)
!4797 = !DILocation(line: 1289, column: 3, scope: !4795)
!4798 = !DILocation(line: 1291, column: 3, scope: !4795)
!4799 = !DILocation(line: 1293, column: 3, scope: !4795)
!4800 = !DILocation(line: 1295, column: 3, scope: !4795)
!4801 = !DILocation(line: 1297, column: 3, scope: !4795)
!4802 = !DILocation(line: 1299, column: 3, scope: !4795)
!4803 = !DILocation(line: 1301, column: 3, scope: !4795)
!4804 = !DILocation(line: 1303, column: 3, scope: !4795)
!4805 = !DILocation(line: 1305, column: 3, scope: !4795)
!4806 = !DILocation(line: 1307, column: 3, scope: !4795)
!4807 = !DILocation(line: 1309, column: 3, scope: !4795)
!4808 = !DILocation(line: 1311, column: 3, scope: !4795)
!4809 = !DILocation(line: 1313, column: 3, scope: !4795)
!4810 = !DILocation(line: 1315, column: 3, scope: !4795)
!4811 = !DILocation(line: 1317, column: 2, scope: !4787)
!4812 = !DILocation(line: 1318, column: 1, scope: !4787)
!4813 = distinct !DISubprogram(name: "hdmi_audio_sample_size_get_name", scope: !1, file: !1, line: 1321, type: !4814, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!592, !120}
!4816 = !DILocalVariable(name: "sample_size", arg: 1, scope: !4813, file: !1, line: 1321, type: !120)
!4817 = !DILocation(line: 1321, column: 61, scope: !4813)
!4818 = !DILocation(line: 1323, column: 10, scope: !4813)
!4819 = !DILocation(line: 1323, column: 2, scope: !4813)
!4820 = !DILocation(line: 1325, column: 3, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4813, file: !1, line: 1323, column: 23)
!4822 = !DILocation(line: 1327, column: 3, scope: !4821)
!4823 = !DILocation(line: 1329, column: 3, scope: !4821)
!4824 = !DILocation(line: 1331, column: 3, scope: !4821)
!4825 = !DILocation(line: 1333, column: 2, scope: !4813)
!4826 = !DILocation(line: 1334, column: 1, scope: !4813)
!4827 = distinct !DISubprogram(name: "hdmi_audio_sample_frequency_get_name", scope: !1, file: !1, line: 1337, type: !4828, scopeLine: 1338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!592, !126}
!4830 = !DILocalVariable(name: "freq", arg: 1, scope: !4827, file: !1, line: 1337, type: !126)
!4831 = !DILocation(line: 1337, column: 71, scope: !4827)
!4832 = !DILocation(line: 1339, column: 10, scope: !4827)
!4833 = !DILocation(line: 1339, column: 2, scope: !4827)
!4834 = !DILocation(line: 1341, column: 3, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4827, file: !1, line: 1339, column: 16)
!4836 = !DILocation(line: 1343, column: 3, scope: !4835)
!4837 = !DILocation(line: 1345, column: 3, scope: !4835)
!4838 = !DILocation(line: 1347, column: 3, scope: !4835)
!4839 = !DILocation(line: 1349, column: 3, scope: !4835)
!4840 = !DILocation(line: 1351, column: 3, scope: !4835)
!4841 = !DILocation(line: 1353, column: 3, scope: !4835)
!4842 = !DILocation(line: 1355, column: 3, scope: !4835)
!4843 = !DILocation(line: 1357, column: 2, scope: !4827)
!4844 = !DILocation(line: 1358, column: 1, scope: !4827)
!4845 = distinct !DISubprogram(name: "hdmi_audio_coding_type_ext_get_name", scope: !1, file: !1, line: 1361, type: !4846, scopeLine: 1362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!592, !136}
!4848 = !DILocalVariable(name: "ctx", arg: 1, scope: !4845, file: !1, line: 1361, type: !136)
!4849 = !DILocation(line: 1361, column: 69, scope: !4845)
!4850 = !DILocation(line: 1363, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4845, file: !1, line: 1363, column: 6)
!4852 = !DILocation(line: 1363, column: 10, scope: !4851)
!4853 = !DILocation(line: 1363, column: 14, scope: !4851)
!4854 = !DILocation(line: 1363, column: 17, scope: !4851)
!4855 = !DILocation(line: 1363, column: 21, scope: !4851)
!4856 = !DILocation(line: 1363, column: 6, scope: !4845)
!4857 = !DILocation(line: 1364, column: 3, scope: !4851)
!4858 = !DILocation(line: 1366, column: 10, scope: !4845)
!4859 = !DILocation(line: 1366, column: 2, scope: !4845)
!4860 = !DILocation(line: 1368, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4845, file: !1, line: 1366, column: 15)
!4862 = !DILocation(line: 1370, column: 3, scope: !4861)
!4863 = !DILocation(line: 1372, column: 3, scope: !4861)
!4864 = !DILocation(line: 1374, column: 3, scope: !4861)
!4865 = !DILocation(line: 1376, column: 3, scope: !4861)
!4866 = !DILocation(line: 1378, column: 3, scope: !4861)
!4867 = !DILocation(line: 1380, column: 3, scope: !4861)
!4868 = !DILocation(line: 1382, column: 3, scope: !4861)
!4869 = !DILocation(line: 1384, column: 3, scope: !4861)
!4870 = !DILocation(line: 1386, column: 3, scope: !4861)
!4871 = !DILocation(line: 1388, column: 2, scope: !4845)
!4872 = !DILocation(line: 1389, column: 1, scope: !4845)
!4873 = distinct !DISubprogram(name: "hdmi_3d_structure_get_name", scope: !1, file: !1, line: 1447, type: !4874, scopeLine: 1448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !263)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!592, !148}
!4876 = !DILocalVariable(name: "s3d_struct", arg: 1, scope: !4873, file: !1, line: 1447, type: !148)
!4877 = !DILocation(line: 1447, column: 51, scope: !4873)
!4878 = !DILocation(line: 1449, column: 6, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4873, file: !1, line: 1449, column: 6)
!4880 = !DILocation(line: 1449, column: 17, scope: !4879)
!4881 = !DILocation(line: 1449, column: 21, scope: !4879)
!4882 = !DILocation(line: 1449, column: 24, scope: !4879)
!4883 = !DILocation(line: 1449, column: 35, scope: !4879)
!4884 = !DILocation(line: 1449, column: 6, scope: !4873)
!4885 = !DILocation(line: 1450, column: 3, scope: !4879)
!4886 = !DILocation(line: 1452, column: 10, scope: !4873)
!4887 = !DILocation(line: 1452, column: 2, scope: !4873)
!4888 = !DILocation(line: 1454, column: 3, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4873, file: !1, line: 1452, column: 22)
!4890 = !DILocation(line: 1456, column: 3, scope: !4889)
!4891 = !DILocation(line: 1458, column: 3, scope: !4889)
!4892 = !DILocation(line: 1460, column: 3, scope: !4889)
!4893 = !DILocation(line: 1462, column: 3, scope: !4889)
!4894 = !DILocation(line: 1464, column: 3, scope: !4889)
!4895 = !DILocation(line: 1466, column: 3, scope: !4889)
!4896 = !DILocation(line: 1468, column: 3, scope: !4889)
!4897 = !DILocation(line: 1470, column: 3, scope: !4889)
!4898 = !DILocation(line: 1472, column: 2, scope: !4873)
!4899 = !DILocation(line: 1473, column: 1, scope: !4873)
