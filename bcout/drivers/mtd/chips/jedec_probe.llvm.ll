; ModuleID = '../bcout/drivers/mtd/chips/jedec_probe.llvm.bc'
source_filename = "drivers/mtd/chips/jedec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_jedec_probe_init6:\09\09\09"
module asm ".long\09jedec_probe_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mtd_chip_driver = type { %struct.mtd_info* (%struct.map_info*)*, void (%struct.mtd_info*)*, %struct.module*, i8*, %struct.list_head }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.mtd_ooblayout_ops*, %struct.mtd_pairing_scheme*, i32, i32, i32, %struct.mtd_erase_region_info*, i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, i8*, %struct.module*, %struct.device, i32, %struct.mtd_debug_info, %struct.nvmem_device*, %struct.mtd_info*, %struct.list_head, %union.anon.38 }
%struct.mtd_ooblayout_ops = type { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* }
%struct.mtd_oob_region = type { i32, i32 }
%struct.mtd_pairing_scheme = type { i32, i32 (%struct.mtd_info*, i32, %struct.mtd_pairing_info*)*, i32 (%struct.mtd_info*, %struct.mtd_pairing_info*)* }
%struct.mtd_pairing_info = type { i32, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, i64* }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i64, i64, i64, i64, i32, i8*, i8* }
%struct.otp_info = type { i32, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.16, i32, [12 x i8] }
%union.anon.16 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.17 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.18, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.31 = type { %struct.atomic_t }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.32, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.35 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i64, i64 }
%union.anon.35 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mtd_debug_info = type { %struct.dentry*, i8*, i8* }
%struct.dentry = type opaque
%struct.nvmem_device = type opaque
%union.anon.38 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.map_info = type { i8*, i64, i64, i8*, i8*, i32, i32, i64 (%struct.map_info*, i64)*, void (%struct.map_info*, i8*, i64, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i64, i8*, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i32)*, i64, i64, i64, %struct.device_node*, i8*, %struct.mtd_chip_driver* }
%struct.module = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.chip_probe = type { i8*, i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)* }
%struct.cfi_private = type { i16, i8*, i32, i32, i32, i32, i32, %struct.mtd_info* (%struct.map_info*)*, %struct.cfi_ident*, i32, i32, i32, %union.map_word, i64, i8*, [0 x %struct.flchip] }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%union.map_word = type { [1 x i64] }
%struct.flchip = type { i64, i32, i32, i32, i8, i64, i64, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i8* }
%struct.unlock_addr = type { i32, i32 }
%struct.amd_flash_info = type { i8*, i16, i16, i8, i8, i16, [6 x i32], i8, i8 }
%struct.kmem_cache = type opaque

@jedec_chipdrv = internal global %struct.mtd_chip_driver { %struct.mtd_info* (%struct.map_info*)* @jedec_probe, void (%struct.mtd_info*)* null, %struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.list_head zeroinitializer }, align 8, !dbg !0
@__UNIQUE_ID___addressable_jedec_probe_init167 = internal global i8* bitcast (i32 ()* @jedec_probe_init to i8*), section ".discard.addressable", align 8, !dbg !131
@__exitcall_jedec_probe_exit = internal global void ()* @jedec_probe_exit, section ".exitcall.exit", align 8, !dbg !133
@__UNIQUE_ID_file168 = internal constant [47 x i8] c"jedec_probe.file=drivers/mtd/chips/jedec_probe\00", section ".modinfo", align 1, !dbg !140
@__UNIQUE_ID_license169 = internal constant [24 x i8] c"jedec_probe.license=GPL\00", section ".modinfo", align 1, !dbg !146
@__UNIQUE_ID_author170 = internal constant [63 x i8] c"jedec_probe.author=Erwin Authried <eauth@softsys.co.at> et al.\00", section ".modinfo", align 1, !dbg !151
@__UNIQUE_ID_description171 = internal constant [67 x i8] c"jedec_probe.description=Probe code for JEDEC-compliant flash chips\00", section ".modinfo", align 1, !dbg !156
@.str = private unnamed_addr constant [12 x i8] c"jedec_probe\00", align 1
@jedec_chip_probe = internal global %struct.chip_probe { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)* @jedec_probe_chip }, align 8, !dbg !161
@.str.1 = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@unlock_addrs = internal constant [9 x %struct.unlock_addr] [%struct.unlock_addr { i32 65535, i32 65535 }, %struct.unlock_addr { i32 1365, i32 682 }, %struct.unlock_addr { i32 1365, i32 2730 }, %struct.unlock_addr { i32 21845, i32 10922 }, %struct.unlock_addr { i32 2730, i32 1364 }, %struct.unlock_addr { i32 2730, i32 1365 }, %struct.unlock_addr { i32 43690, i32 21845 }, %struct.unlock_addr zeroinitializer, %struct.unlock_addr zeroinitializer], align 16, !dbg !2492
@.str.2 = private unnamed_addr constant [58 x i8] c"\015Probe at base(0x%08x) past the end of the map(0x%08lx)\0A\00", align 1
@jedec_table = internal constant [120 x %struct.amd_flash_info] [%struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i16 1, i16 65, i8 22, i8 1, i16 2, [6 x i32] [i32 16777279, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i16 1, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i16 1, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i16 1, i16 8890, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i16 1, i16 8889, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i16 1, i16 8795, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i16 1, i16 8907, i8 20, i8 6, i16 2, [6 x i32] [i32 4194304, i32 8388608, i32 2097155, i32 8388608, i32 4194304, i32 16777229], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i16 1, i16 8778, i8 20, i8 6, i16 2, [6 x i32] [i32 16777229, i32 4194304, i32 8388608, i32 2097155, i32 8388608, i32 4194304], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i16 1, i16 8792, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i16 1, i16 8922, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i16 1, i16 8918, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i16 1, i16 61, i8 21, i8 1, i16 2, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 7 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i16 1, i16 173, i8 21, i8 1, i16 2, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i16 1, i16 213, i8 20, i8 1, i16 2, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i16 1, i16 164, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i16 1, i16 79, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i16 1, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i16 1, i16 8938, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i16 1, i16 8811, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i16 31, i16 3, i8 16, i8 1, i16 2, [6 x i32] [i32 16777216, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i16 31, i16 61, i8 16, i8 1, i16 2, [6 x i32] [i32 33023, i32 33023, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i16 31, i16 192, i8 21, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777246, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i16 31, i16 194, i8 21, i8 2, i16 2, [6 x i32] [i32 16777246, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i16 31, i16 200, i8 22, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i16 31, i16 201, i8 22, i8 2, i16 2, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i16 28, i16 8889, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i16 28, i16 8890, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i16 28, i16 8938, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i16 28, i16 8811, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i16 4, i16 164, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i16 4, i16 8792, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i16 4, i16 8919, i8 23, i8 1, i16 2, [6 x i32] [i32 16777343, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 7 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i16 4, i16 8950, i8 22, i8 2, i16 2, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i16 4, i16 8953, i8 22, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i16 4, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i16 4, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i16 4, i16 8795, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i16 4, i16 8922, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i16 4, i16 8890, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i16 4, i16 8889, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i16 173, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i16 137, i16 213, i8 19, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777222, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i16 137, i16 212, i8 19, i8 2, i16 3, [6 x i32] [i32 16777222, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i16 137, i16 -30571, i8 19, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777222, i32 0, i32 0, i32 0, i32 0], i8 3, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i16 137, i16 -30572, i8 19, i8 2, i16 3, [6 x i32] [i32 16777222, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i16 137, i16 211, i8 20, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777230, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i16 137, i16 210, i8 20, i8 2, i16 3, [6 x i32] [i32 16777230, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i16 137, i16 166, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i16 137, i16 160, i8 21, i8 1, i16 1, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i16 137, i16 162, i8 20, i8 1, i16 3, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i16 137, i16 -30573, i8 20, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777230, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i16 137, i16 -30574, i8 20, i8 2, i16 3, [6 x i32] [i32 16777230, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i16 137, i16 209, i8 21, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777246, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i16 137, i16 170, i8 21, i8 1, i16 3, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i16 137, i16 208, i8 21, i8 2, i16 3, [6 x i32] [i32 16777246, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i16 137, i16 -30575, i8 21, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777246, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i16 137, i16 -30576, i8 21, i8 2, i16 3, [6 x i32] [i32 16777246, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i16 137, i16 -30569, i8 22, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i16 137, i16 -30570, i8 22, i8 2, i16 3, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i16 137, i16 -30567, i8 23, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777342, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i16 137, i16 -30568, i8 23, i8 2, i16 3, [6 x i32] [i32 16777342, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i16 137, i16 -30515, i8 23, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777342, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i16 137, i16 173, i8 19, i8 1, i16 1, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0), i16 137, i16 172, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i16 194, i16 79, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i16 194, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i16 16, i16 8732, i8 23, i8 3, i16 2, [6 x i32] [i32 2097159, i32 16777341, i32 2097159, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i16 194, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i16 194, i16 164, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i16 194, i16 173, i8 21, i8 1, i16 2, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.77, i32 0, i32 0), i16 194, i16 69, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i16 194, i16 70, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i16 194, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i16 157, i16 109, i8 18, i8 1, i16 2, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0), i16 157, i16 110, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i16 157, i16 106, i8 20, i8 1, i16 2, [6 x i32] [i32 1048831, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i16 176, i16 176, i8 23, i8 2, i16 1, [6 x i32] [i32 16777342, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i16 191, i16 212, i8 16, i8 1, i16 2, [6 x i32] [i32 1048591, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i16 191, i16 213, i8 17, i8 1, i16 2, [6 x i32] [i32 1048607, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i16 191, i16 16, i8 18, i8 1, i16 258, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i16 191, i16 18, i8 18, i8 1, i16 258, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i16 191, i16 214, i8 18, i8 1, i16 2, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i16 191, i16 215, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i16 191, i16 181, i8 17, i8 1, i16 2, [6 x i32] [i32 1048607, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i16 191, i16 182, i8 18, i8 1, i16 2, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i16 191, i16 183, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i16 191, i16 80, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i16 191, i16 96, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), i16 191, i16 90, i8 20, i8 1, i16 2, [6 x i32] [i32 1048831, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i16 191, i16 28, i8 19, i8 1, i16 2, [6 x i32] [i32 1048671, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i16 191, i16 81, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i16 191, i16 91, i8 20, i8 1, i16 2, [6 x i32] [i32 1048831, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i16 191, i16 10114, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i16 191, i16 9035, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i16 191, i16 10059, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i16 191, i16 10058, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i16 191, i16 9051, i8 22, i8 4, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 1048831, i32 1048831, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i16 191, i16 29524, i8 22, i8 1, i16 2, [6 x i32] [i32 16777279, i32 0, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i16 32, i16 88, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i16 32, i16 8919, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i16 32, i16 8795, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i16 32, i16 238, i8 19, i8 4, i16 2, [6 x i32] [i32 4194310, i32 2097152, i32 8388609, i32 16777216, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i16 32, i16 239, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i16 32, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i16 32, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i16 32, i16 227, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i16 32, i16 44, i8 19, i8 1, i16 1, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i16 32, i16 45, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i16 32, i16 46, i8 21, i8 1, i16 1, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), i16 32, i16 47, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i16 32, i16 128, i8 20, i8 4, i16 1, [6 x i32] [i32 1048591, i32 16777228, i32 1048591, i32 1048591, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i16 32, i16 129, i8 20, i8 4, i16 1, [6 x i32] [i32 1048591, i32 1048591, i32 16777228, i32 1048591, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i16 -224, i16 -23, i8 20, i8 1, i16 2, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 2, i8 4 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0), i16 152, i16 194, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.121, i32 0, i32 0), i16 152, i16 67, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i32 0, i32 0), i16 152, i16 156, i8 22, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.123, i32 0, i32 0), i16 152, i16 154, i8 22, i8 2, i16 2, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i32 0, i32 0), i16 152, i16 149, i8 23, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777342, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.125, i32 0, i32 0), i16 152, i16 147, i8 23, i8 2, i16 2, [6 x i32] [i32 16777342, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i32 0, i32 0), i16 218, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 3 }], align 16, !dbg !2500
@.str.3 = private unnamed_addr constant [74 x i8] c"\017%s: Found different chip or no chip at all (mfr 0x%x, id 0x%x) at 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\017%s: Found an alias at 0x%x for the chip at 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\016%s: Found %d x%d devices at 0x%x in %d-bit bank\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\014MTD %s(): Unsupported device type %d\0A\00", align 1
@__func__.jedec_match = private unnamed_addr constant [12 x i8] c"jedec_match\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"AMD AM29F032B\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"AMD AM29LV160DT\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"AMD AM29LV160DB\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"AMD AM29LV400BB\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"AMD AM29LV400BT\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"AMD AM29LV800BB\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"AMD AM29DL800BB\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"AMD AM29DL800BT\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"AMD AM29F800BB\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"AMD AM29LV800BT\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"AMD AM29F800BT\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"AMD AM29F017D\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"AMD AM29F016D\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"AMD AM29F080\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"AMD AM29F040\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"AMD AM29LV040B\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"AMD AM29F002T\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"AMD AM29SL800DT\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"AMD AM29SL800DB\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Atmel AT49BV512\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Atmel AT29LV512\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Atmel AT49BV16X\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Atmel AT49BV16XT\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Atmel AT49BV32X\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Atmel AT49BV32XT\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Eon EN29LV400AT\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Eon EN29LV400AB\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Eon EN29SL800BT\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Eon EN29SL800BB\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Fujitsu MBM29F040C\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Fujitsu MBM29F800BA\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV650UE\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV320TE\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV320BE\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV160TE\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV160BE\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV800BA\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV800TA\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV400BC\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Fujitsu MBM29LV400TC\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Hyundai HY29F002T\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Intel 28F004B3B\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Intel 28F004B3T\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Intel 28F400B3B\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Intel 28F400B3T\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"Intel 28F008B3B\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Intel 28F008B3T\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Intel 28F008S5\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"Intel 28F016S5\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Intel 28F008SA\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"Intel 28F800B3B\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"Intel 28F800B3T\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Intel 28F016B3B\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Intel I28F016S3\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Intel 28F016B3T\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"Intel 28F160B3B\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Intel 28F160B3T\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Intel 28F320B3B\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"Intel 28F320B3T\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"Intel 28F640B3B\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Intel 28F640B3T\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Intel 28F640C3B\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"Intel 82802AB\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Intel 82802AC\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Macronix MX29LV040C\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"MXIC MX29LV160T\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"NEC uPD29F064115\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"MXIC MX29LV160B\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"Macronix MX29F040\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Macronix MX29F016\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"Macronix MX29F004T\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"Macronix MX29F004B\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"Macronix MX29F002T\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"PMC Pm49FL002\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"PMC Pm49FL004\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"PMC Pm49FL008\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"LH28F640BF\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"SST 39LF512\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"SST 39LF010\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"SST 29EE020\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"SST 29LE020\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"SST 39LF020\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"SST 39LF040\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"SST 39SF010A\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"SST 39SF020A\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"SST 39SF040\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"SST 49LF040B\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"SST 49LF004B\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"SST 49LF008A\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"SST 49LF030A\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"SST 49LF040A\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"SST 49LF080A\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"SST 39LF160\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"SST 39VF1601\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"SST 39WF1601\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"SST 39WF1602\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"SST 39VF3201\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"SST 36VF3203\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"ST M29F800AB\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"ST M29W800DT\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"ST M29W800DB\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"ST M29W400DT\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"ST M29W400DB\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"ST M29W160DT\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"ST M29W160DB\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"ST M29W040B\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"ST M50FW040\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"ST M50FW080\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"ST M50FW016\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"ST M50LPW080\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"ST M50FLW080A\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"ST M50FLW080B\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"ST PSD4256G6V\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"Toshiba TC58FVT160\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"Toshiba TC58FVB160\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Toshiba TC58FVB321\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"Toshiba TC58FVT321\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"Toshiba TC58FVB641\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"Toshiba TC58FVT641\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Winbond W49V002A\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"\016Found: %s\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.128 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @jedec_probe_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_jedec_probe_init167 to i8*), i8* bitcast (void ()** @__exitcall_jedec_probe_exit to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file168, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license169, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author170, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_description171, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @jedec_probe_exit() #0 section ".exit.text" !dbg !2526 {
entry:
  call void @unregister_mtd_chip_driver(%struct.mtd_chip_driver* @jedec_chipdrv) #9, !dbg !2527
  ret void, !dbg !2528
}

; Function Attrs: noredzone
declare dso_local void @unregister_mtd_chip_driver(%struct.mtd_chip_driver*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @jedec_probe_init() #0 section ".init.text" !dbg !2529 {
entry:
  call void @register_mtd_chip_driver(%struct.mtd_chip_driver* @jedec_chipdrv) #9, !dbg !2532
  ret i32 0, !dbg !2533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @jedec_probe(%struct.map_info* %map) #2 !dbg !2534 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2535, metadata !DIExpression()), !dbg !2536
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2537
  %call = call %struct.mtd_info* @mtd_do_chip_probe(%struct.map_info* %0, %struct.chip_probe* @jedec_chip_probe) #9, !dbg !2538
  ret %struct.mtd_info* %call, !dbg !2539
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.mtd_info* @mtd_do_chip_probe(%struct.map_info*, %struct.chip_probe*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jedec_probe_chip(%struct.map_info* %map, i32 %base, i64* %chip_map, %struct.cfi_private* %cfi) #2 !dbg !2540 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %base.addr = alloca i32, align 4
  %chip_map.addr = alloca i64*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %i = alloca i32, align 4
  %uaddr_idx = alloca i32, align 4
  %probe_offset1 = alloca i32, align 4
  %probe_offset2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp56 = alloca i32, align 4
  %mfr63 = alloca i16, align 2
  %id64 = alloca i16, align 2
  %start = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2541, metadata !DIExpression()), !dbg !2542
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2543, metadata !DIExpression()), !dbg !2544
  store i64* %chip_map, i64** %chip_map.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %chip_map.addr, metadata !2545, metadata !DIExpression()), !dbg !2546
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i32* %uaddr_idx, metadata !2551, metadata !DIExpression()), !dbg !2552
  store i32 0, i32* %uaddr_idx, align 4, !dbg !2552
  call void @llvm.dbg.declare(metadata i32* %probe_offset1, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata i32* %probe_offset2, metadata !2555, metadata !DIExpression()), !dbg !2556
  br label %retry, !dbg !2557

retry:                                            ; preds = %for.end, %if.then28, %entry
  call void @llvm.dbg.label(metadata !2558), !dbg !2559
  %0 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2560
  %numchips = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %0, i32 0, i32 11, !dbg !2562
  %1 = load i32, i32* %numchips, align 8, !dbg !2562
  %tobool = icmp ne i32 %1, 0, !dbg !2560
  br i1 %tobool, label %if.end6, label %if.then, !dbg !2563

if.then:                                          ; preds = %retry
  %2 = load i32, i32* %uaddr_idx, align 4, !dbg !2564
  %inc = add i32 %2, 1, !dbg !2564
  store i32 %inc, i32* %uaddr_idx, align 4, !dbg !2564
  %3 = load i32, i32* %uaddr_idx, align 4, !dbg !2566
  %cmp = icmp eq i32 8, %3, !dbg !2568
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2569

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !2570
  br label %return, !dbg !2570

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %uaddr_idx, align 4, !dbg !2571
  %idxprom = zext i32 %4 to i64, !dbg !2572
  %arrayidx = getelementptr [9 x %struct.unlock_addr], [9 x %struct.unlock_addr]* @unlock_addrs, i64 0, i64 %idxprom, !dbg !2572
  %addr1 = getelementptr inbounds %struct.unlock_addr, %struct.unlock_addr* %arrayidx, i32 0, i32 0, !dbg !2573
  %5 = load i32, i32* %addr1, align 8, !dbg !2573
  %6 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2574
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %6, i32 0, i32 3, !dbg !2575
  %7 = load i32, i32* %device_type, align 4, !dbg !2575
  %div = udiv i32 %5, %7, !dbg !2576
  %8 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2577
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %8, i32 0, i32 5, !dbg !2578
  store i32 %div, i32* %addr_unlock1, align 4, !dbg !2579
  %9 = load i32, i32* %uaddr_idx, align 4, !dbg !2580
  %idxprom2 = zext i32 %9 to i64, !dbg !2581
  %arrayidx3 = getelementptr [9 x %struct.unlock_addr], [9 x %struct.unlock_addr]* @unlock_addrs, i64 0, i64 %idxprom2, !dbg !2581
  %addr2 = getelementptr inbounds %struct.unlock_addr, %struct.unlock_addr* %arrayidx3, i32 0, i32 1, !dbg !2582
  %10 = load i32, i32* %addr2, align 4, !dbg !2582
  %11 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2583
  %device_type4 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %11, i32 0, i32 3, !dbg !2584
  %12 = load i32, i32* %device_type4, align 4, !dbg !2584
  %div5 = udiv i32 %10, %12, !dbg !2585
  %13 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2586
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 6, !dbg !2587
  store i32 %div5, i32* %addr_unlock2, align 8, !dbg !2588
  br label %if.end6, !dbg !2589

if.end6:                                          ; preds = %if.end, %retry
  %14 = load i32, i32* %base.addr, align 4, !dbg !2590
  %conv = zext i32 %14 to i64, !dbg !2590
  %15 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2592
  %size = getelementptr inbounds %struct.map_info, %struct.map_info* %15, i32 0, i32 1, !dbg !2593
  %16 = load i64, i64* %size, align 8, !dbg !2593
  %cmp7 = icmp uge i64 %conv, %16, !dbg !2594
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !2595

if.then9:                                         ; preds = %if.end6
  %17 = load i32, i32* %base.addr, align 4, !dbg !2596
  %18 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2598
  %size10 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 1, !dbg !2599
  %19 = load i64, i64* %size10, align 8, !dbg !2599
  %sub = sub i64 %19, 1, !dbg !2600
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %17, i64 %sub) #10, !dbg !2601
  store i32 0, i32* %retval, align 4, !dbg !2602
  br label %return, !dbg !2602

if.end11:                                         ; preds = %if.end6
  %20 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2603
  %addr_unlock112 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %20, i32 0, i32 5, !dbg !2604
  %21 = load i32, i32* %addr_unlock112, align 4, !dbg !2604
  %22 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2605
  %23 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2606
  %call13 = call i32 @cfi_build_cmd_addr(i32 %21, %struct.map_info* %22, %struct.cfi_private* %23) #9, !dbg !2607
  store i32 %call13, i32* %probe_offset1, align 4, !dbg !2608
  %24 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2609
  %addr_unlock214 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %24, i32 0, i32 6, !dbg !2610
  %25 = load i32, i32* %addr_unlock214, align 8, !dbg !2610
  %26 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2611
  %27 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2612
  %call15 = call i32 @cfi_build_cmd_addr(i32 %25, %struct.map_info* %26, %struct.cfi_private* %27) #9, !dbg !2613
  store i32 %call15, i32* %probe_offset2, align 4, !dbg !2614
  %28 = load i32, i32* %base.addr, align 4, !dbg !2615
  %29 = load i32, i32* %probe_offset1, align 4, !dbg !2617
  %add = add i32 %28, %29, !dbg !2618
  %30 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2619
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %30, i32 0, i32 6, !dbg !2619
  %31 = load i32, i32* %bankwidth, align 4, !dbg !2619
  %add16 = add i32 %add, %31, !dbg !2620
  %conv17 = zext i32 %add16 to i64, !dbg !2621
  %32 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2622
  %size18 = getelementptr inbounds %struct.map_info, %struct.map_info* %32, i32 0, i32 1, !dbg !2623
  %33 = load i64, i64* %size18, align 8, !dbg !2623
  %cmp19 = icmp uge i64 %conv17, %33, !dbg !2624
  br i1 %cmp19, label %if.then28, label %lor.lhs.false, !dbg !2625

lor.lhs.false:                                    ; preds = %if.end11
  %34 = load i32, i32* %base.addr, align 4, !dbg !2626
  %35 = load i32, i32* %probe_offset2, align 4, !dbg !2627
  %add21 = add i32 %34, %35, !dbg !2628
  %36 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2629
  %bankwidth22 = getelementptr inbounds %struct.map_info, %struct.map_info* %36, i32 0, i32 6, !dbg !2629
  %37 = load i32, i32* %bankwidth22, align 4, !dbg !2629
  %add23 = add i32 %add21, %37, !dbg !2630
  %conv24 = zext i32 %add23 to i64, !dbg !2631
  %38 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2632
  %size25 = getelementptr inbounds %struct.map_info, %struct.map_info* %38, i32 0, i32 1, !dbg !2633
  %39 = load i64, i64* %size25, align 8, !dbg !2633
  %cmp26 = icmp uge i64 %conv24, %39, !dbg !2634
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2635

if.then28:                                        ; preds = %lor.lhs.false, %if.end11
  br label %retry, !dbg !2636

if.end29:                                         ; preds = %lor.lhs.false
  %40 = load i32, i32* %base.addr, align 4, !dbg !2637
  %41 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2638
  %42 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2639
  call void @jedec_reset(i32 %40, %struct.map_info* %41, %struct.cfi_private* %42) #9, !dbg !2640
  %43 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2641
  %addr_unlock130 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %43, i32 0, i32 5, !dbg !2643
  %44 = load i32, i32* %addr_unlock130, align 4, !dbg !2643
  %tobool31 = icmp ne i32 %44, 0, !dbg !2641
  br i1 %tobool31, label %if.then32, label %if.end39, !dbg !2644

if.then32:                                        ; preds = %if.end29
  %45 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2645
  %addr_unlock133 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %45, i32 0, i32 5, !dbg !2647
  %46 = load i32, i32* %addr_unlock133, align 4, !dbg !2647
  %47 = load i32, i32* %base.addr, align 4, !dbg !2648
  %48 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2649
  %49 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2650
  %50 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2651
  %device_type34 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %50, i32 0, i32 3, !dbg !2652
  %51 = load i32, i32* %device_type34, align 4, !dbg !2652
  %call35 = call i32 @cfi_send_gen_cmd(i8 zeroext -86, i32 %46, i32 %47, %struct.map_info* %48, %struct.cfi_private* %49, i32 %51, %union.map_word* null) #9, !dbg !2653
  %52 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2654
  %addr_unlock236 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %52, i32 0, i32 6, !dbg !2655
  %53 = load i32, i32* %addr_unlock236, align 8, !dbg !2655
  %54 = load i32, i32* %base.addr, align 4, !dbg !2656
  %55 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2657
  %56 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2658
  %57 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2659
  %device_type37 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %57, i32 0, i32 3, !dbg !2660
  %58 = load i32, i32* %device_type37, align 4, !dbg !2660
  %call38 = call i32 @cfi_send_gen_cmd(i8 zeroext 85, i32 %53, i32 %54, %struct.map_info* %55, %struct.cfi_private* %56, i32 %58, %union.map_word* null) #9, !dbg !2661
  br label %if.end39, !dbg !2662

if.end39:                                         ; preds = %if.then32, %if.end29
  %59 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2663
  %addr_unlock140 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %59, i32 0, i32 5, !dbg !2664
  %60 = load i32, i32* %addr_unlock140, align 4, !dbg !2664
  %61 = load i32, i32* %base.addr, align 4, !dbg !2665
  %62 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2666
  %63 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2667
  %64 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2668
  %device_type41 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %64, i32 0, i32 3, !dbg !2669
  %65 = load i32, i32* %device_type41, align 4, !dbg !2669
  %call42 = call i32 @cfi_send_gen_cmd(i8 zeroext -112, i32 %60, i32 %61, %struct.map_info* %62, %struct.cfi_private* %63, i32 %65, %union.map_word* null) #9, !dbg !2670
  %66 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2671
  %numchips43 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %66, i32 0, i32 11, !dbg !2673
  %67 = load i32, i32* %numchips43, align 8, !dbg !2673
  %tobool44 = icmp ne i32 %67, 0, !dbg !2671
  br i1 %tobool44, label %if.else, label %if.then45, !dbg !2674

if.then45:                                        ; preds = %if.end39
  %68 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2675
  %69 = load i32, i32* %base.addr, align 4, !dbg !2677
  %70 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2678
  %call46 = call i32 @jedec_read_mfr(%struct.map_info* %68, i32 %69, %struct.cfi_private* %70) #9, !dbg !2679
  %71 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2680
  %mfr = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %71, i32 0, i32 9, !dbg !2681
  store i32 %call46, i32* %mfr, align 8, !dbg !2682
  %72 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2683
  %73 = load i32, i32* %base.addr, align 4, !dbg !2684
  %74 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2685
  %call47 = call i32 @jedec_read_id(%struct.map_info* %72, i32 %73, %struct.cfi_private* %74) #9, !dbg !2686
  %75 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2687
  %id = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %75, i32 0, i32 10, !dbg !2688
  store i32 %call47, i32* %id, align 4, !dbg !2689
  store i32 0, i32* %tmp, align 4, !dbg !2690
  %76 = load i32, i32* %tmp, align 4, !dbg !2693
  store i32 0, i32* %i, align 4, !dbg !2694
  br label %for.cond, !dbg !2696

for.cond:                                         ; preds = %for.inc, %if.then45
  %77 = load i32, i32* %i, align 4, !dbg !2697
  %conv48 = sext i32 %77 to i64, !dbg !2697
  %cmp49 = icmp ult i64 %conv48, 120, !dbg !2699
  br i1 %cmp49, label %for.body, label %for.end, !dbg !2700

for.body:                                         ; preds = %for.cond
  %78 = load i32, i32* %base.addr, align 4, !dbg !2701
  %79 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2704
  %80 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2705
  %81 = load i32, i32* %i, align 4, !dbg !2706
  %idxprom51 = sext i32 %81 to i64, !dbg !2707
  %arrayidx52 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom51, !dbg !2707
  %call53 = call i32 @jedec_match(i32 %78, %struct.map_info* %79, %struct.cfi_private* %80, %struct.amd_flash_info* %arrayidx52) #9, !dbg !2708
  %tobool54 = icmp ne i32 %call53, 0, !dbg !2708
  br i1 %tobool54, label %if.then55, label %if.end61, !dbg !2709

if.then55:                                        ; preds = %for.body
  store i32 0, i32* %tmp56, align 4, !dbg !2710
  %82 = load i32, i32* %tmp56, align 4, !dbg !2714
  %83 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2715
  %84 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2717
  %85 = load i32, i32* %i, align 4, !dbg !2718
  %call57 = call i32 @cfi_jedec_setup(%struct.map_info* %83, %struct.cfi_private* %84, i32 %85) #9, !dbg !2719
  %tobool58 = icmp ne i32 %call57, 0, !dbg !2719
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !2720

if.then59:                                        ; preds = %if.then55
  store i32 0, i32* %retval, align 4, !dbg !2721
  br label %return, !dbg !2721

if.end60:                                         ; preds = %if.then55
  br label %ok_out, !dbg !2722

if.end61:                                         ; preds = %for.body
  br label %for.inc, !dbg !2723

for.inc:                                          ; preds = %if.end61
  %86 = load i32, i32* %i, align 4, !dbg !2724
  %inc62 = add i32 %86, 1, !dbg !2724
  store i32 %inc62, i32* %i, align 4, !dbg !2724
  br label %for.cond, !dbg !2725, !llvm.loop !2726

for.end:                                          ; preds = %for.cond
  br label %retry, !dbg !2728

if.else:                                          ; preds = %if.end39
  call void @llvm.dbg.declare(metadata i16* %mfr63, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.declare(metadata i16* %id64, metadata !2732, metadata !DIExpression()), !dbg !2733
  %87 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2734
  %88 = load i32, i32* %base.addr, align 4, !dbg !2735
  %89 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2736
  %call65 = call i32 @jedec_read_mfr(%struct.map_info* %87, i32 %88, %struct.cfi_private* %89) #9, !dbg !2737
  %conv66 = trunc i32 %call65 to i16, !dbg !2737
  store i16 %conv66, i16* %mfr63, align 2, !dbg !2738
  %90 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2739
  %91 = load i32, i32* %base.addr, align 4, !dbg !2740
  %92 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2741
  %call67 = call i32 @jedec_read_id(%struct.map_info* %90, i32 %91, %struct.cfi_private* %92) #9, !dbg !2742
  %conv68 = trunc i32 %call67 to i16, !dbg !2742
  store i16 %conv68, i16* %id64, align 2, !dbg !2743
  %93 = load i16, i16* %mfr63, align 2, !dbg !2744
  %conv69 = zext i16 %93 to i32, !dbg !2744
  %94 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2746
  %mfr70 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %94, i32 0, i32 9, !dbg !2747
  %95 = load i32, i32* %mfr70, align 8, !dbg !2747
  %cmp71 = icmp ne i32 %conv69, %95, !dbg !2748
  br i1 %cmp71, label %if.then78, label %lor.lhs.false73, !dbg !2749

lor.lhs.false73:                                  ; preds = %if.else
  %96 = load i16, i16* %id64, align 2, !dbg !2750
  %conv74 = zext i16 %96 to i32, !dbg !2750
  %97 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2751
  %id75 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %97, i32 0, i32 10, !dbg !2752
  %98 = load i32, i32* %id75, align 4, !dbg !2752
  %cmp76 = icmp ne i32 %conv74, %98, !dbg !2753
  br i1 %cmp76, label %if.then78, label %if.end82, !dbg !2754

if.then78:                                        ; preds = %lor.lhs.false73, %if.else
  %99 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2755
  %name = getelementptr inbounds %struct.map_info, %struct.map_info* %99, i32 0, i32 0, !dbg !2757
  %100 = load i8*, i8** %name, align 8, !dbg !2757
  %101 = load i16, i16* %mfr63, align 2, !dbg !2758
  %conv79 = zext i16 %101 to i32, !dbg !2758
  %102 = load i16, i16* %id64, align 2, !dbg !2759
  %conv80 = zext i16 %102 to i32, !dbg !2759
  %103 = load i32, i32* %base.addr, align 4, !dbg !2760
  %call81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i8* %100, i32 %conv79, i32 %conv80, i32 %103) #10, !dbg !2761
  %104 = load i32, i32* %base.addr, align 4, !dbg !2762
  %105 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2763
  %106 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2764
  call void @jedec_reset(i32 %104, %struct.map_info* %105, %struct.cfi_private* %106) #9, !dbg !2765
  store i32 0, i32* %retval, align 4, !dbg !2766
  br label %return, !dbg !2766

if.end82:                                         ; preds = %lor.lhs.false73
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  store i32 0, i32* %i, align 4, !dbg !2767
  br label %for.cond84, !dbg !2769

for.cond84:                                       ; preds = %for.inc134, %if.end83
  %107 = load i32, i32* %i, align 4, !dbg !2770
  %108 = load i32, i32* %base.addr, align 4, !dbg !2772
  %109 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2773
  %chipshift = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %109, i32 0, i32 13, !dbg !2774
  %110 = load i64, i64* %chipshift, align 8, !dbg !2774
  %sh_prom = trunc i64 %110 to i32, !dbg !2775
  %shr = lshr i32 %108, %sh_prom, !dbg !2775
  %cmp85 = icmp ult i32 %107, %shr, !dbg !2776
  br i1 %cmp85, label %for.body87, label %for.end136, !dbg !2777

for.body87:                                       ; preds = %for.cond84
  call void @llvm.dbg.declare(metadata i64* %start, metadata !2778, metadata !DIExpression()), !dbg !2780
  %111 = load i32, i32* %i, align 4, !dbg !2781
  %conv88 = sext i32 %111 to i64, !dbg !2781
  %112 = load i64*, i64** %chip_map.addr, align 8, !dbg !2783
  %call89 = call zeroext i1 @test_bit(i64 %conv88, i64* %112) #9, !dbg !2784
  br i1 %call89, label %if.end91, label %if.then90, !dbg !2785

if.then90:                                        ; preds = %for.body87
  br label %for.inc134, !dbg !2786

if.end91:                                         ; preds = %for.body87
  %113 = load i32, i32* %i, align 4, !dbg !2788
  %114 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2789
  %chipshift92 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %114, i32 0, i32 13, !dbg !2790
  %115 = load i64, i64* %chipshift92, align 8, !dbg !2790
  %sh_prom93 = trunc i64 %115 to i32, !dbg !2791
  %shl = shl i32 %113, %sh_prom93, !dbg !2791
  %conv94 = sext i32 %shl to i64, !dbg !2788
  store i64 %conv94, i64* %start, align 8, !dbg !2792
  %116 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2793
  %117 = load i64, i64* %start, align 8, !dbg !2795
  %conv95 = trunc i64 %117 to i32, !dbg !2795
  %118 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2796
  %call96 = call i32 @jedec_read_mfr(%struct.map_info* %116, i32 %conv95, %struct.cfi_private* %118) #9, !dbg !2797
  %119 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2798
  %mfr97 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %119, i32 0, i32 9, !dbg !2799
  %120 = load i32, i32* %mfr97, align 8, !dbg !2799
  %cmp98 = icmp eq i32 %call96, %120, !dbg !2800
  br i1 %cmp98, label %land.lhs.true, label %if.end133, !dbg !2801

land.lhs.true:                                    ; preds = %if.end91
  %121 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2802
  %122 = load i64, i64* %start, align 8, !dbg !2803
  %conv100 = trunc i64 %122 to i32, !dbg !2803
  %123 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2804
  %call101 = call i32 @jedec_read_id(%struct.map_info* %121, i32 %conv100, %struct.cfi_private* %123) #9, !dbg !2805
  %124 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2806
  %id102 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %124, i32 0, i32 10, !dbg !2807
  %125 = load i32, i32* %id102, align 4, !dbg !2807
  %cmp103 = icmp eq i32 %call101, %125, !dbg !2808
  br i1 %cmp103, label %if.then105, label %if.end133, !dbg !2809

if.then105:                                       ; preds = %land.lhs.true
  %126 = load i64, i64* %start, align 8, !dbg !2810
  %conv106 = trunc i64 %126 to i32, !dbg !2810
  %127 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2812
  %128 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2813
  call void @jedec_reset(i32 %conv106, %struct.map_info* %127, %struct.cfi_private* %128) #9, !dbg !2814
  %129 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2815
  %130 = load i32, i32* %base.addr, align 4, !dbg !2817
  %131 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2818
  %call107 = call i32 @jedec_read_mfr(%struct.map_info* %129, i32 %130, %struct.cfi_private* %131) #9, !dbg !2819
  %132 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2820
  %mfr108 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %132, i32 0, i32 9, !dbg !2821
  %133 = load i32, i32* %mfr108, align 8, !dbg !2821
  %cmp109 = icmp ne i32 %call107, %133, !dbg !2822
  br i1 %cmp109, label %if.then116, label %lor.lhs.false111, !dbg !2823

lor.lhs.false111:                                 ; preds = %if.then105
  %134 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2824
  %135 = load i32, i32* %base.addr, align 4, !dbg !2825
  %136 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2826
  %call112 = call i32 @jedec_read_id(%struct.map_info* %134, i32 %135, %struct.cfi_private* %136) #9, !dbg !2827
  %137 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2828
  %id113 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %137, i32 0, i32 10, !dbg !2829
  %138 = load i32, i32* %id113, align 4, !dbg !2829
  %cmp114 = icmp ne i32 %call112, %138, !dbg !2830
  br i1 %cmp114, label %if.then116, label %if.end119, !dbg !2831

if.then116:                                       ; preds = %lor.lhs.false111, %if.then105
  %139 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2832
  %name117 = getelementptr inbounds %struct.map_info, %struct.map_info* %139, i32 0, i32 0, !dbg !2834
  %140 = load i8*, i8** %name117, align 8, !dbg !2834
  %141 = load i32, i32* %base.addr, align 4, !dbg !2835
  %142 = load i64, i64* %start, align 8, !dbg !2836
  %call118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %140, i32 %141, i64 %142) #10, !dbg !2837
  store i32 0, i32* %retval, align 4, !dbg !2838
  br label %return, !dbg !2838

if.end119:                                        ; preds = %lor.lhs.false111
  %143 = load i32, i32* %base.addr, align 4, !dbg !2839
  %144 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2840
  %145 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2841
  call void @jedec_reset(i32 %143, %struct.map_info* %144, %struct.cfi_private* %145) #9, !dbg !2842
  %146 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2843
  %147 = load i32, i32* %base.addr, align 4, !dbg !2845
  %148 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2846
  %call120 = call i32 @jedec_read_mfr(%struct.map_info* %146, i32 %147, %struct.cfi_private* %148) #9, !dbg !2847
  %149 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2848
  %mfr121 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %149, i32 0, i32 9, !dbg !2849
  %150 = load i32, i32* %mfr121, align 8, !dbg !2849
  %cmp122 = icmp eq i32 %call120, %150, !dbg !2850
  br i1 %cmp122, label %land.lhs.true124, label %if.end132, !dbg !2851

land.lhs.true124:                                 ; preds = %if.end119
  %151 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2852
  %152 = load i32, i32* %base.addr, align 4, !dbg !2853
  %153 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2854
  %call125 = call i32 @jedec_read_id(%struct.map_info* %151, i32 %152, %struct.cfi_private* %153) #9, !dbg !2855
  %154 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2856
  %id126 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %154, i32 0, i32 10, !dbg !2857
  %155 = load i32, i32* %id126, align 4, !dbg !2857
  %cmp127 = icmp eq i32 %call125, %155, !dbg !2858
  br i1 %cmp127, label %if.then129, label %if.end132, !dbg !2859

if.then129:                                       ; preds = %land.lhs.true124
  %156 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2860
  %name130 = getelementptr inbounds %struct.map_info, %struct.map_info* %156, i32 0, i32 0, !dbg !2862
  %157 = load i8*, i8** %name130, align 8, !dbg !2862
  %158 = load i32, i32* %base.addr, align 4, !dbg !2863
  %159 = load i64, i64* %start, align 8, !dbg !2864
  %call131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %157, i32 %158, i64 %159) #10, !dbg !2865
  store i32 0, i32* %retval, align 4, !dbg !2866
  br label %return, !dbg !2866

if.end132:                                        ; preds = %land.lhs.true124, %if.end119
  br label %if.end133, !dbg !2867

if.end133:                                        ; preds = %if.end132, %land.lhs.true, %if.end91
  br label %for.inc134, !dbg !2868

for.inc134:                                       ; preds = %if.end133, %if.then90
  %160 = load i32, i32* %i, align 4, !dbg !2869
  %inc135 = add i32 %160, 1, !dbg !2869
  store i32 %inc135, i32* %i, align 4, !dbg !2869
  br label %for.cond84, !dbg !2870, !llvm.loop !2871

for.end136:                                       ; preds = %for.cond84
  %161 = load i32, i32* %base.addr, align 4, !dbg !2873
  %162 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2874
  %chipshift137 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %162, i32 0, i32 13, !dbg !2875
  %163 = load i64, i64* %chipshift137, align 8, !dbg !2875
  %sh_prom138 = trunc i64 %163 to i32, !dbg !2876
  %shr139 = lshr i32 %161, %sh_prom138, !dbg !2876
  %conv140 = zext i32 %shr139 to i64, !dbg !2877
  %164 = load i64*, i64** %chip_map.addr, align 8, !dbg !2878
  call void @set_bit(i64 %conv140, i64* %164) #9, !dbg !2879
  %165 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2880
  %numchips141 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %165, i32 0, i32 11, !dbg !2881
  %166 = load i32, i32* %numchips141, align 8, !dbg !2882
  %inc142 = add i32 %166, 1, !dbg !2882
  store i32 %inc142, i32* %numchips141, align 8, !dbg !2882
  br label %ok_out, !dbg !2880

ok_out:                                           ; preds = %for.end136, %if.end60
  call void @llvm.dbg.label(metadata !2883), !dbg !2884
  %167 = load i32, i32* %base.addr, align 4, !dbg !2885
  %168 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2886
  %169 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2887
  call void @jedec_reset(i32 %167, %struct.map_info* %168, %struct.cfi_private* %169) #9, !dbg !2888
  %170 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2889
  %name143 = getelementptr inbounds %struct.map_info, %struct.map_info* %170, i32 0, i32 0, !dbg !2890
  %171 = load i8*, i8** %name143, align 8, !dbg !2890
  %172 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2891
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %172, i32 0, i32 2, !dbg !2891
  %173 = load i32, i32* %interleave, align 8, !dbg !2891
  %174 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2892
  %device_type144 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %174, i32 0, i32 3, !dbg !2893
  %175 = load i32, i32* %device_type144, align 4, !dbg !2893
  %mul = mul i32 %175, 8, !dbg !2894
  %176 = load i32, i32* %base.addr, align 4, !dbg !2895
  %177 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2896
  %bankwidth145 = getelementptr inbounds %struct.map_info, %struct.map_info* %177, i32 0, i32 6, !dbg !2897
  %178 = load i32, i32* %bankwidth145, align 4, !dbg !2897
  %mul146 = mul i32 %178, 8, !dbg !2898
  %call147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %171, i32 %173, i32 %mul, i32 %176, i32 %mul146) #10, !dbg !2899
  store i32 1, i32* %retval, align 4, !dbg !2900
  br label %return, !dbg !2900

return:                                           ; preds = %ok_out, %if.then129, %if.then116, %if.then78, %if.then59, %if.then9, %if.then1
  %179 = load i32, i32* %retval, align 4, !dbg !2901
  ret i32 %179, !dbg !2901
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @cfi_build_cmd_addr(i32, %struct.map_info*, %struct.cfi_private*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @jedec_reset(i32 %base, %struct.map_info* %map, %struct.cfi_private* %cfi) #2 !dbg !2902 {
entry:
  %base.addr = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %tmp = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2907, metadata !DIExpression()), !dbg !2908
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  %0 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2911
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %0, i32 0, i32 5, !dbg !2913
  %1 = load i32, i32* %addr_unlock1, align 4, !dbg !2913
  %tobool = icmp ne i32 %1, 0, !dbg !2911
  br i1 %tobool, label %if.then, label %if.end, !dbg !2914

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2915
  %2 = load i32, i32* %tmp, align 4, !dbg !2919
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2920
  %addr_unlock11 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %3, i32 0, i32 5, !dbg !2921
  %4 = load i32, i32* %addr_unlock11, align 4, !dbg !2921
  %5 = load i32, i32* %base.addr, align 4, !dbg !2922
  %6 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2923
  %7 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2924
  %8 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2925
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %8, i32 0, i32 3, !dbg !2926
  %9 = load i32, i32* %device_type, align 4, !dbg !2926
  %call = call i32 @cfi_send_gen_cmd(i8 zeroext -86, i32 %4, i32 %5, %struct.map_info* %6, %struct.cfi_private* %7, i32 %9, %union.map_word* null) #9, !dbg !2927
  %10 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2928
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %10, i32 0, i32 6, !dbg !2929
  %11 = load i32, i32* %addr_unlock2, align 8, !dbg !2929
  %12 = load i32, i32* %base.addr, align 4, !dbg !2930
  %13 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2931
  %14 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2932
  %15 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2933
  %device_type2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 3, !dbg !2934
  %16 = load i32, i32* %device_type2, align 4, !dbg !2934
  %call3 = call i32 @cfi_send_gen_cmd(i8 zeroext 85, i32 %11, i32 %12, %struct.map_info* %13, %struct.cfi_private* %14, i32 %16, %union.map_word* null) #9, !dbg !2935
  br label %if.end, !dbg !2936

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2937
  %addr_unlock14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %17, i32 0, i32 5, !dbg !2938
  %18 = load i32, i32* %addr_unlock14, align 4, !dbg !2938
  %19 = load i32, i32* %base.addr, align 4, !dbg !2939
  %20 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2940
  %21 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2941
  %22 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2942
  %device_type5 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 3, !dbg !2943
  %23 = load i32, i32* %device_type5, align 4, !dbg !2943
  %call6 = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 %18, i32 %19, %struct.map_info* %20, %struct.cfi_private* %21, i32 %23, %union.map_word* null) #9, !dbg !2944
  %24 = load i32, i32* %base.addr, align 4, !dbg !2945
  %25 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2946
  %26 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2947
  %27 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2948
  %device_type7 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %27, i32 0, i32 3, !dbg !2949
  %28 = load i32, i32* %device_type7, align 4, !dbg !2949
  %call8 = call i32 @cfi_send_gen_cmd(i8 zeroext -1, i32 0, i32 %24, %struct.map_info* %25, %struct.cfi_private* %26, i32 %28, %union.map_word* null) #9, !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: noredzone
declare dso_local i32 @cfi_send_gen_cmd(i8 zeroext, i32, i32, %struct.map_info*, %struct.cfi_private*, i32, %union.map_word*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jedec_read_mfr(%struct.map_info* %map, i32 %base, %struct.cfi_private* %cfi) #2 !dbg !2952 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %base.addr = alloca i32, align 4
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %result = alloca %union.map_word, align 8
  %mask = alloca i64, align 8
  %bank = alloca i32, align 4
  %ofs = alloca i32, align 4
  %tmp = alloca %union.map_word, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata %union.map_word* %result, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.declare(metadata i32* %bank, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i32 0, i32* %bank, align 4, !dbg !2966
  br label %do.body, !dbg !2967

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.dbg.declare(metadata i32* %ofs, metadata !2968, metadata !DIExpression()), !dbg !2970
  %0 = load i32, i32* %bank, align 4, !dbg !2971
  %shl = shl i32 %0, 8, !dbg !2972
  %add = add i32 0, %shl, !dbg !2973
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2974
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2975
  %call = call i32 @cfi_build_cmd_addr(i32 %add, %struct.map_info* %1, %struct.cfi_private* %2) #9, !dbg !2976
  store i32 %call, i32* %ofs, align 4, !dbg !2970
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2977
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %3, i32 0, i32 3, !dbg !2978
  %4 = load i32, i32* %device_type, align 4, !dbg !2978
  %mul = mul i32 %4, 8, !dbg !2979
  %shl1 = shl i32 1, %mul, !dbg !2980
  %sub = sub i32 %shl1, 1, !dbg !2981
  %conv = sext i32 %sub to i64, !dbg !2982
  store i64 %conv, i64* %mask, align 8, !dbg !2983
  %5 = load i32, i32* %ofs, align 4, !dbg !2984
  %conv2 = zext i32 %5 to i64, !dbg !2984
  %6 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2986
  %size = getelementptr inbounds %struct.map_info, %struct.map_info* %6, i32 0, i32 1, !dbg !2987
  %7 = load i64, i64* %size, align 8, !dbg !2987
  %cmp = icmp uge i64 %conv2, %7, !dbg !2988
  br i1 %cmp, label %if.then, label %if.end, !dbg !2989

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval, align 4, !dbg !2990
  br label %return, !dbg !2990

if.end:                                           ; preds = %do.body
  %8 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2991
  %read = getelementptr inbounds %struct.map_info, %struct.map_info* %8, i32 0, i32 7, !dbg !2991
  %9 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read, align 8, !dbg !2991
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2991
  %11 = load i32, i32* %base.addr, align 4, !dbg !2991
  %12 = load i32, i32* %ofs, align 4, !dbg !2991
  %add4 = add i32 %11, %12, !dbg !2991
  %conv5 = zext i32 %add4 to i64, !dbg !2991
  %call6 = call i64 %9(%struct.map_info* %10, i64 %conv5) #9, !dbg !2991
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %tmp, i32 0, i32 0, !dbg !2991
  %13 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !2991
  store i64 %call6, i64* %13, align 8, !dbg !2991
  %14 = bitcast %union.map_word* %result to i8*, !dbg !2991
  %15 = bitcast %union.map_word* %tmp to i8*, !dbg !2991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !2991
  %16 = load i32, i32* %bank, align 4, !dbg !2992
  %inc = add i32 %16, 1, !dbg !2992
  store i32 %inc, i32* %bank, align 4, !dbg !2992
  br label %do.cond, !dbg !2993

do.cond:                                          ; preds = %if.end
  %x = bitcast %union.map_word* %result to [1 x i64]*, !dbg !2994
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 0, !dbg !2995
  %17 = load i64, i64* %arrayidx, align 8, !dbg !2995
  %18 = load i64, i64* %mask, align 8, !dbg !2996
  %and = and i64 %17, %18, !dbg !2997
  %cmp7 = icmp eq i64 %and, 127, !dbg !2998
  br i1 %cmp7, label %do.body, label %do.end, !dbg !2993, !llvm.loop !2999

do.end:                                           ; preds = %do.cond
  %x9 = bitcast %union.map_word* %result to [1 x i64]*, !dbg !3001
  %arrayidx10 = getelementptr [1 x i64], [1 x i64]* %x9, i64 0, i64 0, !dbg !3002
  %19 = load i64, i64* %arrayidx10, align 8, !dbg !3002
  %20 = load i64, i64* %mask, align 8, !dbg !3003
  %and11 = and i64 %19, %20, !dbg !3004
  %conv12 = trunc i64 %and11 to i32, !dbg !3002
  store i32 %conv12, i32* %retval, align 4, !dbg !3005
  br label %return, !dbg !3005

return:                                           ; preds = %do.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !3006
  ret i32 %21, !dbg !3006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jedec_read_id(%struct.map_info* %map, i32 %base, %struct.cfi_private* %cfi) #2 !dbg !3007 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  %base.addr = alloca i32, align 4
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %result = alloca %union.map_word, align 8
  %mask = alloca i64, align 8
  %ofs = alloca i32, align 4
  %tmp = alloca %union.map_word, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.declare(metadata %union.map_word* %result, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.declare(metadata i32* %ofs, metadata !3018, metadata !DIExpression()), !dbg !3019
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3020
  %1 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3021
  %call = call i32 @cfi_build_cmd_addr(i32 1, %struct.map_info* %0, %struct.cfi_private* %1) #9, !dbg !3022
  store i32 %call, i32* %ofs, align 4, !dbg !3019
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3023
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %2, i32 0, i32 3, !dbg !3024
  %3 = load i32, i32* %device_type, align 4, !dbg !3024
  %mul = mul i32 %3, 8, !dbg !3025
  %shl = shl i32 1, %mul, !dbg !3026
  %sub = sub i32 %shl, 1, !dbg !3027
  %conv = sext i32 %sub to i64, !dbg !3028
  store i64 %conv, i64* %mask, align 8, !dbg !3029
  %4 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3030
  %read = getelementptr inbounds %struct.map_info, %struct.map_info* %4, i32 0, i32 7, !dbg !3030
  %5 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read, align 8, !dbg !3030
  %6 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3030
  %7 = load i32, i32* %base.addr, align 4, !dbg !3030
  %8 = load i32, i32* %ofs, align 4, !dbg !3030
  %add = add i32 %7, %8, !dbg !3030
  %conv1 = zext i32 %add to i64, !dbg !3030
  %call2 = call i64 %5(%struct.map_info* %6, i64 %conv1) #9, !dbg !3030
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %tmp, i32 0, i32 0, !dbg !3030
  %9 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !3030
  store i64 %call2, i64* %9, align 8, !dbg !3030
  %10 = bitcast %union.map_word* %result to i8*, !dbg !3030
  %11 = bitcast %union.map_word* %tmp to i8*, !dbg !3030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !3030
  %x = bitcast %union.map_word* %result to [1 x i64]*, !dbg !3031
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 0, !dbg !3032
  %12 = load i64, i64* %arrayidx, align 8, !dbg !3032
  %13 = load i64, i64* %mask, align 8, !dbg !3033
  %and = and i64 %12, %13, !dbg !3034
  %conv3 = trunc i64 %and to i32, !dbg !3032
  ret i32 %conv3, !dbg !3035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @jedec_match(i32 %base, %struct.map_info* %map, %struct.cfi_private* %cfi, %struct.amd_flash_info* %finfo) #2 !dbg !3036 {
entry:
  %base.addr = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %finfo.addr = alloca %struct.amd_flash_info*, align 8
  %rc = alloca i32, align 4
  %mfr = alloca i32, align 4
  %id = alloca i32, align 4
  %uaddr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !3044, metadata !DIExpression()), !dbg !3045
  store %struct.amd_flash_info* %finfo, %struct.amd_flash_info** %finfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_flash_info** %finfo.addr, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3048, metadata !DIExpression()), !dbg !3049
  store i32 0, i32* %rc, align 4, !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %mfr, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata i32* %id, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata i8* %uaddr, metadata !3054, metadata !DIExpression()), !dbg !3055
  %0 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3056
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %0, i32 0, i32 3, !dbg !3057
  %1 = load i32, i32* %device_type, align 4, !dbg !3057
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 4, label %sw.bb12
  ], !dbg !3058

sw.bb:                                            ; preds = %entry
  %2 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3059
  %mfr_id = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %2, i32 0, i32 1, !dbg !3061
  %3 = load i16, i16* %mfr_id, align 8, !dbg !3061
  %conv = trunc i16 %3 to i8, !dbg !3062
  %conv1 = zext i8 %conv to i32, !dbg !3062
  store i32 %conv1, i32* %mfr, align 4, !dbg !3063
  %4 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3064
  %dev_id = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %4, i32 0, i32 2, !dbg !3065
  %5 = load i16, i16* %dev_id, align 2, !dbg !3065
  %conv2 = trunc i16 %5 to i8, !dbg !3066
  %conv3 = zext i8 %conv2 to i32, !dbg !3066
  store i32 %conv3, i32* %id, align 4, !dbg !3067
  %6 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3068
  %dev_id4 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %6, i32 0, i32 2, !dbg !3070
  %7 = load i16, i16* %dev_id4, align 2, !dbg !3070
  %conv5 = zext i16 %7 to i32, !dbg !3068
  %cmp = icmp sgt i32 %conv5, 255, !dbg !3071
  br i1 %cmp, label %if.then, label %if.end, !dbg !3072

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %tmp, align 4, !dbg !3073
  %8 = load i32, i32* %tmp, align 4, !dbg !3077
  br label %match_done, !dbg !3078

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !3079

sw.bb7:                                           ; preds = %entry
  %9 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3080
  %mfr_id8 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %9, i32 0, i32 1, !dbg !3081
  %10 = load i16, i16* %mfr_id8, align 8, !dbg !3081
  %conv9 = zext i16 %10 to i32, !dbg !3082
  store i32 %conv9, i32* %mfr, align 4, !dbg !3083
  %11 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3084
  %dev_id10 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %11, i32 0, i32 2, !dbg !3085
  %12 = load i16, i16* %dev_id10, align 2, !dbg !3085
  %conv11 = zext i16 %12 to i32, !dbg !3086
  store i32 %conv11, i32* %id, align 4, !dbg !3087
  br label %sw.epilog, !dbg !3088

sw.bb12:                                          ; preds = %entry
  %13 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3089
  %mfr_id13 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %13, i32 0, i32 1, !dbg !3090
  %14 = load i16, i16* %mfr_id13, align 8, !dbg !3090
  %conv14 = zext i16 %14 to i32, !dbg !3091
  store i32 %conv14, i32* %mfr, align 4, !dbg !3092
  %15 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3093
  %dev_id15 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %15, i32 0, i32 2, !dbg !3094
  %16 = load i16, i16* %dev_id15, align 2, !dbg !3094
  %conv16 = zext i16 %16 to i32, !dbg !3095
  store i32 %conv16, i32* %id, align 4, !dbg !3096
  br label %sw.epilog, !dbg !3097

sw.default:                                       ; preds = %entry
  %17 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3098
  %device_type17 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %17, i32 0, i32 3, !dbg !3099
  %18 = load i32, i32* %device_type17, align 4, !dbg !3099
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.jedec_match, i64 0, i64 0), i32 %18) #10, !dbg !3100
  br label %match_done, !dbg !3101

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb7, %if.end
  %19 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3102
  %mfr18 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %19, i32 0, i32 9, !dbg !3104
  %20 = load i32, i32* %mfr18, align 8, !dbg !3104
  %21 = load i32, i32* %mfr, align 4, !dbg !3105
  %cmp19 = icmp ne i32 %20, %21, !dbg !3106
  br i1 %cmp19, label %if.then24, label %lor.lhs.false, !dbg !3107

lor.lhs.false:                                    ; preds = %sw.epilog
  %22 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3108
  %id21 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 10, !dbg !3109
  %23 = load i32, i32* %id21, align 4, !dbg !3109
  %24 = load i32, i32* %id, align 4, !dbg !3110
  %cmp22 = icmp ne i32 %23, %24, !dbg !3111
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !3112

if.then24:                                        ; preds = %lor.lhs.false, %sw.epilog
  br label %match_done, !dbg !3113

if.end25:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %tmp26, align 4, !dbg !3115
  %25 = load i32, i32* %tmp26, align 4, !dbg !3118
  %26 = load i32, i32* %base.addr, align 4, !dbg !3119
  %27 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3121
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %27, i32 0, i32 2, !dbg !3121
  %28 = load i32, i32* %interleave, align 8, !dbg !3121
  %29 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3122
  %dev_size = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %29, i32 0, i32 3, !dbg !3123
  %30 = load i8, i8* %dev_size, align 4, !dbg !3123
  %conv27 = zext i8 %30 to i32, !dbg !3122
  %shl = shl i32 1, %conv27, !dbg !3124
  %mul = mul i32 %28, %shl, !dbg !3125
  %add = add i32 %26, %mul, !dbg !3126
  %conv28 = zext i32 %add to i64, !dbg !3119
  %31 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3127
  %size = getelementptr inbounds %struct.map_info, %struct.map_info* %31, i32 0, i32 1, !dbg !3128
  %32 = load i64, i64* %size, align 8, !dbg !3128
  %cmp29 = icmp ugt i64 %conv28, %32, !dbg !3129
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !3130

if.then31:                                        ; preds = %if.end25
  store i32 0, i32* %tmp32, align 4, !dbg !3131
  %33 = load i32, i32* %tmp32, align 4, !dbg !3135
  br label %match_done, !dbg !3136

if.end33:                                         ; preds = %if.end25
  %34 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3137
  %devtypes = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %34, i32 0, i32 7, !dbg !3139
  %35 = load i8, i8* %devtypes, align 8, !dbg !3139
  %conv34 = zext i8 %35 to i32, !dbg !3137
  %36 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3140
  %device_type35 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %36, i32 0, i32 3, !dbg !3141
  %37 = load i32, i32* %device_type35, align 4, !dbg !3141
  %and = and i32 %conv34, %37, !dbg !3142
  %tobool = icmp ne i32 %and, 0, !dbg !3142
  br i1 %tobool, label %if.end37, label %if.then36, !dbg !3143

if.then36:                                        ; preds = %if.end33
  br label %match_done, !dbg !3144

if.end37:                                         ; preds = %if.end33
  %38 = load %struct.amd_flash_info*, %struct.amd_flash_info** %finfo.addr, align 8, !dbg !3145
  %uaddr38 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %38, i32 0, i32 8, !dbg !3146
  %39 = load i8, i8* %uaddr38, align 1, !dbg !3146
  store i8 %39, i8* %uaddr, align 1, !dbg !3147
  store i32 0, i32* %tmp39, align 4, !dbg !3148
  %40 = load i32, i32* %tmp39, align 4, !dbg !3151
  %41 = load i8, i8* %uaddr, align 1, !dbg !3152
  %conv40 = zext i8 %41 to i32, !dbg !3152
  %cmp41 = icmp ne i32 8, %conv40, !dbg !3154
  br i1 %cmp41, label %land.lhs.true, label %if.end59, !dbg !3155

land.lhs.true:                                    ; preds = %if.end37
  %42 = load i8, i8* %uaddr, align 1, !dbg !3156
  %conv43 = zext i8 %42 to i32, !dbg !3156
  %cmp44 = icmp ne i32 7, %conv43, !dbg !3157
  br i1 %cmp44, label %land.lhs.true46, label %if.end59, !dbg !3158

land.lhs.true46:                                  ; preds = %land.lhs.true
  %43 = load i8, i8* %uaddr, align 1, !dbg !3159
  %idxprom = zext i8 %43 to i64, !dbg !3160
  %arrayidx = getelementptr [9 x %struct.unlock_addr], [9 x %struct.unlock_addr]* @unlock_addrs, i64 0, i64 %idxprom, !dbg !3160
  %addr1 = getelementptr inbounds %struct.unlock_addr, %struct.unlock_addr* %arrayidx, i32 0, i32 0, !dbg !3161
  %44 = load i32, i32* %addr1, align 8, !dbg !3161
  %45 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3162
  %device_type47 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %45, i32 0, i32 3, !dbg !3163
  %46 = load i32, i32* %device_type47, align 4, !dbg !3163
  %div = udiv i32 %44, %46, !dbg !3164
  %47 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3165
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %47, i32 0, i32 5, !dbg !3166
  %48 = load i32, i32* %addr_unlock1, align 4, !dbg !3166
  %cmp48 = icmp ne i32 %div, %48, !dbg !3167
  br i1 %cmp48, label %if.then57, label %lor.lhs.false50, !dbg !3168

lor.lhs.false50:                                  ; preds = %land.lhs.true46
  %49 = load i8, i8* %uaddr, align 1, !dbg !3169
  %idxprom51 = zext i8 %49 to i64, !dbg !3170
  %arrayidx52 = getelementptr [9 x %struct.unlock_addr], [9 x %struct.unlock_addr]* @unlock_addrs, i64 0, i64 %idxprom51, !dbg !3170
  %addr2 = getelementptr inbounds %struct.unlock_addr, %struct.unlock_addr* %arrayidx52, i32 0, i32 1, !dbg !3171
  %50 = load i32, i32* %addr2, align 4, !dbg !3171
  %51 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3172
  %device_type53 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %51, i32 0, i32 3, !dbg !3173
  %52 = load i32, i32* %device_type53, align 4, !dbg !3173
  %div54 = udiv i32 %50, %52, !dbg !3174
  %53 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3175
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %53, i32 0, i32 6, !dbg !3176
  %54 = load i32, i32* %addr_unlock2, align 8, !dbg !3176
  %cmp55 = icmp ne i32 %div54, %54, !dbg !3177
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !3178

if.then57:                                        ; preds = %lor.lhs.false50, %land.lhs.true46
  store i32 0, i32* %tmp58, align 4, !dbg !3179
  %55 = load i32, i32* %tmp58, align 4, !dbg !3183
  br label %match_done, !dbg !3184

if.end59:                                         ; preds = %lor.lhs.false50, %land.lhs.true, %if.end37
  store i32 0, i32* %tmp60, align 4, !dbg !3185
  %56 = load i32, i32* %tmp60, align 4, !dbg !3188
  %57 = load i32, i32* %base.addr, align 4, !dbg !3189
  %58 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3190
  %59 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3191
  call void @jedec_reset(i32 %57, %struct.map_info* %58, %struct.cfi_private* %59) #9, !dbg !3192
  %60 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3193
  %61 = load i32, i32* %base.addr, align 4, !dbg !3194
  %62 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3195
  %call61 = call i32 @jedec_read_mfr(%struct.map_info* %60, i32 %61, %struct.cfi_private* %62) #9, !dbg !3196
  store i32 %call61, i32* %mfr, align 4, !dbg !3197
  %63 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3198
  %64 = load i32, i32* %base.addr, align 4, !dbg !3199
  %65 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3200
  %call62 = call i32 @jedec_read_id(%struct.map_info* %63, i32 %64, %struct.cfi_private* %65) #9, !dbg !3201
  store i32 %call62, i32* %id, align 4, !dbg !3202
  %66 = load i32, i32* %mfr, align 4, !dbg !3203
  %67 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3205
  %mfr63 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %67, i32 0, i32 9, !dbg !3206
  %68 = load i32, i32* %mfr63, align 8, !dbg !3206
  %cmp64 = icmp eq i32 %66, %68, !dbg !3207
  br i1 %cmp64, label %land.lhs.true66, label %if.end72, !dbg !3208

land.lhs.true66:                                  ; preds = %if.end59
  %69 = load i32, i32* %id, align 4, !dbg !3209
  %70 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3210
  %id67 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %70, i32 0, i32 10, !dbg !3211
  %71 = load i32, i32* %id67, align 4, !dbg !3211
  %cmp68 = icmp eq i32 %69, %71, !dbg !3212
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !3213

if.then70:                                        ; preds = %land.lhs.true66
  store i32 0, i32* %tmp71, align 4, !dbg !3214
  %72 = load i32, i32* %tmp71, align 4, !dbg !3218
  br label %match_done, !dbg !3219

if.end72:                                         ; preds = %land.lhs.true66, %if.end59
  store i32 1, i32* %rc, align 4, !dbg !3220
  store i32 0, i32* %tmp73, align 4, !dbg !3221
  %73 = load i32, i32* %tmp73, align 4, !dbg !3224
  %74 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3225
  %addr_unlock174 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %74, i32 0, i32 5, !dbg !3227
  %75 = load i32, i32* %addr_unlock174, align 4, !dbg !3227
  %tobool75 = icmp ne i32 %75, 0, !dbg !3225
  br i1 %tobool75, label %if.then76, label %if.end83, !dbg !3228

if.then76:                                        ; preds = %if.end72
  %76 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3229
  %addr_unlock177 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %76, i32 0, i32 5, !dbg !3231
  %77 = load i32, i32* %addr_unlock177, align 4, !dbg !3231
  %78 = load i32, i32* %base.addr, align 4, !dbg !3232
  %79 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3233
  %80 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3234
  %81 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3235
  %device_type78 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %81, i32 0, i32 3, !dbg !3236
  %82 = load i32, i32* %device_type78, align 4, !dbg !3236
  %call79 = call i32 @cfi_send_gen_cmd(i8 zeroext -86, i32 %77, i32 %78, %struct.map_info* %79, %struct.cfi_private* %80, i32 %82, %union.map_word* null) #9, !dbg !3237
  %83 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3238
  %addr_unlock280 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %83, i32 0, i32 6, !dbg !3239
  %84 = load i32, i32* %addr_unlock280, align 8, !dbg !3239
  %85 = load i32, i32* %base.addr, align 4, !dbg !3240
  %86 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3241
  %87 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3242
  %88 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3243
  %device_type81 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %88, i32 0, i32 3, !dbg !3244
  %89 = load i32, i32* %device_type81, align 4, !dbg !3244
  %call82 = call i32 @cfi_send_gen_cmd(i8 zeroext 85, i32 %84, i32 %85, %struct.map_info* %86, %struct.cfi_private* %87, i32 %89, %union.map_word* null) #9, !dbg !3245
  br label %if.end83, !dbg !3246

if.end83:                                         ; preds = %if.then76, %if.end72
  %90 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3247
  %addr_unlock184 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %90, i32 0, i32 5, !dbg !3248
  %91 = load i32, i32* %addr_unlock184, align 4, !dbg !3248
  %92 = load i32, i32* %base.addr, align 4, !dbg !3249
  %93 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3250
  %94 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3251
  %95 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3252
  %device_type85 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %95, i32 0, i32 3, !dbg !3253
  %96 = load i32, i32* %device_type85, align 4, !dbg !3253
  %call86 = call i32 @cfi_send_gen_cmd(i8 zeroext -112, i32 %91, i32 %92, %struct.map_info* %93, %struct.cfi_private* %94, i32 %96, %union.map_word* null) #9, !dbg !3254
  br label %match_done, !dbg !3254

match_done:                                       ; preds = %if.end83, %if.then70, %if.then57, %if.then36, %if.then31, %if.then24, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !3255), !dbg !3256
  %97 = load i32, i32* %rc, align 4, !dbg !3257
  ret i32 %97, !dbg !3258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cfi_jedec_setup(%struct.map_info* %map, %struct.cfi_private* %cfi, i32 %index) #2 !dbg !3259 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3262, metadata !DIExpression()), !dbg !3266
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3274, metadata !DIExpression()), !dbg !3275
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3276, metadata !DIExpression()), !dbg !3277
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3278, metadata !DIExpression()), !dbg !3279
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3280, metadata !DIExpression()), !dbg !3284
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3286, metadata !DIExpression()), !dbg !3290
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3292, metadata !DIExpression()), !dbg !3296
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3301, metadata !DIExpression()), !dbg !3302
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3303, metadata !DIExpression()), !dbg !3304
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3305, metadata !DIExpression()), !dbg !3306
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3307, metadata !DIExpression()), !dbg !3308
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3309, metadata !DIExpression()), !dbg !3310
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3311, metadata !DIExpression()), !dbg !3312
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3313, metadata !DIExpression()), !dbg !3314
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3315, metadata !DIExpression()), !dbg !3316
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %num_erase_regions = alloca i32, align 4
  %uaddr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp23 = alloca %union.map_word, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3317, metadata !DIExpression()), !dbg !3318
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !3319, metadata !DIExpression()), !dbg !3320
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3321, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3323, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.declare(metadata i32* %num_erase_regions, metadata !3325, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.declare(metadata i8* %uaddr, metadata !3327, metadata !DIExpression()), !dbg !3328
  %0 = load i32, i32* %index.addr, align 4, !dbg !3329
  %idxprom = sext i32 %0 to i64, !dbg !3331
  %arrayidx = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom, !dbg !3331
  %devtypes = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx, i32 0, i32 7, !dbg !3332
  %1 = load i8, i8* %devtypes, align 8, !dbg !3332
  %conv = zext i8 %1 to i32, !dbg !3331
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3333
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %2, i32 0, i32 3, !dbg !3334
  %3 = load i32, i32* %device_type, align 4, !dbg !3334
  %and = and i32 %conv, %3, !dbg !3335
  %tobool = icmp ne i32 %and, 0, !dbg !3335
  br i1 %tobool, label %if.end, label %if.then, !dbg !3336

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !3337
  %4 = load i32, i32* %tmp, align 4, !dbg !3341
  store i32 0, i32* %retval, align 4, !dbg !3342
  br label %return, !dbg !3342

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %index.addr, align 4, !dbg !3343
  %idxprom1 = sext i32 %5 to i64, !dbg !3344
  %arrayidx2 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom1, !dbg !3344
  %name = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx2, i32 0, i32 0, !dbg !3345
  %6 = load i8*, i8** %name, align 16, !dbg !3345
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i64 0, i64 0), i8* %6) #10, !dbg !3346
  %7 = load i32, i32* %index.addr, align 4, !dbg !3347
  %idxprom3 = sext i32 %7 to i64, !dbg !3348
  %arrayidx4 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom3, !dbg !3348
  %nr_regions = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx4, i32 0, i32 4, !dbg !3349
  %8 = load i8, i8* %nr_regions, align 1, !dbg !3349
  %conv5 = zext i8 %8 to i32, !dbg !3348
  store i32 %conv5, i32* %num_erase_regions, align 4, !dbg !3350
  %9 = load i32, i32* %num_erase_regions, align 4, !dbg !3351
  %mul = mul i32 %9, 4, !dbg !3352
  %conv6 = sext i32 %mul to i64, !dbg !3351
  %add = add i64 29, %conv6, !dbg !3353
  store i64 %add, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !3354
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #11, !dbg !3355
  br i1 %11, label %if.then.i, label %if.end9.i, !dbg !3356

