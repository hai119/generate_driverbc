; ModuleID = '../bcout/drivers/ptp/ptp_kvm.llvm.bc'
source_filename = "drivers/ptp/ptp_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ptp_kvm_init6:\09\09\09"
module asm ".long\09ptp_kvm_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kvm_ptp_clock = type { %struct.ptp_clock*, %struct.ptp_clock_info }
%struct.ptp_clock = type opaque
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)*, i64 (%struct.ptp_clock_info*)* }
%struct.module = type opaque
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.timespec64 = type { i64, i64 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_clock_request = type { i32, %union.anon }
%union.anon = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.0, %struct.ptp_clock_time, i32, i32, %union.anon.1 }
%union.anon.0 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.1 = type { %struct.ptp_clock_time }
%struct.kvm_clock_pairing = type { i64, i64, i64, i32, [9 x i32] }
%struct.pvclock_vsyscall_time_info = type { %struct.pvclock_vcpu_time_info, [32 x i8] }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i64, i32, i8, i8, [2 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.clocksource = type opaque
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.system_time_snapshot = type { i64, i64, i64, i32, i8 }
%struct.system_counterval_t = type { i64, %struct.clocksource* }

@kvm_ptp_clock = internal global %struct.kvm_ptp_clock zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable_ptp_kvm_init162 = internal global i8* bitcast (i32 ()* @ptp_kvm_init to i8*), section ".discard.addressable", align 8, !dbg !72
@__exitcall_ptp_kvm_exit = internal global void ()* @ptp_kvm_exit, section ".exitcall.exit", align 8, !dbg !74
@__UNIQUE_ID_author163 = internal constant [53 x i8] c"ptp_kvm.author=Marcelo Tosatti <mtosatti@redhat.com>\00", section ".modinfo", align 1, !dbg !81
@__UNIQUE_ID_description164 = internal constant [45 x i8] c"ptp_kvm.description=PTP clock using KVMCLOCK\00", section ".modinfo", align 1, !dbg !88
@__UNIQUE_ID_file165 = internal constant [33 x i8] c"ptp_kvm.file=drivers/ptp/ptp_kvm\00", section ".modinfo", align 1, !dbg !93
@__UNIQUE_ID_license166 = internal constant [20 x i8] c"ptp_kvm.license=GPL\00", section ".modinfo", align 1, !dbg !98
@clock_pair = internal global %struct.kvm_clock_pairing zeroinitializer, align 8, !dbg !103
@clock_pair_gpa = internal global i64 0, align 8, !dbg !116
@hv_clock = internal global %struct.pvclock_vsyscall_time_info* null, align 8, !dbg !120
@ptp_kvm_caps = internal constant %struct.ptp_clock_info { %struct.module* null, [16 x i8] c"KVM virtual PTP\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.ptp_pin_desc* null, i32 (%struct.ptp_clock_info*, i64)* null, i32 (%struct.ptp_clock_info*, i32)* @ptp_kvm_adjfreq, i32 (%struct.ptp_clock_info*, i32)* null, i32 (%struct.ptp_clock_info*, i64)* @ptp_kvm_adjtime, i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @ptp_kvm_gettime, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)* null, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)* @ptp_kvm_getcrosststamp, i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @ptp_kvm_settime, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @ptp_kvm_enable, i32 (%struct.ptp_clock_info*, i32, i32, i32)* null, i64 (%struct.ptp_clock_info*)* null }, align 8, !dbg !146
@kvm_ptp_lock = internal global %struct.spinlock undef, align 1, !dbg !271
@ptp_kvm_gettime._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !249
@__func__.ptp_kvm_gettime = private unnamed_addr constant [16 x i8] c"ptp_kvm_gettime\00", align 1
@.str = private unnamed_addr constant [34 x i8] c"\013clock offset hypercall ret %lu\0A\00", align 1
@ptp_kvm_get_time_fn._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !280
@__func__.ptp_kvm_get_time_fn = private unnamed_addr constant [20 x i8] c"ptp_kvm_get_time_fn\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\013clock pairing hypercall ret %lu\0A\00", align 1
@kvm_clock = external dso_local global %struct.clocksource, align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @ptp_kvm_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_ptp_kvm_init162 to i8*), i8* bitcast (void ()** @__exitcall_ptp_kvm_exit to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_author163, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_description164, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_file165, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license166, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ptp_kvm_exit() #0 section ".exit.text" !dbg !304 {
entry:
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** getelementptr inbounds (%struct.kvm_ptp_clock, %struct.kvm_ptp_clock* @kvm_ptp_clock, i32 0, i32 0), align 8, !dbg !305
  %call = call i32 @ptp_clock_unregister(%struct.ptp_clock* %0) #6, !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noredzone
declare dso_local i32 @ptp_clock_unregister(%struct.ptp_clock*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_init() #0 section ".init.text" !dbg !308 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !311, metadata !DIExpression()), !dbg !312
  %call = call zeroext i1 @kvm_para_available() #6, !dbg !313
  br i1 %call, label %if.end, label %if.then, !dbg !315

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !316
  br label %return, !dbg !316

if.end:                                           ; preds = %entry
  %call1 = call i64 @slow_virt_to_phys(i8* bitcast (%struct.kvm_clock_pairing* @clock_pair to i8*)) #6, !dbg !317
  store i64 %call1, i64* @clock_pair_gpa, align 8, !dbg !318
  %call2 = call %struct.pvclock_vsyscall_time_info* @pvclock_get_pvti_cpu0_va() #6, !dbg !319
  store %struct.pvclock_vsyscall_time_info* %call2, %struct.pvclock_vsyscall_time_info** @hv_clock, align 8, !dbg !320
  %0 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** @hv_clock, align 8, !dbg !321
  %tobool = icmp ne %struct.pvclock_vsyscall_time_info* %0, null, !dbg !321
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !323

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.end4:                                          ; preds = %if.end
  %1 = load i64, i64* @clock_pair_gpa, align 8, !dbg !325
  %call5 = call i64 @kvm_hypercall2(i32 9, i64 %1, i64 0) #6, !dbg !326
  store i64 %call5, i64* %ret, align 8, !dbg !327
  %2 = load i64, i64* %ret, align 8, !dbg !328
  %cmp = icmp eq i64 %2, -1000, !dbg !330
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !331

lor.lhs.false:                                    ; preds = %if.end4
  %3 = load i64, i64* %ret, align 8, !dbg !332
  %cmp6 = icmp eq i64 %3, -95, !dbg !333
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !334

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  store i32 -19, i32* %retval, align 4, !dbg !335
  br label %return, !dbg !335

if.end8:                                          ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ptp_clock_info* getelementptr inbounds (%struct.kvm_ptp_clock, %struct.kvm_ptp_clock* @kvm_ptp_clock, i32 0, i32 1) to i8*), i8* align 8 bitcast (%struct.ptp_clock_info* @ptp_kvm_caps to i8*), i64 144, i1 false), !dbg !336
  %call9 = call %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* getelementptr inbounds (%struct.kvm_ptp_clock, %struct.kvm_ptp_clock* @kvm_ptp_clock, i32 0, i32 1), %struct.device* null) #6, !dbg !337
  store %struct.ptp_clock* %call9, %struct.ptp_clock** getelementptr inbounds (%struct.kvm_ptp_clock, %struct.kvm_ptp_clock* @kvm_ptp_clock, i32 0, i32 0), align 8, !dbg !338
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** getelementptr inbounds (%struct.kvm_ptp_clock, %struct.kvm_ptp_clock* @kvm_ptp_clock, i32 0, i32 0), align 8, !dbg !339
  %5 = bitcast %struct.ptp_clock* %4 to i8*, !dbg !340
  %call10 = call i32 @PTR_ERR_OR_ZERO(i8* %5) #6, !dbg !341
  store i32 %call10, i32* %retval, align 4, !dbg !342
  br label %return, !dbg !342

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !343
  ret i32 %6, !dbg !343
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @kvm_para_available() #1

