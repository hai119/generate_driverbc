; ModuleID = '../bcout/drivers/mtd/chips/gen_probe.llvm.bc'
source_filename = "drivers/mtd/chips/gen_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
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
%struct.module = type opaque
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.38 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.map_info = type { i8*, i64, i64, i8*, i8*, i32, i32, i64 (%struct.map_info*, i64)*, void (%struct.map_info*, i8*, i64, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i64, i8*, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i32)*, i64, i64, i64, %struct.device_node*, i8*, %struct.mtd_chip_driver* }
%struct.mtd_chip_driver = type { %struct.mtd_info* (%struct.map_info*)*, void (%struct.mtd_info*)*, %struct.module*, i8*, %struct.list_head }
%struct.chip_probe = type { i8*, i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)* }
%struct.cfi_private = type { i16, i8*, i32, i32, i32, i32, i32, %struct.mtd_info* (%struct.map_info*)*, %struct.cfi_ident*, i32, i32, i32, %union.map_word, i64, i8*, [0 x %struct.flchip] }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%union.map_word = type { [1 x i64] }
%struct.flchip = type { i64, i32, i32, i32, i8, i64, i64, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [48 x i8] c"\014Reducing visibility of %ldKiB chip to %ldKiB\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\014gen_probe: No supported Vendor Command Set found\0A\00", align 1
@__UNIQUE_ID_file168 = internal constant [43 x i8] c"gen_probe.file=drivers/mtd/chips/gen_probe\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license169 = internal constant [22 x i8] c"gen_probe.license=GPL\00", section ".modinfo", align 1, !dbg !111
@__UNIQUE_ID_author170 = internal constant [55 x i8] c"gen_probe.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1, !dbg !117
@__UNIQUE_ID_description171 = internal constant [64 x i8] c"gen_probe.description=Helper routines for flash chip probe code\00", section ".modinfo", align 1, !dbg !122
@.str.2 = private unnamed_addr constant [30 x i8] c"drivers/mtd/chips/gen_probe.c\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\014NOR chip too large to fit in mapping. Attempting to cope...\0A\00", align 1
@genprobe_ident_chips.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !127
@.str.4 = private unnamed_addr constant [11 x i8] c"&pchip->wq\00", align 1
@genprobe_ident_chips.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2469
@.str.6 = private unnamed_addr constant [14 x i8] c"&pchip->mutex\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\015Support for command set %04X not present\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_file168, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license169, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_author170, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_description171, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mtd_info* @mtd_do_chip_probe(%struct.map_info* %map, %struct.chip_probe* %cp) #0 !dbg !2479 {
entry:
  %retval = alloca %struct.mtd_info*, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %cp.addr = alloca %struct.chip_probe*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %cfi = alloca %struct.cfi_private*, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2482, metadata !DIExpression()), !dbg !2483
  store %struct.chip_probe* %cp, %struct.chip_probe** %cp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chip_probe** %cp.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi, metadata !2488, metadata !DIExpression()), !dbg !2489
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2490
  %1 = load %struct.chip_probe*, %struct.chip_probe** %cp.addr, align 8, !dbg !2491
  %call = call %struct.cfi_private* @genprobe_ident_chips(%struct.map_info* %0, %struct.chip_probe* %1) #8, !dbg !2492
  store %struct.cfi_private* %call, %struct.cfi_private** %cfi, align 8, !dbg !2493
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !2494
  %tobool = icmp ne %struct.cfi_private* %2, null, !dbg !2494
  br i1 %tobool, label %if.end, label %if.then, !dbg !2496

if.then:                                          ; preds = %entry
  store %struct.mtd_info* null, %struct.mtd_info** %retval, align 8, !dbg !2497
  br label %return, !dbg !2497

if.end:                                           ; preds = %entry
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !2498
  %4 = bitcast %struct.cfi_private* %3 to i8*, !dbg !2498
  %5 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2499
  %fldrv_priv = getelementptr inbounds %struct.map_info, %struct.map_info* %5, i32 0, i32 17, !dbg !2500
  store i8* %4, i8** %fldrv_priv, align 8, !dbg !2501
  %6 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2502
  %call1 = call %struct.mtd_info* @check_cmd_set(%struct.map_info* %6, i32 1) #8, !dbg !2503
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !2504
  %7 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2505
  %tobool2 = icmp ne %struct.mtd_info* %7, null, !dbg !2505
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2507

if.then3:                                         ; preds = %if.end
  %8 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2508
  %call4 = call %struct.mtd_info* @check_cmd_set(%struct.map_info* %8, i32 0) #8, !dbg !2509
  store %struct.mtd_info* %call4, %struct.mtd_info** %mtd, align 8, !dbg !2510
  br label %if.end5, !dbg !2511

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2512
  %tobool6 = icmp ne %struct.mtd_info* %9, null, !dbg !2512
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !2514

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2515
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 2, !dbg !2518
  %11 = load i64, i64* %size, align 8, !dbg !2518
  %12 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2519
  %size8 = getelementptr inbounds %struct.map_info, %struct.map_info* %12, i32 0, i32 1, !dbg !2520
  %13 = load i64, i64* %size8, align 8, !dbg !2520
  %cmp = icmp ugt i64 %11, %13, !dbg !2521
  br i1 %cmp, label %if.then9, label %if.end16, !dbg !2522

if.then9:                                         ; preds = %if.then7
  %14 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2523
  %size10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 2, !dbg !2525
  %15 = load i64, i64* %size10, align 8, !dbg !2525
  %shr = lshr i64 %15, 10, !dbg !2526
  %16 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2527
  %size11 = getelementptr inbounds %struct.map_info, %struct.map_info* %16, i32 0, i32 1, !dbg !2528
  %17 = load i64, i64* %size11, align 8, !dbg !2528
  %shr12 = lshr i64 %17, 10, !dbg !2529
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %shr, i64 %shr12) #9, !dbg !2530
  %18 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2531
  %size14 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 1, !dbg !2532
  %19 = load i64, i64* %size14, align 8, !dbg !2532
  %20 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2533
  %size15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 2, !dbg !2534
  store i64 %19, i64* %size15, align 8, !dbg !2535
  br label %if.end16, !dbg !2536

if.end16:                                         ; preds = %if.then9, %if.then7
  %21 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2537
  store %struct.mtd_info* %21, %struct.mtd_info** %retval, align 8, !dbg !2538
  br label %return, !dbg !2538

if.end17:                                         ; preds = %if.end5
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2539
  %22 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !2540
  %cfiq = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 8, !dbg !2541
  %23 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq, align 8, !dbg !2541
  %24 = bitcast %struct.cfi_ident* %23 to i8*, !dbg !2540
  call void @kfree(i8* %24) #8, !dbg !2542
  %25 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !2543
  %26 = bitcast %struct.cfi_private* %25 to i8*, !dbg !2543
  call void @kfree(i8* %26) #8, !dbg !2544
  %27 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2545
  %fldrv_priv19 = getelementptr inbounds %struct.map_info, %struct.map_info* %27, i32 0, i32 17, !dbg !2546
  store i8* null, i8** %fldrv_priv19, align 8, !dbg !2547
  store %struct.mtd_info* null, %struct.mtd_info** %retval, align 8, !dbg !2548
  br label %return, !dbg !2548

return:                                           ; preds = %if.end17, %if.end16, %if.then
  %28 = load %struct.mtd_info*, %struct.mtd_info** %retval, align 8, !dbg !2549
  ret %struct.mtd_info* %28, !dbg !2549
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cfi_private* @genprobe_ident_chips(%struct.map_info* %map, %struct.chip_probe* %cp) #0 !dbg !129 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2550, metadata !DIExpression()), !dbg !2554
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2562, metadata !DIExpression()), !dbg !2563
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2564, metadata !DIExpression()), !dbg !2565
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2566, metadata !DIExpression()), !dbg !2567
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2568, metadata !DIExpression()), !dbg !2572
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2574, metadata !DIExpression()), !dbg !2578
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2580, metadata !DIExpression()), !dbg !2584
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2589, metadata !DIExpression()), !dbg !2590
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2591, metadata !DIExpression()), !dbg !2592
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2593, metadata !DIExpression()), !dbg !2594
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2595, metadata !DIExpression()), !dbg !2596
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2597, metadata !DIExpression()), !dbg !2598
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2599, metadata !DIExpression()), !dbg !2600
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2601, metadata !DIExpression()), !dbg !2602
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2603, metadata !DIExpression()), !dbg !2604
  %retval = alloca %struct.cfi_private*, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %cp.addr = alloca %struct.chip_probe*, align 8
  %cfi = alloca %struct.cfi_private, align 8
  %retcfi = alloca %struct.cfi_private*, align 8
  %chip_map = alloca i64*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mapsize = alloca i32, align 4
  %max_chips = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pchip = alloca %struct.flchip*, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2605, metadata !DIExpression()), !dbg !2606
  store %struct.chip_probe* %cp, %struct.chip_probe** %cp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chip_probe** %cp.addr, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.declare(metadata %struct.cfi_private* %cfi, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %retcfi, metadata !2611, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.declare(metadata i64** %chip_map, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.declare(metadata i32* %mapsize, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata i32* %max_chips, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = bitcast %struct.cfi_private* %cfi to i8*, !dbg !2623
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 96, i1 false), !dbg !2623
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2624
  %2 = load %struct.chip_probe*, %struct.chip_probe** %cp.addr, align 8, !dbg !2626
  %call = call i32 @genprobe_new_chip(%struct.map_info* %1, %struct.chip_probe* %2, %struct.cfi_private* %cfi) #8, !dbg !2627
  %tobool = icmp ne i32 %call, 0, !dbg !2627
  br i1 %tobool, label %if.end, label %if.then, !dbg !2628

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !2629
  %3 = load i32, i32* %tmp, align 4, !dbg !2633
  store %struct.cfi_private* null, %struct.cfi_private** %retval, align 8, !dbg !2634
  br label %return, !dbg !2634

if.end:                                           ; preds = %entry
  %cfiq = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 8, !dbg !2635
  %4 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq, align 8, !dbg !2635
  %DevSize = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %4, i32 0, i32 17, !dbg !2636
  %5 = load i8, i8* %DevSize, align 1, !dbg !2636
  %conv = zext i8 %5 to i64, !dbg !2637
  %chipshift = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 13, !dbg !2638
  store i64 %conv, i64* %chipshift, align 8, !dbg !2639
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 2, !dbg !2640
  %6 = load i32, i32* %interleave, align 8, !dbg !2640
  %cmp = icmp eq i32 %6, 1, !dbg !2640
  br i1 %cmp, label %if.then2, label %if.else, !dbg !2642

if.then2:                                         ; preds = %if.end
  br label %if.end16, !dbg !2643

if.else:                                          ; preds = %if.end
  %interleave3 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 2, !dbg !2645
  %7 = load i32, i32* %interleave3, align 8, !dbg !2645
  %cmp4 = icmp eq i32 %7, 2, !dbg !2645
  br i1 %cmp4, label %if.then6, label %if.else8, !dbg !2647

if.then6:                                         ; preds = %if.else
  %chipshift7 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 13, !dbg !2648
  %8 = load i64, i64* %chipshift7, align 8, !dbg !2650
  %inc = add i64 %8, 1, !dbg !2650
  store i64 %inc, i64* %chipshift7, align 8, !dbg !2650
  br label %if.end15, !dbg !2651

if.else8:                                         ; preds = %if.else
  br label %do.body, !dbg !2652

do.body:                                          ; preds = %if.else8
  br label %do.body9, !dbg !2656

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2658

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2656

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 99, i32 0, i64 12) #10, !dbg !2660, !srcloc !2662
  br label %do.end11, !dbg !2660

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !2656

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 167) #10, !dbg !2663, !srcloc !2666
  unreachable, !dbg !2667

do.end13:                                         ; No predecessors!
  br label %do.end14, !dbg !2656

do.end14:                                         ; preds = %do.end13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.then6
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then2
  %numchips = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 11, !dbg !2668
  store i32 1, i32* %numchips, align 8, !dbg !2669
  %9 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2670
  %size = getelementptr inbounds %struct.map_info, %struct.map_info* %9, i32 0, i32 1, !dbg !2671
  %10 = load i64, i64* %size, align 8, !dbg !2671
  %chipshift17 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 13, !dbg !2672
  %11 = load i64, i64* %chipshift17, align 8, !dbg !2672
  %shr = lshr i64 %10, %11, !dbg !2673
  %conv18 = trunc i64 %shr to i32, !dbg !2670
  store i32 %conv18, i32* %max_chips, align 4, !dbg !2674
  %12 = load i32, i32* %max_chips, align 4, !dbg !2675
  %tobool19 = icmp ne i32 %12, 0, !dbg !2675
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !2677

if.then20:                                        ; preds = %if.end16
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2678
  store i32 1, i32* %max_chips, align 4, !dbg !2680
  br label %if.end22, !dbg !2681

if.end22:                                         ; preds = %if.then20, %if.end16
  %13 = load i32, i32* %max_chips, align 4, !dbg !2682
  %add = add i32 %13, 64, !dbg !2682
  %sub = sub i32 %add, 1, !dbg !2682
  %div = sdiv i32 %sub, 64, !dbg !2682
  %conv23 = sext i32 %div to i64, !dbg !2682
  %mul = mul i64 8, %conv23, !dbg !2683
  %conv24 = trunc i64 %mul to i32, !dbg !2684
  store i32 %conv24, i32* %mapsize, align 4, !dbg !2685
  %14 = load i32, i32* %mapsize, align 4, !dbg !2686
  %conv25 = sext i32 %14 to i64, !dbg !2686
  %call26 = call i8* @kzalloc(i64 %conv25, i32 3264) #8, !dbg !2687
  %15 = bitcast i8* %call26 to i64*, !dbg !2687
  store i64* %15, i64** %chip_map, align 8, !dbg !2688
  %16 = load i64*, i64** %chip_map, align 8, !dbg !2689
  %tobool27 = icmp ne i64* %16, null, !dbg !2689
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !2691

if.then28:                                        ; preds = %if.end22
  %cfiq29 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 8, !dbg !2692
  %17 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq29, align 8, !dbg !2692
  %18 = bitcast %struct.cfi_ident* %17 to i8*, !dbg !2694
  call void @kfree(i8* %18) #8, !dbg !2695
  store %struct.cfi_private* null, %struct.cfi_private** %retval, align 8, !dbg !2696
  br label %return, !dbg !2696

if.end30:                                         ; preds = %if.end22
  %19 = load i64*, i64** %chip_map, align 8, !dbg !2697
  call void @set_bit(i64 0, i64* %19) #8, !dbg !2698
  store i32 1, i32* %i, align 4, !dbg !2699
  br label %for.cond, !dbg !2701

for.cond:                                         ; preds = %for.inc, %if.end30
  %20 = load i32, i32* %i, align 4, !dbg !2702
  %21 = load i32, i32* %max_chips, align 4, !dbg !2704
  %cmp31 = icmp slt i32 %20, %21, !dbg !2705
  br i1 %cmp31, label %for.body, label %for.end, !dbg !2706

for.body:                                         ; preds = %for.cond
  %22 = load %struct.chip_probe*, %struct.chip_probe** %cp.addr, align 8, !dbg !2707
  %probe_chip = getelementptr inbounds %struct.chip_probe, %struct.chip_probe* %22, i32 0, i32 1, !dbg !2709
  %23 = load i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)*, i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)** %probe_chip, align 8, !dbg !2709
  %24 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2710
  %25 = load i32, i32* %i, align 4, !dbg !2711
  %chipshift33 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 13, !dbg !2712
  %26 = load i64, i64* %chipshift33, align 8, !dbg !2712
  %sh_prom = trunc i64 %26 to i32, !dbg !2713
  %shl = shl i32 %25, %sh_prom, !dbg !2713
  %27 = load i64*, i64** %chip_map, align 8, !dbg !2714
  %call34 = call i32 %23(%struct.map_info* %24, i32 %shl, i64* %27, %struct.cfi_private* %cfi) #8, !dbg !2707
  br label %for.inc, !dbg !2715

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !2716
  %inc35 = add i32 %28, 1, !dbg !2716
  store i32 %inc35, i32* %i, align 4, !dbg !2716
  br label %for.cond, !dbg !2717, !llvm.loop !2718

for.end:                                          ; preds = %for.cond
  %numchips36 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 11, !dbg !2720
  %29 = load i32, i32* %numchips36, align 8, !dbg !2720
  %conv37 = sext i32 %29 to i64, !dbg !2720
  %call38 = call i64 @__ab_c_size(i64 %conv37, i64 112, i64 96) #8, !dbg !2720
  store i64 %call38, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %30 = load i64, i64* %size.addr.i, align 8, !dbg !2721
  %31 = call i1 @llvm.is.constant.i64(i64 %30) #10, !dbg !2722
  br i1 %31, label %if.then.i, label %if.end9.i, !dbg !2723

if.then.i:                                        ; preds = %for.end
  %32 = load i64, i64* %size.addr.i, align 8, !dbg !2724
  %cmp.i = icmp ugt i64 %32, 8192, !dbg !2725
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2726

if.then1.i:                                       ; preds = %if.then.i
  %33 = load i64, i64* %size.addr.i, align 8, !dbg !2727
  %34 = load i32, i32* %flags.addr.i, align 4, !dbg !2728
  store i64 %33, i64* %size.addr.i.i, align 8
  store i32 %34, i32* %flags.addr.i.i, align 4
  %35 = load i64, i64* %size.addr.i.i, align 8, !dbg !2729
  %call.i.i = call i32 @get_order(i64 %35) #11, !dbg !2730
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2598
  %36 = load i64, i64* %size.addr.i.i, align 8, !dbg !2731
  %37 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2732
  %38 = load i32, i32* %order.i.i, align 4, !dbg !2733
  store i64 %36, i64* %size.addr.i.i.i, align 8
  store i32 %37, i32* %flags.addr.i.i.i, align 4
  store i32 %38, i32* %order.addr.i.i.i, align 4
  %39 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2734
  %40 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2735
  %41 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2736
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %39, i32 %40, i32 %41) #12, !dbg !2737
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2737
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2737
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2737
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2737
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2738
  br label %kmalloc.exit, !dbg !2738

if.end.i:                                         ; preds = %if.then.i
  %42 = load i64, i64* %size.addr.i, align 8, !dbg !2739
  store i64 %42, i64* %size.addr.i11.i, align 8
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2740
  %tobool.i.i = icmp ne i64 %43, 0, !dbg !2740
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2742

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2743
  br label %kmalloc_index.exit.i, !dbg !2743

if.end.i.i:                                       ; preds = %if.end.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2744
  %cmp.i.i = icmp ule i64 %44, 8, !dbg !2746
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2747

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2748
  br label %kmalloc_index.exit.i, !dbg !2748

if.end2.i.i:                                      ; preds = %if.end.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2749
  %cmp3.i.i = icmp ugt i64 %45, 64, !dbg !2751
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2752

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2753
  %cmp4.i.i = icmp ule i64 %46, 96, !dbg !2754
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2755

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2756
  br label %kmalloc_index.exit.i, !dbg !2756

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2757
  %cmp7.i.i = icmp ugt i64 %47, 128, !dbg !2759
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2760

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2761
  %cmp9.i.i = icmp ule i64 %48, 192, !dbg !2762
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2763

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2764
  br label %kmalloc_index.exit.i, !dbg !2764

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2765
  %cmp12.i.i = icmp ule i64 %49, 8, !dbg !2767
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2768

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2769
  br label %kmalloc_index.exit.i, !dbg !2769

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2770
  %cmp15.i.i = icmp ule i64 %50, 16, !dbg !2772
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2773

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2774
  br label %kmalloc_index.exit.i, !dbg !2774

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2775
  %cmp18.i.i = icmp ule i64 %51, 32, !dbg !2777
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2778

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2779
  br label %kmalloc_index.exit.i, !dbg !2779

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2780
  %cmp21.i.i = icmp ule i64 %52, 64, !dbg !2782
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2783

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2784
  br label %kmalloc_index.exit.i, !dbg !2784

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2785
  %cmp24.i.i = icmp ule i64 %53, 128, !dbg !2787
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2788

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2789
  br label %kmalloc_index.exit.i, !dbg !2789

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2790
  %cmp27.i.i = icmp ule i64 %54, 256, !dbg !2792
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2793

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2794
  br label %kmalloc_index.exit.i, !dbg !2794

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2795
  %cmp30.i.i = icmp ule i64 %55, 512, !dbg !2797
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2798

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2799
  br label %kmalloc_index.exit.i, !dbg !2799

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2800
  %cmp33.i.i = icmp ule i64 %56, 1024, !dbg !2802
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2803

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2804
  br label %kmalloc_index.exit.i, !dbg !2804

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2805
  %cmp36.i.i = icmp ule i64 %57, 2048, !dbg !2807
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2808

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2809
  br label %kmalloc_index.exit.i, !dbg !2809

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2810
  %cmp39.i.i = icmp ule i64 %58, 4096, !dbg !2812
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2813

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2814
  br label %kmalloc_index.exit.i, !dbg !2814

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2815
  %cmp42.i.i = icmp ule i64 %59, 8192, !dbg !2817
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2818

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2819
  br label %kmalloc_index.exit.i, !dbg !2819

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2820
  %cmp45.i.i = icmp ule i64 %60, 16384, !dbg !2822
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2823

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2824
  br label %kmalloc_index.exit.i, !dbg !2824

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2825
  %cmp48.i.i = icmp ule i64 %61, 32768, !dbg !2827
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2828

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2829
  br label %kmalloc_index.exit.i, !dbg !2829

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2830
  %cmp51.i.i = icmp ule i64 %62, 65536, !dbg !2832
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2833

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2834
  br label %kmalloc_index.exit.i, !dbg !2834

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2835
  %cmp54.i.i = icmp ule i64 %63, 131072, !dbg !2837
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2838

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2839
  br label %kmalloc_index.exit.i, !dbg !2839

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2840
  %cmp57.i.i = icmp ule i64 %64, 262144, !dbg !2842
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2843

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2844
  br label %kmalloc_index.exit.i, !dbg !2844

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2845
  %cmp60.i.i = icmp ule i64 %65, 524288, !dbg !2847
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2848

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2849
  br label %kmalloc_index.exit.i, !dbg !2849

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2850
  %cmp63.i.i = icmp ule i64 %66, 1048576, !dbg !2852
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2853

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2854
  br label %kmalloc_index.exit.i, !dbg !2854

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2855
  %cmp66.i.i = icmp ule i64 %67, 2097152, !dbg !2857
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2858

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2859
  br label %kmalloc_index.exit.i, !dbg !2859

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2860
  %cmp69.i.i = icmp ule i64 %68, 4194304, !dbg !2862
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2863

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2864
  br label %kmalloc_index.exit.i, !dbg !2864

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2865
  %cmp72.i.i = icmp ule i64 %69, 8388608, !dbg !2867
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2868

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2869
  br label %kmalloc_index.exit.i, !dbg !2869

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2870
  %cmp75.i.i = icmp ule i64 %70, 16777216, !dbg !2872
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2873

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2874
  br label %kmalloc_index.exit.i, !dbg !2874

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2875
  %cmp78.i.i = icmp ule i64 %71, 33554432, !dbg !2877
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2878

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2879
  br label %kmalloc_index.exit.i, !dbg !2879

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %72 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2880
  %cmp81.i.i = icmp ule i64 %72, 67108864, !dbg !2882
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2883

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2884
  br label %kmalloc_index.exit.i, !dbg !2884

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2885, !srcloc !2888
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !2889, !srcloc !2892
  unreachable, !dbg !2893

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %73 = load i32, i32* %retval.i.i, align 4, !dbg !2894
  store i32 %73, i32* %index.i, align 4, !dbg !2895
  %74 = load i32, i32* %index.i, align 4, !dbg !2896
  %tobool.i = icmp ne i32 %74, 0, !dbg !2896
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2898

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2899
  br label %kmalloc.exit, !dbg !2899

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %75 = load i32, i32* %flags.addr.i, align 4, !dbg !2900
  store i32 %75, i32* %flags.addr.i13.i, align 4
  %76 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2901
  %and.i.i = and i32 %76, 17, !dbg !2901
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2901
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2901
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2901
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2901
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2903

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2904
  br label %kmalloc_type.exit.i, !dbg !2904

if.end.i16.i:                                     ; preds = %if.end4.i
  %77 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2905
  %and2.i.i = and i32 %77, 1, !dbg !2906
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2905
  %78 = zext i1 %tobool3.i.i to i64, !dbg !2905
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2905
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2907
  br label %kmalloc_type.exit.i, !dbg !2907

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %79 = load i32, i32* %retval.i12.i, align 4, !dbg !2908
  %idxprom.i = zext i32 %79 to i64, !dbg !2909
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2909
  %80 = load i32, i32* %index.i, align 4, !dbg !2910
  %idxprom6.i = zext i32 %80 to i64, !dbg !2909
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2909
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2909
  %82 = load i32, i32* %flags.addr.i, align 4, !dbg !2911
  %83 = load i64, i64* %size.addr.i, align 8, !dbg !2912
  store %struct.kmem_cache* %81, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %82, i32* %flags.addr.i17.i, align 4
  store i64 %83, i64* %size.addr.i18.i, align 8
  %84 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2913
  %85 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2914
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %84, i32 %85) #12, !dbg !2915
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2915
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2915
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2915
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !2915
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2567
  %86 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2916
  %87 = load i8*, i8** %ret.i.i, align 8, !dbg !2917
  %88 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2918
  %89 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2919
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %86, i8* %87, i64 %88, i32 %89) #12, !dbg !2920
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2921
  %90 = load i8*, i8** %ret.i.i, align 8, !dbg !2922
  store i8* %90, i8** %retval.i, align 8, !dbg !2923
  br label %kmalloc.exit, !dbg !2923

if.end9.i:                                        ; preds = %for.end
  %91 = load i64, i64* %size.addr.i, align 8, !dbg !2924
  %92 = load i32, i32* %flags.addr.i, align 4, !dbg !2925
  %call10.i = call noalias i8* @__kmalloc(i64 %91, i32 %92) #12, !dbg !2926
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2926
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2926
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2926
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !2926
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2927
  br label %kmalloc.exit, !dbg !2927

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %93 = load i8*, i8** %retval.i, align 8, !dbg !2928
  %94 = bitcast i8* %93 to %struct.cfi_private*, !dbg !2929
  store %struct.cfi_private* %94, %struct.cfi_private** %retcfi, align 8, !dbg !2930
  %95 = load %struct.cfi_private*, %struct.cfi_private** %retcfi, align 8, !dbg !2931
  %tobool40 = icmp ne %struct.cfi_private* %95, null, !dbg !2931
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !2933

if.then41:                                        ; preds = %kmalloc.exit
  %cfiq42 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 8, !dbg !2934
  %96 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq42, align 8, !dbg !2934
  %97 = bitcast %struct.cfi_ident* %96 to i8*, !dbg !2936
  call void @kfree(i8* %97) #8, !dbg !2937
  %98 = load i64*, i64** %chip_map, align 8, !dbg !2938
  %99 = bitcast i64* %98 to i8*, !dbg !2938
  call void @kfree(i8* %99) #8, !dbg !2939
  store %struct.cfi_private* null, %struct.cfi_private** %retval, align 8, !dbg !2940
  br label %return, !dbg !2940

if.end43:                                         ; preds = %kmalloc.exit
  %100 = load %struct.cfi_private*, %struct.cfi_private** %retcfi, align 8, !dbg !2941
  %101 = bitcast %struct.cfi_private* %100 to i8*, !dbg !2942
  %102 = bitcast %struct.cfi_private* %cfi to i8*, !dbg !2942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 96, i1 false), !dbg !2942
  %103 = load %struct.cfi_private*, %struct.cfi_private** %retcfi, align 8, !dbg !2943
  %chips = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %103, i32 0, i32 15, !dbg !2944
  %arrayidx = getelementptr [0 x %struct.flchip], [0 x %struct.flchip]* %chips, i64 0, i64 0, !dbg !2943
  %104 = bitcast %struct.flchip* %arrayidx to i8*, !dbg !2945
  %numchips44 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 11, !dbg !2946
  %105 = load i32, i32* %numchips44, align 8, !dbg !2946
  %conv45 = sext i32 %105 to i64, !dbg !2947
  %mul46 = mul i64 112, %conv45, !dbg !2948
  call void @llvm.memset.p0i8.i64(i8* align 8 %104, i8 0, i64 %mul46, i1 false), !dbg !2945
  store i32 0, i32* %i, align 4, !dbg !2949
  store i32 0, i32* %j, align 4, !dbg !2951
  br label %for.cond47, !dbg !2952

for.cond47:                                       ; preds = %for.inc69, %if.end43
  %106 = load i32, i32* %j, align 4, !dbg !2953
  %numchips48 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 11, !dbg !2955
  %107 = load i32, i32* %numchips48, align 8, !dbg !2955
  %cmp49 = icmp slt i32 %106, %107, !dbg !2956
  br i1 %cmp49, label %land.rhs, label %land.end, !dbg !2957

land.rhs:                                         ; preds = %for.cond47
  %108 = load i32, i32* %i, align 4, !dbg !2958
  %109 = load i32, i32* %max_chips, align 4, !dbg !2959
  %cmp51 = icmp slt i32 %108, %109, !dbg !2960
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond47
  %110 = phi i1 [ false, %for.cond47 ], [ %cmp51, %land.rhs ], !dbg !2961
  br i1 %110, label %for.body53, label %for.end71, !dbg !2962

for.body53:                                       ; preds = %land.end
  %111 = load i32, i32* %i, align 4, !dbg !2963
  %conv54 = sext i32 %111 to i64, !dbg !2963
  %112 = load i64*, i64** %chip_map, align 8, !dbg !2966
  %call55 = call zeroext i1 @test_bit(i64 %conv54, i64* %112) #8, !dbg !2967
  br i1 %call55, label %if.then56, label %if.end68, !dbg !2968

if.then56:                                        ; preds = %for.body53
  call void @llvm.dbg.declare(metadata %struct.flchip** %pchip, metadata !2969, metadata !DIExpression()), !dbg !2972
  %113 = load %struct.cfi_private*, %struct.cfi_private** %retcfi, align 8, !dbg !2973
  %chips57 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %113, i32 0, i32 15, !dbg !2974
  %114 = load i32, i32* %j, align 4, !dbg !2975
  %inc58 = add i32 %114, 1, !dbg !2975
  store i32 %inc58, i32* %j, align 4, !dbg !2975
  %idxprom = sext i32 %114 to i64, !dbg !2973
  %arrayidx59 = getelementptr [0 x %struct.flchip], [0 x %struct.flchip]* %chips57, i64 0, i64 %idxprom, !dbg !2973
  store %struct.flchip* %arrayidx59, %struct.flchip** %pchip, align 8, !dbg !2972
  %115 = load i32, i32* %i, align 4, !dbg !2976
  %chipshift60 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %cfi, i32 0, i32 13, !dbg !2977
  %116 = load i64, i64* %chipshift60, align 8, !dbg !2977
  %sh_prom61 = trunc i64 %116 to i32, !dbg !2978
  %shl62 = shl i32 %115, %sh_prom61, !dbg !2978
  %conv63 = sext i32 %shl62 to i64, !dbg !2979
  %117 = load %struct.flchip*, %struct.flchip** %pchip, align 8, !dbg !2980
  %start = getelementptr inbounds %struct.flchip, %struct.flchip* %117, i32 0, i32 0, !dbg !2981
  store i64 %conv63, i64* %start, align 8, !dbg !2982
  %118 = load %struct.flchip*, %struct.flchip** %pchip, align 8, !dbg !2983
  %state = getelementptr inbounds %struct.flchip, %struct.flchip* %118, i32 0, i32 2, !dbg !2984
  store i32 0, i32* %state, align 4, !dbg !2985
  br label %do.body64, !dbg !2986

do.body64:                                        ; preds = %if.then56
  %119 = load %struct.flchip*, %struct.flchip** %pchip, align 8, !dbg !2987
  %wq = getelementptr inbounds %struct.flchip, %struct.flchip* %119, i32 0, i32 8, !dbg !2987
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wq, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @genprobe_ident_chips.__key) #8, !dbg !2987
  br label %do.end65, !dbg !2987

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !2989