if.then.i:                                        ; preds = %if.end
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !3357
  %cmp.i = icmp ugt i64 %12, 8192, !dbg !3358
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3359

if.then1.i:                                       ; preds = %if.then.i
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !3360
  %14 = load i32, i32* %flags.addr.i, align 4, !dbg !3361
  store i64 %13, i64* %size.addr.i.i, align 8
  store i32 %14, i32* %flags.addr.i.i, align 4
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !3362
  %call.i.i = call i32 @get_order(i64 %15) #12, !dbg !3363
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3310
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !3364
  %17 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3365
  %18 = load i32, i32* %order.i.i, align 4, !dbg !3366
  store i64 %16, i64* %size.addr.i.i.i, align 8
  store i32 %17, i32* %flags.addr.i.i.i, align 4
  store i32 %18, i32* %order.addr.i.i.i, align 4
  %19 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3367
  %20 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3368
  %21 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3369
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %19, i32 %20, i32 %21) #13, !dbg !3370
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3370
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3370
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3370
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3370
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3371
  br label %kmalloc.exit, !dbg !3371

if.end.i:                                         ; preds = %if.then.i
  %22 = load i64, i64* %size.addr.i, align 8, !dbg !3372
  store i64 %22, i64* %size.addr.i11.i, align 8
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3373
  %tobool.i.i = icmp ne i64 %23, 0, !dbg !3373
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3375

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3376
  br label %kmalloc_index.exit.i, !dbg !3376

if.end.i.i:                                       ; preds = %if.end.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3377
  %cmp.i.i = icmp ule i64 %24, 8, !dbg !3379
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3380

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3381
  br label %kmalloc_index.exit.i, !dbg !3381