; Function Attrs: noredzone
declare dso_local i64 @slow_virt_to_phys(i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.pvclock_vsyscall_time_info* @pvclock_get_pvti_cpu0_va() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @kvm_hypercall2(i32 %nr, i64 %p1, i64 %p2) #3 !dbg !344 {
entry:
  %nr.addr = alloca i32, align 4
  %p1.addr = alloca i64, align 8
  %p2.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !348, metadata !DIExpression()), !dbg !349
  store i64 %p1, i64* %p1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p1.addr, metadata !350, metadata !DIExpression()), !dbg !351
  store i64 %p2, i64* %p2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p2.addr, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i32, i32* %nr.addr, align 4, !dbg !356
  %1 = load i64, i64* %p1.addr, align 8, !dbg !357
  %2 = load i64, i64* %p2.addr, align 8, !dbg !358
  %3 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09vmcall\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 8*32+15)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09vmmcall\0A6651:\0A.popsection\0A", "={ax},{ax},{bx},{cx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i64 %1, i64 %2) #7, !dbg !359, !srcloc !360
  store i64 %3, i64* %ret, align 8, !dbg !359
  %4 = load i64, i64* %ret, align 8, !dbg !361
  ret i64 %4, !dbg !362
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info*, %struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #3 !dbg !363 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !371
  %call = call zeroext i1 @IS_ERR(i8* %0) #6, !dbg !373
  br i1 %call, label %if.then, label %if.else, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !375
  %call1 = call i64 @PTR_ERR(i8* %1) #6, !dbg !376
  %conv = trunc i64 %call1 to i32, !dbg !376
  store i32 %conv, i32* %retval, align 4, !dbg !377
  br label %return, !dbg !377

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !378
  br label %return, !dbg !378

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !379
  ret i32 %2, !dbg !379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_adjfreq(%struct.ptp_clock_info* %ptp, i32 %ppb) #3 !dbg !380 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ppb.addr = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 %ppb, i32* %ppb.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ppb.addr, metadata !383, metadata !DIExpression()), !dbg !384
  ret i32 -95, !dbg !385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_adjtime(%struct.ptp_clock_info* %ptp, i64 %delta) #3 !dbg !386 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %delta.addr = alloca i64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !389, metadata !DIExpression()), !dbg !390
  ret i32 -95, !dbg !391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_gettime(%struct.ptp_clock_info* %ptp, %struct.timespec64* %ts) #3 !dbg !251 {
entry:
  %lock.addr.i7 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i7, metadata !392, metadata !DIExpression()), !dbg !398
  %lock.addr.i5 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i5, metadata !392, metadata !DIExpression()), !dbg !400
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !404, metadata !DIExpression()), !dbg !406
  %retval = alloca i32, align 4
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  %ret = alloca i64, align 8
  %tspec = alloca %struct.timespec64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !408, metadata !DIExpression()), !dbg !409
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata %struct.timespec64* %tspec, metadata !414, metadata !DIExpression()), !dbg !415
  store %struct.spinlock* @kvm_ptp_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !416, !srcloc !418
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !419
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !419
  %rlock.i = bitcast %union.anon.2* %1 to %struct.raw_spinlock*, !dbg !419
  %2 = load i64, i64* @clock_pair_gpa, align 8, !dbg !421
  %call = call i64 @kvm_hypercall2(i32 9, i64 %2, i64 0) #6, !dbg !422
  store i64 %call, i64* %ret, align 8, !dbg !423
  %3 = load i64, i64* %ret, align 8, !dbg !424
  %cmp = icmp ne i64 %3, 0, !dbg !425
  br i1 %cmp, label %if.then, label %if.end4, !dbg !426

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(%struct.ratelimit_state* @ptp_kvm_gettime._rs, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ptp_kvm_gettime, i64 0, i64 0)) #6, !dbg !427
  %tobool = icmp ne i32 %call1, 0, !dbg !427
  br i1 %tobool, label %if.then2, label %if.end, !dbg !430

if.then2:                                         ; preds = %if.then
  %4 = load i64, i64* %ret, align 8, !dbg !427
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %4) #8, !dbg !427
  br label %if.end, !dbg !427

if.end:                                           ; preds = %if.then2, %if.then
  store %struct.spinlock* @kvm_ptp_lock, %struct.spinlock** %lock.addr.i5, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !431, !srcloc !433
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i5, align 8, !dbg !434
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !434
  %rlock.i6 = bitcast %union.anon.2* %6 to %struct.raw_spinlock*, !dbg !434
  store i32 -95, i32* %retval, align 4, !dbg !436
  br label %return, !dbg !436

if.end4:                                          ; preds = %entry
  %7 = load i64, i64* getelementptr inbounds (%struct.kvm_clock_pairing, %struct.kvm_clock_pairing* @clock_pair, i32 0, i32 0), align 8, !dbg !437
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tspec, i32 0, i32 0, !dbg !438
  store i64 %7, i64* %tv_sec, align 8, !dbg !439
  %8 = load i64, i64* getelementptr inbounds (%struct.kvm_clock_pairing, %struct.kvm_clock_pairing* @clock_pair, i32 0, i32 1), align 8, !dbg !440
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tspec, i32 0, i32 1, !dbg !441
  store i64 %8, i64* %tv_nsec, align 8, !dbg !442
  store %struct.spinlock* @kvm_ptp_lock, %struct.spinlock** %lock.addr.i7, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !443, !srcloc !433
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i7, align 8, !dbg !444
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !444
  %rlock.i8 = bitcast %union.anon.2* %10 to %struct.raw_spinlock*, !dbg !444
  %11 = load %struct.timespec64*, %struct.timespec64** %ts.addr, align 8, !dbg !445
  %12 = bitcast %struct.timespec64* %11 to i8*, !dbg !446
  %13 = bitcast %struct.timespec64* %tspec to i8*, !dbg !446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false), !dbg !446
  store i32 0, i32* %retval, align 4, !dbg !447
  br label %return, !dbg !447

return:                                           ; preds = %if.end4, %if.end
  %14 = load i32, i32* %retval, align 4, !dbg !448
  ret i32 %14, !dbg !448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_getcrosststamp(%struct.ptp_clock_info* %ptp, %struct.system_device_crosststamp* %xtstamp) #3 !dbg !449 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %xtstamp.addr = alloca %struct.system_device_crosststamp*, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store %struct.system_device_crosststamp* %xtstamp, %struct.system_device_crosststamp** %xtstamp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.system_device_crosststamp** %xtstamp.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %xtstamp.addr, align 8, !dbg !454
  %call = call i32 @get_device_system_crosststamp(i32 (i64*, %struct.system_counterval_t*, i8*)* @ptp_kvm_get_time_fn, i8* null, %struct.system_time_snapshot* null, %struct.system_device_crosststamp* %0) #6, !dbg !455
  ret i32 %call, !dbg !456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_settime(%struct.ptp_clock_info* %ptp, %struct.timespec64* %ts) #3 !dbg !457 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec64*, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store %struct.timespec64* %ts, %struct.timespec64** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64** %ts.addr, metadata !460, metadata !DIExpression()), !dbg !461
  ret i32 -95, !dbg !462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_enable(%struct.ptp_clock_info* %ptp, %struct.ptp_clock_request* %rq, i32 %on) #3 !dbg !463 {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %rq.addr = alloca %struct.ptp_clock_request*, align 8
  %on.addr = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ptp.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store %struct.ptp_clock_request* %rq, %struct.ptp_clock_request** %rq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_request** %rq.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i32 %on, i32* %on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on.addr, metadata !468, metadata !DIExpression()), !dbg !469
  ret i32 -95, !dbg !470
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local i32 @get_device_system_crosststamp(i32 (i64*, %struct.system_counterval_t*, i8*)*, i8*, %struct.system_time_snapshot*, %struct.system_device_crosststamp*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_kvm_get_time_fn(i64* %device_time, %struct.system_counterval_t* %system_counter, i8* %ctx) #3 !dbg !282 {
entry:
  %lock.addr.i15 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i15, metadata !392, metadata !DIExpression()), !dbg !471
  %src.addr.i12 = alloca %struct.pvclock_vcpu_time_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.pvclock_vcpu_time_info** %src.addr.i12, metadata !473, metadata !DIExpression()), !dbg !481
  %version.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %version.addr.i, metadata !483, metadata !DIExpression()), !dbg !484
  %src.addr.i11 = alloca %struct.pvclock_vcpu_time_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.pvclock_vcpu_time_info** %src.addr.i11, metadata !485, metadata !DIExpression()), !dbg !489
  %tsc.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tsc.addr.i, metadata !492, metadata !DIExpression()), !dbg !493
  %delta.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.i, metadata !494, metadata !DIExpression()), !dbg !495
  %offset.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.i, metadata !496, metadata !DIExpression()), !dbg !497
  %lock.addr.i9 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i9, metadata !392, metadata !DIExpression()), !dbg !498
  %src.addr.i = alloca %struct.pvclock_vcpu_time_info*, align 8
  call void @llvm.dbg.declare(metadata %struct.pvclock_vcpu_time_info** %src.addr.i, metadata !502, metadata !DIExpression()), !dbg !506
  %version.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %version.i, metadata !508, metadata !DIExpression()), !dbg !509
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !404, metadata !DIExpression()), !dbg !510
  %retval = alloca i32, align 4
  %device_time.addr = alloca i64*, align 8
  %system_counter.addr = alloca %struct.system_counterval_t*, align 8
  %ctx.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  %tspec = alloca %struct.timespec64, align 8
  %version = alloca i32, align 4
  %cpu = alloca i32, align 4
  %src = alloca %struct.pvclock_vcpu_time_info*, align 8
  store i64* %device_time, i64** %device_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %device_time.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store %struct.system_counterval_t* %system_counter, %struct.system_counterval_t** %system_counter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.system_counterval_t** %system_counter.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata %struct.timespec64* %tspec, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i32* %version, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata %struct.pvclock_vcpu_time_info** %src, metadata !526, metadata !DIExpression()), !dbg !528
  store %struct.spinlock* @kvm_ptp_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !529, !srcloc !418
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !530
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !530
  %rlock.i = bitcast %union.anon.2* %1 to %struct.raw_spinlock*, !dbg !530
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !531, !srcloc !532
  store i32 0, i32* %cpu, align 4, !dbg !533
  %2 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** @hv_clock, align 8, !dbg !534
  %3 = load i32, i32* %cpu, align 4, !dbg !535
  %idxprom = sext i32 %3 to i64, !dbg !534
  %arrayidx = getelementptr %struct.pvclock_vsyscall_time_info, %struct.pvclock_vsyscall_time_info* %2, i64 %idxprom, !dbg !534
  %pvti = getelementptr inbounds %struct.pvclock_vsyscall_time_info, %struct.pvclock_vsyscall_time_info* %arrayidx, i32 0, i32 0, !dbg !536
  store %struct.pvclock_vcpu_time_info* %pvti, %struct.pvclock_vcpu_time_info** %src, align 8, !dbg !537
  br label %do.body, !dbg !538