do.body66:                                        ; preds = %do.end65
  %120 = load %struct.flchip*, %struct.flchip** %pchip, align 8, !dbg !2990
  %mutex = getelementptr inbounds %struct.flchip, %struct.flchip* %120, i32 0, i32 7, !dbg !2990
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @genprobe_ident_chips.__key.5) #8, !dbg !2990
  br label %do.end67, !dbg !2990

do.end67:                                         ; preds = %do.body66
  br label %if.end68, !dbg !2992

if.end68:                                         ; preds = %do.end67, %for.body53
  br label %for.inc69, !dbg !2993

for.inc69:                                        ; preds = %if.end68
  %121 = load i32, i32* %i, align 4, !dbg !2994
  %inc70 = add i32 %121, 1, !dbg !2994
  store i32 %inc70, i32* %i, align 4, !dbg !2994
  br label %for.cond47, !dbg !2995, !llvm.loop !2996

for.end71:                                        ; preds = %land.end
  %122 = load i64*, i64** %chip_map, align 8, !dbg !2998
  %123 = bitcast i64* %122 to i8*, !dbg !2998
  call void @kfree(i8* %123) #8, !dbg !2999
  %124 = load %struct.cfi_private*, %struct.cfi_private** %retcfi, align 8, !dbg !3000
  store %struct.cfi_private* %124, %struct.cfi_private** %retval, align 8, !dbg !3001
  br label %return, !dbg !3001

return:                                           ; preds = %for.end71, %if.then41, %if.then28, %if.then
  %125 = load %struct.cfi_private*, %struct.cfi_private** %retval, align 8, !dbg !3002
  ret %struct.cfi_private* %125, !dbg !3002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @check_cmd_set(%struct.map_info* %map, i32 %primary) #0 !dbg !3003 {
entry:
  %retval = alloca %struct.mtd_info*, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %primary.addr = alloca i32, align 4
  %cfi = alloca %struct.cfi_private*, align 8
  %type = alloca i16, align 2
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  store i32 %primary, i32* %primary.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %primary.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi, metadata !3010, metadata !DIExpression()), !dbg !3011
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3012
  %fldrv_priv = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 17, !dbg !3013
  %1 = load i8*, i8** %fldrv_priv, align 8, !dbg !3013
  %2 = bitcast i8* %1 to %struct.cfi_private*, !dbg !3012
  store %struct.cfi_private* %2, %struct.cfi_private** %cfi, align 8, !dbg !3011
  call void @llvm.dbg.declare(metadata i16* %type, metadata !3014, metadata !DIExpression()), !dbg !3015
  %3 = load i32, i32* %primary.addr, align 4, !dbg !3016
  %tobool = icmp ne i32 %3, 0, !dbg !3016
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3016

cond.true:                                        ; preds = %entry
  %4 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3017
  %cfiq = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %4, i32 0, i32 8, !dbg !3018
  %5 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq, align 8, !dbg !3018
  %P_ID = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %5, i32 0, i32 1, !dbg !3019
  %6 = load i16, i16* %P_ID, align 1, !dbg !3019
  %conv = zext i16 %6 to i32, !dbg !3017
  br label %cond.end, !dbg !3016

cond.false:                                       ; preds = %entry
  %7 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3020
  %cfiq1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %7, i32 0, i32 8, !dbg !3021
  %8 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq1, align 8, !dbg !3021
  %A_ID = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %8, i32 0, i32 3, !dbg !3022
  %9 = load i16, i16* %A_ID, align 1, !dbg !3022
  %conv2 = zext i16 %9 to i32, !dbg !3020
  br label %cond.end, !dbg !3016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3016
  %conv3 = trunc i32 %cond to i16, !dbg !3016
  store i16 %conv3, i16* %type, align 2, !dbg !3015
  %10 = load i16, i16* %type, align 2, !dbg !3023
  %conv4 = zext i16 %10 to i32, !dbg !3023
  %cmp = icmp eq i32 %conv4, 0, !dbg !3025
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3026

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load i16, i16* %type, align 2, !dbg !3027
  %conv6 = zext i16 %11 to i32, !dbg !3027
  %cmp7 = icmp eq i32 %conv6, 65535, !dbg !3028
  br i1 %cmp7, label %if.then, label %if.end, !dbg !3029

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store %struct.mtd_info* null, %struct.mtd_info** %retval, align 8, !dbg !3030
  br label %return, !dbg !3030

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i16, i16* %type, align 2, !dbg !3031
  %conv9 = zext i16 %12 to i32, !dbg !3031
  switch i32 %conv9, label %sw.default [
  ], !dbg !3032

sw.default:                                       ; preds = %if.end
  %13 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3033
  %14 = load i32, i32* %primary.addr, align 4, !dbg !3035
  %call = call %struct.mtd_info* @cfi_cmdset_unknown(%struct.map_info* %13, i32 %14) #8, !dbg !3036
  store %struct.mtd_info* %call, %struct.mtd_info** %retval, align 8, !dbg !3037
  br label %return, !dbg !3037

return:                                           ; preds = %sw.default, %if.then
  %15 = load %struct.mtd_info*, %struct.mtd_info** %retval, align 8, !dbg !3038
  ret %struct.mtd_info* %15, !dbg !3038
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @genprobe_new_chip(%struct.map_info* %map, %struct.chip_probe* %cp, %struct.cfi_private* %cfi) #0 !dbg !3039 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cp.addr = alloca %struct.chip_probe*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %min_chips = alloca i32, align 4
  %max_chips = alloca i32, align 4
  %nr_chips = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  store %struct.chip_probe* %cp, %struct.chip_probe** %cp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chip_probe** %cp.addr, metadata !3044, metadata !DIExpression()), !dbg !3045
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.declare(metadata i32* %min_chips, metadata !3048, metadata !DIExpression()), !dbg !3049
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3050
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 6, !dbg !3050
  %1 = load i32, i32* %bankwidth, align 4, !dbg !3050
  %div = sdiv i32 %1, 4, !dbg !3051
  %tobool = icmp ne i32 %div, 0, !dbg !3051
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3050

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3050

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3050

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 1, %cond.false ], !dbg !3050
  store i32 %cond, i32* %min_chips, align 4, !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %max_chips, metadata !3052, metadata !DIExpression()), !dbg !3053
  %2 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3054
  %bankwidth1 = getelementptr inbounds %struct.map_info, %struct.map_info* %2, i32 0, i32 6, !dbg !3054
  %3 = load i32, i32* %bankwidth1, align 4, !dbg !3054
  store i32 %3, i32* %max_chips, align 4, !dbg !3053
  call void @llvm.dbg.declare(metadata i32* %nr_chips, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.declare(metadata i32* %type, metadata !3057, metadata !DIExpression()), !dbg !3058
  %4 = load i32, i32* %max_chips, align 4, !dbg !3059
  store i32 %4, i32* %nr_chips, align 4, !dbg !3061
  br label %for.cond, !dbg !3062

for.cond:                                         ; preds = %for.inc12, %cond.end
  %5 = load i32, i32* %nr_chips, align 4, !dbg !3063
  %6 = load i32, i32* %min_chips, align 4, !dbg !3065
  %cmp = icmp sge i32 %5, %6, !dbg !3066
  br i1 %cmp, label %for.body, label %for.end13, !dbg !3067

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %nr_chips, align 4, !dbg !3068
  %call = call i32 @cfi_interleave_supported(i32 %7) #8, !dbg !3071
  %tobool2 = icmp ne i32 %call, 0, !dbg !3071
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3072

if.then:                                          ; preds = %for.body
  br label %for.inc12, !dbg !3073

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %nr_chips, align 4, !dbg !3074
  %9 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3075
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %9, i32 0, i32 2, !dbg !3076
  store i32 %8, i32* %interleave, align 8, !dbg !3077
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3078
  %bankwidth3 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 6, !dbg !3078
  %11 = load i32, i32* %bankwidth3, align 4, !dbg !3078
  %12 = load i32, i32* %nr_chips, align 4, !dbg !3079
  %div4 = sdiv i32 %11, %12, !dbg !3080
  store i32 %div4, i32* %type, align 4, !dbg !3081
  br label %for.cond5, !dbg !3082

for.cond5:                                        ; preds = %for.inc, %if.end
  %13 = load i32, i32* %type, align 4, !dbg !3083
  %cmp6 = icmp sle i32 %13, 4, !dbg !3086
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !3087

for.body7:                                        ; preds = %for.cond5
  %14 = load i32, i32* %type, align 4, !dbg !3088
  %15 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3090
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 3, !dbg !3091
  store i32 %14, i32* %device_type, align 4, !dbg !3092
  %16 = load %struct.chip_probe*, %struct.chip_probe** %cp.addr, align 8, !dbg !3093
  %probe_chip = getelementptr inbounds %struct.chip_probe, %struct.chip_probe* %16, i32 0, i32 1, !dbg !3095
  %17 = load i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)*, i32 (%struct.map_info*, i32, i64*, %struct.cfi_private*)** %probe_chip, align 8, !dbg !3095
  %18 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3096
  %19 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3097
  %call8 = call i32 %17(%struct.map_info* %18, i32 0, i64* null, %struct.cfi_private* %19) #8, !dbg !3093
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3093
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3098

if.then10:                                        ; preds = %for.body7
  store i32 1, i32* %retval, align 4, !dbg !3099
  br label %return, !dbg !3099

if.end11:                                         ; preds = %for.body7
  br label %for.inc, !dbg !3100

for.inc:                                          ; preds = %if.end11
  %20 = load i32, i32* %type, align 4, !dbg !3101
  %shl = shl i32 %20, 1, !dbg !3101
  store i32 %shl, i32* %type, align 4, !dbg !3101
  br label %for.cond5, !dbg !3102, !llvm.loop !3103

for.end:                                          ; preds = %for.cond5
  br label %for.inc12, !dbg !3105

for.inc12:                                        ; preds = %for.end, %if.then
  %21 = load i32, i32* %nr_chips, align 4, !dbg !3106
  %shr = ashr i32 %21, 1, !dbg !3106
  store i32 %shr, i32* %nr_chips, align 4, !dbg !3106
  br label %for.cond, !dbg !3107, !llvm.loop !3108

for.end13:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3110
  br label %return, !dbg !3110

return:                                           ; preds = %for.end13, %if.then10
  %22 = load i32, i32* %retval, align 4, !dbg !3111
  ret i32 %22, !dbg !3111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3112 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2550, metadata !DIExpression()), !dbg !3113
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2562, metadata !DIExpression()), !dbg !3116
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2564, metadata !DIExpression()), !dbg !3117
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2566, metadata !DIExpression()), !dbg !3118
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2568, metadata !DIExpression()), !dbg !3119
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2574, metadata !DIExpression()), !dbg !3121
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2580, metadata !DIExpression()), !dbg !3123
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2589, metadata !DIExpression()), !dbg !3126
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2591, metadata !DIExpression()), !dbg !3127
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2593, metadata !DIExpression()), !dbg !3128
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2595, metadata !DIExpression()), !dbg !3129
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2597, metadata !DIExpression()), !dbg !3130
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2599, metadata !DIExpression()), !dbg !3131
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2601, metadata !DIExpression()), !dbg !3132
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2603, metadata !DIExpression()), !dbg !3133
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3136, metadata !DIExpression()), !dbg !3137
  %0 = load i64, i64* %size.addr, align 8, !dbg !3138
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3139
  %or = or i32 %1, 256, !dbg !3140
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3141
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !3142
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3143

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3144
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3145
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3146

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3147
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3148
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3149
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3150
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3130
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3151
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3152
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3153
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3154
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3155
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3156
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3157
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3157
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3157
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3157
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3157
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3158
  br label %kmalloc.exit, !dbg !3158

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3159
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3160
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3160
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3161

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3162
  br label %kmalloc_index.exit.i, !dbg !3162

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3163
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3164
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3165

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3166
  br label %kmalloc_index.exit.i, !dbg !3166

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3167
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3168
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3169

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3170
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3171
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3172

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3173
  br label %kmalloc_index.exit.i, !dbg !3173

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3174
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3175
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3176

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3177
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3178
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3179

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3180
  br label %kmalloc_index.exit.i, !dbg !3180

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3181
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3182
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3183

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3184
  br label %kmalloc_index.exit.i, !dbg !3184

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3185
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3186
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3187

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3188
  br label %kmalloc_index.exit.i, !dbg !3188

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3189
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3190
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3191

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3192
  br label %kmalloc_index.exit.i, !dbg !3192

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3193
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3194
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3195

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3196
  br label %kmalloc_index.exit.i, !dbg !3196

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3197
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3198
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3199

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3200
  br label %kmalloc_index.exit.i, !dbg !3200

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3201
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3202
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3203

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3204
  br label %kmalloc_index.exit.i, !dbg !3204

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3205
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3206
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3207

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3210
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3211

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3212
  br label %kmalloc_index.exit.i, !dbg !3212

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3213
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3214
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3215

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3216
  br label %kmalloc_index.exit.i, !dbg !3216

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3217
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3218
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3219

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3220
  br label %kmalloc_index.exit.i, !dbg !3220

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3221
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3222
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3223

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3224
  br label %kmalloc_index.exit.i, !dbg !3224

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3225
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3226
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3227

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3228
  br label %kmalloc_index.exit.i, !dbg !3228

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3229
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3230
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3231

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3232
  br label %kmalloc_index.exit.i, !dbg !3232

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3233
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3234
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3235

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3236
  br label %kmalloc_index.exit.i, !dbg !3236

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3237
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3238
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3239

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3240
  br label %kmalloc_index.exit.i, !dbg !3240

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3241
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3242
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3243

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3244
  br label %kmalloc_index.exit.i, !dbg !3244

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3245
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3246
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3247

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3248
  br label %kmalloc_index.exit.i, !dbg !3248

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3249
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3250
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3251

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3252
  br label %kmalloc_index.exit.i, !dbg !3252

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3253
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3254
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3255

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3256
  br label %kmalloc_index.exit.i, !dbg !3256

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3257
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3258
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3259

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3260
  br label %kmalloc_index.exit.i, !dbg !3260

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3261
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3262
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3263

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3264
  br label %kmalloc_index.exit.i, !dbg !3264

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3265
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3266
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3267

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3268
  br label %kmalloc_index.exit.i, !dbg !3268

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3269
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3270
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3271

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3272
  br label %kmalloc_index.exit.i, !dbg !3272

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3273
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3274
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3275

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3276
  br label %kmalloc_index.exit.i, !dbg !3276

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3277, !srcloc !2888
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !3278, !srcloc !2892
  unreachable, !dbg !3279

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3280
  store i32 %45, i32* %index.i, align 4, !dbg !3281
  %46 = load i32, i32* %index.i, align 4, !dbg !3282
  %tobool.i = icmp ne i32 %46, 0, !dbg !3282
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3283

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3284
  br label %kmalloc.exit, !dbg !3284

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3285
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3286
  %and.i.i = and i32 %48, 17, !dbg !3286
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3286
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3286
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3286
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3286
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3287

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3288
  br label %kmalloc_type.exit.i, !dbg !3288

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3289
  %and2.i.i = and i32 %49, 1, !dbg !3290
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3289
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3289
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3289
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3291
  br label %kmalloc_type.exit.i, !dbg !3291

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3292
  %idxprom.i = zext i32 %51 to i64, !dbg !3293
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3293
  %52 = load i32, i32* %index.i, align 4, !dbg !3294
  %idxprom6.i = zext i32 %52 to i64, !dbg !3293
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3293
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3293
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3295
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3296
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3297
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3298
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3299
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3299
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3299
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3299
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3299
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3118
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3300
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3301
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3302
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3303
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3304
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3305
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3306
  store i8* %62, i8** %retval.i, align 8, !dbg !3307
  br label %kmalloc.exit, !dbg !3307

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3308
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3309
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3310
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3310
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3310
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3310
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3310
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3311
  br label %kmalloc.exit, !dbg !3311

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3312
  ret i8* %65, !dbg !3313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !3314 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3320, metadata !DIExpression()), !dbg !3323
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3325, metadata !DIExpression()), !dbg !3326
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3327, metadata !DIExpression()), !dbg !3335
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3337, metadata !DIExpression()), !dbg !3338
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3341, metadata !DIExpression()), !dbg !3342
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3343
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3344
  %div = sdiv i64 %1, 64, !dbg !3344
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3345
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3343
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3346
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3347
  %conv.i = trunc i64 %4 to i32, !dbg !3347
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !3348
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3349
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3349
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !3349
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3350
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3351
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3352
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !3354
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3355

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3356
  %12 = bitcast i64* %11 to i8*, !dbg !3356
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3356
  %shr.i = ashr i64 %13, 3, !dbg !3356
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3356
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3358
  %and.i = and i64 %14, 7, !dbg !3358
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3358
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3358
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !3359, !srcloc !3360
  br label %arch_set_bit.exit, !dbg !3361

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3362
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3364
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !3365, !srcloc !3366
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #0 !dbg !3368 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !3374, metadata !DIExpression()), !dbg !3375
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3380, metadata !DIExpression()), !dbg !3383
  %0 = load i64, i64* %a.addr, align 8, !dbg !3383
  store i64 %0, i64* %__a, align 8, !dbg !3383
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3384, metadata !DIExpression()), !dbg !3383
  %1 = load i64, i64* %b.addr, align 8, !dbg !3383
  store i64 %1, i64* %__b, align 8, !dbg !3383
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3385, metadata !DIExpression()), !dbg !3383
  store i64* %bytes, i64** %__d, align 8, !dbg !3383
  %cmp = icmp eq i64* %__a, %__b, !dbg !3383
  %conv = zext i1 %cmp to i32, !dbg !3383
  %2 = load i64*, i64** %__d, align 8, !dbg !3383
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3383
  %conv2 = zext i1 %cmp1 to i32, !dbg !3383
  %3 = load i64, i64* %__a, align 8, !dbg !3383
  %4 = load i64, i64* %__b, align 8, !dbg !3383
  %5 = load i64*, i64** %__d, align 8, !dbg !3383
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3383
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3383
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3383
  store i64 %8, i64* %5, align 8, !dbg !3383
  %frombool = zext i1 %7 to i8, !dbg !3383
  store i8 %frombool, i8* %tmp, align 1, !dbg !3383
  %9 = load i8, i8* %tmp, align 1, !dbg !3383
  %tobool = trunc i8 %9 to i1, !dbg !3383
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !3386
  br i1 %call, label %if.then, label %if.end, !dbg !3387

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !3388
  br label %return, !dbg !3388

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !3389, metadata !DIExpression()), !dbg !3392
  %10 = load i64, i64* %bytes, align 8, !dbg !3392
  store i64 %10, i64* %__a3, align 8, !dbg !3392
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !3393, metadata !DIExpression()), !dbg !3392
  %11 = load i64, i64* %c.addr, align 8, !dbg !3392
  store i64 %11, i64* %__b4, align 8, !dbg !3392
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !3394, metadata !DIExpression()), !dbg !3392
  store i64* %bytes, i64** %__d5, align 8, !dbg !3392
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !3392
  %conv7 = zext i1 %cmp6 to i32, !dbg !3392
  %12 = load i64*, i64** %__d5, align 8, !dbg !3392
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !3392
  %conv9 = zext i1 %cmp8 to i32, !dbg !3392
  %13 = load i64, i64* %__a3, align 8, !dbg !3392
  %14 = load i64, i64* %__b4, align 8, !dbg !3392
  %15 = load i64*, i64** %__d5, align 8, !dbg !3392
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !3392
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3392
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3392
  store i64 %18, i64* %15, align 8, !dbg !3392
  %frombool11 = zext i1 %17 to i8, !dbg !3392
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !3392
  %19 = load i8, i8* %tmp10, align 1, !dbg !3392
  %tobool12 = trunc i8 %19 to i1, !dbg !3392
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #8, !dbg !3395
  br i1 %call13, label %if.then14, label %if.end15, !dbg !3396

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !3397
  br label %return, !dbg !3397

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !3398
  store i64 %20, i64* %retval, align 8, !dbg !3399
  br label %return, !dbg !3399

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !3400
  ret i64 %21, !dbg !3400
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3401 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3407, metadata !DIExpression()), !dbg !3409
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3411, metadata !DIExpression()), !dbg !3412
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3413, metadata !DIExpression()), !dbg !3414
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3415, metadata !DIExpression()), !dbg !3417
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3419, metadata !DIExpression()), !dbg !3420
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3421, metadata !DIExpression()), !dbg !3423
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3425, metadata !DIExpression()), !dbg !3426
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3429, metadata !DIExpression()), !dbg !3430
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3431
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3432
  %div = sdiv i64 %1, 64, !dbg !3432
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3433
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3431
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3434
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3435
  %conv.i = trunc i64 %4 to i32, !dbg !3435
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !3436
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3437
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3437
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !3437
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3438
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3438
  br i1 %8, label %cond.true, label %cond.false, !dbg !3438

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3438
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3438
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3439
  %and.i = and i64 %11, 63, !dbg !3440
  %shl.i = shl i64 1, %and.i, !dbg !3441
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3442
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3443
  %shr.i = ashr i64 %13, 6, !dbg !3444
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3442
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3442
  %and1.i = and i64 %shl.i, %14, !dbg !3445
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3446
  %conv = zext i1 %cmp.i to i32, !dbg !3438
  br label %cond.end, !dbg !3438

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3438
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3438
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3447
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3448
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !3449, !srcloc !3450
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3449
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3451
  %tobool.i = trunc i8 %20 to i1, !dbg !3451
  %conv2 = zext i1 %tobool.i to i32, !dbg !3438
  br label %cond.end, !dbg !3438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3438
  %tobool = icmp ne i32 %cond, 0, !dbg !3438
  ret i1 %tobool, !dbg !3452
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cfi_interleave_supported(i32 %i) #0 !dbg !3453 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  %0 = load i32, i32* %i.addr, align 4, !dbg !3458
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ], !dbg !3459

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval, align 4, !dbg !3460
  br label %return, !dbg !3460

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3462
  br label %return, !dbg !3462

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !3463
  ret i32 %1, !dbg !3463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3464 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  ret i1 true, !dbg !3472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3473 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3477, metadata !DIExpression()), !dbg !3478
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3479, metadata !DIExpression()), !dbg !3480
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3481, metadata !DIExpression()), !dbg !3482
  ret void, !dbg !3483
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3484 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3488, metadata !DIExpression()), !dbg !3492
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3494, metadata !DIExpression()), !dbg !3495
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3496, metadata !DIExpression()), !dbg !3497
  %0 = load i64, i64* %size.addr, align 8, !dbg !3498
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3500
  br i1 %1, label %if.then, label %if.end447, !dbg !3501

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3502
  %tobool = icmp ne i64 %2, 0, !dbg !3502
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3505

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3506
  br label %return, !dbg !3506

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3507
  %cmp = icmp ult i64 %3, 4096, !dbg !3509
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3510

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3511
  br label %return, !dbg !3511

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub = sub i64 %4, 1, !dbg !3512
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3512
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3512

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub4 = sub i64 %6, 1, !dbg !3512
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3512
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3512

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub6 = sub i64 %8, 1, !dbg !3512
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3512
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3512

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3512

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub9 = sub i64 %9, 1, !dbg !3512
  %and = and i64 %sub9, -9223372036854775808, !dbg !3512
  %tobool10 = icmp ne i64 %and, 0, !dbg !3512
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3512

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3512

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub13 = sub i64 %10, 1, !dbg !3512
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3512
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3512
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3512

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3512

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub18 = sub i64 %11, 1, !dbg !3512
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3512
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3512
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3512

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3512

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub23 = sub i64 %12, 1, !dbg !3512
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3512
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3512
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3512

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3512

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub28 = sub i64 %13, 1, !dbg !3512
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3512
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3512
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3512

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3512

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub33 = sub i64 %14, 1, !dbg !3512
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3512
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3512
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3512

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3512

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub38 = sub i64 %15, 1, !dbg !3512
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3512
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3512
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3512

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3512

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub43 = sub i64 %16, 1, !dbg !3512
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3512
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3512
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3512

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3512

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub48 = sub i64 %17, 1, !dbg !3512
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3512
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3512
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3512

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3512

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub53 = sub i64 %18, 1, !dbg !3512
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3512
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3512
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3512

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3512

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub58 = sub i64 %19, 1, !dbg !3512
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3512
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3512
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3512

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3512

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub63 = sub i64 %20, 1, !dbg !3512
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3512
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3512
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3512

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3512

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub68 = sub i64 %21, 1, !dbg !3512
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3512
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3512
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3512

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3512

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub73 = sub i64 %22, 1, !dbg !3512
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3512
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3512
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3512

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3512

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub78 = sub i64 %23, 1, !dbg !3512
  %and79 = and i64 %sub78, 562949953421312, !dbg !3512
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3512
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3512

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3512

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub83 = sub i64 %24, 1, !dbg !3512
  %and84 = and i64 %sub83, 281474976710656, !dbg !3512
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3512
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3512

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3512

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub88 = sub i64 %25, 1, !dbg !3512
  %and89 = and i64 %sub88, 140737488355328, !dbg !3512
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3512
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3512

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3512

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub93 = sub i64 %26, 1, !dbg !3512
  %and94 = and i64 %sub93, 70368744177664, !dbg !3512
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3512
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3512

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3512

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub98 = sub i64 %27, 1, !dbg !3512
  %and99 = and i64 %sub98, 35184372088832, !dbg !3512
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3512
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3512

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3512

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub103 = sub i64 %28, 1, !dbg !3512
  %and104 = and i64 %sub103, 17592186044416, !dbg !3512
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3512
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3512

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3512

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub108 = sub i64 %29, 1, !dbg !3512
  %and109 = and i64 %sub108, 8796093022208, !dbg !3512
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3512
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3512

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3512

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub113 = sub i64 %30, 1, !dbg !3512
  %and114 = and i64 %sub113, 4398046511104, !dbg !3512
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3512
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3512

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3512

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub118 = sub i64 %31, 1, !dbg !3512
  %and119 = and i64 %sub118, 2199023255552, !dbg !3512
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3512
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3512

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3512

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub123 = sub i64 %32, 1, !dbg !3512
  %and124 = and i64 %sub123, 1099511627776, !dbg !3512
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3512
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3512

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3512

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub128 = sub i64 %33, 1, !dbg !3512
  %and129 = and i64 %sub128, 549755813888, !dbg !3512
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3512
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3512

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3512

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub133 = sub i64 %34, 1, !dbg !3512
  %and134 = and i64 %sub133, 274877906944, !dbg !3512
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3512
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3512

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3512

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub138 = sub i64 %35, 1, !dbg !3512
  %and139 = and i64 %sub138, 137438953472, !dbg !3512
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3512
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3512

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3512

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub143 = sub i64 %36, 1, !dbg !3512
  %and144 = and i64 %sub143, 68719476736, !dbg !3512
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3512
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3512

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3512

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub148 = sub i64 %37, 1, !dbg !3512
  %and149 = and i64 %sub148, 34359738368, !dbg !3512
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3512
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3512

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3512

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub153 = sub i64 %38, 1, !dbg !3512
  %and154 = and i64 %sub153, 17179869184, !dbg !3512
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3512
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3512

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3512

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub158 = sub i64 %39, 1, !dbg !3512
  %and159 = and i64 %sub158, 8589934592, !dbg !3512
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3512
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3512

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3512

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub163 = sub i64 %40, 1, !dbg !3512
  %and164 = and i64 %sub163, 4294967296, !dbg !3512
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3512
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3512

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3512

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub168 = sub i64 %41, 1, !dbg !3512
  %and169 = and i64 %sub168, 2147483648, !dbg !3512
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3512
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3512

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3512

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub173 = sub i64 %42, 1, !dbg !3512
  %and174 = and i64 %sub173, 1073741824, !dbg !3512
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3512
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3512

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3512

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub178 = sub i64 %43, 1, !dbg !3512
  %and179 = and i64 %sub178, 536870912, !dbg !3512
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3512
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3512

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3512

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub183 = sub i64 %44, 1, !dbg !3512
  %and184 = and i64 %sub183, 268435456, !dbg !3512
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3512
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3512

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3512

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub188 = sub i64 %45, 1, !dbg !3512
  %and189 = and i64 %sub188, 134217728, !dbg !3512
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3512
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3512

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3512

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub193 = sub i64 %46, 1, !dbg !3512
  %and194 = and i64 %sub193, 67108864, !dbg !3512
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3512
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3512

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3512

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub198 = sub i64 %47, 1, !dbg !3512
  %and199 = and i64 %sub198, 33554432, !dbg !3512
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3512
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3512

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3512

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub203 = sub i64 %48, 1, !dbg !3512
  %and204 = and i64 %sub203, 16777216, !dbg !3512
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3512
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3512

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3512

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub208 = sub i64 %49, 1, !dbg !3512
  %and209 = and i64 %sub208, 8388608, !dbg !3512
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3512
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3512

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3512

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub213 = sub i64 %50, 1, !dbg !3512
  %and214 = and i64 %sub213, 4194304, !dbg !3512
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3512
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3512

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3512

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub218 = sub i64 %51, 1, !dbg !3512
  %and219 = and i64 %sub218, 2097152, !dbg !3512
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3512
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3512

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3512

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub223 = sub i64 %52, 1, !dbg !3512
  %and224 = and i64 %sub223, 1048576, !dbg !3512
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3512
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3512

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3512

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub228 = sub i64 %53, 1, !dbg !3512
  %and229 = and i64 %sub228, 524288, !dbg !3512
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3512
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3512

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3512

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub233 = sub i64 %54, 1, !dbg !3512
  %and234 = and i64 %sub233, 262144, !dbg !3512
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3512
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3512

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3512

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub238 = sub i64 %55, 1, !dbg !3512
  %and239 = and i64 %sub238, 131072, !dbg !3512
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3512
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3512

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3512

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub243 = sub i64 %56, 1, !dbg !3512
  %and244 = and i64 %sub243, 65536, !dbg !3512
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3512
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3512

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3512

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub248 = sub i64 %57, 1, !dbg !3512
  %and249 = and i64 %sub248, 32768, !dbg !3512
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3512
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3512

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3512

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub253 = sub i64 %58, 1, !dbg !3512
  %and254 = and i64 %sub253, 16384, !dbg !3512
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3512
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3512

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3512

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub258 = sub i64 %59, 1, !dbg !3512
  %and259 = and i64 %sub258, 8192, !dbg !3512
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3512
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3512

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3512

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub263 = sub i64 %60, 1, !dbg !3512
  %and264 = and i64 %sub263, 4096, !dbg !3512
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3512
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3512

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3512

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub268 = sub i64 %61, 1, !dbg !3512
  %and269 = and i64 %sub268, 2048, !dbg !3512
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3512
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3512

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3512

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub273 = sub i64 %62, 1, !dbg !3512
  %and274 = and i64 %sub273, 1024, !dbg !3512
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3512
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3512

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3512

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub278 = sub i64 %63, 1, !dbg !3512
  %and279 = and i64 %sub278, 512, !dbg !3512
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3512
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3512

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3512

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub283 = sub i64 %64, 1, !dbg !3512
  %and284 = and i64 %sub283, 256, !dbg !3512
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3512
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3512

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3512

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub288 = sub i64 %65, 1, !dbg !3512
  %and289 = and i64 %sub288, 128, !dbg !3512
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3512
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3512

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3512

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub293 = sub i64 %66, 1, !dbg !3512
  %and294 = and i64 %sub293, 64, !dbg !3512
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3512
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3512

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3512

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub298 = sub i64 %67, 1, !dbg !3512
  %and299 = and i64 %sub298, 32, !dbg !3512
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3512
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3512

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3512

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub303 = sub i64 %68, 1, !dbg !3512
  %and304 = and i64 %sub303, 16, !dbg !3512
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3512
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3512

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3512

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub308 = sub i64 %69, 1, !dbg !3512
  %and309 = and i64 %sub308, 8, !dbg !3512
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3512
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3512

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3512

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub313 = sub i64 %70, 1, !dbg !3512
  %and314 = and i64 %sub313, 4, !dbg !3512
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3512
  %71 = zext i1 %tobool315 to i64, !dbg !3512
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3512
  br label %cond.end, !dbg !3512

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3512
  br label %cond.end317, !dbg !3512

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3512
  br label %cond.end319, !dbg !3512

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3512
  br label %cond.end321, !dbg !3512

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3512
  br label %cond.end323, !dbg !3512

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3512
  br label %cond.end325, !dbg !3512

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3512
  br label %cond.end327, !dbg !3512

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3512
  br label %cond.end329, !dbg !3512

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3512
  br label %cond.end331, !dbg !3512

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3512
  br label %cond.end333, !dbg !3512

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3512
  br label %cond.end335, !dbg !3512

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3512
  br label %cond.end337, !dbg !3512

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3512
  br label %cond.end339, !dbg !3512

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3512
  br label %cond.end341, !dbg !3512

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3512
  br label %cond.end343, !dbg !3512

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3512
  br label %cond.end345, !dbg !3512

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3512
  br label %cond.end347, !dbg !3512

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3512
  br label %cond.end349, !dbg !3512

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3512
  br label %cond.end351, !dbg !3512

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3512
  br label %cond.end353, !dbg !3512

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3512
  br label %cond.end355, !dbg !3512

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3512
  br label %cond.end357, !dbg !3512

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3512
  br label %cond.end359, !dbg !3512

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3512
  br label %cond.end361, !dbg !3512

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3512
  br label %cond.end363, !dbg !3512

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3512
  br label %cond.end365, !dbg !3512

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3512
  br label %cond.end367, !dbg !3512

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3512
  br label %cond.end369, !dbg !3512

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3512
  br label %cond.end371, !dbg !3512

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3512
  br label %cond.end373, !dbg !3512

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3512
  br label %cond.end375, !dbg !3512

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3512
  br label %cond.end377, !dbg !3512

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3512
  br label %cond.end379, !dbg !3512

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3512
  br label %cond.end381, !dbg !3512

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3512
  br label %cond.end383, !dbg !3512

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3512
  br label %cond.end385, !dbg !3512

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3512
  br label %cond.end387, !dbg !3512

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3512
  br label %cond.end389, !dbg !3512

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3512
  br label %cond.end391, !dbg !3512

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3512
  br label %cond.end393, !dbg !3512

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3512
  br label %cond.end395, !dbg !3512

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3512
  br label %cond.end397, !dbg !3512

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3512
  br label %cond.end399, !dbg !3512

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3512
  br label %cond.end401, !dbg !3512

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3512
  br label %cond.end403, !dbg !3512

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3512
  br label %cond.end405, !dbg !3512

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3512
  br label %cond.end407, !dbg !3512

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3512
  br label %cond.end409, !dbg !3512

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3512
  br label %cond.end411, !dbg !3512

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3512
  br label %cond.end413, !dbg !3512

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3512
  br label %cond.end415, !dbg !3512

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3512
  br label %cond.end417, !dbg !3512

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3512
  br label %cond.end419, !dbg !3512

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3512
  br label %cond.end421, !dbg !3512

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3512
  br label %cond.end423, !dbg !3512

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3512
  br label %cond.end425, !dbg !3512

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3512
  br label %cond.end427, !dbg !3512

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3512
  br label %cond.end429, !dbg !3512

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3512
  br label %cond.end431, !dbg !3512

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3512
  br label %cond.end433, !dbg !3512

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3512
  br label %cond.end435, !dbg !3512

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3512
  br label %cond.end437, !dbg !3512

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3512
  br label %cond.end440, !dbg !3512

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3512

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3512
  br label %cond.end444, !dbg !3512

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3512
  %sub443 = sub i64 %72, 1, !dbg !3512
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3512
  br label %cond.end444, !dbg !3512

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3512
  %sub446 = sub i32 %cond445, 12, !dbg !3513
  %add = add i32 %sub446, 1, !dbg !3514
  store i32 %add, i32* %retval, align 4, !dbg !3515
  br label %return, !dbg !3515

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3516
  %dec = add i64 %73, -1, !dbg !3516
  store i64 %dec, i64* %size.addr, align 8, !dbg !3516
  %74 = load i64, i64* %size.addr, align 8, !dbg !3517
  %shr = lshr i64 %74, 12, !dbg !3517
  store i64 %shr, i64* %size.addr, align 8, !dbg !3517
  %75 = load i64, i64* %size.addr, align 8, !dbg !3518
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3495
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3519
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3520
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !3519, !srcloc !3521
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3519
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3522
  %add.i = add i32 %79, 1, !dbg !3523
  store i32 %add.i, i32* %retval, align 4, !dbg !3524
  br label %return, !dbg !3524

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3525
  ret i32 %80, !dbg !3525
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3526 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3488, metadata !DIExpression()), !dbg !3530
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3494, metadata !DIExpression()), !dbg !3532
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3533, metadata !DIExpression()), !dbg !3534
  %0 = load i64, i64* %n.addr, align 8, !dbg !3535
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3532
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3536
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3537
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !3536, !srcloc !3521
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3536
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3538
  %add.i = add i32 %4, 1, !dbg !3539
  %sub = sub i32 %add.i, 1, !dbg !3540
  ret i32 %sub, !dbg !3541
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3542 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3548, metadata !DIExpression()), !dbg !3549
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3550, metadata !DIExpression()), !dbg !3551
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3554
  ret i8* %0, !dbg !3555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3556 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3559, metadata !DIExpression()), !dbg !3560
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3561
  %tobool = trunc i8 %0 to i1, !dbg !3561
  %lnot = xor i1 %tobool, true, !dbg !3561
  %lnot1 = xor i1 %lnot, true, !dbg !3561
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3561
  %conv = sext i32 %lnot.ext to i64, !dbg !3561
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3561
  ret i1 %tobool2, !dbg !3562
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3563 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3566, metadata !DIExpression()), !dbg !3567
  ret i1 true, !dbg !3568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @cfi_cmdset_unknown(%struct.map_info* %map, i32 %primary) #0 !dbg !3569 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  %primary.addr = alloca i32, align 4
  %cfi = alloca %struct.cfi_private*, align 8
  %type = alloca i16, align 2
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3570, metadata !DIExpression()), !dbg !3571
  store i32 %primary, i32* %primary.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %primary.addr, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi, metadata !3574, metadata !DIExpression()), !dbg !3575
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3576
  %fldrv_priv = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 17, !dbg !3577
  %1 = load i8*, i8** %fldrv_priv, align 8, !dbg !3577
  %2 = bitcast i8* %1 to %struct.cfi_private*, !dbg !3576
  store %struct.cfi_private* %2, %struct.cfi_private** %cfi, align 8, !dbg !3575
  call void @llvm.dbg.declare(metadata i16* %type, metadata !3578, metadata !DIExpression()), !dbg !3579
  %3 = load i32, i32* %primary.addr, align 4, !dbg !3580
  %tobool = icmp ne i32 %3, 0, !dbg !3580
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3580