if.end2.i.i:                                      ; preds = %if.end.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3382
  %cmp3.i.i = icmp ugt i64 %25, 64, !dbg !3384
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3385

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3386
  %cmp4.i.i = icmp ule i64 %26, 96, !dbg !3387
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3388

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3389
  br label %kmalloc_index.exit.i, !dbg !3389

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3390
  %cmp7.i.i = icmp ugt i64 %27, 128, !dbg !3392
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3393

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3394
  %cmp9.i.i = icmp ule i64 %28, 192, !dbg !3395
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3396

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3397
  br label %kmalloc_index.exit.i, !dbg !3397

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3398
  %cmp12.i.i = icmp ule i64 %29, 8, !dbg !3400
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3401

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3402
  br label %kmalloc_index.exit.i, !dbg !3402

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3403
  %cmp15.i.i = icmp ule i64 %30, 16, !dbg !3405
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3406

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3407
  br label %kmalloc_index.exit.i, !dbg !3407

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3408
  %cmp18.i.i = icmp ule i64 %31, 32, !dbg !3410
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3411

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3412
  br label %kmalloc_index.exit.i, !dbg !3412

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3413
  %cmp21.i.i = icmp ule i64 %32, 64, !dbg !3415
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3416

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3417
  br label %kmalloc_index.exit.i, !dbg !3417

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3418
  %cmp24.i.i = icmp ule i64 %33, 128, !dbg !3420
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3421

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3422
  br label %kmalloc_index.exit.i, !dbg !3422

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3423
  %cmp27.i.i = icmp ule i64 %34, 256, !dbg !3425
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3426

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3427
  br label %kmalloc_index.exit.i, !dbg !3427

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3428
  %cmp30.i.i = icmp ule i64 %35, 512, !dbg !3430
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3431

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3432
  br label %kmalloc_index.exit.i, !dbg !3432

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3433
  %cmp33.i.i = icmp ule i64 %36, 1024, !dbg !3435
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3436

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3437
  br label %kmalloc_index.exit.i, !dbg !3437

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3438
  %cmp36.i.i = icmp ule i64 %37, 2048, !dbg !3440
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3441

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3442
  br label %kmalloc_index.exit.i, !dbg !3442

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3443
  %cmp39.i.i = icmp ule i64 %38, 4096, !dbg !3445
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3446

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3447
  br label %kmalloc_index.exit.i, !dbg !3447

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3448
  %cmp42.i.i = icmp ule i64 %39, 8192, !dbg !3450
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3451

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3452
  br label %kmalloc_index.exit.i, !dbg !3452

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3453
  %cmp45.i.i = icmp ule i64 %40, 16384, !dbg !3455
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3456

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3457
  br label %kmalloc_index.exit.i, !dbg !3457

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3458
  %cmp48.i.i = icmp ule i64 %41, 32768, !dbg !3460
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3461

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3462
  br label %kmalloc_index.exit.i, !dbg !3462

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3463
  %cmp51.i.i = icmp ule i64 %42, 65536, !dbg !3465
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3466

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3467
  br label %kmalloc_index.exit.i, !dbg !3467

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3468
  %cmp54.i.i = icmp ule i64 %43, 131072, !dbg !3470
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3471

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3472
  br label %kmalloc_index.exit.i, !dbg !3472

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3473
  %cmp57.i.i = icmp ule i64 %44, 262144, !dbg !3475
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3476

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3477
  br label %kmalloc_index.exit.i, !dbg !3477

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3478
  %cmp60.i.i = icmp ule i64 %45, 524288, !dbg !3480
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3481

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3482
  br label %kmalloc_index.exit.i, !dbg !3482

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3483
  %cmp63.i.i = icmp ule i64 %46, 1048576, !dbg !3485
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3486

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3487
  br label %kmalloc_index.exit.i, !dbg !3487

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3488
  %cmp66.i.i = icmp ule i64 %47, 2097152, !dbg !3490
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3491

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3492
  br label %kmalloc_index.exit.i, !dbg !3492

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3493
  %cmp69.i.i = icmp ule i64 %48, 4194304, !dbg !3495
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3496

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3497
  br label %kmalloc_index.exit.i, !dbg !3497

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3498
  %cmp72.i.i = icmp ule i64 %49, 8388608, !dbg !3500
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3501

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3502
  br label %kmalloc_index.exit.i, !dbg !3502

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3503
  %cmp75.i.i = icmp ule i64 %50, 16777216, !dbg !3505
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3506

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3507
  br label %kmalloc_index.exit.i, !dbg !3507

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3508
  %cmp78.i.i = icmp ule i64 %51, 33554432, !dbg !3510
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3511

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3512
  br label %kmalloc_index.exit.i, !dbg !3512

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3513
  %cmp81.i.i = icmp ule i64 %52, 67108864, !dbg !3515
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3516

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3517
  br label %kmalloc_index.exit.i, !dbg !3517

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3518, !srcloc !3521
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !3522, !srcloc !3525
  unreachable, !dbg !3526

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %53 = load i32, i32* %retval.i.i, align 4, !dbg !3527
  store i32 %53, i32* %index.i, align 4, !dbg !3528
  %54 = load i32, i32* %index.i, align 4, !dbg !3529
  %tobool.i = icmp ne i32 %54, 0, !dbg !3529
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3531

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3532
  br label %kmalloc.exit, !dbg !3532

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !3533
  store i32 %55, i32* %flags.addr.i13.i, align 4
  %56 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3534
  %and.i.i = and i32 %56, 17, !dbg !3534
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3534
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3534
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3534
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3534
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3536

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3537
  br label %kmalloc_type.exit.i, !dbg !3537

if.end.i16.i:                                     ; preds = %if.end4.i
  %57 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3538
  %and2.i.i = and i32 %57, 1, !dbg !3539
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3538
  %58 = zext i1 %tobool3.i.i to i64, !dbg !3538
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3538
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3540
  br label %kmalloc_type.exit.i, !dbg !3540

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %59 = load i32, i32* %retval.i12.i, align 4, !dbg !3541
  %idxprom.i = zext i32 %59 to i64, !dbg !3542
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3542
  %60 = load i32, i32* %index.i, align 4, !dbg !3543
  %idxprom6.i = zext i32 %60 to i64, !dbg !3542
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3542
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3542
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !3544
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3545
  store %struct.kmem_cache* %61, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %62, i32* %flags.addr.i17.i, align 4
  store i64 %63, i64* %size.addr.i18.i, align 8
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3546
  %65 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3547
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %64, i32 %65) #13, !dbg !3548
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3548
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3548
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3548
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3548
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3279
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3549
  %67 = load i8*, i8** %ret.i.i, align 8, !dbg !3550
  %68 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3551
  %69 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3552
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %66, i8* %67, i64 %68, i32 %69) #13, !dbg !3553
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3554
  %70 = load i8*, i8** %ret.i.i, align 8, !dbg !3555
  store i8* %70, i8** %retval.i, align 8, !dbg !3556
  br label %kmalloc.exit, !dbg !3556

if.end9.i:                                        ; preds = %if.end
  %71 = load i64, i64* %size.addr.i, align 8, !dbg !3557
  %72 = load i32, i32* %flags.addr.i, align 4, !dbg !3558
  %call10.i = call noalias i8* @__kmalloc(i64 %71, i32 %72) #13, !dbg !3559
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3559
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3559
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3559
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3559
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3560
  br label %kmalloc.exit, !dbg !3560

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %73 = load i8*, i8** %retval.i, align 8, !dbg !3561
  %74 = bitcast i8* %73 to %struct.cfi_ident*, !dbg !3562
  %75 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3563
  %cfiq = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %75, i32 0, i32 8, !dbg !3564
  store %struct.cfi_ident* %74, %struct.cfi_ident** %cfiq, align 8, !dbg !3565
  %76 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3566
  %cfiq8 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %76, i32 0, i32 8, !dbg !3568
  %77 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq8, align 8, !dbg !3568
  %tobool9 = icmp ne %struct.cfi_ident* %77, null, !dbg !3566
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3569

if.then10:                                        ; preds = %kmalloc.exit
  store i32 0, i32* %retval, align 4, !dbg !3570
  br label %return, !dbg !3570

if.end11:                                         ; preds = %kmalloc.exit
  %78 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3572
  %cfiq12 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %78, i32 0, i32 8, !dbg !3573
  %79 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq12, align 8, !dbg !3573
  %80 = bitcast %struct.cfi_ident* %79 to i8*, !dbg !3574
  call void @llvm.memset.p0i8.i64(i8* align 1 %80, i8 0, i64 29, i1 false), !dbg !3574
  %81 = load i32, i32* %index.addr, align 4, !dbg !3575
  %idxprom13 = sext i32 %81 to i64, !dbg !3576
  %arrayidx14 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom13, !dbg !3576
  %cmd_set = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx14, i32 0, i32 5, !dbg !3577
  %82 = load i16, i16* %cmd_set, align 2, !dbg !3577
  %83 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3578
  %cfiq15 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %83, i32 0, i32 8, !dbg !3579
  %84 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq15, align 8, !dbg !3579
  %P_ID = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %84, i32 0, i32 1, !dbg !3580
  store i16 %82, i16* %P_ID, align 1, !dbg !3581
  %85 = load i32, i32* %index.addr, align 4, !dbg !3582
  %idxprom16 = sext i32 %85 to i64, !dbg !3583
  %arrayidx17 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom16, !dbg !3583
  %nr_regions18 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx17, i32 0, i32 4, !dbg !3584
  %86 = load i8, i8* %nr_regions18, align 1, !dbg !3584
  %87 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3585
  %cfiq19 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %87, i32 0, i32 8, !dbg !3586
  %88 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq19, align 8, !dbg !3586
  %NumEraseRegions = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %88, i32 0, i32 20, !dbg !3587
  store i8 %86, i8* %NumEraseRegions, align 1, !dbg !3588
  %89 = load i32, i32* %index.addr, align 4, !dbg !3589
  %idxprom20 = sext i32 %89 to i64, !dbg !3590
  %arrayidx21 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom20, !dbg !3590
  %dev_size = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx21, i32 0, i32 3, !dbg !3591
  %90 = load i8, i8* %dev_size, align 4, !dbg !3591
  %91 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3592
  %cfiq22 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %91, i32 0, i32 8, !dbg !3593
  %92 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq22, align 8, !dbg !3593
  %DevSize = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %92, i32 0, i32 17, !dbg !3594
  store i8 %90, i8* %DevSize, align 1, !dbg !3595
  %93 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3596
  %cfi_mode = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %93, i32 0, i32 4, !dbg !3597
  store i32 0, i32* %cfi_mode, align 8, !dbg !3598
  %94 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3599
  %sector_erase_cmd = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %94, i32 0, i32 12, !dbg !3600
  %95 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3601
  %96 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3601
  %call24 = call i64 @cfi_build_cmd(i64 48, %struct.map_info* %95, %struct.cfi_private* %96) #9, !dbg !3601
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %tmp23, i32 0, i32 0, !dbg !3601
  %97 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !3601
  store i64 %call24, i64* %97, align 8, !dbg !3601
  %98 = bitcast %union.map_word* %sector_erase_cmd to i8*, !dbg !3601
  %99 = bitcast %union.map_word* %tmp23 to i8*, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 8, i1 false), !dbg !3601
  store i32 0, i32* %i, align 4, !dbg !3602
  br label %for.cond, !dbg !3604

for.cond:                                         ; preds = %for.inc, %if.end11
  %100 = load i32, i32* %i, align 4, !dbg !3605
  %101 = load i32, i32* %num_erase_regions, align 4, !dbg !3607
  %cmp = icmp slt i32 %100, %101, !dbg !3608
  br i1 %cmp, label %for.body, label %for.end, !dbg !3609

for.body:                                         ; preds = %for.cond
  %102 = load i32, i32* %index.addr, align 4, !dbg !3610
  %idxprom26 = sext i32 %102 to i64, !dbg !3612
  %arrayidx27 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom26, !dbg !3612
  %regions = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx27, i32 0, i32 6, !dbg !3613
  %103 = load i32, i32* %i, align 4, !dbg !3614
  %idxprom28 = sext i32 %103 to i64, !dbg !3612
  %arrayidx29 = getelementptr [6 x i32], [6 x i32]* %regions, i64 0, i64 %idxprom28, !dbg !3612
  %104 = load i32, i32* %arrayidx29, align 4, !dbg !3612
  %105 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3615
  %cfiq30 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %105, i32 0, i32 8, !dbg !3616
  %106 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq30, align 8, !dbg !3616
  %EraseRegionInfo = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %106, i32 0, i32 21, !dbg !3617
  %107 = load i32, i32* %i, align 4, !dbg !3618
  %idxprom31 = sext i32 %107 to i64, !dbg !3615
  %arrayidx32 = getelementptr [0 x i32], [0 x i32]* %EraseRegionInfo, i64 0, i64 %idxprom31, !dbg !3615
  store i32 %104, i32* %arrayidx32, align 1, !dbg !3619
  br label %for.inc, !dbg !3620

for.inc:                                          ; preds = %for.body
  %108 = load i32, i32* %i, align 4, !dbg !3621
  %inc = add i32 %108, 1, !dbg !3621
  store i32 %inc, i32* %i, align 4, !dbg !3621
  br label %for.cond, !dbg !3622, !llvm.loop !3623

for.end:                                          ; preds = %for.cond
  %109 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3625
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %109, i32 0, i32 1, !dbg !3626
  store i8* null, i8** %cmdset_priv, align 8, !dbg !3627
  %110 = load i32, i32* %index.addr, align 4, !dbg !3628
  %idxprom33 = sext i32 %110 to i64, !dbg !3629
  %arrayidx34 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom33, !dbg !3629
  %mfr_id = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx34, i32 0, i32 1, !dbg !3630
  %111 = load i16, i16* %mfr_id, align 8, !dbg !3630
  %conv35 = zext i16 %111 to i32, !dbg !3629
  %112 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3631
  %mfr = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %112, i32 0, i32 9, !dbg !3632
  store i32 %conv35, i32* %mfr, align 8, !dbg !3633
  %113 = load i32, i32* %index.addr, align 4, !dbg !3634
  %idxprom36 = sext i32 %113 to i64, !dbg !3635
  %arrayidx37 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom36, !dbg !3635
  %dev_id = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx37, i32 0, i32 2, !dbg !3636
  %114 = load i16, i16* %dev_id, align 2, !dbg !3636
  %conv38 = zext i16 %114 to i32, !dbg !3635
  %115 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3637
  %id = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %115, i32 0, i32 10, !dbg !3638
  store i32 %conv38, i32* %id, align 4, !dbg !3639
  %116 = load i32, i32* %index.addr, align 4, !dbg !3640
  %idxprom39 = sext i32 %116 to i64, !dbg !3641
  %arrayidx40 = getelementptr [120 x %struct.amd_flash_info], [120 x %struct.amd_flash_info]* @jedec_table, i64 0, i64 %idxprom39, !dbg !3641
  %uaddr41 = getelementptr inbounds %struct.amd_flash_info, %struct.amd_flash_info* %arrayidx40, i32 0, i32 8, !dbg !3642
  %117 = load i8, i8* %uaddr41, align 1, !dbg !3642
  store i8 %117, i8* %uaddr, align 1, !dbg !3643
  %118 = load i8, i8* %uaddr, align 1, !dbg !3644
  %idxprom42 = zext i8 %118 to i64, !dbg !3645
  %arrayidx43 = getelementptr [9 x %struct.unlock_addr], [9 x %struct.unlock_addr]* @unlock_addrs, i64 0, i64 %idxprom42, !dbg !3645
  %addr1 = getelementptr inbounds %struct.unlock_addr, %struct.unlock_addr* %arrayidx43, i32 0, i32 0, !dbg !3646
  %119 = load i32, i32* %addr1, align 8, !dbg !3646
  %120 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3647
  %device_type44 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %120, i32 0, i32 3, !dbg !3648
  %121 = load i32, i32* %device_type44, align 4, !dbg !3648
  %div = udiv i32 %119, %121, !dbg !3649
  %122 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3650
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %122, i32 0, i32 5, !dbg !3651
  store i32 %div, i32* %addr_unlock1, align 4, !dbg !3652
  %123 = load i8, i8* %uaddr, align 1, !dbg !3653
  %idxprom45 = zext i8 %123 to i64, !dbg !3654
  %arrayidx46 = getelementptr [9 x %struct.unlock_addr], [9 x %struct.unlock_addr]* @unlock_addrs, i64 0, i64 %idxprom45, !dbg !3654
  %addr2 = getelementptr inbounds %struct.unlock_addr, %struct.unlock_addr* %arrayidx46, i32 0, i32 1, !dbg !3655
  %124 = load i32, i32* %addr2, align 4, !dbg !3655
  %125 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3656
  %device_type47 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %125, i32 0, i32 3, !dbg !3657
  %126 = load i32, i32* %device_type47, align 4, !dbg !3657
  %div48 = udiv i32 %124, %126, !dbg !3658
  %127 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3659
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %127, i32 0, i32 6, !dbg !3660
  store i32 %div48, i32* %addr_unlock2, align 8, !dbg !3661
  store i32 1, i32* %retval, align 4, !dbg !3662
  br label %return, !dbg !3662

return:                                           ; preds = %for.end, %if.then10, %if.then
  %128 = load i32, i32* %retval, align 4, !dbg !3663
  ret i32 %128, !dbg !3663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !3664 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3671, metadata !DIExpression()), !dbg !3674
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3676, metadata !DIExpression()), !dbg !3677
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3678, metadata !DIExpression()), !dbg !3679
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3680, metadata !DIExpression()), !dbg !3682
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3684, metadata !DIExpression()), !dbg !3685
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3686, metadata !DIExpression()), !dbg !3694
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3696, metadata !DIExpression()), !dbg !3697
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3698, metadata !DIExpression()), !dbg !3699
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3700, metadata !DIExpression()), !dbg !3701
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3702
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3703
  %div = sdiv i64 %1, 64, !dbg !3703
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3704
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3702
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3705
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3706
  %conv.i = trunc i64 %4 to i32, !dbg !3706
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #13, !dbg !3707
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3708
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3708
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #13, !dbg !3708
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3709
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3709
  br i1 %8, label %cond.true, label %cond.false, !dbg !3709

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3709
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3709
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3710
  %and.i = and i64 %11, 63, !dbg !3711
  %shl.i = shl i64 1, %and.i, !dbg !3712
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3713
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3714
  %shr.i = ashr i64 %13, 6, !dbg !3715
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3713
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3713
  %and1.i = and i64 %shl.i, %14, !dbg !3716
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3717
  %conv = zext i1 %cmp.i to i32, !dbg !3709
  br label %cond.end, !dbg !3709

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3709
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3709
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3718
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3719
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #11, !dbg !3720, !srcloc !3721
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3720
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3722
  %tobool.i = trunc i8 %20 to i1, !dbg !3722
  %conv2 = zext i1 %tobool.i to i32, !dbg !3709
  br label %cond.end, !dbg !3709

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3709
  %tobool = icmp ne i32 %cond, 0, !dbg !3709
  ret i1 %tobool, !dbg !3723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !3724 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3729, metadata !DIExpression()), !dbg !3731
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3733, metadata !DIExpression()), !dbg !3734
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3735, metadata !DIExpression()), !dbg !3737
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3739, metadata !DIExpression()), !dbg !3740
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3745
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3746
  %div = sdiv i64 %1, 64, !dbg !3746
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3747
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3745
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3748
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3749
  %conv.i = trunc i64 %4 to i32, !dbg !3749
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !3750
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3751
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3751
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !3751
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3752
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3753
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3754
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #11, !dbg !3756
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3757

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3758
  %12 = bitcast i64* %11 to i8*, !dbg !3758
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3758
  %shr.i = ashr i64 %13, 3, !dbg !3758
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3758
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3760
  %and.i = and i64 %14, 7, !dbg !3760
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3760
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3760
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #11, !dbg !3761, !srcloc !3762
  br label %arch_set_bit.exit, !dbg !3763

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3764
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3766
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #11, !dbg !3767, !srcloc !3768
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3769
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i64 @cfi_build_cmd(i64, %struct.map_info*, %struct.cfi_private*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3770 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3774, metadata !DIExpression()), !dbg !3778
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3780, metadata !DIExpression()), !dbg !3781
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3782, metadata !DIExpression()), !dbg !3783
  %0 = load i64, i64* %size.addr, align 8, !dbg !3784
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3786
  br i1 %1, label %if.then, label %if.end447, !dbg !3787

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3788
  %tobool = icmp ne i64 %2, 0, !dbg !3788
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3791

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3792
  br label %return, !dbg !3792

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3793
  %cmp = icmp ult i64 %3, 4096, !dbg !3795
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3796

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3797
  br label %return, !dbg !3797

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub = sub i64 %4, 1, !dbg !3798
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3798
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3798

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub4 = sub i64 %6, 1, !dbg !3798
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3798
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3798

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub6 = sub i64 %8, 1, !dbg !3798
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3798
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3798

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3798

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub9 = sub i64 %9, 1, !dbg !3798
  %and = and i64 %sub9, -9223372036854775808, !dbg !3798
  %tobool10 = icmp ne i64 %and, 0, !dbg !3798
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3798

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3798

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub13 = sub i64 %10, 1, !dbg !3798
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3798
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3798
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3798

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3798

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub18 = sub i64 %11, 1, !dbg !3798
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3798
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3798
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3798

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3798

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub23 = sub i64 %12, 1, !dbg !3798
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3798
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3798
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3798

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3798

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub28 = sub i64 %13, 1, !dbg !3798
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3798
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3798
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3798

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3798

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub33 = sub i64 %14, 1, !dbg !3798
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3798
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3798
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3798

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3798

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub38 = sub i64 %15, 1, !dbg !3798
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3798
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3798
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3798

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3798

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub43 = sub i64 %16, 1, !dbg !3798
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3798
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3798
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3798

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3798

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub48 = sub i64 %17, 1, !dbg !3798
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3798
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3798
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3798

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3798

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub53 = sub i64 %18, 1, !dbg !3798
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3798
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3798
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3798

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3798

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub58 = sub i64 %19, 1, !dbg !3798
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3798
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3798
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3798

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3798

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub63 = sub i64 %20, 1, !dbg !3798
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3798
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3798
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3798

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3798

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub68 = sub i64 %21, 1, !dbg !3798
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3798
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3798
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3798

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3798

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub73 = sub i64 %22, 1, !dbg !3798
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3798
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3798
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3798

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3798

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub78 = sub i64 %23, 1, !dbg !3798
  %and79 = and i64 %sub78, 562949953421312, !dbg !3798
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3798
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3798

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3798

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub83 = sub i64 %24, 1, !dbg !3798
  %and84 = and i64 %sub83, 281474976710656, !dbg !3798
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3798
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3798

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3798

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub88 = sub i64 %25, 1, !dbg !3798
  %and89 = and i64 %sub88, 140737488355328, !dbg !3798
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3798
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3798

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3798

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub93 = sub i64 %26, 1, !dbg !3798
  %and94 = and i64 %sub93, 70368744177664, !dbg !3798
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3798
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3798

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3798

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub98 = sub i64 %27, 1, !dbg !3798
  %and99 = and i64 %sub98, 35184372088832, !dbg !3798
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3798
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3798

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3798

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub103 = sub i64 %28, 1, !dbg !3798
  %and104 = and i64 %sub103, 17592186044416, !dbg !3798
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3798
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3798

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3798

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub108 = sub i64 %29, 1, !dbg !3798
  %and109 = and i64 %sub108, 8796093022208, !dbg !3798
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3798
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3798

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3798

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub113 = sub i64 %30, 1, !dbg !3798
  %and114 = and i64 %sub113, 4398046511104, !dbg !3798
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3798
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3798

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3798

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub118 = sub i64 %31, 1, !dbg !3798
  %and119 = and i64 %sub118, 2199023255552, !dbg !3798
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3798
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3798

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3798

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub123 = sub i64 %32, 1, !dbg !3798
  %and124 = and i64 %sub123, 1099511627776, !dbg !3798
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3798
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3798

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3798

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub128 = sub i64 %33, 1, !dbg !3798
  %and129 = and i64 %sub128, 549755813888, !dbg !3798
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3798
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3798

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3798

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub133 = sub i64 %34, 1, !dbg !3798
  %and134 = and i64 %sub133, 274877906944, !dbg !3798
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3798
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3798

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3798

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub138 = sub i64 %35, 1, !dbg !3798
  %and139 = and i64 %sub138, 137438953472, !dbg !3798
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3798
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3798

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3798

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub143 = sub i64 %36, 1, !dbg !3798
  %and144 = and i64 %sub143, 68719476736, !dbg !3798
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3798
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3798

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3798

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub148 = sub i64 %37, 1, !dbg !3798
  %and149 = and i64 %sub148, 34359738368, !dbg !3798
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3798
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3798

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3798

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub153 = sub i64 %38, 1, !dbg !3798
  %and154 = and i64 %sub153, 17179869184, !dbg !3798
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3798
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3798

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3798

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub158 = sub i64 %39, 1, !dbg !3798
  %and159 = and i64 %sub158, 8589934592, !dbg !3798
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3798
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3798

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3798

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub163 = sub i64 %40, 1, !dbg !3798
  %and164 = and i64 %sub163, 4294967296, !dbg !3798
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3798
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3798

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3798

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub168 = sub i64 %41, 1, !dbg !3798
  %and169 = and i64 %sub168, 2147483648, !dbg !3798
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3798
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3798

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3798

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub173 = sub i64 %42, 1, !dbg !3798
  %and174 = and i64 %sub173, 1073741824, !dbg !3798
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3798
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3798

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3798

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub178 = sub i64 %43, 1, !dbg !3798
  %and179 = and i64 %sub178, 536870912, !dbg !3798
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3798
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3798

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3798

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub183 = sub i64 %44, 1, !dbg !3798
  %and184 = and i64 %sub183, 268435456, !dbg !3798
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3798
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3798

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3798

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub188 = sub i64 %45, 1, !dbg !3798
  %and189 = and i64 %sub188, 134217728, !dbg !3798
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3798
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3798

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3798

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub193 = sub i64 %46, 1, !dbg !3798
  %and194 = and i64 %sub193, 67108864, !dbg !3798
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3798
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3798

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3798

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub198 = sub i64 %47, 1, !dbg !3798
  %and199 = and i64 %sub198, 33554432, !dbg !3798
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3798
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3798

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3798

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub203 = sub i64 %48, 1, !dbg !3798
  %and204 = and i64 %sub203, 16777216, !dbg !3798
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3798
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3798

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3798

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub208 = sub i64 %49, 1, !dbg !3798
  %and209 = and i64 %sub208, 8388608, !dbg !3798
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3798
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3798

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3798

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub213 = sub i64 %50, 1, !dbg !3798
  %and214 = and i64 %sub213, 4194304, !dbg !3798
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3798
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3798

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3798

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub218 = sub i64 %51, 1, !dbg !3798
  %and219 = and i64 %sub218, 2097152, !dbg !3798
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3798
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3798

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3798

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub223 = sub i64 %52, 1, !dbg !3798
  %and224 = and i64 %sub223, 1048576, !dbg !3798
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3798
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3798

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3798

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub228 = sub i64 %53, 1, !dbg !3798
  %and229 = and i64 %sub228, 524288, !dbg !3798
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3798
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3798

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3798

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub233 = sub i64 %54, 1, !dbg !3798
  %and234 = and i64 %sub233, 262144, !dbg !3798
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3798
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3798

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3798

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub238 = sub i64 %55, 1, !dbg !3798
  %and239 = and i64 %sub238, 131072, !dbg !3798
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3798
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3798

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3798

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub243 = sub i64 %56, 1, !dbg !3798
  %and244 = and i64 %sub243, 65536, !dbg !3798
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3798
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3798

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3798

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub248 = sub i64 %57, 1, !dbg !3798
  %and249 = and i64 %sub248, 32768, !dbg !3798
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3798
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3798

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3798

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub253 = sub i64 %58, 1, !dbg !3798
  %and254 = and i64 %sub253, 16384, !dbg !3798
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3798
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3798

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3798

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub258 = sub i64 %59, 1, !dbg !3798
  %and259 = and i64 %sub258, 8192, !dbg !3798
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3798
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3798

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3798

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub263 = sub i64 %60, 1, !dbg !3798
  %and264 = and i64 %sub263, 4096, !dbg !3798
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3798
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3798

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3798

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub268 = sub i64 %61, 1, !dbg !3798
  %and269 = and i64 %sub268, 2048, !dbg !3798
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3798
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3798

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3798

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub273 = sub i64 %62, 1, !dbg !3798
  %and274 = and i64 %sub273, 1024, !dbg !3798
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3798
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3798

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3798

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub278 = sub i64 %63, 1, !dbg !3798
  %and279 = and i64 %sub278, 512, !dbg !3798
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3798
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3798

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3798

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub283 = sub i64 %64, 1, !dbg !3798
  %and284 = and i64 %sub283, 256, !dbg !3798
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3798
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3798

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3798

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub288 = sub i64 %65, 1, !dbg !3798
  %and289 = and i64 %sub288, 128, !dbg !3798
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3798
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3798

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3798

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub293 = sub i64 %66, 1, !dbg !3798
  %and294 = and i64 %sub293, 64, !dbg !3798
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3798
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3798

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3798

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub298 = sub i64 %67, 1, !dbg !3798
  %and299 = and i64 %sub298, 32, !dbg !3798
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3798
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3798

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3798

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub303 = sub i64 %68, 1, !dbg !3798
  %and304 = and i64 %sub303, 16, !dbg !3798
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3798
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3798

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3798

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub308 = sub i64 %69, 1, !dbg !3798
  %and309 = and i64 %sub308, 8, !dbg !3798
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3798
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3798

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3798

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub313 = sub i64 %70, 1, !dbg !3798
  %and314 = and i64 %sub313, 4, !dbg !3798
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3798
  %71 = zext i1 %tobool315 to i64, !dbg !3798
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3798
  br label %cond.end, !dbg !3798

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3798
  br label %cond.end317, !dbg !3798

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3798
  br label %cond.end319, !dbg !3798

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3798
  br label %cond.end321, !dbg !3798

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3798
  br label %cond.end323, !dbg !3798

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3798
  br label %cond.end325, !dbg !3798

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3798
  br label %cond.end327, !dbg !3798

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3798
  br label %cond.end329, !dbg !3798

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3798
  br label %cond.end331, !dbg !3798

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3798
  br label %cond.end333, !dbg !3798

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3798
  br label %cond.end335, !dbg !3798

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3798
  br label %cond.end337, !dbg !3798

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3798
  br label %cond.end339, !dbg !3798

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3798
  br label %cond.end341, !dbg !3798

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3798
  br label %cond.end343, !dbg !3798

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3798
  br label %cond.end345, !dbg !3798

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3798
  br label %cond.end347, !dbg !3798

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3798
  br label %cond.end349, !dbg !3798

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3798
  br label %cond.end351, !dbg !3798

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3798
  br label %cond.end353, !dbg !3798

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3798
  br label %cond.end355, !dbg !3798

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3798
  br label %cond.end357, !dbg !3798

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3798
  br label %cond.end359, !dbg !3798

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3798
  br label %cond.end361, !dbg !3798

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3798
  br label %cond.end363, !dbg !3798

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3798
  br label %cond.end365, !dbg !3798

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3798
  br label %cond.end367, !dbg !3798

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3798
  br label %cond.end369, !dbg !3798

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3798
  br label %cond.end371, !dbg !3798

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3798
  br label %cond.end373, !dbg !3798

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3798
  br label %cond.end375, !dbg !3798

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3798
  br label %cond.end377, !dbg !3798

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3798
  br label %cond.end379, !dbg !3798

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3798
  br label %cond.end381, !dbg !3798

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3798
  br label %cond.end383, !dbg !3798

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3798
  br label %cond.end385, !dbg !3798

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3798
  br label %cond.end387, !dbg !3798

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3798
  br label %cond.end389, !dbg !3798

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3798
  br label %cond.end391, !dbg !3798

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3798
  br label %cond.end393, !dbg !3798

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3798
  br label %cond.end395, !dbg !3798

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3798
  br label %cond.end397, !dbg !3798

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3798
  br label %cond.end399, !dbg !3798

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3798
  br label %cond.end401, !dbg !3798

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3798
  br label %cond.end403, !dbg !3798

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3798
  br label %cond.end405, !dbg !3798

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3798
  br label %cond.end407, !dbg !3798

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3798
  br label %cond.end409, !dbg !3798

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3798
  br label %cond.end411, !dbg !3798

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3798
  br label %cond.end413, !dbg !3798

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3798
  br label %cond.end415, !dbg !3798

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3798
  br label %cond.end417, !dbg !3798

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3798
  br label %cond.end419, !dbg !3798

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3798
  br label %cond.end421, !dbg !3798

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3798
  br label %cond.end423, !dbg !3798

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3798
  br label %cond.end425, !dbg !3798

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3798
  br label %cond.end427, !dbg !3798

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3798
  br label %cond.end429, !dbg !3798

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3798
  br label %cond.end431, !dbg !3798

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3798
  br label %cond.end433, !dbg !3798

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3798
  br label %cond.end435, !dbg !3798

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3798
  br label %cond.end437, !dbg !3798

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3798
  br label %cond.end440, !dbg !3798

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3798

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3798
  br label %cond.end444, !dbg !3798

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3798
  %sub443 = sub i64 %72, 1, !dbg !3798
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3798
  br label %cond.end444, !dbg !3798

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3798
  %sub446 = sub i32 %cond445, 12, !dbg !3799
  %add = add i32 %sub446, 1, !dbg !3800
  store i32 %add, i32* %retval, align 4, !dbg !3801
  br label %return, !dbg !3801

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3802
  %dec = add i64 %73, -1, !dbg !3802
  store i64 %dec, i64* %size.addr, align 8, !dbg !3802
  %74 = load i64, i64* %size.addr, align 8, !dbg !3803
  %shr = lshr i64 %74, 12, !dbg !3803
  store i64 %shr, i64* %size.addr, align 8, !dbg !3803
  %75 = load i64, i64* %size.addr, align 8, !dbg !3804
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3781
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3805
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3806
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3805, !srcloc !3807
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3805
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3808
  %add.i = add i32 %79, 1, !dbg !3809
  store i32 %add.i, i32* %retval, align 4, !dbg !3810
  br label %return, !dbg !3810

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3811
  ret i32 %80, !dbg !3811
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3812 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3774, metadata !DIExpression()), !dbg !3816
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3780, metadata !DIExpression()), !dbg !3818
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3819, metadata !DIExpression()), !dbg !3820
  %0 = load i64, i64* %n.addr, align 8, !dbg !3821
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3818
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3822
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3823
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3822, !srcloc !3807
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3822
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3824
  %add.i = add i32 %4, 1, !dbg !3825
  %sub = sub i32 %add.i, 1, !dbg !3826
  ret i32 %sub, !dbg !3827
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !3828 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3834, metadata !DIExpression()), !dbg !3835
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3836, metadata !DIExpression()), !dbg !3837
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3838, metadata !DIExpression()), !dbg !3839
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3840
  ret i8* %0, !dbg !3841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !3842 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3846, metadata !DIExpression()), !dbg !3847
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3848, metadata !DIExpression()), !dbg !3849
  ret i1 true, !dbg !3850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !3851 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3855, metadata !DIExpression()), !dbg !3856
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3857, metadata !DIExpression()), !dbg !3858
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3859, metadata !DIExpression()), !dbg !3860
  ret void, !dbg !3861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !3862 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3863, metadata !DIExpression()), !dbg !3864
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3865, metadata !DIExpression()), !dbg !3866
  ret i1 true, !dbg !3867
}