do.body:                                          ; preds = %do.cond, %entry
  %4 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src, align 8, !dbg !539
  store %struct.pvclock_vcpu_time_info* %4, %struct.pvclock_vcpu_time_info** %src.addr.i, align 8
  %5 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src.addr.i, align 8, !dbg !540
  %version1.i = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %5, i32 0, i32 0, !dbg !541
  %6 = load i32, i32* %version1.i, align 1, !dbg !541
  %and.i = and i32 %6, -2, !dbg !542
  store i32 %and.i, i32* %version.i, align 4, !dbg !509
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !543, !srcloc !544
  %7 = load i32, i32* %version.i, align 4, !dbg !545
  store i32 %7, i32* %version, align 4, !dbg !546
  %8 = load i64, i64* @clock_pair_gpa, align 8, !dbg !547
  %call1 = call i64 @kvm_hypercall2(i32 9, i64 %8, i64 0) #6, !dbg !548
  store i64 %call1, i64* %ret, align 8, !dbg !549
  %9 = load i64, i64* %ret, align 8, !dbg !550
  %cmp = icmp ne i64 %9, 0, !dbg !551
  br i1 %cmp, label %if.then, label %if.end5, !dbg !552

if.then:                                          ; preds = %do.body
  %call2 = call i32 @___ratelimit(%struct.ratelimit_state* @ptp_kvm_get_time_fn._rs, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ptp_kvm_get_time_fn, i64 0, i64 0)) #6, !dbg !553
  %tobool = icmp ne i32 %call2, 0, !dbg !553
  br i1 %tobool, label %if.then3, label %if.end, !dbg !556

if.then3:                                         ; preds = %if.then
  %10 = load i64, i64* %ret, align 8, !dbg !553
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %10) #8, !dbg !553
  br label %if.end, !dbg !553

if.end:                                           ; preds = %if.then3, %if.then
  store %struct.spinlock* @kvm_ptp_lock, %struct.spinlock** %lock.addr.i9, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !557, !srcloc !433
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i9, align 8, !dbg !558
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !558
  %rlock.i10 = bitcast %union.anon.2* %12 to %struct.raw_spinlock*, !dbg !558
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !559, !srcloc !560
  store i32 -95, i32* %retval, align 4, !dbg !561
  br label %return, !dbg !561

if.end5:                                          ; preds = %do.body
  %13 = load i64, i64* getelementptr inbounds (%struct.kvm_clock_pairing, %struct.kvm_clock_pairing* @clock_pair, i32 0, i32 0), align 8, !dbg !562
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tspec, i32 0, i32 0, !dbg !563
  store i64 %13, i64* %tv_sec, align 8, !dbg !564
  %14 = load i64, i64* getelementptr inbounds (%struct.kvm_clock_pairing, %struct.kvm_clock_pairing* @clock_pair, i32 0, i32 1), align 8, !dbg !565
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tspec, i32 0, i32 1, !dbg !566
  store i64 %14, i64* %tv_nsec, align 8, !dbg !567
  %15 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src, align 8, !dbg !568
  %16 = load i64, i64* getelementptr inbounds (%struct.kvm_clock_pairing, %struct.kvm_clock_pairing* @clock_pair, i32 0, i32 2), align 8, !dbg !569
  store %struct.pvclock_vcpu_time_info* %15, %struct.pvclock_vcpu_time_info** %src.addr.i11, align 8
  store i64 %16, i64* %tsc.addr.i, align 8
  %17 = load i64, i64* %tsc.addr.i, align 8, !dbg !570
  %18 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src.addr.i11, align 8, !dbg !571
  %tsc_timestamp.i = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %18, i32 0, i32 2, !dbg !572
  %19 = load i64, i64* %tsc_timestamp.i, align 1, !dbg !572
  %sub.i = sub i64 %17, %19, !dbg !573
  store i64 %sub.i, i64* %delta.i, align 8, !dbg !495
  %20 = load i64, i64* %delta.i, align 8, !dbg !574
  %21 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src.addr.i11, align 8, !dbg !575
  %tsc_to_system_mul.i = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %21, i32 0, i32 4, !dbg !576
  %22 = load i32, i32* %tsc_to_system_mul.i, align 1, !dbg !576
  %23 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src.addr.i11, align 8, !dbg !577
  %tsc_shift.i = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %23, i32 0, i32 5, !dbg !578
  %24 = load i8, i8* %tsc_shift.i, align 1, !dbg !578
  %conv.i = sext i8 %24 to i32, !dbg !577
  %call.i = call i64 @pvclock_scale_delta(i64 %20, i32 %22, i32 %conv.i) #9, !dbg !579
  store i64 %call.i, i64* %offset.i, align 8, !dbg !497
  %25 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src.addr.i11, align 8, !dbg !580
  %system_time.i = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %25, i32 0, i32 3, !dbg !581
  %26 = load i64, i64* %system_time.i, align 1, !dbg !581
  %27 = load i64, i64* %offset.i, align 8, !dbg !582
  %add.i = add i64 %26, %27, !dbg !583
  store i64 %add.i, i64* %ret, align 8, !dbg !584
  br label %do.cond, !dbg !585

do.cond:                                          ; preds = %if.end5
  %28 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src, align 8, !dbg !586
  %29 = load i32, i32* %version, align 4, !dbg !587
  store %struct.pvclock_vcpu_time_info* %28, %struct.pvclock_vcpu_time_info** %src.addr.i12, align 8
  store i32 %29, i32* %version.addr.i, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !588, !srcloc !589
  %30 = load i32, i32* %version.addr.i, align 4, !dbg !590
  %31 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %src.addr.i12, align 8, !dbg !590
  %version1.i13 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %31, i32 0, i32 0, !dbg !590
  %32 = load i32, i32* %version1.i13, align 1, !dbg !590
  %cmp.i = icmp ne i32 %30, %32, !dbg !590
  %lnot.i = xor i1 %cmp.i, true, !dbg !590
  %lnot.ext.i = zext i1 %cmp.i to i32, !dbg !590
  %conv.i14 = sext i32 %lnot.ext.i to i64, !dbg !590
  br i1 %cmp.i, label %do.body, label %do.end, !dbg !585, !llvm.loop !591

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !593, !srcloc !594
  %33 = load i64, i64* %ret, align 8, !dbg !595
  %34 = load %struct.system_counterval_t*, %struct.system_counterval_t** %system_counter.addr, align 8, !dbg !596
  %cycles = getelementptr inbounds %struct.system_counterval_t, %struct.system_counterval_t* %34, i32 0, i32 0, !dbg !597
  store i64 %33, i64* %cycles, align 8, !dbg !598
  %35 = load %struct.system_counterval_t*, %struct.system_counterval_t** %system_counter.addr, align 8, !dbg !599
  %cs = getelementptr inbounds %struct.system_counterval_t, %struct.system_counterval_t* %35, i32 0, i32 1, !dbg !600
  store %struct.clocksource* @kvm_clock, %struct.clocksource** %cs, align 8, !dbg !601
  %36 = bitcast %struct.timespec64* %tspec to { i64, i64 }*, !dbg !602
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0, !dbg !602
  %38 = load i64, i64* %37, align 8, !dbg !602
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1, !dbg !602
  %40 = load i64, i64* %39, align 8, !dbg !602
  %call8 = call i64 @timespec64_to_ktime(i64 %38, i64 %40) #6, !dbg !602
  %41 = load i64*, i64** %device_time.addr, align 8, !dbg !603
  store i64 %call8, i64* %41, align 8, !dbg !604
  store %struct.spinlock* @kvm_ptp_lock, %struct.spinlock** %lock.addr.i15, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !605, !srcloc !433
  %42 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i15, align 8, !dbg !606
  %43 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %42, i32 0, i32 0, !dbg !606
  %rlock.i16 = bitcast %union.anon.2* %43 to %struct.raw_spinlock*, !dbg !606
  store i32 0, i32* %retval, align 4, !dbg !607
  br label %return, !dbg !607