cond.true:                                        ; preds = %entry
  %4 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3581
  %cfiq = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %4, i32 0, i32 8, !dbg !3582
  %5 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq, align 8, !dbg !3582
  %P_ID = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %5, i32 0, i32 1, !dbg !3583
  %6 = load i16, i16* %P_ID, align 1, !dbg !3583
  %conv = zext i16 %6 to i32, !dbg !3581
  br label %cond.end, !dbg !3580

cond.false:                                       ; preds = %entry
  %7 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3584
  %cfiq1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %7, i32 0, i32 8, !dbg !3585
  %8 = load %struct.cfi_ident*, %struct.cfi_ident** %cfiq1, align 8, !dbg !3585
  %A_ID = getelementptr inbounds %struct.cfi_ident, %struct.cfi_ident* %8, i32 0, i32 3, !dbg !3586
  %9 = load i16, i16* %A_ID, align 1, !dbg !3586
  %conv2 = zext i16 %9 to i32, !dbg !3584
  br label %cond.end, !dbg !3580

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3580
  %conv3 = trunc i32 %cond to i16, !dbg !3580
  store i16 %conv3, i16* %type, align 2, !dbg !3579
  %10 = load i16, i16* %type, align 2, !dbg !3587
  %conv4 = zext i16 %10 to i32, !dbg !3587
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %conv4) #9, !dbg !3588
  ret %struct.mtd_info* null, !dbg !3589
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2474, !2475, !2476, !2477}
!llvm.ident = !{!2478}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file168", scope: !2, file: !3, line: 265, type: !2471, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !110, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/chips/gen_probe.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !81, !86}
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
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 10, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !87, line: 305, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!93 = !{!94, !95, !96, !98, !99, !102, !105, !109}
!94 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !97, line: 148, baseType: !7)
!97 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!101 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!104 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 55, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !107, line: 72, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !107, line: 16, baseType: !94)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!110 = !{!0, !111, !117, !122, !127, !2469}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license169", scope: !2, file: !3, line: 265, type: !113, isLocal: true, isDefinition: true, align: 8)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 176, elements: !115)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!115 = !{!116}
!116 = !DISubrange(count: 22)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author170", scope: !2, file: !3, line: 266, type: !119, isLocal: true, isDefinition: true, align: 8)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 440, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 55)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description171", scope: !2, file: !3, line: 267, type: !124, isLocal: true, isDefinition: true, align: 8)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 512, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 64)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__key", scope: !129, file: !3, line: 155, type: !1994, isLocal: true, isDefinition: true)
!129 = distinct !DISubprogram(name: "genprobe_ident_chips", scope: !3, file: !3, line: 59, type: !130, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !2350, !2460}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_private", file: !134, line: 273, size: 768, elements: !135)
!134 = !DIFile(filename: "./include/linux/mtd/cfi.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !143, !144, !145, !146, !147, !148, !149, !2404, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset", scope: !133, file: !134, line: 274, baseType: !137, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !97, line: 103, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !139, line: 19, baseType: !140)
!139 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !141, line: 24, baseType: !142)
!141 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset_priv", scope: !133, file: !134, line: 275, baseType: !95, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "interleave", scope: !133, file: !134, line: 276, baseType: !98, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !133, file: !134, line: 277, baseType: !98, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cfi_mode", scope: !133, file: !134, line: 278, baseType: !98, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "addr_unlock1", scope: !133, file: !134, line: 279, baseType: !98, size: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "addr_unlock2", scope: !133, file: !134, line: 280, baseType: !98, size: 32, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset_setup", scope: !133, file: !134, line: 281, baseType: !150, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !2350}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !155, line: 235, size: 9664, elements: !156)
!155 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !160, !164, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !197, !218, !219, !220, !221, !229, !239, !251, !255, !260, !266, !267, !286, !287, !298, !299, !300, !301, !302, !303, !314, !318, !322, !323, !324, !328, !329, !330, !331, !335, !336, !337, !338, !339, !342, !354, !361, !362, !363, !367, !2320, !2321, !2329, !2333, !2334, !2335}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !155, line: 236, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !97, line: 79, baseType: !159)
!159 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !155, line: 237, baseType: !161, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 104, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !139, line: 21, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !141, line: 27, baseType: !7)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !154, file: !155, line: 238, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !97, line: 107, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !139, line: 23, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !141, line: 31, baseType: !168)
!168 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !154, file: !155, line: 244, baseType: !161, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !154, file: !155, line: 252, baseType: !161, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !154, file: !155, line: 263, baseType: !161, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !154, file: !155, line: 265, baseType: !161, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !154, file: !155, line: 266, baseType: !161, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !154, file: !155, line: 272, baseType: !7, size: 32, offset: 288)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !154, file: !155, line: 273, baseType: !7, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !154, file: !155, line: 275, baseType: !7, size: 32, offset: 352)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !154, file: !155, line: 276, baseType: !7, size: 32, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !154, file: !155, line: 285, baseType: !7, size: 32, offset: 416)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 288, baseType: !180, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !154, file: !155, line: 289, baseType: !98, size: 32, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !154, file: !155, line: 292, baseType: !183, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !155, line: 101, size: 128, elements: !186)
!186 = !{!187, !196}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !185, file: !155, line: 102, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!98, !153, !98, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !155, line: 87, size: 64, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !192, file: !155, line: 88, baseType: !162, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !192, file: !155, line: 89, baseType: !162, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !185, file: !155, line: 104, baseType: !188, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !154, file: !155, line: 295, baseType: !198, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !155, line: 176, size: 192, elements: !201)
!201 = !{!202, !203, !212}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !200, file: !155, line: 177, baseType: !98, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !200, file: !155, line: 178, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!98, !153, !98, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !155, line: 138, size: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !208, file: !155, line: 139, baseType: !98, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !208, file: !155, line: 140, baseType: !98, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !200, file: !155, line: 180, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!98, !153, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !154, file: !155, line: 298, baseType: !7, size: 32, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !154, file: !155, line: 301, baseType: !7, size: 32, offset: 736)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !154, file: !155, line: 306, baseType: !98, size: 32, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !154, file: !155, line: 307, baseType: !222, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !155, line: 36, size: 192, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !223, file: !155, line: 37, baseType: !165, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !223, file: !155, line: 38, baseType: !161, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !223, file: !155, line: 39, baseType: !161, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !223, file: !155, line: 40, baseType: !109, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !154, file: !155, line: 313, baseType: !230, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!98, !153, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !155, line: 30, size: 192, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !234, file: !155, line: 31, baseType: !165, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !234, file: !155, line: 32, baseType: !165, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !234, file: !155, line: 33, baseType: !165, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !154, file: !155, line: 314, baseType: !240, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!98, !153, !243, !105, !246, !247, !248}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !97, line: 46, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !107, line: 88, baseType: !245)
!245 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !97, line: 158, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !97, line: 153, baseType: !166)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !154, file: !155, line: 316, baseType: !252, size: 64, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!98, !153, !243, !105}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !154, file: !155, line: 317, baseType: !256, size: 64, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!98, !153, !243, !105, !246, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !154, file: !155, line: 319, baseType: !261, size: 64, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!98, !153, !243, !105, !246, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !154, file: !155, line: 321, baseType: !261, size: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !154, file: !155, line: 323, baseType: !268, size: 64, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!98, !153, !243, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !155, line: 64, size: 512, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !285}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !155, line: 65, baseType: !7, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !272, file: !155, line: 66, baseType: !105, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !272, file: !155, line: 67, baseType: !105, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !272, file: !155, line: 68, baseType: !105, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !272, file: !155, line: 69, baseType: !105, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !272, file: !155, line: 70, baseType: !161, size: 32, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !272, file: !155, line: 71, baseType: !281, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !97, line: 102, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !139, line: 17, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !141, line: 21, baseType: !159)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !272, file: !155, line: 72, baseType: !281, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !154, file: !155, line: 325, baseType: !268, size: 64, offset: 1344)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !154, file: !155, line: 327, baseType: !288, size: 64, offset: 1408)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!98, !153, !105, !246, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !293, line: 146, size: 96, elements: !294)
!293 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!294 = !{!295, !296, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !292, file: !293, line: 147, baseType: !163, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !292, file: !293, line: 148, baseType: !163, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !292, file: !293, line: 149, baseType: !163, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !154, file: !155, line: 329, baseType: !256, size: 64, offset: 1472)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !154, file: !155, line: 331, baseType: !288, size: 64, offset: 1536)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !154, file: !155, line: 333, baseType: !256, size: 64, offset: 1600)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !154, file: !155, line: 335, baseType: !256, size: 64, offset: 1664)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !154, file: !155, line: 337, baseType: !252, size: 64, offset: 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !154, file: !155, line: 339, baseType: !304, size: 64, offset: 1792)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!98, !153, !307, !94, !243, !246}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !310, line: 15, size: 128, elements: !311)
!310 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !309, file: !310, line: 16, baseType: !95, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !309, file: !310, line: 17, baseType: !105, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !154, file: !155, line: 341, baseType: !315, size: 64, offset: 1856)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !153}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !154, file: !155, line: 342, baseType: !319, size: 64, offset: 1920)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!98, !153, !243, !165}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !154, file: !155, line: 343, baseType: !319, size: 64, offset: 1984)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !154, file: !155, line: 344, baseType: !319, size: 64, offset: 2048)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !154, file: !155, line: 345, baseType: !325, size: 64, offset: 2112)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!98, !153, !243}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !154, file: !155, line: 346, baseType: !325, size: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !154, file: !155, line: 347, baseType: !325, size: 64, offset: 2240)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !154, file: !155, line: 348, baseType: !252, size: 64, offset: 2304)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !154, file: !155, line: 349, baseType: !332, size: 64, offset: 2368)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!98, !153}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !154, file: !155, line: 350, baseType: !315, size: 64, offset: 2432)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !154, file: !155, line: 351, baseType: !315, size: 64, offset: 2496)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !154, file: !155, line: 356, baseType: !332, size: 64, offset: 2560)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !154, file: !155, line: 357, baseType: !315, size: 64, offset: 2624)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !154, file: !155, line: 363, baseType: !340, size: 8, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !97, line: 30, baseType: !341)
!341 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !154, file: !155, line: 365, baseType: !343, size: 192, offset: 2752)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !344, line: 54, size: 192, elements: !345)
!344 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !352, !353}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !343, file: !344, line: 55, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !344, line: 51, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!98, !351, !94, !95}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !344, line: 56, baseType: !351, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !343, file: !344, line: 57, baseType: !98, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !154, file: !155, line: 368, baseType: !355, size: 128, offset: 2944)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !293, line: 250, size: 128, elements: !356)
!356 = !{!357, !358, !359, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !355, file: !293, line: 251, baseType: !163, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !355, file: !293, line: 252, baseType: !163, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !355, file: !293, line: 253, baseType: !163, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !355, file: !293, line: 254, baseType: !163, size: 32, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !154, file: !155, line: 370, baseType: !98, size: 32, offset: 3072)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !154, file: !155, line: 372, baseType: !95, size: 64, offset: 3136)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !154, file: !155, line: 374, baseType: !364, size: 64, offset: 3200)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !366, line: 76, flags: DIFlagFwdDecl)
!366 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !154, file: !155, line: 375, baseType: !368, size: 5568, offset: 3264)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !369)
!369 = !{!370, !1846, !1848, !1851, !1852, !1903, !1997, !1998, !1999, !2000, !2001, !2010, !2115, !2128, !2131, !2132, !2136, !2138, !2139, !2140, !2144, !2150, !2151, !2154, !2269, !2270, !2273, !2274, !2275, !2276, !2308, !2309, !2310, !2313, !2316, !2317, !2318, !2319}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !368, file: !30, line: 462, baseType: !371, size: 512)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !372, line: 64, size: 512, elements: !373)
!372 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !375, !381, !383, !441, !1683, !1836, !1841, !1842, !1843, !1844, !1845}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !372, line: 65, baseType: !180, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !371, file: !372, line: 66, baseType: !376, size: 128, offset: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !97, line: 178, size: 128, elements: !377)
!377 = !{!378, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !97, line: 179, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !376, file: !97, line: 179, baseType: !379, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !371, file: !372, line: 67, baseType: !382, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !371, file: !372, line: 68, baseType: !384, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !372, line: 192, size: 704, elements: !386)
!386 = !{!387, !388, !404, !405}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !385, file: !372, line: 193, baseType: !376, size: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !385, file: !372, line: 194, baseType: !389, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !390, line: 83, baseType: !391)
!390 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !390, line: 71, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !390, line: 72, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !390, line: 72, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !394, file: !390, line: 73, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !390, line: 20, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !397, file: !390, line: 21, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !401, line: 25, baseType: !402)
!401 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 25, elements: !403)
!403 = !{}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !385, file: !372, line: 195, baseType: !371, size: 512, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !385, file: !372, line: 196, baseType: !406, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !372, line: 156, size: 192, elements: !409)
!409 = !{!410, !415, !420}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !408, file: !372, line: 157, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!98, !384, !382}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !372, line: 158, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!180, !384, !382}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !408, file: !372, line: 159, baseType: !421, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!98, !384, !382, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !372, line: 148, size: 20736, elements: !427)
!427 = !{!428, !433, !435, !436, !440}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !426, file: !372, line: 149, baseType: !429, size: 192)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 192, elements: !431)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!431 = !{!432}
!432 = !DISubrange(count: 3)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !426, file: !372, line: 150, baseType: !434, size: 4096, offset: 192)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 4096, elements: !125)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !426, file: !372, line: 151, baseType: !98, size: 32, offset: 4288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !426, file: !372, line: 152, baseType: !437, size: 16384, offset: 4320)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16384, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 2048)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !426, file: !372, line: 153, baseType: !98, size: 32, offset: 20704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !371, file: !372, line: 69, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !372, line: 138, size: 448, elements: !444)
!444 = !{!445, !449, !472, !474, !1630, !1661, !1665}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !443, file: !372, line: 139, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !382}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !443, file: !372, line: 140, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !453, line: 230, size: 128, elements: !454)
!453 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!454 = !{!455, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !452, file: !453, line: 231, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !382, !462, !430}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !97, line: 60, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !107, line: 73, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !107, line: 15, baseType: !104)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !453, line: 30, size: 128, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !453, line: 31, baseType: !180, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !463, file: !453, line: 32, baseType: !467, size: 16, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !97, line: 19, baseType: !142)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !452, file: !453, line: 232, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!459, !382, !462, !180, !105}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !443, file: !372, line: 141, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !443, file: !372, line: 142, baseType: !475, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !453, line: 84, size: 320, elements: !479)
!479 = !{!480, !481, !485, !1627, !1628}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !453, line: 85, baseType: !180, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !478, file: !453, line: 86, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!467, !382, !462, !98}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !478, file: !453, line: 88, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!467, !382, !489, !98}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !453, line: 168, size: 448, elements: !491)
!491 = !{!492, !493, !494, !495, !502, !503}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !490, file: !453, line: 169, baseType: !463, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !490, file: !453, line: 170, baseType: !105, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !490, file: !453, line: 171, baseType: !95, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !490, file: !453, line: 172, baseType: !496, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!459, !499, !382, !489, !430, !243, !105}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !501, line: 526, flags: DIFlagFwdDecl)
!501 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !490, file: !453, line: 174, baseType: !496, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !490, file: !453, line: 176, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!98, !499, !382, !489, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !509, line: 305, size: 1472, elements: !510)
!509 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !512, !513, !514, !515, !523, !524, !1601, !1607, !1608, !1613, !1614, !1617, !1621, !1622, !1623, !1624, !1625}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !508, file: !509, line: 308, baseType: !94, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !508, file: !509, line: 309, baseType: !94, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !508, file: !509, line: 313, baseType: !507, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !508, file: !509, line: 313, baseType: !507, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !508, file: !509, line: 315, baseType: !516, size: 192, align: 64, offset: 256)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !517, line: 24, size: 192, align: 64, elements: !518)
!517 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !520, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !516, file: !517, line: 25, baseType: !94, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !516, file: !517, line: 26, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !516, file: !517, line: 27, baseType: !521, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !508, file: !509, line: 323, baseType: !94, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !508, file: !509, line: 327, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !509, line: 388, size: 7296, elements: !527)
!527 = !{!528, !1597}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !509, line: 389, baseType: !529, size: 7296)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !509, line: 389, size: 7296, elements: !530)
!530 = !{!531, !532, !536, !537, !541, !542, !543, !544, !545, !553, !558, !559, !560, !561, !570, !571, !572, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !607, !615, !618, !664, !665, !1568, !1569, !1572, !1575, !1576, !1579, !1580, !1581, !1584, !1596}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !529, file: !509, line: 390, baseType: !507, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !529, file: !509, line: 391, baseType: !533, size: 64, offset: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !517, line: 31, size: 64, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !533, file: !517, line: 32, baseType: !521, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !529, file: !509, line: 392, baseType: !166, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !529, file: !509, line: 394, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!94, !499, !94, !94, !94, !94}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !529, file: !509, line: 398, baseType: !94, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !529, file: !509, line: 399, baseType: !94, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !529, file: !509, line: 405, baseType: !94, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !529, file: !509, line: 406, baseType: !94, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !529, file: !509, line: 407, baseType: !546, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !501, line: 286, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 286, size: 64, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !548, file: !501, line: 286, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !552, line: 18, baseType: !94)
!552 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !529, file: !509, line: 416, baseType: !554, size: 32, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !97, line: 168, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 166, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !555, file: !97, line: 167, baseType: !98, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !529, file: !509, line: 428, baseType: !554, size: 32, offset: 608)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !529, file: !509, line: 437, baseType: !554, size: 32, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !529, file: !509, line: 447, baseType: !554, size: 32, offset: 672)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !529, file: !509, line: 450, baseType: !562, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !563, line: 13, baseType: !564)
!563 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !97, line: 175, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 173, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !565, file: !97, line: 174, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !139, line: 22, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !141, line: 30, baseType: !245)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !529, file: !509, line: 452, baseType: !98, size: 32, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !529, file: !509, line: 454, baseType: !389, offset: 800)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !529, file: !509, line: 457, baseType: !573, size: 256, offset: 832)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !574, line: 35, size: 256, elements: !575)
!574 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !577, !578, !580}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !573, file: !574, line: 36, baseType: !562, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !573, file: !574, line: 42, baseType: !562, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !573, file: !574, line: 46, baseType: !579, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !390, line: 29, baseType: !397)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !573, file: !574, line: 47, baseType: !376, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !529, file: !509, line: 459, baseType: !376, size: 128, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !529, file: !509, line: 466, baseType: !94, size: 64, offset: 1216)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !529, file: !509, line: 467, baseType: !94, size: 64, offset: 1280)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !529, file: !509, line: 469, baseType: !94, size: 64, offset: 1344)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !529, file: !509, line: 470, baseType: !94, size: 64, offset: 1408)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !529, file: !509, line: 471, baseType: !564, size: 64, offset: 1472)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !529, file: !509, line: 472, baseType: !94, size: 64, offset: 1536)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !529, file: !509, line: 473, baseType: !94, size: 64, offset: 1600)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !529, file: !509, line: 474, baseType: !94, size: 64, offset: 1664)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !529, file: !509, line: 475, baseType: !94, size: 64, offset: 1728)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !529, file: !509, line: 477, baseType: !389, offset: 1792)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !529, file: !509, line: 478, baseType: !94, size: 64, offset: 1792)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !529, file: !509, line: 478, baseType: !94, size: 64, offset: 1856)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !529, file: !509, line: 478, baseType: !94, size: 64, offset: 1920)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !529, file: !509, line: 478, baseType: !94, size: 64, offset: 1984)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !529, file: !509, line: 479, baseType: !94, size: 64, offset: 2048)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !529, file: !509, line: 479, baseType: !94, size: 64, offset: 2112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !529, file: !509, line: 479, baseType: !94, size: 64, offset: 2176)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !529, file: !509, line: 480, baseType: !94, size: 64, offset: 2240)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !529, file: !509, line: 480, baseType: !94, size: 64, offset: 2304)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !529, file: !509, line: 480, baseType: !94, size: 64, offset: 2368)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !529, file: !509, line: 480, baseType: !94, size: 64, offset: 2432)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !529, file: !509, line: 482, baseType: !604, size: 2816, offset: 2496)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2816, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 44)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !529, file: !509, line: 488, baseType: !608, size: 256, offset: 5312)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !609, line: 60, size: 256, elements: !610)
!609 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !608, file: !609, line: 61, baseType: !612, size: 256)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 256, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 4)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !529, file: !509, line: 490, baseType: !616, size: 64, offset: 5568)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !509, line: 490, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !529, file: !509, line: 493, baseType: !619, size: 896, offset: 5632)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !620, line: 53, baseType: !621)
!620 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 13, size: 896, elements: !622)
!622 = !{!623, !624, !625, !626, !629, !630, !637, !638, !658, !659, !660}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !621, file: !620, line: 18, baseType: !166, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !621, file: !620, line: 28, baseType: !564, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !621, file: !620, line: 31, baseType: !573, size: 256, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !621, file: !620, line: 32, baseType: !627, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !620, line: 32, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !621, file: !620, line: 37, baseType: !142, size: 16, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !621, file: !620, line: 40, baseType: !631, size: 192, offset: 512)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !632, line: 53, size: 192, elements: !633)
!632 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !635, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !632, line: 54, baseType: !562, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !631, file: !632, line: 55, baseType: !389, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !631, file: !632, line: 59, baseType: !376, size: 128, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !621, file: !620, line: 41, baseType: !95, size: 64, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !621, file: !620, line: 42, baseType: !639, size: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !642, line: 13, size: 896, elements: !643)
!642 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !641, file: !642, line: 14, baseType: !95, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !641, file: !642, line: 15, baseType: !94, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !641, file: !642, line: 17, baseType: !94, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !641, file: !642, line: 17, baseType: !94, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !641, file: !642, line: 19, baseType: !104, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !641, file: !642, line: 21, baseType: !104, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !641, file: !642, line: 22, baseType: !104, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !641, file: !642, line: 23, baseType: !104, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !641, file: !642, line: 24, baseType: !104, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !641, file: !642, line: 25, baseType: !104, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !641, file: !642, line: 26, baseType: !104, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !641, file: !642, line: 27, baseType: !104, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !641, file: !642, line: 28, baseType: !104, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !641, file: !642, line: 29, baseType: !104, size: 64, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !621, file: !620, line: 44, baseType: !554, size: 32, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !621, file: !620, line: 50, baseType: !138, size: 16, offset: 864)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !621, file: !620, line: 51, baseType: !661, size: 16, offset: 880)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !139, line: 18, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !141, line: 23, baseType: !663)
!663 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !509, line: 495, baseType: !94, size: 64, offset: 6528)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !529, file: !509, line: 497, baseType: !666, size: 64, offset: 6592)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !509, line: 381, size: 384, elements: !668)
!668 = !{!669, !670, !1567}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !667, file: !509, line: 382, baseType: !554, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !667, file: !509, line: 383, baseType: !671, size: 128, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !509, line: 376, size: 128, elements: !672)
!672 = !{!673, !1565}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !671, file: !509, line: 377, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !676, line: 640, size: 48640, elements: !677)
!676 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!677 = !{!678, !684, !685, !686, !692, !693, !694, !695, !696, !697, !698, !699, !703, !721, !732, !824, !825, !826, !837, !838, !840, !841, !842, !843, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !922, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !978, !980, !981, !982, !994, !996, !997, !998, !999, !1000, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1024, !1029, !1034, !1035, !1036, !1039, !1043, !1046, !1049, !1052, !1055, !1059, !1062, !1065, !1071, !1072, !1073, !1079, !1080, !1081, !1082, !1083, !1092, !1093, !1094, !1095, !1096, !1101, !1102, !1103, !1106, !1107, !1110, !1113, !1116, !1119, !1122, !1125, !1126, !1206, !1209, !1212, !1213, !1216, !1217, !1218, !1224, !1225, !1226, !1239, !1240, !1241, !1251, !1256, !1259, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !675, file: !676, line: 646, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !680, line: 56, size: 128, elements: !681)
!680 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !680, line: 57, baseType: !94, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !679, file: !680, line: 58, baseType: !162, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !675, file: !676, line: 649, baseType: !103, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !675, file: !676, line: 657, baseType: !95, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !675, file: !676, line: 658, baseType: !687, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !688, line: 113, baseType: !689)
!688 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !688, line: 111, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !689, file: !688, line: 112, baseType: !554, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !676, line: 660, baseType: !7, size: 32, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !675, file: !676, line: 661, baseType: !7, size: 32, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !675, file: !676, line: 684, baseType: !98, size: 32, offset: 352)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !675, file: !676, line: 686, baseType: !98, size: 32, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !675, file: !676, line: 687, baseType: !98, size: 32, offset: 416)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !675, file: !676, line: 688, baseType: !98, size: 32, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !675, file: !676, line: 689, baseType: !7, size: 32, offset: 480)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !675, file: !676, line: 691, baseType: !700, size: 64, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !676, line: 691, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !675, file: !676, line: 692, baseType: !704, size: 832, offset: 576)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !676, line: 451, size: 832, elements: !705)
!705 = !{!706, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !704, file: !676, line: 453, baseType: !707, size: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !676, line: 325, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !707, file: !676, line: 326, baseType: !94, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !707, file: !676, line: 327, baseType: !162, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !704, file: !676, line: 454, baseType: !516, size: 192, align: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !704, file: !676, line: 455, baseType: !376, size: 128, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !704, file: !676, line: 456, baseType: !7, size: 32, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !704, file: !676, line: 458, baseType: !166, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !704, file: !676, line: 459, baseType: !166, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !704, file: !676, line: 460, baseType: !166, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !704, file: !676, line: 461, baseType: !166, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !704, file: !676, line: 463, baseType: !166, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !704, file: !676, line: 465, baseType: !720, offset: 832)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !676, line: 415, elements: !403)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !675, file: !676, line: 693, baseType: !722, size: 384, offset: 1408)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !676, line: 489, size: 384, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !722, file: !676, line: 490, baseType: !376, size: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !722, file: !676, line: 491, baseType: !94, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !722, file: !676, line: 492, baseType: !94, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !722, file: !676, line: 493, baseType: !7, size: 32, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !722, file: !676, line: 494, baseType: !142, size: 16, offset: 288)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !722, file: !676, line: 495, baseType: !142, size: 16, offset: 304)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !722, file: !676, line: 497, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !675, file: !676, line: 697, baseType: !733, size: 1792, offset: 1792)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !676, line: 507, size: 1792, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !821, !822}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !733, file: !676, line: 508, baseType: !516, size: 192, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !733, file: !676, line: 515, baseType: !166, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !733, file: !676, line: 516, baseType: !166, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !733, file: !676, line: 517, baseType: !166, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !733, file: !676, line: 518, baseType: !166, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !733, file: !676, line: 519, baseType: !166, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !733, file: !676, line: 526, baseType: !568, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !733, file: !676, line: 527, baseType: !166, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !676, line: 528, baseType: !7, size: 32, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !733, file: !676, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !733, file: !676, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !733, file: !676, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !733, file: !676, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !733, file: !676, line: 563, baseType: !749, size: 512, offset: 704)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !750)
!750 = !{!751, !759, !760, !765, !817, !818, !819, !820}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 119, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !753, line: 9, size: 256, elements: !754)
!753 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !753, line: 10, baseType: !516, size: 192, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !752, file: !753, line: 11, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !758, line: 29, baseType: !568)
!758 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !749, file: !6, line: 120, baseType: !757, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !749, file: !6, line: 121, baseType: !761, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!5, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !749, file: !6, line: 122, baseType: !766, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !768)
!768 = !{!769, !789, !790, !793, !803, !804, !812, !816}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !767, file: !6, line: 160, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !771, file: !6, line: 215, baseType: !579)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !771, file: !6, line: 216, baseType: !7, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !771, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !771, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !771, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !771, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !771, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !771, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !771, file: !6, line: 233, baseType: !757, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !771, file: !6, line: 234, baseType: !764, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !771, file: !6, line: 235, baseType: !757, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !771, file: !6, line: 236, baseType: !764, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !771, file: !6, line: 237, baseType: !786, size: 4096, offset: 512)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 4096, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 8)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !767, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !767, file: !6, line: 162, baseType: !791, size: 32, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !97, line: 27, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !107, line: 96, baseType: !98)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !767, file: !6, line: 163, baseType: !794, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !795, line: 276, baseType: !796)
!795 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !795, line: 276, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !796, file: !795, line: 276, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !795, line: 70, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !795, line: 65, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !800, file: !795, line: 66, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !767, file: !6, line: 164, baseType: !764, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !767, file: !6, line: 165, baseType: !805, size: 128, offset: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !753, line: 14, size: 128, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !805, file: !753, line: 15, baseType: !808, size: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !517, line: 125, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !808, file: !517, line: 126, baseType: !533, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !808, file: !517, line: 127, baseType: !521, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !767, file: !6, line: 166, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!757}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !767, file: !6, line: 167, baseType: !757, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !749, file: !6, line: 123, baseType: !283, size: 8, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !749, file: !6, line: 124, baseType: !283, size: 8, offset: 456)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !749, file: !6, line: 125, baseType: !283, size: 8, offset: 464)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !749, file: !6, line: 126, baseType: !283, size: 8, offset: 472)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !733, file: !676, line: 572, baseType: !749, size: 512, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !733, file: !676, line: 580, baseType: !823, size: 64, offset: 1728)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !675, file: !676, line: 721, baseType: !7, size: 32, offset: 3584)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !675, file: !676, line: 722, baseType: !98, size: 32, offset: 3616)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !675, file: !676, line: 723, baseType: !827, size: 64, offset: 3648)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !830, line: 17, baseType: !831)
!830 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !830, line: 17, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !831, file: !830, line: 17, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 1)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !675, file: !676, line: 724, baseType: !829, size: 64, offset: 3712)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !675, file: !676, line: 749, baseType: !839, offset: 3776)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !676, line: 290, elements: !403)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !675, file: !676, line: 751, baseType: !376, size: 128, offset: 3776)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !675, file: !676, line: 757, baseType: !525, size: 64, offset: 3904)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !675, file: !676, line: 758, baseType: !525, size: 64, offset: 3968)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !675, file: !676, line: 761, baseType: !844, size: 320, offset: 4032)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !609, line: 34, size: 320, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !844, file: !609, line: 35, baseType: !166, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !844, file: !609, line: 36, baseType: !848, size: 256, offset: 64)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 256, elements: !613)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !675, file: !676, line: 766, baseType: !98, size: 32, offset: 4352)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !675, file: !676, line: 767, baseType: !98, size: 32, offset: 4384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !675, file: !676, line: 768, baseType: !98, size: 32, offset: 4416)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !675, file: !676, line: 770, baseType: !98, size: 32, offset: 4448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !675, file: !676, line: 772, baseType: !94, size: 64, offset: 4480)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !675, file: !676, line: 775, baseType: !7, size: 32, offset: 4544)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !675, file: !676, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !675, file: !676, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !675, file: !676, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !675, file: !676, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !675, file: !676, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !675, file: !676, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !675, file: !676, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !675, file: !676, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !675, file: !676, line: 831, baseType: !94, size: 64, offset: 4672)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !675, file: !676, line: 833, baseType: !865, size: 384, offset: 4736)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !866)
!866 = !{!867, !872}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !865, file: !12, line: 26, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!104, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !12, line: 27, baseType: !873, size: 320, offset: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !12, line: 27, size: 320, elements: !874)
!874 = !{!875, !885, !912}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !873, file: !12, line: 36, baseType: !876, size: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !12, line: 29, size: 320, elements: !877)
!877 = !{!878, !880, !881, !882, !883, !884}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !876, file: !12, line: 30, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !876, file: !12, line: 31, baseType: !162, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !12, line: 32, baseType: !162, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !876, file: !12, line: 33, baseType: !162, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !876, file: !12, line: 34, baseType: !166, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !876, file: !12, line: 35, baseType: !879, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !873, file: !12, line: 46, baseType: !886, size: 192)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !12, line: 38, size: 192, elements: !887)
!887 = !{!888, !889, !890, !911}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !886, file: !12, line: 39, baseType: !791, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !886, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !12, line: 41, baseType: !891, size: 64, offset: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !12, line: 41, size: 64, elements: !892)
!892 = !{!893, !901}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !891, file: !12, line: 42, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !896, line: 7, size: 128, elements: !897)
!896 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!897 = !{!898, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !895, file: !896, line: 8, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !107, line: 93, baseType: !245)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !895, file: !896, line: 9, baseType: !245, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !891, file: !12, line: 43, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !904, line: 7, size: 64, elements: !905)
!904 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!905 = !{!906, !910}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !903, file: !904, line: 8, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !904, line: 5, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !139, line: 20, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !141, line: 26, baseType: !98)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !903, file: !904, line: 9, baseType: !908, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !886, file: !12, line: 45, baseType: !166, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !873, file: !12, line: 54, baseType: !913, size: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !12, line: 48, size: 256, elements: !914)
!914 = !{!915, !918, !919, !920, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !913, file: !12, line: 49, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !913, file: !12, line: 50, baseType: !98, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !913, file: !12, line: 51, baseType: !98, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !913, file: !12, line: 52, baseType: !94, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !913, file: !12, line: 53, baseType: !94, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !675, file: !676, line: 835, baseType: !923, size: 32, offset: 5120)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !97, line: 22, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !107, line: 28, baseType: !98)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !675, file: !676, line: 836, baseType: !923, size: 32, offset: 5152)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !675, file: !676, line: 840, baseType: !94, size: 64, offset: 5184)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !675, file: !676, line: 849, baseType: !674, size: 64, offset: 5248)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !675, file: !676, line: 852, baseType: !674, size: 64, offset: 5312)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !675, file: !676, line: 857, baseType: !376, size: 128, offset: 5376)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !675, file: !676, line: 858, baseType: !376, size: 128, offset: 5504)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !675, file: !676, line: 859, baseType: !674, size: 64, offset: 5632)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !675, file: !676, line: 867, baseType: !376, size: 128, offset: 5696)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !675, file: !676, line: 868, baseType: !376, size: 128, offset: 5824)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !675, file: !676, line: 871, baseType: !935, size: 64, offset: 5952)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !937, line: 59, size: 768, elements: !938)
!937 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940, !941, !942, !953, !954, !961, !970}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !936, file: !937, line: 61, baseType: !687, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !936, file: !937, line: 62, baseType: !7, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !937, line: 63, baseType: !389, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !936, file: !937, line: 65, baseType: !943, size: 256, offset: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 256, elements: !613)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !97, line: 182, size: 64, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !944, file: !97, line: 183, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !97, line: 186, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !97, line: 187, baseType: !947, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !948, file: !97, line: 187, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !936, file: !937, line: 66, baseType: !944, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !936, file: !937, line: 68, baseType: !955, size: 128, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !956, line: 40, baseType: !957)
!956 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !956, line: 36, size: 128, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !956, line: 37, baseType: !389)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !957, file: !956, line: 38, baseType: !376, size: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !936, file: !937, line: 69, baseType: !962, size: 128, align: 64, offset: 512)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !97, line: 216, size: 128, align: 64, elements: !963)
!963 = !{!964, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !962, file: !97, line: 217, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !962, file: !97, line: 218, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !965}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !936, file: !937, line: 70, baseType: !971, size: 128, offset: 640)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 128, elements: !835)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !937, line: 54, size: 128, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !972, file: !937, line: 55, baseType: !98, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !972, file: !937, line: 56, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !937, line: 56, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !675, file: !676, line: 872, baseType: !979, size: 512, offset: 6016)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 512, elements: !613)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !675, file: !676, line: 873, baseType: !376, size: 128, offset: 6528)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !675, file: !676, line: 874, baseType: !376, size: 128, offset: 6656)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !675, file: !676, line: 876, baseType: !983, size: 64, offset: 6784)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !985, line: 26, size: 192, elements: !986)
!985 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !984, file: !985, line: 27, baseType: !7, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !984, file: !985, line: 28, baseType: !989, size: 128, offset: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !990, line: 43, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !989, file: !990, line: 44, baseType: !579)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !989, file: !990, line: 45, baseType: !376, size: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !675, file: !676, line: 879, baseType: !995, size: 64, offset: 6848)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !675, file: !676, line: 882, baseType: !995, size: 64, offset: 6912)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !675, file: !676, line: 884, baseType: !166, size: 64, offset: 6976)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !675, file: !676, line: 885, baseType: !166, size: 64, offset: 7040)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !675, file: !676, line: 890, baseType: !166, size: 64, offset: 7104)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !675, file: !676, line: 891, baseType: !1001, size: 128, offset: 7168)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !676, line: 242, size: 128, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1001, file: !676, line: 244, baseType: !166, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1001, file: !676, line: 245, baseType: !166, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !676, line: 246, baseType: !579, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !675, file: !676, line: 900, baseType: !94, size: 64, offset: 7296)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !675, file: !676, line: 901, baseType: !94, size: 64, offset: 7360)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !675, file: !676, line: 904, baseType: !166, size: 64, offset: 7424)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !675, file: !676, line: 907, baseType: !166, size: 64, offset: 7488)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !675, file: !676, line: 910, baseType: !94, size: 64, offset: 7552)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !675, file: !676, line: 911, baseType: !94, size: 64, offset: 7616)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !675, file: !676, line: 914, baseType: !1013, size: 640, offset: 7680)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1014, line: 123, size: 640, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !{!1016, !1022, !1023}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1013, file: !1014, line: 124, baseType: !1017, size: 576)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 576, elements: !431)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1014, line: 108, size: 192, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1018, file: !1014, line: 109, baseType: !166, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1018, file: !1014, line: 110, baseType: !805, size: 128, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1013, file: !1014, line: 125, baseType: !7, size: 32, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1013, file: !1014, line: 126, baseType: !7, size: 32, offset: 608)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !675, file: !676, line: 917, baseType: !1025, size: 192, offset: 8320)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1014, line: 134, size: 192, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1025, file: !1014, line: 135, baseType: !962, size: 128, align: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1025, file: !1014, line: 136, baseType: !7, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !675, file: !676, line: 923, baseType: !1030, size: 64, offset: 8512)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1033, line: 11, flags: DIFlagFwdDecl)
!1033 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !675, file: !676, line: 926, baseType: !1030, size: 64, offset: 8576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !675, file: !676, line: 929, baseType: !1030, size: 64, offset: 8640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !675, file: !676, line: 933, baseType: !1037, size: 64, offset: 8704)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !676, line: 933, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !675, file: !676, line: 943, baseType: !1040, size: 128, offset: 8768)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 16)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !675, file: !676, line: 945, baseType: !1044, size: 64, offset: 8896)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !676, line: 49, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !675, file: !676, line: 956, baseType: !1047, size: 64, offset: 8960)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !676, line: 45, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !675, file: !676, line: 959, baseType: !1050, size: 64, offset: 9024)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !676, line: 959, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !675, file: !676, line: 962, baseType: !1053, size: 64, offset: 9088)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !676, line: 66, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !675, file: !676, line: 966, baseType: !1056, size: 64, offset: 9152)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1058, line: 35, flags: DIFlagFwdDecl)
!1058 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !675, file: !676, line: 969, baseType: !1060, size: 64, offset: 9216)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1014, line: 223, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !675, file: !676, line: 970, baseType: !1063, size: 64, offset: 9280)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !676, line: 62, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !675, file: !676, line: 971, baseType: !1066, size: 64, offset: 9344)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1067, line: 25, baseType: !1068)
!1067 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 23, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1068, file: !1067, line: 24, baseType: !834, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !675, file: !676, line: 972, baseType: !1066, size: 64, offset: 9408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !675, file: !676, line: 974, baseType: !1066, size: 64, offset: 9472)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !675, file: !676, line: 975, baseType: !1074, size: 192, offset: 9536)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1075, line: 30, size: 192, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1074, file: !1075, line: 31, baseType: !376, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1074, file: !1075, line: 32, baseType: !1066, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !675, file: !676, line: 976, baseType: !94, size: 64, offset: 9728)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !675, file: !676, line: 977, baseType: !105, size: 64, offset: 9792)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !675, file: !676, line: 978, baseType: !7, size: 32, offset: 9856)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !675, file: !676, line: 980, baseType: !965, size: 64, offset: 9920)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !675, file: !676, line: 989, baseType: !1084, size: 128, offset: 9984)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1085, line: 35, size: 128, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !{!1087, !1088, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1084, file: !1085, line: 36, baseType: !98, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1084, file: !1085, line: 37, baseType: !554, size: 32, offset: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1084, file: !1085, line: 38, baseType: !1090, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1085, line: 23, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !675, file: !676, line: 992, baseType: !166, size: 64, offset: 10112)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !675, file: !676, line: 993, baseType: !166, size: 64, offset: 10176)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !675, file: !676, line: 996, baseType: !389, offset: 10240)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !675, file: !676, line: 999, baseType: !579, offset: 10240)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !675, file: !676, line: 1001, baseType: !1097, size: 64, offset: 10240)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !676, line: 636, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !676, line: 637, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !675, file: !676, line: 1005, baseType: !808, size: 128, offset: 10304)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !675, file: !676, line: 1007, baseType: !674, size: 64, offset: 10432)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !675, file: !676, line: 1009, baseType: !1104, size: 64, offset: 10496)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !676, line: 1009, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !675, file: !676, line: 1043, baseType: !95, size: 64, offset: 10560)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !675, file: !676, line: 1046, baseType: !1108, size: 64, offset: 10624)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !676, line: 41, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !675, file: !676, line: 1050, baseType: !1111, size: 64, offset: 10688)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !676, line: 42, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !675, file: !676, line: 1054, baseType: !1114, size: 64, offset: 10752)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !676, line: 55, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !675, file: !676, line: 1056, baseType: !1117, size: 64, offset: 10816)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !676, line: 40, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !675, file: !676, line: 1058, baseType: !1120, size: 64, offset: 10880)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !676, line: 47, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !675, file: !676, line: 1061, baseType: !1123, size: 64, offset: 10944)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !676, line: 43, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !675, file: !676, line: 1064, baseType: !94, size: 64, offset: 11008)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !675, file: !676, line: 1065, baseType: !1127, size: 64, offset: 11072)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1075, line: 14, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1075, line: 12, size: 384, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1075, line: 13, baseType: !1132, size: 384)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !1075, line: 13, size: 384, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1132, file: !1075, line: 13, baseType: !98, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1132, file: !1075, line: 13, baseType: !98, size: 32, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1132, file: !1075, line: 13, baseType: !98, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1132, file: !1075, line: 13, baseType: !1138, size: 256, offset: 128)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1139, line: 32, size: 256, elements: !1140)
!1139 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !{!1141, !1147, !1160, !1166, !1175, !1195, !1200}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1138, file: !1139, line: 37, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 34, size: 64, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1142, file: !1139, line: 35, baseType: !924, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1142, file: !1139, line: 36, baseType: !1146, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !107, line: 49, baseType: !7)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1138, file: !1139, line: 45, baseType: !1148, size: 192)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 40, size: 192, elements: !1149)
!1149 = !{!1150, !1152, !1153, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1148, file: !1139, line: 41, baseType: !1151, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !107, line: 95, baseType: !98)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1148, file: !1139, line: 42, baseType: !98, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1148, file: !1139, line: 43, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1139, line: 11, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1139, line: 8, size: 64, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1155, file: !1139, line: 9, baseType: !98, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1155, file: !1139, line: 10, baseType: !95, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1148, file: !1139, line: 44, baseType: !98, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1138, file: !1139, line: 52, baseType: !1161, size: 128)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 48, size: 128, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1161, file: !1139, line: 49, baseType: !924, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1161, file: !1139, line: 50, baseType: !1146, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1161, file: !1139, line: 51, baseType: !1154, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1138, file: !1139, line: 61, baseType: !1167, size: 256)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 55, size: 256, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1174}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1167, file: !1139, line: 56, baseType: !924, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1167, file: !1139, line: 57, baseType: !1146, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1167, file: !1139, line: 58, baseType: !98, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1167, file: !1139, line: 59, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !107, line: 94, baseType: !461)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1167, file: !1139, line: 60, baseType: !1173, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1138, file: !1139, line: 95, baseType: !1176, size: 256)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 64, size: 256, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1176, file: !1139, line: 65, baseType: !95, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1139, line: 77, baseType: !1180, size: 192, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !1139, line: 77, size: 192, elements: !1181)
!1181 = !{!1182, !1183, !1190}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1180, file: !1139, line: 82, baseType: !663, size: 16)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1180, file: !1139, line: 88, baseType: !1184, size: 192)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1139, line: 84, size: 192, elements: !1185)
!1185 = !{!1186, !1188, !1189}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1184, file: !1139, line: 85, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !787)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1184, file: !1139, line: 86, baseType: !95, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1184, file: !1139, line: 87, baseType: !95, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1180, file: !1139, line: 93, baseType: !1191, size: 96)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1139, line: 90, size: 96, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1191, file: !1139, line: 91, baseType: !1187, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1191, file: !1139, line: 92, baseType: !163, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1138, file: !1139, line: 101, baseType: !1196, size: 128)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 98, size: 128, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1196, file: !1139, line: 99, baseType: !104, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1196, file: !1139, line: 100, baseType: !98, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1138, file: !1139, line: 108, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1139, line: 104, size: 128, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1201, file: !1139, line: 105, baseType: !95, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1201, file: !1139, line: 106, baseType: !98, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1201, file: !1139, line: 107, baseType: !7, size: 32, offset: 96)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !675, file: !676, line: 1067, baseType: !1207, offset: 11136)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1208, line: 12, elements: !403)
!1208 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !675, file: !676, line: 1099, baseType: !1210, size: 64, offset: 11136)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !676, line: 56, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !675, file: !676, line: 1103, baseType: !376, size: 128, offset: 11200)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !675, file: !676, line: 1104, baseType: !1214, size: 64, offset: 11328)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !676, line: 46, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !675, file: !676, line: 1105, baseType: !631, size: 192, offset: 11392)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !675, file: !676, line: 1106, baseType: !7, size: 32, offset: 11584)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !675, file: !676, line: 1109, baseType: !1219, size: 128, offset: 11648)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 128, elements: !1222)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !676, line: 51, flags: DIFlagFwdDecl)
!1222 = !{!1223}
!1223 = !DISubrange(count: 2)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !675, file: !676, line: 1110, baseType: !631, size: 192, offset: 11776)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !675, file: !676, line: 1111, baseType: !376, size: 128, offset: 11968)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !675, file: !676, line: 1173, baseType: !1227, size: 64, offset: 12096)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1229, line: 62, size: 256, align: 256, elements: !1230)
!1229 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1232, !1233, !1238}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1228, file: !1229, line: 75, baseType: !163, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1228, file: !1229, line: 90, baseType: !163, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1228, file: !1229, line: 124, baseType: !1234, size: 64, offset: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1229, line: 109, size: 64, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1234, file: !1229, line: 110, baseType: !167, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1234, file: !1229, line: 112, baseType: !167, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 144, baseType: !163, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !675, file: !676, line: 1174, baseType: !162, size: 32, offset: 12160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !675, file: !676, line: 1179, baseType: !94, size: 64, offset: 12224)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !675, file: !676, line: 1182, baseType: !1242, size: 128, offset: 12288)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !609, line: 76, size: 128, elements: !1243)
!1243 = !{!1244, !1249, !1250}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1242, file: !609, line: 85, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1246, line: 7, size: 64, elements: !1247)
!1246 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1245, file: !1246, line: 12, baseType: !831, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1242, file: !609, line: 88, baseType: !340, size: 8, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1242, file: !609, line: 95, baseType: !340, size: 8, offset: 72)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !676, line: 1184, baseType: !1252, size: 128, offset: 12416)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !676, line: 1184, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1252, file: !676, line: 1185, baseType: !687, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1252, file: !676, line: 1186, baseType: !962, size: 128, align: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !675, file: !676, line: 1190, baseType: !1257, size: 64, offset: 12544)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !310, line: 13, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !675, file: !676, line: 1192, baseType: !1260, size: 128, offset: 12608)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !609, line: 64, size: 128, elements: !1261)
!1261 = !{!1262, !1355, !1356}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1260, file: !609, line: 65, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !509, line: 68, size: 512, align: 128, elements: !1265)
!1265 = !{!1266, !1267, !1347, !1354}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !509, line: 69, baseType: !94, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !509, line: 77, baseType: !1268, size: 320, offset: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !509, line: 77, size: 320, elements: !1269)
!1269 = !{!1270, !1279, !1284, !1312, !1320, !1326, !1339, !1346}
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 78, baseType: !1271, size: 320)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 78, size: 320, elements: !1272)
!1272 = !{!1273, !1274, !1277, !1278}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1271, file: !509, line: 84, baseType: !376, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1271, file: !509, line: 86, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !509, line: 26, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1271, file: !509, line: 87, baseType: !94, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1271, file: !509, line: 94, baseType: !94, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 96, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 96, size: 64, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1280, file: !509, line: 101, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !97, line: 143, baseType: !166)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 103, baseType: !1285, size: 320)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 103, size: 320, elements: !1286)
!1286 = !{!1287, !1297, !1300, !1301}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !509, line: 104, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !509, line: 104, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1288, file: !509, line: 105, baseType: !376, size: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !509, line: 106, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !509, line: 106, size: 128, elements: !1293)
!1293 = !{!1294, !1295, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1292, file: !509, line: 107, baseType: !1263, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1292, file: !509, line: 109, baseType: !98, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1292, file: !509, line: 110, baseType: !98, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1285, file: !509, line: 117, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !509, line: 117, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1285, file: !509, line: 119, baseType: !95, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !509, line: 120, baseType: !1302, size: 64, offset: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !509, line: 120, size: 64, elements: !1303)
!1303 = !{!1304, !1305, !1306}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1302, file: !509, line: 121, baseType: !95, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1302, file: !509, line: 122, baseType: !94, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !509, line: 123, baseType: !1307, size: 32)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !509, line: 123, size: 32, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1307, file: !509, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1307, file: !509, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1307, file: !509, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 130, baseType: !1313, size: 192)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 130, size: 192, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1313, file: !509, line: 131, baseType: !94, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1313, file: !509, line: 134, baseType: !159, size: 8, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1313, file: !509, line: 135, baseType: !159, size: 8, offset: 72)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1313, file: !509, line: 136, baseType: !554, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1313, file: !509, line: 137, baseType: !7, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 139, baseType: !1321, size: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 139, size: 256, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1321, file: !509, line: 140, baseType: !94, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1321, file: !509, line: 141, baseType: !554, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1321, file: !509, line: 143, baseType: !376, size: 128, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 145, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 145, size: 256, elements: !1328)
!1328 = !{!1329, !1330, !1332, !1333, !1338}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1327, file: !509, line: 146, baseType: !94, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1327, file: !509, line: 147, baseType: !1331, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !501, line: 509, baseType: !1263)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1327, file: !509, line: 148, baseType: !94, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !509, line: 149, baseType: !1334, size: 64, offset: 192)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1327, file: !509, line: 149, size: 64, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1334, file: !509, line: 150, baseType: !525, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1334, file: !509, line: 151, baseType: !554, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1327, file: !509, line: 156, baseType: !389, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !509, line: 159, baseType: !1340, size: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !509, line: 159, size: 128, elements: !1341)
!1341 = !{!1342, !1345}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1340, file: !509, line: 161, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !509, line: 161, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1340, file: !509, line: 162, baseType: !95, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1268, file: !509, line: 176, baseType: !962, size: 128, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !509, line: 179, baseType: !1348, size: 32, offset: 384)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !509, line: 179, size: 32, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1348, file: !509, line: 184, baseType: !554, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1348, file: !509, line: 192, baseType: !7, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1348, file: !509, line: 194, baseType: !7, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1348, file: !509, line: 195, baseType: !98, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1264, file: !509, line: 199, baseType: !554, size: 32, offset: 416)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1260, file: !609, line: 67, baseType: !163, size: 32, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1260, file: !609, line: 68, baseType: !163, size: 32, offset: 96)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !675, file: !676, line: 1206, baseType: !98, size: 32, offset: 12736)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !675, file: !676, line: 1207, baseType: !98, size: 32, offset: 12768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !675, file: !676, line: 1209, baseType: !94, size: 64, offset: 12800)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !675, file: !676, line: 1219, baseType: !166, size: 64, offset: 12864)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !675, file: !676, line: 1220, baseType: !166, size: 64, offset: 12928)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !675, file: !676, line: 1317, baseType: !98, size: 32, offset: 12992)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !675, file: !676, line: 1319, baseType: !674, size: 64, offset: 13056)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !675, file: !676, line: 1322, baseType: !1365, size: 64, offset: 13120)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1367, line: 56, size: 512, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1375, !1376, !1377}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1366, file: !1367, line: 57, baseType: !1365, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1366, file: !1367, line: 58, baseType: !95, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1366, file: !1367, line: 59, baseType: !94, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1366, file: !1367, line: 60, baseType: !94, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1366, file: !1367, line: 61, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1366, file: !1367, line: 62, baseType: !7, size: 32, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1366, file: !1367, line: 63, baseType: !250, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1366, file: !1367, line: 64, baseType: !1378, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !675, file: !676, line: 1326, baseType: !687, size: 32, offset: 13184)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !675, file: !676, line: 1342, baseType: !95, size: 64, offset: 13248)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !675, file: !676, line: 1343, baseType: !167, size: 64, offset: 13312)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !675, file: !676, line: 1344, baseType: !166, size: 64, offset: 13376)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !675, file: !676, line: 1345, baseType: !167, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !675, file: !676, line: 1346, baseType: !167, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !675, file: !676, line: 1347, baseType: !167, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !675, file: !676, line: 1348, baseType: !962, size: 128, align: 64, offset: 13504)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !675, file: !676, line: 1358, baseType: !1389, size: 34816, offset: 13824)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1390, line: 485, size: 34816, elements: !1391)
!1390 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1421, !1422, !1423, !1424, !1425, !1426, !1429, !1430, !1431}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1389, file: !1390, line: 487, baseType: !1393, size: 192)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 192, elements: !431)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1395, line: 16, size: 64, elements: !1396)
!1395 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1394, file: !1395, line: 17, baseType: !138, size: 16)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1394, file: !1395, line: 18, baseType: !138, size: 16, offset: 16)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1394, file: !1395, line: 19, baseType: !138, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1394, file: !1395, line: 19, baseType: !138, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1394, file: !1395, line: 19, baseType: !138, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1394, file: !1395, line: 19, baseType: !138, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1394, file: !1395, line: 19, baseType: !138, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1394, file: !1395, line: 20, baseType: !138, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1394, file: !1395, line: 20, baseType: !138, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1394, file: !1395, line: 20, baseType: !138, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1394, file: !1395, line: 20, baseType: !138, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1394, file: !1395, line: 20, baseType: !138, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1394, file: !1395, line: 20, baseType: !138, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1389, file: !1390, line: 491, baseType: !94, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1389, file: !1390, line: 495, baseType: !142, size: 16, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1389, file: !1390, line: 496, baseType: !142, size: 16, offset: 272)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1389, file: !1390, line: 497, baseType: !142, size: 16, offset: 288)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1389, file: !1390, line: 498, baseType: !142, size: 16, offset: 304)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1389, file: !1390, line: 502, baseType: !94, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1389, file: !1390, line: 503, baseType: !94, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1389, file: !1390, line: 514, baseType: !1418, size: 256, offset: 448)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 256, elements: !613)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1390, line: 483, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1389, file: !1390, line: 516, baseType: !94, size: 64, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1389, file: !1390, line: 518, baseType: !94, size: 64, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1389, file: !1390, line: 520, baseType: !94, size: 64, offset: 832)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1389, file: !1390, line: 521, baseType: !94, size: 64, offset: 896)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1389, file: !1390, line: 522, baseType: !94, size: 64, offset: 960)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1389, file: !1390, line: 528, baseType: !1427, size: 64, offset: 1024)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1390, line: 10, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1389, file: !1390, line: 535, baseType: !94, size: 64, offset: 1088)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1389, file: !1390, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1389, file: !1390, line: 540, baseType: !1432, size: 33280, offset: 1536)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1433, line: 317, size: 33280, elements: !1434)
!1433 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !{!1435, !1436, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1432, file: !1433, line: 330, baseType: !7, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1432, file: !1433, line: 337, baseType: !94, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1432, file: !1433, line: 348, baseType: !1438, size: 32768, offset: 512)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1433, line: 304, size: 32768, elements: !1439)
!1439 = !{!1440, !1455, !1494, !1544, !1561}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1438, file: !1433, line: 305, baseType: !1441, size: 896)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1433, line: 12, size: 896, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1454}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1441, file: !1433, line: 13, baseType: !162, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1441, file: !1433, line: 14, baseType: !162, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1441, file: !1433, line: 15, baseType: !162, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1441, file: !1433, line: 16, baseType: !162, size: 32, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1441, file: !1433, line: 17, baseType: !162, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1441, file: !1433, line: 18, baseType: !162, size: 32, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1441, file: !1433, line: 19, baseType: !162, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1441, file: !1433, line: 22, baseType: !1451, size: 640, offset: 224)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 640, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 20)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1441, file: !1433, line: 25, baseType: !162, size: 32, offset: 864)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1438, file: !1433, line: 306, baseType: !1456, size: 4096, align: 128)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1433, line: 34, size: 4096, align: 128, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1477, !1478, !1479, !1483, !1485, !1489}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1456, file: !1433, line: 35, baseType: !138, size: 16)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1456, file: !1433, line: 36, baseType: !138, size: 16, offset: 16)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1456, file: !1433, line: 37, baseType: !138, size: 16, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1456, file: !1433, line: 38, baseType: !138, size: 16, offset: 48)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1433, line: 39, baseType: !1463, size: 128, offset: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1433, line: 39, size: 128, elements: !1464)
!1464 = !{!1465, !1470}
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1433, line: 40, baseType: !1466, size: 128)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !1433, line: 40, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1466, file: !1433, line: 41, baseType: !166, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1466, file: !1433, line: 42, baseType: !166, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1433, line: 44, baseType: !1471, size: 128)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !1433, line: 44, size: 128, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1471, file: !1433, line: 45, baseType: !162, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1471, file: !1433, line: 46, baseType: !162, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1471, file: !1433, line: 47, baseType: !162, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1471, file: !1433, line: 48, baseType: !162, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1456, file: !1433, line: 51, baseType: !162, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1456, file: !1433, line: 52, baseType: !162, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1456, file: !1433, line: 55, baseType: !1480, size: 1024, offset: 256)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !1481)
!1481 = !{!1482}
!1482 = !DISubrange(count: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1456, file: !1433, line: 58, baseType: !1484, size: 2048, offset: 1280)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2048, elements: !125)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1456, file: !1433, line: 60, baseType: !1486, size: 384, offset: 3328)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 12)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1433, line: 62, baseType: !1490, size: 384, offset: 3712)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1456, file: !1433, line: 62, size: 384, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1490, file: !1433, line: 63, baseType: !1486, size: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1490, file: !1433, line: 64, baseType: !1486, size: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1438, file: !1433, line: 307, baseType: !1495, size: 1088)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1433, line: 79, size: 1088, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1543}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1495, file: !1433, line: 80, baseType: !162, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1495, file: !1433, line: 81, baseType: !162, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1495, file: !1433, line: 82, baseType: !162, size: 32, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1495, file: !1433, line: 83, baseType: !162, size: 32, offset: 96)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1495, file: !1433, line: 84, baseType: !162, size: 32, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1495, file: !1433, line: 85, baseType: !162, size: 32, offset: 160)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1495, file: !1433, line: 86, baseType: !162, size: 32, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1495, file: !1433, line: 88, baseType: !1451, size: 640, offset: 224)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1495, file: !1433, line: 89, baseType: !283, size: 8, offset: 864)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1495, file: !1433, line: 90, baseType: !283, size: 8, offset: 872)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1495, file: !1433, line: 91, baseType: !283, size: 8, offset: 880)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1495, file: !1433, line: 92, baseType: !283, size: 8, offset: 888)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1495, file: !1433, line: 93, baseType: !283, size: 8, offset: 896)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1495, file: !1433, line: 94, baseType: !283, size: 8, offset: 904)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1495, file: !1433, line: 95, baseType: !1512, size: 64, offset: 960)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1514, line: 11, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1513, file: !1514, line: 12, baseType: !104, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1513, file: !1514, line: 13, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1520, line: 56, size: 1344, elements: !1521)
!1520 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1519, file: !1520, line: 61, baseType: !94, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1519, file: !1520, line: 62, baseType: !94, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1519, file: !1520, line: 63, baseType: !94, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1519, file: !1520, line: 64, baseType: !94, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1519, file: !1520, line: 65, baseType: !94, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1519, file: !1520, line: 66, baseType: !94, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1519, file: !1520, line: 68, baseType: !94, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1519, file: !1520, line: 69, baseType: !94, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1519, file: !1520, line: 70, baseType: !94, size: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1519, file: !1520, line: 71, baseType: !94, size: 64, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1519, file: !1520, line: 72, baseType: !94, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1519, file: !1520, line: 73, baseType: !94, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1519, file: !1520, line: 74, baseType: !94, size: 64, offset: 768)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1519, file: !1520, line: 75, baseType: !94, size: 64, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1519, file: !1520, line: 76, baseType: !94, size: 64, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1519, file: !1520, line: 81, baseType: !94, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1519, file: !1520, line: 83, baseType: !94, size: 64, offset: 1024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1519, file: !1520, line: 84, baseType: !94, size: 64, offset: 1088)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !1520, line: 85, baseType: !94, size: 64, offset: 1152)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1519, file: !1520, line: 86, baseType: !94, size: 64, offset: 1216)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1519, file: !1520, line: 87, baseType: !94, size: 64, offset: 1280)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1495, file: !1433, line: 96, baseType: !162, size: 32, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1438, file: !1433, line: 308, baseType: !1545, size: 4608, align: 512)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1433, line: 289, size: 4608, align: 512, elements: !1546)
!1546 = !{!1547, !1548, !1557}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1545, file: !1433, line: 290, baseType: !1456, size: 4096, align: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1545, file: !1433, line: 291, baseType: !1549, size: 512, offset: 4096)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1433, line: 268, size: 512, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1549, file: !1433, line: 269, baseType: !166, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1549, file: !1433, line: 270, baseType: !166, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1549, file: !1433, line: 271, baseType: !1554, size: 384, offset: 128)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 384, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 6)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1545, file: !1433, line: 292, baseType: !1558, offset: 4608)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 0)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1438, file: !1433, line: 309, baseType: !1562, size: 32768)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 32768, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 4096)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !509, line: 378, baseType: !1566, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !667, file: !509, line: 384, baseType: !984, size: 192, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !529, file: !509, line: 500, baseType: !389, offset: 6656)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !529, file: !509, line: 501, baseType: !1570, size: 64, offset: 6656)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !509, line: 387, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !529, file: !509, line: 516, baseType: !1573, size: 64, offset: 6720)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !509, line: 516, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !529, file: !509, line: 519, baseType: !499, size: 64, offset: 6784)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !529, file: !509, line: 521, baseType: !1577, size: 64, offset: 6848)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !509, line: 521, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !529, file: !509, line: 545, baseType: !554, size: 32, offset: 6912)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !529, file: !509, line: 548, baseType: !340, size: 8, offset: 6944)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !529, file: !509, line: 550, baseType: !1582, offset: 6952)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1583, line: 142, elements: !403)
!1583 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !529, file: !509, line: 554, baseType: !1585, size: 256, offset: 6976)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1586, line: 102, size: 256, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1585, file: !1586, line: 103, baseType: !562, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1585, file: !1586, line: 104, baseType: !376, size: 128, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1585, file: !1586, line: 105, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1586, line: 21, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !529, file: !509, line: 557, baseType: !162, size: 32, offset: 7232)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !526, file: !509, line: 565, baseType: !1598, offset: 7296)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !1599)
!1599 = !{!1600}
!1600 = !DISubrange(count: -1)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !508, file: !509, line: 333, baseType: !1602, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !501, line: 284, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !501, line: 284, size: 64, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1603, file: !501, line: 284, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !552, line: 19, baseType: !94)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !508, file: !509, line: 334, baseType: !94, size: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !508, file: !509, line: 343, baseType: !1609, size: 256, offset: 704)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !509, line: 340, size: 256, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1609, file: !509, line: 341, baseType: !516, size: 192, align: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1609, file: !509, line: 342, baseType: !94, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !508, file: !509, line: 351, baseType: !376, size: 128, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !508, file: !509, line: 353, baseType: !1615, size: 64, offset: 1088)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !509, line: 353, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !508, file: !509, line: 356, baseType: !1618, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !509, line: 356, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !508, file: !509, line: 359, baseType: !94, size: 64, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !508, file: !509, line: 361, baseType: !499, size: 64, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !508, file: !509, line: 362, baseType: !95, size: 64, offset: 1344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !508, file: !509, line: 365, baseType: !562, size: 64, offset: 1408)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !508, file: !509, line: 373, baseType: !1626, offset: 1472)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !509, line: 296, elements: !403)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !478, file: !453, line: 90, baseType: !473, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !478, file: !453, line: 91, baseType: !1629, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !443, file: !372, line: 143, baseType: !1631, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1634, !382}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1637)
!1637 = !{!1638, !1639, !1643, !1647, !1653, !1657}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1636, file: !18, line: 40, baseType: !17, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1636, file: !18, line: 41, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!340}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1636, file: !18, line: 42, baseType: !1644, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!95}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1636, file: !18, line: 43, baseType: !1648, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1378, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1636, file: !18, line: 44, baseType: !1654, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1378}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1636, file: !18, line: 45, baseType: !1658, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !95}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !443, file: !372, line: 144, baseType: !1662, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!1378, !382}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !443, file: !372, line: 145, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !382, !1669, !1676}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1671, line: 23, baseType: !1672)
!1671 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1671, line: 21, size: 32, elements: !1673)
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1672, file: !1671, line: 22, baseType: !1675, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !97, line: 32, baseType: !1146)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1671, line: 28, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1671, line: 26, size: 32, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1678, file: !1671, line: 27, baseType: !1681, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !97, line: 33, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !107, line: 50, baseType: !7)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !371, file: !372, line: 70, baseType: !1684, size: 64, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1686, line: 123, size: 1024, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1829, !1830, !1831, !1832, !1833}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1685, file: !1686, line: 124, baseType: !554, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1685, file: !1686, line: 125, baseType: !554, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1685, file: !1686, line: 135, baseType: !1684, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1685, file: !1686, line: 136, baseType: !180, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1685, file: !1686, line: 138, baseType: !516, size: 192, align: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1685, file: !1686, line: 140, baseType: !1378, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1685, file: !1686, line: 141, baseType: !7, size: 32, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !1686, line: 142, baseType: !1696, size: 256, offset: 512)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !1686, line: 142, size: 256, elements: !1697)
!1697 = !{!1698, !1752, !1756}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1696, file: !1686, line: 143, baseType: !1699, size: 192)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1686, line: 91, size: 192, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1699, file: !1686, line: 92, baseType: !94, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1699, file: !1686, line: 94, baseType: !533, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1699, file: !1686, line: 100, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1686, line: 180, size: 704, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1722, !1723, !1724, !1750, !1751}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1705, file: !1686, line: 182, baseType: !1684, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1705, file: !1686, line: 183, baseType: !7, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1705, file: !1686, line: 186, baseType: !1710, size: 192, offset: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1711, line: 19, size: 192, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1720, !1721}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1710, file: !1711, line: 20, baseType: !1714, size: 128)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1715, line: 292, size: 128, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1714, file: !1715, line: 293, baseType: !389)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1714, file: !1715, line: 295, baseType: !96, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1714, file: !1715, line: 296, baseType: !95, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1710, file: !1711, line: 21, baseType: !7, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1710, file: !1711, line: 22, baseType: !7, size: 32, offset: 160)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1705, file: !1686, line: 187, baseType: !162, size: 32, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1705, file: !1686, line: 188, baseType: !162, size: 32, offset: 352)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1705, file: !1686, line: 189, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1686, line: 168, size: 320, elements: !1727)
!1727 = !{!1728, !1734, !1738, !1742, !1746}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1726, file: !1686, line: 169, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!98, !1732, !1704}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !501, line: 539, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1726, file: !1686, line: 171, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!98, !1684, !180, !467}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1726, file: !1686, line: 173, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!98, !1684}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1726, file: !1686, line: 174, baseType: !1743, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!98, !1684, !1684, !180}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1726, file: !1686, line: 176, baseType: !1747, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!98, !1732, !1684, !1704}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1705, file: !1686, line: 192, baseType: !376, size: 128, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1705, file: !1686, line: 194, baseType: !955, size: 128, offset: 576)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1696, file: !1686, line: 144, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1686, line: 103, size: 64, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1753, file: !1686, line: 104, baseType: !1684, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1696, file: !1686, line: 145, baseType: !1757, size: 256)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1686, line: 107, size: 256, elements: !1758)
!1758 = !{!1759, !1824, !1827, !1828}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1757, file: !1686, line: 108, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1686, line: 217, size: 768, elements: !1763)
!1763 = !{!1764, !1784, !1788, !1792, !1797, !1801, !1805, !1809, !1810, !1811, !1812, !1820}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1762, file: !1686, line: 222, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!98, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1686, line: 197, size: 1088, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1769, file: !1686, line: 199, baseType: !1684, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1769, file: !1686, line: 200, baseType: !499, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1769, file: !1686, line: 201, baseType: !1732, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1769, file: !1686, line: 202, baseType: !95, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1769, file: !1686, line: 205, baseType: !631, size: 192, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1769, file: !1686, line: 206, baseType: !631, size: 192, offset: 448)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1769, file: !1686, line: 207, baseType: !98, size: 32, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1769, file: !1686, line: 208, baseType: !376, size: 128, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1769, file: !1686, line: 209, baseType: !430, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1769, file: !1686, line: 211, baseType: !105, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1769, file: !1686, line: 212, baseType: !340, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1769, file: !1686, line: 213, baseType: !340, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1769, file: !1686, line: 214, baseType: !1618, size: 64, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1762, file: !1686, line: 223, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1768}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1762, file: !1686, line: 236, baseType: !1789, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!98, !1732, !95}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1762, file: !1686, line: 238, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!95, !1732, !1796}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1762, file: !1686, line: 239, baseType: !1798, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!95, !1732, !95, !1796}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1762, file: !1686, line: 240, baseType: !1802, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1732, !95}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1762, file: !1686, line: 242, baseType: !1806, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!459, !1768, !430, !105, !243}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1762, file: !1686, line: 252, baseType: !105, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1762, file: !1686, line: 259, baseType: !340, size: 8, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1762, file: !1686, line: 260, baseType: !1806, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1762, file: !1686, line: 263, baseType: !1813, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1816, !1768, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1817, line: 52, baseType: !7)
!1817 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1686, line: 27, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1762, file: !1686, line: 266, baseType: !1821, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!98, !1768, !507}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1757, file: !1686, line: 109, baseType: !1825, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1686, line: 31, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1757, file: !1686, line: 110, baseType: !243, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1757, file: !1686, line: 111, baseType: !1684, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1685, file: !1686, line: 148, baseType: !95, size: 64, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1685, file: !1686, line: 154, baseType: !166, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !1686, line: 156, baseType: !142, size: 16, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1685, file: !1686, line: 157, baseType: !467, size: 16, offset: 912)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1685, file: !1686, line: 158, baseType: !1834, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1686, line: 32, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !371, file: !372, line: 71, baseType: !1837, size: 32, offset: 448)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1838, line: 19, size: 32, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1837, file: !1838, line: 20, baseType: !687, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !371, file: !372, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !371, file: !372, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !371, file: !372, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !371, file: !372, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !371, file: !372, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !368, file: !30, line: 463, baseType: !1847, size: 64, offset: 512)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !368, file: !30, line: 465, baseType: !1849, size: 64, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !368, file: !30, line: 467, baseType: !180, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !30, line: 468, baseType: !1853, size: 64, offset: 704)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1863, !1868, !1872}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1855, file: !30, line: 88, baseType: !180, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1855, file: !30, line: 89, baseType: !475, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1855, file: !30, line: 90, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!98, !1847, !425}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1855, file: !30, line: 91, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!430, !1847, !1867, !1669, !1676}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1855, file: !30, line: 93, baseType: !1869, size: 64, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1847}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1855, file: !30, line: 95, baseType: !1873, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1876)
!1876 = !{!1877, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1875, file: !37, line: 279, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!98, !1847}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1875, file: !37, line: 280, baseType: !1869, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1875, file: !37, line: 281, baseType: !1878, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1875, file: !37, line: 282, baseType: !1878, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1875, file: !37, line: 283, baseType: !1878, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1875, file: !37, line: 284, baseType: !1878, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1875, file: !37, line: 285, baseType: !1878, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1875, file: !37, line: 286, baseType: !1878, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1875, file: !37, line: 287, baseType: !1878, size: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1875, file: !37, line: 288, baseType: !1878, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1875, file: !37, line: 289, baseType: !1878, size: 64, offset: 640)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1875, file: !37, line: 290, baseType: !1878, size: 64, offset: 704)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1875, file: !37, line: 291, baseType: !1878, size: 64, offset: 768)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1875, file: !37, line: 292, baseType: !1878, size: 64, offset: 832)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1875, file: !37, line: 293, baseType: !1878, size: 64, offset: 896)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1875, file: !37, line: 294, baseType: !1878, size: 64, offset: 960)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1875, file: !37, line: 295, baseType: !1878, size: 64, offset: 1024)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1875, file: !37, line: 296, baseType: !1878, size: 64, offset: 1088)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1875, file: !37, line: 297, baseType: !1878, size: 64, offset: 1152)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1875, file: !37, line: 298, baseType: !1878, size: 64, offset: 1216)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1875, file: !37, line: 299, baseType: !1878, size: 64, offset: 1280)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1875, file: !37, line: 300, baseType: !1878, size: 64, offset: 1344)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1875, file: !37, line: 301, baseType: !1878, size: 64, offset: 1408)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !368, file: !30, line: 470, baseType: !1904, size: 64, offset: 768)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1906, line: 82, size: 1408, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913, !1914, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1990, !1993, !1996}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1905, file: !1906, line: 83, baseType: !180, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1905, file: !1906, line: 84, baseType: !180, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1905, file: !1906, line: 85, baseType: !1847, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1905, file: !1906, line: 86, baseType: !475, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1905, file: !1906, line: 87, baseType: !475, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1905, file: !1906, line: 88, baseType: !475, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1905, file: !1906, line: 90, baseType: !1915, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!98, !1847, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1941, !1954, !1955, !1956, !1957, !1958, !1966, !1967, !1968, !1969, !1970, !1971}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1919, file: !24, line: 96, baseType: !180, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1919, file: !24, line: 97, baseType: !1904, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1919, file: !24, line: 99, baseType: !364, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1919, file: !24, line: 100, baseType: !180, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1919, file: !24, line: 102, baseType: !340, size: 8, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1919, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1919, file: !24, line: 105, baseType: !1928, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1931, line: 262, size: 1600, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1935, !1936, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1930, file: !1931, line: 263, baseType: !1934, size: 256)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !1481)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1930, file: !1931, line: 264, baseType: !1934, size: 256, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1930, file: !1931, line: 265, baseType: !1937, size: 1024, offset: 512)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1024, elements: !1938)
!1938 = !{!1939}
!1939 = !DISubrange(count: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1930, file: !1931, line: 266, baseType: !1378, size: 64, offset: 1536)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1919, file: !24, line: 106, baseType: !1942, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1931, line: 210, size: 256, elements: !1945)
!1945 = !{!1946, !1950, !1952, !1953}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1944, file: !1931, line: 211, baseType: !1947, size: 72)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 72, elements: !1948)
!1948 = !{!1949}
!1949 = !DISubrange(count: 9)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1944, file: !1931, line: 212, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1931, line: 14, baseType: !94)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1944, file: !1931, line: 213, baseType: !163, size: 32, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1944, file: !1931, line: 214, baseType: !163, size: 32, offset: 224)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1919, file: !24, line: 108, baseType: !1878, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1919, file: !24, line: 109, baseType: !1869, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1919, file: !24, line: 110, baseType: !1878, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1919, file: !24, line: 111, baseType: !1869, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1919, file: !24, line: 112, baseType: !1959, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!98, !1847, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1963)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1963, file: !37, line: 51, baseType: !98, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1919, file: !24, line: 113, baseType: !1878, size: 64, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1919, file: !24, line: 114, baseType: !475, size: 64, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1919, file: !24, line: 115, baseType: !475, size: 64, offset: 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1919, file: !24, line: 117, baseType: !1873, size: 64, offset: 960)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1919, file: !24, line: 118, baseType: !1869, size: 64, offset: 1024)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1919, file: !24, line: 120, baseType: !1972, size: 64, offset: 1088)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1905, file: !1906, line: 91, baseType: !1860, size: 64, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1905, file: !1906, line: 92, baseType: !1878, size: 64, offset: 512)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1905, file: !1906, line: 93, baseType: !1869, size: 64, offset: 576)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1905, file: !1906, line: 94, baseType: !1878, size: 64, offset: 640)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1905, file: !1906, line: 95, baseType: !1869, size: 64, offset: 704)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1905, file: !1906, line: 97, baseType: !1878, size: 64, offset: 768)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1905, file: !1906, line: 98, baseType: !1878, size: 64, offset: 832)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1905, file: !1906, line: 100, baseType: !1959, size: 64, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1905, file: !1906, line: 101, baseType: !1878, size: 64, offset: 960)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1905, file: !1906, line: 103, baseType: !1878, size: 64, offset: 1024)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1905, file: !1906, line: 105, baseType: !1878, size: 64, offset: 1088)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1905, file: !1906, line: 107, baseType: !1873, size: 64, offset: 1152)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1905, file: !1906, line: 109, baseType: !1987, size: 64, offset: 1216)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1906, line: 109, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1905, file: !1906, line: 111, baseType: !1991, size: 64, offset: 1280)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1906, line: 111, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1905, file: !1906, line: 112, baseType: !1994, offset: 1344)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1995, line: 187, elements: !403)
!1995 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1905, file: !1906, line: 114, baseType: !340, size: 8, offset: 1344)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !368, file: !30, line: 471, baseType: !1918, size: 64, offset: 832)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !368, file: !30, line: 473, baseType: !95, size: 64, offset: 896)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !368, file: !30, line: 475, baseType: !95, size: 64, offset: 960)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !368, file: !30, line: 480, baseType: !631, size: 192, offset: 1024)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !368, file: !30, line: 484, baseType: !2002, size: 576, offset: 1216)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2002, file: !30, line: 362, baseType: !376, size: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2002, file: !30, line: 363, baseType: !376, size: 128, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2002, file: !30, line: 364, baseType: !376, size: 128, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2002, file: !30, line: 365, baseType: !376, size: 128, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2002, file: !30, line: 366, baseType: !340, size: 8, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2002, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !368, file: !30, line: 485, baseType: !2011, size: 2304, offset: 1792)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2108, !2112}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2011, file: !37, line: 566, baseType: !1962, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2011, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2011, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2011, file: !37, line: 569, baseType: !340, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2011, file: !37, line: 570, baseType: !340, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2011, file: !37, line: 571, baseType: !340, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2011, file: !37, line: 572, baseType: !340, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2011, file: !37, line: 573, baseType: !340, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2011, file: !37, line: 574, baseType: !340, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2011, file: !37, line: 575, baseType: !340, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2011, file: !37, line: 576, baseType: !340, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2011, file: !37, line: 577, baseType: !162, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2011, file: !37, line: 578, baseType: !389, offset: 96)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2011, file: !37, line: 580, baseType: !376, size: 128, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2011, file: !37, line: 581, baseType: !984, size: 192, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2011, file: !37, line: 582, baseType: !2029, size: 64, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2031, line: 43, size: 1472, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2040, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2030, file: !2031, line: 44, baseType: !180, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2030, file: !2031, line: 45, baseType: !98, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2030, file: !2031, line: 46, baseType: !376, size: 128, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2030, file: !2031, line: 47, baseType: !389, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2030, file: !2031, line: 48, baseType: !2038, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2030, file: !2031, line: 49, baseType: !2041, size: 320, offset: 320)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2042, line: 11, size: 320, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !{!2044, !2045, !2046, !2051}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2041, file: !2042, line: 16, baseType: !948, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2041, file: !2042, line: 17, baseType: !94, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2041, file: !2042, line: 18, baseType: !2047, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2042, line: 19, baseType: !162, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2030, file: !2031, line: 50, baseType: !94, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2030, file: !2031, line: 51, baseType: !757, size: 64, offset: 704)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2030, file: !2031, line: 52, baseType: !757, size: 64, offset: 768)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2030, file: !2031, line: 53, baseType: !757, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2030, file: !2031, line: 54, baseType: !757, size: 64, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2030, file: !2031, line: 55, baseType: !757, size: 64, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2030, file: !2031, line: 56, baseType: !94, size: 64, offset: 1024)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2030, file: !2031, line: 57, baseType: !94, size: 64, offset: 1088)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2030, file: !2031, line: 58, baseType: !94, size: 64, offset: 1152)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2030, file: !2031, line: 59, baseType: !94, size: 64, offset: 1216)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2030, file: !2031, line: 60, baseType: !94, size: 64, offset: 1280)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2030, file: !2031, line: 61, baseType: !1847, size: 64, offset: 1344)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2030, file: !2031, line: 62, baseType: !340, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2030, file: !2031, line: 63, baseType: !340, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2011, file: !37, line: 583, baseType: !340, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2011, file: !37, line: 584, baseType: !340, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2011, file: !37, line: 585, baseType: !340, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2011, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2011, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2011, file: !37, line: 592, baseType: !749, size: 512, offset: 576)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2011, file: !37, line: 593, baseType: !166, size: 64, offset: 1088)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2011, file: !37, line: 594, baseType: !1585, size: 256, offset: 1152)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2011, file: !37, line: 595, baseType: !955, size: 128, offset: 1408)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2011, file: !37, line: 596, baseType: !2038, size: 64, offset: 1536)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2011, file: !37, line: 597, baseType: !554, size: 32, offset: 1600)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2011, file: !37, line: 598, baseType: !554, size: 32, offset: 1632)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2011, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2011, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2011, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2011, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2011, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2011, file: !37, line: 604, baseType: !340, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2011, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2011, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2011, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2011, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2011, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2011, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2011, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2011, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2011, file: !37, line: 613, baseType: !98, size: 32, offset: 1792)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2011, file: !37, line: 614, baseType: !98, size: 32, offset: 1824)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2011, file: !37, line: 615, baseType: !166, size: 64, offset: 1856)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2011, file: !37, line: 616, baseType: !166, size: 64, offset: 1920)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2011, file: !37, line: 617, baseType: !166, size: 64, offset: 1984)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2011, file: !37, line: 618, baseType: !166, size: 64, offset: 2048)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2011, file: !37, line: 620, baseType: !2099, size: 64, offset: 2112)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2100, file: !37, line: 537, baseType: !389)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2100, file: !37, line: 538, baseType: !7, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2100, file: !37, line: 540, baseType: !376, size: 128, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2100, file: !37, line: 543, baseType: !2106, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2011, file: !37, line: 621, baseType: !2109, size: 64, offset: 2176)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !1847, !908}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2011, file: !37, line: 622, baseType: !2113, size: 64, offset: 2240)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !368, file: !30, line: 486, baseType: !2116, size: 64, offset: 4096)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2125, !2126, !2127}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2117, file: !37, line: 643, baseType: !1875, size: 1472)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2117, file: !37, line: 644, baseType: !1878, size: 64, offset: 1472)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2117, file: !37, line: 645, baseType: !2122, size: 64, offset: 1536)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !1847, !340}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2117, file: !37, line: 646, baseType: !1878, size: 64, offset: 1600)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2117, file: !37, line: 647, baseType: !1869, size: 64, offset: 1664)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2117, file: !37, line: 648, baseType: !1869, size: 64, offset: 1728)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !368, file: !30, line: 493, baseType: !2129, size: 64, offset: 4160)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !368, file: !30, line: 499, baseType: !376, size: 128, offset: 4224)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !368, file: !30, line: 502, baseType: !2133, size: 64, offset: 4352)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !368, file: !30, line: 504, baseType: !2137, size: 64, offset: 4416)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !368, file: !30, line: 505, baseType: !166, size: 64, offset: 4480)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !368, file: !30, line: 510, baseType: !166, size: 64, offset: 4544)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !368, file: !30, line: 511, baseType: !2141, size: 64, offset: 4608)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !368, file: !30, line: 513, baseType: !2145, size: 64, offset: 4672)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2147)
!2147 = !{!2148, !2149}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2146, file: !30, line: 293, baseType: !7, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2146, file: !30, line: 294, baseType: !94, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !368, file: !30, line: 515, baseType: !376, size: 128, offset: 4736)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !368, file: !30, line: 526, baseType: !2152, offset: 4864)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2153, line: 5, elements: !403)
!2153 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !368, file: !30, line: 528, baseType: !2155, size: 64, offset: 4864)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2157, line: 51, size: 1344, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159, !2160, !2162, !2163, !2253, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2156, file: !2157, line: 52, baseType: !180, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2156, file: !2157, line: 53, baseType: !2161, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2157, line: 28, baseType: !162)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2156, file: !2157, line: 54, baseType: !180, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2156, file: !2157, line: 55, baseType: !2164, size: 192, offset: 192)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2165, line: 17, size: 192, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2169, !2252}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2164, file: !2165, line: 18, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2164, file: !2165, line: 19, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2165, line: 110, size: 1152, elements: !2173)
!2173 = !{!2174, !2178, !2182, !2188, !2194, !2198, !2202, !2207, !2211, !2212, !2216, !2220, !2224, !2235, !2236, !2237, !2238, !2248}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2172, file: !2165, line: 111, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2168, !2168}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2172, file: !2165, line: 112, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2168}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2172, file: !2165, line: 113, baseType: !2183, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!340, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2172, file: !2165, line: 114, baseType: !2189, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!1378, !2186, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2172, file: !2165, line: 116, baseType: !2195, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!340, !2186, !180}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2172, file: !2165, line: 118, baseType: !2199, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!98, !2186, !180, !7, !95, !105}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2172, file: !2165, line: 123, baseType: !2203, size: 64, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!98, !2186, !180, !2206, !105}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2172, file: !2165, line: 126, baseType: !2208, size: 64, offset: 448)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!180, !2186}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2172, file: !2165, line: 127, baseType: !2208, size: 64, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2172, file: !2165, line: 128, baseType: !2213, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2168, !2186}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2172, file: !2165, line: 130, baseType: !2217, size: 64, offset: 640)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2168, !2186, !2168}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2172, file: !2165, line: 133, baseType: !2221, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!2168, !2186, !180}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2172, file: !2165, line: 135, baseType: !2225, size: 64, offset: 768)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!98, !2186, !180, !180, !7, !7, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2165, line: 43, size: 640, elements: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2229, file: !2165, line: 44, baseType: !2168, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2229, file: !2165, line: 45, baseType: !7, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2229, file: !2165, line: 46, baseType: !2234, size: 512, offset: 128)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 512, elements: !787)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2172, file: !2165, line: 140, baseType: !2217, size: 64, offset: 832)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2172, file: !2165, line: 143, baseType: !2213, size: 64, offset: 896)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2172, file: !2165, line: 145, baseType: !2175, size: 64, offset: 960)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2172, file: !2165, line: 146, baseType: !2239, size: 64, offset: 1024)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!98, !2186, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2165, line: 29, size: 128, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2243, file: !2165, line: 30, baseType: !7, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2243, file: !2165, line: 31, baseType: !7, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2243, file: !2165, line: 32, baseType: !2186, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2172, file: !2165, line: 148, baseType: !2249, size: 64, offset: 1088)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!98, !2186, !1847}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2164, file: !2165, line: 20, baseType: !1847, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2156, file: !2157, line: 57, baseType: !2254, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2157, line: 31, size: 704, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2255, file: !2157, line: 32, baseType: !430, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2255, file: !2157, line: 33, baseType: !98, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2255, file: !2157, line: 34, baseType: !95, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2255, file: !2157, line: 35, baseType: !2254, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2255, file: !2157, line: 43, baseType: !490, size: 448, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2156, file: !2157, line: 58, baseType: !2254, size: 64, offset: 448)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2156, file: !2157, line: 59, baseType: !2155, size: 64, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2156, file: !2157, line: 60, baseType: !2155, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2156, file: !2157, line: 61, baseType: !2155, size: 64, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2156, file: !2157, line: 63, baseType: !371, size: 512, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2156, file: !2157, line: 65, baseType: !94, size: 64, offset: 1216)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2156, file: !2157, line: 66, baseType: !95, size: 64, offset: 1280)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !368, file: !30, line: 529, baseType: !2168, size: 64, offset: 4928)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !368, file: !30, line: 534, baseType: !2271, size: 32, offset: 4992)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !97, line: 16, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !97, line: 13, baseType: !162)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !368, file: !30, line: 535, baseType: !162, size: 32, offset: 5024)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !368, file: !30, line: 537, baseType: !389, offset: 5056)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !368, file: !30, line: 538, baseType: !376, size: 128, offset: 5056)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !368, file: !30, line: 540, baseType: !2277, size: 64, offset: 5184)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2279, line: 54, size: 960, elements: !2280)
!2279 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2291, !2295, !2296, !2297, !2298, !2302, !2306, !2307}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2278, file: !2279, line: 55, baseType: !180, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2278, file: !2279, line: 56, baseType: !364, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2278, file: !2279, line: 58, baseType: !475, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2278, file: !2279, line: 59, baseType: !475, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2278, file: !2279, line: 60, baseType: !382, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2278, file: !2279, line: 62, baseType: !1860, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2278, file: !2279, line: 63, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!430, !1847, !1867}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2278, file: !2279, line: 65, baseType: !2292, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2277}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2278, file: !2279, line: 66, baseType: !1869, size: 64, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2278, file: !2279, line: 68, baseType: !1878, size: 64, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2278, file: !2279, line: 70, baseType: !1634, size: 64, offset: 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2278, file: !2279, line: 71, baseType: !2299, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!1378, !1847}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2278, file: !2279, line: 73, baseType: !2303, size: 64, offset: 768)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !1847, !1669, !1676}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2278, file: !2279, line: 75, baseType: !1873, size: 64, offset: 832)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2278, file: !2279, line: 77, baseType: !1991, size: 64, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !368, file: !30, line: 541, baseType: !475, size: 64, offset: 5248)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !368, file: !30, line: 543, baseType: !1869, size: 64, offset: 5312)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !368, file: !30, line: 544, baseType: !2311, size: 64, offset: 5376)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !368, file: !30, line: 545, baseType: !2314, size: 64, offset: 5440)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !368, file: !30, line: 547, baseType: !340, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !368, file: !30, line: 548, baseType: !340, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !368, file: !30, line: 549, baseType: !340, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !368, file: !30, line: 550, baseType: !340, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !154, file: !155, line: 376, baseType: !98, size: 32, offset: 8832)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !154, file: !155, line: 377, baseType: !2322, size: 192, offset: 8896)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !155, line: 191, size: 192, elements: !2323)
!2323 = !{!2324, !2327, !2328}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2322, file: !155, line: 192, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1686, line: 21, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2322, file: !155, line: 194, baseType: !180, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2322, file: !155, line: 195, baseType: !180, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !154, file: !155, line: 378, baseType: !2330, size: 64, offset: 9088)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2332, line: 16, flags: DIFlagFwdDecl)
!2332 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !155, line: 386, baseType: !153, size: 64, offset: 9152)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !154, file: !155, line: 389, baseType: !376, size: 128, offset: 9216)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !155, line: 391, baseType: !2336, size: 320, offset: 9344)
!2336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !155, line: 391, size: 320, elements: !2337)
!2337 = !{!2338, !2345}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2336, file: !155, line: 392, baseType: !2339, size: 320)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !155, line: 211, size: 320, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2339, file: !155, line: 212, baseType: !376, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2339, file: !155, line: 213, baseType: !166, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2339, file: !155, line: 214, baseType: !166, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2339, file: !155, line: 215, baseType: !162, size: 32, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2336, file: !155, line: 393, baseType: !2346, size: 256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !155, line: 230, size: 256, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2346, file: !155, line: 231, baseType: !631, size: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2346, file: !155, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_info", file: !2352, line: 191, size: 1152, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/mtd/map.h", directory: "/home/lizy2001/genbc/linux")
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2369, !2373, !2378, !2382, !2386, !2390, !2391, !2392, !2393, !2394, !2395}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2351, file: !2352, line: 192, baseType: !180, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2351, file: !2352, line: 193, baseType: !94, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !2351, file: !2352, line: 194, baseType: !249, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !2351, file: !2352, line: 197, baseType: !95, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !2351, file: !2352, line: 198, baseType: !95, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2351, file: !2352, line: 200, baseType: !98, size: 32, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "bankwidth", scope: !2351, file: !2352, line: 201, baseType: !98, size: 32, offset: 352)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2351, file: !2352, line: 207, baseType: !2362, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2365, !2350, !94}
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "map_word", file: !2352, line: 171, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2352, line: 169, size: 64, elements: !2367)
!2367 = !{!2368}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2366, file: !2352, line: 170, baseType: !834, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "copy_from", scope: !2351, file: !2352, line: 208, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2350, !95, !94, !459}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2351, file: !2352, line: 210, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2350, !2377, !94}
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to", scope: !2351, file: !2352, line: 211, baseType: !2379, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2350, !94, !1378, !459}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "inval_cache", scope: !2351, file: !2352, line: 222, baseType: !2383, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !2350, !94, !459}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "set_vpp", scope: !2351, file: !2352, line: 229, baseType: !2387, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !2350, !98}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pfow_base", scope: !2351, file: !2352, line: 231, baseType: !94, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_1", scope: !2351, file: !2352, line: 232, baseType: !94, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_2", scope: !2351, file: !2352, line: 233, baseType: !94, size: 64, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !2351, file: !2352, line: 234, baseType: !2155, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv_priv", scope: !2351, file: !2352, line: 235, baseType: !95, size: 64, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv", scope: !2351, file: !2352, line: 236, baseType: !2396, size: 64, offset: 1088)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_chip_driver", file: !2352, line: 239, size: 384, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2397, file: !2352, line: 240, baseType: !150, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2397, file: !2352, line: 241, baseType: !315, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2397, file: !2352, line: 242, baseType: !364, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2397, file: !2352, line: 243, baseType: !430, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2397, file: !2352, line: 244, baseType: !376, size: 128, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cfiq", scope: !133, file: !134, line: 282, baseType: !2405, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_ident", file: !134, line: 119, size: 232, elements: !2407)
!2407 = !{!2408, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "qry", scope: !2406, file: !134, line: 120, baseType: !2409, size: 24)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 24, elements: !431)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "P_ID", scope: !2406, file: !134, line: 121, baseType: !137, size: 16, offset: 24)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "P_ADR", scope: !2406, file: !134, line: 122, baseType: !137, size: 16, offset: 40)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "A_ID", scope: !2406, file: !134, line: 123, baseType: !137, size: 16, offset: 56)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "A_ADR", scope: !2406, file: !134, line: 124, baseType: !137, size: 16, offset: 72)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "VccMin", scope: !2406, file: !134, line: 125, baseType: !282, size: 8, offset: 88)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "VccMax", scope: !2406, file: !134, line: 126, baseType: !282, size: 8, offset: 96)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "VppMin", scope: !2406, file: !134, line: 127, baseType: !282, size: 8, offset: 104)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "VppMax", scope: !2406, file: !134, line: 128, baseType: !282, size: 8, offset: 112)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "WordWriteTimeoutTyp", scope: !2406, file: !134, line: 129, baseType: !282, size: 8, offset: 120)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "BufWriteTimeoutTyp", scope: !2406, file: !134, line: 130, baseType: !282, size: 8, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "BlockEraseTimeoutTyp", scope: !2406, file: !134, line: 131, baseType: !282, size: 8, offset: 136)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ChipEraseTimeoutTyp", scope: !2406, file: !134, line: 132, baseType: !282, size: 8, offset: 144)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "WordWriteTimeoutMax", scope: !2406, file: !134, line: 133, baseType: !282, size: 8, offset: 152)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "BufWriteTimeoutMax", scope: !2406, file: !134, line: 134, baseType: !282, size: 8, offset: 160)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "BlockEraseTimeoutMax", scope: !2406, file: !134, line: 135, baseType: !282, size: 8, offset: 168)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ChipEraseTimeoutMax", scope: !2406, file: !134, line: 136, baseType: !282, size: 8, offset: 176)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "DevSize", scope: !2406, file: !134, line: 137, baseType: !282, size: 8, offset: 184)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceDesc", scope: !2406, file: !134, line: 138, baseType: !137, size: 16, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "MaxBufWriteSize", scope: !2406, file: !134, line: 139, baseType: !137, size: 16, offset: 208)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "NumEraseRegions", scope: !2406, file: !134, line: 140, baseType: !282, size: 8, offset: 224)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "EraseRegionInfo", scope: !2406, file: !134, line: 141, baseType: !2431, offset: 232)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !1599)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mfr", scope: !133, file: !134, line: 284, baseType: !98, size: 32, offset: 448)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !134, line: 284, baseType: !98, size: 32, offset: 480)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "numchips", scope: !133, file: !134, line: 285, baseType: !98, size: 32, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sector_erase_cmd", scope: !133, file: !134, line: 286, baseType: !2365, size: 64, offset: 576)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "chipshift", scope: !133, file: !134, line: 287, baseType: !94, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "im_name", scope: !133, file: !134, line: 288, baseType: !180, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "chips", scope: !133, file: !134, line: 289, baseType: !2439, offset: 768)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, elements: !1599)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flchip", file: !51, line: 57, size: 896, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2440, file: !51, line: 58, baseType: !94, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ref_point_counter", scope: !2440, file: !51, line: 67, baseType: !98, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2440, file: !51, line: 68, baseType: !2445, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "flstate_t", file: !51, line: 49, baseType: !50)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "oldstate", scope: !2440, file: !51, line: 69, baseType: !2445, size: 32, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "write_suspended", scope: !2440, file: !51, line: 71, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "erase_suspended", scope: !2440, file: !51, line: 72, baseType: !7, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress_block_addr", scope: !2440, file: !51, line: 73, baseType: !94, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress_block_mask", scope: !2440, file: !51, line: 74, baseType: !94, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2440, file: !51, line: 76, baseType: !631, size: 192, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2440, file: !51, line: 77, baseType: !955, size: 128, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "word_write_time", scope: !2440, file: !51, line: 79, baseType: !98, size: 32, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_write_time", scope: !2440, file: !51, line: 80, baseType: !98, size: 32, offset: 672)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "erase_time", scope: !2440, file: !51, line: 81, baseType: !98, size: 32, offset: 704)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "word_write_time_max", scope: !2440, file: !51, line: 83, baseType: !98, size: 32, offset: 736)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_write_time_max", scope: !2440, file: !51, line: 84, baseType: !98, size: 32, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "erase_time_max", scope: !2440, file: !51, line: 85, baseType: !98, size: 32, offset: 800)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2440, file: !51, line: 87, baseType: !95, size: 64, offset: 832)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chip_probe", file: !2462, line: 15, size: 128, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/mtd/gen_probe.h", directory: "/home/lizy2001/genbc/linux")
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2461, file: !2462, line: 16, baseType: !430, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "probe_chip", scope: !2461, file: !2462, line: 17, baseType: !2466, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!98, !2350, !163, !109, !132}
!2469 = !DIGlobalVariableExpression(var: !2470, expr: !DIExpression())
!2470 = distinct !DIGlobalVariable(name: "__key", scope: !129, file: !3, line: 156, type: !1994, isLocal: true, isDefinition: true)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 344, elements: !2472)
!2472 = !{!2473}
!2473 = !DISubrange(count: 43)
!2474 = !{i32 7, !"Dwarf Version", i32 4}
!2475 = !{i32 2, !"Debug Info Version", i32 3}
!2476 = !{i32 1, !"wchar_size", i32 2}
!2477 = !{i32 1, !"Code Model", i32 2}
!2478 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2479 = distinct !DISubprogram(name: "mtd_do_chip_probe", scope: !3, file: !3, line: 21, type: !2480, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!153, !2350, !2460}
!2482 = !DILocalVariable(name: "map", arg: 1, scope: !2479, file: !3, line: 21, type: !2350)
!2483 = !DILocation(line: 21, column: 53, scope: !2479)
!2484 = !DILocalVariable(name: "cp", arg: 2, scope: !2479, file: !3, line: 21, type: !2460)
!2485 = !DILocation(line: 21, column: 77, scope: !2479)
!2486 = !DILocalVariable(name: "mtd", scope: !2479, file: !3, line: 23, type: !153)
!2487 = !DILocation(line: 23, column: 19, scope: !2479)
!2488 = !DILocalVariable(name: "cfi", scope: !2479, file: !3, line: 24, type: !132)
!2489 = !DILocation(line: 24, column: 22, scope: !2479)
!2490 = !DILocation(line: 27, column: 29, scope: !2479)
!2491 = !DILocation(line: 27, column: 34, scope: !2479)
!2492 = !DILocation(line: 27, column: 8, scope: !2479)
!2493 = !DILocation(line: 27, column: 6, scope: !2479)
!2494 = !DILocation(line: 29, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 29, column: 6)
!2496 = !DILocation(line: 29, column: 6, scope: !2479)
!2497 = !DILocation(line: 30, column: 3, scope: !2495)
!2498 = !DILocation(line: 32, column: 20, scope: !2479)
!2499 = !DILocation(line: 32, column: 2, scope: !2479)
!2500 = !DILocation(line: 32, column: 7, scope: !2479)
!2501 = !DILocation(line: 32, column: 18, scope: !2479)
!2502 = !DILocation(line: 35, column: 22, scope: !2479)
!2503 = !DILocation(line: 35, column: 8, scope: !2479)
!2504 = !DILocation(line: 35, column: 6, scope: !2479)
!2505 = !DILocation(line: 36, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 36, column: 6)
!2507 = !DILocation(line: 36, column: 6, scope: !2479)
!2508 = !DILocation(line: 37, column: 23, scope: !2506)
!2509 = !DILocation(line: 37, column: 9, scope: !2506)
!2510 = !DILocation(line: 37, column: 7, scope: !2506)
!2511 = !DILocation(line: 37, column: 3, scope: !2506)
!2512 = !DILocation(line: 39, column: 6, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 39, column: 6)
!2514 = !DILocation(line: 39, column: 6, scope: !2479)
!2515 = !DILocation(line: 40, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 40, column: 7)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 39, column: 11)
!2518 = !DILocation(line: 40, column: 12, scope: !2516)
!2519 = !DILocation(line: 40, column: 19, scope: !2516)
!2520 = !DILocation(line: 40, column: 24, scope: !2516)
!2521 = !DILocation(line: 40, column: 17, scope: !2516)
!2522 = !DILocation(line: 40, column: 7, scope: !2517)
!2523 = !DILocation(line: 42, column: 26, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 40, column: 30)
!2525 = !DILocation(line: 42, column: 31, scope: !2524)
!2526 = !DILocation(line: 42, column: 36, scope: !2524)
!2527 = !DILocation(line: 43, column: 26, scope: !2524)
!2528 = !DILocation(line: 43, column: 31, scope: !2524)
!2529 = !DILocation(line: 43, column: 36, scope: !2524)
!2530 = !DILocation(line: 41, column: 4, scope: !2524)
!2531 = !DILocation(line: 44, column: 16, scope: !2524)
!2532 = !DILocation(line: 44, column: 21, scope: !2524)
!2533 = !DILocation(line: 44, column: 4, scope: !2524)
!2534 = !DILocation(line: 44, column: 9, scope: !2524)
!2535 = !DILocation(line: 44, column: 14, scope: !2524)
!2536 = !DILocation(line: 45, column: 3, scope: !2524)
!2537 = !DILocation(line: 46, column: 10, scope: !2517)
!2538 = !DILocation(line: 46, column: 3, scope: !2517)
!2539 = !DILocation(line: 49, column: 2, scope: !2479)
!2540 = !DILocation(line: 51, column: 8, scope: !2479)
!2541 = !DILocation(line: 51, column: 13, scope: !2479)
!2542 = !DILocation(line: 51, column: 2, scope: !2479)
!2543 = !DILocation(line: 52, column: 8, scope: !2479)
!2544 = !DILocation(line: 52, column: 2, scope: !2479)
!2545 = !DILocation(line: 53, column: 2, scope: !2479)
!2546 = !DILocation(line: 53, column: 7, scope: !2479)
!2547 = !DILocation(line: 53, column: 18, scope: !2479)
!2548 = !DILocation(line: 54, column: 2, scope: !2479)
!2549 = !DILocation(line: 55, column: 1, scope: !2479)
!2550 = !DILocalVariable(name: "s", arg: 1, scope: !2551, file: !87, line: 445, type: !1298)
!2551 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !87, file: !87, line: 445, type: !2552, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!95, !1298, !96, !105}
!2554 = !DILocation(line: 445, column: 72, scope: !2551, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 552, column: 10, scope: !2556, inlinedAt: !2561)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !87, line: 540, column: 34)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !87, line: 540, column: 6)
!2558 = distinct !DISubprogram(name: "kmalloc", scope: !87, file: !87, line: 538, type: !2559, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!95, !105, !96}
!2561 = distinct !DILocation(line: 138, column: 11, scope: !129)
!2562 = !DILocalVariable(name: "flags", arg: 2, scope: !2551, file: !87, line: 446, type: !96)
!2563 = !DILocation(line: 446, column: 9, scope: !2551, inlinedAt: !2555)
!2564 = !DILocalVariable(name: "size", arg: 3, scope: !2551, file: !87, line: 446, type: !105)
!2565 = !DILocation(line: 446, column: 23, scope: !2551, inlinedAt: !2555)
!2566 = !DILocalVariable(name: "ret", scope: !2551, file: !87, line: 448, type: !95)
!2567 = !DILocation(line: 448, column: 8, scope: !2551, inlinedAt: !2555)
!2568 = !DILocalVariable(name: "flags", arg: 1, scope: !2569, file: !87, line: 318, type: !96)
!2569 = distinct !DISubprogram(name: "kmalloc_type", scope: !87, file: !87, line: 318, type: !2570, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!86, !96}
!2572 = !DILocation(line: 318, column: 67, scope: !2569, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 553, column: 20, scope: !2556, inlinedAt: !2561)
!2574 = !DILocalVariable(name: "size", arg: 1, scope: !2575, file: !87, line: 346, type: !105)
!2575 = distinct !DISubprogram(name: "kmalloc_index", scope: !87, file: !87, line: 346, type: !2576, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!7, !105}
!2578 = !DILocation(line: 346, column: 58, scope: !2575, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 547, column: 11, scope: !2556, inlinedAt: !2561)
!2580 = !DILocalVariable(name: "size", arg: 1, scope: !2581, file: !87, line: 472, type: !105)
!2581 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !87, file: !87, line: 472, type: !2582, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!95, !105, !96, !7}
!2584 = !DILocation(line: 472, column: 28, scope: !2581, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 481, column: 9, scope: !2586, inlinedAt: !2587)
!2586 = distinct !DISubprogram(name: "kmalloc_large", scope: !87, file: !87, line: 478, type: !2559, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!2587 = distinct !DILocation(line: 545, column: 11, scope: !2588, inlinedAt: !2561)
!2588 = distinct !DILexicalBlock(scope: !2556, file: !87, line: 544, column: 7)
!2589 = !DILocalVariable(name: "flags", arg: 2, scope: !2581, file: !87, line: 472, type: !96)
!2590 = !DILocation(line: 472, column: 40, scope: !2581, inlinedAt: !2585)
!2591 = !DILocalVariable(name: "order", arg: 3, scope: !2581, file: !87, line: 472, type: !7)
!2592 = !DILocation(line: 472, column: 60, scope: !2581, inlinedAt: !2585)
!2593 = !DILocalVariable(name: "size", arg: 1, scope: !2586, file: !87, line: 478, type: !105)
!2594 = !DILocation(line: 478, column: 51, scope: !2586, inlinedAt: !2587)
!2595 = !DILocalVariable(name: "flags", arg: 2, scope: !2586, file: !87, line: 478, type: !96)
!2596 = !DILocation(line: 478, column: 63, scope: !2586, inlinedAt: !2587)
!2597 = !DILocalVariable(name: "order", scope: !2586, file: !87, line: 480, type: !7)
!2598 = !DILocation(line: 480, column: 15, scope: !2586, inlinedAt: !2587)
!2599 = !DILocalVariable(name: "size", arg: 1, scope: !2558, file: !87, line: 538, type: !105)
!2600 = !DILocation(line: 538, column: 45, scope: !2558, inlinedAt: !2561)
!2601 = !DILocalVariable(name: "flags", arg: 2, scope: !2558, file: !87, line: 538, type: !96)
!2602 = !DILocation(line: 538, column: 57, scope: !2558, inlinedAt: !2561)
!2603 = !DILocalVariable(name: "index", scope: !2556, file: !87, line: 542, type: !7)
!2604 = !DILocation(line: 542, column: 16, scope: !2556, inlinedAt: !2561)
!2605 = !DILocalVariable(name: "map", arg: 1, scope: !129, file: !3, line: 59, type: !2350)
!2606 = !DILocation(line: 59, column: 66, scope: !129)
!2607 = !DILocalVariable(name: "cp", arg: 2, scope: !129, file: !3, line: 59, type: !2460)
!2608 = !DILocation(line: 59, column: 90, scope: !129)
!2609 = !DILocalVariable(name: "cfi", scope: !129, file: !3, line: 61, type: !133)
!2610 = !DILocation(line: 61, column: 21, scope: !129)
!2611 = !DILocalVariable(name: "retcfi", scope: !129, file: !3, line: 62, type: !132)
!2612 = !DILocation(line: 62, column: 22, scope: !129)
!2613 = !DILocalVariable(name: "chip_map", scope: !129, file: !3, line: 63, type: !109)
!2614 = !DILocation(line: 63, column: 17, scope: !129)
!2615 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 64, type: !98)
!2616 = !DILocation(line: 64, column: 6, scope: !129)
!2617 = !DILocalVariable(name: "j", scope: !129, file: !3, line: 64, type: !98)
!2618 = !DILocation(line: 64, column: 9, scope: !129)
!2619 = !DILocalVariable(name: "mapsize", scope: !129, file: !3, line: 64, type: !98)
!2620 = !DILocation(line: 64, column: 12, scope: !129)
!2621 = !DILocalVariable(name: "max_chips", scope: !129, file: !3, line: 65, type: !98)
!2622 = !DILocation(line: 65, column: 6, scope: !129)
!2623 = !DILocation(line: 67, column: 2, scope: !129)
!2624 = !DILocation(line: 71, column: 25, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !129, file: !3, line: 71, column: 6)
!2626 = !DILocation(line: 71, column: 30, scope: !2625)
!2627 = !DILocation(line: 71, column: 7, scope: !2625)
!2628 = !DILocation(line: 71, column: 6, scope: !129)
!2629 = !DILocation(line: 73, column: 3, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 73, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 73, column: 3)
!2632 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 71, column: 41)
!2633 = !DILocation(line: 73, column: 3, scope: !2631)
!2634 = !DILocation(line: 75, column: 3, scope: !2632)
!2635 = !DILocation(line: 88, column: 22, scope: !129)
!2636 = !DILocation(line: 88, column: 28, scope: !129)
!2637 = !DILocation(line: 88, column: 18, scope: !129)
!2638 = !DILocation(line: 88, column: 6, scope: !129)
!2639 = !DILocation(line: 88, column: 16, scope: !129)
!2640 = !DILocation(line: 90, column: 6, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !129, file: !3, line: 90, column: 6)
!2642 = !DILocation(line: 90, column: 6, scope: !129)
!2643 = !DILocation(line: 92, column: 2, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 90, column: 33)
!2645 = !DILocation(line: 92, column: 13, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 92, column: 13)
!2647 = !DILocation(line: 92, column: 13, scope: !2641)
!2648 = !DILocation(line: 93, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 92, column: 40)
!2650 = !DILocation(line: 93, column: 16, scope: !2649)
!2651 = !DILocation(line: 94, column: 2, scope: !2649)
!2652 = !DILocation(line: 99, column: 3, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 98, column: 9)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 96, column: 13)
!2655 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 94, column: 13)
!2656 = !DILocation(line: 99, column: 3, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 99, column: 3)
!2658 = !DILocation(line: 99, column: 3, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 99, column: 3)
!2660 = !DILocation(line: 99, column: 3, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 99, column: 3)
!2662 = !{i32 -2143140138, i32 -2143140109, i32 -2143140063, i32 -2143140005, i32 -2143139951, i32 -2143139897, i32 -2143139842, i32 -2143139811}
!2663 = !DILocation(line: 99, column: 3, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 99, column: 3)
!2665 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 99, column: 3)
!2666 = !{i32 -2143139360, i32 -2143139353, i32 -2143139299, i32 -2143139268, i32 -2143139238}
!2667 = !DILocation(line: 99, column: 3, scope: !2665)
!2668 = !DILocation(line: 102, column: 6, scope: !129)
!2669 = !DILocation(line: 102, column: 15, scope: !129)
!2670 = !DILocation(line: 108, column: 14, scope: !129)
!2671 = !DILocation(line: 108, column: 19, scope: !129)
!2672 = !DILocation(line: 108, column: 31, scope: !129)
!2673 = !DILocation(line: 108, column: 24, scope: !129)
!2674 = !DILocation(line: 108, column: 12, scope: !129)
!2675 = !DILocation(line: 109, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !129, file: !3, line: 109, column: 6)
!2677 = !DILocation(line: 109, column: 6, scope: !129)
!2678 = !DILocation(line: 110, column: 3, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 109, column: 18)
!2680 = !DILocation(line: 111, column: 13, scope: !2679)
!2681 = !DILocation(line: 112, column: 2, scope: !2679)
!2682 = !DILocation(line: 114, column: 27, scope: !129)
!2683 = !DILocation(line: 114, column: 25, scope: !129)
!2684 = !DILocation(line: 114, column: 12, scope: !129)
!2685 = !DILocation(line: 114, column: 10, scope: !129)
!2686 = !DILocation(line: 115, column: 21, scope: !129)
!2687 = !DILocation(line: 115, column: 13, scope: !129)
!2688 = !DILocation(line: 115, column: 11, scope: !129)
!2689 = !DILocation(line: 116, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !129, file: !3, line: 116, column: 6)
!2691 = !DILocation(line: 116, column: 6, scope: !129)
!2692 = !DILocation(line: 117, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 116, column: 17)
!2694 = !DILocation(line: 117, column: 9, scope: !2693)
!2695 = !DILocation(line: 117, column: 3, scope: !2693)
!2696 = !DILocation(line: 118, column: 3, scope: !2693)
!2697 = !DILocation(line: 121, column: 13, scope: !129)
!2698 = !DILocation(line: 121, column: 2, scope: !129)
!2699 = !DILocation(line: 129, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !129, file: !3, line: 129, column: 2)
!2701 = !DILocation(line: 129, column: 7, scope: !2700)
!2702 = !DILocation(line: 129, column: 14, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 129, column: 2)
!2704 = !DILocation(line: 129, column: 18, scope: !2703)
!2705 = !DILocation(line: 129, column: 16, scope: !2703)
!2706 = !DILocation(line: 129, column: 2, scope: !2700)
!2707 = !DILocation(line: 130, column: 3, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 129, column: 34)
!2709 = !DILocation(line: 130, column: 7, scope: !2708)
!2710 = !DILocation(line: 130, column: 18, scope: !2708)
!2711 = !DILocation(line: 130, column: 23, scope: !2708)
!2712 = !DILocation(line: 130, column: 32, scope: !2708)
!2713 = !DILocation(line: 130, column: 25, scope: !2708)
!2714 = !DILocation(line: 130, column: 43, scope: !2708)
!2715 = !DILocation(line: 131, column: 2, scope: !2708)
!2716 = !DILocation(line: 129, column: 30, scope: !2703)
!2717 = !DILocation(line: 129, column: 2, scope: !2703)
!2718 = distinct !{!2718, !2706, !2719}
!2719 = !DILocation(line: 131, column: 2, scope: !2700)
!2720 = !DILocation(line: 138, column: 19, scope: !129)
!2721 = !DILocation(line: 540, column: 27, scope: !2557, inlinedAt: !2561)
!2722 = !DILocation(line: 540, column: 6, scope: !2557, inlinedAt: !2561)
!2723 = !DILocation(line: 540, column: 6, scope: !2558, inlinedAt: !2561)
!2724 = !DILocation(line: 544, column: 7, scope: !2588, inlinedAt: !2561)
!2725 = !DILocation(line: 544, column: 12, scope: !2588, inlinedAt: !2561)
!2726 = !DILocation(line: 544, column: 7, scope: !2556, inlinedAt: !2561)
!2727 = !DILocation(line: 545, column: 25, scope: !2588, inlinedAt: !2561)
!2728 = !DILocation(line: 545, column: 31, scope: !2588, inlinedAt: !2561)
!2729 = !DILocation(line: 480, column: 33, scope: !2586, inlinedAt: !2587)
!2730 = !DILocation(line: 480, column: 23, scope: !2586, inlinedAt: !2587)
!2731 = !DILocation(line: 481, column: 29, scope: !2586, inlinedAt: !2587)
!2732 = !DILocation(line: 481, column: 35, scope: !2586, inlinedAt: !2587)
!2733 = !DILocation(line: 481, column: 42, scope: !2586, inlinedAt: !2587)
!2734 = !DILocation(line: 474, column: 23, scope: !2581, inlinedAt: !2585)
!2735 = !DILocation(line: 474, column: 29, scope: !2581, inlinedAt: !2585)
!2736 = !DILocation(line: 474, column: 36, scope: !2581, inlinedAt: !2585)
!2737 = !DILocation(line: 474, column: 9, scope: !2581, inlinedAt: !2585)
!2738 = !DILocation(line: 545, column: 4, scope: !2588, inlinedAt: !2561)
!2739 = !DILocation(line: 547, column: 25, scope: !2556, inlinedAt: !2561)
!2740 = !DILocation(line: 348, column: 7, scope: !2741, inlinedAt: !2579)
!2741 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 348, column: 6)
!2742 = !DILocation(line: 348, column: 6, scope: !2575, inlinedAt: !2579)
!2743 = !DILocation(line: 349, column: 3, scope: !2741, inlinedAt: !2579)
!2744 = !DILocation(line: 351, column: 6, scope: !2745, inlinedAt: !2579)
!2745 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 351, column: 6)
!2746 = !DILocation(line: 351, column: 11, scope: !2745, inlinedAt: !2579)
!2747 = !DILocation(line: 351, column: 6, scope: !2575, inlinedAt: !2579)
!2748 = !DILocation(line: 352, column: 3, scope: !2745, inlinedAt: !2579)
!2749 = !DILocation(line: 354, column: 32, scope: !2750, inlinedAt: !2579)
!2750 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 354, column: 6)
!2751 = !DILocation(line: 354, column: 37, scope: !2750, inlinedAt: !2579)
!2752 = !DILocation(line: 354, column: 42, scope: !2750, inlinedAt: !2579)
!2753 = !DILocation(line: 354, column: 45, scope: !2750, inlinedAt: !2579)
!2754 = !DILocation(line: 354, column: 50, scope: !2750, inlinedAt: !2579)
!2755 = !DILocation(line: 354, column: 6, scope: !2575, inlinedAt: !2579)
!2756 = !DILocation(line: 355, column: 3, scope: !2750, inlinedAt: !2579)
!2757 = !DILocation(line: 356, column: 32, scope: !2758, inlinedAt: !2579)
!2758 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 356, column: 6)
!2759 = !DILocation(line: 356, column: 37, scope: !2758, inlinedAt: !2579)
!2760 = !DILocation(line: 356, column: 43, scope: !2758, inlinedAt: !2579)
!2761 = !DILocation(line: 356, column: 46, scope: !2758, inlinedAt: !2579)
!2762 = !DILocation(line: 356, column: 51, scope: !2758, inlinedAt: !2579)
!2763 = !DILocation(line: 356, column: 6, scope: !2575, inlinedAt: !2579)
!2764 = !DILocation(line: 357, column: 3, scope: !2758, inlinedAt: !2579)
!2765 = !DILocation(line: 358, column: 6, scope: !2766, inlinedAt: !2579)
!2766 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 358, column: 6)
!2767 = !DILocation(line: 358, column: 11, scope: !2766, inlinedAt: !2579)
!2768 = !DILocation(line: 358, column: 6, scope: !2575, inlinedAt: !2579)
!2769 = !DILocation(line: 358, column: 26, scope: !2766, inlinedAt: !2579)
!2770 = !DILocation(line: 359, column: 6, scope: !2771, inlinedAt: !2579)
!2771 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 359, column: 6)
!2772 = !DILocation(line: 359, column: 11, scope: !2771, inlinedAt: !2579)
!2773 = !DILocation(line: 359, column: 6, scope: !2575, inlinedAt: !2579)
!2774 = !DILocation(line: 359, column: 26, scope: !2771, inlinedAt: !2579)
!2775 = !DILocation(line: 360, column: 6, scope: !2776, inlinedAt: !2579)
!2776 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 360, column: 6)
!2777 = !DILocation(line: 360, column: 11, scope: !2776, inlinedAt: !2579)
!2778 = !DILocation(line: 360, column: 6, scope: !2575, inlinedAt: !2579)
!2779 = !DILocation(line: 360, column: 26, scope: !2776, inlinedAt: !2579)
!2780 = !DILocation(line: 361, column: 6, scope: !2781, inlinedAt: !2579)
!2781 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 361, column: 6)
!2782 = !DILocation(line: 361, column: 11, scope: !2781, inlinedAt: !2579)
!2783 = !DILocation(line: 361, column: 6, scope: !2575, inlinedAt: !2579)
!2784 = !DILocation(line: 361, column: 26, scope: !2781, inlinedAt: !2579)
!2785 = !DILocation(line: 362, column: 6, scope: !2786, inlinedAt: !2579)
!2786 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 362, column: 6)
!2787 = !DILocation(line: 362, column: 11, scope: !2786, inlinedAt: !2579)
!2788 = !DILocation(line: 362, column: 6, scope: !2575, inlinedAt: !2579)
!2789 = !DILocation(line: 362, column: 26, scope: !2786, inlinedAt: !2579)
!2790 = !DILocation(line: 363, column: 6, scope: !2791, inlinedAt: !2579)
!2791 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 363, column: 6)
!2792 = !DILocation(line: 363, column: 11, scope: !2791, inlinedAt: !2579)
!2793 = !DILocation(line: 363, column: 6, scope: !2575, inlinedAt: !2579)
!2794 = !DILocation(line: 363, column: 26, scope: !2791, inlinedAt: !2579)
!2795 = !DILocation(line: 364, column: 6, scope: !2796, inlinedAt: !2579)
!2796 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 364, column: 6)
!2797 = !DILocation(line: 364, column: 11, scope: !2796, inlinedAt: !2579)
!2798 = !DILocation(line: 364, column: 6, scope: !2575, inlinedAt: !2579)
!2799 = !DILocation(line: 364, column: 26, scope: !2796, inlinedAt: !2579)
!2800 = !DILocation(line: 365, column: 6, scope: !2801, inlinedAt: !2579)
!2801 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 365, column: 6)
!2802 = !DILocation(line: 365, column: 11, scope: !2801, inlinedAt: !2579)
!2803 = !DILocation(line: 365, column: 6, scope: !2575, inlinedAt: !2579)
!2804 = !DILocation(line: 365, column: 26, scope: !2801, inlinedAt: !2579)
!2805 = !DILocation(line: 366, column: 6, scope: !2806, inlinedAt: !2579)
!2806 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 366, column: 6)
!2807 = !DILocation(line: 366, column: 11, scope: !2806, inlinedAt: !2579)
!2808 = !DILocation(line: 366, column: 6, scope: !2575, inlinedAt: !2579)
!2809 = !DILocation(line: 366, column: 26, scope: !2806, inlinedAt: !2579)
!2810 = !DILocation(line: 367, column: 6, scope: !2811, inlinedAt: !2579)
!2811 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 367, column: 6)
!2812 = !DILocation(line: 367, column: 11, scope: !2811, inlinedAt: !2579)
!2813 = !DILocation(line: 367, column: 6, scope: !2575, inlinedAt: !2579)
!2814 = !DILocation(line: 367, column: 26, scope: !2811, inlinedAt: !2579)
!2815 = !DILocation(line: 368, column: 6, scope: !2816, inlinedAt: !2579)
!2816 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 368, column: 6)
!2817 = !DILocation(line: 368, column: 11, scope: !2816, inlinedAt: !2579)
!2818 = !DILocation(line: 368, column: 6, scope: !2575, inlinedAt: !2579)
!2819 = !DILocation(line: 368, column: 26, scope: !2816, inlinedAt: !2579)
!2820 = !DILocation(line: 369, column: 6, scope: !2821, inlinedAt: !2579)
!2821 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 369, column: 6)
!2822 = !DILocation(line: 369, column: 11, scope: !2821, inlinedAt: !2579)
!2823 = !DILocation(line: 369, column: 6, scope: !2575, inlinedAt: !2579)
!2824 = !DILocation(line: 369, column: 26, scope: !2821, inlinedAt: !2579)
!2825 = !DILocation(line: 370, column: 6, scope: !2826, inlinedAt: !2579)
!2826 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 370, column: 6)
!2827 = !DILocation(line: 370, column: 11, scope: !2826, inlinedAt: !2579)
!2828 = !DILocation(line: 370, column: 6, scope: !2575, inlinedAt: !2579)
!2829 = !DILocation(line: 370, column: 26, scope: !2826, inlinedAt: !2579)
!2830 = !DILocation(line: 371, column: 6, scope: !2831, inlinedAt: !2579)
!2831 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 371, column: 6)
!2832 = !DILocation(line: 371, column: 11, scope: !2831, inlinedAt: !2579)
!2833 = !DILocation(line: 371, column: 6, scope: !2575, inlinedAt: !2579)
!2834 = !DILocation(line: 371, column: 26, scope: !2831, inlinedAt: !2579)
!2835 = !DILocation(line: 372, column: 6, scope: !2836, inlinedAt: !2579)
!2836 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 372, column: 6)
!2837 = !DILocation(line: 372, column: 11, scope: !2836, inlinedAt: !2579)
!2838 = !DILocation(line: 372, column: 6, scope: !2575, inlinedAt: !2579)
!2839 = !DILocation(line: 372, column: 26, scope: !2836, inlinedAt: !2579)
!2840 = !DILocation(line: 373, column: 6, scope: !2841, inlinedAt: !2579)
!2841 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 373, column: 6)
!2842 = !DILocation(line: 373, column: 11, scope: !2841, inlinedAt: !2579)
!2843 = !DILocation(line: 373, column: 6, scope: !2575, inlinedAt: !2579)
!2844 = !DILocation(line: 373, column: 26, scope: !2841, inlinedAt: !2579)
!2845 = !DILocation(line: 374, column: 6, scope: !2846, inlinedAt: !2579)
!2846 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 374, column: 6)
!2847 = !DILocation(line: 374, column: 11, scope: !2846, inlinedAt: !2579)
!2848 = !DILocation(line: 374, column: 6, scope: !2575, inlinedAt: !2579)
!2849 = !DILocation(line: 374, column: 26, scope: !2846, inlinedAt: !2579)
!2850 = !DILocation(line: 375, column: 6, scope: !2851, inlinedAt: !2579)
!2851 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 375, column: 6)
!2852 = !DILocation(line: 375, column: 11, scope: !2851, inlinedAt: !2579)
!2853 = !DILocation(line: 375, column: 6, scope: !2575, inlinedAt: !2579)
!2854 = !DILocation(line: 375, column: 27, scope: !2851, inlinedAt: !2579)
!2855 = !DILocation(line: 376, column: 6, scope: !2856, inlinedAt: !2579)
!2856 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 376, column: 6)
!2857 = !DILocation(line: 376, column: 11, scope: !2856, inlinedAt: !2579)
!2858 = !DILocation(line: 376, column: 6, scope: !2575, inlinedAt: !2579)
!2859 = !DILocation(line: 376, column: 32, scope: !2856, inlinedAt: !2579)
!2860 = !DILocation(line: 377, column: 6, scope: !2861, inlinedAt: !2579)
!2861 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 377, column: 6)
!2862 = !DILocation(line: 377, column: 11, scope: !2861, inlinedAt: !2579)
!2863 = !DILocation(line: 377, column: 6, scope: !2575, inlinedAt: !2579)
!2864 = !DILocation(line: 377, column: 32, scope: !2861, inlinedAt: !2579)
!2865 = !DILocation(line: 378, column: 6, scope: !2866, inlinedAt: !2579)
!2866 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 378, column: 6)
!2867 = !DILocation(line: 378, column: 11, scope: !2866, inlinedAt: !2579)
!2868 = !DILocation(line: 378, column: 6, scope: !2575, inlinedAt: !2579)
!2869 = !DILocation(line: 378, column: 32, scope: !2866, inlinedAt: !2579)
!2870 = !DILocation(line: 379, column: 6, scope: !2871, inlinedAt: !2579)
!2871 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 379, column: 6)
!2872 = !DILocation(line: 379, column: 11, scope: !2871, inlinedAt: !2579)
!2873 = !DILocation(line: 379, column: 6, scope: !2575, inlinedAt: !2579)
!2874 = !DILocation(line: 379, column: 33, scope: !2871, inlinedAt: !2579)
!2875 = !DILocation(line: 380, column: 6, scope: !2876, inlinedAt: !2579)
!2876 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 380, column: 6)
!2877 = !DILocation(line: 380, column: 11, scope: !2876, inlinedAt: !2579)
!2878 = !DILocation(line: 380, column: 6, scope: !2575, inlinedAt: !2579)
!2879 = !DILocation(line: 380, column: 33, scope: !2876, inlinedAt: !2579)
!2880 = !DILocation(line: 381, column: 6, scope: !2881, inlinedAt: !2579)
!2881 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 381, column: 6)
!2882 = !DILocation(line: 381, column: 11, scope: !2881, inlinedAt: !2579)
!2883 = !DILocation(line: 381, column: 6, scope: !2575, inlinedAt: !2579)
!2884 = !DILocation(line: 381, column: 33, scope: !2881, inlinedAt: !2579)
!2885 = !DILocation(line: 382, column: 2, scope: !2886, inlinedAt: !2579)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !87, line: 382, column: 2)
!2887 = distinct !DILexicalBlock(scope: !2575, file: !87, line: 382, column: 2)
!2888 = !{i32 -2144648473, i32 -2144648444, i32 -2144648398, i32 -2144648340, i32 -2144648286, i32 -2144648232, i32 -2144648177, i32 -2144648146}
!2889 = !DILocation(line: 382, column: 2, scope: !2890, inlinedAt: !2579)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !87, line: 382, column: 2)
!2891 = distinct !DILexicalBlock(scope: !2887, file: !87, line: 382, column: 2)
!2892 = !{i32 -2144647703, i32 -2144647696, i32 -2144647642, i32 -2144647611, i32 -2144647581}
!2893 = !DILocation(line: 382, column: 2, scope: !2891, inlinedAt: !2579)
!2894 = !DILocation(line: 386, column: 1, scope: !2575, inlinedAt: !2579)
!2895 = !DILocation(line: 547, column: 9, scope: !2556, inlinedAt: !2561)
!2896 = !DILocation(line: 549, column: 8, scope: !2897, inlinedAt: !2561)
!2897 = distinct !DILexicalBlock(scope: !2556, file: !87, line: 549, column: 7)
!2898 = !DILocation(line: 549, column: 7, scope: !2556, inlinedAt: !2561)
!2899 = !DILocation(line: 550, column: 4, scope: !2897, inlinedAt: !2561)
!2900 = !DILocation(line: 553, column: 33, scope: !2556, inlinedAt: !2561)
!2901 = !DILocation(line: 325, column: 6, scope: !2902, inlinedAt: !2573)
!2902 = distinct !DILexicalBlock(scope: !2569, file: !87, line: 325, column: 6)
!2903 = !DILocation(line: 325, column: 6, scope: !2569, inlinedAt: !2573)
!2904 = !DILocation(line: 326, column: 3, scope: !2902, inlinedAt: !2573)
!2905 = !DILocation(line: 332, column: 9, scope: !2569, inlinedAt: !2573)
!2906 = !DILocation(line: 332, column: 15, scope: !2569, inlinedAt: !2573)
!2907 = !DILocation(line: 332, column: 2, scope: !2569, inlinedAt: !2573)
!2908 = !DILocation(line: 336, column: 1, scope: !2569, inlinedAt: !2573)
!2909 = !DILocation(line: 553, column: 5, scope: !2556, inlinedAt: !2561)
!2910 = !DILocation(line: 553, column: 41, scope: !2556, inlinedAt: !2561)
!2911 = !DILocation(line: 554, column: 5, scope: !2556, inlinedAt: !2561)
!2912 = !DILocation(line: 554, column: 12, scope: !2556, inlinedAt: !2561)
!2913 = !DILocation(line: 448, column: 31, scope: !2551, inlinedAt: !2555)
!2914 = !DILocation(line: 448, column: 34, scope: !2551, inlinedAt: !2555)
!2915 = !DILocation(line: 448, column: 14, scope: !2551, inlinedAt: !2555)
!2916 = !DILocation(line: 450, column: 22, scope: !2551, inlinedAt: !2555)
!2917 = !DILocation(line: 450, column: 25, scope: !2551, inlinedAt: !2555)
!2918 = !DILocation(line: 450, column: 30, scope: !2551, inlinedAt: !2555)
!2919 = !DILocation(line: 450, column: 36, scope: !2551, inlinedAt: !2555)
!2920 = !DILocation(line: 450, column: 8, scope: !2551, inlinedAt: !2555)
!2921 = !DILocation(line: 450, column: 6, scope: !2551, inlinedAt: !2555)
!2922 = !DILocation(line: 451, column: 9, scope: !2551, inlinedAt: !2555)
!2923 = !DILocation(line: 552, column: 3, scope: !2556, inlinedAt: !2561)
!2924 = !DILocation(line: 557, column: 19, scope: !2558, inlinedAt: !2561)
!2925 = !DILocation(line: 557, column: 25, scope: !2558, inlinedAt: !2561)
!2926 = !DILocation(line: 557, column: 9, scope: !2558, inlinedAt: !2561)
!2927 = !DILocation(line: 557, column: 2, scope: !2558, inlinedAt: !2561)
!2928 = !DILocation(line: 558, column: 1, scope: !2558, inlinedAt: !2561)
!2929 = !DILocation(line: 138, column: 11, scope: !129)
!2930 = !DILocation(line: 138, column: 9, scope: !129)
!2931 = !DILocation(line: 140, column: 7, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !129, file: !3, line: 140, column: 6)
!2933 = !DILocation(line: 140, column: 6, scope: !129)
!2934 = !DILocation(line: 141, column: 13, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 140, column: 15)
!2936 = !DILocation(line: 141, column: 9, scope: !2935)
!2937 = !DILocation(line: 141, column: 3, scope: !2935)
!2938 = !DILocation(line: 142, column: 9, scope: !2935)
!2939 = !DILocation(line: 142, column: 3, scope: !2935)
!2940 = !DILocation(line: 143, column: 3, scope: !2935)
!2941 = !DILocation(line: 146, column: 9, scope: !129)
!2942 = !DILocation(line: 146, column: 2, scope: !129)
!2943 = !DILocation(line: 147, column: 10, scope: !129)
!2944 = !DILocation(line: 147, column: 18, scope: !129)
!2945 = !DILocation(line: 147, column: 2, scope: !129)
!2946 = !DILocation(line: 147, column: 59, scope: !129)
!2947 = !DILocation(line: 147, column: 55, scope: !129)
!2948 = !DILocation(line: 147, column: 53, scope: !129)
!2949 = !DILocation(line: 149, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !129, file: !3, line: 149, column: 2)
!2951 = !DILocation(line: 149, column: 16, scope: !2950)
!2952 = !DILocation(line: 149, column: 7, scope: !2950)
!2953 = !DILocation(line: 149, column: 22, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 149, column: 2)
!2955 = !DILocation(line: 149, column: 30, scope: !2954)
!2956 = !DILocation(line: 149, column: 24, scope: !2954)
!2957 = !DILocation(line: 149, column: 40, scope: !2954)
!2958 = !DILocation(line: 149, column: 44, scope: !2954)
!2959 = !DILocation(line: 149, column: 48, scope: !2954)
!2960 = !DILocation(line: 149, column: 46, scope: !2954)
!2961 = !DILocation(line: 0, scope: !2954)
!2962 = !DILocation(line: 149, column: 2, scope: !2950)
!2963 = !DILocation(line: 150, column: 15, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 150, column: 6)
!2965 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 149, column: 65)
!2966 = !DILocation(line: 150, column: 18, scope: !2964)
!2967 = !DILocation(line: 150, column: 6, scope: !2964)
!2968 = !DILocation(line: 150, column: 6, scope: !2965)
!2969 = !DILocalVariable(name: "pchip", scope: !2970, file: !3, line: 151, type: !2971)
!2970 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 150, column: 29)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2972 = !DILocation(line: 151, column: 19, scope: !2970)
!2973 = !DILocation(line: 151, column: 28, scope: !2970)
!2974 = !DILocation(line: 151, column: 36, scope: !2970)
!2975 = !DILocation(line: 151, column: 43, scope: !2970)
!2976 = !DILocation(line: 153, column: 20, scope: !2970)
!2977 = !DILocation(line: 153, column: 29, scope: !2970)
!2978 = !DILocation(line: 153, column: 22, scope: !2970)
!2979 = !DILocation(line: 153, column: 19, scope: !2970)
!2980 = !DILocation(line: 153, column: 4, scope: !2970)
!2981 = !DILocation(line: 153, column: 11, scope: !2970)
!2982 = !DILocation(line: 153, column: 17, scope: !2970)
!2983 = !DILocation(line: 154, column: 4, scope: !2970)
!2984 = !DILocation(line: 154, column: 11, scope: !2970)
!2985 = !DILocation(line: 154, column: 17, scope: !2970)
!2986 = !DILocation(line: 155, column: 4, scope: !2970)
!2987 = !DILocation(line: 155, column: 4, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 155, column: 4)
!2989 = !DILocation(line: 156, column: 4, scope: !2970)
!2990 = !DILocation(line: 156, column: 4, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 156, column: 4)
!2992 = !DILocation(line: 157, column: 3, scope: !2970)
!2993 = !DILocation(line: 158, column: 2, scope: !2965)
!2994 = !DILocation(line: 149, column: 61, scope: !2954)
!2995 = !DILocation(line: 149, column: 2, scope: !2954)
!2996 = distinct !{!2996, !2962, !2997}
!2997 = !DILocation(line: 158, column: 2, scope: !2950)
!2998 = !DILocation(line: 160, column: 8, scope: !129)
!2999 = !DILocation(line: 160, column: 2, scope: !129)
!3000 = !DILocation(line: 161, column: 9, scope: !129)
!3001 = !DILocation(line: 161, column: 2, scope: !129)
!3002 = !DILocation(line: 162, column: 1, scope: !129)
!3003 = distinct !DISubprogram(name: "check_cmd_set", scope: !3, file: !3, line: 233, type: !3004, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!153, !2350, !98}
!3006 = !DILocalVariable(name: "map", arg: 1, scope: !3003, file: !3, line: 233, type: !2350)
!3007 = !DILocation(line: 233, column: 56, scope: !3003)
!3008 = !DILocalVariable(name: "primary", arg: 2, scope: !3003, file: !3, line: 233, type: !98)
!3009 = !DILocation(line: 233, column: 65, scope: !3003)
!3010 = !DILocalVariable(name: "cfi", scope: !3003, file: !3, line: 235, type: !132)
!3011 = !DILocation(line: 235, column: 22, scope: !3003)
!3012 = !DILocation(line: 235, column: 28, scope: !3003)
!3013 = !DILocation(line: 235, column: 33, scope: !3003)
!3014 = !DILocalVariable(name: "type", scope: !3003, file: !3, line: 236, type: !140)
!3015 = !DILocation(line: 236, column: 8, scope: !3003)
!3016 = !DILocation(line: 236, column: 15, scope: !3003)
!3017 = !DILocation(line: 236, column: 23, scope: !3003)
!3018 = !DILocation(line: 236, column: 28, scope: !3003)
!3019 = !DILocation(line: 236, column: 34, scope: !3003)
!3020 = !DILocation(line: 236, column: 39, scope: !3003)
!3021 = !DILocation(line: 236, column: 44, scope: !3003)
!3022 = !DILocation(line: 236, column: 50, scope: !3003)
!3023 = !DILocation(line: 238, column: 6, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 238, column: 6)
!3025 = !DILocation(line: 238, column: 11, scope: !3024)
!3026 = !DILocation(line: 238, column: 24, scope: !3024)
!3027 = !DILocation(line: 238, column: 27, scope: !3024)
!3028 = !DILocation(line: 238, column: 32, scope: !3024)
!3029 = !DILocation(line: 238, column: 6, scope: !3003)
!3030 = !DILocation(line: 239, column: 3, scope: !3024)
!3031 = !DILocation(line: 241, column: 9, scope: !3003)
!3032 = !DILocation(line: 241, column: 2, scope: !3003)
!3033 = !DILocation(line: 261, column: 29, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 241, column: 14)
!3035 = !DILocation(line: 261, column: 34, scope: !3034)
!3036 = !DILocation(line: 261, column: 10, scope: !3034)
!3037 = !DILocation(line: 261, column: 3, scope: !3034)
!3038 = !DILocation(line: 263, column: 1, scope: !3003)
!3039 = distinct !DISubprogram(name: "genprobe_new_chip", scope: !3, file: !3, line: 165, type: !3040, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!98, !2350, !2460, !132}
!3042 = !DILocalVariable(name: "map", arg: 1, scope: !3039, file: !3, line: 165, type: !2350)
!3043 = !DILocation(line: 165, column: 47, scope: !3039)
!3044 = !DILocalVariable(name: "cp", arg: 2, scope: !3039, file: !3, line: 165, type: !2460)
!3045 = !DILocation(line: 165, column: 71, scope: !3039)
!3046 = !DILocalVariable(name: "cfi", arg: 3, scope: !3039, file: !3, line: 166, type: !132)
!3047 = !DILocation(line: 166, column: 29, scope: !3039)
!3048 = !DILocalVariable(name: "min_chips", scope: !3039, file: !3, line: 168, type: !98)
!3049 = !DILocation(line: 168, column: 6, scope: !3039)
!3050 = !DILocation(line: 168, column: 19, scope: !3039)
!3051 = !DILocation(line: 168, column: 37, scope: !3039)
!3052 = !DILocalVariable(name: "max_chips", scope: !3039, file: !3, line: 169, type: !98)
!3053 = !DILocation(line: 169, column: 6, scope: !3039)
!3054 = !DILocation(line: 169, column: 18, scope: !3039)
!3055 = !DILocalVariable(name: "nr_chips", scope: !3039, file: !3, line: 170, type: !98)
!3056 = !DILocation(line: 170, column: 6, scope: !3039)
!3057 = !DILocalVariable(name: "type", scope: !3039, file: !3, line: 170, type: !98)
!3058 = !DILocation(line: 170, column: 16, scope: !3039)
!3059 = !DILocation(line: 172, column: 18, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 172, column: 2)
!3061 = !DILocation(line: 172, column: 16, scope: !3060)
!3062 = !DILocation(line: 172, column: 7, scope: !3060)
!3063 = !DILocation(line: 172, column: 29, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 172, column: 2)
!3065 = !DILocation(line: 172, column: 41, scope: !3064)
!3066 = !DILocation(line: 172, column: 38, scope: !3064)
!3067 = !DILocation(line: 172, column: 2, scope: !3060)
!3068 = !DILocation(line: 174, column: 33, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 174, column: 7)
!3070 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 172, column: 68)
!3071 = !DILocation(line: 174, column: 8, scope: !3069)
!3072 = !DILocation(line: 174, column: 7, scope: !3070)
!3073 = !DILocation(line: 175, column: 7, scope: !3069)
!3074 = !DILocation(line: 177, column: 21, scope: !3070)
!3075 = !DILocation(line: 177, column: 3, scope: !3070)
!3076 = !DILocation(line: 177, column: 8, scope: !3070)
!3077 = !DILocation(line: 177, column: 19, scope: !3070)
!3078 = !DILocation(line: 181, column: 10, scope: !3070)
!3079 = !DILocation(line: 181, column: 31, scope: !3070)
!3080 = !DILocation(line: 181, column: 29, scope: !3070)
!3081 = !DILocation(line: 181, column: 8, scope: !3070)
!3082 = !DILocation(line: 183, column: 3, scope: !3070)
!3083 = !DILocation(line: 183, column: 10, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 183, column: 3)
!3085 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 183, column: 3)
!3086 = !DILocation(line: 183, column: 15, scope: !3084)
!3087 = !DILocation(line: 183, column: 3, scope: !3085)
!3088 = !DILocation(line: 184, column: 23, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 183, column: 48)
!3090 = !DILocation(line: 184, column: 4, scope: !3089)
!3091 = !DILocation(line: 184, column: 9, scope: !3089)
!3092 = !DILocation(line: 184, column: 21, scope: !3089)
!3093 = !DILocation(line: 186, column: 8, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 186, column: 8)
!3095 = !DILocation(line: 186, column: 12, scope: !3094)
!3096 = !DILocation(line: 186, column: 23, scope: !3094)
!3097 = !DILocation(line: 186, column: 37, scope: !3094)
!3098 = !DILocation(line: 186, column: 8, scope: !3089)
!3099 = !DILocation(line: 187, column: 5, scope: !3094)
!3100 = !DILocation(line: 188, column: 3, scope: !3089)
!3101 = !DILocation(line: 183, column: 42, scope: !3084)
!3102 = !DILocation(line: 183, column: 3, scope: !3084)
!3103 = distinct !{!3103, !3087, !3104}
!3104 = !DILocation(line: 188, column: 3, scope: !3085)
!3105 = !DILocation(line: 189, column: 2, scope: !3070)
!3106 = !DILocation(line: 172, column: 61, scope: !3064)
!3107 = !DILocation(line: 172, column: 2, scope: !3064)
!3108 = distinct !{!3108, !3067, !3109}
!3109 = !DILocation(line: 189, column: 2, scope: !3060)
!3110 = !DILocation(line: 190, column: 2, scope: !3039)
!3111 = !DILocation(line: 191, column: 1, scope: !3039)
!3112 = distinct !DISubprogram(name: "kzalloc", scope: !87, file: !87, line: 662, type: !2559, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3113 = !DILocation(line: 445, column: 72, scope: !2551, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 552, column: 10, scope: !2556, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 664, column: 9, scope: !3112)
!3116 = !DILocation(line: 446, column: 9, scope: !2551, inlinedAt: !3114)
!3117 = !DILocation(line: 446, column: 23, scope: !2551, inlinedAt: !3114)
!3118 = !DILocation(line: 448, column: 8, scope: !2551, inlinedAt: !3114)
!3119 = !DILocation(line: 318, column: 67, scope: !2569, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 553, column: 20, scope: !2556, inlinedAt: !3115)
!3121 = !DILocation(line: 346, column: 58, scope: !2575, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 547, column: 11, scope: !2556, inlinedAt: !3115)
!3123 = !DILocation(line: 472, column: 28, scope: !2581, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 481, column: 9, scope: !2586, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 545, column: 11, scope: !2588, inlinedAt: !3115)
!3126 = !DILocation(line: 472, column: 40, scope: !2581, inlinedAt: !3124)
!3127 = !DILocation(line: 472, column: 60, scope: !2581, inlinedAt: !3124)
!3128 = !DILocation(line: 478, column: 51, scope: !2586, inlinedAt: !3125)
!3129 = !DILocation(line: 478, column: 63, scope: !2586, inlinedAt: !3125)
!3130 = !DILocation(line: 480, column: 15, scope: !2586, inlinedAt: !3125)
!3131 = !DILocation(line: 538, column: 45, scope: !2558, inlinedAt: !3115)
!3132 = !DILocation(line: 538, column: 57, scope: !2558, inlinedAt: !3115)
!3133 = !DILocation(line: 542, column: 16, scope: !2556, inlinedAt: !3115)
!3134 = !DILocalVariable(name: "size", arg: 1, scope: !3112, file: !87, line: 662, type: !105)
!3135 = !DILocation(line: 662, column: 36, scope: !3112)
!3136 = !DILocalVariable(name: "flags", arg: 2, scope: !3112, file: !87, line: 662, type: !96)
!3137 = !DILocation(line: 662, column: 48, scope: !3112)
!3138 = !DILocation(line: 664, column: 17, scope: !3112)
!3139 = !DILocation(line: 664, column: 23, scope: !3112)
!3140 = !DILocation(line: 664, column: 29, scope: !3112)
!3141 = !DILocation(line: 540, column: 27, scope: !2557, inlinedAt: !3115)
!3142 = !DILocation(line: 540, column: 6, scope: !2557, inlinedAt: !3115)
!3143 = !DILocation(line: 540, column: 6, scope: !2558, inlinedAt: !3115)
!3144 = !DILocation(line: 544, column: 7, scope: !2588, inlinedAt: !3115)
!3145 = !DILocation(line: 544, column: 12, scope: !2588, inlinedAt: !3115)
!3146 = !DILocation(line: 544, column: 7, scope: !2556, inlinedAt: !3115)
!3147 = !DILocation(line: 545, column: 25, scope: !2588, inlinedAt: !3115)
!3148 = !DILocation(line: 545, column: 31, scope: !2588, inlinedAt: !3115)
!3149 = !DILocation(line: 480, column: 33, scope: !2586, inlinedAt: !3125)
!3150 = !DILocation(line: 480, column: 23, scope: !2586, inlinedAt: !3125)
!3151 = !DILocation(line: 481, column: 29, scope: !2586, inlinedAt: !3125)
!3152 = !DILocation(line: 481, column: 35, scope: !2586, inlinedAt: !3125)
!3153 = !DILocation(line: 481, column: 42, scope: !2586, inlinedAt: !3125)
!3154 = !DILocation(line: 474, column: 23, scope: !2581, inlinedAt: !3124)
!3155 = !DILocation(line: 474, column: 29, scope: !2581, inlinedAt: !3124)
!3156 = !DILocation(line: 474, column: 36, scope: !2581, inlinedAt: !3124)
!3157 = !DILocation(line: 474, column: 9, scope: !2581, inlinedAt: !3124)
!3158 = !DILocation(line: 545, column: 4, scope: !2588, inlinedAt: !3115)
!3159 = !DILocation(line: 547, column: 25, scope: !2556, inlinedAt: !3115)
!3160 = !DILocation(line: 348, column: 7, scope: !2741, inlinedAt: !3122)
!3161 = !DILocation(line: 348, column: 6, scope: !2575, inlinedAt: !3122)
!3162 = !DILocation(line: 349, column: 3, scope: !2741, inlinedAt: !3122)
!3163 = !DILocation(line: 351, column: 6, scope: !2745, inlinedAt: !3122)
!3164 = !DILocation(line: 351, column: 11, scope: !2745, inlinedAt: !3122)
!3165 = !DILocation(line: 351, column: 6, scope: !2575, inlinedAt: !3122)
!3166 = !DILocation(line: 352, column: 3, scope: !2745, inlinedAt: !3122)
!3167 = !DILocation(line: 354, column: 32, scope: !2750, inlinedAt: !3122)
!3168 = !DILocation(line: 354, column: 37, scope: !2750, inlinedAt: !3122)
!3169 = !DILocation(line: 354, column: 42, scope: !2750, inlinedAt: !3122)
!3170 = !DILocation(line: 354, column: 45, scope: !2750, inlinedAt: !3122)
!3171 = !DILocation(line: 354, column: 50, scope: !2750, inlinedAt: !3122)
!3172 = !DILocation(line: 354, column: 6, scope: !2575, inlinedAt: !3122)
!3173 = !DILocation(line: 355, column: 3, scope: !2750, inlinedAt: !3122)
!3174 = !DILocation(line: 356, column: 32, scope: !2758, inlinedAt: !3122)
!3175 = !DILocation(line: 356, column: 37, scope: !2758, inlinedAt: !3122)
!3176 = !DILocation(line: 356, column: 43, scope: !2758, inlinedAt: !3122)
!3177 = !DILocation(line: 356, column: 46, scope: !2758, inlinedAt: !3122)
!3178 = !DILocation(line: 356, column: 51, scope: !2758, inlinedAt: !3122)
!3179 = !DILocation(line: 356, column: 6, scope: !2575, inlinedAt: !3122)
!3180 = !DILocation(line: 357, column: 3, scope: !2758, inlinedAt: !3122)
!3181 = !DILocation(line: 358, column: 6, scope: !2766, inlinedAt: !3122)
!3182 = !DILocation(line: 358, column: 11, scope: !2766, inlinedAt: !3122)
!3183 = !DILocation(line: 358, column: 6, scope: !2575, inlinedAt: !3122)
!3184 = !DILocation(line: 358, column: 26, scope: !2766, inlinedAt: !3122)
!3185 = !DILocation(line: 359, column: 6, scope: !2771, inlinedAt: !3122)
!3186 = !DILocation(line: 359, column: 11, scope: !2771, inlinedAt: !3122)
!3187 = !DILocation(line: 359, column: 6, scope: !2575, inlinedAt: !3122)
!3188 = !DILocation(line: 359, column: 26, scope: !2771, inlinedAt: !3122)
!3189 = !DILocation(line: 360, column: 6, scope: !2776, inlinedAt: !3122)
!3190 = !DILocation(line: 360, column: 11, scope: !2776, inlinedAt: !3122)
!3191 = !DILocation(line: 360, column: 6, scope: !2575, inlinedAt: !3122)
!3192 = !DILocation(line: 360, column: 26, scope: !2776, inlinedAt: !3122)
!3193 = !DILocation(line: 361, column: 6, scope: !2781, inlinedAt: !3122)
!3194 = !DILocation(line: 361, column: 11, scope: !2781, inlinedAt: !3122)
!3195 = !DILocation(line: 361, column: 6, scope: !2575, inlinedAt: !3122)
!3196 = !DILocation(line: 361, column: 26, scope: !2781, inlinedAt: !3122)
!3197 = !DILocation(line: 362, column: 6, scope: !2786, inlinedAt: !3122)
!3198 = !DILocation(line: 362, column: 11, scope: !2786, inlinedAt: !3122)
!3199 = !DILocation(line: 362, column: 6, scope: !2575, inlinedAt: !3122)
!3200 = !DILocation(line: 362, column: 26, scope: !2786, inlinedAt: !3122)
!3201 = !DILocation(line: 363, column: 6, scope: !2791, inlinedAt: !3122)
!3202 = !DILocation(line: 363, column: 11, scope: !2791, inlinedAt: !3122)
!3203 = !DILocation(line: 363, column: 6, scope: !2575, inlinedAt: !3122)
!3204 = !DILocation(line: 363, column: 26, scope: !2791, inlinedAt: !3122)
!3205 = !DILocation(line: 364, column: 6, scope: !2796, inlinedAt: !3122)
!3206 = !DILocation(line: 364, column: 11, scope: !2796, inlinedAt: !3122)
!3207 = !DILocation(line: 364, column: 6, scope: !2575, inlinedAt: !3122)
!3208 = !DILocation(line: 364, column: 26, scope: !2796, inlinedAt: !3122)
!3209 = !DILocation(line: 365, column: 6, scope: !2801, inlinedAt: !3122)
!3210 = !DILocation(line: 365, column: 11, scope: !2801, inlinedAt: !3122)
!3211 = !DILocation(line: 365, column: 6, scope: !2575, inlinedAt: !3122)
!3212 = !DILocation(line: 365, column: 26, scope: !2801, inlinedAt: !3122)
!3213 = !DILocation(line: 366, column: 6, scope: !2806, inlinedAt: !3122)
!3214 = !DILocation(line: 366, column: 11, scope: !2806, inlinedAt: !3122)
!3215 = !DILocation(line: 366, column: 6, scope: !2575, inlinedAt: !3122)
!3216 = !DILocation(line: 366, column: 26, scope: !2806, inlinedAt: !3122)
!3217 = !DILocation(line: 367, column: 6, scope: !2811, inlinedAt: !3122)
!3218 = !DILocation(line: 367, column: 11, scope: !2811, inlinedAt: !3122)
!3219 = !DILocation(line: 367, column: 6, scope: !2575, inlinedAt: !3122)
!3220 = !DILocation(line: 367, column: 26, scope: !2811, inlinedAt: !3122)
!3221 = !DILocation(line: 368, column: 6, scope: !2816, inlinedAt: !3122)
!3222 = !DILocation(line: 368, column: 11, scope: !2816, inlinedAt: !3122)
!3223 = !DILocation(line: 368, column: 6, scope: !2575, inlinedAt: !3122)
!3224 = !DILocation(line: 368, column: 26, scope: !2816, inlinedAt: !3122)
!3225 = !DILocation(line: 369, column: 6, scope: !2821, inlinedAt: !3122)
!3226 = !DILocation(line: 369, column: 11, scope: !2821, inlinedAt: !3122)
!3227 = !DILocation(line: 369, column: 6, scope: !2575, inlinedAt: !3122)
!3228 = !DILocation(line: 369, column: 26, scope: !2821, inlinedAt: !3122)
!3229 = !DILocation(line: 370, column: 6, scope: !2826, inlinedAt: !3122)
!3230 = !DILocation(line: 370, column: 11, scope: !2826, inlinedAt: !3122)
!3231 = !DILocation(line: 370, column: 6, scope: !2575, inlinedAt: !3122)
!3232 = !DILocation(line: 370, column: 26, scope: !2826, inlinedAt: !3122)
!3233 = !DILocation(line: 371, column: 6, scope: !2831, inlinedAt: !3122)
!3234 = !DILocation(line: 371, column: 11, scope: !2831, inlinedAt: !3122)
!3235 = !DILocation(line: 371, column: 6, scope: !2575, inlinedAt: !3122)
!3236 = !DILocation(line: 371, column: 26, scope: !2831, inlinedAt: !3122)
!3237 = !DILocation(line: 372, column: 6, scope: !2836, inlinedAt: !3122)
!3238 = !DILocation(line: 372, column: 11, scope: !2836, inlinedAt: !3122)
!3239 = !DILocation(line: 372, column: 6, scope: !2575, inlinedAt: !3122)
!3240 = !DILocation(line: 372, column: 26, scope: !2836, inlinedAt: !3122)
!3241 = !DILocation(line: 373, column: 6, scope: !2841, inlinedAt: !3122)
!3242 = !DILocation(line: 373, column: 11, scope: !2841, inlinedAt: !3122)
!3243 = !DILocation(line: 373, column: 6, scope: !2575, inlinedAt: !3122)
!3244 = !DILocation(line: 373, column: 26, scope: !2841, inlinedAt: !3122)
!3245 = !DILocation(line: 374, column: 6, scope: !2846, inlinedAt: !3122)
!3246 = !DILocation(line: 374, column: 11, scope: !2846, inlinedAt: !3122)
!3247 = !DILocation(line: 374, column: 6, scope: !2575, inlinedAt: !3122)
!3248 = !DILocation(line: 374, column: 26, scope: !2846, inlinedAt: !3122)
!3249 = !DILocation(line: 375, column: 6, scope: !2851, inlinedAt: !3122)
!3250 = !DILocation(line: 375, column: 11, scope: !2851, inlinedAt: !3122)
!3251 = !DILocation(line: 375, column: 6, scope: !2575, inlinedAt: !3122)
!3252 = !DILocation(line: 375, column: 27, scope: !2851, inlinedAt: !3122)
!3253 = !DILocation(line: 376, column: 6, scope: !2856, inlinedAt: !3122)
!3254 = !DILocation(line: 376, column: 11, scope: !2856, inlinedAt: !3122)
!3255 = !DILocation(line: 376, column: 6, scope: !2575, inlinedAt: !3122)
!3256 = !DILocation(line: 376, column: 32, scope: !2856, inlinedAt: !3122)
!3257 = !DILocation(line: 377, column: 6, scope: !2861, inlinedAt: !3122)
!3258 = !DILocation(line: 377, column: 11, scope: !2861, inlinedAt: !3122)
!3259 = !DILocation(line: 377, column: 6, scope: !2575, inlinedAt: !3122)
!3260 = !DILocation(line: 377, column: 32, scope: !2861, inlinedAt: !3122)
!3261 = !DILocation(line: 378, column: 6, scope: !2866, inlinedAt: !3122)
!3262 = !DILocation(line: 378, column: 11, scope: !2866, inlinedAt: !3122)
!3263 = !DILocation(line: 378, column: 6, scope: !2575, inlinedAt: !3122)
!3264 = !DILocation(line: 378, column: 32, scope: !2866, inlinedAt: !3122)
!3265 = !DILocation(line: 379, column: 6, scope: !2871, inlinedAt: !3122)
!3266 = !DILocation(line: 379, column: 11, scope: !2871, inlinedAt: !3122)
!3267 = !DILocation(line: 379, column: 6, scope: !2575, inlinedAt: !3122)
!3268 = !DILocation(line: 379, column: 33, scope: !2871, inlinedAt: !3122)
!3269 = !DILocation(line: 380, column: 6, scope: !2876, inlinedAt: !3122)
!3270 = !DILocation(line: 380, column: 11, scope: !2876, inlinedAt: !3122)
!3271 = !DILocation(line: 380, column: 6, scope: !2575, inlinedAt: !3122)
!3272 = !DILocation(line: 380, column: 33, scope: !2876, inlinedAt: !3122)
!3273 = !DILocation(line: 381, column: 6, scope: !2881, inlinedAt: !3122)
!3274 = !DILocation(line: 381, column: 11, scope: !2881, inlinedAt: !3122)
!3275 = !DILocation(line: 381, column: 6, scope: !2575, inlinedAt: !3122)
!3276 = !DILocation(line: 381, column: 33, scope: !2881, inlinedAt: !3122)
!3277 = !DILocation(line: 382, column: 2, scope: !2886, inlinedAt: !3122)
!3278 = !DILocation(line: 382, column: 2, scope: !2890, inlinedAt: !3122)
!3279 = !DILocation(line: 382, column: 2, scope: !2891, inlinedAt: !3122)
!3280 = !DILocation(line: 386, column: 1, scope: !2575, inlinedAt: !3122)
!3281 = !DILocation(line: 547, column: 9, scope: !2556, inlinedAt: !3115)
!3282 = !DILocation(line: 549, column: 8, scope: !2897, inlinedAt: !3115)
!3283 = !DILocation(line: 549, column: 7, scope: !2556, inlinedAt: !3115)
!3284 = !DILocation(line: 550, column: 4, scope: !2897, inlinedAt: !3115)
!3285 = !DILocation(line: 553, column: 33, scope: !2556, inlinedAt: !3115)
!3286 = !DILocation(line: 325, column: 6, scope: !2902, inlinedAt: !3120)
!3287 = !DILocation(line: 325, column: 6, scope: !2569, inlinedAt: !3120)
!3288 = !DILocation(line: 326, column: 3, scope: !2902, inlinedAt: !3120)
!3289 = !DILocation(line: 332, column: 9, scope: !2569, inlinedAt: !3120)
!3290 = !DILocation(line: 332, column: 15, scope: !2569, inlinedAt: !3120)
!3291 = !DILocation(line: 332, column: 2, scope: !2569, inlinedAt: !3120)
!3292 = !DILocation(line: 336, column: 1, scope: !2569, inlinedAt: !3120)
!3293 = !DILocation(line: 553, column: 5, scope: !2556, inlinedAt: !3115)
!3294 = !DILocation(line: 553, column: 41, scope: !2556, inlinedAt: !3115)
!3295 = !DILocation(line: 554, column: 5, scope: !2556, inlinedAt: !3115)
!3296 = !DILocation(line: 554, column: 12, scope: !2556, inlinedAt: !3115)
!3297 = !DILocation(line: 448, column: 31, scope: !2551, inlinedAt: !3114)
!3298 = !DILocation(line: 448, column: 34, scope: !2551, inlinedAt: !3114)
!3299 = !DILocation(line: 448, column: 14, scope: !2551, inlinedAt: !3114)
!3300 = !DILocation(line: 450, column: 22, scope: !2551, inlinedAt: !3114)
!3301 = !DILocation(line: 450, column: 25, scope: !2551, inlinedAt: !3114)
!3302 = !DILocation(line: 450, column: 30, scope: !2551, inlinedAt: !3114)
!3303 = !DILocation(line: 450, column: 36, scope: !2551, inlinedAt: !3114)
!3304 = !DILocation(line: 450, column: 8, scope: !2551, inlinedAt: !3114)
!3305 = !DILocation(line: 450, column: 6, scope: !2551, inlinedAt: !3114)
!3306 = !DILocation(line: 451, column: 9, scope: !2551, inlinedAt: !3114)
!3307 = !DILocation(line: 552, column: 3, scope: !2556, inlinedAt: !3115)
!3308 = !DILocation(line: 557, column: 19, scope: !2558, inlinedAt: !3115)
!3309 = !DILocation(line: 557, column: 25, scope: !2558, inlinedAt: !3115)
!3310 = !DILocation(line: 557, column: 9, scope: !2558, inlinedAt: !3115)
!3311 = !DILocation(line: 557, column: 2, scope: !2558, inlinedAt: !3115)
!3312 = !DILocation(line: 558, column: 1, scope: !2558, inlinedAt: !3115)
!3313 = !DILocation(line: 664, column: 2, scope: !3112)
!3314 = distinct !DISubprogram(name: "set_bit", scope: !3315, file: !3315, line: 26, type: !3316, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3315 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !104, !3318}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!3320 = !DILocalVariable(name: "nr", arg: 1, scope: !3321, file: !3322, line: 52, type: !104)
!3321 = distinct !DISubprogram(name: "arch_set_bit", scope: !3322, file: !3322, line: 52, type: !3316, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3322 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3323 = !DILocation(line: 52, column: 19, scope: !3321, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 29, column: 2, scope: !3314)
!3325 = !DILocalVariable(name: "addr", arg: 2, scope: !3321, file: !3322, line: 52, type: !3318)
!3326 = !DILocation(line: 52, column: 47, scope: !3321, inlinedAt: !3324)
!3327 = !DILocalVariable(name: "v", arg: 1, scope: !3328, file: !3329, line: 84, type: !3332)
!3328 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3329, file: !3329, line: 84, type: !3330, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3329 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3332, !105}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3334)
!3334 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3335 = !DILocation(line: 84, column: 74, scope: !3328, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 28, column: 2, scope: !3314)
!3337 = !DILocalVariable(name: "size", arg: 2, scope: !3328, file: !3329, line: 84, type: !105)
!3338 = !DILocation(line: 84, column: 84, scope: !3328, inlinedAt: !3336)
!3339 = !DILocalVariable(name: "nr", arg: 1, scope: !3314, file: !3315, line: 26, type: !104)
!3340 = !DILocation(line: 26, column: 33, scope: !3314)
!3341 = !DILocalVariable(name: "addr", arg: 2, scope: !3314, file: !3315, line: 26, type: !3318)
!3342 = !DILocation(line: 26, column: 61, scope: !3314)
!3343 = !DILocation(line: 28, column: 26, scope: !3314)
!3344 = !DILocation(line: 28, column: 33, scope: !3314)
!3345 = !DILocation(line: 28, column: 31, scope: !3314)
!3346 = !DILocation(line: 86, column: 20, scope: !3328, inlinedAt: !3336)
!3347 = !DILocation(line: 86, column: 23, scope: !3328, inlinedAt: !3336)
!3348 = !DILocation(line: 86, column: 2, scope: !3328, inlinedAt: !3336)
!3349 = !DILocation(line: 87, column: 2, scope: !3328, inlinedAt: !3336)
!3350 = !DILocation(line: 29, column: 15, scope: !3314)
!3351 = !DILocation(line: 29, column: 19, scope: !3314)
!3352 = !DILocation(line: 54, column: 27, scope: !3353, inlinedAt: !3324)
!3353 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 54, column: 6)
!3354 = !DILocation(line: 54, column: 6, scope: !3353, inlinedAt: !3324)
!3355 = !DILocation(line: 54, column: 6, scope: !3321, inlinedAt: !3324)
!3356 = !DILocation(line: 56, column: 6, scope: !3357, inlinedAt: !3324)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !3322, line: 54, column: 32)
!3358 = !DILocation(line: 57, column: 12, scope: !3357, inlinedAt: !3324)
!3359 = !DILocation(line: 55, column: 3, scope: !3357, inlinedAt: !3324)
!3360 = !{i32 -2147206436}
!3361 = !DILocation(line: 59, column: 2, scope: !3357, inlinedAt: !3324)
!3362 = !DILocation(line: 61, column: 8, scope: !3363, inlinedAt: !3324)
!3363 = distinct !DILexicalBlock(scope: !3353, file: !3322, line: 59, column: 9)
!3364 = !DILocation(line: 61, column: 32, scope: !3363, inlinedAt: !3324)
!3365 = !DILocation(line: 60, column: 3, scope: !3363, inlinedAt: !3324)
!3366 = !{i32 -2147206304}
!3367 = !DILocation(line: 30, column: 1, scope: !3314)
!3368 = distinct !DISubprogram(name: "__ab_c_size", scope: !3369, file: !3369, line: 301, type: !3370, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3369 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!105, !105, !105, !105}
!3372 = !DILocalVariable(name: "a", arg: 1, scope: !3368, file: !3369, line: 301, type: !105)
!3373 = !DILocation(line: 301, column: 54, scope: !3368)
!3374 = !DILocalVariable(name: "b", arg: 2, scope: !3368, file: !3369, line: 301, type: !105)
!3375 = !DILocation(line: 301, column: 64, scope: !3368)
!3376 = !DILocalVariable(name: "c", arg: 3, scope: !3368, file: !3369, line: 301, type: !105)
!3377 = !DILocation(line: 301, column: 74, scope: !3368)
!3378 = !DILocalVariable(name: "bytes", scope: !3368, file: !3369, line: 303, type: !105)
!3379 = !DILocation(line: 303, column: 9, scope: !3368)
!3380 = !DILocalVariable(name: "__a", scope: !3381, file: !3369, line: 305, type: !105)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3369, line: 305, column: 6)
!3382 = distinct !DILexicalBlock(scope: !3368, file: !3369, line: 305, column: 6)
!3383 = !DILocation(line: 305, column: 6, scope: !3381)
!3384 = !DILocalVariable(name: "__b", scope: !3381, file: !3369, line: 305, type: !105)
!3385 = !DILocalVariable(name: "__d", scope: !3381, file: !3369, line: 305, type: !246)
!3386 = !DILocation(line: 305, column: 6, scope: !3382)
!3387 = !DILocation(line: 305, column: 6, scope: !3368)
!3388 = !DILocation(line: 306, column: 3, scope: !3382)
!3389 = !DILocalVariable(name: "__a", scope: !3390, file: !3369, line: 307, type: !105)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3369, line: 307, column: 6)
!3391 = distinct !DILexicalBlock(scope: !3368, file: !3369, line: 307, column: 6)
!3392 = !DILocation(line: 307, column: 6, scope: !3390)
!3393 = !DILocalVariable(name: "__b", scope: !3390, file: !3369, line: 307, type: !105)
!3394 = !DILocalVariable(name: "__d", scope: !3390, file: !3369, line: 307, type: !246)
!3395 = !DILocation(line: 307, column: 6, scope: !3391)
!3396 = !DILocation(line: 307, column: 6, scope: !3368)
!3397 = !DILocation(line: 308, column: 3, scope: !3391)
!3398 = !DILocation(line: 310, column: 9, scope: !3368)
!3399 = !DILocation(line: 310, column: 2, scope: !3368)
!3400 = !DILocation(line: 311, column: 1, scope: !3368)
!3401 = distinct !DISubprogram(name: "test_bit", scope: !3402, file: !3402, line: 132, type: !3403, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3402 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!340, !104, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3407 = !DILocalVariable(name: "nr", arg: 1, scope: !3408, file: !3322, line: 210, type: !104)
!3408 = distinct !DISubprogram(name: "variable_test_bit", scope: !3322, file: !3322, line: 210, type: !3403, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3409 = !DILocation(line: 210, column: 52, scope: !3408, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 135, column: 9, scope: !3401)
!3411 = !DILocalVariable(name: "addr", arg: 2, scope: !3408, file: !3322, line: 210, type: !3405)
!3412 = !DILocation(line: 210, column: 86, scope: !3408, inlinedAt: !3410)
!3413 = !DILocalVariable(name: "oldbit", scope: !3408, file: !3322, line: 212, type: !340)
!3414 = !DILocation(line: 212, column: 7, scope: !3408, inlinedAt: !3410)
!3415 = !DILocalVariable(name: "nr", arg: 1, scope: !3416, file: !3322, line: 204, type: !104)
!3416 = distinct !DISubprogram(name: "constant_test_bit", scope: !3322, file: !3322, line: 204, type: !3403, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3417 = !DILocation(line: 204, column: 52, scope: !3416, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 135, column: 9, scope: !3401)
!3419 = !DILocalVariable(name: "addr", arg: 2, scope: !3416, file: !3322, line: 204, type: !3405)
!3420 = !DILocation(line: 204, column: 86, scope: !3416, inlinedAt: !3418)
!3421 = !DILocalVariable(name: "v", arg: 1, scope: !3422, file: !3329, line: 69, type: !3332)
!3422 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3329, file: !3329, line: 69, type: !3330, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3423 = !DILocation(line: 69, column: 73, scope: !3422, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 134, column: 2, scope: !3401)
!3425 = !DILocalVariable(name: "size", arg: 2, scope: !3422, file: !3329, line: 69, type: !105)
!3426 = !DILocation(line: 69, column: 83, scope: !3422, inlinedAt: !3424)
!3427 = !DILocalVariable(name: "nr", arg: 1, scope: !3401, file: !3402, line: 132, type: !104)
!3428 = !DILocation(line: 132, column: 34, scope: !3401)
!3429 = !DILocalVariable(name: "addr", arg: 2, scope: !3401, file: !3402, line: 132, type: !3405)
!3430 = !DILocation(line: 132, column: 68, scope: !3401)
!3431 = !DILocation(line: 134, column: 25, scope: !3401)
!3432 = !DILocation(line: 134, column: 32, scope: !3401)
!3433 = !DILocation(line: 134, column: 30, scope: !3401)
!3434 = !DILocation(line: 71, column: 19, scope: !3422, inlinedAt: !3424)
!3435 = !DILocation(line: 71, column: 22, scope: !3422, inlinedAt: !3424)
!3436 = !DILocation(line: 71, column: 2, scope: !3422, inlinedAt: !3424)
!3437 = !DILocation(line: 72, column: 2, scope: !3422, inlinedAt: !3424)
!3438 = !DILocation(line: 135, column: 9, scope: !3401)
!3439 = !DILocation(line: 206, column: 19, scope: !3416, inlinedAt: !3418)
!3440 = !DILocation(line: 206, column: 22, scope: !3416, inlinedAt: !3418)
!3441 = !DILocation(line: 206, column: 15, scope: !3416, inlinedAt: !3418)
!3442 = !DILocation(line: 207, column: 4, scope: !3416, inlinedAt: !3418)
!3443 = !DILocation(line: 207, column: 9, scope: !3416, inlinedAt: !3418)
!3444 = !DILocation(line: 207, column: 12, scope: !3416, inlinedAt: !3418)
!3445 = !DILocation(line: 206, column: 44, scope: !3416, inlinedAt: !3418)
!3446 = !DILocation(line: 207, column: 37, scope: !3416, inlinedAt: !3418)
!3447 = !DILocation(line: 217, column: 33, scope: !3408, inlinedAt: !3410)
!3448 = !DILocation(line: 217, column: 46, scope: !3408, inlinedAt: !3410)
!3449 = !DILocation(line: 214, column: 2, scope: !3408, inlinedAt: !3410)
!3450 = !{i32 -2147197188, i32 -2147197128}
!3451 = !DILocation(line: 219, column: 9, scope: !3408, inlinedAt: !3410)
!3452 = !DILocation(line: 135, column: 2, scope: !3401)
!3453 = distinct !DISubprogram(name: "cfi_interleave_supported", scope: !134, file: !134, line: 70, type: !3454, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!98, !98}
!3456 = !DILocalVariable(name: "i", arg: 1, scope: !3453, file: !134, line: 70, type: !98)
!3457 = !DILocation(line: 70, column: 48, scope: !3453)
!3458 = !DILocation(line: 72, column: 10, scope: !3453)
!3459 = !DILocation(line: 72, column: 2, scope: !3453)
!3460 = !DILocation(line: 85, column: 3, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3453, file: !134, line: 72, column: 13)
!3462 = !DILocation(line: 88, column: 3, scope: !3461)
!3463 = !DILocation(line: 90, column: 1, scope: !3453)
!3464 = distinct !DISubprogram(name: "kasan_check_write", scope: !3465, file: !3465, line: 38, type: !3466, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3465 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!340, !3332, !7}
!3468 = !DILocalVariable(name: "p", arg: 1, scope: !3464, file: !3465, line: 38, type: !3332)
!3469 = !DILocation(line: 38, column: 59, scope: !3464)
!3470 = !DILocalVariable(name: "size", arg: 2, scope: !3464, file: !3465, line: 38, type: !7)
!3471 = !DILocation(line: 38, column: 75, scope: !3464)
!3472 = !DILocation(line: 40, column: 2, scope: !3464)
!3473 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3474, file: !3474, line: 178, type: !3475, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3474 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3332, !105, !98}
!3477 = !DILocalVariable(name: "ptr", arg: 1, scope: !3473, file: !3474, line: 178, type: !3332)
!3478 = !DILocation(line: 178, column: 60, scope: !3473)
!3479 = !DILocalVariable(name: "size", arg: 2, scope: !3473, file: !3474, line: 178, type: !105)
!3480 = !DILocation(line: 178, column: 72, scope: !3473)
!3481 = !DILocalVariable(name: "type", arg: 3, scope: !3473, file: !3474, line: 179, type: !98)
!3482 = !DILocation(line: 179, column: 15, scope: !3473)
!3483 = !DILocation(line: 179, column: 23, scope: !3473)
!3484 = distinct !DISubprogram(name: "get_order", scope: !3485, file: !3485, line: 29, type: !3486, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3485 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!98, !94}
!3488 = !DILocalVariable(name: "x", arg: 1, scope: !3489, file: !3322, line: 366, type: !167)
!3489 = distinct !DISubprogram(name: "fls64", scope: !3322, file: !3322, line: 366, type: !3490, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!98, !167}
!3492 = !DILocation(line: 366, column: 40, scope: !3489, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 46, column: 9, scope: !3484)
!3494 = !DILocalVariable(name: "bitpos", scope: !3489, file: !3322, line: 368, type: !98)
!3495 = !DILocation(line: 368, column: 6, scope: !3489, inlinedAt: !3493)
!3496 = !DILocalVariable(name: "size", arg: 1, scope: !3484, file: !3485, line: 29, type: !94)
!3497 = !DILocation(line: 29, column: 63, scope: !3484)
!3498 = !DILocation(line: 31, column: 27, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3484, file: !3485, line: 31, column: 6)
!3500 = !DILocation(line: 31, column: 6, scope: !3499)
!3501 = !DILocation(line: 31, column: 6, scope: !3484)
!3502 = !DILocation(line: 32, column: 8, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3485, line: 32, column: 7)
!3504 = distinct !DILexicalBlock(scope: !3499, file: !3485, line: 31, column: 34)
!3505 = !DILocation(line: 32, column: 7, scope: !3504)
!3506 = !DILocation(line: 33, column: 4, scope: !3503)
!3507 = !DILocation(line: 35, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3504, file: !3485, line: 35, column: 7)
!3509 = !DILocation(line: 35, column: 12, scope: !3508)
!3510 = !DILocation(line: 35, column: 7, scope: !3504)
!3511 = !DILocation(line: 36, column: 4, scope: !3508)
!3512 = !DILocation(line: 38, column: 10, scope: !3504)
!3513 = !DILocation(line: 38, column: 28, scope: !3504)
!3514 = !DILocation(line: 38, column: 41, scope: !3504)
!3515 = !DILocation(line: 38, column: 3, scope: !3504)
!3516 = !DILocation(line: 41, column: 6, scope: !3484)
!3517 = !DILocation(line: 42, column: 7, scope: !3484)
!3518 = !DILocation(line: 46, column: 15, scope: !3484)
!3519 = !DILocation(line: 374, column: 2, scope: !3489, inlinedAt: !3493)
!3520 = !DILocation(line: 376, column: 14, scope: !3489, inlinedAt: !3493)
!3521 = !{i32 245785}
!3522 = !DILocation(line: 377, column: 9, scope: !3489, inlinedAt: !3493)
!3523 = !DILocation(line: 377, column: 16, scope: !3489, inlinedAt: !3493)
!3524 = !DILocation(line: 46, column: 2, scope: !3484)
!3525 = !DILocation(line: 48, column: 1, scope: !3484)
!3526 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3527, file: !3527, line: 30, type: !3528, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3527 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!98, !166}
!3530 = !DILocation(line: 366, column: 40, scope: !3489, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 32, column: 9, scope: !3526)
!3532 = !DILocation(line: 368, column: 6, scope: !3489, inlinedAt: !3531)
!3533 = !DILocalVariable(name: "n", arg: 1, scope: !3526, file: !3527, line: 30, type: !166)
!3534 = !DILocation(line: 30, column: 21, scope: !3526)
!3535 = !DILocation(line: 32, column: 15, scope: !3526)
!3536 = !DILocation(line: 374, column: 2, scope: !3489, inlinedAt: !3531)
!3537 = !DILocation(line: 376, column: 14, scope: !3489, inlinedAt: !3531)
!3538 = !DILocation(line: 377, column: 9, scope: !3489, inlinedAt: !3531)
!3539 = !DILocation(line: 377, column: 16, scope: !3489, inlinedAt: !3531)
!3540 = !DILocation(line: 32, column: 18, scope: !3526)
!3541 = !DILocation(line: 32, column: 2, scope: !3526)
!3542 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3543, file: !3543, line: 137, type: !3544, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3543 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!95, !1298, !1378, !105, !96}
!3546 = !DILocalVariable(name: "s", arg: 1, scope: !3542, file: !3543, line: 137, type: !1298)
!3547 = !DILocation(line: 137, column: 54, scope: !3542)
!3548 = !DILocalVariable(name: "object", arg: 2, scope: !3542, file: !3543, line: 137, type: !1378)
!3549 = !DILocation(line: 137, column: 69, scope: !3542)
!3550 = !DILocalVariable(name: "size", arg: 3, scope: !3542, file: !3543, line: 138, type: !105)
!3551 = !DILocation(line: 138, column: 12, scope: !3542)
!3552 = !DILocalVariable(name: "flags", arg: 4, scope: !3542, file: !3543, line: 138, type: !96)
!3553 = !DILocation(line: 138, column: 24, scope: !3542)
!3554 = !DILocation(line: 140, column: 17, scope: !3542)
!3555 = !DILocation(line: 140, column: 2, scope: !3542)
!3556 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3369, file: !3369, line: 52, type: !3557, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!340, !340}
!3559 = !DILocalVariable(name: "overflow", arg: 1, scope: !3556, file: !3369, line: 52, type: !340)
!3560 = !DILocation(line: 52, column: 60, scope: !3556)
!3561 = !DILocation(line: 54, column: 9, scope: !3556)
!3562 = !DILocation(line: 54, column: 2, scope: !3556)
!3563 = distinct !DISubprogram(name: "kasan_check_read", scope: !3465, file: !3465, line: 34, type: !3466, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3564 = !DILocalVariable(name: "p", arg: 1, scope: !3563, file: !3465, line: 34, type: !3332)
!3565 = !DILocation(line: 34, column: 58, scope: !3563)
!3566 = !DILocalVariable(name: "size", arg: 2, scope: !3563, file: !3465, line: 34, type: !7)
!3567 = !DILocation(line: 34, column: 74, scope: !3563)
!3568 = !DILocation(line: 36, column: 2, scope: !3563)
!3569 = distinct !DISubprogram(name: "cfi_cmdset_unknown", scope: !3, file: !3, line: 199, type: !3004, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !403)
!3570 = !DILocalVariable(name: "map", arg: 1, scope: !3569, file: !3, line: 199, type: !2350)
!3571 = !DILocation(line: 199, column: 68, scope: !3569)
!3572 = !DILocalVariable(name: "primary", arg: 2, scope: !3569, file: !3, line: 200, type: !98)
!3573 = !DILocation(line: 200, column: 13, scope: !3569)
!3574 = !DILocalVariable(name: "cfi", scope: !3569, file: !3, line: 202, type: !132)
!3575 = !DILocation(line: 202, column: 22, scope: !3569)
!3576 = !DILocation(line: 202, column: 28, scope: !3569)
!3577 = !DILocation(line: 202, column: 33, scope: !3569)
!3578 = !DILocalVariable(name: "type", scope: !3569, file: !3, line: 203, type: !140)
!3579 = !DILocation(line: 203, column: 8, scope: !3569)
!3580 = !DILocation(line: 203, column: 15, scope: !3569)
!3581 = !DILocation(line: 203, column: 23, scope: !3569)
!3582 = !DILocation(line: 203, column: 28, scope: !3569)
!3583 = !DILocation(line: 203, column: 34, scope: !3569)
!3584 = !DILocation(line: 203, column: 39, scope: !3569)
!3585 = !DILocation(line: 203, column: 44, scope: !3569)
!3586 = !DILocation(line: 203, column: 50, scope: !3569)
!3587 = !DILocation(line: 228, column: 67, scope: !3569)
!3588 = !DILocation(line: 228, column: 2, scope: !3569)
!3589 = !DILocation(line: 230, column: 2, scope: !3569)