; Function Attrs: noredzone
declare dso_local void @register_mtd_chip_driver(%struct.mtd_chip_driver*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2521, !2522, !2523, !2524}
!llvm.ident = !{!2525}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "jedec_chipdrv", scope: !2, file: !3, line: 2293, type: !2191, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !130, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/chips/jedec_probe.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !81, !92, !99}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !18, line: 26, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !24, line: 44, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !30, line: 343, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !37, line: 524, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !37, line: 502, baseType: !7, size: 32, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 17, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/mtd/flashchip.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!53 = !DIEnumerator(name: "FL_READY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "FL_STATUS", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "FL_CFI_QUERY", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "FL_JEDEC_QUERY", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FL_ERASING", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "FL_ERASE_SUSPENDING", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "FL_ERASE_SUSPENDED", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "FL_WRITING", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "FL_WRITING_TO_BUFFER", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "FL_OTP_WRITE", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "FL_WRITE_SUSPENDING", value: 10, isUnsigned: true)
!64 = !DIEnumerator(name: "FL_WRITE_SUSPENDED", value: 11, isUnsigned: true)
!65 = !DIEnumerator(name: "FL_PM_SUSPENDED", value: 12, isUnsigned: true)
!66 = !DIEnumerator(name: "FL_SYNCING", value: 13, isUnsigned: true)
!67 = !DIEnumerator(name: "FL_UNLOADING", value: 14, isUnsigned: true)
!68 = !DIEnumerator(name: "FL_LOCKING", value: 15, isUnsigned: true)
!69 = !DIEnumerator(name: "FL_UNLOCKING", value: 16, isUnsigned: true)
!70 = !DIEnumerator(name: "FL_POINT", value: 17, isUnsigned: true)
!71 = !DIEnumerator(name: "FL_XIP_WHILE_ERASING", value: 18, isUnsigned: true)
!72 = !DIEnumerator(name: "FL_XIP_WHILE_WRITING", value: 19, isUnsigned: true)
!73 = !DIEnumerator(name: "FL_SHUTDOWN", value: 20, isUnsigned: true)
!74 = !DIEnumerator(name: "FL_READING", value: 21, isUnsigned: true)
!75 = !DIEnumerator(name: "FL_CACHEDPRG", value: 22, isUnsigned: true)
!76 = !DIEnumerator(name: "FL_RESETTING", value: 23, isUnsigned: true)
!77 = !DIEnumerator(name: "FL_OTPING", value: 24, isUnsigned: true)
!78 = !DIEnumerator(name: "FL_PREPARING_ERASE", value: 25, isUnsigned: true)
!79 = !DIEnumerator(name: "FL_VERIFYING_ERASE", value: 26, isUnsigned: true)
!80 = !DIEnumerator(name: "FL_UNKNOWN", value: 27, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uaddr", file: !3, line: 191, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91}
!83 = !DIEnumerator(name: "MTD_UADDR_NOT_SUPPORTED", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "MTD_UADDR_0x0555_0x02AA", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "MTD_UADDR_0x0555_0x0AAA", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "MTD_UADDR_0x5555_0x2AAA", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "MTD_UADDR_0x0AAA_0x0554", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "MTD_UADDR_0x0AAA_0x0555", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "MTD_UADDR_0xAAAA_0x5555", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "MTD_UADDR_DONT_CARE", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "MTD_UADDR_UNNECESSARY", value: 8, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !93, line: 305, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 10, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!104 = !{!105, !106, !113, !117, !120, !121, !122, !124, !127}
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !107, line: 102, baseType: !108)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 17, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !107, line: 103, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 104, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 21, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !7)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 148, baseType: !7)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!129 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!130 = !{!131, !133, !140, !146, !151, !156, !0, !161, !2492, !2500}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_jedec_probe_init167", scope: !2, file: !3, line: 2310, type: !121, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__exitcall_jedec_probe_exit", scope: !2, file: !3, line: 2311, type: !135, isLocal: true, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !136, line: 117, baseType: !137)
!136 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file168", scope: !2, file: !3, line: 2313, type: !142, isLocal: true, isDefinition: true, align: 8)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 376, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!144 = !{!145}
!145 = !DISubrange(count: 47)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license169", scope: !2, file: !3, line: 2313, type: !148, isLocal: true, isDefinition: true, align: 8)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 24)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author170", scope: !2, file: !3, line: 2314, type: !153, isLocal: true, isDefinition: true, align: 8)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 504, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 63)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description171", scope: !2, file: !3, line: 2315, type: !158, isLocal: true, isDefinition: true, align: 8)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 536, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 67)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "jedec_chip_probe", scope: !2, file: !3, line: 2279, type: !163, isLocal: true, isDefinition: true)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chip_probe", file: !164, line: 15, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/mtd/gen_probe.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !164, line: 16, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "probe_chip", scope: !163, file: !164, line: 17, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!105, !172, !119, !122, !2424}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_info", file: !174, line: 191, size: 1152, elements: !175)
!174 = !DIFile(filename: "./include/linux/mtd/map.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !178, !179, !185, !186, !187, !188, !189, !200, !208, !213, !219, !223, !227, !228, !229, !230, !2188, !2189}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 192, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !174, line: 193, baseType: !123, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !173, file: !174, line: 194, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !107, line: 158, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !107, line: 153, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !109, line: 23, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !184)
!184 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !173, file: !174, line: 197, baseType: !121, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !173, file: !174, line: 198, baseType: !121, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !173, file: !174, line: 200, baseType: !105, size: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bankwidth", scope: !173, file: !174, line: 201, baseType: !105, size: 32, offset: 352)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !173, file: !174, line: 207, baseType: !190, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !172, !123}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "map_word", file: !174, line: 171, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !174, line: 169, size: 64, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !194, file: !174, line: 170, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 1)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "copy_from", scope: !173, file: !174, line: 208, baseType: !201, size: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !172, !121, !123, !204}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 60, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !206, line: 73, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !206, line: 15, baseType: !129)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !173, file: !174, line: 210, baseType: !209, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !172, !212, !123}
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to", scope: !173, file: !174, line: 211, baseType: !214, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !172, !123, !217, !204}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "inval_cache", scope: !173, file: !174, line: 222, baseType: !220, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !172, !123, !204}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "set_vpp", scope: !173, file: !174, line: 229, baseType: !224, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !172, !105}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pfow_base", scope: !173, file: !174, line: 231, baseType: !123, size: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_1", scope: !173, file: !174, line: 232, baseType: !123, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_2", scope: !173, file: !174, line: 233, baseType: !123, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !173, file: !174, line: 234, baseType: !231, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !233, line: 51, size: 1344, elements: !234)
!233 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!234 = !{!235, !236, !238, !239, !2172, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !233, line: 52, baseType: !177, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !232, file: !233, line: 53, baseType: !237, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !233, line: 28, baseType: !118)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !232, file: !233, line: 54, baseType: !177, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !232, file: !233, line: 55, baseType: !240, size: 192, offset: 192)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !241, line: 17, size: 192, elements: !242)
!241 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !245, !2171}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !240, file: !241, line: 18, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !240, file: !241, line: 19, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !241, line: 110, size: 1152, elements: !249)
!249 = !{!250, !254, !258, !266, !2113, !2117, !2121, !2126, !2130, !2131, !2135, !2139, !2143, !2154, !2155, !2156, !2157, !2167}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !248, file: !241, line: 111, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!244, !244}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !248, file: !241, line: 112, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !244}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !248, file: !241, line: 113, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 30, baseType: !263)
!263 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !248, file: !241, line: 114, baseType: !267, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!217, !264, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !273)
!273 = !{!274, !1750, !1752, !1755, !1756, !1807, !1904, !1905, !1906, !1907, !1908, !1917, !2022, !2035, !2038, !2039, !2043, !2045, !2046, !2047, !2051, !2057, !2058, !2061, !2062, !2063, !2066, !2067, !2068, !2069, !2101, !2102, !2103, !2106, !2109, !2110, !2111, !2112}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !30, line: 462, baseType: !275, size: 512)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !276, line: 64, size: 512, elements: !277)
!276 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279, !285, !287, !346, !1587, !1740, !1745, !1746, !1747, !1748, !1749}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !276, line: 65, baseType: !177, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !275, file: !276, line: 66, baseType: !280, size: 128, offset: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 178, size: 128, elements: !281)
!281 = !{!282, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !107, line: 179, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !280, file: !107, line: 179, baseType: !283, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !275, file: !276, line: 67, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !275, file: !276, line: 68, baseType: !288, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !276, line: 192, size: 704, elements: !290)
!290 = !{!291, !292, !308, !309}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !289, file: !276, line: 193, baseType: !280, size: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !289, file: !276, line: 194, baseType: !293, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !294, line: 83, baseType: !295)
!294 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !294, line: 71, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !294, line: 72, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !294, line: 72, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !298, file: !294, line: 73, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !294, line: 20, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !301, file: !294, line: 21, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !305, line: 25, baseType: !306)
!305 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 25, elements: !307)
!307 = !{}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !289, file: !276, line: 195, baseType: !275, size: 512, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !289, file: !276, line: 196, baseType: !310, size: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !276, line: 156, size: 192, elements: !313)
!313 = !{!314, !319, !324}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !312, file: !276, line: 157, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!105, !288, !286}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !276, line: 158, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!177, !288, !286}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !312, file: !276, line: 159, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!105, !288, !286, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !276, line: 148, size: 20736, elements: !331)
!331 = !{!332, !336, !340, !341, !345}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !330, file: !276, line: 149, baseType: !333, size: 192)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 192, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !330, file: !276, line: 150, baseType: !337, size: 4096, offset: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 4096, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !330, file: !276, line: 151, baseType: !105, size: 32, offset: 4288)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !330, file: !276, line: 152, baseType: !342, size: 16384, offset: 4320)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 16384, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !330, file: !276, line: 153, baseType: !105, size: 32, offset: 20704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !275, file: !276, line: 69, baseType: !347, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !276, line: 138, size: 448, elements: !349)
!349 = !{!350, !354, !377, !379, !1535, !1566, !1570}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !348, file: !276, line: 139, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !286}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !348, file: !276, line: 140, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !358, line: 230, size: 128, elements: !359)
!358 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !370}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !357, file: !358, line: 231, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!204, !286, !364, !167}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !358, line: 30, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !358, line: 31, baseType: !177, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !365, file: !358, line: 32, baseType: !369, size: 16, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 19, baseType: !116)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !357, file: !358, line: 232, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!204, !286, !364, !177, !374}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 55, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !206, line: 72, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !206, line: 16, baseType: !123)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !348, file: !276, line: 141, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !348, file: !276, line: 142, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !358, line: 84, size: 320, elements: !384)
!384 = !{!385, !386, !390, !1532, !1533}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !358, line: 85, baseType: !177, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !383, file: !358, line: 86, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!369, !286, !364, !105}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !383, file: !358, line: 88, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!369, !286, !394, !105}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !358, line: 168, size: 448, elements: !396)
!396 = !{!397, !398, !399, !400, !410, !411}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !395, file: !358, line: 169, baseType: !365, size: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !395, file: !358, line: 170, baseType: !374, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !395, file: !358, line: 171, baseType: !121, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !395, file: !358, line: 172, baseType: !401, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!204, !404, !286, !394, !167, !407, !374}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !406, line: 526, flags: DIFlagFwdDecl)
!406 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 46, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !206, line: 88, baseType: !409)
!409 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !395, file: !358, line: 174, baseType: !401, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !395, file: !358, line: 176, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!105, !404, !286, !394, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !417, line: 305, size: 1472, elements: !418)
!417 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !420, !421, !422, !423, !431, !432, !1506, !1512, !1513, !1518, !1519, !1522, !1526, !1527, !1528, !1529, !1530}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !416, file: !417, line: 308, baseType: !123, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !416, file: !417, line: 309, baseType: !123, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !416, file: !417, line: 313, baseType: !415, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !416, file: !417, line: 313, baseType: !415, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !416, file: !417, line: 315, baseType: !424, size: 192, align: 64, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !425, line: 24, size: 192, align: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !428, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !424, file: !425, line: 25, baseType: !123, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !424, file: !425, line: 26, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !424, file: !425, line: 27, baseType: !429, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !416, file: !417, line: 323, baseType: !123, size: 64, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !416, file: !417, line: 327, baseType: !433, size: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !417, line: 388, size: 7296, elements: !435)
!435 = !{!436, !1502}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !417, line: 389, baseType: !437, size: 7296)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !417, line: 389, size: 7296, elements: !438)
!438 = !{!439, !440, !444, !445, !449, !450, !451, !452, !453, !461, !466, !467, !468, !469, !478, !479, !480, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !515, !523, !526, !572, !573, !1472, !1473, !1476, !1480, !1481, !1484, !1485, !1486, !1489, !1501}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !437, file: !417, line: 390, baseType: !415, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !437, file: !417, line: 391, baseType: !441, size: 64, offset: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !425, line: 31, size: 64, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !441, file: !425, line: 32, baseType: !429, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !437, file: !417, line: 392, baseType: !182, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !437, file: !417, line: 394, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!123, !404, !123, !123, !123, !123}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !437, file: !417, line: 398, baseType: !123, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !437, file: !417, line: 399, baseType: !123, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !437, file: !417, line: 405, baseType: !123, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !437, file: !417, line: 406, baseType: !123, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !437, file: !417, line: 407, baseType: !454, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !406, line: 286, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 286, size: 64, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !456, file: !406, line: 286, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !460, line: 18, baseType: !123)
!460 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !437, file: !417, line: 416, baseType: !462, size: 32, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 168, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 166, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !463, file: !107, line: 167, baseType: !105, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !437, file: !417, line: 428, baseType: !462, size: 32, offset: 608)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !437, file: !417, line: 437, baseType: !462, size: 32, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !437, file: !417, line: 447, baseType: !462, size: 32, offset: 672)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !437, file: !417, line: 450, baseType: !470, size: 64, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !471, line: 13, baseType: !472)
!471 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 175, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 173, size: 64, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !473, file: !107, line: 174, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !109, line: 22, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !409)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !437, file: !417, line: 452, baseType: !105, size: 32, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !437, file: !417, line: 454, baseType: !293, offset: 800)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !437, file: !417, line: 457, baseType: !481, size: 256, offset: 832)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !482, line: 35, size: 256, elements: !483)
!482 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!483 = !{!484, !485, !486, !488}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !481, file: !482, line: 36, baseType: !470, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !481, file: !482, line: 42, baseType: !470, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !481, file: !482, line: 46, baseType: !487, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !294, line: 29, baseType: !301)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !481, file: !482, line: 47, baseType: !280, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !437, file: !417, line: 459, baseType: !280, size: 128, offset: 1088)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !437, file: !417, line: 466, baseType: !123, size: 64, offset: 1216)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !437, file: !417, line: 467, baseType: !123, size: 64, offset: 1280)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !437, file: !417, line: 469, baseType: !123, size: 64, offset: 1344)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !437, file: !417, line: 470, baseType: !123, size: 64, offset: 1408)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !437, file: !417, line: 471, baseType: !472, size: 64, offset: 1472)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !437, file: !417, line: 472, baseType: !123, size: 64, offset: 1536)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !437, file: !417, line: 473, baseType: !123, size: 64, offset: 1600)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !437, file: !417, line: 474, baseType: !123, size: 64, offset: 1664)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !437, file: !417, line: 475, baseType: !123, size: 64, offset: 1728)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !437, file: !417, line: 477, baseType: !293, offset: 1792)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !437, file: !417, line: 478, baseType: !123, size: 64, offset: 1792)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !437, file: !417, line: 478, baseType: !123, size: 64, offset: 1856)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !437, file: !417, line: 478, baseType: !123, size: 64, offset: 1920)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !437, file: !417, line: 478, baseType: !123, size: 64, offset: 1984)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !437, file: !417, line: 479, baseType: !123, size: 64, offset: 2048)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !437, file: !417, line: 479, baseType: !123, size: 64, offset: 2112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !437, file: !417, line: 479, baseType: !123, size: 64, offset: 2176)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !437, file: !417, line: 480, baseType: !123, size: 64, offset: 2240)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !437, file: !417, line: 480, baseType: !123, size: 64, offset: 2304)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !437, file: !417, line: 480, baseType: !123, size: 64, offset: 2368)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !437, file: !417, line: 480, baseType: !123, size: 64, offset: 2432)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !437, file: !417, line: 482, baseType: !512, size: 2816, offset: 2496)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2816, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 44)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !437, file: !417, line: 488, baseType: !516, size: 256, offset: 5312)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !517, line: 60, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !516, file: !517, line: 61, baseType: !520, size: 256)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 4)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !437, file: !417, line: 490, baseType: !524, size: 64, offset: 5568)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !417, line: 490, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !437, file: !417, line: 493, baseType: !527, size: 896, offset: 5632)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !528, line: 53, baseType: !529)
!528 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 13, size: 896, elements: !530)
!530 = !{!531, !532, !533, !534, !537, !538, !545, !546, !566, !567, !568}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !529, file: !528, line: 18, baseType: !182, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !529, file: !528, line: 28, baseType: !472, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !529, file: !528, line: 31, baseType: !481, size: 256, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !529, file: !528, line: 32, baseType: !535, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !528, line: 32, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !529, file: !528, line: 37, baseType: !116, size: 16, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !529, file: !528, line: 40, baseType: !539, size: 192, offset: 512)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !540, line: 53, size: 192, elements: !541)
!540 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !539, file: !540, line: 54, baseType: !470, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !539, file: !540, line: 55, baseType: !293, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !539, file: !540, line: 59, baseType: !280, size: 128, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !529, file: !528, line: 41, baseType: !121, size: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !529, file: !528, line: 42, baseType: !547, size: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !550, line: 13, size: 896, elements: !551)
!550 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !549, file: !550, line: 14, baseType: !121, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !549, file: !550, line: 15, baseType: !123, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !549, file: !550, line: 17, baseType: !123, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !549, file: !550, line: 17, baseType: !123, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !549, file: !550, line: 19, baseType: !129, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !549, file: !550, line: 21, baseType: !129, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !549, file: !550, line: 22, baseType: !129, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !549, file: !550, line: 23, baseType: !129, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !549, file: !550, line: 24, baseType: !129, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !549, file: !550, line: 25, baseType: !129, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !549, file: !550, line: 26, baseType: !129, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !549, file: !550, line: 27, baseType: !129, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !549, file: !550, line: 28, baseType: !129, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !549, file: !550, line: 29, baseType: !129, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !529, file: !528, line: 44, baseType: !462, size: 32, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !529, file: !528, line: 50, baseType: !114, size: 16, offset: 864)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !529, file: !528, line: 51, baseType: !569, size: 16, offset: 880)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !109, line: 18, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !571)
!571 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !417, line: 495, baseType: !123, size: 64, offset: 6528)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !437, file: !417, line: 497, baseType: !574, size: 64, offset: 6592)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !417, line: 381, size: 384, elements: !576)
!576 = !{!577, !578, !1471}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !575, file: !417, line: 382, baseType: !462, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !575, file: !417, line: 383, baseType: !579, size: 128, offset: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !417, line: 376, size: 128, elements: !580)
!580 = !{!581, !1469}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !579, file: !417, line: 377, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !584, line: 640, size: 48640, elements: !585)
!584 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !592, !593, !594, !600, !601, !602, !603, !604, !605, !606, !607, !611, !629, !640, !732, !733, !734, !742, !743, !745, !746, !747, !748, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !827, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !883, !885, !886, !887, !899, !901, !902, !903, !904, !905, !911, !912, !913, !914, !915, !916, !917, !929, !934, !939, !940, !941, !944, !948, !951, !954, !957, !960, !964, !967, !970, !976, !977, !978, !984, !985, !986, !987, !988, !997, !998, !999, !1000, !1001, !1006, !1007, !1008, !1011, !1012, !1015, !1018, !1021, !1024, !1027, !1030, !1031, !1111, !1114, !1117, !1118, !1121, !1122, !1123, !1129, !1130, !1131, !1144, !1145, !1146, !1156, !1161, !1165, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !583, file: !584, line: 646, baseType: !587, size: 128)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !588, line: 56, size: 128, elements: !589)
!588 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !588, line: 57, baseType: !123, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !587, file: !588, line: 58, baseType: !118, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !583, file: !584, line: 649, baseType: !128, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !583, file: !584, line: 657, baseType: !121, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !583, file: !584, line: 658, baseType: !595, size: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !596, line: 113, baseType: !597)
!596 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !596, line: 111, size: 32, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !597, file: !596, line: 112, baseType: !462, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !584, line: 660, baseType: !7, size: 32, offset: 288)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !583, file: !584, line: 661, baseType: !7, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !583, file: !584, line: 684, baseType: !105, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !583, file: !584, line: 686, baseType: !105, size: 32, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !583, file: !584, line: 687, baseType: !105, size: 32, offset: 416)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !583, file: !584, line: 688, baseType: !105, size: 32, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !583, file: !584, line: 689, baseType: !7, size: 32, offset: 480)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !583, file: !584, line: 691, baseType: !608, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !584, line: 691, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !583, file: !584, line: 692, baseType: !612, size: 832, offset: 576)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !584, line: 451, size: 832, elements: !613)
!613 = !{!614, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !612, file: !584, line: 453, baseType: !615, size: 128)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !584, line: 325, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !615, file: !584, line: 326, baseType: !123, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !615, file: !584, line: 327, baseType: !118, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !612, file: !584, line: 454, baseType: !424, size: 192, align: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !612, file: !584, line: 455, baseType: !280, size: 128, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !612, file: !584, line: 456, baseType: !7, size: 32, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !612, file: !584, line: 458, baseType: !182, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !612, file: !584, line: 459, baseType: !182, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !612, file: !584, line: 460, baseType: !182, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !612, file: !584, line: 461, baseType: !182, size: 64, offset: 704)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !612, file: !584, line: 463, baseType: !182, size: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !612, file: !584, line: 465, baseType: !628, offset: 832)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !584, line: 415, elements: !307)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !583, file: !584, line: 693, baseType: !630, size: 384, offset: 1408)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !584, line: 489, size: 384, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !630, file: !584, line: 490, baseType: !280, size: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !630, file: !584, line: 491, baseType: !123, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !630, file: !584, line: 492, baseType: !123, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !630, file: !584, line: 493, baseType: !7, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !630, file: !584, line: 494, baseType: !116, size: 16, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !630, file: !584, line: 495, baseType: !116, size: 16, offset: 304)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !630, file: !584, line: 497, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !583, file: !584, line: 697, baseType: !641, size: 1792, offset: 1792)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !584, line: 507, size: 1792, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !729, !730}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !641, file: !584, line: 508, baseType: !424, size: 192, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !641, file: !584, line: 515, baseType: !182, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !641, file: !584, line: 516, baseType: !182, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !641, file: !584, line: 517, baseType: !182, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !641, file: !584, line: 518, baseType: !182, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !641, file: !584, line: 519, baseType: !182, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !641, file: !584, line: 526, baseType: !476, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !641, file: !584, line: 527, baseType: !182, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !584, line: 528, baseType: !7, size: 32, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !641, file: !584, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !641, file: !584, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !641, file: !584, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !641, file: !584, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !641, file: !584, line: 563, baseType: !657, size: 512, offset: 704)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !658)
!658 = !{!659, !667, !668, !673, !725, !726, !727, !728}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !6, line: 119, baseType: !660, size: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !661, line: 9, size: 256, elements: !662)
!661 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !661, line: 10, baseType: !424, size: 192, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !660, file: !661, line: 11, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !666, line: 29, baseType: !476)
!666 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !657, file: !6, line: 120, baseType: !665, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !657, file: !6, line: 121, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!5, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !657, file: !6, line: 122, baseType: !674, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !676)
!676 = !{!677, !697, !698, !701, !711, !712, !720, !724}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !675, file: !6, line: 160, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !679, file: !6, line: 215, baseType: !487)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !679, file: !6, line: 216, baseType: !7, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !679, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !679, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !679, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !679, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !679, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !679, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !679, file: !6, line: 233, baseType: !665, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !679, file: !6, line: 234, baseType: !672, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !679, file: !6, line: 235, baseType: !665, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !679, file: !6, line: 236, baseType: !672, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !679, file: !6, line: 237, baseType: !694, size: 4096, offset: 512)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 4096, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 8)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !675, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !675, file: !6, line: 162, baseType: !699, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 27, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !206, line: 96, baseType: !105)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !675, file: !6, line: 163, baseType: !702, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !703, line: 276, baseType: !704)
!703 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !703, line: 276, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !704, file: !703, line: 276, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !703, line: 70, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !703, line: 65, size: 32, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !708, file: !703, line: 66, baseType: !7, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !675, file: !6, line: 164, baseType: !672, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !675, file: !6, line: 165, baseType: !713, size: 128, offset: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !661, line: 14, size: 128, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !713, file: !661, line: 15, baseType: !716, size: 128)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !425, line: 125, size: 128, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !716, file: !425, line: 126, baseType: !441, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !716, file: !425, line: 127, baseType: !429, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !675, file: !6, line: 166, baseType: !721, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!665}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !675, file: !6, line: 167, baseType: !665, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !657, file: !6, line: 123, baseType: !108, size: 8, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !657, file: !6, line: 124, baseType: !108, size: 8, offset: 456)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !657, file: !6, line: 125, baseType: !108, size: 8, offset: 464)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !657, file: !6, line: 126, baseType: !108, size: 8, offset: 472)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !641, file: !584, line: 572, baseType: !657, size: 512, offset: 1216)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !641, file: !584, line: 580, baseType: !731, size: 64, offset: 1728)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !583, file: !584, line: 721, baseType: !7, size: 32, offset: 3584)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !583, file: !584, line: 722, baseType: !105, size: 32, offset: 3616)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !583, file: !584, line: 723, baseType: !735, size: 64, offset: 3648)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !738, line: 17, baseType: !739)
!738 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !738, line: 17, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !739, file: !738, line: 17, baseType: !197, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !583, file: !584, line: 724, baseType: !737, size: 64, offset: 3712)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !583, file: !584, line: 749, baseType: !744, offset: 3776)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !584, line: 290, elements: !307)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !583, file: !584, line: 751, baseType: !280, size: 128, offset: 3776)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !583, file: !584, line: 757, baseType: !433, size: 64, offset: 3904)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !583, file: !584, line: 758, baseType: !433, size: 64, offset: 3968)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !583, file: !584, line: 761, baseType: !749, size: 320, offset: 4032)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !517, line: 34, size: 320, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !749, file: !517, line: 35, baseType: !182, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !749, file: !517, line: 36, baseType: !753, size: 256, offset: 64)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 256, elements: !521)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !583, file: !584, line: 766, baseType: !105, size: 32, offset: 4352)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !583, file: !584, line: 767, baseType: !105, size: 32, offset: 4384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !583, file: !584, line: 768, baseType: !105, size: 32, offset: 4416)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !583, file: !584, line: 770, baseType: !105, size: 32, offset: 4448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !583, file: !584, line: 772, baseType: !123, size: 64, offset: 4480)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !583, file: !584, line: 775, baseType: !7, size: 32, offset: 4544)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !583, file: !584, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !583, file: !584, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !583, file: !584, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !583, file: !584, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !583, file: !584, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !583, file: !584, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !583, file: !584, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !583, file: !584, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !583, file: !584, line: 831, baseType: !123, size: 64, offset: 4672)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !583, file: !584, line: 833, baseType: !770, size: 384, offset: 4736)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !771)
!771 = !{!772, !777}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !770, file: !12, line: 26, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!129, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !12, line: 27, baseType: !778, size: 320, offset: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !12, line: 27, size: 320, elements: !779)
!779 = !{!780, !790, !817}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !778, file: !12, line: 36, baseType: !781, size: 320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !12, line: 29, size: 320, elements: !782)
!782 = !{!783, !785, !786, !787, !788, !789}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !781, file: !12, line: 30, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !781, file: !12, line: 31, baseType: !118, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !12, line: 32, baseType: !118, size: 32, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !781, file: !12, line: 33, baseType: !118, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !781, file: !12, line: 34, baseType: !182, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !781, file: !12, line: 35, baseType: !784, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !778, file: !12, line: 46, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !12, line: 38, size: 192, elements: !792)
!792 = !{!793, !794, !795, !816}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !791, file: !12, line: 39, baseType: !699, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !12, line: 41, baseType: !796, size: 64, offset: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !12, line: 41, size: 64, elements: !797)
!797 = !{!798, !806}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !796, file: !12, line: 42, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !801, line: 7, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !800, file: !801, line: 8, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !206, line: 93, baseType: !409)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !800, file: !801, line: 9, baseType: !409, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !796, file: !12, line: 43, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !809, line: 7, size: 64, elements: !810)
!809 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !815}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !808, file: !809, line: 8, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !809, line: 5, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !109, line: 20, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !105)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !808, file: !809, line: 9, baseType: !813, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !791, file: !12, line: 45, baseType: !182, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !778, file: !12, line: 54, baseType: !818, size: 256)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !12, line: 48, size: 256, elements: !819)
!819 = !{!820, !823, !824, !825, !826}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !818, file: !12, line: 49, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !818, file: !12, line: 50, baseType: !105, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !818, file: !12, line: 51, baseType: !105, size: 32, offset: 96)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !818, file: !12, line: 52, baseType: !123, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !818, file: !12, line: 53, baseType: !123, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !583, file: !584, line: 835, baseType: !828, size: 32, offset: 5120)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !107, line: 22, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !206, line: 28, baseType: !105)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !583, file: !584, line: 836, baseType: !828, size: 32, offset: 5152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !583, file: !584, line: 840, baseType: !123, size: 64, offset: 5184)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !583, file: !584, line: 849, baseType: !582, size: 64, offset: 5248)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !583, file: !584, line: 852, baseType: !582, size: 64, offset: 5312)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !583, file: !584, line: 857, baseType: !280, size: 128, offset: 5376)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !583, file: !584, line: 858, baseType: !280, size: 128, offset: 5504)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !583, file: !584, line: 859, baseType: !582, size: 64, offset: 5632)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !583, file: !584, line: 867, baseType: !280, size: 128, offset: 5696)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !583, file: !584, line: 868, baseType: !280, size: 128, offset: 5824)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !583, file: !584, line: 871, baseType: !840, size: 64, offset: 5952)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !842, line: 59, size: 768, elements: !843)
!842 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844, !845, !846, !847, !858, !859, !866, !875}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !841, file: !842, line: 61, baseType: !595, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !841, file: !842, line: 62, baseType: !7, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !841, file: !842, line: 63, baseType: !293, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !841, file: !842, line: 65, baseType: !848, size: 256, offset: 64)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 256, elements: !521)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !107, line: 182, size: 64, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !849, file: !107, line: 183, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 186, size: 128, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !107, line: 187, baseType: !852, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !853, file: !107, line: 187, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !841, file: !842, line: 66, baseType: !849, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !841, file: !842, line: 68, baseType: !860, size: 128, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !861, line: 40, baseType: !862)
!861 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !861, line: 36, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !862, file: !861, line: 37, baseType: !293)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !862, file: !861, line: 38, baseType: !280, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !841, file: !842, line: 69, baseType: !867, size: 128, align: 64, offset: 512)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 216, size: 128, align: 64, elements: !868)
!868 = !{!869, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !867, file: !107, line: 217, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !867, file: !107, line: 218, baseType: !872, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !870}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !841, file: !842, line: 70, baseType: !876, size: 128, offset: 640)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 128, elements: !198)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !842, line: 54, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !877, file: !842, line: 55, baseType: !105, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !877, file: !842, line: 56, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !842, line: 56, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !583, file: !584, line: 872, baseType: !884, size: 512, offset: 6016)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 512, elements: !521)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !583, file: !584, line: 873, baseType: !280, size: 128, offset: 6528)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !583, file: !584, line: 874, baseType: !280, size: 128, offset: 6656)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !583, file: !584, line: 876, baseType: !888, size: 64, offset: 6784)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !890, line: 26, size: 192, elements: !891)
!890 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !889, file: !890, line: 27, baseType: !7, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !889, file: !890, line: 28, baseType: !894, size: 128, offset: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !895, line: 43, size: 128, elements: !896)
!895 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !894, file: !895, line: 44, baseType: !487)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !894, file: !895, line: 45, baseType: !280, size: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !583, file: !584, line: 879, baseType: !900, size: 64, offset: 6848)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !583, file: !584, line: 882, baseType: !900, size: 64, offset: 6912)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !583, file: !584, line: 884, baseType: !182, size: 64, offset: 6976)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !583, file: !584, line: 885, baseType: !182, size: 64, offset: 7040)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !583, file: !584, line: 890, baseType: !182, size: 64, offset: 7104)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !583, file: !584, line: 891, baseType: !906, size: 128, offset: 7168)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !584, line: 242, size: 128, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !906, file: !584, line: 244, baseType: !182, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !906, file: !584, line: 245, baseType: !182, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !584, line: 246, baseType: !487, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !583, file: !584, line: 900, baseType: !123, size: 64, offset: 7296)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !583, file: !584, line: 901, baseType: !123, size: 64, offset: 7360)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !583, file: !584, line: 904, baseType: !182, size: 64, offset: 7424)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !583, file: !584, line: 907, baseType: !182, size: 64, offset: 7488)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !583, file: !584, line: 910, baseType: !123, size: 64, offset: 7552)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !583, file: !584, line: 911, baseType: !123, size: 64, offset: 7616)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !583, file: !584, line: 914, baseType: !918, size: 640, offset: 7680)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !919, line: 123, size: 640, elements: !920)
!919 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !927, !928}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !918, file: !919, line: 124, baseType: !922, size: 576)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 576, elements: !334)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !919, line: 108, size: 192, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !923, file: !919, line: 109, baseType: !182, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !923, file: !919, line: 110, baseType: !713, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !918, file: !919, line: 125, baseType: !7, size: 32, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !918, file: !919, line: 126, baseType: !7, size: 32, offset: 608)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !583, file: !584, line: 917, baseType: !930, size: 192, offset: 8320)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !919, line: 134, size: 192, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !930, file: !919, line: 135, baseType: !867, size: 128, align: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !930, file: !919, line: 136, baseType: !7, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !583, file: !584, line: 923, baseType: !935, size: 64, offset: 8512)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !938, line: 11, flags: DIFlagFwdDecl)
!938 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !583, file: !584, line: 926, baseType: !935, size: 64, offset: 8576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !583, file: !584, line: 929, baseType: !935, size: 64, offset: 8640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !583, file: !584, line: 933, baseType: !942, size: 64, offset: 8704)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !584, line: 933, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !583, file: !584, line: 943, baseType: !945, size: 128, offset: 8768)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 16)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !583, file: !584, line: 945, baseType: !949, size: 64, offset: 8896)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !584, line: 49, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !583, file: !584, line: 956, baseType: !952, size: 64, offset: 8960)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !584, line: 45, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !583, file: !584, line: 959, baseType: !955, size: 64, offset: 9024)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !584, line: 959, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !583, file: !584, line: 962, baseType: !958, size: 64, offset: 9088)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !584, line: 66, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !583, file: !584, line: 966, baseType: !961, size: 64, offset: 9152)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !963, line: 35, flags: DIFlagFwdDecl)
!963 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !583, file: !584, line: 969, baseType: !965, size: 64, offset: 9216)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !919, line: 223, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !583, file: !584, line: 970, baseType: !968, size: 64, offset: 9280)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !584, line: 62, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !583, file: !584, line: 971, baseType: !971, size: 64, offset: 9344)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !972, line: 25, baseType: !973)
!972 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !972, line: 23, size: 64, elements: !974)
!974 = !{!975}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !973, file: !972, line: 24, baseType: !197, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !583, file: !584, line: 972, baseType: !971, size: 64, offset: 9408)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !583, file: !584, line: 974, baseType: !971, size: 64, offset: 9472)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !583, file: !584, line: 975, baseType: !979, size: 192, offset: 9536)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !980, line: 30, size: 192, elements: !981)
!980 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !979, file: !980, line: 31, baseType: !280, size: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !979, file: !980, line: 32, baseType: !971, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !583, file: !584, line: 976, baseType: !123, size: 64, offset: 9728)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !583, file: !584, line: 977, baseType: !374, size: 64, offset: 9792)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !583, file: !584, line: 978, baseType: !7, size: 32, offset: 9856)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !583, file: !584, line: 980, baseType: !870, size: 64, offset: 9920)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !583, file: !584, line: 989, baseType: !989, size: 128, offset: 9984)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !990, line: 35, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !989, file: !990, line: 36, baseType: !105, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !989, file: !990, line: 37, baseType: !462, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !989, file: !990, line: 38, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !990, line: 23, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !583, file: !584, line: 992, baseType: !182, size: 64, offset: 10112)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !583, file: !584, line: 993, baseType: !182, size: 64, offset: 10176)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !583, file: !584, line: 996, baseType: !293, offset: 10240)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !583, file: !584, line: 999, baseType: !487, offset: 10240)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !583, file: !584, line: 1001, baseType: !1002, size: 64, offset: 10240)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !584, line: 636, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !584, line: 637, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !583, file: !584, line: 1005, baseType: !716, size: 128, offset: 10304)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !583, file: !584, line: 1007, baseType: !582, size: 64, offset: 10432)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !583, file: !584, line: 1009, baseType: !1009, size: 64, offset: 10496)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !584, line: 1009, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !583, file: !584, line: 1043, baseType: !121, size: 64, offset: 10560)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !583, file: !584, line: 1046, baseType: !1013, size: 64, offset: 10624)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !584, line: 41, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !583, file: !584, line: 1050, baseType: !1016, size: 64, offset: 10688)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !584, line: 42, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !583, file: !584, line: 1054, baseType: !1019, size: 64, offset: 10752)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !584, line: 55, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !583, file: !584, line: 1056, baseType: !1022, size: 64, offset: 10816)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !584, line: 40, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !583, file: !584, line: 1058, baseType: !1025, size: 64, offset: 10880)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !584, line: 47, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !583, file: !584, line: 1061, baseType: !1028, size: 64, offset: 10944)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !584, line: 43, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !583, file: !584, line: 1064, baseType: !123, size: 64, offset: 11008)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !583, file: !584, line: 1065, baseType: !1032, size: 64, offset: 11072)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !980, line: 14, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !980, line: 12, size: 384, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !980, line: 13, baseType: !1037, size: 384)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !980, line: 13, size: 384, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1037, file: !980, line: 13, baseType: !105, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1037, file: !980, line: 13, baseType: !105, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1037, file: !980, line: 13, baseType: !105, size: 32, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1037, file: !980, line: 13, baseType: !1043, size: 256, offset: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1044, line: 32, size: 256, elements: !1045)
!1044 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1045 = !{!1046, !1052, !1065, !1071, !1080, !1100, !1105}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1043, file: !1044, line: 37, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 34, size: 64, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1047, file: !1044, line: 35, baseType: !829, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1047, file: !1044, line: 36, baseType: !1051, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !206, line: 49, baseType: !7)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1043, file: !1044, line: 45, baseType: !1053, size: 192)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 40, size: 192, elements: !1054)
!1054 = !{!1055, !1057, !1058, !1064}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1053, file: !1044, line: 41, baseType: !1056, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !206, line: 95, baseType: !105)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1053, file: !1044, line: 42, baseType: !105, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1053, file: !1044, line: 43, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1044, line: 11, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1044, line: 8, size: 64, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1060, file: !1044, line: 9, baseType: !105, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1060, file: !1044, line: 10, baseType: !121, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1053, file: !1044, line: 44, baseType: !105, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1043, file: !1044, line: 52, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 48, size: 128, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1066, file: !1044, line: 49, baseType: !829, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1066, file: !1044, line: 50, baseType: !1051, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1066, file: !1044, line: 51, baseType: !1059, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1043, file: !1044, line: 61, baseType: !1072, size: 256)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 55, size: 256, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1072, file: !1044, line: 56, baseType: !829, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1072, file: !1044, line: 57, baseType: !1051, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1072, file: !1044, line: 58, baseType: !105, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1072, file: !1044, line: 59, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !206, line: 94, baseType: !207)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1072, file: !1044, line: 60, baseType: !1078, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1043, file: !1044, line: 95, baseType: !1081, size: 256)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 64, size: 256, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1081, file: !1044, line: 65, baseType: !121, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1044, line: 77, baseType: !1085, size: 192, offset: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1044, line: 77, size: 192, elements: !1086)
!1086 = !{!1087, !1088, !1095}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1085, file: !1044, line: 82, baseType: !571, size: 16)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1085, file: !1044, line: 88, baseType: !1089, size: 192)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1044, line: 84, size: 192, elements: !1090)
!1090 = !{!1091, !1093, !1094}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1089, file: !1044, line: 85, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !695)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1089, file: !1044, line: 86, baseType: !121, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1089, file: !1044, line: 87, baseType: !121, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1085, file: !1044, line: 93, baseType: !1096, size: 96)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1044, line: 90, size: 96, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1096, file: !1044, line: 91, baseType: !1092, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1096, file: !1044, line: 92, baseType: !119, size: 32, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1043, file: !1044, line: 101, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 98, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1101, file: !1044, line: 99, baseType: !129, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1101, file: !1044, line: 100, baseType: !105, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1043, file: !1044, line: 108, baseType: !1106, size: 128)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1044, line: 104, size: 128, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1106, file: !1044, line: 105, baseType: !121, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1106, file: !1044, line: 106, baseType: !105, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1106, file: !1044, line: 107, baseType: !7, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !583, file: !584, line: 1067, baseType: !1112, offset: 11136)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1113, line: 12, elements: !307)
!1113 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !583, file: !584, line: 1099, baseType: !1115, size: 64, offset: 11136)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !584, line: 56, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !583, file: !584, line: 1103, baseType: !280, size: 128, offset: 11200)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !583, file: !584, line: 1104, baseType: !1119, size: 64, offset: 11328)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !584, line: 46, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !583, file: !584, line: 1105, baseType: !539, size: 192, offset: 11392)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !583, file: !584, line: 1106, baseType: !7, size: 32, offset: 11584)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !583, file: !584, line: 1109, baseType: !1124, size: 128, offset: 11648)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 128, elements: !1127)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !584, line: 51, flags: DIFlagFwdDecl)
!1127 = !{!1128}
!1128 = !DISubrange(count: 2)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !583, file: !584, line: 1110, baseType: !539, size: 192, offset: 11776)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !583, file: !584, line: 1111, baseType: !280, size: 128, offset: 11968)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !583, file: !584, line: 1173, baseType: !1132, size: 64, offset: 12096)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1134, line: 62, size: 256, align: 256, elements: !1135)
!1134 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1137, !1138, !1143}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1133, file: !1134, line: 75, baseType: !119, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1133, file: !1134, line: 90, baseType: !119, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1133, file: !1134, line: 124, baseType: !1139, size: 64, offset: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !1134, line: 109, size: 64, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1139, file: !1134, line: 110, baseType: !183, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1139, file: !1134, line: 112, baseType: !183, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1134, line: 144, baseType: !119, size: 32, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !583, file: !584, line: 1174, baseType: !118, size: 32, offset: 12160)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !583, file: !584, line: 1179, baseType: !123, size: 64, offset: 12224)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !583, file: !584, line: 1182, baseType: !1147, size: 128, offset: 12288)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !517, line: 76, size: 128, elements: !1148)
!1148 = !{!1149, !1154, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1147, file: !517, line: 85, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1151, line: 7, size: 64, elements: !1152)
!1151 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1150, file: !1151, line: 12, baseType: !739, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1147, file: !517, line: 88, baseType: !262, size: 8, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1147, file: !517, line: 95, baseType: !262, size: 8, offset: 72)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !584, line: 1184, baseType: !1157, size: 128, offset: 12416)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !584, line: 1184, size: 128, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1157, file: !584, line: 1185, baseType: !595, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1157, file: !584, line: 1186, baseType: !867, size: 128, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !583, file: !584, line: 1190, baseType: !1162, size: 64, offset: 12544)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1164, line: 13, flags: DIFlagFwdDecl)
!1164 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !583, file: !584, line: 1192, baseType: !1166, size: 128, offset: 12608)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !517, line: 64, size: 128, elements: !1167)
!1167 = !{!1168, !1261, !1262}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1166, file: !517, line: 65, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !417, line: 68, size: 512, align: 128, elements: !1171)
!1171 = !{!1172, !1173, !1253, !1260}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1170, file: !417, line: 69, baseType: !123, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !417, line: 77, baseType: !1174, size: 320, offset: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !417, line: 77, size: 320, elements: !1175)
!1175 = !{!1176, !1185, !1190, !1218, !1226, !1232, !1245, !1252}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 78, baseType: !1177, size: 320)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 78, size: 320, elements: !1178)
!1178 = !{!1179, !1180, !1183, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1177, file: !417, line: 84, baseType: !280, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1177, file: !417, line: 86, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !417, line: 26, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1177, file: !417, line: 87, baseType: !123, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1177, file: !417, line: 94, baseType: !123, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 96, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 96, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1186, file: !417, line: 101, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !107, line: 143, baseType: !182)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 103, baseType: !1191, size: 320)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 103, size: 320, elements: !1192)
!1192 = !{!1193, !1203, !1206, !1207}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !417, line: 104, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !417, line: 104, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1194, file: !417, line: 105, baseType: !280, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !417, line: 106, baseType: !1198, size: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !417, line: 106, size: 128, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1198, file: !417, line: 107, baseType: !1169, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1198, file: !417, line: 109, baseType: !105, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1198, file: !417, line: 110, baseType: !105, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1191, file: !417, line: 117, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !417, line: 117, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1191, file: !417, line: 119, baseType: !121, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !417, line: 120, baseType: !1208, size: 64, offset: 256)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !417, line: 120, size: 64, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1208, file: !417, line: 121, baseType: !121, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1208, file: !417, line: 122, baseType: !123, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !417, line: 123, baseType: !1213, size: 32)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !417, line: 123, size: 32, elements: !1214)
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1213, file: !417, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1213, file: !417, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1213, file: !417, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 130, baseType: !1219, size: 192)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 130, size: 192, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1219, file: !417, line: 131, baseType: !123, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1219, file: !417, line: 134, baseType: !112, size: 8, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1219, file: !417, line: 135, baseType: !112, size: 8, offset: 72)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1219, file: !417, line: 136, baseType: !462, size: 32, offset: 96)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1219, file: !417, line: 137, baseType: !7, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 139, baseType: !1227, size: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 139, size: 256, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1227, file: !417, line: 140, baseType: !123, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1227, file: !417, line: 141, baseType: !462, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1227, file: !417, line: 143, baseType: !280, size: 128, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 145, baseType: !1233, size: 256)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 145, size: 256, elements: !1234)
!1234 = !{!1235, !1236, !1238, !1239, !1244}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1233, file: !417, line: 146, baseType: !123, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1233, file: !417, line: 147, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !406, line: 509, baseType: !1169)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1233, file: !417, line: 148, baseType: !123, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !417, line: 149, baseType: !1240, size: 64, offset: 192)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1233, file: !417, line: 149, size: 64, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1240, file: !417, line: 150, baseType: !433, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1240, file: !417, line: 151, baseType: !462, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1233, file: !417, line: 156, baseType: !293, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !417, line: 159, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !417, line: 159, size: 128, elements: !1247)
!1247 = !{!1248, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1246, file: !417, line: 161, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !417, line: 161, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1246, file: !417, line: 162, baseType: !121, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1174, file: !417, line: 176, baseType: !867, size: 128, align: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !417, line: 179, baseType: !1254, size: 32, offset: 384)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !417, line: 179, size: 32, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1254, file: !417, line: 184, baseType: !462, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1254, file: !417, line: 192, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1254, file: !417, line: 194, baseType: !7, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1254, file: !417, line: 195, baseType: !105, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1170, file: !417, line: 199, baseType: !462, size: 32, offset: 416)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1166, file: !517, line: 67, baseType: !119, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1166, file: !517, line: 68, baseType: !119, size: 32, offset: 96)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !583, file: !584, line: 1206, baseType: !105, size: 32, offset: 12736)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !583, file: !584, line: 1207, baseType: !105, size: 32, offset: 12768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !583, file: !584, line: 1209, baseType: !123, size: 64, offset: 12800)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !583, file: !584, line: 1219, baseType: !182, size: 64, offset: 12864)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !583, file: !584, line: 1220, baseType: !182, size: 64, offset: 12928)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !583, file: !584, line: 1317, baseType: !105, size: 32, offset: 12992)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !583, file: !584, line: 1319, baseType: !582, size: 64, offset: 13056)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !583, file: !584, line: 1322, baseType: !1271, size: 64, offset: 13120)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1273, line: 56, size: 512, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1281, !1282, !1283}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1272, file: !1273, line: 57, baseType: !1271, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1272, file: !1273, line: 58, baseType: !121, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1272, file: !1273, line: 59, baseType: !123, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1273, line: 60, baseType: !123, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1272, file: !1273, line: 61, baseType: !1280, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1272, file: !1273, line: 62, baseType: !7, size: 32, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1272, file: !1273, line: 63, baseType: !181, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1272, file: !1273, line: 64, baseType: !217, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !583, file: !584, line: 1326, baseType: !595, size: 32, offset: 13184)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !583, file: !584, line: 1342, baseType: !121, size: 64, offset: 13248)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !583, file: !584, line: 1343, baseType: !183, size: 64, offset: 13312)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !583, file: !584, line: 1344, baseType: !182, size: 64, offset: 13376)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !583, file: !584, line: 1345, baseType: !183, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !583, file: !584, line: 1346, baseType: !183, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !583, file: !584, line: 1347, baseType: !183, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !583, file: !584, line: 1348, baseType: !867, size: 128, align: 64, offset: 13504)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !583, file: !584, line: 1358, baseType: !1293, size: 34816, offset: 13824)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1294, line: 485, size: 34816, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1325, !1326, !1327, !1328, !1329, !1330, !1333, !1334, !1335}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1293, file: !1294, line: 487, baseType: !1297, size: 192)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 192, elements: !334)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1299, line: 16, size: 64, elements: !1300)
!1299 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1298, file: !1299, line: 17, baseType: !114, size: 16)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1298, file: !1299, line: 18, baseType: !114, size: 16, offset: 16)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1298, file: !1299, line: 19, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1298, file: !1299, line: 19, baseType: !114, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1298, file: !1299, line: 19, baseType: !114, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1298, file: !1299, line: 19, baseType: !114, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1298, file: !1299, line: 19, baseType: !114, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1298, file: !1299, line: 20, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1298, file: !1299, line: 20, baseType: !114, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1298, file: !1299, line: 20, baseType: !114, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1298, file: !1299, line: 20, baseType: !114, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1298, file: !1299, line: 20, baseType: !114, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1298, file: !1299, line: 20, baseType: !114, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1293, file: !1294, line: 491, baseType: !123, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1293, file: !1294, line: 495, baseType: !116, size: 16, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1293, file: !1294, line: 496, baseType: !116, size: 16, offset: 272)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1293, file: !1294, line: 497, baseType: !116, size: 16, offset: 288)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1293, file: !1294, line: 498, baseType: !116, size: 16, offset: 304)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1293, file: !1294, line: 502, baseType: !123, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1293, file: !1294, line: 503, baseType: !123, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1293, file: !1294, line: 514, baseType: !1322, size: 256, offset: 448)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 256, elements: !521)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1294, line: 483, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1293, file: !1294, line: 516, baseType: !123, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1293, file: !1294, line: 518, baseType: !123, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1293, file: !1294, line: 520, baseType: !123, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1293, file: !1294, line: 521, baseType: !123, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1293, file: !1294, line: 522, baseType: !123, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1293, file: !1294, line: 528, baseType: !1331, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1294, line: 10, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1293, file: !1294, line: 535, baseType: !123, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1293, file: !1294, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1293, file: !1294, line: 540, baseType: !1336, size: 33280, offset: 1536)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1337, line: 317, size: 33280, elements: !1338)
!1337 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1336, file: !1337, line: 330, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1336, file: !1337, line: 337, baseType: !123, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1336, file: !1337, line: 348, baseType: !1342, size: 32768, offset: 512)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1337, line: 304, size: 32768, elements: !1343)
!1343 = !{!1344, !1359, !1398, !1448, !1465}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1342, file: !1337, line: 305, baseType: !1345, size: 896)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1337, line: 12, size: 896, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1358}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1345, file: !1337, line: 13, baseType: !118, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1345, file: !1337, line: 14, baseType: !118, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1345, file: !1337, line: 15, baseType: !118, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1345, file: !1337, line: 16, baseType: !118, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1345, file: !1337, line: 17, baseType: !118, size: 32, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1345, file: !1337, line: 18, baseType: !118, size: 32, offset: 160)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1345, file: !1337, line: 19, baseType: !118, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1345, file: !1337, line: 22, baseType: !1355, size: 640, offset: 224)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 640, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 20)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1345, file: !1337, line: 25, baseType: !118, size: 32, offset: 864)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1342, file: !1337, line: 306, baseType: !1360, size: 4096, align: 128)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1337, line: 34, size: 4096, align: 128, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1381, !1382, !1383, !1387, !1389, !1393}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1360, file: !1337, line: 35, baseType: !114, size: 16)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1360, file: !1337, line: 36, baseType: !114, size: 16, offset: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1360, file: !1337, line: 37, baseType: !114, size: 16, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1360, file: !1337, line: 38, baseType: !114, size: 16, offset: 48)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1337, line: 39, baseType: !1367, size: 128, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1337, line: 39, size: 128, elements: !1368)
!1368 = !{!1369, !1374}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1337, line: 40, baseType: !1370, size: 128)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1337, line: 40, size: 128, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1370, file: !1337, line: 41, baseType: !182, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1370, file: !1337, line: 42, baseType: !182, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1337, line: 44, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1337, line: 44, size: 128, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1375, file: !1337, line: 45, baseType: !118, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1375, file: !1337, line: 46, baseType: !118, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1375, file: !1337, line: 47, baseType: !118, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1375, file: !1337, line: 48, baseType: !118, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1360, file: !1337, line: 51, baseType: !118, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1360, file: !1337, line: 52, baseType: !118, size: 32, offset: 224)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1360, file: !1337, line: 55, baseType: !1384, size: 1024, offset: 256)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1360, file: !1337, line: 58, baseType: !1388, size: 2048, offset: 1280)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 2048, elements: !338)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1360, file: !1337, line: 60, baseType: !1390, size: 384, offset: 3328)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 384, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 12)
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1337, line: 62, baseType: !1394, size: 384, offset: 3712)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1337, line: 62, size: 384, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1394, file: !1337, line: 63, baseType: !1390, size: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1394, file: !1337, line: 64, baseType: !1390, size: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1342, file: !1337, line: 307, baseType: !1399, size: 1088)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1337, line: 79, size: 1088, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1447}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1399, file: !1337, line: 80, baseType: !118, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1399, file: !1337, line: 81, baseType: !118, size: 32, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1399, file: !1337, line: 82, baseType: !118, size: 32, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1399, file: !1337, line: 83, baseType: !118, size: 32, offset: 96)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1399, file: !1337, line: 84, baseType: !118, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1399, file: !1337, line: 85, baseType: !118, size: 32, offset: 160)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1399, file: !1337, line: 86, baseType: !118, size: 32, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1399, file: !1337, line: 88, baseType: !1355, size: 640, offset: 224)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1399, file: !1337, line: 89, baseType: !108, size: 8, offset: 864)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1399, file: !1337, line: 90, baseType: !108, size: 8, offset: 872)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1399, file: !1337, line: 91, baseType: !108, size: 8, offset: 880)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1399, file: !1337, line: 92, baseType: !108, size: 8, offset: 888)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1399, file: !1337, line: 93, baseType: !108, size: 8, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1399, file: !1337, line: 94, baseType: !108, size: 8, offset: 904)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1399, file: !1337, line: 95, baseType: !1416, size: 64, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1418, line: 11, size: 128, elements: !1419)
!1418 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1417, file: !1418, line: 12, baseType: !129, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1417, file: !1418, line: 13, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1424, line: 56, size: 1344, elements: !1425)
!1424 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1423, file: !1424, line: 61, baseType: !123, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1423, file: !1424, line: 62, baseType: !123, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1423, file: !1424, line: 63, baseType: !123, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1423, file: !1424, line: 64, baseType: !123, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1423, file: !1424, line: 65, baseType: !123, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1423, file: !1424, line: 66, baseType: !123, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1423, file: !1424, line: 68, baseType: !123, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1423, file: !1424, line: 69, baseType: !123, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1423, file: !1424, line: 70, baseType: !123, size: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1423, file: !1424, line: 71, baseType: !123, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1423, file: !1424, line: 72, baseType: !123, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1423, file: !1424, line: 73, baseType: !123, size: 64, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1423, file: !1424, line: 74, baseType: !123, size: 64, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1423, file: !1424, line: 75, baseType: !123, size: 64, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1423, file: !1424, line: 76, baseType: !123, size: 64, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1423, file: !1424, line: 81, baseType: !123, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1423, file: !1424, line: 83, baseType: !123, size: 64, offset: 1024)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1423, file: !1424, line: 84, baseType: !123, size: 64, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1424, line: 85, baseType: !123, size: 64, offset: 1152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1423, file: !1424, line: 86, baseType: !123, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1423, file: !1424, line: 87, baseType: !123, size: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1399, file: !1337, line: 96, baseType: !118, size: 32, offset: 1024)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1342, file: !1337, line: 308, baseType: !1449, size: 4608, align: 512)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1337, line: 289, size: 4608, align: 512, elements: !1450)
!1450 = !{!1451, !1452, !1461}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1449, file: !1337, line: 290, baseType: !1360, size: 4096, align: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1449, file: !1337, line: 291, baseType: !1453, size: 512, offset: 4096)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1337, line: 268, size: 512, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1453, file: !1337, line: 269, baseType: !182, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1453, file: !1337, line: 270, baseType: !182, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1453, file: !1337, line: 271, baseType: !1458, size: 384, offset: 128)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 384, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 6)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1449, file: !1337, line: 292, baseType: !1462, offset: 4608)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 0)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1342, file: !1337, line: 309, baseType: !1466, size: 32768)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 32768, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 4096)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !417, line: 378, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !575, file: !417, line: 384, baseType: !889, size: 192, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !437, file: !417, line: 500, baseType: !293, offset: 6656)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !437, file: !417, line: 501, baseType: !1474, size: 64, offset: 6656)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !417, line: 387, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !437, file: !417, line: 516, baseType: !1477, size: 64, offset: 6720)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1479, line: 18, flags: DIFlagFwdDecl)
!1479 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !437, file: !417, line: 519, baseType: !404, size: 64, offset: 6784)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !437, file: !417, line: 521, baseType: !1482, size: 64, offset: 6848)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !417, line: 521, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !437, file: !417, line: 545, baseType: !462, size: 32, offset: 6912)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !437, file: !417, line: 548, baseType: !262, size: 8, offset: 6944)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !437, file: !417, line: 550, baseType: !1487, offset: 6952)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1488, line: 142, elements: !307)
!1488 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !437, file: !417, line: 554, baseType: !1490, size: 256, offset: 6976)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1491, line: 102, size: 256, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1490, file: !1491, line: 103, baseType: !470, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1490, file: !1491, line: 104, baseType: !280, size: 128, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1490, file: !1491, line: 105, baseType: !1496, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1491, line: 21, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !437, file: !417, line: 557, baseType: !118, size: 32, offset: 7232)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !434, file: !417, line: 565, baseType: !1503, offset: 7296)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: -1)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !416, file: !417, line: 333, baseType: !1507, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !406, line: 284, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !406, line: 284, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1508, file: !406, line: 284, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !460, line: 19, baseType: !123)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !416, file: !417, line: 334, baseType: !123, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !416, file: !417, line: 343, baseType: !1514, size: 256, offset: 704)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !417, line: 340, size: 256, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1514, file: !417, line: 341, baseType: !424, size: 192, align: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1514, file: !417, line: 342, baseType: !123, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !416, file: !417, line: 351, baseType: !280, size: 128, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !416, file: !417, line: 353, baseType: !1520, size: 64, offset: 1088)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !417, line: 353, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !416, file: !417, line: 356, baseType: !1523, size: 64, offset: 1152)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !417, line: 356, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !416, file: !417, line: 359, baseType: !123, size: 64, offset: 1216)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !416, file: !417, line: 361, baseType: !404, size: 64, offset: 1280)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !416, file: !417, line: 362, baseType: !121, size: 64, offset: 1344)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !416, file: !417, line: 365, baseType: !470, size: 64, offset: 1408)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !416, file: !417, line: 373, baseType: !1531, offset: 1472)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !417, line: 296, elements: !307)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !383, file: !358, line: 90, baseType: !378, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !383, file: !358, line: 91, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !348, file: !276, line: 143, baseType: !1536, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1539, !286}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1542)
!1542 = !{!1543, !1544, !1548, !1552, !1558, !1562}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1541, file: !18, line: 40, baseType: !17, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1541, file: !18, line: 41, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!262}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1541, file: !18, line: 42, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!121}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1541, file: !18, line: 43, baseType: !1553, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!217, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1541, file: !18, line: 44, baseType: !1559, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!217}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1541, file: !18, line: 45, baseType: !1563, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !121}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !348, file: !276, line: 144, baseType: !1567, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!217, !286}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !348, file: !276, line: 145, baseType: !1571, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !286, !1574, !1580}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1479, line: 23, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1479, line: 21, size: 32, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1576, file: !1479, line: 22, baseType: !1579, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 32, baseType: !1051)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1479, line: 28, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1479, line: 26, size: 32, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1582, file: !1479, line: 27, baseType: !1585, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 33, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !206, line: 50, baseType: !7)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !275, file: !276, line: 70, baseType: !1588, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1590, line: 123, size: 1024, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1733, !1734, !1735, !1736, !1737}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1589, file: !1590, line: 124, baseType: !462, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1589, file: !1590, line: 125, baseType: !462, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1589, file: !1590, line: 135, baseType: !1588, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1589, file: !1590, line: 136, baseType: !177, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1589, file: !1590, line: 138, baseType: !424, size: 192, align: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1589, file: !1590, line: 140, baseType: !217, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1589, file: !1590, line: 141, baseType: !7, size: 32, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1590, line: 142, baseType: !1600, size: 256, offset: 512)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1590, line: 142, size: 256, elements: !1601)
!1601 = !{!1602, !1656, !1660}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1600, file: !1590, line: 143, baseType: !1603, size: 192)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1590, line: 91, size: 192, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1603, file: !1590, line: 92, baseType: !123, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1603, file: !1590, line: 94, baseType: !441, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1603, file: !1590, line: 100, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1590, line: 180, size: 704, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1626, !1627, !1628, !1654, !1655}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1609, file: !1590, line: 182, baseType: !1588, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1609, file: !1590, line: 183, baseType: !7, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1609, file: !1590, line: 186, baseType: !1614, size: 192, offset: 128)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1615, line: 19, size: 192, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1624, !1625}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1614, file: !1615, line: 20, baseType: !1618, size: 128)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1619, line: 292, size: 128, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1618, file: !1619, line: 293, baseType: !293)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1618, file: !1619, line: 295, baseType: !120, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1618, file: !1619, line: 296, baseType: !121, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1614, file: !1615, line: 21, baseType: !7, size: 32, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1614, file: !1615, line: 22, baseType: !7, size: 32, offset: 160)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1609, file: !1590, line: 187, baseType: !118, size: 32, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1609, file: !1590, line: 188, baseType: !118, size: 32, offset: 352)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1609, file: !1590, line: 189, baseType: !1629, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1590, line: 168, size: 320, elements: !1631)
!1631 = !{!1632, !1638, !1642, !1646, !1650}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1630, file: !1590, line: 169, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!105, !1636, !1608}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !406, line: 539, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1630, file: !1590, line: 171, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!105, !1588, !177, !369}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1630, file: !1590, line: 173, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!105, !1588}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1630, file: !1590, line: 174, baseType: !1647, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!105, !1588, !1588, !177}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1630, file: !1590, line: 176, baseType: !1651, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!105, !1636, !1588, !1608}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1609, file: !1590, line: 192, baseType: !280, size: 128, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1609, file: !1590, line: 194, baseType: !860, size: 128, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1600, file: !1590, line: 144, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1590, line: 103, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1657, file: !1590, line: 104, baseType: !1588, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1600, file: !1590, line: 145, baseType: !1661, size: 256)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1590, line: 107, size: 256, elements: !1662)
!1662 = !{!1663, !1728, !1731, !1732}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1661, file: !1590, line: 108, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1590, line: 217, size: 768, elements: !1667)
!1667 = !{!1668, !1688, !1692, !1696, !1701, !1705, !1709, !1713, !1714, !1715, !1716, !1724}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1666, file: !1590, line: 222, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!105, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1590, line: 197, size: 1088, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1673, file: !1590, line: 199, baseType: !1588, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1673, file: !1590, line: 200, baseType: !404, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1673, file: !1590, line: 201, baseType: !1636, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1673, file: !1590, line: 202, baseType: !121, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1673, file: !1590, line: 205, baseType: !539, size: 192, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1673, file: !1590, line: 206, baseType: !539, size: 192, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1673, file: !1590, line: 207, baseType: !105, size: 32, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1673, file: !1590, line: 208, baseType: !280, size: 128, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1673, file: !1590, line: 209, baseType: !167, size: 64, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1673, file: !1590, line: 211, baseType: !374, size: 64, offset: 896)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1673, file: !1590, line: 212, baseType: !262, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1673, file: !1590, line: 213, baseType: !262, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1673, file: !1590, line: 214, baseType: !1523, size: 64, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1666, file: !1590, line: 223, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !1672}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1666, file: !1590, line: 236, baseType: !1693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!105, !1636, !121}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1666, file: !1590, line: 238, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!121, !1636, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1666, file: !1590, line: 239, baseType: !1702, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!121, !1636, !121, !1700}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1666, file: !1590, line: 240, baseType: !1706, size: 64, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1636, !121}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1666, file: !1590, line: 242, baseType: !1710, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!204, !1672, !167, !374, !407}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1666, file: !1590, line: 252, baseType: !374, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1666, file: !1590, line: 259, baseType: !262, size: 8, offset: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1666, file: !1590, line: 260, baseType: !1710, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1666, file: !1590, line: 263, baseType: !1717, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1720, !1672, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1721, line: 52, baseType: !7)
!1721 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1590, line: 27, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1666, file: !1590, line: 266, baseType: !1725, size: 64, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!105, !1672, !415}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1661, file: !1590, line: 109, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1590, line: 31, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1661, file: !1590, line: 110, baseType: !407, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1661, file: !1590, line: 111, baseType: !1588, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1589, file: !1590, line: 148, baseType: !121, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1589, file: !1590, line: 154, baseType: !182, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !1590, line: 156, baseType: !116, size: 16, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1589, file: !1590, line: 157, baseType: !369, size: 16, offset: 912)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1589, file: !1590, line: 158, baseType: !1738, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1590, line: 32, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !275, file: !276, line: 71, baseType: !1741, size: 32, offset: 448)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1742, line: 19, size: 32, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1741, file: !1742, line: 20, baseType: !595, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !275, file: !276, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !275, file: !276, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !275, file: !276, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !275, file: !276, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !275, file: !276, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !272, file: !30, line: 463, baseType: !1751, size: 64, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !272, file: !30, line: 465, baseType: !1753, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !272, file: !30, line: 467, baseType: !177, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !272, file: !30, line: 468, baseType: !1757, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1767, !1772, !1776}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1759, file: !30, line: 88, baseType: !177, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1759, file: !30, line: 89, baseType: !380, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1759, file: !30, line: 90, baseType: !1764, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!105, !1751, !329}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1759, file: !30, line: 91, baseType: !1768, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!167, !1751, !1771, !1574, !1580}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1759, file: !30, line: 93, baseType: !1773, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1751}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1759, file: !30, line: 95, baseType: !1777, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1780)
!1780 = !{!1781, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1779, file: !37, line: 279, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!105, !1751}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1779, file: !37, line: 280, baseType: !1773, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1779, file: !37, line: 281, baseType: !1782, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1779, file: !37, line: 282, baseType: !1782, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1779, file: !37, line: 283, baseType: !1782, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1779, file: !37, line: 284, baseType: !1782, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1779, file: !37, line: 285, baseType: !1782, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1779, file: !37, line: 286, baseType: !1782, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1779, file: !37, line: 287, baseType: !1782, size: 64, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1779, file: !37, line: 288, baseType: !1782, size: 64, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1779, file: !37, line: 289, baseType: !1782, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1779, file: !37, line: 290, baseType: !1782, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1779, file: !37, line: 291, baseType: !1782, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1779, file: !37, line: 292, baseType: !1782, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1779, file: !37, line: 293, baseType: !1782, size: 64, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1779, file: !37, line: 294, baseType: !1782, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1779, file: !37, line: 295, baseType: !1782, size: 64, offset: 1024)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1779, file: !37, line: 296, baseType: !1782, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1779, file: !37, line: 297, baseType: !1782, size: 64, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1779, file: !37, line: 298, baseType: !1782, size: 64, offset: 1216)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1779, file: !37, line: 299, baseType: !1782, size: 64, offset: 1280)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1779, file: !37, line: 300, baseType: !1782, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1779, file: !37, line: 301, baseType: !1782, size: 64, offset: 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !272, file: !30, line: 470, baseType: !1808, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1810, line: 82, size: 1408, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1897, !1900, !1903}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1809, file: !1810, line: 83, baseType: !177, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1809, file: !1810, line: 84, baseType: !177, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1809, file: !1810, line: 85, baseType: !1751, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1809, file: !1810, line: 86, baseType: !380, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1809, file: !1810, line: 87, baseType: !380, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1809, file: !1810, line: 88, baseType: !380, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1809, file: !1810, line: 90, baseType: !1819, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!105, !1751, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1824)
!1824 = !{!1825, !1826, !1827, !1831, !1832, !1833, !1834, !1848, !1861, !1862, !1863, !1864, !1865, !1873, !1874, !1875, !1876, !1877, !1878}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1823, file: !24, line: 96, baseType: !177, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1823, file: !24, line: 97, baseType: !1808, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1823, file: !24, line: 99, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1830, line: 76, flags: DIFlagFwdDecl)
!1830 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1823, file: !24, line: 100, baseType: !177, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1823, file: !24, line: 102, baseType: !262, size: 8, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1823, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1823, file: !24, line: 105, baseType: !1835, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1838, line: 262, size: 1600, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1842, !1843, !1847}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1837, file: !1838, line: 263, baseType: !1841, size: 256)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !1385)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1837, file: !1838, line: 264, baseType: !1841, size: 256, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1837, file: !1838, line: 265, baseType: !1844, size: 1024, offset: 512)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1024, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1837, file: !1838, line: 266, baseType: !217, size: 64, offset: 1536)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1823, file: !24, line: 106, baseType: !1849, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1838, line: 210, size: 256, elements: !1852)
!1852 = !{!1853, !1857, !1859, !1860}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1851, file: !1838, line: 211, baseType: !1854, size: 72)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 72, elements: !1855)
!1855 = !{!1856}
!1856 = !DISubrange(count: 9)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1851, file: !1838, line: 212, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1838, line: 14, baseType: !123)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1851, file: !1838, line: 213, baseType: !119, size: 32, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1851, file: !1838, line: 214, baseType: !119, size: 32, offset: 224)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1823, file: !24, line: 108, baseType: !1782, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1823, file: !24, line: 109, baseType: !1773, size: 64, offset: 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1823, file: !24, line: 110, baseType: !1782, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1823, file: !24, line: 111, baseType: !1773, size: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1823, file: !24, line: 112, baseType: !1866, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!105, !1751, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1871)
!1871 = !{!1872}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1870, file: !37, line: 51, baseType: !105, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1823, file: !24, line: 113, baseType: !1782, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1823, file: !24, line: 114, baseType: !380, size: 64, offset: 832)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1823, file: !24, line: 115, baseType: !380, size: 64, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1823, file: !24, line: 117, baseType: !1777, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1823, file: !24, line: 118, baseType: !1773, size: 64, offset: 1024)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1823, file: !24, line: 120, baseType: !1879, size: 64, offset: 1088)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1809, file: !1810, line: 91, baseType: !1764, size: 64, offset: 448)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1809, file: !1810, line: 92, baseType: !1782, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1809, file: !1810, line: 93, baseType: !1773, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1809, file: !1810, line: 94, baseType: !1782, size: 64, offset: 640)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1809, file: !1810, line: 95, baseType: !1773, size: 64, offset: 704)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1809, file: !1810, line: 97, baseType: !1782, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1809, file: !1810, line: 98, baseType: !1782, size: 64, offset: 832)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1809, file: !1810, line: 100, baseType: !1866, size: 64, offset: 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1809, file: !1810, line: 101, baseType: !1782, size: 64, offset: 960)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1809, file: !1810, line: 103, baseType: !1782, size: 64, offset: 1024)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1809, file: !1810, line: 105, baseType: !1782, size: 64, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1809, file: !1810, line: 107, baseType: !1777, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1809, file: !1810, line: 109, baseType: !1894, size: 64, offset: 1216)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1810, line: 109, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1809, file: !1810, line: 111, baseType: !1898, size: 64, offset: 1280)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1810, line: 111, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1809, file: !1810, line: 112, baseType: !1901, offset: 1344)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1902, line: 187, elements: !307)
!1902 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1809, file: !1810, line: 114, baseType: !262, size: 8, offset: 1344)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !272, file: !30, line: 471, baseType: !1822, size: 64, offset: 832)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !272, file: !30, line: 473, baseType: !121, size: 64, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !272, file: !30, line: 475, baseType: !121, size: 64, offset: 960)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !272, file: !30, line: 480, baseType: !539, size: 192, offset: 1024)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !272, file: !30, line: 484, baseType: !1909, size: 576, offset: 1216)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1909, file: !30, line: 362, baseType: !280, size: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1909, file: !30, line: 363, baseType: !280, size: 128, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1909, file: !30, line: 364, baseType: !280, size: 128, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1909, file: !30, line: 365, baseType: !280, size: 128, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1909, file: !30, line: 366, baseType: !262, size: 8, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1909, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !272, file: !30, line: 485, baseType: !1918, size: 2304, offset: 1792)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2015, !2019}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1918, file: !37, line: 566, baseType: !1869, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1918, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1918, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1918, file: !37, line: 569, baseType: !262, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1918, file: !37, line: 570, baseType: !262, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1918, file: !37, line: 571, baseType: !262, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1918, file: !37, line: 572, baseType: !262, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1918, file: !37, line: 573, baseType: !262, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1918, file: !37, line: 574, baseType: !262, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1918, file: !37, line: 575, baseType: !262, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1918, file: !37, line: 576, baseType: !262, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1918, file: !37, line: 577, baseType: !118, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1918, file: !37, line: 578, baseType: !293, offset: 96)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1918, file: !37, line: 580, baseType: !280, size: 128, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1918, file: !37, line: 581, baseType: !889, size: 192, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1918, file: !37, line: 582, baseType: !1936, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1938, line: 43, size: 1472, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1947, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1937, file: !1938, line: 44, baseType: !177, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1937, file: !1938, line: 45, baseType: !105, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1937, file: !1938, line: 46, baseType: !280, size: 128, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1937, file: !1938, line: 47, baseType: !293, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1937, file: !1938, line: 48, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1937, file: !1938, line: 49, baseType: !1948, size: 320, offset: 320)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1949, line: 11, size: 320, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1953, !1958}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1948, file: !1949, line: 16, baseType: !853, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1948, file: !1949, line: 17, baseType: !123, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1948, file: !1949, line: 18, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 19, baseType: !118, size: 32, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1937, file: !1938, line: 50, baseType: !123, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1937, file: !1938, line: 51, baseType: !665, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1937, file: !1938, line: 52, baseType: !665, size: 64, offset: 768)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1937, file: !1938, line: 53, baseType: !665, size: 64, offset: 832)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1937, file: !1938, line: 54, baseType: !665, size: 64, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1937, file: !1938, line: 55, baseType: !665, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1937, file: !1938, line: 56, baseType: !123, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1937, file: !1938, line: 57, baseType: !123, size: 64, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1937, file: !1938, line: 58, baseType: !123, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1937, file: !1938, line: 59, baseType: !123, size: 64, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1937, file: !1938, line: 60, baseType: !123, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1937, file: !1938, line: 61, baseType: !1751, size: 64, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1937, file: !1938, line: 62, baseType: !262, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1937, file: !1938, line: 63, baseType: !262, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1918, file: !37, line: 583, baseType: !262, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1918, file: !37, line: 584, baseType: !262, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1918, file: !37, line: 585, baseType: !262, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1918, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1918, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1918, file: !37, line: 592, baseType: !657, size: 512, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1918, file: !37, line: 593, baseType: !182, size: 64, offset: 1088)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1918, file: !37, line: 594, baseType: !1490, size: 256, offset: 1152)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1918, file: !37, line: 595, baseType: !860, size: 128, offset: 1408)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1918, file: !37, line: 596, baseType: !1945, size: 64, offset: 1536)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1918, file: !37, line: 597, baseType: !462, size: 32, offset: 1600)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1918, file: !37, line: 598, baseType: !462, size: 32, offset: 1632)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1918, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1918, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1918, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1918, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1918, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1918, file: !37, line: 604, baseType: !262, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1918, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1918, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1918, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1918, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1918, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1918, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1918, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1918, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1918, file: !37, line: 613, baseType: !105, size: 32, offset: 1792)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1918, file: !37, line: 614, baseType: !105, size: 32, offset: 1824)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1918, file: !37, line: 615, baseType: !182, size: 64, offset: 1856)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1918, file: !37, line: 616, baseType: !182, size: 64, offset: 1920)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1918, file: !37, line: 617, baseType: !182, size: 64, offset: 1984)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1918, file: !37, line: 618, baseType: !182, size: 64, offset: 2048)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1918, file: !37, line: 620, baseType: !2006, size: 64, offset: 2112)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !37, line: 537, baseType: !293)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2007, file: !37, line: 538, baseType: !7, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2007, file: !37, line: 540, baseType: !280, size: 128, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2007, file: !37, line: 543, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1918, file: !37, line: 621, baseType: !2016, size: 64, offset: 2176)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1751, !813}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1918, file: !37, line: 622, baseType: !2020, size: 64, offset: 2240)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !272, file: !30, line: 486, baseType: !2023, size: 64, offset: 4096)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2032, !2033, !2034}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2024, file: !37, line: 643, baseType: !1779, size: 1472)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2024, file: !37, line: 644, baseType: !1782, size: 64, offset: 1472)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2024, file: !37, line: 645, baseType: !2029, size: 64, offset: 1536)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !1751, !262}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2024, file: !37, line: 646, baseType: !1782, size: 64, offset: 1600)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2024, file: !37, line: 647, baseType: !1773, size: 64, offset: 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2024, file: !37, line: 648, baseType: !1773, size: 64, offset: 1728)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !272, file: !30, line: 493, baseType: !2036, size: 64, offset: 4160)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !272, file: !30, line: 499, baseType: !280, size: 128, offset: 4224)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !272, file: !30, line: 502, baseType: !2040, size: 64, offset: 4352)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !272, file: !30, line: 504, baseType: !2044, size: 64, offset: 4416)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !272, file: !30, line: 505, baseType: !182, size: 64, offset: 4480)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !272, file: !30, line: 510, baseType: !182, size: 64, offset: 4544)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !272, file: !30, line: 511, baseType: !2048, size: 64, offset: 4608)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !272, file: !30, line: 513, baseType: !2052, size: 64, offset: 4672)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2053, file: !30, line: 293, baseType: !7, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2053, file: !30, line: 294, baseType: !123, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !272, file: !30, line: 515, baseType: !280, size: 128, offset: 4736)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !272, file: !30, line: 526, baseType: !2059, offset: 4864)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2060, line: 5, elements: !307)
!2060 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !272, file: !30, line: 528, baseType: !231, size: 64, offset: 4864)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !272, file: !30, line: 529, baseType: !244, size: 64, offset: 4928)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !272, file: !30, line: 534, baseType: !2064, size: 32, offset: 4992)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 16, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 13, baseType: !118)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !272, file: !30, line: 535, baseType: !118, size: 32, offset: 5024)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !272, file: !30, line: 537, baseType: !293, offset: 5056)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !272, file: !30, line: 538, baseType: !280, size: 128, offset: 5056)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !272, file: !30, line: 540, baseType: !2070, size: 64, offset: 5184)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2072, line: 54, size: 960, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2084, !2088, !2089, !2090, !2091, !2095, !2099, !2100}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2071, file: !2072, line: 55, baseType: !177, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2071, file: !2072, line: 56, baseType: !1828, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2071, file: !2072, line: 58, baseType: !380, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2071, file: !2072, line: 59, baseType: !380, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2071, file: !2072, line: 60, baseType: !286, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2071, file: !2072, line: 62, baseType: !1764, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2071, file: !2072, line: 63, baseType: !2081, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!167, !1751, !1771}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2071, file: !2072, line: 65, baseType: !2085, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2070}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2071, file: !2072, line: 66, baseType: !1773, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2071, file: !2072, line: 68, baseType: !1782, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2071, file: !2072, line: 70, baseType: !1539, size: 64, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2071, file: !2072, line: 71, baseType: !2092, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!217, !1751}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2071, file: !2072, line: 73, baseType: !2096, size: 64, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1751, !1574, !1580}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2071, file: !2072, line: 75, baseType: !1777, size: 64, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2071, file: !2072, line: 77, baseType: !1898, size: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !272, file: !30, line: 541, baseType: !380, size: 64, offset: 5248)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !272, file: !30, line: 543, baseType: !1773, size: 64, offset: 5312)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !272, file: !30, line: 544, baseType: !2104, size: 64, offset: 5376)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !272, file: !30, line: 545, baseType: !2107, size: 64, offset: 5440)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !272, file: !30, line: 547, baseType: !262, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !272, file: !30, line: 548, baseType: !262, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !272, file: !30, line: 549, baseType: !262, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !272, file: !30, line: 550, baseType: !262, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !248, file: !241, line: 116, baseType: !2114, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!262, !264, !177}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !248, file: !241, line: 118, baseType: !2118, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!105, !264, !177, !7, !121, !374}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !248, file: !241, line: 123, baseType: !2122, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!105, !264, !177, !2125, !374}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !248, file: !241, line: 126, baseType: !2127, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!177, !264}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !248, file: !241, line: 127, baseType: !2127, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !248, file: !241, line: 128, baseType: !2132, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!244, !264}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !248, file: !241, line: 130, baseType: !2136, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!244, !264, !244}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !248, file: !241, line: 133, baseType: !2140, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!244, !264, !177}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !248, file: !241, line: 135, baseType: !2144, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!105, !264, !177, !177, !7, !7, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !241, line: 43, size: 640, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2148, file: !241, line: 44, baseType: !244, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2148, file: !241, line: 45, baseType: !7, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2148, file: !241, line: 46, baseType: !2153, size: 512, offset: 128)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 512, elements: !695)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !248, file: !241, line: 140, baseType: !2136, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !248, file: !241, line: 143, baseType: !2132, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !248, file: !241, line: 145, baseType: !251, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !248, file: !241, line: 146, baseType: !2158, size: 64, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!105, !264, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !241, line: 29, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2162, file: !241, line: 30, baseType: !7, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2162, file: !241, line: 31, baseType: !7, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2162, file: !241, line: 32, baseType: !264, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !248, file: !241, line: 148, baseType: !2168, size: 64, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!105, !264, !1751}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !240, file: !241, line: 20, baseType: !1751, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !232, file: !233, line: 57, baseType: !2173, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !233, line: 31, size: 704, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2174, file: !233, line: 32, baseType: !167, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2174, file: !233, line: 33, baseType: !105, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2174, file: !233, line: 34, baseType: !121, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2174, file: !233, line: 35, baseType: !2173, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2174, file: !233, line: 43, baseType: !395, size: 448, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !232, file: !233, line: 58, baseType: !2173, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !233, line: 59, baseType: !231, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !232, file: !233, line: 60, baseType: !231, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !232, file: !233, line: 61, baseType: !231, size: 64, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !232, file: !233, line: 63, baseType: !275, size: 512, offset: 704)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !232, file: !233, line: 65, baseType: !123, size: 64, offset: 1216)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !232, file: !233, line: 66, baseType: !121, size: 64, offset: 1280)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv_priv", scope: !173, file: !174, line: 235, baseType: !121, size: 64, offset: 1024)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv", scope: !173, file: !174, line: 236, baseType: !2190, size: 64, offset: 1088)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_chip_driver", file: !174, line: 239, size: 384, elements: !2192)
!2192 = !{!2193, !2420, !2421, !2422, !2423}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2191, file: !174, line: 240, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!2197, !172}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !2199, line: 235, size: 9664, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!2200 = !{!2201, !2203, !2204, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2233, !2254, !2255, !2256, !2257, !2265, !2275, !2282, !2286, !2291, !2297, !2298, !2314, !2315, !2326, !2327, !2328, !2329, !2330, !2331, !2341, !2345, !2349, !2350, !2351, !2355, !2356, !2357, !2358, !2362, !2363, !2364, !2365, !2366, !2367, !2379, !2386, !2387, !2388, !2389, !2390, !2391, !2399, !2403, !2404, !2405}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2198, file: !2199, line: 236, baseType: !2202, size: 8)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !107, line: 79, baseType: !112)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !2199, line: 237, baseType: !117, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2198, file: !2199, line: 238, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !107, line: 107, baseType: !182)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !2198, file: !2199, line: 244, baseType: !117, size: 32, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !2198, file: !2199, line: 252, baseType: !117, size: 32, offset: 160)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !2198, file: !2199, line: 263, baseType: !117, size: 32, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2198, file: !2199, line: 265, baseType: !117, size: 32, offset: 224)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !2198, file: !2199, line: 266, baseType: !117, size: 32, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !2198, file: !2199, line: 272, baseType: !7, size: 32, offset: 288)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !2198, file: !2199, line: 273, baseType: !7, size: 32, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !2198, file: !2199, line: 275, baseType: !7, size: 32, offset: 352)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !2198, file: !2199, line: 276, baseType: !7, size: 32, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !2198, file: !2199, line: 285, baseType: !7, size: 32, offset: 416)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2198, file: !2199, line: 288, baseType: !177, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2198, file: !2199, line: 289, baseType: !105, size: 32, offset: 512)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !2198, file: !2199, line: 292, baseType: !2219, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !2199, line: 101, size: 128, elements: !2222)
!2222 = !{!2223, !2232}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !2221, file: !2199, line: 102, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!105, !2197, !105, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !2199, line: 87, size: 64, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2228, file: !2199, line: 88, baseType: !118, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2228, file: !2199, line: 89, baseType: !118, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2221, file: !2199, line: 104, baseType: !2224, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !2198, file: !2199, line: 295, baseType: !2234, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !2199, line: 176, size: 192, elements: !2237)
!2237 = !{!2238, !2239, !2248}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2236, file: !2199, line: 177, baseType: !105, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !2236, file: !2199, line: 178, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!105, !2197, !105, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !2199, line: 138, size: 64, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !2244, file: !2199, line: 139, baseType: !105, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2244, file: !2199, line: 140, baseType: !105, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !2236, file: !2199, line: 180, baseType: !2249, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!105, !2197, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2244)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !2198, file: !2199, line: 298, baseType: !7, size: 32, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !2198, file: !2199, line: 301, baseType: !7, size: 32, offset: 736)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !2198, file: !2199, line: 306, baseType: !105, size: 32, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !2198, file: !2199, line: 307, baseType: !2258, size: 64, offset: 832)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !2199, line: 36, size: 192, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2259, file: !2199, line: 37, baseType: !2205, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !2259, file: !2199, line: 38, baseType: !117, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !2259, file: !2199, line: 39, baseType: !117, size: 32, offset: 96)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !2259, file: !2199, line: 40, baseType: !122, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !2198, file: !2199, line: 313, baseType: !2266, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!105, !2197, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !2199, line: 30, size: 192, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2270, file: !2199, line: 31, baseType: !2205, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2270, file: !2199, line: 32, baseType: !2205, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !2270, file: !2199, line: 33, baseType: !2205, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !2198, file: !2199, line: 314, baseType: !2276, size: 64, offset: 960)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!105, !2197, !407, !374, !2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !2198, file: !2199, line: 316, baseType: !2283, size: 64, offset: 1024)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!105, !2197, !407, !374}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2198, file: !2199, line: 317, baseType: !2287, size: 64, offset: 1088)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!105, !2197, !407, !374, !2279, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2198, file: !2199, line: 319, baseType: !2292, size: 64, offset: 1152)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!105, !2197, !407, !374, !2279, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2202)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !2198, file: !2199, line: 321, baseType: !2292, size: 64, offset: 1216)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !2198, file: !2199, line: 323, baseType: !2299, size: 64, offset: 1280)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!105, !2197, !407, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !2199, line: 64, size: 512, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2313}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2303, file: !2199, line: 65, baseType: !7, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2303, file: !2199, line: 66, baseType: !374, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !2303, file: !2199, line: 67, baseType: !374, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2303, file: !2199, line: 68, baseType: !374, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !2303, file: !2199, line: 69, baseType: !374, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2303, file: !2199, line: 70, baseType: !117, size: 32, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !2303, file: !2199, line: 71, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2303, file: !2199, line: 72, baseType: !2312, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !2198, file: !2199, line: 325, baseType: !2299, size: 64, offset: 1344)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !2198, file: !2199, line: 327, baseType: !2316, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!105, !2197, !374, !2279, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !2321, line: 146, size: 96, elements: !2322)
!2321 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2324, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2320, file: !2321, line: 147, baseType: !119, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2320, file: !2321, line: 148, baseType: !119, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !2320, file: !2321, line: 149, baseType: !119, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !2198, file: !2199, line: 329, baseType: !2287, size: 64, offset: 1472)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !2198, file: !2199, line: 331, baseType: !2316, size: 64, offset: 1536)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !2198, file: !2199, line: 333, baseType: !2287, size: 64, offset: 1600)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !2198, file: !2199, line: 335, baseType: !2287, size: 64, offset: 1664)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !2198, file: !2199, line: 337, baseType: !2283, size: 64, offset: 1728)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !2198, file: !2199, line: 339, baseType: !2332, size: 64, offset: 1792)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!105, !2197, !2335, !123, !407, !2279}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1164, line: 15, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2337, file: !1164, line: 16, baseType: !121, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2337, file: !1164, line: 17, baseType: !374, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !2198, file: !2199, line: 341, baseType: !2342, size: 64, offset: 1856)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2197}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2198, file: !2199, line: 342, baseType: !2346, size: 64, offset: 1920)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!105, !2197, !407, !2205}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !2198, file: !2199, line: 343, baseType: !2346, size: 64, offset: 1984)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !2198, file: !2199, line: 344, baseType: !2346, size: 64, offset: 2048)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !2198, file: !2199, line: 345, baseType: !2352, size: 64, offset: 2112)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!105, !2197, !407}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !2198, file: !2199, line: 346, baseType: !2352, size: 64, offset: 2176)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !2198, file: !2199, line: 347, baseType: !2352, size: 64, offset: 2240)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !2198, file: !2199, line: 348, baseType: !2283, size: 64, offset: 2304)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !2198, file: !2199, line: 349, baseType: !2359, size: 64, offset: 2368)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!105, !2197}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !2198, file: !2199, line: 350, baseType: !2342, size: 64, offset: 2432)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !2198, file: !2199, line: 351, baseType: !2342, size: 64, offset: 2496)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !2198, file: !2199, line: 356, baseType: !2359, size: 64, offset: 2560)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !2198, file: !2199, line: 357, baseType: !2342, size: 64, offset: 2624)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !2198, file: !2199, line: 363, baseType: !262, size: 8, offset: 2688)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !2198, file: !2199, line: 365, baseType: !2368, size: 192, offset: 2752)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2369, line: 54, size: 192, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2370 = !{!2371, !2377, !2378}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2368, file: !2369, line: 55, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2369, line: 51, baseType: !2373)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!105, !2376, !123, !121}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2368, file: !2369, line: 56, baseType: !2376, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2368, file: !2369, line: 57, baseType: !105, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !2198, file: !2199, line: 368, baseType: !2380, size: 128, offset: 2944)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !2321, line: 250, size: 128, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !2380, file: !2321, line: 251, baseType: !119, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !2380, file: !2321, line: 252, baseType: !119, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !2380, file: !2321, line: 253, baseType: !119, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !2380, file: !2321, line: 254, baseType: !119, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !2198, file: !2199, line: 370, baseType: !105, size: 32, offset: 3072)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2198, file: !2199, line: 372, baseType: !121, size: 64, offset: 3136)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2198, file: !2199, line: 374, baseType: !1828, size: 64, offset: 3200)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2198, file: !2199, line: 375, baseType: !272, size: 5568, offset: 3264)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !2198, file: !2199, line: 376, baseType: !105, size: 32, offset: 8832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !2198, file: !2199, line: 377, baseType: !2392, size: 192, offset: 8896)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !2199, line: 191, size: 192, elements: !2393)
!2393 = !{!2394, !2397, !2398}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2392, file: !2199, line: 192, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1590, line: 21, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2392, file: !2199, line: 194, baseType: !177, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2392, file: !2199, line: 195, baseType: !177, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !2198, file: !2199, line: 378, baseType: !2400, size: 64, offset: 9088)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2402, line: 16, flags: DIFlagFwdDecl)
!2402 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2198, file: !2199, line: 386, baseType: !2197, size: 64, offset: 9152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !2198, file: !2199, line: 389, baseType: !280, size: 128, offset: 9216)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2198, file: !2199, line: 391, baseType: !2406, size: 320, offset: 9344)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2198, file: !2199, line: 391, size: 320, elements: !2407)
!2407 = !{!2408, !2415}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2406, file: !2199, line: 392, baseType: !2409, size: 320)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !2199, line: 211, size: 320, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2409, file: !2199, line: 212, baseType: !280, size: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2409, file: !2199, line: 213, baseType: !182, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2409, file: !2199, line: 214, baseType: !182, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !2199, line: 215, baseType: !118, size: 32, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2406, file: !2199, line: 393, baseType: !2416, size: 256)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !2199, line: 230, size: 256, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2416, file: !2199, line: 231, baseType: !539, size: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2416, file: !2199, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2191, file: !174, line: 241, baseType: !2342, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2191, file: !174, line: 242, baseType: !1828, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2191, file: !174, line: 243, baseType: !167, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2191, file: !174, line: 244, baseType: !280, size: 128, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_private", file: !2426, line: 273, size: 768, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/mtd/cfi.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset", scope: !2425, file: !2426, line: 274, baseType: !113, size: 16)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset_priv", scope: !2425, file: !2426, line: 275, baseType: !121, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "interleave", scope: !2425, file: !2426, line: 276, baseType: !105, size: 32, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2425, file: !2426, line: 277, baseType: !105, size: 32, offset: 160)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cfi_mode", scope: !2425, file: !2426, line: 278, baseType: !105, size: 32, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "addr_unlock1", scope: !2425, file: !2426, line: 279, baseType: !105, size: 32, offset: 224)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "addr_unlock2", scope: !2425, file: !2426, line: 280, baseType: !105, size: 32, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset_setup", scope: !2425, file: !2426, line: 281, baseType: !2194, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cfiq", scope: !2425, file: !2426, line: 282, baseType: !2437, size: 64, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_ident", file: !2426, line: 119, size: 232, elements: !2439)
!2439 = !{!2440, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "qry", scope: !2438, file: !2426, line: 120, baseType: !2441, size: 24)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 24, elements: !334)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "P_ID", scope: !2438, file: !2426, line: 121, baseType: !113, size: 16, offset: 24)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "P_ADR", scope: !2438, file: !2426, line: 122, baseType: !113, size: 16, offset: 40)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "A_ID", scope: !2438, file: !2426, line: 123, baseType: !113, size: 16, offset: 56)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "A_ADR", scope: !2438, file: !2426, line: 124, baseType: !113, size: 16, offset: 72)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "VccMin", scope: !2438, file: !2426, line: 125, baseType: !106, size: 8, offset: 88)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "VccMax", scope: !2438, file: !2426, line: 126, baseType: !106, size: 8, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "VppMin", scope: !2438, file: !2426, line: 127, baseType: !106, size: 8, offset: 104)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "VppMax", scope: !2438, file: !2426, line: 128, baseType: !106, size: 8, offset: 112)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "WordWriteTimeoutTyp", scope: !2438, file: !2426, line: 129, baseType: !106, size: 8, offset: 120)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "BufWriteTimeoutTyp", scope: !2438, file: !2426, line: 130, baseType: !106, size: 8, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "BlockEraseTimeoutTyp", scope: !2438, file: !2426, line: 131, baseType: !106, size: 8, offset: 136)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ChipEraseTimeoutTyp", scope: !2438, file: !2426, line: 132, baseType: !106, size: 8, offset: 144)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "WordWriteTimeoutMax", scope: !2438, file: !2426, line: 133, baseType: !106, size: 8, offset: 152)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "BufWriteTimeoutMax", scope: !2438, file: !2426, line: 134, baseType: !106, size: 8, offset: 160)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "BlockEraseTimeoutMax", scope: !2438, file: !2426, line: 135, baseType: !106, size: 8, offset: 168)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ChipEraseTimeoutMax", scope: !2438, file: !2426, line: 136, baseType: !106, size: 8, offset: 176)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "DevSize", scope: !2438, file: !2426, line: 137, baseType: !106, size: 8, offset: 184)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceDesc", scope: !2438, file: !2426, line: 138, baseType: !113, size: 16, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "MaxBufWriteSize", scope: !2438, file: !2426, line: 139, baseType: !113, size: 16, offset: 208)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "NumEraseRegions", scope: !2438, file: !2426, line: 140, baseType: !106, size: 8, offset: 224)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "EraseRegionInfo", scope: !2438, file: !2426, line: 141, baseType: !2463, offset: 232)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !1504)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mfr", scope: !2425, file: !2426, line: 284, baseType: !105, size: 32, offset: 448)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2425, file: !2426, line: 284, baseType: !105, size: 32, offset: 480)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "numchips", scope: !2425, file: !2426, line: 285, baseType: !105, size: 32, offset: 512)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "sector_erase_cmd", scope: !2425, file: !2426, line: 286, baseType: !193, size: 64, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "chipshift", scope: !2425, file: !2426, line: 287, baseType: !123, size: 64, offset: 640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "im_name", scope: !2425, file: !2426, line: 288, baseType: !177, size: 64, offset: 704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "chips", scope: !2425, file: !2426, line: 289, baseType: !2471, offset: 768)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2472, elements: !1504)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flchip", file: !51, line: 57, size: 896, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2472, file: !51, line: 58, baseType: !123, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ref_point_counter", scope: !2472, file: !51, line: 67, baseType: !105, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2472, file: !51, line: 68, baseType: !2477, size: 32, offset: 96)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "flstate_t", file: !51, line: 49, baseType: !50)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "oldstate", scope: !2472, file: !51, line: 69, baseType: !2477, size: 32, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "write_suspended", scope: !2472, file: !51, line: 71, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "erase_suspended", scope: !2472, file: !51, line: 72, baseType: !7, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress_block_addr", scope: !2472, file: !51, line: 73, baseType: !123, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress_block_mask", scope: !2472, file: !51, line: 74, baseType: !123, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2472, file: !51, line: 76, baseType: !539, size: 192, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2472, file: !51, line: 77, baseType: !860, size: 128, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "word_write_time", scope: !2472, file: !51, line: 79, baseType: !105, size: 32, offset: 640)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_write_time", scope: !2472, file: !51, line: 80, baseType: !105, size: 32, offset: 672)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "erase_time", scope: !2472, file: !51, line: 81, baseType: !105, size: 32, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "word_write_time_max", scope: !2472, file: !51, line: 83, baseType: !105, size: 32, offset: 736)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_write_time_max", scope: !2472, file: !51, line: 84, baseType: !105, size: 32, offset: 768)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "erase_time_max", scope: !2472, file: !51, line: 85, baseType: !105, size: 32, offset: 800)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2472, file: !51, line: 87, baseType: !121, size: 64, offset: 832)
!2492 = !DIGlobalVariableExpression(var: !2493, expr: !DIExpression())
!2493 = distinct !DIGlobalVariable(name: "unlock_addrs", scope: !2, file: !3, line: 220, type: !2494, isLocal: true, isDefinition: true)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 576, elements: !1855)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unlock_addr", file: !3, line: 204, size: 64, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "addr1", scope: !2496, file: !3, line: 205, baseType: !117, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "addr2", scope: !2496, file: !3, line: 206, baseType: !117, size: 32, offset: 32)
!2500 = !DIGlobalVariableExpression(var: !2501, expr: !DIExpression())
!2501 = distinct !DIGlobalVariable(name: "jedec_table", scope: !2, file: !3, line: 296, type: !2502, isLocal: true, isDefinition: true)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, size: 46080, elements: !2519)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_flash_info", file: !3, line: 267, size: 384, elements: !2505)
!2505 = !{!2506, !2507, !2509, !2510, !2512, !2513, !2514, !2517, !2518}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2504, file: !3, line: 268, baseType: !177, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mfr_id", scope: !2504, file: !3, line: 269, baseType: !2508, size: 16, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2504, file: !3, line: 270, baseType: !2508, size: 16, offset: 80)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_size", scope: !2504, file: !3, line: 271, baseType: !2511, size: 8, offset: 96)
!2511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_regions", scope: !2504, file: !3, line: 272, baseType: !2511, size: 8, offset: 104)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_set", scope: !2504, file: !3, line: 273, baseType: !2508, size: 16, offset: 112)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "regions", scope: !2504, file: !3, line: 274, baseType: !2515, size: 192, offset: 128)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, size: 192, elements: !1459)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "devtypes", scope: !2504, file: !3, line: 275, baseType: !2511, size: 8, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2504, file: !3, line: 276, baseType: !2511, size: 8, offset: 328)
!2519 = !{!2520}
!2520 = !DISubrange(count: 120)
!2521 = !{i32 7, !"Dwarf Version", i32 4}
!2522 = !{i32 2, !"Debug Info Version", i32 3}
!2523 = !{i32 1, !"wchar_size", i32 2}
!2524 = !{i32 1, !"Code Model", i32 2}
!2525 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2526 = distinct !DISubprogram(name: "jedec_probe_exit", scope: !3, file: !3, line: 2305, type: !138, scopeLine: 2306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!2527 = !DILocation(line: 2307, column: 2, scope: !2526)
!2528 = !DILocation(line: 2308, column: 1, scope: !2526)
!2529 = distinct !DISubprogram(name: "jedec_probe_init", scope: !3, file: !3, line: 2299, type: !2530, scopeLine: 2300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!105}
!2532 = !DILocation(line: 2301, column: 2, scope: !2529)
!2533 = !DILocation(line: 2302, column: 2, scope: !2529)
!2534 = distinct !DISubprogram(name: "jedec_probe", scope: !3, file: !3, line: 2284, type: !2195, scopeLine: 2285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!2535 = !DILocalVariable(name: "map", arg: 1, scope: !2534, file: !3, line: 2284, type: !172)
!2536 = !DILocation(line: 2284, column: 54, scope: !2534)
!2537 = !DILocation(line: 2290, column: 27, scope: !2534)
!2538 = !DILocation(line: 2290, column: 9, scope: !2534)
!2539 = !DILocation(line: 2290, column: 2, scope: !2534)
!2540 = distinct !DISubprogram(name: "jedec_probe_chip", scope: !3, file: !3, line: 2149, type: !170, scopeLine: 2151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!2541 = !DILocalVariable(name: "map", arg: 1, scope: !2540, file: !3, line: 2149, type: !172)
!2542 = !DILocation(line: 2149, column: 46, scope: !2540)
!2543 = !DILocalVariable(name: "base", arg: 2, scope: !2540, file: !3, line: 2149, type: !119)
!2544 = !DILocation(line: 2149, column: 57, scope: !2540)
!2545 = !DILocalVariable(name: "chip_map", arg: 3, scope: !2540, file: !3, line: 2150, type: !122)
!2546 = !DILocation(line: 2150, column: 23, scope: !2540)
!2547 = !DILocalVariable(name: "cfi", arg: 4, scope: !2540, file: !3, line: 2150, type: !2424)
!2548 = !DILocation(line: 2150, column: 53, scope: !2540)
!2549 = !DILocalVariable(name: "i", scope: !2540, file: !3, line: 2152, type: !105)
!2550 = !DILocation(line: 2152, column: 6, scope: !2540)
!2551 = !DILocalVariable(name: "uaddr_idx", scope: !2540, file: !3, line: 2153, type: !81)
!2552 = !DILocation(line: 2153, column: 13, scope: !2540)
!2553 = !DILocalVariable(name: "probe_offset1", scope: !2540, file: !3, line: 2154, type: !118)
!2554 = !DILocation(line: 2154, column: 6, scope: !2540)
!2555 = !DILocalVariable(name: "probe_offset2", scope: !2540, file: !3, line: 2154, type: !118)
!2556 = !DILocation(line: 2154, column: 21, scope: !2540)
!2557 = !DILocation(line: 2154, column: 2, scope: !2540)
!2558 = !DILabel(scope: !2540, name: "retry", file: !3, line: 2156)
!2559 = !DILocation(line: 2156, column: 2, scope: !2540)
!2560 = !DILocation(line: 2157, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 2157, column: 6)
!2562 = !DILocation(line: 2157, column: 12, scope: !2561)
!2563 = !DILocation(line: 2157, column: 6, scope: !2540)
!2564 = !DILocation(line: 2158, column: 12, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 2157, column: 22)
!2566 = !DILocation(line: 2160, column: 32, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 2160, column: 7)
!2568 = !DILocation(line: 2160, column: 29, scope: !2567)
!2569 = !DILocation(line: 2160, column: 7, scope: !2565)
!2570 = !DILocation(line: 2161, column: 4, scope: !2567)
!2571 = !DILocation(line: 2163, column: 36, scope: !2565)
!2572 = !DILocation(line: 2163, column: 23, scope: !2565)
!2573 = !DILocation(line: 2163, column: 47, scope: !2565)
!2574 = !DILocation(line: 2163, column: 55, scope: !2565)
!2575 = !DILocation(line: 2163, column: 60, scope: !2565)
!2576 = !DILocation(line: 2163, column: 53, scope: !2565)
!2577 = !DILocation(line: 2163, column: 3, scope: !2565)
!2578 = !DILocation(line: 2163, column: 8, scope: !2565)
!2579 = !DILocation(line: 2163, column: 21, scope: !2565)
!2580 = !DILocation(line: 2164, column: 36, scope: !2565)
!2581 = !DILocation(line: 2164, column: 23, scope: !2565)
!2582 = !DILocation(line: 2164, column: 47, scope: !2565)
!2583 = !DILocation(line: 2164, column: 55, scope: !2565)
!2584 = !DILocation(line: 2164, column: 60, scope: !2565)
!2585 = !DILocation(line: 2164, column: 53, scope: !2565)
!2586 = !DILocation(line: 2164, column: 3, scope: !2565)
!2587 = !DILocation(line: 2164, column: 8, scope: !2565)
!2588 = !DILocation(line: 2164, column: 21, scope: !2565)
!2589 = !DILocation(line: 2165, column: 2, scope: !2565)
!2590 = !DILocation(line: 2168, column: 6, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 2168, column: 6)
!2592 = !DILocation(line: 2168, column: 14, scope: !2591)
!2593 = !DILocation(line: 2168, column: 19, scope: !2591)
!2594 = !DILocation(line: 2168, column: 11, scope: !2591)
!2595 = !DILocation(line: 2168, column: 6, scope: !2540)
!2596 = !DILocation(line: 2171, column: 4, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 2168, column: 25)
!2598 = !DILocation(line: 2171, column: 10, scope: !2597)
!2599 = !DILocation(line: 2171, column: 15, scope: !2597)
!2600 = !DILocation(line: 2171, column: 20, scope: !2597)
!2601 = !DILocation(line: 2169, column: 3, scope: !2597)
!2602 = !DILocation(line: 2172, column: 3, scope: !2597)
!2603 = !DILocation(line: 2176, column: 37, scope: !2540)
!2604 = !DILocation(line: 2176, column: 42, scope: !2540)
!2605 = !DILocation(line: 2176, column: 56, scope: !2540)
!2606 = !DILocation(line: 2176, column: 61, scope: !2540)
!2607 = !DILocation(line: 2176, column: 18, scope: !2540)
!2608 = !DILocation(line: 2176, column: 16, scope: !2540)
!2609 = !DILocation(line: 2177, column: 37, scope: !2540)
!2610 = !DILocation(line: 2177, column: 42, scope: !2540)
!2611 = !DILocation(line: 2177, column: 56, scope: !2540)
!2612 = !DILocation(line: 2177, column: 61, scope: !2540)
!2613 = !DILocation(line: 2177, column: 18, scope: !2540)
!2614 = !DILocation(line: 2177, column: 16, scope: !2540)
!2615 = !DILocation(line: 2178, column: 9, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 2178, column: 7)
!2617 = !DILocation(line: 2178, column: 16, scope: !2616)
!2618 = !DILocation(line: 2178, column: 14, scope: !2616)
!2619 = !DILocation(line: 2178, column: 32, scope: !2616)
!2620 = !DILocation(line: 2178, column: 30, scope: !2616)
!2621 = !DILocation(line: 2178, column: 8, scope: !2616)
!2622 = !DILocation(line: 2178, column: 55, scope: !2616)
!2623 = !DILocation(line: 2178, column: 60, scope: !2616)
!2624 = !DILocation(line: 2178, column: 52, scope: !2616)
!2625 = !DILocation(line: 2178, column: 66, scope: !2616)
!2626 = !DILocation(line: 2179, column: 5, scope: !2616)
!2627 = !DILocation(line: 2179, column: 12, scope: !2616)
!2628 = !DILocation(line: 2179, column: 10, scope: !2616)
!2629 = !DILocation(line: 2179, column: 28, scope: !2616)
!2630 = !DILocation(line: 2179, column: 26, scope: !2616)
!2631 = !DILocation(line: 2179, column: 4, scope: !2616)
!2632 = !DILocation(line: 2179, column: 51, scope: !2616)
!2633 = !DILocation(line: 2179, column: 56, scope: !2616)
!2634 = !DILocation(line: 2179, column: 48, scope: !2616)
!2635 = !DILocation(line: 2178, column: 7, scope: !2540)
!2636 = !DILocation(line: 2180, column: 3, scope: !2616)
!2637 = !DILocation(line: 2183, column: 14, scope: !2540)
!2638 = !DILocation(line: 2183, column: 20, scope: !2540)
!2639 = !DILocation(line: 2183, column: 25, scope: !2540)
!2640 = !DILocation(line: 2183, column: 2, scope: !2540)
!2641 = !DILocation(line: 2186, column: 5, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 2186, column: 5)
!2643 = !DILocation(line: 2186, column: 10, scope: !2642)
!2644 = !DILocation(line: 2186, column: 5, scope: !2540)
!2645 = !DILocation(line: 2187, column: 26, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 2186, column: 24)
!2647 = !DILocation(line: 2187, column: 31, scope: !2646)
!2648 = !DILocation(line: 2187, column: 45, scope: !2646)
!2649 = !DILocation(line: 2187, column: 51, scope: !2646)
!2650 = !DILocation(line: 2187, column: 56, scope: !2646)
!2651 = !DILocation(line: 2187, column: 61, scope: !2646)
!2652 = !DILocation(line: 2187, column: 66, scope: !2646)
!2653 = !DILocation(line: 2187, column: 3, scope: !2646)
!2654 = !DILocation(line: 2188, column: 26, scope: !2646)
!2655 = !DILocation(line: 2188, column: 31, scope: !2646)
!2656 = !DILocation(line: 2188, column: 45, scope: !2646)
!2657 = !DILocation(line: 2188, column: 51, scope: !2646)
!2658 = !DILocation(line: 2188, column: 56, scope: !2646)
!2659 = !DILocation(line: 2188, column: 61, scope: !2646)
!2660 = !DILocation(line: 2188, column: 66, scope: !2646)
!2661 = !DILocation(line: 2188, column: 3, scope: !2646)
!2662 = !DILocation(line: 2189, column: 2, scope: !2646)
!2663 = !DILocation(line: 2190, column: 25, scope: !2540)
!2664 = !DILocation(line: 2190, column: 30, scope: !2540)
!2665 = !DILocation(line: 2190, column: 44, scope: !2540)
!2666 = !DILocation(line: 2190, column: 50, scope: !2540)
!2667 = !DILocation(line: 2190, column: 55, scope: !2540)
!2668 = !DILocation(line: 2190, column: 60, scope: !2540)
!2669 = !DILocation(line: 2190, column: 65, scope: !2540)
!2670 = !DILocation(line: 2190, column: 2, scope: !2540)
!2671 = !DILocation(line: 2193, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 2193, column: 6)
!2673 = !DILocation(line: 2193, column: 12, scope: !2672)
!2674 = !DILocation(line: 2193, column: 6, scope: !2540)
!2675 = !DILocation(line: 2197, column: 29, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 2193, column: 22)
!2677 = !DILocation(line: 2197, column: 34, scope: !2676)
!2678 = !DILocation(line: 2197, column: 40, scope: !2676)
!2679 = !DILocation(line: 2197, column: 14, scope: !2676)
!2680 = !DILocation(line: 2197, column: 3, scope: !2676)
!2681 = !DILocation(line: 2197, column: 8, scope: !2676)
!2682 = !DILocation(line: 2197, column: 12, scope: !2676)
!2683 = !DILocation(line: 2198, column: 27, scope: !2676)
!2684 = !DILocation(line: 2198, column: 32, scope: !2676)
!2685 = !DILocation(line: 2198, column: 38, scope: !2676)
!2686 = !DILocation(line: 2198, column: 13, scope: !2676)
!2687 = !DILocation(line: 2198, column: 3, scope: !2676)
!2688 = !DILocation(line: 2198, column: 8, scope: !2676)
!2689 = !DILocation(line: 2198, column: 11, scope: !2676)
!2690 = !DILocation(line: 2199, column: 3, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 2199, column: 3)
!2692 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 2199, column: 3)
!2693 = !DILocation(line: 2199, column: 3, scope: !2692)
!2694 = !DILocation(line: 2201, column: 10, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 2201, column: 3)
!2696 = !DILocation(line: 2201, column: 8, scope: !2695)
!2697 = !DILocation(line: 2201, column: 15, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 2201, column: 3)
!2699 = !DILocation(line: 2201, column: 17, scope: !2698)
!2700 = !DILocation(line: 2201, column: 3, scope: !2695)
!2701 = !DILocation(line: 2202, column: 22, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 2202, column: 9)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 2201, column: 49)
!2704 = !DILocation(line: 2202, column: 28, scope: !2702)
!2705 = !DILocation(line: 2202, column: 33, scope: !2702)
!2706 = !DILocation(line: 2202, column: 51, scope: !2702)
!2707 = !DILocation(line: 2202, column: 39, scope: !2702)
!2708 = !DILocation(line: 2202, column: 9, scope: !2702)
!2709 = !DILocation(line: 2202, column: 9, scope: !2703)
!2710 = !DILocation(line: 2203, column: 5, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 2203, column: 5)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 2203, column: 5)
!2713 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 2202, column: 58)
!2714 = !DILocation(line: 2203, column: 5, scope: !2712)
!2715 = !DILocation(line: 2206, column: 26, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 2206, column: 9)
!2717 = !DILocation(line: 2206, column: 31, scope: !2716)
!2718 = !DILocation(line: 2206, column: 36, scope: !2716)
!2719 = !DILocation(line: 2206, column: 10, scope: !2716)
!2720 = !DILocation(line: 2206, column: 9, scope: !2713)
!2721 = !DILocation(line: 2207, column: 6, scope: !2716)
!2722 = !DILocation(line: 2208, column: 5, scope: !2713)
!2723 = !DILocation(line: 2210, column: 3, scope: !2703)
!2724 = !DILocation(line: 2201, column: 45, scope: !2698)
!2725 = !DILocation(line: 2201, column: 3, scope: !2698)
!2726 = distinct !{!2726, !2700, !2727}
!2727 = !DILocation(line: 2210, column: 3, scope: !2695)
!2728 = !DILocation(line: 2211, column: 3, scope: !2676)
!2729 = !DILocalVariable(name: "mfr", scope: !2730, file: !3, line: 2213, type: !113)
!2730 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 2212, column: 9)
!2731 = !DILocation(line: 2213, column: 12, scope: !2730)
!2732 = !DILocalVariable(name: "id", scope: !2730, file: !3, line: 2214, type: !113)
!2733 = !DILocation(line: 2214, column: 12, scope: !2730)
!2734 = !DILocation(line: 2217, column: 24, scope: !2730)
!2735 = !DILocation(line: 2217, column: 29, scope: !2730)
!2736 = !DILocation(line: 2217, column: 35, scope: !2730)
!2737 = !DILocation(line: 2217, column: 9, scope: !2730)
!2738 = !DILocation(line: 2217, column: 7, scope: !2730)
!2739 = !DILocation(line: 2218, column: 22, scope: !2730)
!2740 = !DILocation(line: 2218, column: 27, scope: !2730)
!2741 = !DILocation(line: 2218, column: 33, scope: !2730)
!2742 = !DILocation(line: 2218, column: 8, scope: !2730)
!2743 = !DILocation(line: 2218, column: 6, scope: !2730)
!2744 = !DILocation(line: 2220, column: 8, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 2220, column: 7)
!2746 = !DILocation(line: 2220, column: 15, scope: !2745)
!2747 = !DILocation(line: 2220, column: 20, scope: !2745)
!2748 = !DILocation(line: 2220, column: 12, scope: !2745)
!2749 = !DILocation(line: 2220, column: 25, scope: !2745)
!2750 = !DILocation(line: 2220, column: 29, scope: !2745)
!2751 = !DILocation(line: 2220, column: 35, scope: !2745)
!2752 = !DILocation(line: 2220, column: 40, scope: !2745)
!2753 = !DILocation(line: 2220, column: 32, scope: !2745)
!2754 = !DILocation(line: 2220, column: 7, scope: !2730)
!2755 = !DILocation(line: 2222, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 2220, column: 45)
!2757 = !DILocation(line: 2222, column: 16, scope: !2756)
!2758 = !DILocation(line: 2222, column: 22, scope: !2756)
!2759 = !DILocation(line: 2222, column: 27, scope: !2756)
!2760 = !DILocation(line: 2222, column: 31, scope: !2756)
!2761 = !DILocation(line: 2221, column: 4, scope: !2756)
!2762 = !DILocation(line: 2223, column: 16, scope: !2756)
!2763 = !DILocation(line: 2223, column: 22, scope: !2756)
!2764 = !DILocation(line: 2223, column: 27, scope: !2756)
!2765 = !DILocation(line: 2223, column: 4, scope: !2756)
!2766 = !DILocation(line: 2224, column: 4, scope: !2756)
!2767 = !DILocation(line: 2229, column: 8, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 2229, column: 2)
!2769 = !DILocation(line: 2229, column: 7, scope: !2768)
!2770 = !DILocation(line: 2229, column: 12, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 2229, column: 2)
!2772 = !DILocation(line: 2229, column: 17, scope: !2771)
!2773 = !DILocation(line: 2229, column: 25, scope: !2771)
!2774 = !DILocation(line: 2229, column: 30, scope: !2771)
!2775 = !DILocation(line: 2229, column: 22, scope: !2771)
!2776 = !DILocation(line: 2229, column: 14, scope: !2771)
!2777 = !DILocation(line: 2229, column: 2, scope: !2768)
!2778 = !DILocalVariable(name: "start", scope: !2779, file: !3, line: 2230, type: !123)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 2229, column: 47)
!2780 = !DILocation(line: 2230, column: 17, scope: !2779)
!2781 = !DILocation(line: 2231, column: 16, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 2231, column: 6)
!2783 = !DILocation(line: 2231, column: 19, scope: !2782)
!2784 = !DILocation(line: 2231, column: 7, scope: !2782)
!2785 = !DILocation(line: 2231, column: 6, scope: !2779)
!2786 = !DILocation(line: 2232, column: 4, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 2231, column: 30)
!2788 = !DILocation(line: 2234, column: 11, scope: !2779)
!2789 = !DILocation(line: 2234, column: 16, scope: !2779)
!2790 = !DILocation(line: 2234, column: 21, scope: !2779)
!2791 = !DILocation(line: 2234, column: 13, scope: !2779)
!2792 = !DILocation(line: 2234, column: 9, scope: !2779)
!2793 = !DILocation(line: 2235, column: 22, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 2235, column: 7)
!2795 = !DILocation(line: 2235, column: 27, scope: !2794)
!2796 = !DILocation(line: 2235, column: 34, scope: !2794)
!2797 = !DILocation(line: 2235, column: 7, scope: !2794)
!2798 = !DILocation(line: 2235, column: 42, scope: !2794)
!2799 = !DILocation(line: 2235, column: 47, scope: !2794)
!2800 = !DILocation(line: 2235, column: 39, scope: !2794)
!2801 = !DILocation(line: 2235, column: 51, scope: !2794)
!2802 = !DILocation(line: 2236, column: 21, scope: !2794)
!2803 = !DILocation(line: 2236, column: 26, scope: !2794)
!2804 = !DILocation(line: 2236, column: 33, scope: !2794)
!2805 = !DILocation(line: 2236, column: 7, scope: !2794)
!2806 = !DILocation(line: 2236, column: 41, scope: !2794)
!2807 = !DILocation(line: 2236, column: 46, scope: !2794)
!2808 = !DILocation(line: 2236, column: 38, scope: !2794)
!2809 = !DILocation(line: 2235, column: 7, scope: !2779)
!2810 = !DILocation(line: 2239, column: 16, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 2236, column: 50)
!2812 = !DILocation(line: 2239, column: 23, scope: !2811)
!2813 = !DILocation(line: 2239, column: 28, scope: !2811)
!2814 = !DILocation(line: 2239, column: 4, scope: !2811)
!2815 = !DILocation(line: 2242, column: 23, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 2242, column: 8)
!2817 = !DILocation(line: 2242, column: 28, scope: !2816)
!2818 = !DILocation(line: 2242, column: 34, scope: !2816)
!2819 = !DILocation(line: 2242, column: 8, scope: !2816)
!2820 = !DILocation(line: 2242, column: 42, scope: !2816)
!2821 = !DILocation(line: 2242, column: 47, scope: !2816)
!2822 = !DILocation(line: 2242, column: 39, scope: !2816)
!2823 = !DILocation(line: 2242, column: 51, scope: !2816)
!2824 = !DILocation(line: 2243, column: 22, scope: !2816)
!2825 = !DILocation(line: 2243, column: 27, scope: !2816)
!2826 = !DILocation(line: 2243, column: 33, scope: !2816)
!2827 = !DILocation(line: 2243, column: 8, scope: !2816)
!2828 = !DILocation(line: 2243, column: 41, scope: !2816)
!2829 = !DILocation(line: 2243, column: 46, scope: !2816)
!2830 = !DILocation(line: 2243, column: 38, scope: !2816)
!2831 = !DILocation(line: 2242, column: 8, scope: !2811)
!2832 = !DILocation(line: 2245, column: 12, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 2243, column: 50)
!2834 = !DILocation(line: 2245, column: 17, scope: !2833)
!2835 = !DILocation(line: 2245, column: 23, scope: !2833)
!2836 = !DILocation(line: 2245, column: 29, scope: !2833)
!2837 = !DILocation(line: 2244, column: 5, scope: !2833)
!2838 = !DILocation(line: 2246, column: 5, scope: !2833)
!2839 = !DILocation(line: 2253, column: 16, scope: !2811)
!2840 = !DILocation(line: 2253, column: 22, scope: !2811)
!2841 = !DILocation(line: 2253, column: 27, scope: !2811)
!2842 = !DILocation(line: 2253, column: 4, scope: !2811)
!2843 = !DILocation(line: 2254, column: 23, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 2254, column: 8)
!2845 = !DILocation(line: 2254, column: 28, scope: !2844)
!2846 = !DILocation(line: 2254, column: 34, scope: !2844)
!2847 = !DILocation(line: 2254, column: 8, scope: !2844)
!2848 = !DILocation(line: 2254, column: 42, scope: !2844)
!2849 = !DILocation(line: 2254, column: 47, scope: !2844)
!2850 = !DILocation(line: 2254, column: 39, scope: !2844)
!2851 = !DILocation(line: 2254, column: 51, scope: !2844)
!2852 = !DILocation(line: 2255, column: 22, scope: !2844)
!2853 = !DILocation(line: 2255, column: 27, scope: !2844)
!2854 = !DILocation(line: 2255, column: 33, scope: !2844)
!2855 = !DILocation(line: 2255, column: 8, scope: !2844)
!2856 = !DILocation(line: 2255, column: 41, scope: !2844)
!2857 = !DILocation(line: 2255, column: 46, scope: !2844)
!2858 = !DILocation(line: 2255, column: 38, scope: !2844)
!2859 = !DILocation(line: 2254, column: 8, scope: !2811)
!2860 = !DILocation(line: 2257, column: 12, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 2255, column: 50)
!2862 = !DILocation(line: 2257, column: 17, scope: !2861)
!2863 = !DILocation(line: 2257, column: 23, scope: !2861)
!2864 = !DILocation(line: 2257, column: 29, scope: !2861)
!2865 = !DILocation(line: 2256, column: 5, scope: !2861)
!2866 = !DILocation(line: 2258, column: 5, scope: !2861)
!2867 = !DILocation(line: 2260, column: 3, scope: !2811)
!2868 = !DILocation(line: 2261, column: 2, scope: !2779)
!2869 = !DILocation(line: 2229, column: 43, scope: !2771)
!2870 = !DILocation(line: 2229, column: 2, scope: !2771)
!2871 = distinct !{!2871, !2777, !2872}
!2872 = !DILocation(line: 2261, column: 2, scope: !2768)
!2873 = !DILocation(line: 2265, column: 11, scope: !2540)
!2874 = !DILocation(line: 2265, column: 19, scope: !2540)
!2875 = !DILocation(line: 2265, column: 24, scope: !2540)
!2876 = !DILocation(line: 2265, column: 16, scope: !2540)
!2877 = !DILocation(line: 2265, column: 10, scope: !2540)
!2878 = !DILocation(line: 2265, column: 36, scope: !2540)
!2879 = !DILocation(line: 2265, column: 2, scope: !2540)
!2880 = !DILocation(line: 2266, column: 2, scope: !2540)
!2881 = !DILocation(line: 2266, column: 7, scope: !2540)
!2882 = !DILocation(line: 2266, column: 15, scope: !2540)
!2883 = !DILabel(scope: !2540, name: "ok_out", file: !3, line: 2268)
!2884 = !DILocation(line: 2268, column: 1, scope: !2540)
!2885 = !DILocation(line: 2270, column: 14, scope: !2540)
!2886 = !DILocation(line: 2270, column: 20, scope: !2540)
!2887 = !DILocation(line: 2270, column: 25, scope: !2540)
!2888 = !DILocation(line: 2270, column: 2, scope: !2540)
!2889 = !DILocation(line: 2273, column: 9, scope: !2540)
!2890 = !DILocation(line: 2273, column: 14, scope: !2540)
!2891 = !DILocation(line: 2273, column: 20, scope: !2540)
!2892 = !DILocation(line: 2273, column: 41, scope: !2540)
!2893 = !DILocation(line: 2273, column: 46, scope: !2540)
!2894 = !DILocation(line: 2273, column: 57, scope: !2540)
!2895 = !DILocation(line: 2273, column: 61, scope: !2540)
!2896 = !DILocation(line: 2274, column: 9, scope: !2540)
!2897 = !DILocation(line: 2274, column: 14, scope: !2540)
!2898 = !DILocation(line: 2274, column: 23, scope: !2540)
!2899 = !DILocation(line: 2272, column: 2, scope: !2540)
!2900 = !DILocation(line: 2276, column: 2, scope: !2540)
!2901 = !DILocation(line: 2277, column: 1, scope: !2540)
!2902 = distinct !DISubprogram(name: "jedec_reset", scope: !3, file: !3, line: 1944, type: !2903, scopeLine: 1945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !118, !172, !2424}
!2905 = !DILocalVariable(name: "base", arg: 1, scope: !2902, file: !3, line: 1944, type: !118)
!2906 = !DILocation(line: 1944, column: 29, scope: !2902)
!2907 = !DILocalVariable(name: "map", arg: 2, scope: !2902, file: !3, line: 1944, type: !172)
!2908 = !DILocation(line: 1944, column: 52, scope: !2902)
!2909 = !DILocalVariable(name: "cfi", arg: 3, scope: !2902, file: !3, line: 1944, type: !2424)
!2910 = !DILocation(line: 1944, column: 77, scope: !2902)
!2911 = !DILocation(line: 1954, column: 6, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1954, column: 6)
!2913 = !DILocation(line: 1954, column: 11, scope: !2912)
!2914 = !DILocation(line: 1954, column: 6, scope: !2902)
!2915 = !DILocation(line: 1955, column: 3, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1955, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1955, column: 3)
!2918 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 1954, column: 25)
!2919 = !DILocation(line: 1955, column: 3, scope: !2917)
!2920 = !DILocation(line: 1957, column: 26, scope: !2918)
!2921 = !DILocation(line: 1957, column: 31, scope: !2918)
!2922 = !DILocation(line: 1957, column: 45, scope: !2918)
!2923 = !DILocation(line: 1957, column: 51, scope: !2918)
!2924 = !DILocation(line: 1957, column: 56, scope: !2918)
!2925 = !DILocation(line: 1957, column: 61, scope: !2918)
!2926 = !DILocation(line: 1957, column: 66, scope: !2918)
!2927 = !DILocation(line: 1957, column: 3, scope: !2918)
!2928 = !DILocation(line: 1958, column: 26, scope: !2918)
!2929 = !DILocation(line: 1958, column: 31, scope: !2918)
!2930 = !DILocation(line: 1958, column: 45, scope: !2918)
!2931 = !DILocation(line: 1958, column: 51, scope: !2918)
!2932 = !DILocation(line: 1958, column: 56, scope: !2918)
!2933 = !DILocation(line: 1958, column: 61, scope: !2918)
!2934 = !DILocation(line: 1958, column: 66, scope: !2918)
!2935 = !DILocation(line: 1958, column: 3, scope: !2918)
!2936 = !DILocation(line: 1959, column: 2, scope: !2918)
!2937 = !DILocation(line: 1961, column: 25, scope: !2902)
!2938 = !DILocation(line: 1961, column: 30, scope: !2902)
!2939 = !DILocation(line: 1961, column: 44, scope: !2902)
!2940 = !DILocation(line: 1961, column: 50, scope: !2902)
!2941 = !DILocation(line: 1961, column: 55, scope: !2902)
!2942 = !DILocation(line: 1961, column: 60, scope: !2902)
!2943 = !DILocation(line: 1961, column: 65, scope: !2902)
!2944 = !DILocation(line: 1961, column: 2, scope: !2902)
!2945 = !DILocation(line: 1967, column: 28, scope: !2902)
!2946 = !DILocation(line: 1967, column: 34, scope: !2902)
!2947 = !DILocation(line: 1967, column: 39, scope: !2902)
!2948 = !DILocation(line: 1967, column: 44, scope: !2902)
!2949 = !DILocation(line: 1967, column: 49, scope: !2902)
!2950 = !DILocation(line: 1967, column: 2, scope: !2902)
!2951 = !DILocation(line: 1969, column: 1, scope: !2902)
!2952 = distinct !DISubprogram(name: "jedec_read_mfr", scope: !3, file: !3, line: 1910, type: !2953, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!118, !172, !117, !2424}
!2955 = !DILocalVariable(name: "map", arg: 1, scope: !2952, file: !3, line: 1910, type: !172)
!2956 = !DILocation(line: 1910, column: 51, scope: !2952)
!2957 = !DILocalVariable(name: "base", arg: 2, scope: !2952, file: !3, line: 1910, type: !117)
!2958 = !DILocation(line: 1910, column: 65, scope: !2952)
!2959 = !DILocalVariable(name: "cfi", arg: 3, scope: !2952, file: !3, line: 1911, type: !2424)
!2960 = !DILocation(line: 1911, column: 22, scope: !2952)
!2961 = !DILocalVariable(name: "result", scope: !2952, file: !3, line: 1913, type: !193)
!2962 = !DILocation(line: 1913, column: 11, scope: !2952)
!2963 = !DILocalVariable(name: "mask", scope: !2952, file: !3, line: 1914, type: !123)
!2964 = !DILocation(line: 1914, column: 16, scope: !2952)
!2965 = !DILocalVariable(name: "bank", scope: !2952, file: !3, line: 1915, type: !105)
!2966 = !DILocation(line: 1915, column: 6, scope: !2952)
!2967 = !DILocation(line: 1921, column: 2, scope: !2952)
!2968 = !DILocalVariable(name: "ofs", scope: !2969, file: !3, line: 1922, type: !117)
!2969 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1921, column: 5)
!2970 = !DILocation(line: 1922, column: 12, scope: !2969)
!2971 = !DILocation(line: 1922, column: 42, scope: !2969)
!2972 = !DILocation(line: 1922, column: 47, scope: !2969)
!2973 = !DILocation(line: 1922, column: 39, scope: !2969)
!2974 = !DILocation(line: 1922, column: 54, scope: !2969)
!2975 = !DILocation(line: 1922, column: 59, scope: !2969)
!2976 = !DILocation(line: 1922, column: 18, scope: !2969)
!2977 = !DILocation(line: 1923, column: 17, scope: !2969)
!2978 = !DILocation(line: 1923, column: 22, scope: !2969)
!2979 = !DILocation(line: 1923, column: 34, scope: !2969)
!2980 = !DILocation(line: 1923, column: 13, scope: !2969)
!2981 = !DILocation(line: 1923, column: 40, scope: !2969)
!2982 = !DILocation(line: 1923, column: 10, scope: !2969)
!2983 = !DILocation(line: 1923, column: 8, scope: !2969)
!2984 = !DILocation(line: 1924, column: 7, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 1924, column: 7)
!2986 = !DILocation(line: 1924, column: 14, scope: !2985)
!2987 = !DILocation(line: 1924, column: 19, scope: !2985)
!2988 = !DILocation(line: 1924, column: 11, scope: !2985)
!2989 = !DILocation(line: 1924, column: 7, scope: !2969)
!2990 = !DILocation(line: 1925, column: 4, scope: !2985)
!2991 = !DILocation(line: 1926, column: 12, scope: !2969)
!2992 = !DILocation(line: 1927, column: 7, scope: !2969)
!2993 = !DILocation(line: 1928, column: 2, scope: !2969)
!2994 = !DILocation(line: 1928, column: 19, scope: !2952)
!2995 = !DILocation(line: 1928, column: 12, scope: !2952)
!2996 = !DILocation(line: 1928, column: 26, scope: !2952)
!2997 = !DILocation(line: 1928, column: 24, scope: !2952)
!2998 = !DILocation(line: 1928, column: 32, scope: !2952)
!2999 = distinct !{!2999, !2967, !3000}
!3000 = !DILocation(line: 1928, column: 55, scope: !2952)
!3001 = !DILocation(line: 1930, column: 16, scope: !2952)
!3002 = !DILocation(line: 1930, column: 9, scope: !2952)
!3003 = !DILocation(line: 1930, column: 23, scope: !2952)
!3004 = !DILocation(line: 1930, column: 21, scope: !2952)
!3005 = !DILocation(line: 1930, column: 2, scope: !2952)
!3006 = !DILocation(line: 1931, column: 1, scope: !2952)
!3007 = distinct !DISubprogram(name: "jedec_read_id", scope: !3, file: !3, line: 1933, type: !2953, scopeLine: 1935, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3008 = !DILocalVariable(name: "map", arg: 1, scope: !3007, file: !3, line: 1933, type: !172)
!3009 = !DILocation(line: 1933, column: 50, scope: !3007)
!3010 = !DILocalVariable(name: "base", arg: 2, scope: !3007, file: !3, line: 1933, type: !117)
!3011 = !DILocation(line: 1933, column: 64, scope: !3007)
!3012 = !DILocalVariable(name: "cfi", arg: 3, scope: !3007, file: !3, line: 1934, type: !2424)
!3013 = !DILocation(line: 1934, column: 22, scope: !3007)
!3014 = !DILocalVariable(name: "result", scope: !3007, file: !3, line: 1936, type: !193)
!3015 = !DILocation(line: 1936, column: 11, scope: !3007)
!3016 = !DILocalVariable(name: "mask", scope: !3007, file: !3, line: 1937, type: !123)
!3017 = !DILocation(line: 1937, column: 16, scope: !3007)
!3018 = !DILocalVariable(name: "ofs", scope: !3007, file: !3, line: 1938, type: !118)
!3019 = !DILocation(line: 1938, column: 6, scope: !3007)
!3020 = !DILocation(line: 1938, column: 34, scope: !3007)
!3021 = !DILocation(line: 1938, column: 39, scope: !3007)
!3022 = !DILocation(line: 1938, column: 12, scope: !3007)
!3023 = !DILocation(line: 1939, column: 16, scope: !3007)
!3024 = !DILocation(line: 1939, column: 21, scope: !3007)
!3025 = !DILocation(line: 1939, column: 33, scope: !3007)
!3026 = !DILocation(line: 1939, column: 12, scope: !3007)
!3027 = !DILocation(line: 1939, column: 39, scope: !3007)
!3028 = !DILocation(line: 1939, column: 9, scope: !3007)
!3029 = !DILocation(line: 1939, column: 7, scope: !3007)
!3030 = !DILocation(line: 1940, column: 11, scope: !3007)
!3031 = !DILocation(line: 1941, column: 16, scope: !3007)
!3032 = !DILocation(line: 1941, column: 9, scope: !3007)
!3033 = !DILocation(line: 1941, column: 23, scope: !3007)
!3034 = !DILocation(line: 1941, column: 21, scope: !3007)
!3035 = !DILocation(line: 1941, column: 2, scope: !3007)
!3036 = distinct !DISubprogram(name: "jedec_match", scope: !3, file: !3, line: 2030, type: !3037, scopeLine: 2034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!105, !117, !172, !2424, !3039}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!3040 = !DILocalVariable(name: "base", arg: 1, scope: !3036, file: !3, line: 2030, type: !117)
!3041 = !DILocation(line: 2030, column: 41, scope: !3036)
!3042 = !DILocalVariable(name: "map", arg: 2, scope: !3036, file: !3, line: 2031, type: !172)
!3043 = !DILocation(line: 2031, column: 28, scope: !3036)
!3044 = !DILocalVariable(name: "cfi", arg: 3, scope: !3036, file: !3, line: 2032, type: !2424)
!3045 = !DILocation(line: 2032, column: 31, scope: !3036)
!3046 = !DILocalVariable(name: "finfo", arg: 4, scope: !3036, file: !3, line: 2033, type: !3039)
!3047 = !DILocation(line: 2033, column: 40, scope: !3036)
!3048 = !DILocalVariable(name: "rc", scope: !3036, file: !3, line: 2035, type: !105)
!3049 = !DILocation(line: 2035, column: 6, scope: !3036)
!3050 = !DILocalVariable(name: "mfr", scope: !3036, file: !3, line: 2036, type: !118)
!3051 = !DILocation(line: 2036, column: 6, scope: !3036)
!3052 = !DILocalVariable(name: "id", scope: !3036, file: !3, line: 2036, type: !118)
!3053 = !DILocation(line: 2036, column: 11, scope: !3036)
!3054 = !DILocalVariable(name: "uaddr", scope: !3036, file: !3, line: 2037, type: !106)
!3055 = !DILocation(line: 2037, column: 10, scope: !3036)
!3056 = !DILocation(line: 2048, column: 10, scope: !3036)
!3057 = !DILocation(line: 2048, column: 15, scope: !3036)
!3058 = !DILocation(line: 2048, column: 2, scope: !3036)
!3059 = !DILocation(line: 2050, column: 18, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2048, column: 28)
!3061 = !DILocation(line: 2050, column: 25, scope: !3060)
!3062 = !DILocation(line: 2050, column: 9, scope: !3060)
!3063 = !DILocation(line: 2050, column: 7, scope: !3060)
!3064 = !DILocation(line: 2051, column: 17, scope: !3060)
!3065 = !DILocation(line: 2051, column: 24, scope: !3060)
!3066 = !DILocation(line: 2051, column: 8, scope: !3060)
!3067 = !DILocation(line: 2051, column: 6, scope: !3060)
!3068 = !DILocation(line: 2057, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 2057, column: 7)
!3070 = !DILocation(line: 2057, column: 14, scope: !3069)
!3071 = !DILocation(line: 2057, column: 21, scope: !3069)
!3072 = !DILocation(line: 2057, column: 7, scope: !3060)
!3073 = !DILocation(line: 2058, column: 4, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 2058, column: 4)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2058, column: 4)
!3076 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 2057, column: 29)
!3077 = !DILocation(line: 2058, column: 4, scope: !3075)
!3078 = !DILocation(line: 2060, column: 4, scope: !3076)
!3079 = !DILocation(line: 2062, column: 3, scope: !3060)
!3080 = !DILocation(line: 2064, column: 19, scope: !3060)
!3081 = !DILocation(line: 2064, column: 26, scope: !3060)
!3082 = !DILocation(line: 2064, column: 9, scope: !3060)
!3083 = !DILocation(line: 2064, column: 7, scope: !3060)
!3084 = !DILocation(line: 2065, column: 18, scope: !3060)
!3085 = !DILocation(line: 2065, column: 25, scope: !3060)
!3086 = !DILocation(line: 2065, column: 8, scope: !3060)
!3087 = !DILocation(line: 2065, column: 6, scope: !3060)
!3088 = !DILocation(line: 2066, column: 3, scope: !3060)
!3089 = !DILocation(line: 2068, column: 19, scope: !3060)
!3090 = !DILocation(line: 2068, column: 26, scope: !3060)
!3091 = !DILocation(line: 2068, column: 9, scope: !3060)
!3092 = !DILocation(line: 2068, column: 7, scope: !3060)
!3093 = !DILocation(line: 2069, column: 18, scope: !3060)
!3094 = !DILocation(line: 2069, column: 25, scope: !3060)
!3095 = !DILocation(line: 2069, column: 8, scope: !3060)
!3096 = !DILocation(line: 2069, column: 6, scope: !3060)
!3097 = !DILocation(line: 2070, column: 3, scope: !3060)
!3098 = !DILocation(line: 2074, column: 20, scope: !3060)
!3099 = !DILocation(line: 2074, column: 25, scope: !3060)
!3100 = !DILocation(line: 2072, column: 3, scope: !3060)
!3101 = !DILocation(line: 2075, column: 3, scope: !3060)
!3102 = !DILocation(line: 2077, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2077, column: 7)
!3104 = !DILocation(line: 2077, column: 12, scope: !3103)
!3105 = !DILocation(line: 2077, column: 19, scope: !3103)
!3106 = !DILocation(line: 2077, column: 16, scope: !3103)
!3107 = !DILocation(line: 2077, column: 23, scope: !3103)
!3108 = !DILocation(line: 2077, column: 26, scope: !3103)
!3109 = !DILocation(line: 2077, column: 31, scope: !3103)
!3110 = !DILocation(line: 2077, column: 37, scope: !3103)
!3111 = !DILocation(line: 2077, column: 34, scope: !3103)
!3112 = !DILocation(line: 2077, column: 7, scope: !3036)
!3113 = !DILocation(line: 2078, column: 3, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 2077, column: 42)
!3115 = !DILocation(line: 2082, column: 2, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 2082, column: 2)
!3117 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2082, column: 2)
!3118 = !DILocation(line: 2082, column: 2, scope: !3117)
!3119 = !DILocation(line: 2084, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2084, column: 7)
!3121 = !DILocation(line: 2084, column: 14, scope: !3120)
!3122 = !DILocation(line: 2084, column: 43, scope: !3120)
!3123 = !DILocation(line: 2084, column: 50, scope: !3120)
!3124 = !DILocation(line: 2084, column: 40, scope: !3120)
!3125 = !DILocation(line: 2084, column: 34, scope: !3120)
!3126 = !DILocation(line: 2084, column: 12, scope: !3120)
!3127 = !DILocation(line: 2084, column: 63, scope: !3120)
!3128 = !DILocation(line: 2084, column: 68, scope: !3120)
!3129 = !DILocation(line: 2084, column: 61, scope: !3120)
!3130 = !DILocation(line: 2084, column: 7, scope: !3036)
!3131 = !DILocation(line: 2085, column: 3, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 2085, column: 3)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 2085, column: 3)
!3134 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 2084, column: 75)
!3135 = !DILocation(line: 2085, column: 3, scope: !3133)
!3136 = !DILocation(line: 2088, column: 3, scope: !3134)
!3137 = !DILocation(line: 2091, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2091, column: 6)
!3139 = !DILocation(line: 2091, column: 16, scope: !3138)
!3140 = !DILocation(line: 2091, column: 27, scope: !3138)
!3141 = !DILocation(line: 2091, column: 32, scope: !3138)
!3142 = !DILocation(line: 2091, column: 25, scope: !3138)
!3143 = !DILocation(line: 2091, column: 6, scope: !3036)
!3144 = !DILocation(line: 2092, column: 3, scope: !3138)
!3145 = !DILocation(line: 2094, column: 10, scope: !3036)
!3146 = !DILocation(line: 2094, column: 17, scope: !3036)
!3147 = !DILocation(line: 2094, column: 8, scope: !3036)
!3148 = !DILocation(line: 2096, column: 2, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 2096, column: 2)
!3150 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2096, column: 2)
!3151 = !DILocation(line: 2096, column: 2, scope: !3150)
!3152 = !DILocation(line: 2098, column: 32, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2098, column: 7)
!3154 = !DILocation(line: 2098, column: 29, scope: !3153)
!3155 = !DILocation(line: 2098, column: 38, scope: !3153)
!3156 = !DILocation(line: 2098, column: 64, scope: !3153)
!3157 = !DILocation(line: 2098, column: 61, scope: !3153)
!3158 = !DILocation(line: 2099, column: 7, scope: !3153)
!3159 = !DILocation(line: 2099, column: 25, scope: !3153)
!3160 = !DILocation(line: 2099, column: 12, scope: !3153)
!3161 = !DILocation(line: 2099, column: 32, scope: !3153)
!3162 = !DILocation(line: 2099, column: 40, scope: !3153)
!3163 = !DILocation(line: 2099, column: 45, scope: !3153)
!3164 = !DILocation(line: 2099, column: 38, scope: !3153)
!3165 = !DILocation(line: 2099, column: 60, scope: !3153)
!3166 = !DILocation(line: 2099, column: 65, scope: !3153)
!3167 = !DILocation(line: 2099, column: 57, scope: !3153)
!3168 = !DILocation(line: 2099, column: 78, scope: !3153)
!3169 = !DILocation(line: 2100, column: 18, scope: !3153)
!3170 = !DILocation(line: 2100, column: 5, scope: !3153)
!3171 = !DILocation(line: 2100, column: 25, scope: !3153)
!3172 = !DILocation(line: 2100, column: 33, scope: !3153)
!3173 = !DILocation(line: 2100, column: 38, scope: !3153)
!3174 = !DILocation(line: 2100, column: 31, scope: !3153)
!3175 = !DILocation(line: 2100, column: 53, scope: !3153)
!3176 = !DILocation(line: 2100, column: 58, scope: !3153)
!3177 = !DILocation(line: 2100, column: 50, scope: !3153)
!3178 = !DILocation(line: 2098, column: 7, scope: !3036)
!3179 = !DILocation(line: 2101, column: 3, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 2101, column: 3)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 2101, column: 3)
!3182 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 2100, column: 75)
!3183 = !DILocation(line: 2101, column: 3, scope: !3181)
!3184 = !DILocation(line: 2105, column: 3, scope: !3182)
!3185 = !DILocation(line: 2117, column: 2, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 2117, column: 2)
!3187 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2117, column: 2)
!3188 = !DILocation(line: 2117, column: 2, scope: !3187)
!3189 = !DILocation(line: 2119, column: 15, scope: !3036)
!3190 = !DILocation(line: 2119, column: 21, scope: !3036)
!3191 = !DILocation(line: 2119, column: 26, scope: !3036)
!3192 = !DILocation(line: 2119, column: 2, scope: !3036)
!3193 = !DILocation(line: 2120, column: 24, scope: !3036)
!3194 = !DILocation(line: 2120, column: 29, scope: !3036)
!3195 = !DILocation(line: 2120, column: 35, scope: !3036)
!3196 = !DILocation(line: 2120, column: 8, scope: !3036)
!3197 = !DILocation(line: 2120, column: 6, scope: !3036)
!3198 = !DILocation(line: 2121, column: 22, scope: !3036)
!3199 = !DILocation(line: 2121, column: 27, scope: !3036)
!3200 = !DILocation(line: 2121, column: 33, scope: !3036)
!3201 = !DILocation(line: 2121, column: 7, scope: !3036)
!3202 = !DILocation(line: 2121, column: 5, scope: !3036)
!3203 = !DILocation(line: 2122, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2122, column: 7)
!3205 = !DILocation(line: 2122, column: 14, scope: !3204)
!3206 = !DILocation(line: 2122, column: 19, scope: !3204)
!3207 = !DILocation(line: 2122, column: 11, scope: !3204)
!3208 = !DILocation(line: 2122, column: 23, scope: !3204)
!3209 = !DILocation(line: 2122, column: 26, scope: !3204)
!3210 = !DILocation(line: 2122, column: 32, scope: !3204)
!3211 = !DILocation(line: 2122, column: 37, scope: !3204)
!3212 = !DILocation(line: 2122, column: 29, scope: !3204)
!3213 = !DILocation(line: 2122, column: 7, scope: !3036)
!3214 = !DILocation(line: 2123, column: 3, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 2123, column: 3)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 2123, column: 3)
!3217 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 2122, column: 42)
!3218 = !DILocation(line: 2123, column: 3, scope: !3216)
!3219 = !DILocation(line: 2126, column: 3, scope: !3217)
!3220 = !DILocation(line: 2130, column: 5, scope: !3036)
!3221 = !DILocation(line: 2136, column: 2, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 2136, column: 2)
!3223 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2136, column: 2)
!3224 = !DILocation(line: 2136, column: 2, scope: !3223)
!3225 = !DILocation(line: 2137, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2137, column: 6)
!3227 = !DILocation(line: 2137, column: 11, scope: !3226)
!3228 = !DILocation(line: 2137, column: 6, scope: !3036)
!3229 = !DILocation(line: 2138, column: 26, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 2137, column: 25)
!3231 = !DILocation(line: 2138, column: 31, scope: !3230)
!3232 = !DILocation(line: 2138, column: 45, scope: !3230)
!3233 = !DILocation(line: 2138, column: 51, scope: !3230)
!3234 = !DILocation(line: 2138, column: 56, scope: !3230)
!3235 = !DILocation(line: 2138, column: 61, scope: !3230)
!3236 = !DILocation(line: 2138, column: 66, scope: !3230)
!3237 = !DILocation(line: 2138, column: 3, scope: !3230)
!3238 = !DILocation(line: 2139, column: 26, scope: !3230)
!3239 = !DILocation(line: 2139, column: 31, scope: !3230)
!3240 = !DILocation(line: 2139, column: 45, scope: !3230)
!3241 = !DILocation(line: 2139, column: 51, scope: !3230)
!3242 = !DILocation(line: 2139, column: 56, scope: !3230)
!3243 = !DILocation(line: 2139, column: 61, scope: !3230)
!3244 = !DILocation(line: 2139, column: 66, scope: !3230)
!3245 = !DILocation(line: 2139, column: 3, scope: !3230)
!3246 = !DILocation(line: 2140, column: 2, scope: !3230)
!3247 = !DILocation(line: 2141, column: 25, scope: !3036)
!3248 = !DILocation(line: 2141, column: 30, scope: !3036)
!3249 = !DILocation(line: 2141, column: 44, scope: !3036)
!3250 = !DILocation(line: 2141, column: 50, scope: !3036)
!3251 = !DILocation(line: 2141, column: 55, scope: !3036)
!3252 = !DILocation(line: 2141, column: 60, scope: !3036)
!3253 = !DILocation(line: 2141, column: 65, scope: !3036)
!3254 = !DILocation(line: 2141, column: 2, scope: !3036)
!3255 = !DILabel(scope: !3036, name: "match_done", file: !3, line: 2144)
!3256 = !DILocation(line: 2144, column: 2, scope: !3036)
!3257 = !DILocation(line: 2145, column: 9, scope: !3036)
!3258 = !DILocation(line: 2145, column: 2, scope: !3036)
!3259 = distinct !DISubprogram(name: "cfi_jedec_setup", scope: !3, file: !3, line: 1972, type: !3260, scopeLine: 1973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!105, !172, !2424, !105}
!3262 = !DILocalVariable(name: "s", arg: 1, scope: !3263, file: !93, line: 445, type: !1204)
!3263 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !93, file: !93, line: 445, type: !3264, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!121, !1204, !120, !374}
!3266 = !DILocation(line: 445, column: 72, scope: !3263, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 552, column: 10, scope: !3268, inlinedAt: !3273)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !93, line: 540, column: 34)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !93, line: 540, column: 6)
!3270 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 538, type: !3271, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!121, !374, !120}
!3273 = distinct !DILocation(line: 1987, column: 14, scope: !3259)
!3274 = !DILocalVariable(name: "flags", arg: 2, scope: !3263, file: !93, line: 446, type: !120)
!3275 = !DILocation(line: 446, column: 9, scope: !3263, inlinedAt: !3267)
!3276 = !DILocalVariable(name: "size", arg: 3, scope: !3263, file: !93, line: 446, type: !374)
!3277 = !DILocation(line: 446, column: 23, scope: !3263, inlinedAt: !3267)
!3278 = !DILocalVariable(name: "ret", scope: !3263, file: !93, line: 448, type: !121)
!3279 = !DILocation(line: 448, column: 8, scope: !3263, inlinedAt: !3267)
!3280 = !DILocalVariable(name: "flags", arg: 1, scope: !3281, file: !93, line: 318, type: !120)
!3281 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 318, type: !3282, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!92, !120}
!3284 = !DILocation(line: 318, column: 67, scope: !3281, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 553, column: 20, scope: !3268, inlinedAt: !3273)
!3286 = !DILocalVariable(name: "size", arg: 1, scope: !3287, file: !93, line: 346, type: !374)
!3287 = distinct !DISubprogram(name: "kmalloc_index", scope: !93, file: !93, line: 346, type: !3288, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!7, !374}
!3290 = !DILocation(line: 346, column: 58, scope: !3287, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 547, column: 11, scope: !3268, inlinedAt: !3273)
!3292 = !DILocalVariable(name: "size", arg: 1, scope: !3293, file: !93, line: 472, type: !374)
!3293 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !93, file: !93, line: 472, type: !3294, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!121, !374, !120, !7}
!3296 = !DILocation(line: 472, column: 28, scope: !3293, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 481, column: 9, scope: !3298, inlinedAt: !3299)
!3298 = distinct !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 478, type: !3271, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3299 = distinct !DILocation(line: 545, column: 11, scope: !3300, inlinedAt: !3273)
!3300 = distinct !DILexicalBlock(scope: !3268, file: !93, line: 544, column: 7)
!3301 = !DILocalVariable(name: "flags", arg: 2, scope: !3293, file: !93, line: 472, type: !120)
!3302 = !DILocation(line: 472, column: 40, scope: !3293, inlinedAt: !3297)
!3303 = !DILocalVariable(name: "order", arg: 3, scope: !3293, file: !93, line: 472, type: !7)
!3304 = !DILocation(line: 472, column: 60, scope: !3293, inlinedAt: !3297)
!3305 = !DILocalVariable(name: "size", arg: 1, scope: !3298, file: !93, line: 478, type: !374)
!3306 = !DILocation(line: 478, column: 51, scope: !3298, inlinedAt: !3299)
!3307 = !DILocalVariable(name: "flags", arg: 2, scope: !3298, file: !93, line: 478, type: !120)
!3308 = !DILocation(line: 478, column: 63, scope: !3298, inlinedAt: !3299)
!3309 = !DILocalVariable(name: "order", scope: !3298, file: !93, line: 480, type: !7)
!3310 = !DILocation(line: 480, column: 15, scope: !3298, inlinedAt: !3299)
!3311 = !DILocalVariable(name: "size", arg: 1, scope: !3270, file: !93, line: 538, type: !374)
!3312 = !DILocation(line: 538, column: 45, scope: !3270, inlinedAt: !3273)
!3313 = !DILocalVariable(name: "flags", arg: 2, scope: !3270, file: !93, line: 538, type: !120)
!3314 = !DILocation(line: 538, column: 57, scope: !3270, inlinedAt: !3273)
!3315 = !DILocalVariable(name: "index", scope: !3268, file: !93, line: 542, type: !7)
!3316 = !DILocation(line: 542, column: 16, scope: !3268, inlinedAt: !3273)
!3317 = !DILocalVariable(name: "map", arg: 1, scope: !3259, file: !3, line: 1972, type: !172)
!3318 = !DILocation(line: 1972, column: 45, scope: !3259)
!3319 = !DILocalVariable(name: "cfi", arg: 2, scope: !3259, file: !3, line: 1972, type: !2424)
!3320 = !DILocation(line: 1972, column: 70, scope: !3259)
!3321 = !DILocalVariable(name: "index", arg: 3, scope: !3259, file: !3, line: 1972, type: !105)
!3322 = !DILocation(line: 1972, column: 79, scope: !3259)
!3323 = !DILocalVariable(name: "i", scope: !3259, file: !3, line: 1974, type: !105)
!3324 = !DILocation(line: 1974, column: 6, scope: !3259)
!3325 = !DILocalVariable(name: "num_erase_regions", scope: !3259, file: !3, line: 1974, type: !105)
!3326 = !DILocation(line: 1974, column: 8, scope: !3259)
!3327 = !DILocalVariable(name: "uaddr", scope: !3259, file: !3, line: 1975, type: !106)
!3328 = !DILocation(line: 1975, column: 10, scope: !3259)
!3329 = !DILocation(line: 1977, column: 20, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 1977, column: 6)
!3331 = !DILocation(line: 1977, column: 8, scope: !3330)
!3332 = !DILocation(line: 1977, column: 27, scope: !3330)
!3333 = !DILocation(line: 1977, column: 38, scope: !3330)
!3334 = !DILocation(line: 1977, column: 43, scope: !3330)
!3335 = !DILocation(line: 1977, column: 36, scope: !3330)
!3336 = !DILocation(line: 1977, column: 6, scope: !3259)
!3337 = !DILocation(line: 1978, column: 3, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1978, column: 3)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1978, column: 3)
!3340 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1977, column: 57)
!3341 = !DILocation(line: 1978, column: 3, scope: !3339)
!3342 = !DILocation(line: 1980, column: 3, scope: !3340)
!3343 = !DILocation(line: 1983, column: 45, scope: !3259)
!3344 = !DILocation(line: 1983, column: 33, scope: !3259)
!3345 = !DILocation(line: 1983, column: 52, scope: !3259)
!3346 = !DILocation(line: 1983, column: 2, scope: !3259)
!3347 = !DILocation(line: 1985, column: 34, scope: !3259)
!3348 = !DILocation(line: 1985, column: 22, scope: !3259)
!3349 = !DILocation(line: 1985, column: 41, scope: !3259)
!3350 = !DILocation(line: 1985, column: 20, scope: !3259)
!3351 = !DILocation(line: 1987, column: 49, scope: !3259)
!3352 = !DILocation(line: 1987, column: 67, scope: !3259)
!3353 = !DILocation(line: 1987, column: 47, scope: !3259)
!3354 = !DILocation(line: 540, column: 27, scope: !3269, inlinedAt: !3273)
!3355 = !DILocation(line: 540, column: 6, scope: !3269, inlinedAt: !3273)
!3356 = !DILocation(line: 540, column: 6, scope: !3270, inlinedAt: !3273)
!3357 = !DILocation(line: 544, column: 7, scope: !3300, inlinedAt: !3273)
!3358 = !DILocation(line: 544, column: 12, scope: !3300, inlinedAt: !3273)
!3359 = !DILocation(line: 544, column: 7, scope: !3268, inlinedAt: !3273)
!3360 = !DILocation(line: 545, column: 25, scope: !3300, inlinedAt: !3273)
!3361 = !DILocation(line: 545, column: 31, scope: !3300, inlinedAt: !3273)
!3362 = !DILocation(line: 480, column: 33, scope: !3298, inlinedAt: !3299)
!3363 = !DILocation(line: 480, column: 23, scope: !3298, inlinedAt: !3299)
!3364 = !DILocation(line: 481, column: 29, scope: !3298, inlinedAt: !3299)
!3365 = !DILocation(line: 481, column: 35, scope: !3298, inlinedAt: !3299)
!3366 = !DILocation(line: 481, column: 42, scope: !3298, inlinedAt: !3299)
!3367 = !DILocation(line: 474, column: 23, scope: !3293, inlinedAt: !3297)
!3368 = !DILocation(line: 474, column: 29, scope: !3293, inlinedAt: !3297)
!3369 = !DILocation(line: 474, column: 36, scope: !3293, inlinedAt: !3297)
!3370 = !DILocation(line: 474, column: 9, scope: !3293, inlinedAt: !3297)
!3371 = !DILocation(line: 545, column: 4, scope: !3300, inlinedAt: !3273)
!3372 = !DILocation(line: 547, column: 25, scope: !3268, inlinedAt: !3273)
!3373 = !DILocation(line: 348, column: 7, scope: !3374, inlinedAt: !3291)
!3374 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 348, column: 6)
!3375 = !DILocation(line: 348, column: 6, scope: !3287, inlinedAt: !3291)
!3376 = !DILocation(line: 349, column: 3, scope: !3374, inlinedAt: !3291)
!3377 = !DILocation(line: 351, column: 6, scope: !3378, inlinedAt: !3291)
!3378 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 351, column: 6)
!3379 = !DILocation(line: 351, column: 11, scope: !3378, inlinedAt: !3291)
!3380 = !DILocation(line: 351, column: 6, scope: !3287, inlinedAt: !3291)
!3381 = !DILocation(line: 352, column: 3, scope: !3378, inlinedAt: !3291)
!3382 = !DILocation(line: 354, column: 32, scope: !3383, inlinedAt: !3291)
!3383 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 354, column: 6)
!3384 = !DILocation(line: 354, column: 37, scope: !3383, inlinedAt: !3291)
!3385 = !DILocation(line: 354, column: 42, scope: !3383, inlinedAt: !3291)
!3386 = !DILocation(line: 354, column: 45, scope: !3383, inlinedAt: !3291)
!3387 = !DILocation(line: 354, column: 50, scope: !3383, inlinedAt: !3291)
!3388 = !DILocation(line: 354, column: 6, scope: !3287, inlinedAt: !3291)
!3389 = !DILocation(line: 355, column: 3, scope: !3383, inlinedAt: !3291)
!3390 = !DILocation(line: 356, column: 32, scope: !3391, inlinedAt: !3291)
!3391 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 356, column: 6)
!3392 = !DILocation(line: 356, column: 37, scope: !3391, inlinedAt: !3291)
!3393 = !DILocation(line: 356, column: 43, scope: !3391, inlinedAt: !3291)
!3394 = !DILocation(line: 356, column: 46, scope: !3391, inlinedAt: !3291)
!3395 = !DILocation(line: 356, column: 51, scope: !3391, inlinedAt: !3291)
!3396 = !DILocation(line: 356, column: 6, scope: !3287, inlinedAt: !3291)
!3397 = !DILocation(line: 357, column: 3, scope: !3391, inlinedAt: !3291)
!3398 = !DILocation(line: 358, column: 6, scope: !3399, inlinedAt: !3291)
!3399 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 358, column: 6)
!3400 = !DILocation(line: 358, column: 11, scope: !3399, inlinedAt: !3291)
!3401 = !DILocation(line: 358, column: 6, scope: !3287, inlinedAt: !3291)
!3402 = !DILocation(line: 358, column: 26, scope: !3399, inlinedAt: !3291)
!3403 = !DILocation(line: 359, column: 6, scope: !3404, inlinedAt: !3291)
!3404 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 359, column: 6)
!3405 = !DILocation(line: 359, column: 11, scope: !3404, inlinedAt: !3291)
!3406 = !DILocation(line: 359, column: 6, scope: !3287, inlinedAt: !3291)
!3407 = !DILocation(line: 359, column: 26, scope: !3404, inlinedAt: !3291)
!3408 = !DILocation(line: 360, column: 6, scope: !3409, inlinedAt: !3291)
!3409 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 360, column: 6)
!3410 = !DILocation(line: 360, column: 11, scope: !3409, inlinedAt: !3291)
!3411 = !DILocation(line: 360, column: 6, scope: !3287, inlinedAt: !3291)
!3412 = !DILocation(line: 360, column: 26, scope: !3409, inlinedAt: !3291)
!3413 = !DILocation(line: 361, column: 6, scope: !3414, inlinedAt: !3291)
!3414 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 361, column: 6)
!3415 = !DILocation(line: 361, column: 11, scope: !3414, inlinedAt: !3291)
!3416 = !DILocation(line: 361, column: 6, scope: !3287, inlinedAt: !3291)
!3417 = !DILocation(line: 361, column: 26, scope: !3414, inlinedAt: !3291)
!3418 = !DILocation(line: 362, column: 6, scope: !3419, inlinedAt: !3291)
!3419 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 362, column: 6)
!3420 = !DILocation(line: 362, column: 11, scope: !3419, inlinedAt: !3291)
!3421 = !DILocation(line: 362, column: 6, scope: !3287, inlinedAt: !3291)
!3422 = !DILocation(line: 362, column: 26, scope: !3419, inlinedAt: !3291)
!3423 = !DILocation(line: 363, column: 6, scope: !3424, inlinedAt: !3291)
!3424 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 363, column: 6)
!3425 = !DILocation(line: 363, column: 11, scope: !3424, inlinedAt: !3291)
!3426 = !DILocation(line: 363, column: 6, scope: !3287, inlinedAt: !3291)
!3427 = !DILocation(line: 363, column: 26, scope: !3424, inlinedAt: !3291)
!3428 = !DILocation(line: 364, column: 6, scope: !3429, inlinedAt: !3291)
!3429 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 364, column: 6)
!3430 = !DILocation(line: 364, column: 11, scope: !3429, inlinedAt: !3291)
!3431 = !DILocation(line: 364, column: 6, scope: !3287, inlinedAt: !3291)
!3432 = !DILocation(line: 364, column: 26, scope: !3429, inlinedAt: !3291)
!3433 = !DILocation(line: 365, column: 6, scope: !3434, inlinedAt: !3291)
!3434 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 365, column: 6)
!3435 = !DILocation(line: 365, column: 11, scope: !3434, inlinedAt: !3291)
!3436 = !DILocation(line: 365, column: 6, scope: !3287, inlinedAt: !3291)
!3437 = !DILocation(line: 365, column: 26, scope: !3434, inlinedAt: !3291)
!3438 = !DILocation(line: 366, column: 6, scope: !3439, inlinedAt: !3291)
!3439 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 366, column: 6)
!3440 = !DILocation(line: 366, column: 11, scope: !3439, inlinedAt: !3291)
!3441 = !DILocation(line: 366, column: 6, scope: !3287, inlinedAt: !3291)
!3442 = !DILocation(line: 366, column: 26, scope: !3439, inlinedAt: !3291)
!3443 = !DILocation(line: 367, column: 6, scope: !3444, inlinedAt: !3291)
!3444 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 367, column: 6)
!3445 = !DILocation(line: 367, column: 11, scope: !3444, inlinedAt: !3291)
!3446 = !DILocation(line: 367, column: 6, scope: !3287, inlinedAt: !3291)
!3447 = !DILocation(line: 367, column: 26, scope: !3444, inlinedAt: !3291)
!3448 = !DILocation(line: 368, column: 6, scope: !3449, inlinedAt: !3291)
!3449 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 368, column: 6)
!3450 = !DILocation(line: 368, column: 11, scope: !3449, inlinedAt: !3291)
!3451 = !DILocation(line: 368, column: 6, scope: !3287, inlinedAt: !3291)
!3452 = !DILocation(line: 368, column: 26, scope: !3449, inlinedAt: !3291)
!3453 = !DILocation(line: 369, column: 6, scope: !3454, inlinedAt: !3291)
!3454 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 369, column: 6)
!3455 = !DILocation(line: 369, column: 11, scope: !3454, inlinedAt: !3291)
!3456 = !DILocation(line: 369, column: 6, scope: !3287, inlinedAt: !3291)
!3457 = !DILocation(line: 369, column: 26, scope: !3454, inlinedAt: !3291)
!3458 = !DILocation(line: 370, column: 6, scope: !3459, inlinedAt: !3291)
!3459 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 370, column: 6)
!3460 = !DILocation(line: 370, column: 11, scope: !3459, inlinedAt: !3291)
!3461 = !DILocation(line: 370, column: 6, scope: !3287, inlinedAt: !3291)
!3462 = !DILocation(line: 370, column: 26, scope: !3459, inlinedAt: !3291)
!3463 = !DILocation(line: 371, column: 6, scope: !3464, inlinedAt: !3291)
!3464 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 371, column: 6)
!3465 = !DILocation(line: 371, column: 11, scope: !3464, inlinedAt: !3291)
!3466 = !DILocation(line: 371, column: 6, scope: !3287, inlinedAt: !3291)
!3467 = !DILocation(line: 371, column: 26, scope: !3464, inlinedAt: !3291)
!3468 = !DILocation(line: 372, column: 6, scope: !3469, inlinedAt: !3291)
!3469 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 372, column: 6)
!3470 = !DILocation(line: 372, column: 11, scope: !3469, inlinedAt: !3291)
!3471 = !DILocation(line: 372, column: 6, scope: !3287, inlinedAt: !3291)
!3472 = !DILocation(line: 372, column: 26, scope: !3469, inlinedAt: !3291)
!3473 = !DILocation(line: 373, column: 6, scope: !3474, inlinedAt: !3291)
!3474 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 373, column: 6)
!3475 = !DILocation(line: 373, column: 11, scope: !3474, inlinedAt: !3291)
!3476 = !DILocation(line: 373, column: 6, scope: !3287, inlinedAt: !3291)
!3477 = !DILocation(line: 373, column: 26, scope: !3474, inlinedAt: !3291)
!3478 = !DILocation(line: 374, column: 6, scope: !3479, inlinedAt: !3291)
!3479 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 374, column: 6)
!3480 = !DILocation(line: 374, column: 11, scope: !3479, inlinedAt: !3291)
!3481 = !DILocation(line: 374, column: 6, scope: !3287, inlinedAt: !3291)
!3482 = !DILocation(line: 374, column: 26, scope: !3479, inlinedAt: !3291)
!3483 = !DILocation(line: 375, column: 6, scope: !3484, inlinedAt: !3291)
!3484 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 375, column: 6)
!3485 = !DILocation(line: 375, column: 11, scope: !3484, inlinedAt: !3291)
!3486 = !DILocation(line: 375, column: 6, scope: !3287, inlinedAt: !3291)
!3487 = !DILocation(line: 375, column: 27, scope: !3484, inlinedAt: !3291)
!3488 = !DILocation(line: 376, column: 6, scope: !3489, inlinedAt: !3291)
!3489 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 376, column: 6)
!3490 = !DILocation(line: 376, column: 11, scope: !3489, inlinedAt: !3291)
!3491 = !DILocation(line: 376, column: 6, scope: !3287, inlinedAt: !3291)
!3492 = !DILocation(line: 376, column: 32, scope: !3489, inlinedAt: !3291)
!3493 = !DILocation(line: 377, column: 6, scope: !3494, inlinedAt: !3291)
!3494 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 377, column: 6)
!3495 = !DILocation(line: 377, column: 11, scope: !3494, inlinedAt: !3291)
!3496 = !DILocation(line: 377, column: 6, scope: !3287, inlinedAt: !3291)
!3497 = !DILocation(line: 377, column: 32, scope: !3494, inlinedAt: !3291)
!3498 = !DILocation(line: 378, column: 6, scope: !3499, inlinedAt: !3291)
!3499 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 378, column: 6)
!3500 = !DILocation(line: 378, column: 11, scope: !3499, inlinedAt: !3291)
!3501 = !DILocation(line: 378, column: 6, scope: !3287, inlinedAt: !3291)
!3502 = !DILocation(line: 378, column: 32, scope: !3499, inlinedAt: !3291)
!3503 = !DILocation(line: 379, column: 6, scope: !3504, inlinedAt: !3291)
!3504 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 379, column: 6)
!3505 = !DILocation(line: 379, column: 11, scope: !3504, inlinedAt: !3291)
!3506 = !DILocation(line: 379, column: 6, scope: !3287, inlinedAt: !3291)
!3507 = !DILocation(line: 379, column: 33, scope: !3504, inlinedAt: !3291)
!3508 = !DILocation(line: 380, column: 6, scope: !3509, inlinedAt: !3291)
!3509 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 380, column: 6)
!3510 = !DILocation(line: 380, column: 11, scope: !3509, inlinedAt: !3291)
!3511 = !DILocation(line: 380, column: 6, scope: !3287, inlinedAt: !3291)
!3512 = !DILocation(line: 380, column: 33, scope: !3509, inlinedAt: !3291)
!3513 = !DILocation(line: 381, column: 6, scope: !3514, inlinedAt: !3291)
!3514 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 381, column: 6)
!3515 = !DILocation(line: 381, column: 11, scope: !3514, inlinedAt: !3291)
!3516 = !DILocation(line: 381, column: 6, scope: !3287, inlinedAt: !3291)
!3517 = !DILocation(line: 381, column: 33, scope: !3514, inlinedAt: !3291)
!3518 = !DILocation(line: 382, column: 2, scope: !3519, inlinedAt: !3291)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !93, line: 382, column: 2)
!3520 = distinct !DILexicalBlock(scope: !3287, file: !93, line: 382, column: 2)
!3521 = !{i32 -2144107190, i32 -2144107161, i32 -2144107115, i32 -2144107057, i32 -2144107003, i32 -2144106949, i32 -2144106894, i32 -2144106863}
!3522 = !DILocation(line: 382, column: 2, scope: !3523, inlinedAt: !3291)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !93, line: 382, column: 2)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !93, line: 382, column: 2)
!3525 = !{i32 -2144106420, i32 -2144106413, i32 -2144106359, i32 -2144106328, i32 -2144106298}
!3526 = !DILocation(line: 382, column: 2, scope: !3524, inlinedAt: !3291)
!3527 = !DILocation(line: 386, column: 1, scope: !3287, inlinedAt: !3291)
!3528 = !DILocation(line: 547, column: 9, scope: !3268, inlinedAt: !3273)
!3529 = !DILocation(line: 549, column: 8, scope: !3530, inlinedAt: !3273)
!3530 = distinct !DILexicalBlock(scope: !3268, file: !93, line: 549, column: 7)
!3531 = !DILocation(line: 549, column: 7, scope: !3268, inlinedAt: !3273)
!3532 = !DILocation(line: 550, column: 4, scope: !3530, inlinedAt: !3273)
!3533 = !DILocation(line: 553, column: 33, scope: !3268, inlinedAt: !3273)
!3534 = !DILocation(line: 325, column: 6, scope: !3535, inlinedAt: !3285)
!3535 = distinct !DILexicalBlock(scope: !3281, file: !93, line: 325, column: 6)
!3536 = !DILocation(line: 325, column: 6, scope: !3281, inlinedAt: !3285)
!3537 = !DILocation(line: 326, column: 3, scope: !3535, inlinedAt: !3285)
!3538 = !DILocation(line: 332, column: 9, scope: !3281, inlinedAt: !3285)
!3539 = !DILocation(line: 332, column: 15, scope: !3281, inlinedAt: !3285)
!3540 = !DILocation(line: 332, column: 2, scope: !3281, inlinedAt: !3285)
!3541 = !DILocation(line: 336, column: 1, scope: !3281, inlinedAt: !3285)
!3542 = !DILocation(line: 553, column: 5, scope: !3268, inlinedAt: !3273)
!3543 = !DILocation(line: 553, column: 41, scope: !3268, inlinedAt: !3273)
!3544 = !DILocation(line: 554, column: 5, scope: !3268, inlinedAt: !3273)
!3545 = !DILocation(line: 554, column: 12, scope: !3268, inlinedAt: !3273)
!3546 = !DILocation(line: 448, column: 31, scope: !3263, inlinedAt: !3267)
!3547 = !DILocation(line: 448, column: 34, scope: !3263, inlinedAt: !3267)
!3548 = !DILocation(line: 448, column: 14, scope: !3263, inlinedAt: !3267)
!3549 = !DILocation(line: 450, column: 22, scope: !3263, inlinedAt: !3267)
!3550 = !DILocation(line: 450, column: 25, scope: !3263, inlinedAt: !3267)
!3551 = !DILocation(line: 450, column: 30, scope: !3263, inlinedAt: !3267)
!3552 = !DILocation(line: 450, column: 36, scope: !3263, inlinedAt: !3267)
!3553 = !DILocation(line: 450, column: 8, scope: !3263, inlinedAt: !3267)
!3554 = !DILocation(line: 450, column: 6, scope: !3263, inlinedAt: !3267)
!3555 = !DILocation(line: 451, column: 9, scope: !3263, inlinedAt: !3267)
!3556 = !DILocation(line: 552, column: 3, scope: !3268, inlinedAt: !3273)
!3557 = !DILocation(line: 557, column: 19, scope: !3270, inlinedAt: !3273)
!3558 = !DILocation(line: 557, column: 25, scope: !3270, inlinedAt: !3273)
!3559 = !DILocation(line: 557, column: 9, scope: !3270, inlinedAt: !3273)
!3560 = !DILocation(line: 557, column: 2, scope: !3270, inlinedAt: !3273)
!3561 = !DILocation(line: 558, column: 1, scope: !3270, inlinedAt: !3273)
!3562 = !DILocation(line: 1987, column: 14, scope: !3259)
!3563 = !DILocation(line: 1987, column: 2, scope: !3259)
!3564 = !DILocation(line: 1987, column: 7, scope: !3259)
!3565 = !DILocation(line: 1987, column: 12, scope: !3259)
!3566 = !DILocation(line: 1988, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 1988, column: 6)
!3568 = !DILocation(line: 1988, column: 12, scope: !3567)
!3569 = !DILocation(line: 1988, column: 6, scope: !3259)
!3570 = !DILocation(line: 1990, column: 3, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1988, column: 18)
!3572 = !DILocation(line: 1993, column: 9, scope: !3259)
!3573 = !DILocation(line: 1993, column: 14, scope: !3259)
!3574 = !DILocation(line: 1993, column: 2, scope: !3259)
!3575 = !DILocation(line: 1995, column: 32, scope: !3259)
!3576 = !DILocation(line: 1995, column: 20, scope: !3259)
!3577 = !DILocation(line: 1995, column: 39, scope: !3259)
!3578 = !DILocation(line: 1995, column: 2, scope: !3259)
!3579 = !DILocation(line: 1995, column: 7, scope: !3259)
!3580 = !DILocation(line: 1995, column: 13, scope: !3259)
!3581 = !DILocation(line: 1995, column: 18, scope: !3259)
!3582 = !DILocation(line: 1996, column: 43, scope: !3259)
!3583 = !DILocation(line: 1996, column: 31, scope: !3259)
!3584 = !DILocation(line: 1996, column: 50, scope: !3259)
!3585 = !DILocation(line: 1996, column: 2, scope: !3259)
!3586 = !DILocation(line: 1996, column: 7, scope: !3259)
!3587 = !DILocation(line: 1996, column: 13, scope: !3259)
!3588 = !DILocation(line: 1996, column: 29, scope: !3259)
!3589 = !DILocation(line: 1997, column: 35, scope: !3259)
!3590 = !DILocation(line: 1997, column: 23, scope: !3259)
!3591 = !DILocation(line: 1997, column: 42, scope: !3259)
!3592 = !DILocation(line: 1997, column: 2, scope: !3259)
!3593 = !DILocation(line: 1997, column: 7, scope: !3259)
!3594 = !DILocation(line: 1997, column: 13, scope: !3259)
!3595 = !DILocation(line: 1997, column: 21, scope: !3259)
!3596 = !DILocation(line: 1998, column: 2, scope: !3259)
!3597 = !DILocation(line: 1998, column: 7, scope: !3259)
!3598 = !DILocation(line: 1998, column: 16, scope: !3259)
!3599 = !DILocation(line: 1999, column: 2, scope: !3259)
!3600 = !DILocation(line: 1999, column: 7, scope: !3259)
!3601 = !DILocation(line: 1999, column: 26, scope: !3259)
!3602 = !DILocation(line: 2001, column: 8, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 2001, column: 2)
!3604 = !DILocation(line: 2001, column: 7, scope: !3603)
!3605 = !DILocation(line: 2001, column: 12, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 2001, column: 2)
!3607 = !DILocation(line: 2001, column: 14, scope: !3606)
!3608 = !DILocation(line: 2001, column: 13, scope: !3606)
!3609 = !DILocation(line: 2001, column: 2, scope: !3603)
!3610 = !DILocation(line: 2002, column: 47, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 2001, column: 37)
!3612 = !DILocation(line: 2002, column: 35, scope: !3611)
!3613 = !DILocation(line: 2002, column: 54, scope: !3611)
!3614 = !DILocation(line: 2002, column: 62, scope: !3611)
!3615 = !DILocation(line: 2002, column: 3, scope: !3611)
!3616 = !DILocation(line: 2002, column: 8, scope: !3611)
!3617 = !DILocation(line: 2002, column: 14, scope: !3611)
!3618 = !DILocation(line: 2002, column: 30, scope: !3611)
!3619 = !DILocation(line: 2002, column: 33, scope: !3611)
!3620 = !DILocation(line: 2003, column: 2, scope: !3611)
!3621 = !DILocation(line: 2001, column: 34, scope: !3606)
!3622 = !DILocation(line: 2001, column: 2, scope: !3606)
!3623 = distinct !{!3623, !3609, !3624}
!3624 = !DILocation(line: 2003, column: 2, scope: !3603)
!3625 = !DILocation(line: 2004, column: 2, scope: !3259)
!3626 = !DILocation(line: 2004, column: 7, scope: !3259)
!3627 = !DILocation(line: 2004, column: 19, scope: !3259)
!3628 = !DILocation(line: 2007, column: 25, scope: !3259)
!3629 = !DILocation(line: 2007, column: 13, scope: !3259)
!3630 = !DILocation(line: 2007, column: 32, scope: !3259)
!3631 = !DILocation(line: 2007, column: 2, scope: !3259)
!3632 = !DILocation(line: 2007, column: 7, scope: !3259)
!3633 = !DILocation(line: 2007, column: 11, scope: !3259)
!3634 = !DILocation(line: 2008, column: 24, scope: !3259)
!3635 = !DILocation(line: 2008, column: 12, scope: !3259)
!3636 = !DILocation(line: 2008, column: 31, scope: !3259)
!3637 = !DILocation(line: 2008, column: 2, scope: !3259)
!3638 = !DILocation(line: 2008, column: 7, scope: !3259)
!3639 = !DILocation(line: 2008, column: 10, scope: !3259)
!3640 = !DILocation(line: 2010, column: 22, scope: !3259)
!3641 = !DILocation(line: 2010, column: 10, scope: !3259)
!3642 = !DILocation(line: 2010, column: 29, scope: !3259)
!3643 = !DILocation(line: 2010, column: 8, scope: !3259)
!3644 = !DILocation(line: 2016, column: 35, scope: !3259)
!3645 = !DILocation(line: 2016, column: 22, scope: !3259)
!3646 = !DILocation(line: 2016, column: 42, scope: !3259)
!3647 = !DILocation(line: 2016, column: 50, scope: !3259)
!3648 = !DILocation(line: 2016, column: 55, scope: !3259)
!3649 = !DILocation(line: 2016, column: 48, scope: !3259)
!3650 = !DILocation(line: 2016, column: 2, scope: !3259)
!3651 = !DILocation(line: 2016, column: 7, scope: !3259)
!3652 = !DILocation(line: 2016, column: 20, scope: !3259)
!3653 = !DILocation(line: 2017, column: 35, scope: !3259)
!3654 = !DILocation(line: 2017, column: 22, scope: !3259)
!3655 = !DILocation(line: 2017, column: 42, scope: !3259)
!3656 = !DILocation(line: 2017, column: 50, scope: !3259)
!3657 = !DILocation(line: 2017, column: 55, scope: !3259)
!3658 = !DILocation(line: 2017, column: 48, scope: !3259)
!3659 = !DILocation(line: 2017, column: 2, scope: !3259)
!3660 = !DILocation(line: 2017, column: 7, scope: !3259)
!3661 = !DILocation(line: 2017, column: 20, scope: !3259)
!3662 = !DILocation(line: 2019, column: 2, scope: !3259)
!3663 = !DILocation(line: 2020, column: 1, scope: !3259)
!3664 = distinct !DISubprogram(name: "test_bit", scope: !3665, file: !3665, line: 132, type: !3666, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3665 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!262, !129, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3670 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!3671 = !DILocalVariable(name: "nr", arg: 1, scope: !3672, file: !3673, line: 210, type: !129)
!3672 = distinct !DISubprogram(name: "variable_test_bit", scope: !3673, file: !3673, line: 210, type: !3666, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3673 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3674 = !DILocation(line: 210, column: 52, scope: !3672, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 135, column: 9, scope: !3664)
!3676 = !DILocalVariable(name: "addr", arg: 2, scope: !3672, file: !3673, line: 210, type: !3668)
!3677 = !DILocation(line: 210, column: 86, scope: !3672, inlinedAt: !3675)
!3678 = !DILocalVariable(name: "oldbit", scope: !3672, file: !3673, line: 212, type: !262)
!3679 = !DILocation(line: 212, column: 7, scope: !3672, inlinedAt: !3675)
!3680 = !DILocalVariable(name: "nr", arg: 1, scope: !3681, file: !3673, line: 204, type: !129)
!3681 = distinct !DISubprogram(name: "constant_test_bit", scope: !3673, file: !3673, line: 204, type: !3666, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3682 = !DILocation(line: 204, column: 52, scope: !3681, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 135, column: 9, scope: !3664)
!3684 = !DILocalVariable(name: "addr", arg: 2, scope: !3681, file: !3673, line: 204, type: !3668)
!3685 = !DILocation(line: 204, column: 86, scope: !3681, inlinedAt: !3683)
!3686 = !DILocalVariable(name: "v", arg: 1, scope: !3687, file: !3688, line: 69, type: !3691)
!3687 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3688, file: !3688, line: 69, type: !3689, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3688 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !3691, !374}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3693 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3694 = !DILocation(line: 69, column: 73, scope: !3687, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 134, column: 2, scope: !3664)
!3696 = !DILocalVariable(name: "size", arg: 2, scope: !3687, file: !3688, line: 69, type: !374)
!3697 = !DILocation(line: 69, column: 83, scope: !3687, inlinedAt: !3695)
!3698 = !DILocalVariable(name: "nr", arg: 1, scope: !3664, file: !3665, line: 132, type: !129)
!3699 = !DILocation(line: 132, column: 34, scope: !3664)
!3700 = !DILocalVariable(name: "addr", arg: 2, scope: !3664, file: !3665, line: 132, type: !3668)
!3701 = !DILocation(line: 132, column: 68, scope: !3664)
!3702 = !DILocation(line: 134, column: 25, scope: !3664)
!3703 = !DILocation(line: 134, column: 32, scope: !3664)
!3704 = !DILocation(line: 134, column: 30, scope: !3664)
!3705 = !DILocation(line: 71, column: 19, scope: !3687, inlinedAt: !3695)
!3706 = !DILocation(line: 71, column: 22, scope: !3687, inlinedAt: !3695)
!3707 = !DILocation(line: 71, column: 2, scope: !3687, inlinedAt: !3695)
!3708 = !DILocation(line: 72, column: 2, scope: !3687, inlinedAt: !3695)
!3709 = !DILocation(line: 135, column: 9, scope: !3664)
!3710 = !DILocation(line: 206, column: 19, scope: !3681, inlinedAt: !3683)
!3711 = !DILocation(line: 206, column: 22, scope: !3681, inlinedAt: !3683)
!3712 = !DILocation(line: 206, column: 15, scope: !3681, inlinedAt: !3683)
!3713 = !DILocation(line: 207, column: 4, scope: !3681, inlinedAt: !3683)
!3714 = !DILocation(line: 207, column: 9, scope: !3681, inlinedAt: !3683)
!3715 = !DILocation(line: 207, column: 12, scope: !3681, inlinedAt: !3683)
!3716 = !DILocation(line: 206, column: 44, scope: !3681, inlinedAt: !3683)
!3717 = !DILocation(line: 207, column: 37, scope: !3681, inlinedAt: !3683)
!3718 = !DILocation(line: 217, column: 33, scope: !3672, inlinedAt: !3675)
!3719 = !DILocation(line: 217, column: 46, scope: !3672, inlinedAt: !3675)
!3720 = !DILocation(line: 214, column: 2, scope: !3672, inlinedAt: !3675)
!3721 = !{i32 -2147087712, i32 -2147087652}
!3722 = !DILocation(line: 219, column: 9, scope: !3672, inlinedAt: !3675)
!3723 = !DILocation(line: 135, column: 2, scope: !3664)
!3724 = distinct !DISubprogram(name: "set_bit", scope: !3725, file: !3725, line: 26, type: !3726, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3725 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !129, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3729 = !DILocalVariable(name: "nr", arg: 1, scope: !3730, file: !3673, line: 52, type: !129)
!3730 = distinct !DISubprogram(name: "arch_set_bit", scope: !3673, file: !3673, line: 52, type: !3726, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3731 = !DILocation(line: 52, column: 19, scope: !3730, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 29, column: 2, scope: !3724)
!3733 = !DILocalVariable(name: "addr", arg: 2, scope: !3730, file: !3673, line: 52, type: !3728)
!3734 = !DILocation(line: 52, column: 47, scope: !3730, inlinedAt: !3732)
!3735 = !DILocalVariable(name: "v", arg: 1, scope: !3736, file: !3688, line: 84, type: !3691)
!3736 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3688, file: !3688, line: 84, type: !3689, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3737 = !DILocation(line: 84, column: 74, scope: !3736, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 28, column: 2, scope: !3724)
!3739 = !DILocalVariable(name: "size", arg: 2, scope: !3736, file: !3688, line: 84, type: !374)
!3740 = !DILocation(line: 84, column: 84, scope: !3736, inlinedAt: !3738)
!3741 = !DILocalVariable(name: "nr", arg: 1, scope: !3724, file: !3725, line: 26, type: !129)
!3742 = !DILocation(line: 26, column: 33, scope: !3724)
!3743 = !DILocalVariable(name: "addr", arg: 2, scope: !3724, file: !3725, line: 26, type: !3728)
!3744 = !DILocation(line: 26, column: 61, scope: !3724)
!3745 = !DILocation(line: 28, column: 26, scope: !3724)
!3746 = !DILocation(line: 28, column: 33, scope: !3724)
!3747 = !DILocation(line: 28, column: 31, scope: !3724)
!3748 = !DILocation(line: 86, column: 20, scope: !3736, inlinedAt: !3738)
!3749 = !DILocation(line: 86, column: 23, scope: !3736, inlinedAt: !3738)
!3750 = !DILocation(line: 86, column: 2, scope: !3736, inlinedAt: !3738)
!3751 = !DILocation(line: 87, column: 2, scope: !3736, inlinedAt: !3738)
!3752 = !DILocation(line: 29, column: 15, scope: !3724)
!3753 = !DILocation(line: 29, column: 19, scope: !3724)
!3754 = !DILocation(line: 54, column: 27, scope: !3755, inlinedAt: !3732)
!3755 = distinct !DILexicalBlock(scope: !3730, file: !3673, line: 54, column: 6)
!3756 = !DILocation(line: 54, column: 6, scope: !3755, inlinedAt: !3732)
!3757 = !DILocation(line: 54, column: 6, scope: !3730, inlinedAt: !3732)
!3758 = !DILocation(line: 56, column: 6, scope: !3759, inlinedAt: !3732)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !3673, line: 54, column: 32)
!3760 = !DILocation(line: 57, column: 12, scope: !3759, inlinedAt: !3732)
!3761 = !DILocation(line: 55, column: 3, scope: !3759, inlinedAt: !3732)
!3762 = !{i32 -2147096960}
!3763 = !DILocation(line: 59, column: 2, scope: !3759, inlinedAt: !3732)
!3764 = !DILocation(line: 61, column: 8, scope: !3765, inlinedAt: !3732)
!3765 = distinct !DILexicalBlock(scope: !3755, file: !3673, line: 59, column: 9)
!3766 = !DILocation(line: 61, column: 32, scope: !3765, inlinedAt: !3732)
!3767 = !DILocation(line: 60, column: 3, scope: !3765, inlinedAt: !3732)
!3768 = !{i32 -2147096828}
!3769 = !DILocation(line: 30, column: 1, scope: !3724)
!3770 = distinct !DISubprogram(name: "get_order", scope: !3771, file: !3771, line: 29, type: !3772, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3771 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!105, !123}
!3774 = !DILocalVariable(name: "x", arg: 1, scope: !3775, file: !3673, line: 366, type: !183)
!3775 = distinct !DISubprogram(name: "fls64", scope: !3673, file: !3673, line: 366, type: !3776, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!105, !183}
!3778 = !DILocation(line: 366, column: 40, scope: !3775, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 46, column: 9, scope: !3770)
!3780 = !DILocalVariable(name: "bitpos", scope: !3775, file: !3673, line: 368, type: !105)
!3781 = !DILocation(line: 368, column: 6, scope: !3775, inlinedAt: !3779)
!3782 = !DILocalVariable(name: "size", arg: 1, scope: !3770, file: !3771, line: 29, type: !123)
!3783 = !DILocation(line: 29, column: 63, scope: !3770)
!3784 = !DILocation(line: 31, column: 27, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3770, file: !3771, line: 31, column: 6)
!3786 = !DILocation(line: 31, column: 6, scope: !3785)
!3787 = !DILocation(line: 31, column: 6, scope: !3770)
!3788 = !DILocation(line: 32, column: 8, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !3771, line: 32, column: 7)
!3790 = distinct !DILexicalBlock(scope: !3785, file: !3771, line: 31, column: 34)
!3791 = !DILocation(line: 32, column: 7, scope: !3790)
!3792 = !DILocation(line: 33, column: 4, scope: !3789)
!3793 = !DILocation(line: 35, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !3771, line: 35, column: 7)
!3795 = !DILocation(line: 35, column: 12, scope: !3794)
!3796 = !DILocation(line: 35, column: 7, scope: !3790)
!3797 = !DILocation(line: 36, column: 4, scope: !3794)
!3798 = !DILocation(line: 38, column: 10, scope: !3790)
!3799 = !DILocation(line: 38, column: 28, scope: !3790)
!3800 = !DILocation(line: 38, column: 41, scope: !3790)
!3801 = !DILocation(line: 38, column: 3, scope: !3790)
!3802 = !DILocation(line: 41, column: 6, scope: !3770)
!3803 = !DILocation(line: 42, column: 7, scope: !3770)
!3804 = !DILocation(line: 46, column: 15, scope: !3770)
!3805 = !DILocation(line: 374, column: 2, scope: !3775, inlinedAt: !3779)
!3806 = !DILocation(line: 376, column: 14, scope: !3775, inlinedAt: !3779)
!3807 = !{i32 355261}
!3808 = !DILocation(line: 377, column: 9, scope: !3775, inlinedAt: !3779)
!3809 = !DILocation(line: 377, column: 16, scope: !3775, inlinedAt: !3779)
!3810 = !DILocation(line: 46, column: 2, scope: !3770)
!3811 = !DILocation(line: 48, column: 1, scope: !3770)
!3812 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3813, file: !3813, line: 30, type: !3814, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3813 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!105, !182}
!3816 = !DILocation(line: 366, column: 40, scope: !3775, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 32, column: 9, scope: !3812)
!3818 = !DILocation(line: 368, column: 6, scope: !3775, inlinedAt: !3817)
!3819 = !DILocalVariable(name: "n", arg: 1, scope: !3812, file: !3813, line: 30, type: !182)
!3820 = !DILocation(line: 30, column: 21, scope: !3812)
!3821 = !DILocation(line: 32, column: 15, scope: !3812)
!3822 = !DILocation(line: 374, column: 2, scope: !3775, inlinedAt: !3817)
!3823 = !DILocation(line: 376, column: 14, scope: !3775, inlinedAt: !3817)
!3824 = !DILocation(line: 377, column: 9, scope: !3775, inlinedAt: !3817)
!3825 = !DILocation(line: 377, column: 16, scope: !3775, inlinedAt: !3817)
!3826 = !DILocation(line: 32, column: 18, scope: !3812)
!3827 = !DILocation(line: 32, column: 2, scope: !3812)
!3828 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3829, file: !3829, line: 137, type: !3830, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3829 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!121, !1204, !217, !374, !120}
!3832 = !DILocalVariable(name: "s", arg: 1, scope: !3828, file: !3829, line: 137, type: !1204)
!3833 = !DILocation(line: 137, column: 54, scope: !3828)
!3834 = !DILocalVariable(name: "object", arg: 2, scope: !3828, file: !3829, line: 137, type: !217)
!3835 = !DILocation(line: 137, column: 69, scope: !3828)
!3836 = !DILocalVariable(name: "size", arg: 3, scope: !3828, file: !3829, line: 138, type: !374)
!3837 = !DILocation(line: 138, column: 12, scope: !3828)
!3838 = !DILocalVariable(name: "flags", arg: 4, scope: !3828, file: !3829, line: 138, type: !120)
!3839 = !DILocation(line: 138, column: 24, scope: !3828)
!3840 = !DILocation(line: 140, column: 17, scope: !3828)
!3841 = !DILocation(line: 140, column: 2, scope: !3828)
!3842 = distinct !DISubprogram(name: "kasan_check_read", scope: !3843, file: !3843, line: 34, type: !3844, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3843 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!262, !3691, !7}
!3846 = !DILocalVariable(name: "p", arg: 1, scope: !3842, file: !3843, line: 34, type: !3691)
!3847 = !DILocation(line: 34, column: 58, scope: !3842)
!3848 = !DILocalVariable(name: "size", arg: 2, scope: !3842, file: !3843, line: 34, type: !7)
!3849 = !DILocation(line: 34, column: 74, scope: !3842)
!3850 = !DILocation(line: 36, column: 2, scope: !3842)
!3851 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3852, file: !3852, line: 178, type: !3853, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3852 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3691, !374, !105}
!3855 = !DILocalVariable(name: "ptr", arg: 1, scope: !3851, file: !3852, line: 178, type: !3691)
!3856 = !DILocation(line: 178, column: 60, scope: !3851)
!3857 = !DILocalVariable(name: "size", arg: 2, scope: !3851, file: !3852, line: 178, type: !374)
!3858 = !DILocation(line: 178, column: 72, scope: !3851)
!3859 = !DILocalVariable(name: "type", arg: 3, scope: !3851, file: !3852, line: 179, type: !105)
!3860 = !DILocation(line: 179, column: 15, scope: !3851)
!3861 = !DILocation(line: 179, column: 23, scope: !3851)
!3862 = distinct !DISubprogram(name: "kasan_check_write", scope: !3843, file: !3843, line: 38, type: !3844, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!3863 = !DILocalVariable(name: "p", arg: 1, scope: !3862, file: !3843, line: 38, type: !3691)
!3864 = !DILocation(line: 38, column: 59, scope: !3862)
!3865 = !DILocalVariable(name: "size", arg: 2, scope: !3862, file: !3843, line: 38, type: !7)
!3866 = !DILocation(line: 38, column: 75, scope: !3862)
!3867 = !DILocation(line: 40, column: 2, scope: !3862)