return:                                           ; preds = %do.end, %if.end
  %44 = load i32, i32* %retval, align 4, !dbg !608
  ret i32 %44, !dbg !608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @timespec64_to_ktime(i64 %ts.coerce0, i64 %ts.coerce1) #3 !dbg !609 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %ts.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %ts.coerce1, i64* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec64* %ts, metadata !612, metadata !DIExpression()), !dbg !613
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !614
  %3 = load i64, i64* %tv_sec, align 8, !dbg !614
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !615
  %4 = load i64, i64* %tv_nsec, align 8, !dbg !615
  %call = call i64 @ktime_set(i64 %3, i64 %4) #6, !dbg !616
  ret i64 %call, !dbg !617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pvclock_scale_delta(i64 %delta, i32 %mul_frac, i32 %shift) #3 !dbg !618 {
entry:
  %delta.addr = alloca i64, align 8
  %mul_frac.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %product = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !621, metadata !DIExpression()), !dbg !622
  store i32 %mul_frac, i32* %mul_frac.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mul_frac.addr, metadata !623, metadata !DIExpression()), !dbg !624
  store i32 %shift, i32* %shift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i64* %product, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !629, metadata !DIExpression()), !dbg !631
  %0 = load i32, i32* %shift.addr, align 4, !dbg !632
  %cmp = icmp slt i32 %0, 0, !dbg !634
  br i1 %cmp, label %if.then, label %if.else, !dbg !635

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %shift.addr, align 4, !dbg !636
  %sub = sub i32 0, %1, !dbg !637
  %2 = load i64, i64* %delta.addr, align 8, !dbg !638
  %sh_prom = zext i32 %sub to i64, !dbg !638
  %shr = lshr i64 %2, %sh_prom, !dbg !638
  store i64 %shr, i64* %delta.addr, align 8, !dbg !638
  br label %if.end, !dbg !639

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %shift.addr, align 4, !dbg !640
  %4 = load i64, i64* %delta.addr, align 8, !dbg !641
  %sh_prom1 = zext i32 %3 to i64, !dbg !641
  %shl = shl i64 %4, %sh_prom1, !dbg !641
  store i64 %shl, i64* %delta.addr, align 8, !dbg !641
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %delta.addr, align 8, !dbg !642
  %6 = load i32, i32* %mul_frac.addr, align 4, !dbg !643
  %conv = zext i32 %6 to i64, !dbg !644
  %7 = call { i64, i64 } asm "mulq $3 ; shrd $$32, $1, $0", "={ax},={dx},0,rm,~{dirflag},~{fpsr},~{flags}"(i64 %5, i64 %conv) #10, !dbg !645, !srcloc !646
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !645
  %asmresult2 = extractvalue { i64, i64 } %7, 1, !dbg !645
  store i64 %asmresult, i64* %product, align 8, !dbg !645
  store i64 %asmresult2, i64* %tmp, align 8, !dbg !645
  %8 = load i64, i64* %product, align 8, !dbg !647
  ret i64 %8, !dbg !648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_set(i64 %secs, i64 %nsecs) #3 !dbg !649 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, i64* %secs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %secs.addr, metadata !654, metadata !DIExpression()), !dbg !655
  store i64 %nsecs, i64* %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nsecs.addr, metadata !656, metadata !DIExpression()), !dbg !657
  %0 = load i64, i64* %secs.addr, align 8, !dbg !658
  %cmp = icmp sge i64 %0, 9223372036, !dbg !658
  %lnot = xor i1 %cmp, true, !dbg !658
  %lnot1 = xor i1 %lnot, true, !dbg !658
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !658
  %conv = sext i32 %lnot.ext to i64, !dbg !658
  %tobool = icmp ne i64 %conv, 0, !dbg !658
  br i1 %tobool, label %if.then, label %if.end, !dbg !660

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !661
  br label %return, !dbg !661

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %secs.addr, align 8, !dbg !662
  %mul = mul i64 %1, 1000000000, !dbg !663
  %2 = load i64, i64* %nsecs.addr, align 8, !dbg !664
  %add = add i64 %mul, %2, !dbg !665
  store i64 %add, i64* %retval, align 8, !dbg !666
  br label %return, !dbg !666

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !667
  ret i64 %3, !dbg !667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #3 !dbg !668 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !671, metadata !DIExpression()), !dbg !672
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !673
  %1 = ptrtoint i8* %0 to i64, !dbg !673
  %2 = inttoptr i64 %1 to i8*, !dbg !673
  %3 = ptrtoint i8* %2 to i64, !dbg !673
  %cmp = icmp uge i64 %3, -4095, !dbg !673
  %lnot = xor i1 %cmp, true, !dbg !673
  %lnot1 = xor i1 %lnot, true, !dbg !673
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !673
  %conv = sext i32 %lnot.ext to i64, !dbg !673
  %tobool = icmp ne i64 %conv, 0, !dbg !673
  ret i1 %tobool, !dbg !674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #3 !dbg !675 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !680
  %1 = ptrtoint i8* %0 to i64, !dbg !681
  ret i64 %1, !dbg !682
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "kvm_ptp_clock", scope: !2, file: !3, line: 160, type: !293, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !71, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/ptp/ptp_kvm.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !56}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 17, baseType: !18, size: 32, elements: !52)
!6 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !6, line: 16, size: 512, elements: !8)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 21, baseType: !5, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, scope: !7, file: !6, line: 22, baseType: !11, size: 448, offset: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !6, line: 22, size: 448, elements: !12)
!12 = !{!13, !24}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !11, file: !6, line: 23, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !15, line: 101, size: 128, elements: !16)
!15 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !19, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !14, file: !15, line: 102, baseType: !18, size: 32)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 103, baseType: !18, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !14, file: !15, line: 104, baseType: !21, size: 64, offset: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 2)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !11, file: !6, line: 24, baseType: !25, size: 448)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !15, line: 107, size: 448, elements: !26)
!26 = !{!27, !41, !42, !43, !44}
!27 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !15, line: 108, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !15, line: 108, size: 128, elements: !29)
!29 = !{!30, !40}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !28, file: !15, line: 113, baseType: !31, size: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !15, line: 81, size: 128, elements: !32)
!32 = !{!33, !37, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !31, file: !15, line: 82, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !35, line: 30, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !31, file: !15, line: 83, baseType: !38, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !18)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !31, file: !15, line: 84, baseType: !38, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !28, file: !15, line: 120, baseType: !31, size: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !25, file: !15, line: 122, baseType: !31, size: 128, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !25, file: !15, line: 123, baseType: !18, size: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !15, line: 124, baseType: !18, size: 32, offset: 288)
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !15, line: 125, baseType: !45, size: 128, offset: 320)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !15, line: 125, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !45, file: !15, line: 131, baseType: !31, size: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !45, file: !15, line: 133, baseType: !49, size: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !15, line: 167, baseType: !18, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "PTP_PF_NONE", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3, isUnsigned: true)
!62 = !{!63, !64, !68, !69, !70}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !65, line: 23, baseType: !66)
!65 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !67)
!67 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !65, line: 22, baseType: !34)
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !{!72, !74, !81, !88, !93, !98, !0, !103, !116, !120, !146, !249, !271, !280}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptp_kvm_init162", scope: !2, file: !3, line: 192, type: !63, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "__exitcall_ptp_kvm_exit", scope: !2, file: !3, line: 193, type: !76, isLocal: true, isDefinition: true)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !77, line: 117, baseType: !78)
!77 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author163", scope: !2, file: !3, line: 195, type: !83, isLocal: true, isDefinition: true, align: 8)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 424, elements: !86)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!86 = !{!87}
!87 = !DISubrange(count: 53)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description164", scope: !2, file: !3, line: 196, type: !90, isLocal: true, isDefinition: true, align: 8)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 360, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 45)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file165", scope: !2, file: !3, line: 197, type: !95, isLocal: true, isDefinition: true, align: 8)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 264, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 33)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license166", scope: !2, file: !3, line: 197, type: !100, isLocal: true, isDefinition: true, align: 8)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 160, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 20)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "clock_pair", scope: !2, file: !3, line: 29, type: !105, isLocal: true, isDefinition: true)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvm_clock_pairing", file: !106, line: 71, size: 512, elements: !107)
!106 = !DIFile(filename: "./arch/x86/include/uapi/asm/kvm_para.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !105, file: !106, line: 72, baseType: !34, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !105, file: !106, line: 73, baseType: !34, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !105, file: !106, line: 74, baseType: !66, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !106, line: 75, baseType: !38, size: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !105, file: !106, line: 76, baseType: !113, size: 288, offset: 224)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 288, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 9)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "clock_pair_gpa", scope: !2, file: !3, line: 30, type: !118, isLocal: true, isDefinition: true)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !119, line: 153, baseType: !64)
!119 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "hv_clock", scope: !2, file: !3, line: 27, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vsyscall_time_info", file: !124, line: 90, size: 512, align: 512, elements: !125)
!124 = !DIFile(filename: "./arch/x86/include/asm/pvclock.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pvti", scope: !123, file: !124, line: 91, baseType: !127, size: 256)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !128, line: 26, size: 256, elements: !129)
!128 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !132, !133, !134, !135, !136, !140, !144}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !127, file: !128, line: 27, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !65, line: 21, baseType: !38)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !127, file: !128, line: 28, baseType: !131, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !127, file: !128, line: 29, baseType: !64, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !127, file: !128, line: 30, baseType: !64, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !127, file: !128, line: 31, baseType: !131, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !127, file: !128, line: 32, baseType: !137, size: 8, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !65, line: 16, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !35, line: 20, baseType: !139)
!139 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !128, line: 33, baseType: !141, size: 8, offset: 232)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !65, line: 17, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !143)
!143 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !127, file: !128, line: 34, baseType: !145, size: 16, offset: 240)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 16, elements: !22)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "ptp_kvm_caps", scope: !2, file: !3, line: 143, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !6, line: 122, size: 1152, elements: !150)
!150 = !{!151, !155, !159, !163, !164, !165, !166, !167, !168, !183, !188, !192, !193, !197, !208, !217, !230, !236, !241, !245}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !149, file: !6, line: 123, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !154, line: 76, flags: DIFlagFwdDecl)
!154 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !6, line: 124, baseType: !156, size: 128, offset: 64)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !149, file: !6, line: 125, baseType: !160, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !65, line: 20, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !35, line: 26, baseType: !162)
!162 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !149, file: !6, line: 126, baseType: !162, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !149, file: !6, line: 127, baseType: !162, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !149, file: !6, line: 128, baseType: !162, size: 32, offset: 288)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !149, file: !6, line: 129, baseType: !162, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !149, file: !6, line: 130, baseType: !162, size: 32, offset: 352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !149, file: !6, line: 131, baseType: !169, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !15, line: 174, size: 768, elements: !171)
!171 = !{!172, !176, !177, !178, !179}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !15, line: 180, baseType: !173, size: 512)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 512, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !170, file: !15, line: 184, baseType: !18, size: 32, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !170, file: !15, line: 188, baseType: !18, size: 32, offset: 544)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !170, file: !15, line: 194, baseType: !18, size: 32, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !170, file: !15, line: 198, baseType: !180, size: 160, offset: 608)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 5)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !149, file: !6, line: 132, baseType: !184, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!162, !187, !70}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "adjfreq", scope: !149, file: !6, line: 133, baseType: !189, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!162, !187, !160}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !149, file: !6, line: 134, baseType: !189, size: 64, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !149, file: !6, line: 135, baseType: !194, size: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!162, !187, !68}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !149, file: !6, line: 136, baseType: !198, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!162, !187, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !203, line: 13, size: 128, elements: !204)
!203 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !202, file: !203, line: 14, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !203, line: 8, baseType: !34)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !202, file: !203, line: 15, baseType: !70, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !149, file: !6, line: 137, baseType: !209, size: 64, offset: 768)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!162, !187, !201, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !6, line: 33, size: 256, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !213, file: !6, line: 34, baseType: !202, size: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !213, file: !6, line: 35, baseType: !202, size: 128, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !149, file: !6, line: 139, baseType: !218, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!162, !187, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !223, line: 261, size: 192, elements: !224)
!223 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !222, file: !223, line: 262, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !227, line: 29, baseType: !68)
!227 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !222, file: !223, line: 263, baseType: !226, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !222, file: !223, line: 264, baseType: !226, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !149, file: !6, line: 141, baseType: !231, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!162, !187, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !149, file: !6, line: 142, baseType: !237, size: 64, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!162, !187, !240, !162}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !149, file: !6, line: 144, baseType: !242, size: 64, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!162, !187, !18, !56, !18}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !149, file: !6, line: 146, baseType: !246, size: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!70, !187}
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "_rs", scope: !251, file: !3, line: 123, type: !253, isLocal: true, isDefinition: true)
!251 = distinct !DISubprogram(name: "ptp_kvm_gettime", scope: !3, file: !3, line: 112, type: !199, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!252 = !{}
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !254, line: 15, size: 256, elements: !255)
!254 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256, !265, !266, !267, !268, !269, !270}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !253, file: !254, line: 16, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !258, line: 29, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !258, line: 20, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !259, file: !258, line: 21, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !263, line: 25, baseType: !264)
!263 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 25, elements: !252)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !253, file: !254, line: 18, baseType: !162, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !253, file: !254, line: 19, baseType: !162, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !253, file: !254, line: 20, baseType: !162, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !253, file: !254, line: 21, baseType: !162, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !253, file: !254, line: 22, baseType: !69, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !254, line: 23, baseType: !69, size: 64, offset: 192)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "kvm_ptp_lock", scope: !2, file: !3, line: 25, type: !273, isLocal: true, isDefinition: true)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !258, line: 83, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !258, line: 71, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !258, line: 72, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !258, line: 72, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !277, file: !258, line: 73, baseType: !259)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "_rs", scope: !282, file: !3, line: 62, type: !253, isLocal: true, isDefinition: true)
!282 = distinct !DISubprogram(name: "ptp_kvm_get_time_fn", scope: !3, file: !3, line: 32, type: !283, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!283 = !DISubroutineType(types: !284)
!284 = !{!162, !285, !286, !63}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_counterval_t", file: !223, line: 274, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !287, file: !223, line: 275, baseType: !64, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !287, file: !223, line: 276, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !223, line: 276, flags: DIFlagFwdDecl)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvm_ptp_clock", file: !3, line: 20, size: 1216, elements: !294)
!294 = !{!295, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ptp_clock", scope: !293, file: !3, line: 21, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !6, line: 149, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !293, file: !3, line: 22, baseType: !149, size: 1152, offset: 64)
!299 = !{i32 7, !"Dwarf Version", i32 4}
!300 = !{i32 2, !"Debug Info Version", i32 3}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"Code Model", i32 2}
!303 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!304 = distinct !DISubprogram(name: "ptp_kvm_exit", scope: !3, file: !3, line: 162, type: !79, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!305 = !DILocation(line: 164, column: 37, scope: !304)
!306 = !DILocation(line: 164, column: 2, scope: !304)
!307 = !DILocation(line: 165, column: 1, scope: !304)
!308 = distinct !DISubprogram(name: "ptp_kvm_init", scope: !3, file: !3, line: 167, type: !309, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!309 = !DISubroutineType(types: !310)
!310 = !{!162}
!311 = !DILocalVariable(name: "ret", scope: !308, file: !3, line: 169, type: !70)
!312 = !DILocation(line: 169, column: 7, scope: !308)
!313 = !DILocation(line: 171, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !308, file: !3, line: 171, column: 6)
!315 = !DILocation(line: 171, column: 6, scope: !308)
!316 = !DILocation(line: 172, column: 3, scope: !314)
!317 = !DILocation(line: 174, column: 19, scope: !308)
!318 = !DILocation(line: 174, column: 17, scope: !308)
!319 = !DILocation(line: 175, column: 13, scope: !308)
!320 = !DILocation(line: 175, column: 11, scope: !308)
!321 = !DILocation(line: 177, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !308, file: !3, line: 177, column: 6)
!323 = !DILocation(line: 177, column: 6, scope: !308)
!324 = !DILocation(line: 178, column: 3, scope: !322)
!325 = !DILocation(line: 180, column: 45, scope: !308)
!326 = !DILocation(line: 180, column: 8, scope: !308)
!327 = !DILocation(line: 180, column: 6, scope: !308)
!328 = !DILocation(line: 182, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !308, file: !3, line: 182, column: 6)
!330 = !DILocation(line: 182, column: 10, scope: !329)
!331 = !DILocation(line: 182, column: 25, scope: !329)
!332 = !DILocation(line: 182, column: 28, scope: !329)
!333 = !DILocation(line: 182, column: 32, scope: !329)
!334 = !DILocation(line: 182, column: 6, scope: !308)
!335 = !DILocation(line: 183, column: 3, scope: !329)
!336 = !DILocation(line: 185, column: 23, scope: !308)
!337 = !DILocation(line: 187, column: 28, scope: !308)
!338 = !DILocation(line: 187, column: 26, scope: !308)
!339 = !DILocation(line: 189, column: 39, scope: !308)
!340 = !DILocation(line: 189, column: 25, scope: !308)
!341 = !DILocation(line: 189, column: 9, scope: !308)
!342 = !DILocation(line: 189, column: 2, scope: !308)
!343 = !DILocation(line: 190, column: 1, scope: !308)
!344 = distinct !DISubprogram(name: "kvm_hypercall2", scope: !345, file: !345, line: 54, type: !346, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!345 = !DIFile(filename: "./arch/x86/include/asm/kvm_para.h", directory: "/home/lizy2001/genbc/linux")
!346 = !DISubroutineType(types: !347)
!347 = !{!70, !18, !69, !69}
!348 = !DILocalVariable(name: "nr", arg: 1, scope: !344, file: !345, line: 54, type: !18)
!349 = !DILocation(line: 54, column: 48, scope: !344)
!350 = !DILocalVariable(name: "p1", arg: 2, scope: !344, file: !345, line: 54, type: !69)
!351 = !DILocation(line: 54, column: 66, scope: !344)
!352 = !DILocalVariable(name: "p2", arg: 3, scope: !344, file: !345, line: 55, type: !69)
!353 = !DILocation(line: 55, column: 21, scope: !344)
!354 = !DILocalVariable(name: "ret", scope: !344, file: !345, line: 57, type: !70)
!355 = !DILocation(line: 57, column: 7, scope: !344)
!356 = !DILocation(line: 60, column: 14, scope: !344)
!357 = !DILocation(line: 60, column: 23, scope: !344)
!358 = !DILocation(line: 60, column: 32, scope: !344)
!359 = !DILocation(line: 58, column: 2, scope: !344)
!360 = !{i32 -2143557350, i32 -2143557322, i32 -2143557316, i32 -2143557300, i32 -2143557284, i32 -2143557257, i32 -2143556937, i32 -2143557622, i32 -2143556931, i32 -2143556883, i32 -2143556819, i32 -2143556757, i32 -2143556700, i32 -2143556644, i32 -2143557542, i32 -2143557517, i32 -2143556410, i32 -2143556287, i32 -2143556349, i32 -2143556273, i32 -2143557417}
!361 = !DILocation(line: 62, column: 9, scope: !344)
!362 = !DILocation(line: 62, column: 2, scope: !344)
!363 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !364, file: !364, line: 57, type: !365, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!364 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DISubroutineType(types: !366)
!366 = !{!162, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!369 = !DILocalVariable(name: "ptr", arg: 1, scope: !363, file: !364, line: 57, type: !367)
!370 = !DILocation(line: 57, column: 68, scope: !363)
!371 = !DILocation(line: 59, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !363, file: !364, line: 59, column: 6)
!373 = !DILocation(line: 59, column: 6, scope: !372)
!374 = !DILocation(line: 59, column: 6, scope: !363)
!375 = !DILocation(line: 60, column: 18, scope: !372)
!376 = !DILocation(line: 60, column: 10, scope: !372)
!377 = !DILocation(line: 60, column: 3, scope: !372)
!378 = !DILocation(line: 62, column: 3, scope: !372)
!379 = !DILocation(line: 63, column: 1, scope: !363)
!380 = distinct !DISubprogram(name: "ptp_kvm_adjfreq", scope: !3, file: !3, line: 96, type: !190, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!381 = !DILocalVariable(name: "ptp", arg: 1, scope: !380, file: !3, line: 96, type: !187)
!382 = !DILocation(line: 96, column: 51, scope: !380)
!383 = !DILocalVariable(name: "ppb", arg: 2, scope: !380, file: !3, line: 96, type: !160)
!384 = !DILocation(line: 96, column: 60, scope: !380)
!385 = !DILocation(line: 98, column: 2, scope: !380)
!386 = distinct !DISubprogram(name: "ptp_kvm_adjtime", scope: !3, file: !3, line: 101, type: !195, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!387 = !DILocalVariable(name: "ptp", arg: 1, scope: !386, file: !3, line: 101, type: !187)
!388 = !DILocation(line: 101, column: 51, scope: !386)
!389 = !DILocalVariable(name: "delta", arg: 2, scope: !386, file: !3, line: 101, type: !68)
!390 = !DILocation(line: 101, column: 60, scope: !386)
!391 = !DILocation(line: 103, column: 2, scope: !386)
!392 = !DILocalVariable(name: "lock", arg: 1, scope: !393, file: !394, line: 392, type: !397)
!393 = distinct !DISubprogram(name: "spin_unlock", scope: !394, file: !394, line: 392, type: !395, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!394 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!398 = !DILocation(line: 392, column: 53, scope: !393, inlinedAt: !399)
!399 = distinct !DILocation(line: 130, column: 2, scope: !251)
!400 = !DILocation(line: 392, column: 53, scope: !393, inlinedAt: !401)
!401 = distinct !DILocation(line: 124, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 122, column: 16)
!403 = distinct !DILexicalBlock(scope: !251, file: !3, line: 122, column: 6)
!404 = !DILocalVariable(name: "lock", arg: 1, scope: !405, file: !394, line: 352, type: !397)
!405 = distinct !DISubprogram(name: "spin_lock", scope: !394, file: !394, line: 352, type: !395, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!406 = !DILocation(line: 352, column: 51, scope: !405, inlinedAt: !407)
!407 = distinct !DILocation(line: 117, column: 2, scope: !251)
!408 = !DILocalVariable(name: "ptp", arg: 1, scope: !251, file: !3, line: 112, type: !187)
!409 = !DILocation(line: 112, column: 51, scope: !251)
!410 = !DILocalVariable(name: "ts", arg: 2, scope: !251, file: !3, line: 112, type: !201)
!411 = !DILocation(line: 112, column: 75, scope: !251)
!412 = !DILocalVariable(name: "ret", scope: !251, file: !3, line: 114, type: !69)
!413 = !DILocation(line: 114, column: 16, scope: !251)
!414 = !DILocalVariable(name: "tspec", scope: !251, file: !3, line: 115, type: !202)
!415 = !DILocation(line: 115, column: 20, scope: !251)
!416 = !DILocation(line: 354, column: 2, scope: !417, inlinedAt: !407)
!417 = distinct !DILexicalBlock(scope: !405, file: !394, line: 354, column: 2)
!418 = !{i32 -2145298640}
!419 = !DILocation(line: 354, column: 2, scope: !420, inlinedAt: !407)
!420 = distinct !DILexicalBlock(scope: !417, file: !394, line: 354, column: 2)
!421 = !DILocation(line: 120, column: 9, scope: !251)
!422 = !DILocation(line: 119, column: 8, scope: !251)
!423 = !DILocation(line: 119, column: 6, scope: !251)
!424 = !DILocation(line: 122, column: 6, scope: !403)
!425 = !DILocation(line: 122, column: 10, scope: !403)
!426 = !DILocation(line: 122, column: 6, scope: !251)
!427 = !DILocation(line: 123, column: 3, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 123, column: 3)
!429 = distinct !DILexicalBlock(scope: !402, file: !3, line: 123, column: 3)
!430 = !DILocation(line: 123, column: 3, scope: !429)
!431 = !DILocation(line: 394, column: 2, scope: !432, inlinedAt: !401)
!432 = distinct !DILexicalBlock(scope: !393, file: !394, line: 394, column: 2)
!433 = !{i32 -2145296279}
!434 = !DILocation(line: 394, column: 2, scope: !435, inlinedAt: !401)
!435 = distinct !DILexicalBlock(scope: !432, file: !394, line: 394, column: 2)
!436 = !DILocation(line: 125, column: 3, scope: !402)
!437 = !DILocation(line: 128, column: 28, scope: !251)
!438 = !DILocation(line: 128, column: 8, scope: !251)
!439 = !DILocation(line: 128, column: 15, scope: !251)
!440 = !DILocation(line: 129, column: 29, scope: !251)
!441 = !DILocation(line: 129, column: 8, scope: !251)
!442 = !DILocation(line: 129, column: 16, scope: !251)
!443 = !DILocation(line: 394, column: 2, scope: !432, inlinedAt: !399)
!444 = !DILocation(line: 394, column: 2, scope: !435, inlinedAt: !399)
!445 = !DILocation(line: 132, column: 9, scope: !251)
!446 = !DILocation(line: 132, column: 2, scope: !251)
!447 = !DILocation(line: 134, column: 2, scope: !251)
!448 = !DILocation(line: 135, column: 1, scope: !251)
!449 = distinct !DISubprogram(name: "ptp_kvm_getcrosststamp", scope: !3, file: !3, line: 85, type: !219, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!450 = !DILocalVariable(name: "ptp", arg: 1, scope: !449, file: !3, line: 85, type: !187)
!451 = !DILocation(line: 85, column: 58, scope: !449)
!452 = !DILocalVariable(name: "xtstamp", arg: 2, scope: !449, file: !3, line: 86, type: !221)
!453 = !DILocation(line: 86, column: 41, scope: !449)
!454 = !DILocation(line: 89, column: 17, scope: !449)
!455 = !DILocation(line: 88, column: 9, scope: !449)
!456 = !DILocation(line: 88, column: 2, scope: !449)
!457 = distinct !DISubprogram(name: "ptp_kvm_settime", scope: !3, file: !3, line: 106, type: !232, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!458 = !DILocalVariable(name: "ptp", arg: 1, scope: !457, file: !3, line: 106, type: !187)
!459 = !DILocation(line: 106, column: 51, scope: !457)
!460 = !DILocalVariable(name: "ts", arg: 2, scope: !457, file: !3, line: 107, type: !234)
!461 = !DILocation(line: 107, column: 32, scope: !457)
!462 = !DILocation(line: 109, column: 2, scope: !457)
!463 = distinct !DISubprogram(name: "ptp_kvm_enable", scope: !3, file: !3, line: 137, type: !238, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!464 = !DILocalVariable(name: "ptp", arg: 1, scope: !463, file: !3, line: 137, type: !187)
!465 = !DILocation(line: 137, column: 50, scope: !463)
!466 = !DILocalVariable(name: "rq", arg: 2, scope: !463, file: !3, line: 138, type: !240)
!467 = !DILocation(line: 138, column: 32, scope: !463)
!468 = !DILocalVariable(name: "on", arg: 3, scope: !463, file: !3, line: 138, type: !162)
!469 = !DILocation(line: 138, column: 40, scope: !463)
!470 = !DILocation(line: 140, column: 2, scope: !463)
!471 = !DILocation(line: 392, column: 53, scope: !393, inlinedAt: !472)
!472 = distinct !DILocation(line: 80, column: 2, scope: !282)
!473 = !DILocalVariable(name: "src", arg: 1, scope: !474, file: !124, line: 30, type: !479)
!474 = distinct !DISubprogram(name: "pvclock_read_retry", scope: !124, file: !124, line: 30, type: !475, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !479, !18}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !119, line: 30, baseType: !478)
!478 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!481 = !DILocation(line: 30, column: 62, scope: !474, inlinedAt: !482)
!482 = distinct !DILocation(line: 71, column: 11, scope: !282)
!483 = !DILocalVariable(name: "version", arg: 2, scope: !474, file: !124, line: 31, type: !18)
!484 = !DILocation(line: 31, column: 13, scope: !474, inlinedAt: !482)
!485 = !DILocalVariable(name: "src", arg: 1, scope: !486, file: !124, line: 82, type: !479)
!486 = distinct !DISubprogram(name: "__pvclock_read_cycles", scope: !124, file: !124, line: 82, type: !487, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!487 = !DISubroutineType(types: !488)
!488 = !{!64, !479, !64}
!489 = !DILocation(line: 82, column: 64, scope: !486, inlinedAt: !490)
!490 = distinct !DILocation(line: 70, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !282, file: !3, line: 48, column: 5)
!492 = !DILocalVariable(name: "tsc", arg: 2, scope: !486, file: !124, line: 82, type: !64)
!493 = !DILocation(line: 82, column: 73, scope: !486, inlinedAt: !490)
!494 = !DILocalVariable(name: "delta", scope: !486, file: !124, line: 84, type: !64)
!495 = !DILocation(line: 84, column: 6, scope: !486, inlinedAt: !490)
!496 = !DILocalVariable(name: "offset", scope: !486, file: !124, line: 85, type: !64)
!497 = !DILocation(line: 85, column: 6, scope: !486, inlinedAt: !490)
!498 = !DILocation(line: 392, column: 53, scope: !393, inlinedAt: !499)
!499 = distinct !DILocation(line: 63, column: 4, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 61, column: 17)
!501 = distinct !DILexicalBlock(scope: !491, file: !3, line: 61, column: 7)
!502 = !DILocalVariable(name: "src", arg: 1, scope: !503, file: !124, line: 21, type: !479)
!503 = distinct !DISubprogram(name: "pvclock_read_begin", scope: !124, file: !124, line: 21, type: !504, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!504 = !DISubroutineType(types: !505)
!505 = !{!18, !479}
!506 = !DILocation(line: 21, column: 66, scope: !503, inlinedAt: !507)
!507 = distinct !DILocation(line: 56, column: 13, scope: !491)
!508 = !DILocalVariable(name: "version", scope: !503, file: !124, line: 23, type: !18)
!509 = !DILocation(line: 23, column: 11, scope: !503, inlinedAt: !507)
!510 = !DILocation(line: 352, column: 51, scope: !405, inlinedAt: !511)
!511 = distinct !DILocation(line: 42, column: 2, scope: !282)
!512 = !DILocalVariable(name: "device_time", arg: 1, scope: !282, file: !3, line: 32, type: !285)
!513 = !DILocation(line: 32, column: 41, scope: !282)
!514 = !DILocalVariable(name: "system_counter", arg: 2, scope: !282, file: !3, line: 33, type: !286)
!515 = !DILocation(line: 33, column: 39, scope: !282)
!516 = !DILocalVariable(name: "ctx", arg: 3, scope: !282, file: !3, line: 34, type: !63)
!517 = !DILocation(line: 34, column: 17, scope: !282)
!518 = !DILocalVariable(name: "ret", scope: !282, file: !3, line: 36, type: !69)
!519 = !DILocation(line: 36, column: 16, scope: !282)
!520 = !DILocalVariable(name: "tspec", scope: !282, file: !3, line: 37, type: !202)
!521 = !DILocation(line: 37, column: 20, scope: !282)
!522 = !DILocalVariable(name: "version", scope: !282, file: !3, line: 38, type: !18)
!523 = !DILocation(line: 38, column: 11, scope: !282)
!524 = !DILocalVariable(name: "cpu", scope: !282, file: !3, line: 39, type: !162)
!525 = !DILocation(line: 39, column: 6, scope: !282)
!526 = !DILocalVariable(name: "src", scope: !282, file: !3, line: 40, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!528 = !DILocation(line: 40, column: 33, scope: !282)
!529 = !DILocation(line: 354, column: 2, scope: !417, inlinedAt: !511)
!530 = !DILocation(line: 354, column: 2, scope: !420, inlinedAt: !511)
!531 = !DILocation(line: 44, column: 2, scope: !282)
!532 = !{i32 -2143505490}
!533 = !DILocation(line: 45, column: 6, scope: !282)
!534 = !DILocation(line: 46, column: 9, scope: !282)
!535 = !DILocation(line: 46, column: 18, scope: !282)
!536 = !DILocation(line: 46, column: 23, scope: !282)
!537 = !DILocation(line: 46, column: 6, scope: !282)
!538 = !DILocation(line: 48, column: 2, scope: !282)
!539 = !DILocation(line: 56, column: 32, scope: !491)
!540 = !DILocation(line: 23, column: 21, scope: !503, inlinedAt: !507)
!541 = !DILocation(line: 23, column: 26, scope: !503, inlinedAt: !507)
!542 = !DILocation(line: 23, column: 34, scope: !503, inlinedAt: !507)
!543 = !DILocation(line: 25, column: 2, scope: !503, inlinedAt: !507)
!544 = !{i32 -2143539648}
!545 = !DILocation(line: 26, column: 9, scope: !503, inlinedAt: !507)
!546 = !DILocation(line: 56, column: 11, scope: !491)
!547 = !DILocation(line: 59, column: 10, scope: !491)
!548 = !DILocation(line: 58, column: 9, scope: !491)
!549 = !DILocation(line: 58, column: 7, scope: !491)
!550 = !DILocation(line: 61, column: 7, scope: !501)
!551 = !DILocation(line: 61, column: 11, scope: !501)
!552 = !DILocation(line: 61, column: 7, scope: !491)
!553 = !DILocation(line: 62, column: 4, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 62, column: 4)
!555 = distinct !DILexicalBlock(scope: !500, file: !3, line: 62, column: 4)
!556 = !DILocation(line: 62, column: 4, scope: !555)
!557 = !DILocation(line: 394, column: 2, scope: !432, inlinedAt: !499)
!558 = !DILocation(line: 394, column: 2, scope: !435, inlinedAt: !499)
!559 = !DILocation(line: 64, column: 4, scope: !500)
!560 = !{i32 -2143504452}
!561 = !DILocation(line: 65, column: 4, scope: !500)
!562 = !DILocation(line: 68, column: 29, scope: !491)
!563 = !DILocation(line: 68, column: 9, scope: !491)
!564 = !DILocation(line: 68, column: 16, scope: !491)
!565 = !DILocation(line: 69, column: 30, scope: !491)
!566 = !DILocation(line: 69, column: 9, scope: !491)
!567 = !DILocation(line: 69, column: 17, scope: !491)
!568 = !DILocation(line: 70, column: 31, scope: !491)
!569 = !DILocation(line: 70, column: 47, scope: !491)
!570 = !DILocation(line: 84, column: 14, scope: !486, inlinedAt: !490)
!571 = !DILocation(line: 84, column: 20, scope: !486, inlinedAt: !490)
!572 = !DILocation(line: 84, column: 25, scope: !486, inlinedAt: !490)
!573 = !DILocation(line: 84, column: 18, scope: !486, inlinedAt: !490)
!574 = !DILocation(line: 85, column: 35, scope: !486, inlinedAt: !490)
!575 = !DILocation(line: 85, column: 42, scope: !486, inlinedAt: !490)
!576 = !DILocation(line: 85, column: 47, scope: !486, inlinedAt: !490)
!577 = !DILocation(line: 86, column: 11, scope: !486, inlinedAt: !490)
!578 = !DILocation(line: 86, column: 16, scope: !486, inlinedAt: !490)
!579 = !DILocation(line: 85, column: 15, scope: !486, inlinedAt: !490)
!580 = !DILocation(line: 87, column: 9, scope: !486, inlinedAt: !490)
!581 = !DILocation(line: 87, column: 14, scope: !486, inlinedAt: !490)
!582 = !DILocation(line: 87, column: 28, scope: !486, inlinedAt: !490)
!583 = !DILocation(line: 87, column: 26, scope: !486, inlinedAt: !490)
!584 = !DILocation(line: 70, column: 7, scope: !491)
!585 = !DILocation(line: 71, column: 2, scope: !491)
!586 = !DILocation(line: 71, column: 30, scope: !282)
!587 = !DILocation(line: 71, column: 35, scope: !282)
!588 = !DILocation(line: 34, column: 2, scope: !474, inlinedAt: !482)
!589 = !{i32 -2143539371}
!590 = !DILocation(line: 35, column: 9, scope: !474, inlinedAt: !482)
!591 = distinct !{!591, !538, !592}
!592 = !DILocation(line: 71, column: 43, scope: !282)
!593 = !DILocation(line: 73, column: 2, scope: !282)
!594 = !{i32 -2143504401}
!595 = !DILocation(line: 75, column: 27, scope: !282)
!596 = !DILocation(line: 75, column: 2, scope: !282)
!597 = !DILocation(line: 75, column: 18, scope: !282)
!598 = !DILocation(line: 75, column: 25, scope: !282)
!599 = !DILocation(line: 76, column: 2, scope: !282)
!600 = !DILocation(line: 76, column: 18, scope: !282)
!601 = !DILocation(line: 76, column: 21, scope: !282)
!602 = !DILocation(line: 78, column: 17, scope: !282)
!603 = !DILocation(line: 78, column: 3, scope: !282)
!604 = !DILocation(line: 78, column: 15, scope: !282)
!605 = !DILocation(line: 394, column: 2, scope: !432, inlinedAt: !472)
!606 = !DILocation(line: 394, column: 2, scope: !435, inlinedAt: !472)
!607 = !DILocation(line: 82, column: 2, scope: !282)
!608 = !DILocation(line: 83, column: 1, scope: !282)
!609 = distinct !DISubprogram(name: "timespec64_to_ktime", scope: !227, file: !227, line: 71, type: !610, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!610 = !DISubroutineType(types: !611)
!611 = !{!226, !202}
!612 = !DILocalVariable(name: "ts", arg: 1, scope: !609, file: !227, line: 71, type: !202)
!613 = !DILocation(line: 71, column: 61, scope: !609)
!614 = !DILocation(line: 73, column: 22, scope: !609)
!615 = !DILocation(line: 73, column: 33, scope: !609)
!616 = !DILocation(line: 73, column: 9, scope: !609)
!617 = !DILocation(line: 73, column: 2, scope: !609)
!618 = distinct !DISubprogram(name: "pvclock_scale_delta", scope: !124, file: !124, line: 42, type: !619, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!619 = !DISubroutineType(types: !620)
!620 = !{!64, !64, !131, !162}
!621 = !DILocalVariable(name: "delta", arg: 1, scope: !618, file: !124, line: 42, type: !64)
!622 = !DILocation(line: 42, column: 43, scope: !618)
!623 = !DILocalVariable(name: "mul_frac", arg: 2, scope: !618, file: !124, line: 42, type: !131)
!624 = !DILocation(line: 42, column: 54, scope: !618)
!625 = !DILocalVariable(name: "shift", arg: 3, scope: !618, file: !124, line: 42, type: !162)
!626 = !DILocation(line: 42, column: 68, scope: !618)
!627 = !DILocalVariable(name: "product", scope: !618, file: !124, line: 44, type: !64)
!628 = !DILocation(line: 44, column: 6, scope: !618)
!629 = !DILocalVariable(name: "tmp", scope: !618, file: !124, line: 48, type: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong", file: !119, line: 88, baseType: !69)
!631 = !DILocation(line: 48, column: 8, scope: !618)
!632 = !DILocation(line: 51, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !618, file: !124, line: 51, column: 6)
!634 = !DILocation(line: 51, column: 12, scope: !633)
!635 = !DILocation(line: 51, column: 6, scope: !618)
!636 = !DILocation(line: 52, column: 14, scope: !633)
!637 = !DILocation(line: 52, column: 13, scope: !633)
!638 = !DILocation(line: 52, column: 9, scope: !633)
!639 = !DILocation(line: 52, column: 3, scope: !633)
!640 = !DILocation(line: 54, column: 13, scope: !633)
!641 = !DILocation(line: 54, column: 9, scope: !633)
!642 = !DILocation(line: 72, column: 9, scope: !618)
!643 = !DILocation(line: 73, column: 25, scope: !618)
!644 = !DILocation(line: 73, column: 20, scope: !618)
!645 = !DILocation(line: 68, column: 2, scope: !618)
!646 = !{i32 3933781}
!647 = !DILocation(line: 78, column: 9, scope: !618)
!648 = !DILocation(line: 78, column: 2, scope: !618)
!649 = distinct !DISubprogram(name: "ktime_set", scope: !227, file: !227, line: 38, type: !650, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!650 = !DISubroutineType(types: !651)
!651 = !{!226, !652, !653}
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!654 = !DILocalVariable(name: "secs", arg: 1, scope: !649, file: !227, line: 38, type: !652)
!655 = !DILocation(line: 38, column: 43, scope: !649)
!656 = !DILocalVariable(name: "nsecs", arg: 2, scope: !649, file: !227, line: 38, type: !653)
!657 = !DILocation(line: 38, column: 69, scope: !649)
!658 = !DILocation(line: 40, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !649, file: !227, line: 40, column: 6)
!660 = !DILocation(line: 40, column: 6, scope: !649)
!661 = !DILocation(line: 41, column: 3, scope: !659)
!662 = !DILocation(line: 43, column: 9, scope: !649)
!663 = !DILocation(line: 43, column: 14, scope: !649)
!664 = !DILocation(line: 43, column: 36, scope: !649)
!665 = !DILocation(line: 43, column: 29, scope: !649)
!666 = !DILocation(line: 43, column: 2, scope: !649)
!667 = !DILocation(line: 44, column: 1, scope: !649)
!668 = distinct !DISubprogram(name: "IS_ERR", scope: !364, file: !364, line: 34, type: !669, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!669 = !DISubroutineType(types: !670)
!670 = !{!477, !367}
!671 = !DILocalVariable(name: "ptr", arg: 1, scope: !668, file: !364, line: 34, type: !367)
!672 = !DILocation(line: 34, column: 60, scope: !668)
!673 = !DILocation(line: 36, column: 9, scope: !668)
!674 = !DILocation(line: 36, column: 2, scope: !668)
!675 = distinct !DISubprogram(name: "PTR_ERR", scope: !364, file: !364, line: 29, type: !676, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!676 = !DISubroutineType(types: !677)
!677 = !{!70, !367}
!678 = !DILocalVariable(name: "ptr", arg: 1, scope: !675, file: !364, line: 29, type: !367)
!679 = !DILocation(line: 29, column: 61, scope: !675)
!680 = !DILocation(line: 31, column: 16, scope: !675)
!681 = !DILocation(line: 31, column: 9, scope: !675)
!682 = !DILocation(line: 31, column: 2, scope: !675)
