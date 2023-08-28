; ModuleID = '../bcout/drivers/mtd/nand/ecc.llvm.bc'
source_filename = "drivers/mtd/nand/ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mtd_ooblayout_ops = type { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.mtd_ooblayout_ops*, %struct.mtd_pairing_scheme*, i32, i32, i32, %struct.mtd_erase_region_info*, i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64*, %struct.otp_info*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64, i64)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i32 (%struct.mtd_info*)*, void (%struct.mtd_info*)*, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, i8*, %struct.module*, %struct.device, i32, %struct.mtd_debug_info, %struct.nvmem_device*, %struct.mtd_info*, %struct.list_head, %union.anon.38 }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.38 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, %struct.nand_ops* }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, %struct.nand_ecc_engine*, %struct.nand_ecc_engine* }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i8* }
%struct.nand_ecc_engine = type { %struct.nand_ecc_engine_ops* }
%struct.nand_ecc_engine_ops = type { {}*, void (%struct.nand_device*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)* }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.39, i32, i32, %union.anon.40, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.39 = type { i8* }
%union.anon.40 = type { i8* }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { i64* }
%struct.nand_ops = type { i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)*, i1 (%struct.nand_device*, %struct.nand_pos*)* }

@nand_ooblayout_sp_ops = internal constant %struct.mtd_ooblayout_ops { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_ecc_sp, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_free_sp }, align 8, !dbg !0
@nand_ooblayout_lp_ops = internal constant %struct.mtd_ooblayout_ops { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_ecc_lp, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_free_lp }, align 8, !dbg !2414
@nand_ooblayout_lp_hamming_ops = internal constant %struct.mtd_ooblayout_ops { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_ecc_lp_hamming, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_free_lp_hamming }, align 8, !dbg !2416
@.str = private unnamed_addr constant [18 x i8] c"nand-ecc-maximize\00", align 1
@__UNIQUE_ID_file171 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1, !dbg !2397
@__UNIQUE_ID_license172 = internal constant [21 x i8] c"nandcore.license=GPL\00", section ".modinfo", align 1, !dbg !2402
@__UNIQUE_ID_author173 = internal constant [58 x i8] c"nandcore.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1, !dbg !2407
@__UNIQUE_ID_description174 = internal constant [40 x i8] c"nandcore.description=Generic ECC engine\00", section ".modinfo", align 1, !dbg !2412
@.str.1 = private unnamed_addr constant [19 x i8] c"nand-no-ecc-engine\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"nand-use-soft-ecc-engine\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nand-ecc-engine\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"nand-ecc-algo\00", align 1
@nand_ecc_algos = internal constant [4 x i8*] [i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)], align 16, !dbg !2418
@.str.5 = private unnamed_addr constant [8 x i8] c"hamming\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bch\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nand-ecc-placement\00", align 1
@nand_ecc_placement = internal constant [3 x i8*] [i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)], align 16, !dbg !2422
@.str.9 = private unnamed_addr constant [4 x i8] c"oob\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"interleaved\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"nand-ecc-strength\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"nand-ecc-step-size\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file171, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license172, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author173, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_description174, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_ecc_init_ctx(%struct.nand_device* %nand) #0 !dbg !2430 {
entry:
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2431, metadata !DIExpression()), !dbg !2432
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2433
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !2435
  %engine = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 5, !dbg !2436
  %1 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine, align 8, !dbg !2436
  %ops = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %1, i32 0, i32 0, !dbg !2437
  %2 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops, align 8, !dbg !2437
  %init_ctx = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %2, i32 0, i32 0, !dbg !2438
  %init_ctx1 = bitcast {}** %init_ctx to i32 (%struct.nand_device*)**, !dbg !2438
  %3 = load i32 (%struct.nand_device*)*, i32 (%struct.nand_device*)** %init_ctx1, align 8, !dbg !2438
  %tobool = icmp ne i32 (%struct.nand_device*)* %3, null, !dbg !2433
  br i1 %tobool, label %if.end, label %if.then, !dbg !2439

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2440
  br label %return, !dbg !2440

if.end:                                           ; preds = %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2441
  %ecc2 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 2, !dbg !2442
  %engine3 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc2, i32 0, i32 5, !dbg !2443
  %5 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine3, align 8, !dbg !2443
  %ops4 = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %5, i32 0, i32 0, !dbg !2444
  %6 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops4, align 8, !dbg !2444
  %init_ctx5 = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %6, i32 0, i32 0, !dbg !2445
  %init_ctx6 = bitcast {}** %init_ctx5 to i32 (%struct.nand_device*)**, !dbg !2445
  %7 = load i32 (%struct.nand_device*)*, i32 (%struct.nand_device*)** %init_ctx6, align 8, !dbg !2445
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2446
  %call = call i32 %7(%struct.nand_device* %8) #3, !dbg !2441
  store i32 %call, i32* %retval, align 4, !dbg !2447
  br label %return, !dbg !2447

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2448
  ret i32 %9, !dbg !2448
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nand_ecc_cleanup_ctx(%struct.nand_device* %nand) #0 !dbg !2449 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2450, metadata !DIExpression()), !dbg !2451
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2452
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !2454
  %engine = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 5, !dbg !2455
  %1 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine, align 8, !dbg !2455
  %ops = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %1, i32 0, i32 0, !dbg !2456
  %2 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops, align 8, !dbg !2456
  %cleanup_ctx = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %2, i32 0, i32 1, !dbg !2457
  %3 = load void (%struct.nand_device*)*, void (%struct.nand_device*)** %cleanup_ctx, align 8, !dbg !2457
  %tobool = icmp ne void (%struct.nand_device*)* %3, null, !dbg !2452
  br i1 %tobool, label %if.then, label %if.end, !dbg !2458

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2459
  %ecc1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 2, !dbg !2460
  %engine2 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc1, i32 0, i32 5, !dbg !2461
  %5 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine2, align 8, !dbg !2461
  %ops3 = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %5, i32 0, i32 0, !dbg !2462
  %6 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops3, align 8, !dbg !2462
  %cleanup_ctx4 = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %6, i32 0, i32 1, !dbg !2463
  %7 = load void (%struct.nand_device*)*, void (%struct.nand_device*)** %cleanup_ctx4, align 8, !dbg !2463
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2464
  call void %7(%struct.nand_device* %8) #3, !dbg !2459
  br label %if.end, !dbg !2459

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_ecc_prepare_io_req(%struct.nand_device* %nand, %struct.nand_page_io_req* %req) #0 !dbg !2466 {
entry:
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %req.addr = alloca %struct.nand_page_io_req*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2467, metadata !DIExpression()), !dbg !2468
  store %struct.nand_page_io_req* %req, %struct.nand_page_io_req** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_page_io_req** %req.addr, metadata !2469, metadata !DIExpression()), !dbg !2470
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2471
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !2473
  %engine = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 5, !dbg !2474
  %1 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine, align 8, !dbg !2474
  %ops = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %1, i32 0, i32 0, !dbg !2475
  %2 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops, align 8, !dbg !2475
  %prepare_io_req = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %2, i32 0, i32 2, !dbg !2476
  %3 = load i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)** %prepare_io_req, align 8, !dbg !2476
  %tobool = icmp ne i32 (%struct.nand_device*, %struct.nand_page_io_req*)* %3, null, !dbg !2471
  br i1 %tobool, label %if.end, label %if.then, !dbg !2477

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

if.end:                                           ; preds = %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2479
  %ecc1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 2, !dbg !2480
  %engine2 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc1, i32 0, i32 5, !dbg !2481
  %5 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine2, align 8, !dbg !2481
  %ops3 = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %5, i32 0, i32 0, !dbg !2482
  %6 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops3, align 8, !dbg !2482
  %prepare_io_req4 = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %6, i32 0, i32 2, !dbg !2483
  %7 = load i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)** %prepare_io_req4, align 8, !dbg !2483
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2484
  %9 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %req.addr, align 8, !dbg !2485
  %call = call i32 %7(%struct.nand_device* %8, %struct.nand_page_io_req* %9) #3, !dbg !2479
  store i32 %call, i32* %retval, align 4, !dbg !2486
  br label %return, !dbg !2486

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2487
  ret i32 %10, !dbg !2487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_ecc_finish_io_req(%struct.nand_device* %nand, %struct.nand_page_io_req* %req) #0 !dbg !2488 {
entry:
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %req.addr = alloca %struct.nand_page_io_req*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  store %struct.nand_page_io_req* %req, %struct.nand_page_io_req** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_page_io_req** %req.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2493
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !2495
  %engine = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 5, !dbg !2496
  %1 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine, align 8, !dbg !2496
  %ops = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %1, i32 0, i32 0, !dbg !2497
  %2 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops, align 8, !dbg !2497
  %finish_io_req = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %2, i32 0, i32 3, !dbg !2498
  %3 = load i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)** %finish_io_req, align 8, !dbg !2498
  %tobool = icmp ne i32 (%struct.nand_device*, %struct.nand_page_io_req*)* %3, null, !dbg !2493
  br i1 %tobool, label %if.end, label %if.then, !dbg !2499

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2500
  br label %return, !dbg !2500

if.end:                                           ; preds = %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2501
  %ecc1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 2, !dbg !2502
  %engine2 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc1, i32 0, i32 5, !dbg !2503
  %5 = load %struct.nand_ecc_engine*, %struct.nand_ecc_engine** %engine2, align 8, !dbg !2503
  %ops3 = getelementptr inbounds %struct.nand_ecc_engine, %struct.nand_ecc_engine* %5, i32 0, i32 0, !dbg !2504
  %6 = load %struct.nand_ecc_engine_ops*, %struct.nand_ecc_engine_ops** %ops3, align 8, !dbg !2504
  %finish_io_req4 = getelementptr inbounds %struct.nand_ecc_engine_ops, %struct.nand_ecc_engine_ops* %6, i32 0, i32 3, !dbg !2505
  %7 = load i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)** %finish_io_req4, align 8, !dbg !2505
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2506
  %9 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %req.addr, align 8, !dbg !2507
  %call = call i32 %7(%struct.nand_device* %8, %struct.nand_page_io_req* %9) #3, !dbg !2501
  store i32 %call, i32* %retval, align 4, !dbg !2508
  br label %return, !dbg !2508

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2509
  ret i32 %10, !dbg !2509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mtd_ooblayout_ops* @nand_get_small_page_ooblayout() #0 !dbg !2510 {
entry:
  ret %struct.mtd_ooblayout_ops* @nand_ooblayout_sp_ops, !dbg !2513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mtd_ooblayout_ops* @nand_get_large_page_ooblayout() #0 !dbg !2514 {
entry:
  ret %struct.mtd_ooblayout_ops* @nand_ooblayout_lp_ops, !dbg !2515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mtd_ooblayout_ops* @nand_get_large_page_hamming_ooblayout() #0 !dbg !2516 {
entry:
  ret %struct.mtd_ooblayout_ops* @nand_ooblayout_lp_hamming_ops, !dbg !2517
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @of_get_nand_ecc_user_config(%struct.nand_device* %nand) #0 !dbg !2518 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %dn = alloca %struct.device_node*, align 8
  %strength = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata %struct.device_node** %dn, metadata !2521, metadata !DIExpression()), !dbg !2522
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2523
  %call = call %struct.device_node* @nanddev_get_of_node(%struct.nand_device* %0) #3, !dbg !2524
  store %struct.device_node* %call, %struct.device_node** %dn, align 8, !dbg !2522
  call void @llvm.dbg.declare(metadata i32* %strength, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.declare(metadata i32* %size, metadata !2527, metadata !DIExpression()), !dbg !2528
  %1 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !2529
  %call1 = call i32 @of_get_nand_ecc_engine_type(%struct.device_node* %1) #3, !dbg !2530
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2531
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %2, i32 0, i32 2, !dbg !2532
  %user_conf = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 2, !dbg !2533
  %engine_type = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %user_conf, i32 0, i32 0, !dbg !2534
  store i32 %call1, i32* %engine_type, align 8, !dbg !2535
  %3 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !2536
  %call2 = call i32 @of_get_nand_ecc_algo(%struct.device_node* %3) #3, !dbg !2537
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2538
  %ecc3 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 2, !dbg !2539
  %user_conf4 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc3, i32 0, i32 2, !dbg !2540
  %algo = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %user_conf4, i32 0, i32 2, !dbg !2541
  store i32 %call2, i32* %algo, align 8, !dbg !2542
  %5 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !2543
  %call5 = call i32 @of_get_nand_ecc_placement(%struct.device_node* %5) #3, !dbg !2544
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2545
  %ecc6 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %6, i32 0, i32 2, !dbg !2546
  %user_conf7 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc6, i32 0, i32 2, !dbg !2547
  %placement = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %user_conf7, i32 0, i32 1, !dbg !2548
  store i32 %call5, i32* %placement, align 4, !dbg !2549
  %7 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !2550
  %call8 = call i32 @of_get_nand_ecc_strength(%struct.device_node* %7) #3, !dbg !2551
  store i32 %call8, i32* %strength, align 4, !dbg !2552
  %8 = load i32, i32* %strength, align 4, !dbg !2553
  %cmp = icmp sge i32 %8, 0, !dbg !2555
  br i1 %cmp, label %if.then, label %if.end, !dbg !2556

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %strength, align 4, !dbg !2557
  %10 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2558
  %ecc9 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %10, i32 0, i32 2, !dbg !2559
  %user_conf10 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc9, i32 0, i32 2, !dbg !2560
  %strength11 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %user_conf10, i32 0, i32 3, !dbg !2561
  store i32 %9, i32* %strength11, align 4, !dbg !2562
  br label %if.end, !dbg !2558

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !2563
  %call12 = call i32 @of_get_nand_ecc_step_size(%struct.device_node* %11) #3, !dbg !2564
  store i32 %call12, i32* %size, align 4, !dbg !2565
  %12 = load i32, i32* %size, align 4, !dbg !2566
  %cmp13 = icmp sge i32 %12, 0, !dbg !2568
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !2569

if.then14:                                        ; preds = %if.end
  %13 = load i32, i32* %size, align 4, !dbg !2570
  %14 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2571
  %ecc15 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %14, i32 0, i32 2, !dbg !2572
  %user_conf16 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc15, i32 0, i32 2, !dbg !2573
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %user_conf16, i32 0, i32 4, !dbg !2574
  store i32 %13, i32* %step_size, align 8, !dbg !2575
  br label %if.end17, !dbg !2571

if.end17:                                         ; preds = %if.then14, %if.end
  %15 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !2576
  %call18 = call zeroext i1 @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !2578
  br i1 %call18, label %if.then19, label %if.end23, !dbg !2579

if.then19:                                        ; preds = %if.end17
  %16 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2580
  %ecc20 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %16, i32 0, i32 2, !dbg !2581
  %user_conf21 = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc20, i32 0, i32 2, !dbg !2582
  %flags = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %user_conf21, i32 0, i32 5, !dbg !2583
  %17 = load i32, i32* %flags, align 4, !dbg !2584
  %conv = zext i32 %17 to i64, !dbg !2584
  %or = or i64 %conv, 1, !dbg !2584
  %conv22 = trunc i64 %or to i32, !dbg !2584
  store i32 %conv22, i32* %flags, align 4, !dbg !2584
  br label %if.end23, !dbg !2580

if.end23:                                         ; preds = %if.then19, %if.end17
  ret void, !dbg !2585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @nanddev_get_of_node(%struct.nand_device* %nand) #0 !dbg !2586 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2591
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 0, !dbg !2592
  %call = call %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %mtd) #3, !dbg !2593
  ret %struct.device_node* %call, !dbg !2594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_nand_ecc_engine_type(%struct.device_node* %np) #0 !dbg !2595 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %eng_np = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.declare(metadata %struct.device_node** %eng_np, metadata !2600, metadata !DIExpression()), !dbg !2601
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2602
  %call = call zeroext i1 @of_property_read_bool(%struct.device_node* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !2604
  br i1 %call, label %if.then, label %if.end, !dbg !2605

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2606
  br label %return, !dbg !2606

if.end:                                           ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2607
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !2609
  br i1 %call1, label %if.then2, label %if.end3, !dbg !2610

if.then2:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !2611
  br label %return, !dbg !2611

if.end3:                                          ; preds = %if.end
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2612
  %call4 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0) #3, !dbg !2613
  store %struct.device_node* %call4, %struct.device_node** %eng_np, align 8, !dbg !2614
  %3 = load %struct.device_node*, %struct.device_node** %eng_np, align 8, !dbg !2615
  call void @of_node_put(%struct.device_node* %3) #3, !dbg !2616
  %4 = load %struct.device_node*, %struct.device_node** %eng_np, align 8, !dbg !2617
  %tobool = icmp ne %struct.device_node* %4, null, !dbg !2617
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !2619

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.device_node*, %struct.device_node** %eng_np, align 8, !dbg !2620
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2623
  %cmp = icmp eq %struct.device_node* %5, %6, !dbg !2624
  br i1 %cmp, label %if.then6, label %if.else, !dbg !2625

if.then6:                                         ; preds = %if.then5
  store i32 4, i32* %retval, align 4, !dbg !2626
  br label %return, !dbg !2626

if.else:                                          ; preds = %if.then5
  store i32 3, i32* %retval, align 4, !dbg !2627
  br label %return, !dbg !2627

if.end7:                                          ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !2628
  br label %return, !dbg !2628

return:                                           ; preds = %if.end7, %if.else, %if.then6, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2629
  ret i32 %7, !dbg !2629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_nand_ecc_algo(%struct.device_node* %np) #0 !dbg !2630 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %ecc_algo = alloca i32, align 4
  %pm = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.declare(metadata i32* %ecc_algo, metadata !2635, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.declare(metadata i8** %pm, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2639, metadata !DIExpression()), !dbg !2640
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2641
  %call = call i32 @of_property_read_string(%struct.device_node* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %pm) #3, !dbg !2642
  store i32 %call, i32* %err, align 4, !dbg !2643
  %1 = load i32, i32* %err, align 4, !dbg !2644
  %tobool = icmp ne i32 %1, 0, !dbg !2644
  br i1 %tobool, label %if.end5, label %if.then, !dbg !2646

if.then:                                          ; preds = %entry
  store i32 1, i32* %ecc_algo, align 4, !dbg !2647
  br label %for.cond, !dbg !2650

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %ecc_algo, align 4, !dbg !2651
  %conv = zext i32 %2 to i64, !dbg !2651
  %cmp = icmp ult i64 %conv, 4, !dbg !2653
  br i1 %cmp, label %for.body, label %for.end, !dbg !2654

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %pm, align 8, !dbg !2655
  %4 = load i32, i32* %ecc_algo, align 4, !dbg !2658
  %idxprom = zext i32 %4 to i64, !dbg !2659
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @nand_ecc_algos, i64 0, i64 %idxprom, !dbg !2659
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !2659
  %call2 = call i32 @strcasecmp(i8* %3, i8* %5) #3, !dbg !2660
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2660
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2661

if.then4:                                         ; preds = %for.body
  %6 = load i32, i32* %ecc_algo, align 4, !dbg !2662
  store i32 %6, i32* %retval, align 4, !dbg !2663
  br label %return, !dbg !2663

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2664

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %ecc_algo, align 4, !dbg !2665
  %inc = add i32 %7, 1, !dbg !2665
  store i32 %inc, i32* %ecc_algo, align 4, !dbg !2665
  br label %for.cond, !dbg !2666, !llvm.loop !2667

for.end:                                          ; preds = %for.cond
  br label %if.end5, !dbg !2669

if.end5:                                          ; preds = %for.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !2670
  br label %return, !dbg !2670

return:                                           ; preds = %if.end5, %if.then4
  %8 = load i32, i32* %retval, align 4, !dbg !2671
  ret i32 %8, !dbg !2671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_nand_ecc_placement(%struct.device_node* %np) #0 !dbg !2672 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %placement = alloca i32, align 4
  %pm = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2675, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.declare(metadata i32* %placement, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata i8** %pm, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2681, metadata !DIExpression()), !dbg !2682
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2683
  %call = call i32 @of_property_read_string(%struct.device_node* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %pm) #3, !dbg !2684
  store i32 %call, i32* %err, align 4, !dbg !2685
  %1 = load i32, i32* %err, align 4, !dbg !2686
  %tobool = icmp ne i32 %1, 0, !dbg !2686
  br i1 %tobool, label %if.end5, label %if.then, !dbg !2688

if.then:                                          ; preds = %entry
  store i32 1, i32* %placement, align 4, !dbg !2689
  br label %for.cond, !dbg !2692

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %placement, align 4, !dbg !2693
  %conv = zext i32 %2 to i64, !dbg !2693
  %cmp = icmp ult i64 %conv, 3, !dbg !2695
  br i1 %cmp, label %for.body, label %for.end, !dbg !2696

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %pm, align 8, !dbg !2697
  %4 = load i32, i32* %placement, align 4, !dbg !2700
  %idxprom = zext i32 %4 to i64, !dbg !2701
  %arrayidx = getelementptr [3 x i8*], [3 x i8*]* @nand_ecc_placement, i64 0, i64 %idxprom, !dbg !2701
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !2701
  %call2 = call i32 @strcasecmp(i8* %3, i8* %5) #3, !dbg !2702
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2702
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2703

if.then4:                                         ; preds = %for.body
  %6 = load i32, i32* %placement, align 4, !dbg !2704
  store i32 %6, i32* %retval, align 4, !dbg !2705
  br label %return, !dbg !2705

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2706

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %placement, align 4, !dbg !2707
  %inc = add i32 %7, 1, !dbg !2707
  store i32 %inc, i32* %placement, align 4, !dbg !2707
  br label %for.cond, !dbg !2708, !llvm.loop !2709

for.end:                                          ; preds = %for.cond
  br label %if.end5, !dbg !2711

if.end5:                                          ; preds = %for.end, %entry
  store i32 0, i32* %retval, align 4, !dbg !2712
  br label %return, !dbg !2712

return:                                           ; preds = %if.end5, %if.then4
  %8 = load i32, i32* %retval, align 4, !dbg !2713
  ret i32 %8, !dbg !2713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_nand_ecc_strength(%struct.device_node* %np) #0 !dbg !2714 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2721, metadata !DIExpression()), !dbg !2722
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2723
  %call = call i32 @of_property_read_u32(%struct.device_node* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* %val) #3, !dbg !2724
  store i32 %call, i32* %ret, align 4, !dbg !2725
  %1 = load i32, i32* %ret, align 4, !dbg !2726
  %tobool = icmp ne i32 %1, 0, !dbg !2726
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2726

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2727
  br label %cond.end, !dbg !2726

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %val, align 4, !dbg !2728
  br label %cond.end, !dbg !2726

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !2726
  ret i32 %cond, !dbg !2729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_get_nand_ecc_step_size(%struct.device_node* %np) #0 !dbg !2730 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2735, metadata !DIExpression()), !dbg !2736
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2737
  %call = call i32 @of_property_read_u32(%struct.device_node* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %val) #3, !dbg !2738
  store i32 %call, i32* %ret, align 4, !dbg !2739
  %1 = load i32, i32* %ret, align 4, !dbg !2740
  %tobool = icmp ne i32 %1, 0, !dbg !2740
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2740

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2741
  br label %cond.end, !dbg !2740

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %val, align 4, !dbg !2742
  br label %cond.end, !dbg !2740

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !2740
  ret i32 %cond, !dbg !2743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !2744 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2755
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2756
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #3, !dbg !2757
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2754
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2758
  %tobool = icmp ne %struct.property* %2, null, !dbg !2758
  %3 = zext i1 %tobool to i64, !dbg !2758
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2758
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2758
  ret i1 %tobool1, !dbg !2759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @nand_ecc_is_strong_enough(%struct.nand_device* %nand) #0 !dbg !2760 {
entry:
  %retval = alloca i1, align 1
  %nand.addr = alloca %struct.nand_device*, align 8
  %reqs = alloca %struct.nand_ecc_props*, align 8
  %conf = alloca %struct.nand_ecc_props*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %corr = alloca i32, align 4
  %ds_corr = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %reqs, metadata !2765, metadata !DIExpression()), !dbg !2768
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2769
  %call = call %struct.nand_ecc_props* @nanddev_get_ecc_requirements(%struct.nand_device* %0) #3, !dbg !2770
  store %struct.nand_ecc_props* %call, %struct.nand_ecc_props** %reqs, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %conf, metadata !2771, metadata !DIExpression()), !dbg !2772
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2773
  %call1 = call %struct.nand_ecc_props* @nanddev_get_ecc_conf(%struct.nand_device* %1) #3, !dbg !2774
  store %struct.nand_ecc_props* %call1, %struct.nand_ecc_props** %conf, align 8, !dbg !2772
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2775, metadata !DIExpression()), !dbg !2776
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2777
  %call2 = call %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %2) #3, !dbg !2778
  store %struct.mtd_info* %call2, %struct.mtd_info** %mtd, align 8, !dbg !2776
  call void @llvm.dbg.declare(metadata i32* %corr, metadata !2779, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.declare(metadata i32* %ds_corr, metadata !2781, metadata !DIExpression()), !dbg !2782
  %3 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %conf, align 8, !dbg !2783
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %3, i32 0, i32 4, !dbg !2785
  %4 = load i32, i32* %step_size, align 4, !dbg !2785
  %cmp = icmp eq i32 %4, 0, !dbg !2786
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2787

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs, align 8, !dbg !2788
  %step_size3 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %5, i32 0, i32 4, !dbg !2789
  %6 = load i32, i32* %step_size3, align 4, !dbg !2789
  %cmp4 = icmp eq i32 %6, 0, !dbg !2790
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2791

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, i1* %retval, align 1, !dbg !2792
  br label %return, !dbg !2792

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2793
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 4, !dbg !2794
  %8 = load i32, i32* %writesize, align 4, !dbg !2794
  %9 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %conf, align 8, !dbg !2795
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %9, i32 0, i32 3, !dbg !2796
  %10 = load i32, i32* %strength, align 4, !dbg !2796
  %mul = mul i32 %8, %10, !dbg !2797
  %11 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %conf, align 8, !dbg !2798
  %step_size5 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %11, i32 0, i32 4, !dbg !2799
  %12 = load i32, i32* %step_size5, align 4, !dbg !2799
  %div = udiv i32 %mul, %12, !dbg !2800
  store i32 %div, i32* %corr, align 4, !dbg !2801
  %13 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2802
  %writesize6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 4, !dbg !2803
  %14 = load i32, i32* %writesize6, align 4, !dbg !2803
  %15 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs, align 8, !dbg !2804
  %strength7 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %15, i32 0, i32 3, !dbg !2805
  %16 = load i32, i32* %strength7, align 4, !dbg !2805
  %mul8 = mul i32 %14, %16, !dbg !2806
  %17 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs, align 8, !dbg !2807
  %step_size9 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %17, i32 0, i32 4, !dbg !2808
  %18 = load i32, i32* %step_size9, align 4, !dbg !2808
  %div10 = udiv i32 %mul8, %18, !dbg !2809
  store i32 %div10, i32* %ds_corr, align 4, !dbg !2810
  %19 = load i32, i32* %corr, align 4, !dbg !2811
  %20 = load i32, i32* %ds_corr, align 4, !dbg !2812
  %cmp11 = icmp sge i32 %19, %20, !dbg !2813
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !2814

land.rhs:                                         ; preds = %if.end
  %21 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %conf, align 8, !dbg !2815
  %strength12 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %21, i32 0, i32 3, !dbg !2816
  %22 = load i32, i32* %strength12, align 4, !dbg !2816
  %23 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs, align 8, !dbg !2817
  %strength13 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %23, i32 0, i32 3, !dbg !2818
  %24 = load i32, i32* %strength13, align 4, !dbg !2818
  %cmp14 = icmp uge i32 %22, %24, !dbg !2819
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %25 = phi i1 [ false, %if.end ], [ %cmp14, %land.rhs ], !dbg !2820
  store i1 %25, i1* %retval, align 1, !dbg !2821
  br label %return, !dbg !2821

return:                                           ; preds = %land.end, %if.then
  %26 = load i1, i1* %retval, align 1, !dbg !2822
  ret i1 %26, !dbg !2822
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_ecc_props* @nanddev_get_ecc_requirements(%struct.nand_device* %nand) #0 !dbg !2823 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2828
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !2829
  %requirements = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 1, !dbg !2830
  ret %struct.nand_ecc_props* %requirements, !dbg !2831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_ecc_props* @nanddev_get_ecc_conf(%struct.nand_device* %nand) #0 !dbg !2832 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2833, metadata !DIExpression()), !dbg !2834
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2835
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !2836
  %ctx = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 3, !dbg !2837
  %conf = getelementptr inbounds %struct.nand_ecc_context, %struct.nand_ecc_context* %ctx, i32 0, i32 0, !dbg !2838
  ret %struct.nand_ecc_props* %conf, !dbg !2839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %nand) #0 !dbg !2840 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2845
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 0, !dbg !2846
  ret %struct.mtd_info* %mtd, !dbg !2847
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_ooblayout_ecc_sp(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !2848 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %nand = alloca %struct.nand_device*, align 8
  %total_ecc_bytes = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !2855, metadata !DIExpression()), !dbg !2856
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2857
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #3, !dbg !2858
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !2856
  call void @llvm.dbg.declare(metadata i32* %total_ecc_bytes, metadata !2859, metadata !DIExpression()), !dbg !2860
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2861
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 2, !dbg !2862
  %ctx = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 3, !dbg !2863
  %total = getelementptr inbounds %struct.nand_ecc_context, %struct.nand_ecc_context* %ctx, i32 0, i32 1, !dbg !2864
  %2 = load i32, i32* %total, align 8, !dbg !2864
  store i32 %2, i32* %total_ecc_bytes, align 4, !dbg !2860
  %3 = load i32, i32* %section.addr, align 4, !dbg !2865
  %cmp = icmp sgt i32 %3, 1, !dbg !2867
  br i1 %cmp, label %if.then, label %if.end, !dbg !2868

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !2869
  br label %return, !dbg !2869

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %section.addr, align 4, !dbg !2870
  %tobool = icmp ne i32 %4, 0, !dbg !2870
  br i1 %tobool, label %if.else6, label %if.then1, !dbg !2872

if.then1:                                         ; preds = %if.end
  %5 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2873
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %5, i32 0, i32 0, !dbg !2875
  store i32 0, i32* %offset, align 4, !dbg !2876
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2877
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 6, !dbg !2879
  %7 = load i32, i32* %oobsize, align 4, !dbg !2879
  %cmp2 = icmp eq i32 %7, 16, !dbg !2880
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2881

if.then3:                                         ; preds = %if.then1
  %8 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2882
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %8, i32 0, i32 1, !dbg !2883
  store i32 4, i32* %length, align 4, !dbg !2884
  br label %if.end5, !dbg !2882

if.else:                                          ; preds = %if.then1
  %9 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2885
  %length4 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %9, i32 0, i32 1, !dbg !2886
  store i32 3, i32* %length4, align 4, !dbg !2887
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  br label %if.end13, !dbg !2888

if.else6:                                         ; preds = %if.end
  %10 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2889
  %oobsize7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 6, !dbg !2892
  %11 = load i32, i32* %oobsize7, align 4, !dbg !2892
  %cmp8 = icmp eq i32 %11, 8, !dbg !2893
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2894

if.then9:                                         ; preds = %if.else6
  store i32 -34, i32* %retval, align 4, !dbg !2895
  br label %return, !dbg !2895

if.end10:                                         ; preds = %if.else6
  %12 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2896
  %offset11 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %12, i32 0, i32 0, !dbg !2897
  store i32 6, i32* %offset11, align 4, !dbg !2898
  %13 = load i32, i32* %total_ecc_bytes, align 4, !dbg !2899
  %sub = sub i32 %13, 4, !dbg !2900
  %14 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2901
  %length12 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %14, i32 0, i32 1, !dbg !2902
  store i32 %sub, i32* %length12, align 4, !dbg !2903
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end5
  store i32 0, i32* %retval, align 4, !dbg !2904
  br label %return, !dbg !2904

return:                                           ; preds = %if.end13, %if.then9, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2905
  ret i32 %15, !dbg !2905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_ooblayout_free_sp(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !2906 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2907, metadata !DIExpression()), !dbg !2908
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  %0 = load i32, i32* %section.addr, align 4, !dbg !2913
  %cmp = icmp sgt i32 %0, 1, !dbg !2915
  br i1 %cmp, label %if.then, label %if.end, !dbg !2916

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !2917
  br label %return, !dbg !2917

if.end:                                           ; preds = %entry
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2918
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 6, !dbg !2920
  %2 = load i32, i32* %oobsize, align 4, !dbg !2920
  %cmp1 = icmp eq i32 %2, 16, !dbg !2921
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2922

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %section.addr, align 4, !dbg !2923
  %tobool = icmp ne i32 %3, 0, !dbg !2923
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !2926

if.then3:                                         ; preds = %if.then2
  store i32 -34, i32* %retval, align 4, !dbg !2927
  br label %return, !dbg !2927

if.end4:                                          ; preds = %if.then2
  %4 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2928
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %4, i32 0, i32 1, !dbg !2929
  store i32 8, i32* %length, align 4, !dbg !2930
  %5 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2931
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %5, i32 0, i32 0, !dbg !2932
  store i32 8, i32* %offset, align 4, !dbg !2933
  br label %if.end12, !dbg !2934

if.else:                                          ; preds = %if.end
  %6 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2935
  %length5 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1, !dbg !2937
  store i32 2, i32* %length5, align 4, !dbg !2938
  %7 = load i32, i32* %section.addr, align 4, !dbg !2939
  %tobool6 = icmp ne i32 %7, 0, !dbg !2939
  br i1 %tobool6, label %if.else9, label %if.then7, !dbg !2941

if.then7:                                         ; preds = %if.else
  %8 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2942
  %offset8 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %8, i32 0, i32 0, !dbg !2943
  store i32 3, i32* %offset8, align 4, !dbg !2944
  br label %if.end11, !dbg !2942

if.else9:                                         ; preds = %if.else
  %9 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2945
  %offset10 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %9, i32 0, i32 0, !dbg !2946
  store i32 6, i32* %offset10, align 4, !dbg !2947
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !2948
  br label %return, !dbg !2948

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2949
  ret i32 %10, !dbg !2949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %mtd) #0 !dbg !2950 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nand_device*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2955, metadata !DIExpression()), !dbg !2957
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2957
  %1 = bitcast %struct.mtd_info* %0 to i8*, !dbg !2957
  store i8* %1, i8** %__mptr, align 8, !dbg !2957
  br label %do.body, !dbg !2957

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2958

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2957
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2957
  %3 = bitcast i8* %add.ptr to %struct.nand_device*, !dbg !2957
  store %struct.nand_device* %3, %struct.nand_device** %tmp, align 8, !dbg !2958
  %4 = load %struct.nand_device*, %struct.nand_device** %tmp, align 8, !dbg !2957
  ret %struct.nand_device* %4, !dbg !2960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_ooblayout_ecc_lp(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !2961 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %nand = alloca %struct.nand_device*, align 8
  %total_ecc_bytes = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2962, metadata !DIExpression()), !dbg !2963
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !2964, metadata !DIExpression()), !dbg !2965
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !2968, metadata !DIExpression()), !dbg !2969
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2970
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #3, !dbg !2971
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !2969
  call void @llvm.dbg.declare(metadata i32* %total_ecc_bytes, metadata !2972, metadata !DIExpression()), !dbg !2973
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2974
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 2, !dbg !2975
  %ctx = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 3, !dbg !2976
  %total = getelementptr inbounds %struct.nand_ecc_context, %struct.nand_ecc_context* %ctx, i32 0, i32 1, !dbg !2977
  %2 = load i32, i32* %total, align 8, !dbg !2977
  store i32 %2, i32* %total_ecc_bytes, align 4, !dbg !2973
  %3 = load i32, i32* %section.addr, align 4, !dbg !2978
  %tobool = icmp ne i32 %3, 0, !dbg !2978
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2980

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %total_ecc_bytes, align 4, !dbg !2981
  %tobool1 = icmp ne i32 %4, 0, !dbg !2981
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2982

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -34, i32* %retval, align 4, !dbg !2983
  br label %return, !dbg !2983

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %total_ecc_bytes, align 4, !dbg !2984
  %6 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2985
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1, !dbg !2986
  store i32 %5, i32* %length, align 4, !dbg !2987
  %7 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2988
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 6, !dbg !2989
  %8 = load i32, i32* %oobsize, align 4, !dbg !2989
  %9 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2990
  %length2 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %9, i32 0, i32 1, !dbg !2991
  %10 = load i32, i32* %length2, align 4, !dbg !2991
  %sub = sub i32 %8, %10, !dbg !2992
  %11 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !2993
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %11, i32 0, i32 0, !dbg !2994
  store i32 %sub, i32* %offset, align 4, !dbg !2995
  store i32 0, i32* %retval, align 4, !dbg !2996
  br label %return, !dbg !2996

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2997
  ret i32 %12, !dbg !2997
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_ooblayout_free_lp(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !2998 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %nand = alloca %struct.nand_device*, align 8
  %total_ecc_bytes = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2999, metadata !DIExpression()), !dbg !3000
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !3001, metadata !DIExpression()), !dbg !3002
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !3005, metadata !DIExpression()), !dbg !3006
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3007
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #3, !dbg !3008
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !3006
  call void @llvm.dbg.declare(metadata i32* %total_ecc_bytes, metadata !3009, metadata !DIExpression()), !dbg !3010
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !3011
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 2, !dbg !3012
  %ctx = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 3, !dbg !3013
  %total = getelementptr inbounds %struct.nand_ecc_context, %struct.nand_ecc_context* %ctx, i32 0, i32 1, !dbg !3014
  %2 = load i32, i32* %total, align 8, !dbg !3014
  store i32 %2, i32* %total_ecc_bytes, align 4, !dbg !3010
  %3 = load i32, i32* %section.addr, align 4, !dbg !3015
  %tobool = icmp ne i32 %3, 0, !dbg !3015
  br i1 %tobool, label %if.then, label %if.end, !dbg !3017

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !3018
  br label %return, !dbg !3018

if.end:                                           ; preds = %entry
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3019
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 6, !dbg !3020
  %5 = load i32, i32* %oobsize, align 4, !dbg !3020
  %6 = load i32, i32* %total_ecc_bytes, align 4, !dbg !3021
  %sub = sub i32 %5, %6, !dbg !3022
  %sub1 = sub i32 %sub, 2, !dbg !3023
  %7 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3024
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 1, !dbg !3025
  store i32 %sub1, i32* %length, align 4, !dbg !3026
  %8 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3027
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %8, i32 0, i32 0, !dbg !3028
  store i32 2, i32* %offset, align 4, !dbg !3029
  store i32 0, i32* %retval, align 4, !dbg !3030
  br label %return, !dbg !3030

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3031
  ret i32 %9, !dbg !3031
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_ooblayout_ecc_lp_hamming(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !3032 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %nand = alloca %struct.nand_device*, align 8
  %total_ecc_bytes = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3033, metadata !DIExpression()), !dbg !3034
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !3035, metadata !DIExpression()), !dbg !3036
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !3039, metadata !DIExpression()), !dbg !3040
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3041
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #3, !dbg !3042
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !3040
  call void @llvm.dbg.declare(metadata i32* %total_ecc_bytes, metadata !3043, metadata !DIExpression()), !dbg !3044
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !3045
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 2, !dbg !3046
  %ctx = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 3, !dbg !3047
  %total = getelementptr inbounds %struct.nand_ecc_context, %struct.nand_ecc_context* %ctx, i32 0, i32 1, !dbg !3048
  %2 = load i32, i32* %total, align 8, !dbg !3048
  store i32 %2, i32* %total_ecc_bytes, align 4, !dbg !3044
  %3 = load i32, i32* %section.addr, align 4, !dbg !3049
  %tobool = icmp ne i32 %3, 0, !dbg !3049
  br i1 %tobool, label %if.then, label %if.end, !dbg !3051

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !3052
  br label %return, !dbg !3052

if.end:                                           ; preds = %entry
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3053
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 6, !dbg !3054
  %5 = load i32, i32* %oobsize, align 4, !dbg !3054
  switch i32 %5, label %sw.default [
    i32 64, label %sw.bb
    i32 128, label %sw.bb1
  ], !dbg !3055

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3056
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0, !dbg !3058
  store i32 40, i32* %offset, align 4, !dbg !3059
  br label %sw.epilog, !dbg !3060

sw.bb1:                                           ; preds = %if.end
  %7 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3061
  %offset2 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 0, !dbg !3062
  store i32 80, i32* %offset2, align 4, !dbg !3063
  br label %sw.epilog, !dbg !3064

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3065
  br label %return, !dbg !3065

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %8 = load i32, i32* %total_ecc_bytes, align 4, !dbg !3066
  %9 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3067
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %9, i32 0, i32 1, !dbg !3068
  store i32 %8, i32* %length, align 4, !dbg !3069
  %10 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3070
  %offset3 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %10, i32 0, i32 0, !dbg !3072
  %11 = load i32, i32* %offset3, align 4, !dbg !3072
  %12 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3073
  %length4 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %12, i32 0, i32 1, !dbg !3074
  %13 = load i32, i32* %length4, align 4, !dbg !3074
  %add = add i32 %11, %13, !dbg !3075
  %14 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3076
  %oobsize5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 6, !dbg !3077
  %15 = load i32, i32* %oobsize5, align 4, !dbg !3077
  %cmp = icmp ugt i32 %add, %15, !dbg !3078
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !3079

if.then6:                                         ; preds = %sw.epilog
  store i32 -34, i32* %retval, align 4, !dbg !3080
  br label %return, !dbg !3080

if.end7:                                          ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !3081
  br label %return, !dbg !3081

return:                                           ; preds = %if.end7, %if.then6, %sw.default, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3082
  ret i32 %16, !dbg !3082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_ooblayout_free_lp_hamming(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !3083 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %nand = alloca %struct.nand_device*, align 8
  %total_ecc_bytes = alloca i32, align 4
  %ecc_offset = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3084, metadata !DIExpression()), !dbg !3085
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !3086, metadata !DIExpression()), !dbg !3087
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !3090, metadata !DIExpression()), !dbg !3091
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3092
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #3, !dbg !3093
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !3091
  call void @llvm.dbg.declare(metadata i32* %total_ecc_bytes, metadata !3094, metadata !DIExpression()), !dbg !3095
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !3096
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 2, !dbg !3097
  %ctx = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 3, !dbg !3098
  %total = getelementptr inbounds %struct.nand_ecc_context, %struct.nand_ecc_context* %ctx, i32 0, i32 1, !dbg !3099
  %2 = load i32, i32* %total, align 8, !dbg !3099
  store i32 %2, i32* %total_ecc_bytes, align 4, !dbg !3095
  call void @llvm.dbg.declare(metadata i32* %ecc_offset, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i32 0, i32* %ecc_offset, align 4, !dbg !3101
  %3 = load i32, i32* %section.addr, align 4, !dbg !3102
  %cmp = icmp slt i32 %3, 0, !dbg !3104
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3105

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %section.addr, align 4, !dbg !3106
  %cmp1 = icmp sgt i32 %4, 1, !dbg !3107
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3108

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -34, i32* %retval, align 4, !dbg !3109
  br label %return, !dbg !3109

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3110
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 6, !dbg !3111
  %6 = load i32, i32* %oobsize, align 4, !dbg !3111
  switch i32 %6, label %sw.default [
    i32 64, label %sw.bb
    i32 128, label %sw.bb2
  ], !dbg !3112

sw.bb:                                            ; preds = %if.end
  store i32 40, i32* %ecc_offset, align 4, !dbg !3113
  br label %sw.epilog, !dbg !3115

sw.bb2:                                           ; preds = %if.end
  store i32 80, i32* %ecc_offset, align 4, !dbg !3116
  br label %sw.epilog, !dbg !3117

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3118
  br label %return, !dbg !3118

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %7 = load i32, i32* %section.addr, align 4, !dbg !3119
  %cmp3 = icmp eq i32 %7, 0, !dbg !3121
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3122

if.then4:                                         ; preds = %sw.epilog
  %8 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3123
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %8, i32 0, i32 0, !dbg !3125
  store i32 2, i32* %offset, align 4, !dbg !3126
  %9 = load i32, i32* %ecc_offset, align 4, !dbg !3127
  %sub = sub i32 %9, 2, !dbg !3128
  %10 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3129
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %10, i32 0, i32 1, !dbg !3130
  store i32 %sub, i32* %length, align 4, !dbg !3131
  br label %if.end10, !dbg !3132

if.else:                                          ; preds = %sw.epilog
  %11 = load i32, i32* %ecc_offset, align 4, !dbg !3133
  %12 = load i32, i32* %total_ecc_bytes, align 4, !dbg !3135
  %add = add i32 %11, %12, !dbg !3136
  %13 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3137
  %offset5 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %13, i32 0, i32 0, !dbg !3138
  store i32 %add, i32* %offset5, align 4, !dbg !3139
  %14 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3140
  %oobsize6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 6, !dbg !3141
  %15 = load i32, i32* %oobsize6, align 4, !dbg !3141
  %16 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3142
  %offset7 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %16, i32 0, i32 0, !dbg !3143
  %17 = load i32, i32* %offset7, align 4, !dbg !3143
  %sub8 = sub i32 %15, %17, !dbg !3144
  %18 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !3145
  %length9 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %18, i32 0, i32 1, !dbg !3146
  store i32 %sub8, i32* %length9, align 4, !dbg !3147
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  store i32 0, i32* %retval, align 4, !dbg !3148
  br label %return, !dbg !3148

return:                                           ; preds = %if.end10, %sw.default, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3149
  ret i32 %19, !dbg !3149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %mtd) #0 !dbg !3150 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3153, metadata !DIExpression()), !dbg !3154
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3155
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 55, !dbg !3156
  %call = call %struct.device_node* @dev_of_node(%struct.device* %dev) #3, !dbg !3157
  ret %struct.device_node* %call, !dbg !3158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @dev_of_node(%struct.device* %dev) #0 !dbg !3159 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3164
  %tobool = icmp ne %struct.device* %0, null, !dbg !3164
  br i1 %tobool, label %if.end, label %if.then, !dbg !3166

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3167
  br label %return, !dbg !3167

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3168
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !3169
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3169
  store %struct.device_node* %2, %struct.device_node** %retval, align 8, !dbg !3170
  br label %return, !dbg !3170

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3171
  ret %struct.device_node* %3, !dbg !3171
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !3172 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3175, metadata !DIExpression()), !dbg !3176
  ret void, !dbg !3177
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3178 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3185, metadata !DIExpression()), !dbg !3186
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3187
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3188
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3189
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #3, !dbg !3190
  ret i32 %call, !dbg !3191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3192 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3195, metadata !DIExpression()), !dbg !3196
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3197, metadata !DIExpression()), !dbg !3198
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3199, metadata !DIExpression()), !dbg !3200
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3201, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3203, metadata !DIExpression()), !dbg !3204
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3205
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3206
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3207
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3208
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #3, !dbg !3209
  store i32 %call, i32* %ret, align 4, !dbg !3204
  %4 = load i32, i32* %ret, align 4, !dbg !3210
  %cmp = icmp sge i32 %4, 0, !dbg !3212
  br i1 %cmp, label %if.then, label %if.else, !dbg !3213

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3214
  br label %return, !dbg !3214

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3215
  store i32 %5, i32* %retval, align 4, !dbg !3216
  br label %return, !dbg !3216

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3217
  ret i32 %6, !dbg !3217
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2425, !2426, !2427, !2428}
!llvm.ident = !{!2429}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nand_ooblayout_sp_ops", scope: !2, file: !3, line: 205, type: !120, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !2396, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/ecc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_engine_type", file: !51, line: 142, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/mtd/nand.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_INVALID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_NONE", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_SOFT", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_HOST", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_DIE", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_placement", file: !51, line: 158, baseType: !7, size: 32, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_UNKNOWN", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_OOB", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_INTERLEAVED", value: 2, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_algo", file: !51, line: 171, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "NAND_ECC_ALGO_UNKNOWN", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "NAND_ECC_ALGO_HAMMING", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "NAND_ECC_ALGO_BCH", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "NAND_ECC_ALGO_RS", value: 3, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_page_io_req_type", file: !51, line: 90, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "NAND_PAGE_READ", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "NAND_PAGE_WRITE", value: 1, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 10, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!78 = !{!79, !80, !117}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !82)
!82 = !{!83, !2290, !2302, !2371, !2376, !2380}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !81, file: !51, line: 320, baseType: !84, size: 9664)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !85, line: 235, size: 9664, elements: !86)
!85 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !91, !97, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !116, !118, !134, !155, !156, !157, !158, !168, !178, !194, !198, !203, !209, !210, !229, !230, !241, !242, !243, !244, !245, !246, !257, !261, !265, !266, !267, !271, !272, !273, !274, !278, !279, !280, !281, !282, !285, !297, !304, !305, !306, !310, !2260, !2261, !2269, !2273, !2274, !2275}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !85, line: 236, baseType: !88, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !89, line: 79, baseType: !90)
!89 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !85, line: 237, baseType: !92, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 104, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !7)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !85, line: 238, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !89, line: 107, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !101)
!101 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !84, file: !85, line: 244, baseType: !92, size: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !84, file: !85, line: 252, baseType: !92, size: 32, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !84, file: !85, line: 263, baseType: !92, size: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !84, file: !85, line: 265, baseType: !92, size: 32, offset: 224)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !84, file: !85, line: 266, baseType: !92, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !84, file: !85, line: 272, baseType: !7, size: 32, offset: 288)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !84, file: !85, line: 273, baseType: !7, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !84, file: !85, line: 275, baseType: !7, size: 32, offset: 352)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !84, file: !85, line: 276, baseType: !7, size: 32, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !84, file: !85, line: 285, baseType: !7, size: 32, offset: 416)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !85, line: 288, baseType: !113, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !84, file: !85, line: 289, baseType: !117, size: 32, offset: 512)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !84, file: !85, line: 292, baseType: !119, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !85, line: 101, size: 128, elements: !122)
!122 = !{!123, !133}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !121, file: !85, line: 102, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!117, !127, !117, !128}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !85, line: 87, size: 64, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !129, file: !85, line: 88, baseType: !93, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !85, line: 89, baseType: !93, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !121, file: !85, line: 104, baseType: !124, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !84, file: !85, line: 295, baseType: !135, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !85, line: 176, size: 192, elements: !138)
!138 = !{!139, !140, !149}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !137, file: !85, line: 177, baseType: !117, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !137, file: !85, line: 178, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!117, !127, !117, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !85, line: 138, size: 64, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !145, file: !85, line: 139, baseType: !117, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !145, file: !85, line: 140, baseType: !117, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !137, file: !85, line: 180, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!117, !127, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !84, file: !85, line: 298, baseType: !7, size: 32, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !84, file: !85, line: 301, baseType: !7, size: 32, offset: 736)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !84, file: !85, line: 306, baseType: !117, size: 32, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !84, file: !85, line: 307, baseType: !159, size: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !85, line: 36, size: 192, elements: !161)
!161 = !{!162, !163, !164, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !160, file: !85, line: 37, baseType: !98, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !160, file: !85, line: 38, baseType: !92, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !160, file: !85, line: 39, baseType: !92, size: 32, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !160, file: !85, line: 40, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !84, file: !85, line: 313, baseType: !169, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!117, !127, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !85, line: 30, size: 192, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !173, file: !85, line: 31, baseType: !98, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !173, file: !85, line: 32, baseType: !98, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !173, file: !85, line: 33, baseType: !98, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !84, file: !85, line: 314, baseType: !179, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!117, !127, !182, !186, !189, !190, !191}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !89, line: 46, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !184, line: 88, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 55, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !184, line: 72, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !184, line: 16, baseType: !167)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !89, line: 158, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !89, line: 153, baseType: !99)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !84, file: !85, line: 316, baseType: !195, size: 64, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!117, !127, !182, !186}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !84, file: !85, line: 317, baseType: !199, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!117, !127, !182, !186, !189, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !84, file: !85, line: 319, baseType: !204, size: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!117, !127, !182, !186, !189, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !84, file: !85, line: 321, baseType: !204, size: 64, offset: 1216)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !84, file: !85, line: 323, baseType: !211, size: 64, offset: 1280)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!117, !127, !182, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !85, line: 64, size: 512, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !228}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !215, file: !85, line: 65, baseType: !7, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !215, file: !85, line: 66, baseType: !186, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !215, file: !85, line: 67, baseType: !186, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !215, file: !85, line: 68, baseType: !186, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !215, file: !85, line: 69, baseType: !186, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !215, file: !85, line: 70, baseType: !92, size: 32, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !215, file: !85, line: 71, baseType: !224, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !89, line: 102, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !90)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !215, file: !85, line: 72, baseType: !224, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !84, file: !85, line: 325, baseType: !211, size: 64, offset: 1344)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !84, file: !85, line: 327, baseType: !231, size: 64, offset: 1408)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!117, !127, !186, !189, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !236, line: 146, size: 96, elements: !237)
!236 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !235, file: !236, line: 147, baseType: !95, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !235, file: !236, line: 148, baseType: !95, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !235, file: !236, line: 149, baseType: !95, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !84, file: !85, line: 329, baseType: !199, size: 64, offset: 1472)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !84, file: !85, line: 331, baseType: !231, size: 64, offset: 1536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !84, file: !85, line: 333, baseType: !199, size: 64, offset: 1600)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !84, file: !85, line: 335, baseType: !199, size: 64, offset: 1664)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !84, file: !85, line: 337, baseType: !195, size: 64, offset: 1728)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !84, file: !85, line: 339, baseType: !247, size: 64, offset: 1792)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!117, !127, !250, !167, !182, !189}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !253, line: 15, size: 128, elements: !254)
!253 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !252, file: !253, line: 16, baseType: !79, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !252, file: !253, line: 17, baseType: !186, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !84, file: !85, line: 341, baseType: !258, size: 64, offset: 1856)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !127}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !84, file: !85, line: 342, baseType: !262, size: 64, offset: 1920)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!117, !127, !182, !98}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !84, file: !85, line: 343, baseType: !262, size: 64, offset: 1984)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !84, file: !85, line: 344, baseType: !262, size: 64, offset: 2048)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !84, file: !85, line: 345, baseType: !268, size: 64, offset: 2112)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!117, !127, !182}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !84, file: !85, line: 346, baseType: !268, size: 64, offset: 2176)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !84, file: !85, line: 347, baseType: !268, size: 64, offset: 2240)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !84, file: !85, line: 348, baseType: !195, size: 64, offset: 2304)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !84, file: !85, line: 349, baseType: !275, size: 64, offset: 2368)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!117, !127}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !84, file: !85, line: 350, baseType: !258, size: 64, offset: 2432)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !84, file: !85, line: 351, baseType: !258, size: 64, offset: 2496)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !84, file: !85, line: 356, baseType: !275, size: 64, offset: 2560)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !84, file: !85, line: 357, baseType: !258, size: 64, offset: 2624)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !84, file: !85, line: 363, baseType: !283, size: 8, offset: 2688)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !89, line: 30, baseType: !284)
!284 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !84, file: !85, line: 365, baseType: !286, size: 192, offset: 2752)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !287, line: 54, size: 192, elements: !288)
!287 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !295, !296}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !286, file: !287, line: 55, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !287, line: 51, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!117, !294, !167, !79}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !287, line: 56, baseType: !294, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !286, file: !287, line: 57, baseType: !117, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !84, file: !85, line: 368, baseType: !298, size: 128, offset: 2944)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !236, line: 250, size: 128, elements: !299)
!299 = !{!300, !301, !302, !303}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !298, file: !236, line: 251, baseType: !95, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !298, file: !236, line: 252, baseType: !95, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !298, file: !236, line: 253, baseType: !95, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !298, file: !236, line: 254, baseType: !95, size: 32, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !84, file: !85, line: 370, baseType: !117, size: 32, offset: 3072)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !84, file: !85, line: 372, baseType: !79, size: 64, offset: 3136)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !84, file: !85, line: 374, baseType: !307, size: 64, offset: 3200)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !309, line: 76, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !84, file: !85, line: 375, baseType: !311, size: 5568, offset: 3264)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !312)
!312 = !{!313, !1786, !1788, !1791, !1792, !1843, !1937, !1938, !1939, !1940, !1941, !1950, !2055, !2068, !2071, !2072, !2076, !2078, !2079, !2080, !2084, !2090, !2091, !2094, !2209, !2210, !2213, !2214, !2215, !2216, !2248, !2249, !2250, !2253, !2256, !2257, !2258, !2259}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !311, file: !30, line: 462, baseType: !314, size: 512)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !315, line: 64, size: 512, elements: !316)
!315 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317, !318, !324, !326, !386, !1622, !1776, !1781, !1782, !1783, !1784, !1785}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 65, baseType: !113, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !314, file: !315, line: 66, baseType: !319, size: 128, offset: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !89, line: 178, size: 128, elements: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !89, line: 179, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !319, file: !89, line: 179, baseType: !322, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !314, file: !315, line: 67, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !314, file: !315, line: 68, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !315, line: 192, size: 704, elements: !329)
!329 = !{!330, !331, !347, !348}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !328, file: !315, line: 193, baseType: !319, size: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !328, file: !315, line: 194, baseType: !332, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !333, line: 83, baseType: !334)
!333 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !333, line: 71, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !333, line: 72, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !333, line: 72, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !337, file: !333, line: 73, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !333, line: 20, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !340, file: !333, line: 21, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !344, line: 25, baseType: !345)
!344 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 25, elements: !346)
!346 = !{}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !328, file: !315, line: 195, baseType: !314, size: 512, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !328, file: !315, line: 196, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !315, line: 156, size: 192, elements: !352)
!352 = !{!353, !358, !363}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !351, file: !315, line: 157, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!117, !327, !325}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !315, line: 158, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!113, !327, !325}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !351, file: !315, line: 159, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!117, !327, !325, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !315, line: 148, size: 20736, elements: !370)
!370 = !{!371, !376, !380, !381, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !369, file: !315, line: 149, baseType: !372, size: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !374)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!374 = !{!375}
!375 = !DISubrange(count: 3)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !369, file: !315, line: 150, baseType: !377, size: 4096, offset: 192)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 4096, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !369, file: !315, line: 151, baseType: !117, size: 32, offset: 4288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !369, file: !315, line: 152, baseType: !382, size: 16384, offset: 4320)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 16384, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 2048)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !369, file: !315, line: 153, baseType: !117, size: 32, offset: 20704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !314, file: !315, line: 69, baseType: !387, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !315, line: 138, size: 448, elements: !389)
!389 = !{!390, !394, !419, !421, !1568, !1601, !1605}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !388, file: !315, line: 139, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !325}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !388, file: !315, line: 140, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !398, line: 230, size: 128, elements: !399)
!398 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !415}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !397, file: !398, line: 231, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!404, !325, !408, !373}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !89, line: 60, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !184, line: 73, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !184, line: 15, baseType: !407)
!407 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !398, line: 30, size: 128, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !398, line: 31, baseType: !113, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !409, file: !398, line: 32, baseType: !413, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !89, line: 19, baseType: !414)
!414 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !397, file: !398, line: 232, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!404, !325, !408, !113, !186}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !388, file: !315, line: 141, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !388, file: !315, line: 142, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !398, line: 84, size: 320, elements: !426)
!426 = !{!427, !428, !432, !1565, !1566}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !398, line: 85, baseType: !113, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !425, file: !398, line: 86, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!413, !325, !408, !117}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !425, file: !398, line: 88, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!413, !325, !436, !117}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !398, line: 168, size: 448, elements: !438)
!438 = !{!439, !440, !441, !442, !449, !450}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !437, file: !398, line: 169, baseType: !409, size: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !437, file: !398, line: 170, baseType: !186, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !437, file: !398, line: 171, baseType: !79, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !437, file: !398, line: 172, baseType: !443, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!404, !446, !325, !436, !373, !182, !186}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !448, line: 526, flags: DIFlagFwdDecl)
!448 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!449 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !437, file: !398, line: 174, baseType: !443, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !437, file: !398, line: 176, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!117, !446, !325, !436, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !456, line: 305, size: 1472, elements: !457)
!456 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !459, !460, !461, !462, !470, !471, !1539, !1545, !1546, !1551, !1552, !1555, !1559, !1560, !1561, !1562, !1563}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !455, file: !456, line: 308, baseType: !167, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !455, file: !456, line: 309, baseType: !167, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !455, file: !456, line: 313, baseType: !454, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !455, file: !456, line: 313, baseType: !454, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !455, file: !456, line: 315, baseType: !463, size: 192, align: 64, offset: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !464, line: 24, size: 192, align: 64, elements: !465)
!464 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !467, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !463, file: !464, line: 25, baseType: !167, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !463, file: !464, line: 26, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !463, file: !464, line: 27, baseType: !468, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !455, file: !456, line: 323, baseType: !167, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !455, file: !456, line: 327, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !456, line: 388, size: 7296, elements: !474)
!474 = !{!475, !1535}
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !456, line: 389, baseType: !476, size: 7296)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !456, line: 389, size: 7296, elements: !477)
!477 = !{!478, !479, !483, !484, !488, !489, !490, !491, !492, !500, !505, !506, !507, !508, !517, !518, !519, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !554, !562, !565, !613, !614, !1505, !1506, !1509, !1513, !1514, !1517, !1518, !1519, !1522, !1534}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !476, file: !456, line: 390, baseType: !454, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !476, file: !456, line: 391, baseType: !480, size: 64, offset: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !464, line: 31, size: 64, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !480, file: !464, line: 32, baseType: !468, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !476, file: !456, line: 392, baseType: !99, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !476, file: !456, line: 394, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!167, !446, !167, !167, !167, !167}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !476, file: !456, line: 398, baseType: !167, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !476, file: !456, line: 399, baseType: !167, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !476, file: !456, line: 405, baseType: !167, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !476, file: !456, line: 406, baseType: !167, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !476, file: !456, line: 407, baseType: !493, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !448, line: 286, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 286, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !495, file: !448, line: 286, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !499, line: 18, baseType: !167)
!499 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !476, file: !456, line: 416, baseType: !501, size: 32, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !89, line: 168, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 166, size: 32, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !502, file: !89, line: 167, baseType: !117, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !476, file: !456, line: 428, baseType: !501, size: 32, offset: 608)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !476, file: !456, line: 437, baseType: !501, size: 32, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !476, file: !456, line: 447, baseType: !501, size: 32, offset: 672)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !476, file: !456, line: 450, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !510, line: 13, baseType: !511)
!510 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !89, line: 175, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 173, size: 64, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !512, file: !89, line: 174, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !94, line: 22, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !96, line: 30, baseType: !185)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !476, file: !456, line: 452, baseType: !117, size: 32, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !476, file: !456, line: 454, baseType: !332, offset: 800)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !476, file: !456, line: 457, baseType: !520, size: 256, offset: 832)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !521, line: 35, size: 256, elements: !522)
!521 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!522 = !{!523, !524, !525, !527}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !520, file: !521, line: 36, baseType: !509, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !520, file: !521, line: 42, baseType: !509, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !520, file: !521, line: 46, baseType: !526, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !333, line: 29, baseType: !340)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !520, file: !521, line: 47, baseType: !319, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !476, file: !456, line: 459, baseType: !319, size: 128, offset: 1088)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !476, file: !456, line: 466, baseType: !167, size: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !476, file: !456, line: 467, baseType: !167, size: 64, offset: 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !476, file: !456, line: 469, baseType: !167, size: 64, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !476, file: !456, line: 470, baseType: !167, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !476, file: !456, line: 471, baseType: !511, size: 64, offset: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !476, file: !456, line: 472, baseType: !167, size: 64, offset: 1536)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !476, file: !456, line: 473, baseType: !167, size: 64, offset: 1600)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !476, file: !456, line: 474, baseType: !167, size: 64, offset: 1664)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !476, file: !456, line: 475, baseType: !167, size: 64, offset: 1728)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !476, file: !456, line: 477, baseType: !332, offset: 1792)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !476, file: !456, line: 478, baseType: !167, size: 64, offset: 1792)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !476, file: !456, line: 478, baseType: !167, size: 64, offset: 1856)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !476, file: !456, line: 478, baseType: !167, size: 64, offset: 1920)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !476, file: !456, line: 478, baseType: !167, size: 64, offset: 1984)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !476, file: !456, line: 479, baseType: !167, size: 64, offset: 2048)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !476, file: !456, line: 479, baseType: !167, size: 64, offset: 2112)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !476, file: !456, line: 479, baseType: !167, size: 64, offset: 2176)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !476, file: !456, line: 480, baseType: !167, size: 64, offset: 2240)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !476, file: !456, line: 480, baseType: !167, size: 64, offset: 2304)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !476, file: !456, line: 480, baseType: !167, size: 64, offset: 2368)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !476, file: !456, line: 480, baseType: !167, size: 64, offset: 2432)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !476, file: !456, line: 482, baseType: !551, size: 2816, offset: 2496)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 2816, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 44)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !476, file: !456, line: 488, baseType: !555, size: 256, offset: 5312)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !556, line: 60, size: 256, elements: !557)
!556 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !555, file: !556, line: 61, baseType: !559, size: 256)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 256, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 4)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !476, file: !456, line: 490, baseType: !563, size: 64, offset: 5568)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !456, line: 490, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !476, file: !456, line: 493, baseType: !566, size: 896, offset: 5632)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !567, line: 53, baseType: !568)
!567 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !567, line: 13, size: 896, elements: !569)
!569 = !{!570, !571, !572, !573, !576, !577, !584, !585, !605, !606, !609}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !568, file: !567, line: 18, baseType: !99, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !568, file: !567, line: 28, baseType: !511, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !568, file: !567, line: 31, baseType: !520, size: 256, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !568, file: !567, line: 32, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !567, line: 32, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !568, file: !567, line: 37, baseType: !414, size: 16, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !568, file: !567, line: 40, baseType: !578, size: 192, offset: 512)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !579, line: 53, size: 192, elements: !580)
!579 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581, !582, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !578, file: !579, line: 54, baseType: !509, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !578, file: !579, line: 55, baseType: !332, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !578, file: !579, line: 59, baseType: !319, size: 128, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !568, file: !567, line: 41, baseType: !79, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !568, file: !567, line: 42, baseType: !586, size: 64, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !589, line: 13, size: 896, elements: !590)
!589 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !588, file: !589, line: 14, baseType: !79, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !588, file: !589, line: 15, baseType: !167, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !588, file: !589, line: 17, baseType: !167, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !588, file: !589, line: 17, baseType: !167, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !588, file: !589, line: 19, baseType: !407, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !588, file: !589, line: 21, baseType: !407, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !588, file: !589, line: 22, baseType: !407, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !588, file: !589, line: 23, baseType: !407, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !588, file: !589, line: 24, baseType: !407, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !588, file: !589, line: 25, baseType: !407, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !588, file: !589, line: 26, baseType: !407, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !588, file: !589, line: 27, baseType: !407, size: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !588, file: !589, line: 28, baseType: !407, size: 64, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !588, file: !589, line: 29, baseType: !407, size: 64, offset: 832)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !568, file: !567, line: 44, baseType: !501, size: 32, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !568, file: !567, line: 50, baseType: !607, size: 16, offset: 864)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !414)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !568, file: !567, line: 51, baseType: !610, size: 16, offset: 880)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !94, line: 18, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !96, line: 23, baseType: !612)
!612 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !456, line: 495, baseType: !167, size: 64, offset: 6528)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !476, file: !456, line: 497, baseType: !615, size: 64, offset: 6592)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !456, line: 381, size: 384, elements: !617)
!617 = !{!618, !619, !1504}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !616, file: !456, line: 382, baseType: !501, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !616, file: !456, line: 383, baseType: !620, size: 128, offset: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !456, line: 376, size: 128, elements: !621)
!621 = !{!622, !1502}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !620, file: !456, line: 377, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !625, line: 640, size: 48640, elements: !626)
!625 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!626 = !{!627, !633, !635, !636, !642, !643, !644, !645, !646, !647, !648, !649, !653, !671, !682, !774, !775, !776, !787, !788, !790, !791, !792, !793, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !872, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !928, !930, !931, !932, !944, !946, !947, !948, !949, !950, !956, !957, !958, !959, !960, !961, !962, !974, !979, !984, !985, !986, !989, !993, !996, !999, !1002, !1005, !1009, !1012, !1015, !1021, !1022, !1023, !1029, !1030, !1031, !1032, !1033, !1042, !1043, !1044, !1045, !1046, !1051, !1052, !1053, !1056, !1057, !1060, !1063, !1066, !1069, !1072, !1075, !1076, !1156, !1159, !1162, !1163, !1166, !1167, !1168, !1174, !1175, !1176, !1189, !1190, !1191, !1201, !1206, !1209, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !624, file: !625, line: 646, baseType: !628, size: 128)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !629, line: 56, size: 128, elements: !630)
!629 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !629, line: 57, baseType: !167, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !628, file: !629, line: 58, baseType: !93, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !624, file: !625, line: 649, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !407)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !624, file: !625, line: 657, baseType: !79, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !624, file: !625, line: 658, baseType: !637, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !638, line: 113, baseType: !639)
!638 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !638, line: 111, size: 32, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !639, file: !638, line: 112, baseType: !501, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !625, line: 660, baseType: !7, size: 32, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !624, file: !625, line: 661, baseType: !7, size: 32, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !624, file: !625, line: 684, baseType: !117, size: 32, offset: 352)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !624, file: !625, line: 686, baseType: !117, size: 32, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !624, file: !625, line: 687, baseType: !117, size: 32, offset: 416)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !624, file: !625, line: 688, baseType: !117, size: 32, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !624, file: !625, line: 689, baseType: !7, size: 32, offset: 480)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !624, file: !625, line: 691, baseType: !650, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !625, line: 691, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !624, file: !625, line: 692, baseType: !654, size: 832, offset: 576)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !625, line: 451, size: 832, elements: !655)
!655 = !{!656, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !654, file: !625, line: 453, baseType: !657, size: 128)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !625, line: 325, size: 128, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !657, file: !625, line: 326, baseType: !167, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !657, file: !625, line: 327, baseType: !93, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !654, file: !625, line: 454, baseType: !463, size: 192, align: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !654, file: !625, line: 455, baseType: !319, size: 128, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !654, file: !625, line: 456, baseType: !7, size: 32, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !654, file: !625, line: 458, baseType: !99, size: 64, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !654, file: !625, line: 459, baseType: !99, size: 64, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !654, file: !625, line: 460, baseType: !99, size: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !654, file: !625, line: 461, baseType: !99, size: 64, offset: 704)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !654, file: !625, line: 463, baseType: !99, size: 64, offset: 768)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !654, file: !625, line: 465, baseType: !670, offset: 832)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !625, line: 415, elements: !346)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !624, file: !625, line: 693, baseType: !672, size: 384, offset: 1408)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !625, line: 489, size: 384, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !672, file: !625, line: 490, baseType: !319, size: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !672, file: !625, line: 491, baseType: !167, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !672, file: !625, line: 492, baseType: !167, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !672, file: !625, line: 493, baseType: !7, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !672, file: !625, line: 494, baseType: !414, size: 16, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !672, file: !625, line: 495, baseType: !414, size: 16, offset: 304)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !672, file: !625, line: 497, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !624, file: !625, line: 697, baseType: !683, size: 1792, offset: 1792)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !625, line: 507, size: 1792, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !771, !772}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !683, file: !625, line: 508, baseType: !463, size: 192, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !683, file: !625, line: 515, baseType: !99, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !683, file: !625, line: 516, baseType: !99, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !683, file: !625, line: 517, baseType: !99, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !683, file: !625, line: 518, baseType: !99, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !683, file: !625, line: 519, baseType: !99, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !683, file: !625, line: 526, baseType: !515, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !683, file: !625, line: 527, baseType: !99, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !625, line: 528, baseType: !7, size: 32, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !683, file: !625, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !683, file: !625, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !683, file: !625, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !683, file: !625, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !683, file: !625, line: 563, baseType: !699, size: 512, offset: 704)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !700)
!700 = !{!701, !709, !710, !715, !767, !768, !769, !770}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !6, line: 119, baseType: !702, size: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !703, line: 9, size: 256, elements: !704)
!703 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !703, line: 10, baseType: !463, size: 192, align: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !702, file: !703, line: 11, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !708, line: 29, baseType: !515)
!708 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !699, file: !6, line: 120, baseType: !707, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !699, file: !6, line: 121, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!5, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !699, file: !6, line: 122, baseType: !716, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !718)
!718 = !{!719, !739, !740, !743, !753, !754, !762, !766}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !717, file: !6, line: 160, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !6, line: 215, baseType: !526)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !721, file: !6, line: 216, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !721, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !721, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !721, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !721, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !721, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !721, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !721, file: !6, line: 233, baseType: !707, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !721, file: !6, line: 234, baseType: !714, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !721, file: !6, line: 235, baseType: !707, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !721, file: !6, line: 236, baseType: !714, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !721, file: !6, line: 237, baseType: !736, size: 4096, offset: 512)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 4096, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 8)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !717, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !717, file: !6, line: 162, baseType: !741, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !89, line: 27, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !184, line: 96, baseType: !117)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !717, file: !6, line: 163, baseType: !744, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !745, line: 276, baseType: !746)
!745 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !745, line: 276, size: 32, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !746, file: !745, line: 276, baseType: !749, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !745, line: 70, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !745, line: 65, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !750, file: !745, line: 66, baseType: !7, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !717, file: !6, line: 164, baseType: !714, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !717, file: !6, line: 165, baseType: !755, size: 128, offset: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !703, line: 14, size: 128, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !755, file: !703, line: 15, baseType: !758, size: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !464, line: 125, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !758, file: !464, line: 126, baseType: !480, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !758, file: !464, line: 127, baseType: !468, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !717, file: !6, line: 166, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!707}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !717, file: !6, line: 167, baseType: !707, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !699, file: !6, line: 123, baseType: !226, size: 8, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !699, file: !6, line: 124, baseType: !226, size: 8, offset: 456)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !699, file: !6, line: 125, baseType: !226, size: 8, offset: 464)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !699, file: !6, line: 126, baseType: !226, size: 8, offset: 472)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !683, file: !625, line: 572, baseType: !699, size: 512, offset: 1216)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !683, file: !625, line: 580, baseType: !773, size: 64, offset: 1728)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !624, file: !625, line: 721, baseType: !7, size: 32, offset: 3584)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !624, file: !625, line: 722, baseType: !117, size: 32, offset: 3616)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !624, file: !625, line: 723, baseType: !777, size: 64, offset: 3648)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !780, line: 17, baseType: !781)
!780 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !780, line: 17, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !781, file: !780, line: 17, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 1)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !624, file: !625, line: 724, baseType: !779, size: 64, offset: 3712)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !624, file: !625, line: 749, baseType: !789, offset: 3776)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !625, line: 290, elements: !346)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !624, file: !625, line: 751, baseType: !319, size: 128, offset: 3776)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !624, file: !625, line: 757, baseType: !472, size: 64, offset: 3904)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !624, file: !625, line: 758, baseType: !472, size: 64, offset: 3968)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !624, file: !625, line: 761, baseType: !794, size: 320, offset: 4032)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !556, line: 34, size: 320, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !794, file: !556, line: 35, baseType: !99, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !794, file: !556, line: 36, baseType: !798, size: 256, offset: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 256, elements: !560)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !624, file: !625, line: 766, baseType: !117, size: 32, offset: 4352)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !624, file: !625, line: 767, baseType: !117, size: 32, offset: 4384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !624, file: !625, line: 768, baseType: !117, size: 32, offset: 4416)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !624, file: !625, line: 770, baseType: !117, size: 32, offset: 4448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !624, file: !625, line: 772, baseType: !167, size: 64, offset: 4480)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !624, file: !625, line: 775, baseType: !7, size: 32, offset: 4544)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !624, file: !625, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !624, file: !625, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !624, file: !625, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !624, file: !625, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !624, file: !625, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !624, file: !625, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !624, file: !625, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !624, file: !625, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !624, file: !625, line: 831, baseType: !167, size: 64, offset: 4672)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !624, file: !625, line: 833, baseType: !815, size: 384, offset: 4736)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !816)
!816 = !{!817, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !815, file: !12, line: 26, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!407, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !12, line: 27, baseType: !823, size: 320, offset: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !12, line: 27, size: 320, elements: !824)
!824 = !{!825, !835, !862}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !823, file: !12, line: 36, baseType: !826, size: 320)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !12, line: 29, size: 320, elements: !827)
!827 = !{!828, !830, !831, !832, !833, !834}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !826, file: !12, line: 30, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !826, file: !12, line: 31, baseType: !93, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !12, line: 32, baseType: !93, size: 32, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !826, file: !12, line: 33, baseType: !93, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !826, file: !12, line: 34, baseType: !99, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !826, file: !12, line: 35, baseType: !829, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !823, file: !12, line: 46, baseType: !836, size: 192)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !12, line: 38, size: 192, elements: !837)
!837 = !{!838, !839, !840, !861}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !836, file: !12, line: 39, baseType: !741, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !12, line: 41, baseType: !841, size: 64, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !12, line: 41, size: 64, elements: !842)
!842 = !{!843, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !841, file: !12, line: 42, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !846, line: 7, size: 128, elements: !847)
!846 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!847 = !{!848, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !845, file: !846, line: 8, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !184, line: 93, baseType: !185)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !845, file: !846, line: 9, baseType: !185, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !841, file: !12, line: 43, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !854, line: 7, size: 64, elements: !855)
!854 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !860}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !853, file: !854, line: 8, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !854, line: 5, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !94, line: 20, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !96, line: 26, baseType: !117)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !853, file: !854, line: 9, baseType: !858, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !836, file: !12, line: 45, baseType: !99, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !823, file: !12, line: 54, baseType: !863, size: 256)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !12, line: 48, size: 256, elements: !864)
!864 = !{!865, !868, !869, !870, !871}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !863, file: !12, line: 49, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !863, file: !12, line: 50, baseType: !117, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !863, file: !12, line: 51, baseType: !117, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !863, file: !12, line: 52, baseType: !167, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !863, file: !12, line: 53, baseType: !167, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !624, file: !625, line: 835, baseType: !873, size: 32, offset: 5120)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !89, line: 22, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !184, line: 28, baseType: !117)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !624, file: !625, line: 836, baseType: !873, size: 32, offset: 5152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !624, file: !625, line: 840, baseType: !167, size: 64, offset: 5184)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !624, file: !625, line: 849, baseType: !623, size: 64, offset: 5248)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !624, file: !625, line: 852, baseType: !623, size: 64, offset: 5312)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !624, file: !625, line: 857, baseType: !319, size: 128, offset: 5376)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !624, file: !625, line: 858, baseType: !319, size: 128, offset: 5504)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !624, file: !625, line: 859, baseType: !623, size: 64, offset: 5632)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !624, file: !625, line: 867, baseType: !319, size: 128, offset: 5696)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !624, file: !625, line: 868, baseType: !319, size: 128, offset: 5824)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !624, file: !625, line: 871, baseType: !885, size: 64, offset: 5952)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !887, line: 59, size: 768, elements: !888)
!887 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !890, !891, !892, !903, !904, !911, !920}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 61, baseType: !637, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !886, file: !887, line: 62, baseType: !7, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !887, line: 63, baseType: !332, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !886, file: !887, line: 65, baseType: !893, size: 256, offset: 64)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 256, elements: !560)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !89, line: 182, size: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !894, file: !89, line: 183, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !89, line: 186, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !89, line: 187, baseType: !897, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !898, file: !89, line: 187, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !886, file: !887, line: 66, baseType: !894, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !886, file: !887, line: 68, baseType: !905, size: 128, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !906, line: 40, baseType: !907)
!906 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !906, line: 36, size: 128, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !907, file: !906, line: 37, baseType: !332)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !907, file: !906, line: 38, baseType: !319, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !886, file: !887, line: 69, baseType: !912, size: 128, align: 64, offset: 512)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !89, line: 216, size: 128, align: 64, elements: !913)
!913 = !{!914, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !89, line: 217, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !912, file: !89, line: 218, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !915}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !886, file: !887, line: 70, baseType: !921, size: 128, offset: 640)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 128, elements: !785)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !887, line: 54, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !922, file: !887, line: 55, baseType: !117, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !922, file: !887, line: 56, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !887, line: 56, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !624, file: !625, line: 872, baseType: !929, size: 512, offset: 6016)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 512, elements: !560)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !624, file: !625, line: 873, baseType: !319, size: 128, offset: 6528)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !624, file: !625, line: 874, baseType: !319, size: 128, offset: 6656)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !624, file: !625, line: 876, baseType: !933, size: 64, offset: 6784)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !935, line: 26, size: 192, elements: !936)
!935 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !934, file: !935, line: 27, baseType: !7, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !934, file: !935, line: 28, baseType: !939, size: 128, offset: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !940, line: 43, size: 128, elements: !941)
!940 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !939, file: !940, line: 44, baseType: !526)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !939, file: !940, line: 45, baseType: !319, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !624, file: !625, line: 879, baseType: !945, size: 64, offset: 6848)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !624, file: !625, line: 882, baseType: !945, size: 64, offset: 6912)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !624, file: !625, line: 884, baseType: !99, size: 64, offset: 6976)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !624, file: !625, line: 885, baseType: !99, size: 64, offset: 7040)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !624, file: !625, line: 890, baseType: !99, size: 64, offset: 7104)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !624, file: !625, line: 891, baseType: !951, size: 128, offset: 7168)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !625, line: 242, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !951, file: !625, line: 244, baseType: !99, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !951, file: !625, line: 245, baseType: !99, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !625, line: 246, baseType: !526, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !624, file: !625, line: 900, baseType: !167, size: 64, offset: 7296)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !624, file: !625, line: 901, baseType: !167, size: 64, offset: 7360)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !624, file: !625, line: 904, baseType: !99, size: 64, offset: 7424)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !624, file: !625, line: 907, baseType: !99, size: 64, offset: 7488)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !624, file: !625, line: 910, baseType: !167, size: 64, offset: 7552)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !624, file: !625, line: 911, baseType: !167, size: 64, offset: 7616)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !624, file: !625, line: 914, baseType: !963, size: 640, offset: 7680)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !964, line: 123, size: 640, elements: !965)
!964 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !972, !973}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !963, file: !964, line: 124, baseType: !967, size: 576)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 576, elements: !374)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !964, line: 108, size: 192, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !968, file: !964, line: 109, baseType: !99, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !968, file: !964, line: 110, baseType: !755, size: 128, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !963, file: !964, line: 125, baseType: !7, size: 32, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !963, file: !964, line: 126, baseType: !7, size: 32, offset: 608)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !624, file: !625, line: 917, baseType: !975, size: 192, offset: 8320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !964, line: 134, size: 192, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !975, file: !964, line: 135, baseType: !912, size: 128, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !975, file: !964, line: 136, baseType: !7, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !624, file: !625, line: 923, baseType: !980, size: 64, offset: 8512)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !983, line: 11, flags: DIFlagFwdDecl)
!983 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!984 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !624, file: !625, line: 926, baseType: !980, size: 64, offset: 8576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !624, file: !625, line: 929, baseType: !980, size: 64, offset: 8640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !624, file: !625, line: 933, baseType: !987, size: 64, offset: 8704)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !625, line: 933, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !624, file: !625, line: 943, baseType: !990, size: 128, offset: 8768)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 16)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !624, file: !625, line: 945, baseType: !994, size: 64, offset: 8896)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !625, line: 49, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !624, file: !625, line: 956, baseType: !997, size: 64, offset: 8960)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !625, line: 45, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !624, file: !625, line: 959, baseType: !1000, size: 64, offset: 9024)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !625, line: 959, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !624, file: !625, line: 962, baseType: !1003, size: 64, offset: 9088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !625, line: 66, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !624, file: !625, line: 966, baseType: !1006, size: 64, offset: 9152)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1008, line: 35, flags: DIFlagFwdDecl)
!1008 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !624, file: !625, line: 969, baseType: !1010, size: 64, offset: 9216)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !964, line: 223, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !624, file: !625, line: 970, baseType: !1013, size: 64, offset: 9280)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !625, line: 62, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !624, file: !625, line: 971, baseType: !1016, size: 64, offset: 9344)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1017, line: 25, baseType: !1018)
!1017 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 23, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1018, file: !1017, line: 24, baseType: !784, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !624, file: !625, line: 972, baseType: !1016, size: 64, offset: 9408)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !624, file: !625, line: 974, baseType: !1016, size: 64, offset: 9472)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !624, file: !625, line: 975, baseType: !1024, size: 192, offset: 9536)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1025, line: 30, size: 192, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1024, file: !1025, line: 31, baseType: !319, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1024, file: !1025, line: 32, baseType: !1016, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !624, file: !625, line: 976, baseType: !167, size: 64, offset: 9728)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !624, file: !625, line: 977, baseType: !186, size: 64, offset: 9792)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !624, file: !625, line: 978, baseType: !7, size: 32, offset: 9856)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !624, file: !625, line: 980, baseType: !915, size: 64, offset: 9920)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !624, file: !625, line: 989, baseType: !1034, size: 128, offset: 9984)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1035, line: 35, size: 128, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1034, file: !1035, line: 36, baseType: !117, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1034, file: !1035, line: 37, baseType: !501, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1034, file: !1035, line: 38, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1035, line: 23, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !624, file: !625, line: 992, baseType: !99, size: 64, offset: 10112)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !624, file: !625, line: 993, baseType: !99, size: 64, offset: 10176)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !624, file: !625, line: 996, baseType: !332, offset: 10240)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !624, file: !625, line: 999, baseType: !526, offset: 10240)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !624, file: !625, line: 1001, baseType: !1047, size: 64, offset: 10240)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !625, line: 636, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !625, line: 637, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !624, file: !625, line: 1005, baseType: !758, size: 128, offset: 10304)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !624, file: !625, line: 1007, baseType: !623, size: 64, offset: 10432)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !624, file: !625, line: 1009, baseType: !1054, size: 64, offset: 10496)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !625, line: 1009, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !624, file: !625, line: 1043, baseType: !79, size: 64, offset: 10560)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !624, file: !625, line: 1046, baseType: !1058, size: 64, offset: 10624)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !625, line: 41, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !624, file: !625, line: 1050, baseType: !1061, size: 64, offset: 10688)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !625, line: 42, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !624, file: !625, line: 1054, baseType: !1064, size: 64, offset: 10752)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !625, line: 55, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !624, file: !625, line: 1056, baseType: !1067, size: 64, offset: 10816)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !625, line: 40, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !624, file: !625, line: 1058, baseType: !1070, size: 64, offset: 10880)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !625, line: 47, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !624, file: !625, line: 1061, baseType: !1073, size: 64, offset: 10944)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !625, line: 43, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !624, file: !625, line: 1064, baseType: !167, size: 64, offset: 11008)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !624, file: !625, line: 1065, baseType: !1077, size: 64, offset: 11072)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1025, line: 14, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1025, line: 12, size: 384, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !1025, line: 13, baseType: !1082, size: 384)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1025, line: 13, size: 384, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1082, file: !1025, line: 13, baseType: !117, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1082, file: !1025, line: 13, baseType: !117, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1082, file: !1025, line: 13, baseType: !117, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1082, file: !1025, line: 13, baseType: !1088, size: 256, offset: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1089, line: 32, size: 256, elements: !1090)
!1089 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1090 = !{!1091, !1097, !1110, !1116, !1125, !1145, !1150}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1088, file: !1089, line: 37, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 34, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1092, file: !1089, line: 35, baseType: !874, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1092, file: !1089, line: 36, baseType: !1096, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !184, line: 49, baseType: !7)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1088, file: !1089, line: 45, baseType: !1098, size: 192)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 40, size: 192, elements: !1099)
!1099 = !{!1100, !1102, !1103, !1109}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1098, file: !1089, line: 41, baseType: !1101, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !184, line: 95, baseType: !117)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1098, file: !1089, line: 42, baseType: !117, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1098, file: !1089, line: 43, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1089, line: 11, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1089, line: 8, size: 64, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1105, file: !1089, line: 9, baseType: !117, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1105, file: !1089, line: 10, baseType: !79, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1098, file: !1089, line: 44, baseType: !117, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1088, file: !1089, line: 52, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 48, size: 128, elements: !1112)
!1112 = !{!1113, !1114, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1111, file: !1089, line: 49, baseType: !874, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1111, file: !1089, line: 50, baseType: !1096, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1111, file: !1089, line: 51, baseType: !1104, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1088, file: !1089, line: 61, baseType: !1117, size: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 55, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1117, file: !1089, line: 56, baseType: !874, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1117, file: !1089, line: 57, baseType: !1096, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1117, file: !1089, line: 58, baseType: !117, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1117, file: !1089, line: 59, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !184, line: 94, baseType: !406)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1117, file: !1089, line: 60, baseType: !1123, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1088, file: !1089, line: 95, baseType: !1126, size: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 64, size: 256, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1126, file: !1089, line: 65, baseType: !79, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1089, line: 77, baseType: !1130, size: 192, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1089, line: 77, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1140}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1130, file: !1089, line: 82, baseType: !612, size: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1130, file: !1089, line: 88, baseType: !1134, size: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 84, size: 192, elements: !1135)
!1135 = !{!1136, !1138, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1134, file: !1089, line: 85, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !737)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1134, file: !1089, line: 86, baseType: !79, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1134, file: !1089, line: 87, baseType: !79, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1130, file: !1089, line: 93, baseType: !1141, size: 96)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 90, size: 96, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1141, file: !1089, line: 91, baseType: !1137, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1141, file: !1089, line: 92, baseType: !95, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1088, file: !1089, line: 101, baseType: !1146, size: 128)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 98, size: 128, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1146, file: !1089, line: 99, baseType: !407, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1146, file: !1089, line: 100, baseType: !117, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1088, file: !1089, line: 108, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 104, size: 128, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1151, file: !1089, line: 105, baseType: !79, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1151, file: !1089, line: 106, baseType: !117, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1151, file: !1089, line: 107, baseType: !7, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !624, file: !625, line: 1067, baseType: !1157, offset: 11136)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1158, line: 12, elements: !346)
!1158 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !624, file: !625, line: 1099, baseType: !1160, size: 64, offset: 11136)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !625, line: 56, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !624, file: !625, line: 1103, baseType: !319, size: 128, offset: 11200)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !624, file: !625, line: 1104, baseType: !1164, size: 64, offset: 11328)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !625, line: 46, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !624, file: !625, line: 1105, baseType: !578, size: 192, offset: 11392)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !624, file: !625, line: 1106, baseType: !7, size: 32, offset: 11584)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !624, file: !625, line: 1109, baseType: !1169, size: 128, offset: 11648)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1170, size: 128, elements: !1172)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !625, line: 51, flags: DIFlagFwdDecl)
!1172 = !{!1173}
!1173 = !DISubrange(count: 2)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !624, file: !625, line: 1110, baseType: !578, size: 192, offset: 11776)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !624, file: !625, line: 1111, baseType: !319, size: 128, offset: 11968)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !624, file: !625, line: 1173, baseType: !1177, size: 64, offset: 12096)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1179, line: 62, size: 256, align: 256, elements: !1180)
!1179 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182, !1183, !1188}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1178, file: !1179, line: 75, baseType: !95, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1178, file: !1179, line: 90, baseType: !95, size: 32, offset: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1178, file: !1179, line: 124, baseType: !1184, size: 64, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1179, line: 109, size: 64, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1184, file: !1179, line: 110, baseType: !100, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1184, file: !1179, line: 112, baseType: !100, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !1179, line: 144, baseType: !95, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !624, file: !625, line: 1174, baseType: !93, size: 32, offset: 12160)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !624, file: !625, line: 1179, baseType: !167, size: 64, offset: 12224)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !624, file: !625, line: 1182, baseType: !1192, size: 128, offset: 12288)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !556, line: 76, size: 128, elements: !1193)
!1193 = !{!1194, !1199, !1200}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1192, file: !556, line: 85, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1196, line: 7, size: 64, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1195, file: !1196, line: 12, baseType: !781, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1192, file: !556, line: 88, baseType: !283, size: 8, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1192, file: !556, line: 95, baseType: !283, size: 8, offset: 72)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !625, line: 1184, baseType: !1202, size: 128, offset: 12416)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !625, line: 1184, size: 128, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1202, file: !625, line: 1185, baseType: !637, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1202, file: !625, line: 1186, baseType: !912, size: 128, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !624, file: !625, line: 1190, baseType: !1207, size: 64, offset: 12544)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !253, line: 13, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !624, file: !625, line: 1192, baseType: !1210, size: 128, offset: 12608)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !556, line: 64, size: 128, elements: !1211)
!1211 = !{!1212, !1305, !1306}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1210, file: !556, line: 65, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !456, line: 68, size: 512, align: 128, elements: !1215)
!1215 = !{!1216, !1217, !1297, !1304}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !456, line: 69, baseType: !167, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !456, line: 77, baseType: !1218, size: 320, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !456, line: 77, size: 320, elements: !1219)
!1219 = !{!1220, !1229, !1234, !1262, !1270, !1276, !1289, !1296}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 78, baseType: !1221, size: 320)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 78, size: 320, elements: !1222)
!1222 = !{!1223, !1224, !1227, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1221, file: !456, line: 84, baseType: !319, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1221, file: !456, line: 86, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !456, line: 26, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1221, file: !456, line: 87, baseType: !167, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1221, file: !456, line: 94, baseType: !167, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 96, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 96, size: 64, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1230, file: !456, line: 101, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !89, line: 143, baseType: !99)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 103, baseType: !1235, size: 320)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 103, size: 320, elements: !1236)
!1236 = !{!1237, !1247, !1250, !1251}
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !456, line: 104, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !456, line: 104, size: 128, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1238, file: !456, line: 105, baseType: !319, size: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !456, line: 106, baseType: !1242, size: 128)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !456, line: 106, size: 128, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !456, line: 107, baseType: !1213, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1242, file: !456, line: 109, baseType: !117, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1242, file: !456, line: 110, baseType: !117, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1235, file: !456, line: 117, baseType: !1248, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !456, line: 117, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1235, file: !456, line: 119, baseType: !79, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !456, line: 120, baseType: !1252, size: 64, offset: 256)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !456, line: 120, size: 64, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1252, file: !456, line: 121, baseType: !79, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1252, file: !456, line: 122, baseType: !167, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !456, line: 123, baseType: !1257, size: 32)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !456, line: 123, size: 32, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1257, file: !456, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1257, file: !456, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1257, file: !456, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 130, baseType: !1263, size: 192)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 130, size: 192, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1263, file: !456, line: 131, baseType: !167, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1263, file: !456, line: 134, baseType: !90, size: 8, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1263, file: !456, line: 135, baseType: !90, size: 8, offset: 72)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1263, file: !456, line: 136, baseType: !501, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1263, file: !456, line: 137, baseType: !7, size: 32, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 139, baseType: !1271, size: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 139, size: 256, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1271, file: !456, line: 140, baseType: !167, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1271, file: !456, line: 141, baseType: !501, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1271, file: !456, line: 143, baseType: !319, size: 128, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 145, baseType: !1277, size: 256)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 145, size: 256, elements: !1278)
!1278 = !{!1279, !1280, !1282, !1283, !1288}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1277, file: !456, line: 146, baseType: !167, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1277, file: !456, line: 147, baseType: !1281, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !448, line: 509, baseType: !1213)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1277, file: !456, line: 148, baseType: !167, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !456, line: 149, baseType: !1284, size: 64, offset: 192)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !456, line: 149, size: 64, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1284, file: !456, line: 150, baseType: !472, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1284, file: !456, line: 151, baseType: !501, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1277, file: !456, line: 156, baseType: !332, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !456, line: 159, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !456, line: 159, size: 128, elements: !1291)
!1291 = !{!1292, !1295}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1290, file: !456, line: 161, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !456, line: 161, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1290, file: !456, line: 162, baseType: !79, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1218, file: !456, line: 176, baseType: !912, size: 128, align: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !456, line: 179, baseType: !1298, size: 32, offset: 384)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !456, line: 179, size: 32, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1298, file: !456, line: 184, baseType: !501, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1298, file: !456, line: 192, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1298, file: !456, line: 194, baseType: !7, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1298, file: !456, line: 195, baseType: !117, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1214, file: !456, line: 199, baseType: !501, size: 32, offset: 416)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1210, file: !556, line: 67, baseType: !95, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1210, file: !556, line: 68, baseType: !95, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !624, file: !625, line: 1206, baseType: !117, size: 32, offset: 12736)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !624, file: !625, line: 1207, baseType: !117, size: 32, offset: 12768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !624, file: !625, line: 1209, baseType: !167, size: 64, offset: 12800)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !624, file: !625, line: 1219, baseType: !99, size: 64, offset: 12864)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !624, file: !625, line: 1220, baseType: !99, size: 64, offset: 12928)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !624, file: !625, line: 1317, baseType: !117, size: 32, offset: 12992)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !624, file: !625, line: 1319, baseType: !623, size: 64, offset: 13056)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !624, file: !625, line: 1322, baseType: !1315, size: 64, offset: 13120)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !625, line: 1322, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !624, file: !625, line: 1326, baseType: !637, size: 32, offset: 13184)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !624, file: !625, line: 1342, baseType: !79, size: 64, offset: 13248)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !624, file: !625, line: 1343, baseType: !100, size: 64, offset: 13312)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !624, file: !625, line: 1344, baseType: !99, size: 64, offset: 13376)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !624, file: !625, line: 1345, baseType: !100, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !624, file: !625, line: 1346, baseType: !100, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !624, file: !625, line: 1347, baseType: !100, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !624, file: !625, line: 1348, baseType: !912, size: 128, align: 64, offset: 13504)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !624, file: !625, line: 1358, baseType: !1326, size: 34816, offset: 13824)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1327, line: 485, size: 34816, elements: !1328)
!1327 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1358, !1359, !1360, !1361, !1362, !1363, !1366, !1367, !1368}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1326, file: !1327, line: 487, baseType: !1330, size: 192)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 192, elements: !374)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1332, line: 16, size: 64, elements: !1333)
!1332 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1331, file: !1332, line: 17, baseType: !607, size: 16)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1331, file: !1332, line: 18, baseType: !607, size: 16, offset: 16)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1331, file: !1332, line: 19, baseType: !607, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1332, line: 19, baseType: !607, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1331, file: !1332, line: 19, baseType: !607, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1331, file: !1332, line: 19, baseType: !607, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1331, file: !1332, line: 19, baseType: !607, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1331, file: !1332, line: 20, baseType: !607, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1331, file: !1332, line: 20, baseType: !607, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1331, file: !1332, line: 20, baseType: !607, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1331, file: !1332, line: 20, baseType: !607, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1331, file: !1332, line: 20, baseType: !607, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1331, file: !1332, line: 20, baseType: !607, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1326, file: !1327, line: 491, baseType: !167, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1326, file: !1327, line: 495, baseType: !414, size: 16, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1326, file: !1327, line: 496, baseType: !414, size: 16, offset: 272)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1326, file: !1327, line: 497, baseType: !414, size: 16, offset: 288)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1326, file: !1327, line: 498, baseType: !414, size: 16, offset: 304)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1326, file: !1327, line: 502, baseType: !167, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1326, file: !1327, line: 503, baseType: !167, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1326, file: !1327, line: 514, baseType: !1355, size: 256, offset: 448)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 256, elements: !560)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1327, line: 483, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1326, file: !1327, line: 516, baseType: !167, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1326, file: !1327, line: 518, baseType: !167, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1326, file: !1327, line: 520, baseType: !167, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1326, file: !1327, line: 521, baseType: !167, size: 64, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1326, file: !1327, line: 522, baseType: !167, size: 64, offset: 960)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1326, file: !1327, line: 528, baseType: !1364, size: 64, offset: 1024)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1327, line: 10, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1326, file: !1327, line: 535, baseType: !167, size: 64, offset: 1088)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1326, file: !1327, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1326, file: !1327, line: 540, baseType: !1369, size: 33280, offset: 1536)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1370, line: 317, size: 33280, elements: !1371)
!1370 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1369, file: !1370, line: 330, baseType: !7, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1369, file: !1370, line: 337, baseType: !167, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1369, file: !1370, line: 348, baseType: !1375, size: 32768, offset: 512)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1370, line: 304, size: 32768, elements: !1376)
!1376 = !{!1377, !1392, !1431, !1481, !1498}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1375, file: !1370, line: 305, baseType: !1378, size: 896)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1370, line: 12, size: 896, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1391}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1378, file: !1370, line: 13, baseType: !93, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1378, file: !1370, line: 14, baseType: !93, size: 32, offset: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1378, file: !1370, line: 15, baseType: !93, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1378, file: !1370, line: 16, baseType: !93, size: 32, offset: 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1378, file: !1370, line: 17, baseType: !93, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1378, file: !1370, line: 18, baseType: !93, size: 32, offset: 160)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1378, file: !1370, line: 19, baseType: !93, size: 32, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1378, file: !1370, line: 22, baseType: !1388, size: 640, offset: 224)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 20)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1378, file: !1370, line: 25, baseType: !93, size: 32, offset: 864)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1375, file: !1370, line: 306, baseType: !1393, size: 4096, align: 128)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1370, line: 34, size: 4096, align: 128, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1414, !1415, !1416, !1420, !1422, !1426}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1393, file: !1370, line: 35, baseType: !607, size: 16)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1393, file: !1370, line: 36, baseType: !607, size: 16, offset: 16)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1393, file: !1370, line: 37, baseType: !607, size: 16, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1393, file: !1370, line: 38, baseType: !607, size: 16, offset: 48)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1370, line: 39, baseType: !1400, size: 128, offset: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1370, line: 39, size: 128, elements: !1401)
!1401 = !{!1402, !1407}
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1370, line: 40, baseType: !1403, size: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !1370, line: 40, size: 128, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1403, file: !1370, line: 41, baseType: !99, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1403, file: !1370, line: 42, baseType: !99, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1370, line: 44, baseType: !1408, size: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !1370, line: 44, size: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1408, file: !1370, line: 45, baseType: !93, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1408, file: !1370, line: 46, baseType: !93, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1408, file: !1370, line: 47, baseType: !93, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1408, file: !1370, line: 48, baseType: !93, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1393, file: !1370, line: 51, baseType: !93, size: 32, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1393, file: !1370, line: 52, baseType: !93, size: 32, offset: 224)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1393, file: !1370, line: 55, baseType: !1417, size: 1024, offset: 256)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !1418)
!1418 = !{!1419}
!1419 = !DISubrange(count: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1393, file: !1370, line: 58, baseType: !1421, size: 2048, offset: 1280)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2048, elements: !378)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1393, file: !1370, line: 60, baseType: !1423, size: 384, offset: 3328)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 384, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 12)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1370, line: 62, baseType: !1427, size: 384, offset: 3712)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1370, line: 62, size: 384, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1427, file: !1370, line: 63, baseType: !1423, size: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1427, file: !1370, line: 64, baseType: !1423, size: 384)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1375, file: !1370, line: 307, baseType: !1432, size: 1088)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1370, line: 79, size: 1088, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1480}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1432, file: !1370, line: 80, baseType: !93, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1432, file: !1370, line: 81, baseType: !93, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1432, file: !1370, line: 82, baseType: !93, size: 32, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1432, file: !1370, line: 83, baseType: !93, size: 32, offset: 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1432, file: !1370, line: 84, baseType: !93, size: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1432, file: !1370, line: 85, baseType: !93, size: 32, offset: 160)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1432, file: !1370, line: 86, baseType: !93, size: 32, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1432, file: !1370, line: 88, baseType: !1388, size: 640, offset: 224)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1432, file: !1370, line: 89, baseType: !226, size: 8, offset: 864)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1432, file: !1370, line: 90, baseType: !226, size: 8, offset: 872)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1432, file: !1370, line: 91, baseType: !226, size: 8, offset: 880)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1432, file: !1370, line: 92, baseType: !226, size: 8, offset: 888)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1432, file: !1370, line: 93, baseType: !226, size: 8, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1432, file: !1370, line: 94, baseType: !226, size: 8, offset: 904)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1432, file: !1370, line: 95, baseType: !1449, size: 64, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1451, line: 11, size: 128, elements: !1452)
!1451 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1450, file: !1451, line: 12, baseType: !407, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1450, file: !1451, line: 13, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1457, line: 56, size: 1344, elements: !1458)
!1457 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1456, file: !1457, line: 61, baseType: !167, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1456, file: !1457, line: 62, baseType: !167, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1456, file: !1457, line: 63, baseType: !167, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1456, file: !1457, line: 64, baseType: !167, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1456, file: !1457, line: 65, baseType: !167, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1456, file: !1457, line: 66, baseType: !167, size: 64, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1456, file: !1457, line: 68, baseType: !167, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1456, file: !1457, line: 69, baseType: !167, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1456, file: !1457, line: 70, baseType: !167, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1456, file: !1457, line: 71, baseType: !167, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1456, file: !1457, line: 72, baseType: !167, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1456, file: !1457, line: 73, baseType: !167, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1456, file: !1457, line: 74, baseType: !167, size: 64, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1456, file: !1457, line: 75, baseType: !167, size: 64, offset: 832)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1456, file: !1457, line: 76, baseType: !167, size: 64, offset: 896)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1456, file: !1457, line: 81, baseType: !167, size: 64, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1456, file: !1457, line: 83, baseType: !167, size: 64, offset: 1024)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1456, file: !1457, line: 84, baseType: !167, size: 64, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !1457, line: 85, baseType: !167, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1456, file: !1457, line: 86, baseType: !167, size: 64, offset: 1216)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1456, file: !1457, line: 87, baseType: !167, size: 64, offset: 1280)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1432, file: !1370, line: 96, baseType: !93, size: 32, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1375, file: !1370, line: 308, baseType: !1482, size: 4608, align: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1370, line: 289, size: 4608, align: 512, elements: !1483)
!1483 = !{!1484, !1485, !1494}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1482, file: !1370, line: 290, baseType: !1393, size: 4096, align: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1482, file: !1370, line: 291, baseType: !1486, size: 512, offset: 4096)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1370, line: 268, size: 512, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1486, file: !1370, line: 269, baseType: !99, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1486, file: !1370, line: 270, baseType: !99, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1486, file: !1370, line: 271, baseType: !1491, size: 384, offset: 128)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 384, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 6)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1482, file: !1370, line: 292, baseType: !1495, offset: 4608)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 0)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1375, file: !1370, line: 309, baseType: !1499, size: 32768)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32768, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 4096)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !456, line: 378, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !616, file: !456, line: 384, baseType: !934, size: 192, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !476, file: !456, line: 500, baseType: !332, offset: 6656)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !476, file: !456, line: 501, baseType: !1507, size: 64, offset: 6656)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !456, line: 387, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !476, file: !456, line: 516, baseType: !1510, size: 64, offset: 6720)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1512, line: 18, flags: DIFlagFwdDecl)
!1512 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !476, file: !456, line: 519, baseType: !446, size: 64, offset: 6784)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !476, file: !456, line: 521, baseType: !1515, size: 64, offset: 6848)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !456, line: 521, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !476, file: !456, line: 545, baseType: !501, size: 32, offset: 6912)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !476, file: !456, line: 548, baseType: !283, size: 8, offset: 6944)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !476, file: !456, line: 550, baseType: !1520, offset: 6952)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1521, line: 142, elements: !346)
!1521 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !476, file: !456, line: 554, baseType: !1523, size: 256, offset: 6976)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1524, line: 102, size: 256, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1524, line: 103, baseType: !509, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1523, file: !1524, line: 104, baseType: !319, size: 128, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1523, file: !1524, line: 105, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1524, line: 21, baseType: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !476, file: !456, line: 557, baseType: !93, size: 32, offset: 7232)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !473, file: !456, line: 565, baseType: !1536, offset: 7296)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: -1)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !455, file: !456, line: 333, baseType: !1540, size: 64, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !448, line: 284, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !448, line: 284, size: 64, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1541, file: !448, line: 284, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !499, line: 19, baseType: !167)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !455, file: !456, line: 334, baseType: !167, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !455, file: !456, line: 343, baseType: !1547, size: 256, offset: 704)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !455, file: !456, line: 340, size: 256, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1547, file: !456, line: 341, baseType: !463, size: 192, align: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1547, file: !456, line: 342, baseType: !167, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !455, file: !456, line: 351, baseType: !319, size: 128, offset: 960)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !455, file: !456, line: 353, baseType: !1553, size: 64, offset: 1088)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !456, line: 353, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !455, file: !456, line: 356, baseType: !1556, size: 64, offset: 1152)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !456, line: 356, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !455, file: !456, line: 359, baseType: !167, size: 64, offset: 1216)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !455, file: !456, line: 361, baseType: !446, size: 64, offset: 1280)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !455, file: !456, line: 362, baseType: !79, size: 64, offset: 1344)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !455, file: !456, line: 365, baseType: !509, size: 64, offset: 1408)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !455, file: !456, line: 373, baseType: !1564, offset: 1472)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !456, line: 296, elements: !346)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !425, file: !398, line: 90, baseType: !420, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !425, file: !398, line: 91, baseType: !1567, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !388, file: !315, line: 143, baseType: !1569, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572, !325}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1575)
!1575 = !{!1576, !1577, !1581, !1585, !1593, !1597}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1574, file: !18, line: 40, baseType: !17, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1574, file: !18, line: 41, baseType: !1578, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!283}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1574, file: !18, line: 42, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!79}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1574, file: !18, line: 43, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1589, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1574, file: !18, line: 44, baseType: !1594, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1589}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1574, file: !18, line: 45, baseType: !1598, size: 64, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !79}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !388, file: !315, line: 144, baseType: !1602, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1589, !325}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !388, file: !315, line: 145, baseType: !1606, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !325, !1609, !1615}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1512, line: 23, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 21, size: 32, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1611, file: !1512, line: 22, baseType: !1614, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !89, line: 32, baseType: !1096)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1512, line: 28, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 26, size: 32, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1617, file: !1512, line: 27, baseType: !1620, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !89, line: 33, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !184, line: 50, baseType: !7)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !314, file: !315, line: 70, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1625, line: 123, size: 1024, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1769, !1770, !1771, !1772, !1773}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1624, file: !1625, line: 124, baseType: !501, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1624, file: !1625, line: 125, baseType: !501, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1624, file: !1625, line: 135, baseType: !1623, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1624, file: !1625, line: 136, baseType: !113, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1624, file: !1625, line: 138, baseType: !463, size: 192, align: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1624, file: !1625, line: 140, baseType: !1589, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1624, file: !1625, line: 141, baseType: !7, size: 32, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 142, baseType: !1635, size: 256, offset: 512)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 142, size: 256, elements: !1636)
!1636 = !{!1637, !1692, !1696}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1635, file: !1625, line: 143, baseType: !1638, size: 192)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1625, line: 91, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1638, file: !1625, line: 92, baseType: !167, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1638, file: !1625, line: 94, baseType: !480, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1638, file: !1625, line: 100, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1625, line: 180, size: 704, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1662, !1663, !1664, !1690, !1691}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1644, file: !1625, line: 182, baseType: !1623, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !1625, line: 183, baseType: !7, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1644, file: !1625, line: 186, baseType: !1649, size: 192, offset: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1650, line: 19, size: 192, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !{!1652, !1660, !1661}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1649, file: !1650, line: 20, baseType: !1653, size: 128)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1654, line: 292, size: 128, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657, !1659}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1653, file: !1654, line: 293, baseType: !332)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1653, file: !1654, line: 295, baseType: !1658, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !89, line: 148, baseType: !7)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1653, file: !1654, line: 296, baseType: !79, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1649, file: !1650, line: 21, baseType: !7, size: 32, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1649, file: !1650, line: 22, baseType: !7, size: 32, offset: 160)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1644, file: !1625, line: 187, baseType: !93, size: 32, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1644, file: !1625, line: 188, baseType: !93, size: 32, offset: 352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1644, file: !1625, line: 189, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1625, line: 168, size: 320, elements: !1667)
!1667 = !{!1668, !1674, !1678, !1682, !1686}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1666, file: !1625, line: 169, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!117, !1672, !1643}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !448, line: 539, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1666, file: !1625, line: 171, baseType: !1675, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!117, !1623, !113, !413}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1666, file: !1625, line: 173, baseType: !1679, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!117, !1623}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1666, file: !1625, line: 174, baseType: !1683, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!117, !1623, !1623, !113}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1666, file: !1625, line: 176, baseType: !1687, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!117, !1672, !1623, !1643}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1644, file: !1625, line: 192, baseType: !319, size: 128, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1644, file: !1625, line: 194, baseType: !905, size: 128, offset: 576)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1635, file: !1625, line: 144, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1625, line: 103, size: 64, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1693, file: !1625, line: 104, baseType: !1623, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1635, file: !1625, line: 145, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1625, line: 107, size: 256, elements: !1698)
!1698 = !{!1699, !1764, !1767, !1768}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1697, file: !1625, line: 108, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1625, line: 217, size: 768, elements: !1703)
!1703 = !{!1704, !1724, !1728, !1732, !1737, !1741, !1745, !1749, !1750, !1751, !1752, !1760}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1702, file: !1625, line: 222, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!117, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1625, line: 197, size: 1088, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1709, file: !1625, line: 199, baseType: !1623, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1709, file: !1625, line: 200, baseType: !446, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1709, file: !1625, line: 201, baseType: !1672, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1709, file: !1625, line: 202, baseType: !79, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1709, file: !1625, line: 205, baseType: !578, size: 192, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1709, file: !1625, line: 206, baseType: !578, size: 192, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1709, file: !1625, line: 207, baseType: !117, size: 32, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1709, file: !1625, line: 208, baseType: !319, size: 128, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1709, file: !1625, line: 209, baseType: !373, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1709, file: !1625, line: 211, baseType: !186, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1709, file: !1625, line: 212, baseType: !283, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1709, file: !1625, line: 213, baseType: !283, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1709, file: !1625, line: 214, baseType: !1556, size: 64, offset: 1024)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1702, file: !1625, line: 223, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1708}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1702, file: !1625, line: 236, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!117, !1672, !79}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1702, file: !1625, line: 238, baseType: !1733, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!79, !1672, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1702, file: !1625, line: 239, baseType: !1738, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!79, !1672, !79, !1736}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1702, file: !1625, line: 240, baseType: !1742, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1672, !79}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1702, file: !1625, line: 242, baseType: !1746, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!404, !1708, !373, !186, !182}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1702, file: !1625, line: 252, baseType: !186, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1702, file: !1625, line: 259, baseType: !283, size: 8, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1702, file: !1625, line: 260, baseType: !1746, size: 64, offset: 576)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1702, file: !1625, line: 263, baseType: !1753, size: 64, offset: 640)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1756, !1708, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1757, line: 52, baseType: !7)
!1757 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1625, line: 27, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1702, file: !1625, line: 266, baseType: !1761, size: 64, offset: 704)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!117, !1708, !454}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1697, file: !1625, line: 109, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1625, line: 31, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1697, file: !1625, line: 110, baseType: !182, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1697, file: !1625, line: 111, baseType: !1623, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1624, file: !1625, line: 148, baseType: !79, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1624, file: !1625, line: 154, baseType: !99, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 156, baseType: !414, size: 16, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1624, file: !1625, line: 157, baseType: !413, size: 16, offset: 912)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1624, file: !1625, line: 158, baseType: !1774, size: 64, offset: 960)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1625, line: 32, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !314, file: !315, line: 71, baseType: !1777, size: 32, offset: 448)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1778, line: 19, size: 32, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1777, file: !1778, line: 20, baseType: !637, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !314, file: !315, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !314, file: !315, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !314, file: !315, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !314, file: !315, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !314, file: !315, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !311, file: !30, line: 463, baseType: !1787, size: 64, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !311, file: !30, line: 465, baseType: !1789, size: 64, offset: 576)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !311, file: !30, line: 467, baseType: !113, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !30, line: 468, baseType: !1793, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1803, !1808, !1812}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1795, file: !30, line: 88, baseType: !113, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1795, file: !30, line: 89, baseType: !422, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1795, file: !30, line: 90, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!117, !1787, !368}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1795, file: !30, line: 91, baseType: !1804, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!373, !1787, !1807, !1609, !1615}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1795, file: !30, line: 93, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1787}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1795, file: !30, line: 95, baseType: !1813, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1816)
!1816 = !{!1817, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1815, file: !37, line: 279, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!117, !1787}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1815, file: !37, line: 280, baseType: !1809, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1815, file: !37, line: 281, baseType: !1818, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1815, file: !37, line: 282, baseType: !1818, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1815, file: !37, line: 283, baseType: !1818, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1815, file: !37, line: 284, baseType: !1818, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1815, file: !37, line: 285, baseType: !1818, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1815, file: !37, line: 286, baseType: !1818, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1815, file: !37, line: 287, baseType: !1818, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1815, file: !37, line: 288, baseType: !1818, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1815, file: !37, line: 289, baseType: !1818, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1815, file: !37, line: 290, baseType: !1818, size: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1815, file: !37, line: 291, baseType: !1818, size: 64, offset: 768)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1815, file: !37, line: 292, baseType: !1818, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1815, file: !37, line: 293, baseType: !1818, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1815, file: !37, line: 294, baseType: !1818, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1815, file: !37, line: 295, baseType: !1818, size: 64, offset: 1024)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1815, file: !37, line: 296, baseType: !1818, size: 64, offset: 1088)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1815, file: !37, line: 297, baseType: !1818, size: 64, offset: 1152)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1815, file: !37, line: 298, baseType: !1818, size: 64, offset: 1216)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1815, file: !37, line: 299, baseType: !1818, size: 64, offset: 1280)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1815, file: !37, line: 300, baseType: !1818, size: 64, offset: 1344)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1815, file: !37, line: 301, baseType: !1818, size: 64, offset: 1408)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !311, file: !30, line: 470, baseType: !1844, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1846, line: 82, size: 1408, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1930, !1933, !1936}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1845, file: !1846, line: 83, baseType: !113, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1845, file: !1846, line: 84, baseType: !113, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1845, file: !1846, line: 85, baseType: !1787, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1845, file: !1846, line: 86, baseType: !422, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1845, file: !1846, line: 87, baseType: !422, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1845, file: !1846, line: 88, baseType: !422, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1845, file: !1846, line: 90, baseType: !1855, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!117, !1787, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1881, !1894, !1895, !1896, !1897, !1898, !1906, !1907, !1908, !1909, !1910, !1911}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1859, file: !24, line: 96, baseType: !113, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1859, file: !24, line: 97, baseType: !1844, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1859, file: !24, line: 99, baseType: !307, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1859, file: !24, line: 100, baseType: !113, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1859, file: !24, line: 102, baseType: !283, size: 8, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1859, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1859, file: !24, line: 105, baseType: !1868, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1871, line: 262, size: 1600, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1875, !1876, !1880}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1870, file: !1871, line: 263, baseType: !1874, size: 256)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1418)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1870, file: !1871, line: 264, baseType: !1874, size: 256, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1870, file: !1871, line: 265, baseType: !1877, size: 1024, offset: 512)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1024, elements: !1878)
!1878 = !{!1879}
!1879 = !DISubrange(count: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1870, file: !1871, line: 266, baseType: !1589, size: 64, offset: 1536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1859, file: !24, line: 106, baseType: !1882, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1871, line: 210, size: 256, elements: !1885)
!1885 = !{!1886, !1890, !1892, !1893}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1884, file: !1871, line: 211, baseType: !1887, size: 72)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 72, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 9)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1884, file: !1871, line: 212, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1871, line: 14, baseType: !167)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1884, file: !1871, line: 213, baseType: !95, size: 32, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1884, file: !1871, line: 214, baseType: !95, size: 32, offset: 224)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1859, file: !24, line: 108, baseType: !1818, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1859, file: !24, line: 109, baseType: !1809, size: 64, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1859, file: !24, line: 110, baseType: !1818, size: 64, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1859, file: !24, line: 111, baseType: !1809, size: 64, offset: 640)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1859, file: !24, line: 112, baseType: !1899, size: 64, offset: 704)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!117, !1787, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1903, file: !37, line: 51, baseType: !117, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1859, file: !24, line: 113, baseType: !1818, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1859, file: !24, line: 114, baseType: !422, size: 64, offset: 832)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1859, file: !24, line: 115, baseType: !422, size: 64, offset: 896)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1859, file: !24, line: 117, baseType: !1813, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1859, file: !24, line: 118, baseType: !1809, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1859, file: !24, line: 120, baseType: !1912, size: 64, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1845, file: !1846, line: 91, baseType: !1800, size: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1845, file: !1846, line: 92, baseType: !1818, size: 64, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1845, file: !1846, line: 93, baseType: !1809, size: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1845, file: !1846, line: 94, baseType: !1818, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1845, file: !1846, line: 95, baseType: !1809, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1845, file: !1846, line: 97, baseType: !1818, size: 64, offset: 768)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1845, file: !1846, line: 98, baseType: !1818, size: 64, offset: 832)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1845, file: !1846, line: 100, baseType: !1899, size: 64, offset: 896)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1845, file: !1846, line: 101, baseType: !1818, size: 64, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1845, file: !1846, line: 103, baseType: !1818, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1845, file: !1846, line: 105, baseType: !1818, size: 64, offset: 1088)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1845, file: !1846, line: 107, baseType: !1813, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1845, file: !1846, line: 109, baseType: !1927, size: 64, offset: 1216)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1846, line: 109, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1845, file: !1846, line: 111, baseType: !1931, size: 64, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1846, line: 111, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1845, file: !1846, line: 112, baseType: !1934, offset: 1344)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1935, line: 187, elements: !346)
!1935 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1845, file: !1846, line: 114, baseType: !283, size: 8, offset: 1344)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !311, file: !30, line: 471, baseType: !1858, size: 64, offset: 832)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !311, file: !30, line: 473, baseType: !79, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !311, file: !30, line: 475, baseType: !79, size: 64, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !311, file: !30, line: 480, baseType: !578, size: 192, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !311, file: !30, line: 484, baseType: !1942, size: 576, offset: 1216)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1942, file: !30, line: 362, baseType: !319, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1942, file: !30, line: 363, baseType: !319, size: 128, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1942, file: !30, line: 364, baseType: !319, size: 128, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1942, file: !30, line: 365, baseType: !319, size: 128, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1942, file: !30, line: 366, baseType: !283, size: 8, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1942, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !311, file: !30, line: 485, baseType: !1951, size: 2304, offset: 1792)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2048, !2052}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1951, file: !37, line: 566, baseType: !1902, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1951, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1951, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1951, file: !37, line: 569, baseType: !283, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1951, file: !37, line: 570, baseType: !283, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1951, file: !37, line: 571, baseType: !283, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1951, file: !37, line: 572, baseType: !283, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1951, file: !37, line: 573, baseType: !283, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1951, file: !37, line: 574, baseType: !283, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1951, file: !37, line: 575, baseType: !283, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1951, file: !37, line: 576, baseType: !283, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1951, file: !37, line: 577, baseType: !93, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1951, file: !37, line: 578, baseType: !332, offset: 96)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1951, file: !37, line: 580, baseType: !319, size: 128, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1951, file: !37, line: 581, baseType: !934, size: 192, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1951, file: !37, line: 582, baseType: !1969, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1971, line: 43, size: 1472, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1980, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1970, file: !1971, line: 44, baseType: !113, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1970, file: !1971, line: 45, baseType: !117, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1970, file: !1971, line: 46, baseType: !319, size: 128, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !1971, line: 47, baseType: !332, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1970, file: !1971, line: 48, baseType: !1978, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1970, file: !1971, line: 49, baseType: !1981, size: 320, offset: 320)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1982, line: 11, size: 320, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !1985, !1986, !1991}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1981, file: !1982, line: 16, baseType: !898, size: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1981, file: !1982, line: 17, baseType: !167, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1981, file: !1982, line: 18, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1982, line: 19, baseType: !93, size: 32, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1970, file: !1971, line: 50, baseType: !167, size: 64, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1970, file: !1971, line: 51, baseType: !707, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1970, file: !1971, line: 52, baseType: !707, size: 64, offset: 768)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1970, file: !1971, line: 53, baseType: !707, size: 64, offset: 832)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1970, file: !1971, line: 54, baseType: !707, size: 64, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1970, file: !1971, line: 55, baseType: !707, size: 64, offset: 960)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1970, file: !1971, line: 56, baseType: !167, size: 64, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1970, file: !1971, line: 57, baseType: !167, size: 64, offset: 1088)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1970, file: !1971, line: 58, baseType: !167, size: 64, offset: 1152)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1970, file: !1971, line: 59, baseType: !167, size: 64, offset: 1216)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1970, file: !1971, line: 60, baseType: !167, size: 64, offset: 1280)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1970, file: !1971, line: 61, baseType: !1787, size: 64, offset: 1344)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1970, file: !1971, line: 62, baseType: !283, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1970, file: !1971, line: 63, baseType: !283, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1951, file: !37, line: 583, baseType: !283, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1951, file: !37, line: 584, baseType: !283, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1951, file: !37, line: 585, baseType: !283, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1951, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1951, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1951, file: !37, line: 592, baseType: !699, size: 512, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1951, file: !37, line: 593, baseType: !99, size: 64, offset: 1088)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1951, file: !37, line: 594, baseType: !1523, size: 256, offset: 1152)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1951, file: !37, line: 595, baseType: !905, size: 128, offset: 1408)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1951, file: !37, line: 596, baseType: !1978, size: 64, offset: 1536)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1951, file: !37, line: 597, baseType: !501, size: 32, offset: 1600)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1951, file: !37, line: 598, baseType: !501, size: 32, offset: 1632)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1951, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1951, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1951, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1951, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1951, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1951, file: !37, line: 604, baseType: !283, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1951, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1951, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1951, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1951, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1951, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1951, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1951, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1951, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1951, file: !37, line: 613, baseType: !117, size: 32, offset: 1792)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1951, file: !37, line: 614, baseType: !117, size: 32, offset: 1824)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1951, file: !37, line: 615, baseType: !99, size: 64, offset: 1856)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1951, file: !37, line: 616, baseType: !99, size: 64, offset: 1920)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1951, file: !37, line: 617, baseType: !99, size: 64, offset: 1984)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1951, file: !37, line: 618, baseType: !99, size: 64, offset: 2048)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1951, file: !37, line: 620, baseType: !2039, size: 64, offset: 2112)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2040, file: !37, line: 537, baseType: !332)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2040, file: !37, line: 538, baseType: !7, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2040, file: !37, line: 540, baseType: !319, size: 128, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2040, file: !37, line: 543, baseType: !2046, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1951, file: !37, line: 621, baseType: !2049, size: 64, offset: 2176)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1787, !858}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1951, file: !37, line: 622, baseType: !2053, size: 64, offset: 2240)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !311, file: !30, line: 486, baseType: !2056, size: 64, offset: 4096)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2065, !2066, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2057, file: !37, line: 643, baseType: !1815, size: 1472)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2057, file: !37, line: 644, baseType: !1818, size: 64, offset: 1472)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2057, file: !37, line: 645, baseType: !2062, size: 64, offset: 1536)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !1787, !283}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2057, file: !37, line: 646, baseType: !1818, size: 64, offset: 1600)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2057, file: !37, line: 647, baseType: !1809, size: 64, offset: 1664)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2057, file: !37, line: 648, baseType: !1809, size: 64, offset: 1728)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !311, file: !30, line: 493, baseType: !2069, size: 64, offset: 4160)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !311, file: !30, line: 499, baseType: !319, size: 128, offset: 4224)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !311, file: !30, line: 502, baseType: !2073, size: 64, offset: 4352)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !311, file: !30, line: 504, baseType: !2077, size: 64, offset: 4416)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !311, file: !30, line: 505, baseType: !99, size: 64, offset: 4480)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !311, file: !30, line: 510, baseType: !99, size: 64, offset: 4544)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !311, file: !30, line: 511, baseType: !2081, size: 64, offset: 4608)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !311, file: !30, line: 513, baseType: !2085, size: 64, offset: 4672)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2086, file: !30, line: 293, baseType: !7, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2086, file: !30, line: 294, baseType: !167, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !311, file: !30, line: 515, baseType: !319, size: 128, offset: 4736)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !311, file: !30, line: 526, baseType: !2092, offset: 4864)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2093, line: 5, elements: !346)
!2093 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !311, file: !30, line: 528, baseType: !2095, size: 64, offset: 4864)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2097, line: 51, size: 1344, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2102, !2103, !2193, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2096, file: !2097, line: 52, baseType: !113, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2096, file: !2097, line: 53, baseType: !2101, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2097, line: 28, baseType: !93)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2096, file: !2097, line: 54, baseType: !113, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2096, file: !2097, line: 55, baseType: !2104, size: 192, offset: 192)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2105, line: 17, size: 192, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2109, !2192}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2104, file: !2105, line: 18, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2104, file: !2105, line: 19, baseType: !2110, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2105, line: 110, size: 1152, elements: !2113)
!2113 = !{!2114, !2118, !2122, !2128, !2134, !2138, !2142, !2147, !2151, !2152, !2156, !2160, !2164, !2175, !2176, !2177, !2178, !2188}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2112, file: !2105, line: 111, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!2108, !2108}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2112, file: !2105, line: 112, baseType: !2119, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !2108}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2112, file: !2105, line: 113, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!283, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2112, file: !2105, line: 114, baseType: !2129, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!1589, !2126, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2112, file: !2105, line: 116, baseType: !2135, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!283, !2126, !113}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2112, file: !2105, line: 118, baseType: !2139, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!117, !2126, !113, !7, !79, !186}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2112, file: !2105, line: 123, baseType: !2143, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!117, !2126, !113, !2146, !186}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2112, file: !2105, line: 126, baseType: !2148, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!113, !2126}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2112, file: !2105, line: 127, baseType: !2148, size: 64, offset: 512)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2112, file: !2105, line: 128, baseType: !2153, size: 64, offset: 576)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2108, !2126}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2112, file: !2105, line: 130, baseType: !2157, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!2108, !2126, !2108}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2112, file: !2105, line: 133, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2108, !2126, !113}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2112, file: !2105, line: 135, baseType: !2165, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!117, !2126, !113, !113, !7, !7, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2105, line: 43, size: 640, elements: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2169, file: !2105, line: 44, baseType: !2108, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2169, file: !2105, line: 45, baseType: !7, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2169, file: !2105, line: 46, baseType: !2174, size: 512, offset: 128)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 512, elements: !737)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2112, file: !2105, line: 140, baseType: !2157, size: 64, offset: 832)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2112, file: !2105, line: 143, baseType: !2153, size: 64, offset: 896)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2112, file: !2105, line: 145, baseType: !2115, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2112, file: !2105, line: 146, baseType: !2179, size: 64, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!117, !2126, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2105, line: 29, size: 128, elements: !2184)
!2184 = !{!2185, !2186, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2183, file: !2105, line: 30, baseType: !7, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2183, file: !2105, line: 31, baseType: !7, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2183, file: !2105, line: 32, baseType: !2126, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2112, file: !2105, line: 148, baseType: !2189, size: 64, offset: 1088)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!117, !2126, !1787}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2104, file: !2105, line: 20, baseType: !1787, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2096, file: !2097, line: 57, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2097, line: 31, size: 704, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2195, file: !2097, line: 32, baseType: !373, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2195, file: !2097, line: 33, baseType: !117, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2195, file: !2097, line: 34, baseType: !79, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2195, file: !2097, line: 35, baseType: !2194, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2195, file: !2097, line: 43, baseType: !437, size: 448, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2096, file: !2097, line: 58, baseType: !2194, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2096, file: !2097, line: 59, baseType: !2095, size: 64, offset: 512)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2096, file: !2097, line: 60, baseType: !2095, size: 64, offset: 576)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2096, file: !2097, line: 61, baseType: !2095, size: 64, offset: 640)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2096, file: !2097, line: 63, baseType: !314, size: 512, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2096, file: !2097, line: 65, baseType: !167, size: 64, offset: 1216)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2096, file: !2097, line: 66, baseType: !79, size: 64, offset: 1280)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !311, file: !30, line: 529, baseType: !2108, size: 64, offset: 4928)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !311, file: !30, line: 534, baseType: !2211, size: 32, offset: 4992)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !89, line: 16, baseType: !2212)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !89, line: 13, baseType: !93)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !311, file: !30, line: 535, baseType: !93, size: 32, offset: 5024)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !311, file: !30, line: 537, baseType: !332, offset: 5056)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !311, file: !30, line: 538, baseType: !319, size: 128, offset: 5056)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !311, file: !30, line: 540, baseType: !2217, size: 64, offset: 5184)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2219, line: 54, size: 960, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2231, !2235, !2236, !2237, !2238, !2242, !2246, !2247}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2218, file: !2219, line: 55, baseType: !113, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2218, file: !2219, line: 56, baseType: !307, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2218, file: !2219, line: 58, baseType: !422, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2218, file: !2219, line: 59, baseType: !422, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2218, file: !2219, line: 60, baseType: !325, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2218, file: !2219, line: 62, baseType: !1800, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2218, file: !2219, line: 63, baseType: !2228, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!373, !1787, !1807}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2218, file: !2219, line: 65, baseType: !2232, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2217}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2218, file: !2219, line: 66, baseType: !1809, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2218, file: !2219, line: 68, baseType: !1818, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2218, file: !2219, line: 70, baseType: !1572, size: 64, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2218, file: !2219, line: 71, baseType: !2239, size: 64, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!1589, !1787}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2218, file: !2219, line: 73, baseType: !2243, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !1787, !1609, !1615}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2218, file: !2219, line: 75, baseType: !1813, size: 64, offset: 832)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2218, file: !2219, line: 77, baseType: !1931, size: 64, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !311, file: !30, line: 541, baseType: !422, size: 64, offset: 5248)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !311, file: !30, line: 543, baseType: !1809, size: 64, offset: 5312)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !311, file: !30, line: 544, baseType: !2251, size: 64, offset: 5376)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !311, file: !30, line: 545, baseType: !2254, size: 64, offset: 5440)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !311, file: !30, line: 547, baseType: !283, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !311, file: !30, line: 548, baseType: !283, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !311, file: !30, line: 549, baseType: !283, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !311, file: !30, line: 550, baseType: !283, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !84, file: !85, line: 376, baseType: !117, size: 32, offset: 8832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !84, file: !85, line: 377, baseType: !2262, size: 192, offset: 8896)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !85, line: 191, size: 192, elements: !2263)
!2263 = !{!2264, !2267, !2268}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2262, file: !85, line: 192, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1625, line: 21, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2262, file: !85, line: 194, baseType: !113, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2262, file: !85, line: 195, baseType: !113, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !84, file: !85, line: 378, baseType: !2270, size: 64, offset: 9088)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2272, line: 16, flags: DIFlagFwdDecl)
!2272 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !85, line: 386, baseType: !127, size: 64, offset: 9152)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !84, file: !85, line: 389, baseType: !319, size: 128, offset: 9216)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !85, line: 391, baseType: !2276, size: 320, offset: 9344)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !85, line: 391, size: 320, elements: !2277)
!2277 = !{!2278, !2285}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2276, file: !85, line: 392, baseType: !2279, size: 320)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !85, line: 211, size: 320, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2279, file: !85, line: 212, baseType: !319, size: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2279, file: !85, line: 213, baseType: !99, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2279, file: !85, line: 214, baseType: !99, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !85, line: 215, baseType: !93, size: 32, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2276, file: !85, line: 393, baseType: !2286, size: 256)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !85, line: 230, size: 256, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2286, file: !85, line: 231, baseType: !578, size: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2286, file: !85, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !81, file: !51, line: 321, baseType: !2291, size: 288, offset: 9664)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2291, file: !51, line: 30, baseType: !7, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2291, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2291, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2291, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2291, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2291, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2291, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2291, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2291, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !81, file: !51, line: 322, baseType: !2303, size: 1024, offset: 9984)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2304)
!2304 = !{!2305, !2314, !2315, !2316, !2322, !2370}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2303, file: !51, line: 292, baseType: !2306, size: 192)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2306, file: !51, line: 188, baseType: !50, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2306, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2306, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2306, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2306, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2303, file: !51, line: 293, baseType: !2306, size: 192, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2303, file: !51, line: 294, baseType: !2306, size: 192, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2303, file: !51, line: 295, baseType: !2317, size: 320, offset: 576)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2317, file: !51, line: 239, baseType: !2306, size: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2317, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2317, file: !51, line: 241, baseType: !79, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2303, file: !51, line: 296, baseType: !2323, size: 64, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2325)
!2325 = !{!2326}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2324, file: !51, line: 269, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2329)
!2329 = !{!2330, !2334, !2338, !2369}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2328, file: !51, line: 256, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!117, !80}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2328, file: !51, line: 257, baseType: !2335, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !80}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2328, file: !51, line: 258, baseType: !2339, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!117, !80, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2344)
!2344 = !{!2345, !2346, !2354, !2355, !2356, !2361, !2362, !2363, !2368}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2343, file: !51, line: 113, baseType: !69, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2343, file: !51, line: 114, baseType: !2347, size: 160, offset: 32)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352, !2353}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2347, file: !51, line: 78, baseType: !7, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2347, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2347, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2347, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2347, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2343, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2343, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2343, file: !51, line: 120, baseType: !2357, size: 64, offset: 256)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !51, line: 117, size: 64, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2357, file: !51, line: 118, baseType: !1589, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2357, file: !51, line: 119, baseType: !79, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2343, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2343, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2343, file: !51, line: 126, baseType: !2364, size: 64, offset: 384)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !51, line: 123, size: 64, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2364, file: !51, line: 124, baseType: !1589, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2364, file: !51, line: 125, baseType: !79, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2343, file: !51, line: 127, baseType: !117, size: 32, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2328, file: !51, line: 260, baseType: !2339, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2303, file: !51, line: 297, baseType: !2323, size: 64, offset: 960)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !81, file: !51, line: 323, baseType: !2372, size: 64, offset: 11008)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2372, file: !51, line: 62, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2372, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !81, file: !51, line: 324, baseType: !2377, size: 64, offset: 11072)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2378)
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2377, file: !51, line: 206, baseType: !166, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !81, file: !51, line: 325, baseType: !2381, size: 64, offset: 11136)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2383)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2384)
!2384 = !{!2385, !2391, !2392}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2383, file: !51, line: 226, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!117, !80, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2347)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2383, file: !51, line: 227, baseType: !2386, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2383, file: !51, line: 228, baseType: !2393, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!283, !80, !2389}
!2396 = !{!2397, !2402, !2407, !2412, !0, !2414, !2416, !2418, !2422}
!2397 = !DIGlobalVariableExpression(var: !2398, expr: !DIExpression())
!2398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file171", scope: !2, file: !3, line: 482, type: !2399, isLocal: true, isDefinition: true, align: 8)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 320, elements: !2400)
!2400 = !{!2401}
!2401 = !DISubrange(count: 40)
!2402 = !DIGlobalVariableExpression(var: !2403, expr: !DIExpression())
!2403 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license172", scope: !2, file: !3, line: 482, type: !2404, isLocal: true, isDefinition: true, align: 8)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 168, elements: !2405)
!2405 = !{!2406}
!2406 = !DISubrange(count: 21)
!2407 = !DIGlobalVariableExpression(var: !2408, expr: !DIExpression())
!2408 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author173", scope: !2, file: !3, line: 483, type: !2409, isLocal: true, isDefinition: true, align: 8)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 464, elements: !2410)
!2410 = !{!2411}
!2411 = !DISubrange(count: 58)
!2412 = !DIGlobalVariableExpression(var: !2413, expr: !DIExpression())
!2413 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description174", scope: !2, file: !3, line: 484, type: !2399, isLocal: true, isDefinition: true, align: 8)
!2414 = !DIGlobalVariableExpression(var: !2415, expr: !DIExpression())
!2415 = distinct !DIGlobalVariable(name: "nand_ooblayout_lp_ops", scope: !2, file: !3, line: 246, type: !120, isLocal: true, isDefinition: true)
!2416 = !DIGlobalVariableExpression(var: !2417, expr: !DIExpression())
!2417 = distinct !DIGlobalVariable(name: "nand_ooblayout_lp_hamming_ops", scope: !2, file: !3, line: 320, type: !120, isLocal: true, isDefinition: true)
!2418 = !DIGlobalVariableExpression(var: !2419, expr: !DIExpression())
!2419 = distinct !DIGlobalVariable(name: "nand_ecc_algos", scope: !2, file: !3, line: 378, type: !2420, isLocal: true, isDefinition: true)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, size: 256, elements: !560)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2422 = !DIGlobalVariableExpression(var: !2423, expr: !DIExpression())
!2423 = distinct !DIGlobalVariable(name: "nand_ecc_placement", scope: !2, file: !3, line: 355, type: !2424, isLocal: true, isDefinition: true)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, size: 192, elements: !374)
!2425 = !{i32 7, !"Dwarf Version", i32 4}
!2426 = !{i32 2, !"Debug Info Version", i32 3}
!2427 = !{i32 1, !"wchar_size", i32 2}
!2428 = !{i32 1, !"Code Model", i32 2}
!2429 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2430 = distinct !DISubprogram(name: "nand_ecc_init_ctx", scope: !3, file: !3, line: 105, type: !2332, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2431 = !DILocalVariable(name: "nand", arg: 1, scope: !2430, file: !3, line: 105, type: !80)
!2432 = !DILocation(line: 105, column: 43, scope: !2430)
!2433 = !DILocation(line: 107, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 107, column: 6)
!2435 = !DILocation(line: 107, column: 13, scope: !2434)
!2436 = !DILocation(line: 107, column: 17, scope: !2434)
!2437 = !DILocation(line: 107, column: 25, scope: !2434)
!2438 = !DILocation(line: 107, column: 30, scope: !2434)
!2439 = !DILocation(line: 107, column: 6, scope: !2430)
!2440 = !DILocation(line: 108, column: 3, scope: !2434)
!2441 = !DILocation(line: 110, column: 9, scope: !2430)
!2442 = !DILocation(line: 110, column: 15, scope: !2430)
!2443 = !DILocation(line: 110, column: 19, scope: !2430)
!2444 = !DILocation(line: 110, column: 27, scope: !2430)
!2445 = !DILocation(line: 110, column: 32, scope: !2430)
!2446 = !DILocation(line: 110, column: 41, scope: !2430)
!2447 = !DILocation(line: 110, column: 2, scope: !2430)
!2448 = !DILocation(line: 111, column: 1, scope: !2430)
!2449 = distinct !DISubprogram(name: "nand_ecc_cleanup_ctx", scope: !3, file: !3, line: 118, type: !2336, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2450 = !DILocalVariable(name: "nand", arg: 1, scope: !2449, file: !3, line: 118, type: !80)
!2451 = !DILocation(line: 118, column: 47, scope: !2449)
!2452 = !DILocation(line: 120, column: 6, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 120, column: 6)
!2454 = !DILocation(line: 120, column: 12, scope: !2453)
!2455 = !DILocation(line: 120, column: 16, scope: !2453)
!2456 = !DILocation(line: 120, column: 24, scope: !2453)
!2457 = !DILocation(line: 120, column: 29, scope: !2453)
!2458 = !DILocation(line: 120, column: 6, scope: !2449)
!2459 = !DILocation(line: 121, column: 3, scope: !2453)
!2460 = !DILocation(line: 121, column: 9, scope: !2453)
!2461 = !DILocation(line: 121, column: 13, scope: !2453)
!2462 = !DILocation(line: 121, column: 21, scope: !2453)
!2463 = !DILocation(line: 121, column: 26, scope: !2453)
!2464 = !DILocation(line: 121, column: 38, scope: !2453)
!2465 = !DILocation(line: 122, column: 1, scope: !2449)
!2466 = distinct !DISubprogram(name: "nand_ecc_prepare_io_req", scope: !3, file: !3, line: 130, type: !2340, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2467 = !DILocalVariable(name: "nand", arg: 1, scope: !2466, file: !3, line: 130, type: !80)
!2468 = !DILocation(line: 130, column: 49, scope: !2466)
!2469 = !DILocalVariable(name: "req", arg: 2, scope: !2466, file: !3, line: 131, type: !2342)
!2470 = !DILocation(line: 131, column: 33, scope: !2466)
!2471 = !DILocation(line: 133, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 133, column: 6)
!2473 = !DILocation(line: 133, column: 13, scope: !2472)
!2474 = !DILocation(line: 133, column: 17, scope: !2472)
!2475 = !DILocation(line: 133, column: 25, scope: !2472)
!2476 = !DILocation(line: 133, column: 30, scope: !2472)
!2477 = !DILocation(line: 133, column: 6, scope: !2466)
!2478 = !DILocation(line: 134, column: 3, scope: !2472)
!2479 = !DILocation(line: 136, column: 9, scope: !2466)
!2480 = !DILocation(line: 136, column: 15, scope: !2466)
!2481 = !DILocation(line: 136, column: 19, scope: !2466)
!2482 = !DILocation(line: 136, column: 27, scope: !2466)
!2483 = !DILocation(line: 136, column: 32, scope: !2466)
!2484 = !DILocation(line: 136, column: 47, scope: !2466)
!2485 = !DILocation(line: 136, column: 53, scope: !2466)
!2486 = !DILocation(line: 136, column: 2, scope: !2466)
!2487 = !DILocation(line: 137, column: 1, scope: !2466)
!2488 = distinct !DISubprogram(name: "nand_ecc_finish_io_req", scope: !3, file: !3, line: 145, type: !2340, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2489 = !DILocalVariable(name: "nand", arg: 1, scope: !2488, file: !3, line: 145, type: !80)
!2490 = !DILocation(line: 145, column: 48, scope: !2488)
!2491 = !DILocalVariable(name: "req", arg: 2, scope: !2488, file: !3, line: 146, type: !2342)
!2492 = !DILocation(line: 146, column: 32, scope: !2488)
!2493 = !DILocation(line: 148, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 148, column: 6)
!2495 = !DILocation(line: 148, column: 13, scope: !2494)
!2496 = !DILocation(line: 148, column: 17, scope: !2494)
!2497 = !DILocation(line: 148, column: 25, scope: !2494)
!2498 = !DILocation(line: 148, column: 30, scope: !2494)
!2499 = !DILocation(line: 148, column: 6, scope: !2488)
!2500 = !DILocation(line: 149, column: 3, scope: !2494)
!2501 = !DILocation(line: 151, column: 9, scope: !2488)
!2502 = !DILocation(line: 151, column: 15, scope: !2488)
!2503 = !DILocation(line: 151, column: 19, scope: !2488)
!2504 = !DILocation(line: 151, column: 27, scope: !2488)
!2505 = !DILocation(line: 151, column: 32, scope: !2488)
!2506 = !DILocation(line: 151, column: 46, scope: !2488)
!2507 = !DILocation(line: 151, column: 52, scope: !2488)
!2508 = !DILocation(line: 151, column: 2, scope: !2488)
!2509 = !DILocation(line: 152, column: 1, scope: !2488)
!2510 = distinct !DISubprogram(name: "nand_get_small_page_ooblayout", scope: !3, file: !3, line: 210, type: !2511, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!119}
!2513 = !DILocation(line: 212, column: 2, scope: !2510)
!2514 = distinct !DISubprogram(name: "nand_get_large_page_ooblayout", scope: !3, file: !3, line: 251, type: !2511, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2515 = !DILocation(line: 253, column: 2, scope: !2514)
!2516 = distinct !DISubprogram(name: "nand_get_large_page_hamming_ooblayout", scope: !3, file: !3, line: 325, type: !2511, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2517 = !DILocation(line: 327, column: 2, scope: !2516)
!2518 = distinct !DISubprogram(name: "of_get_nand_ecc_user_config", scope: !3, file: !3, line: 421, type: !2336, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2519 = !DILocalVariable(name: "nand", arg: 1, scope: !2518, file: !3, line: 421, type: !80)
!2520 = !DILocation(line: 421, column: 54, scope: !2518)
!2521 = !DILocalVariable(name: "dn", scope: !2518, file: !3, line: 423, type: !2095)
!2522 = !DILocation(line: 423, column: 22, scope: !2518)
!2523 = !DILocation(line: 423, column: 47, scope: !2518)
!2524 = !DILocation(line: 423, column: 27, scope: !2518)
!2525 = !DILocalVariable(name: "strength", scope: !2518, file: !3, line: 424, type: !117)
!2526 = !DILocation(line: 424, column: 6, scope: !2518)
!2527 = !DILocalVariable(name: "size", scope: !2518, file: !3, line: 424, type: !117)
!2528 = !DILocation(line: 424, column: 16, scope: !2518)
!2529 = !DILocation(line: 426, column: 64, scope: !2518)
!2530 = !DILocation(line: 426, column: 36, scope: !2518)
!2531 = !DILocation(line: 426, column: 2, scope: !2518)
!2532 = !DILocation(line: 426, column: 8, scope: !2518)
!2533 = !DILocation(line: 426, column: 12, scope: !2518)
!2534 = !DILocation(line: 426, column: 22, scope: !2518)
!2535 = !DILocation(line: 426, column: 34, scope: !2518)
!2536 = !DILocation(line: 427, column: 50, scope: !2518)
!2537 = !DILocation(line: 427, column: 29, scope: !2518)
!2538 = !DILocation(line: 427, column: 2, scope: !2518)
!2539 = !DILocation(line: 427, column: 8, scope: !2518)
!2540 = !DILocation(line: 427, column: 12, scope: !2518)
!2541 = !DILocation(line: 427, column: 22, scope: !2518)
!2542 = !DILocation(line: 427, column: 27, scope: !2518)
!2543 = !DILocation(line: 428, column: 60, scope: !2518)
!2544 = !DILocation(line: 428, column: 34, scope: !2518)
!2545 = !DILocation(line: 428, column: 2, scope: !2518)
!2546 = !DILocation(line: 428, column: 8, scope: !2518)
!2547 = !DILocation(line: 428, column: 12, scope: !2518)
!2548 = !DILocation(line: 428, column: 22, scope: !2518)
!2549 = !DILocation(line: 428, column: 32, scope: !2518)
!2550 = !DILocation(line: 430, column: 38, scope: !2518)
!2551 = !DILocation(line: 430, column: 13, scope: !2518)
!2552 = !DILocation(line: 430, column: 11, scope: !2518)
!2553 = !DILocation(line: 431, column: 6, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 431, column: 6)
!2555 = !DILocation(line: 431, column: 15, scope: !2554)
!2556 = !DILocation(line: 431, column: 6, scope: !2518)
!2557 = !DILocation(line: 432, column: 34, scope: !2554)
!2558 = !DILocation(line: 432, column: 3, scope: !2554)
!2559 = !DILocation(line: 432, column: 9, scope: !2554)
!2560 = !DILocation(line: 432, column: 13, scope: !2554)
!2561 = !DILocation(line: 432, column: 23, scope: !2554)
!2562 = !DILocation(line: 432, column: 32, scope: !2554)
!2563 = !DILocation(line: 434, column: 35, scope: !2518)
!2564 = !DILocation(line: 434, column: 9, scope: !2518)
!2565 = !DILocation(line: 434, column: 7, scope: !2518)
!2566 = !DILocation(line: 435, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 435, column: 6)
!2568 = !DILocation(line: 435, column: 11, scope: !2567)
!2569 = !DILocation(line: 435, column: 6, scope: !2518)
!2570 = !DILocation(line: 436, column: 35, scope: !2567)
!2571 = !DILocation(line: 436, column: 3, scope: !2567)
!2572 = !DILocation(line: 436, column: 9, scope: !2567)
!2573 = !DILocation(line: 436, column: 13, scope: !2567)
!2574 = !DILocation(line: 436, column: 23, scope: !2567)
!2575 = !DILocation(line: 436, column: 33, scope: !2567)
!2576 = !DILocation(line: 438, column: 28, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 438, column: 6)
!2578 = !DILocation(line: 438, column: 6, scope: !2577)
!2579 = !DILocation(line: 438, column: 6, scope: !2518)
!2580 = !DILocation(line: 439, column: 3, scope: !2577)
!2581 = !DILocation(line: 439, column: 9, scope: !2577)
!2582 = !DILocation(line: 439, column: 13, scope: !2577)
!2583 = !DILocation(line: 439, column: 23, scope: !2577)
!2584 = !DILocation(line: 439, column: 29, scope: !2577)
!2585 = !DILocation(line: 440, column: 1, scope: !2518)
!2586 = distinct !DISubprogram(name: "nanddev_get_of_node", scope: !51, file: !51, line: 613, type: !2587, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!2095, !80}
!2589 = !DILocalVariable(name: "nand", arg: 1, scope: !2586, file: !51, line: 613, type: !80)
!2590 = !DILocation(line: 613, column: 75, scope: !2586)
!2591 = !DILocation(line: 615, column: 26, scope: !2586)
!2592 = !DILocation(line: 615, column: 32, scope: !2586)
!2593 = !DILocation(line: 615, column: 9, scope: !2586)
!2594 = !DILocation(line: 615, column: 2, scope: !2586)
!2595 = distinct !DISubprogram(name: "of_get_nand_ecc_engine_type", scope: !3, file: !3, line: 332, type: !2596, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!50, !2095}
!2598 = !DILocalVariable(name: "np", arg: 1, scope: !2595, file: !3, line: 332, type: !2095)
!2599 = !DILocation(line: 332, column: 49, scope: !2595)
!2600 = !DILocalVariable(name: "eng_np", scope: !2595, file: !3, line: 334, type: !2095)
!2601 = !DILocation(line: 334, column: 22, scope: !2595)
!2602 = !DILocation(line: 336, column: 28, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 336, column: 6)
!2604 = !DILocation(line: 336, column: 6, scope: !2603)
!2605 = !DILocation(line: 336, column: 6, scope: !2595)
!2606 = !DILocation(line: 337, column: 3, scope: !2603)
!2607 = !DILocation(line: 339, column: 28, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 339, column: 6)
!2609 = !DILocation(line: 339, column: 6, scope: !2608)
!2610 = !DILocation(line: 339, column: 6, scope: !2595)
!2611 = !DILocation(line: 340, column: 3, scope: !2608)
!2612 = !DILocation(line: 342, column: 28, scope: !2595)
!2613 = !DILocation(line: 342, column: 11, scope: !2595)
!2614 = !DILocation(line: 342, column: 9, scope: !2595)
!2615 = !DILocation(line: 343, column: 14, scope: !2595)
!2616 = !DILocation(line: 343, column: 2, scope: !2595)
!2617 = !DILocation(line: 345, column: 6, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 345, column: 6)
!2619 = !DILocation(line: 345, column: 6, scope: !2595)
!2620 = !DILocation(line: 346, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 346, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 345, column: 14)
!2623 = !DILocation(line: 346, column: 17, scope: !2621)
!2624 = !DILocation(line: 346, column: 14, scope: !2621)
!2625 = !DILocation(line: 346, column: 7, scope: !2622)
!2626 = !DILocation(line: 347, column: 4, scope: !2621)
!2627 = !DILocation(line: 349, column: 4, scope: !2621)
!2628 = !DILocation(line: 352, column: 2, scope: !2595)
!2629 = !DILocation(line: 353, column: 1, scope: !2595)
!2630 = distinct !DISubprogram(name: "of_get_nand_ecc_algo", scope: !3, file: !3, line: 384, type: !2631, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!63, !2095}
!2633 = !DILocalVariable(name: "np", arg: 1, scope: !2630, file: !3, line: 384, type: !2095)
!2634 = !DILocation(line: 384, column: 68, scope: !2630)
!2635 = !DILocalVariable(name: "ecc_algo", scope: !2630, file: !3, line: 386, type: !63)
!2636 = !DILocation(line: 386, column: 21, scope: !2630)
!2637 = !DILocalVariable(name: "pm", scope: !2630, file: !3, line: 387, type: !113)
!2638 = !DILocation(line: 387, column: 14, scope: !2630)
!2639 = !DILocalVariable(name: "err", scope: !2630, file: !3, line: 388, type: !117)
!2640 = !DILocation(line: 388, column: 6, scope: !2630)
!2641 = !DILocation(line: 390, column: 32, scope: !2630)
!2642 = !DILocation(line: 390, column: 8, scope: !2630)
!2643 = !DILocation(line: 390, column: 6, scope: !2630)
!2644 = !DILocation(line: 391, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 391, column: 6)
!2646 = !DILocation(line: 391, column: 6, scope: !2630)
!2647 = !DILocation(line: 392, column: 17, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 392, column: 3)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 391, column: 12)
!2650 = !DILocation(line: 392, column: 8, scope: !2648)
!2651 = !DILocation(line: 393, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 392, column: 3)
!2653 = !DILocation(line: 393, column: 17, scope: !2652)
!2654 = !DILocation(line: 392, column: 3, scope: !2648)
!2655 = !DILocation(line: 395, column: 20, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 395, column: 8)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 394, column: 20)
!2658 = !DILocation(line: 395, column: 39, scope: !2656)
!2659 = !DILocation(line: 395, column: 24, scope: !2656)
!2660 = !DILocation(line: 395, column: 9, scope: !2656)
!2661 = !DILocation(line: 395, column: 8, scope: !2657)
!2662 = !DILocation(line: 396, column: 12, scope: !2656)
!2663 = !DILocation(line: 396, column: 5, scope: !2656)
!2664 = !DILocation(line: 397, column: 3, scope: !2657)
!2665 = !DILocation(line: 394, column: 16, scope: !2652)
!2666 = !DILocation(line: 392, column: 3, scope: !2652)
!2667 = distinct !{!2667, !2654, !2668}
!2668 = !DILocation(line: 397, column: 3, scope: !2648)
!2669 = !DILocation(line: 398, column: 2, scope: !2649)
!2670 = !DILocation(line: 400, column: 2, scope: !2630)
!2671 = !DILocation(line: 401, column: 1, scope: !2630)
!2672 = distinct !DISubprogram(name: "of_get_nand_ecc_placement", scope: !3, file: !3, line: 360, type: !2673, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!58, !2095}
!2675 = !DILocalVariable(name: "np", arg: 1, scope: !2672, file: !3, line: 360, type: !2095)
!2676 = !DILocation(line: 360, column: 78, scope: !2672)
!2677 = !DILocalVariable(name: "placement", scope: !2672, file: !3, line: 362, type: !58)
!2678 = !DILocation(line: 362, column: 26, scope: !2672)
!2679 = !DILocalVariable(name: "pm", scope: !2672, file: !3, line: 363, type: !113)
!2680 = !DILocation(line: 363, column: 14, scope: !2672)
!2681 = !DILocalVariable(name: "err", scope: !2672, file: !3, line: 364, type: !117)
!2682 = !DILocation(line: 364, column: 6, scope: !2672)
!2683 = !DILocation(line: 366, column: 32, scope: !2672)
!2684 = !DILocation(line: 366, column: 8, scope: !2672)
!2685 = !DILocation(line: 366, column: 6, scope: !2672)
!2686 = !DILocation(line: 367, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 367, column: 6)
!2688 = !DILocation(line: 367, column: 6, scope: !2672)
!2689 = !DILocation(line: 368, column: 18, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 368, column: 3)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 367, column: 12)
!2692 = !DILocation(line: 368, column: 8, scope: !2690)
!2693 = !DILocation(line: 369, column: 8, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 368, column: 3)
!2695 = !DILocation(line: 369, column: 18, scope: !2694)
!2696 = !DILocation(line: 368, column: 3, scope: !2690)
!2697 = !DILocation(line: 370, column: 20, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 370, column: 8)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 369, column: 65)
!2700 = !DILocation(line: 370, column: 43, scope: !2698)
!2701 = !DILocation(line: 370, column: 24, scope: !2698)
!2702 = !DILocation(line: 370, column: 9, scope: !2698)
!2703 = !DILocation(line: 370, column: 8, scope: !2699)
!2704 = !DILocation(line: 371, column: 12, scope: !2698)
!2705 = !DILocation(line: 371, column: 5, scope: !2698)
!2706 = !DILocation(line: 372, column: 3, scope: !2699)
!2707 = !DILocation(line: 369, column: 61, scope: !2694)
!2708 = !DILocation(line: 368, column: 3, scope: !2694)
!2709 = distinct !{!2709, !2696, !2710}
!2710 = !DILocation(line: 372, column: 3, scope: !2690)
!2711 = !DILocation(line: 373, column: 2, scope: !2691)
!2712 = !DILocation(line: 375, column: 2, scope: !2672)
!2713 = !DILocation(line: 376, column: 1, scope: !2672)
!2714 = distinct !DISubprogram(name: "of_get_nand_ecc_strength", scope: !3, file: !3, line: 412, type: !2715, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!117, !2095}
!2717 = !DILocalVariable(name: "np", arg: 1, scope: !2714, file: !3, line: 412, type: !2095)
!2718 = !DILocation(line: 412, column: 57, scope: !2714)
!2719 = !DILocalVariable(name: "ret", scope: !2714, file: !3, line: 414, type: !117)
!2720 = !DILocation(line: 414, column: 6, scope: !2714)
!2721 = !DILocalVariable(name: "val", scope: !2714, file: !3, line: 415, type: !93)
!2722 = !DILocation(line: 415, column: 6, scope: !2714)
!2723 = !DILocation(line: 417, column: 29, scope: !2714)
!2724 = !DILocation(line: 417, column: 8, scope: !2714)
!2725 = !DILocation(line: 417, column: 6, scope: !2714)
!2726 = !DILocation(line: 418, column: 9, scope: !2714)
!2727 = !DILocation(line: 418, column: 15, scope: !2714)
!2728 = !DILocation(line: 418, column: 21, scope: !2714)
!2729 = !DILocation(line: 418, column: 2, scope: !2714)
!2730 = distinct !DISubprogram(name: "of_get_nand_ecc_step_size", scope: !3, file: !3, line: 403, type: !2715, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2731 = !DILocalVariable(name: "np", arg: 1, scope: !2730, file: !3, line: 403, type: !2095)
!2732 = !DILocation(line: 403, column: 58, scope: !2730)
!2733 = !DILocalVariable(name: "ret", scope: !2730, file: !3, line: 405, type: !117)
!2734 = !DILocation(line: 405, column: 6, scope: !2730)
!2735 = !DILocalVariable(name: "val", scope: !2730, file: !3, line: 406, type: !93)
!2736 = !DILocation(line: 406, column: 6, scope: !2730)
!2737 = !DILocation(line: 408, column: 29, scope: !2730)
!2738 = !DILocation(line: 408, column: 8, scope: !2730)
!2739 = !DILocation(line: 408, column: 6, scope: !2730)
!2740 = !DILocation(line: 409, column: 9, scope: !2730)
!2741 = !DILocation(line: 409, column: 15, scope: !2730)
!2742 = !DILocation(line: 409, column: 21, scope: !2730)
!2743 = !DILocation(line: 409, column: 2, scope: !2730)
!2744 = distinct !DISubprogram(name: "of_property_read_bool", scope: !2097, file: !2097, line: 1192, type: !2745, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!283, !2747, !113}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2749 = !DILocalVariable(name: "np", arg: 1, scope: !2744, file: !2097, line: 1192, type: !2747)
!2750 = !DILocation(line: 1192, column: 68, scope: !2744)
!2751 = !DILocalVariable(name: "propname", arg: 2, scope: !2744, file: !2097, line: 1193, type: !113)
!2752 = !DILocation(line: 1193, column: 19, scope: !2744)
!2753 = !DILocalVariable(name: "prop", scope: !2744, file: !2097, line: 1195, type: !2194)
!2754 = !DILocation(line: 1195, column: 19, scope: !2744)
!2755 = !DILocation(line: 1195, column: 43, scope: !2744)
!2756 = !DILocation(line: 1195, column: 47, scope: !2744)
!2757 = !DILocation(line: 1195, column: 26, scope: !2744)
!2758 = !DILocation(line: 1197, column: 9, scope: !2744)
!2759 = !DILocation(line: 1197, column: 2, scope: !2744)
!2760 = distinct !DISubprogram(name: "nand_ecc_is_strong_enough", scope: !3, file: !3, line: 460, type: !2761, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!283, !80}
!2763 = !DILocalVariable(name: "nand", arg: 1, scope: !2760, file: !3, line: 460, type: !80)
!2764 = !DILocation(line: 460, column: 52, scope: !2760)
!2765 = !DILocalVariable(name: "reqs", scope: !2760, file: !3, line: 462, type: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2768 = !DILocation(line: 462, column: 31, scope: !2760)
!2769 = !DILocation(line: 462, column: 67, scope: !2760)
!2770 = !DILocation(line: 462, column: 38, scope: !2760)
!2771 = !DILocalVariable(name: "conf", scope: !2760, file: !3, line: 463, type: !2766)
!2772 = !DILocation(line: 463, column: 31, scope: !2760)
!2773 = !DILocation(line: 463, column: 59, scope: !2760)
!2774 = !DILocation(line: 463, column: 38, scope: !2760)
!2775 = !DILocalVariable(name: "mtd", scope: !2760, file: !3, line: 464, type: !127)
!2776 = !DILocation(line: 464, column: 19, scope: !2760)
!2777 = !DILocation(line: 464, column: 40, scope: !2760)
!2778 = !DILocation(line: 464, column: 25, scope: !2760)
!2779 = !DILocalVariable(name: "corr", scope: !2760, file: !3, line: 465, type: !117)
!2780 = !DILocation(line: 465, column: 6, scope: !2760)
!2781 = !DILocalVariable(name: "ds_corr", scope: !2760, file: !3, line: 465, type: !117)
!2782 = !DILocation(line: 465, column: 12, scope: !2760)
!2783 = !DILocation(line: 467, column: 6, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 467, column: 6)
!2785 = !DILocation(line: 467, column: 12, scope: !2784)
!2786 = !DILocation(line: 467, column: 22, scope: !2784)
!2787 = !DILocation(line: 467, column: 27, scope: !2784)
!2788 = !DILocation(line: 467, column: 30, scope: !2784)
!2789 = !DILocation(line: 467, column: 36, scope: !2784)
!2790 = !DILocation(line: 467, column: 46, scope: !2784)
!2791 = !DILocation(line: 467, column: 6, scope: !2760)
!2792 = !DILocation(line: 469, column: 3, scope: !2784)
!2793 = !DILocation(line: 475, column: 10, scope: !2760)
!2794 = !DILocation(line: 475, column: 15, scope: !2760)
!2795 = !DILocation(line: 475, column: 27, scope: !2760)
!2796 = !DILocation(line: 475, column: 33, scope: !2760)
!2797 = !DILocation(line: 475, column: 25, scope: !2760)
!2798 = !DILocation(line: 475, column: 45, scope: !2760)
!2799 = !DILocation(line: 475, column: 51, scope: !2760)
!2800 = !DILocation(line: 475, column: 43, scope: !2760)
!2801 = !DILocation(line: 475, column: 7, scope: !2760)
!2802 = !DILocation(line: 476, column: 13, scope: !2760)
!2803 = !DILocation(line: 476, column: 18, scope: !2760)
!2804 = !DILocation(line: 476, column: 30, scope: !2760)
!2805 = !DILocation(line: 476, column: 36, scope: !2760)
!2806 = !DILocation(line: 476, column: 28, scope: !2760)
!2807 = !DILocation(line: 476, column: 48, scope: !2760)
!2808 = !DILocation(line: 476, column: 54, scope: !2760)
!2809 = !DILocation(line: 476, column: 46, scope: !2760)
!2810 = !DILocation(line: 476, column: 10, scope: !2760)
!2811 = !DILocation(line: 478, column: 9, scope: !2760)
!2812 = !DILocation(line: 478, column: 17, scope: !2760)
!2813 = !DILocation(line: 478, column: 14, scope: !2760)
!2814 = !DILocation(line: 478, column: 25, scope: !2760)
!2815 = !DILocation(line: 478, column: 28, scope: !2760)
!2816 = !DILocation(line: 478, column: 34, scope: !2760)
!2817 = !DILocation(line: 478, column: 46, scope: !2760)
!2818 = !DILocation(line: 478, column: 52, scope: !2760)
!2819 = !DILocation(line: 478, column: 43, scope: !2760)
!2820 = !DILocation(line: 0, scope: !2760)
!2821 = !DILocation(line: 478, column: 2, scope: !2760)
!2822 = !DILocation(line: 479, column: 1, scope: !2760)
!2823 = distinct !DISubprogram(name: "nanddev_get_ecc_requirements", scope: !51, file: !51, line: 542, type: !2824, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2766, !80}
!2826 = !DILocalVariable(name: "nand", arg: 1, scope: !2823, file: !51, line: 542, type: !80)
!2827 = !DILocation(line: 542, column: 50, scope: !2823)
!2828 = !DILocation(line: 544, column: 10, scope: !2823)
!2829 = !DILocation(line: 544, column: 16, scope: !2823)
!2830 = !DILocation(line: 544, column: 20, scope: !2823)
!2831 = !DILocation(line: 544, column: 2, scope: !2823)
!2832 = distinct !DISubprogram(name: "nanddev_get_ecc_conf", scope: !51, file: !51, line: 531, type: !2824, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2833 = !DILocalVariable(name: "nand", arg: 1, scope: !2832, file: !51, line: 531, type: !80)
!2834 = !DILocation(line: 531, column: 42, scope: !2832)
!2835 = !DILocation(line: 533, column: 10, scope: !2832)
!2836 = !DILocation(line: 533, column: 16, scope: !2832)
!2837 = !DILocation(line: 533, column: 20, scope: !2832)
!2838 = !DILocation(line: 533, column: 24, scope: !2832)
!2839 = !DILocation(line: 533, column: 2, scope: !2832)
!2840 = distinct !DISubprogram(name: "nanddev_to_mtd", scope: !51, file: !51, line: 363, type: !2841, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!127, !80}
!2843 = !DILocalVariable(name: "nand", arg: 1, scope: !2840, file: !51, line: 363, type: !80)
!2844 = !DILocation(line: 363, column: 67, scope: !2840)
!2845 = !DILocation(line: 365, column: 10, scope: !2840)
!2846 = !DILocation(line: 365, column: 16, scope: !2840)
!2847 = !DILocation(line: 365, column: 2, scope: !2840)
!2848 = distinct !DISubprogram(name: "nand_ooblayout_ecc_sp", scope: !3, file: !3, line: 156, type: !125, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2849 = !DILocalVariable(name: "mtd", arg: 1, scope: !2848, file: !3, line: 156, type: !127)
!2850 = !DILocation(line: 156, column: 51, scope: !2848)
!2851 = !DILocalVariable(name: "section", arg: 2, scope: !2848, file: !3, line: 156, type: !117)
!2852 = !DILocation(line: 156, column: 60, scope: !2848)
!2853 = !DILocalVariable(name: "oobregion", arg: 3, scope: !2848, file: !3, line: 157, type: !128)
!2854 = !DILocation(line: 157, column: 29, scope: !2848)
!2855 = !DILocalVariable(name: "nand", scope: !2848, file: !3, line: 159, type: !80)
!2856 = !DILocation(line: 159, column: 22, scope: !2848)
!2857 = !DILocation(line: 159, column: 44, scope: !2848)
!2858 = !DILocation(line: 159, column: 29, scope: !2848)
!2859 = !DILocalVariable(name: "total_ecc_bytes", scope: !2848, file: !3, line: 160, type: !7)
!2860 = !DILocation(line: 160, column: 15, scope: !2848)
!2861 = !DILocation(line: 160, column: 33, scope: !2848)
!2862 = !DILocation(line: 160, column: 39, scope: !2848)
!2863 = !DILocation(line: 160, column: 43, scope: !2848)
!2864 = !DILocation(line: 160, column: 47, scope: !2848)
!2865 = !DILocation(line: 162, column: 6, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 162, column: 6)
!2867 = !DILocation(line: 162, column: 14, scope: !2866)
!2868 = !DILocation(line: 162, column: 6, scope: !2848)
!2869 = !DILocation(line: 163, column: 3, scope: !2866)
!2870 = !DILocation(line: 165, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 165, column: 6)
!2872 = !DILocation(line: 165, column: 6, scope: !2848)
!2873 = !DILocation(line: 166, column: 3, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 165, column: 16)
!2875 = !DILocation(line: 166, column: 14, scope: !2874)
!2876 = !DILocation(line: 166, column: 21, scope: !2874)
!2877 = !DILocation(line: 167, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 167, column: 7)
!2879 = !DILocation(line: 167, column: 12, scope: !2878)
!2880 = !DILocation(line: 167, column: 20, scope: !2878)
!2881 = !DILocation(line: 167, column: 7, scope: !2874)
!2882 = !DILocation(line: 168, column: 4, scope: !2878)
!2883 = !DILocation(line: 168, column: 15, scope: !2878)
!2884 = !DILocation(line: 168, column: 22, scope: !2878)
!2885 = !DILocation(line: 170, column: 4, scope: !2878)
!2886 = !DILocation(line: 170, column: 15, scope: !2878)
!2887 = !DILocation(line: 170, column: 22, scope: !2878)
!2888 = !DILocation(line: 171, column: 2, scope: !2874)
!2889 = !DILocation(line: 172, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 172, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 171, column: 9)
!2892 = !DILocation(line: 172, column: 12, scope: !2890)
!2893 = !DILocation(line: 172, column: 20, scope: !2890)
!2894 = !DILocation(line: 172, column: 7, scope: !2891)
!2895 = !DILocation(line: 173, column: 4, scope: !2890)
!2896 = !DILocation(line: 175, column: 3, scope: !2891)
!2897 = !DILocation(line: 175, column: 14, scope: !2891)
!2898 = !DILocation(line: 175, column: 21, scope: !2891)
!2899 = !DILocation(line: 176, column: 23, scope: !2891)
!2900 = !DILocation(line: 176, column: 39, scope: !2891)
!2901 = !DILocation(line: 176, column: 3, scope: !2891)
!2902 = !DILocation(line: 176, column: 14, scope: !2891)
!2903 = !DILocation(line: 176, column: 21, scope: !2891)
!2904 = !DILocation(line: 179, column: 2, scope: !2848)
!2905 = !DILocation(line: 180, column: 1, scope: !2848)
!2906 = distinct !DISubprogram(name: "nand_ooblayout_free_sp", scope: !3, file: !3, line: 182, type: !125, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2907 = !DILocalVariable(name: "mtd", arg: 1, scope: !2906, file: !3, line: 182, type: !127)
!2908 = !DILocation(line: 182, column: 52, scope: !2906)
!2909 = !DILocalVariable(name: "section", arg: 2, scope: !2906, file: !3, line: 182, type: !117)
!2910 = !DILocation(line: 182, column: 61, scope: !2906)
!2911 = !DILocalVariable(name: "oobregion", arg: 3, scope: !2906, file: !3, line: 183, type: !128)
!2912 = !DILocation(line: 183, column: 30, scope: !2906)
!2913 = !DILocation(line: 185, column: 6, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 185, column: 6)
!2915 = !DILocation(line: 185, column: 14, scope: !2914)
!2916 = !DILocation(line: 185, column: 6, scope: !2906)
!2917 = !DILocation(line: 186, column: 3, scope: !2914)
!2918 = !DILocation(line: 188, column: 6, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 188, column: 6)
!2920 = !DILocation(line: 188, column: 11, scope: !2919)
!2921 = !DILocation(line: 188, column: 19, scope: !2919)
!2922 = !DILocation(line: 188, column: 6, scope: !2906)
!2923 = !DILocation(line: 189, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 189, column: 7)
!2925 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 188, column: 26)
!2926 = !DILocation(line: 189, column: 7, scope: !2925)
!2927 = !DILocation(line: 190, column: 4, scope: !2924)
!2928 = !DILocation(line: 192, column: 3, scope: !2925)
!2929 = !DILocation(line: 192, column: 14, scope: !2925)
!2930 = !DILocation(line: 192, column: 21, scope: !2925)
!2931 = !DILocation(line: 193, column: 3, scope: !2925)
!2932 = !DILocation(line: 193, column: 14, scope: !2925)
!2933 = !DILocation(line: 193, column: 21, scope: !2925)
!2934 = !DILocation(line: 194, column: 2, scope: !2925)
!2935 = !DILocation(line: 195, column: 3, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 194, column: 9)
!2937 = !DILocation(line: 195, column: 14, scope: !2936)
!2938 = !DILocation(line: 195, column: 21, scope: !2936)
!2939 = !DILocation(line: 196, column: 8, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 196, column: 7)
!2941 = !DILocation(line: 196, column: 7, scope: !2936)
!2942 = !DILocation(line: 197, column: 4, scope: !2940)
!2943 = !DILocation(line: 197, column: 15, scope: !2940)
!2944 = !DILocation(line: 197, column: 22, scope: !2940)
!2945 = !DILocation(line: 199, column: 4, scope: !2940)
!2946 = !DILocation(line: 199, column: 15, scope: !2940)
!2947 = !DILocation(line: 199, column: 22, scope: !2940)
!2948 = !DILocation(line: 202, column: 2, scope: !2906)
!2949 = !DILocation(line: 203, column: 1, scope: !2906)
!2950 = distinct !DISubprogram(name: "mtd_to_nanddev", scope: !51, file: !51, line: 352, type: !2951, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!80, !127}
!2953 = !DILocalVariable(name: "mtd", arg: 1, scope: !2950, file: !51, line: 352, type: !127)
!2954 = !DILocation(line: 352, column: 67, scope: !2950)
!2955 = !DILocalVariable(name: "__mptr", scope: !2956, file: !51, line: 354, type: !79)
!2956 = distinct !DILexicalBlock(scope: !2950, file: !51, line: 354, column: 9)
!2957 = !DILocation(line: 354, column: 9, scope: !2956)
!2958 = !DILocation(line: 354, column: 9, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !51, line: 354, column: 9)
!2960 = !DILocation(line: 354, column: 2, scope: !2950)
!2961 = distinct !DISubprogram(name: "nand_ooblayout_ecc_lp", scope: !3, file: !3, line: 216, type: !125, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2962 = !DILocalVariable(name: "mtd", arg: 1, scope: !2961, file: !3, line: 216, type: !127)
!2963 = !DILocation(line: 216, column: 51, scope: !2961)
!2964 = !DILocalVariable(name: "section", arg: 2, scope: !2961, file: !3, line: 216, type: !117)
!2965 = !DILocation(line: 216, column: 60, scope: !2961)
!2966 = !DILocalVariable(name: "oobregion", arg: 3, scope: !2961, file: !3, line: 217, type: !128)
!2967 = !DILocation(line: 217, column: 29, scope: !2961)
!2968 = !DILocalVariable(name: "nand", scope: !2961, file: !3, line: 219, type: !80)
!2969 = !DILocation(line: 219, column: 22, scope: !2961)
!2970 = !DILocation(line: 219, column: 44, scope: !2961)
!2971 = !DILocation(line: 219, column: 29, scope: !2961)
!2972 = !DILocalVariable(name: "total_ecc_bytes", scope: !2961, file: !3, line: 220, type: !7)
!2973 = !DILocation(line: 220, column: 15, scope: !2961)
!2974 = !DILocation(line: 220, column: 33, scope: !2961)
!2975 = !DILocation(line: 220, column: 39, scope: !2961)
!2976 = !DILocation(line: 220, column: 43, scope: !2961)
!2977 = !DILocation(line: 220, column: 47, scope: !2961)
!2978 = !DILocation(line: 222, column: 6, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 222, column: 6)
!2980 = !DILocation(line: 222, column: 14, scope: !2979)
!2981 = !DILocation(line: 222, column: 18, scope: !2979)
!2982 = !DILocation(line: 222, column: 6, scope: !2961)
!2983 = !DILocation(line: 223, column: 3, scope: !2979)
!2984 = !DILocation(line: 225, column: 22, scope: !2961)
!2985 = !DILocation(line: 225, column: 2, scope: !2961)
!2986 = !DILocation(line: 225, column: 13, scope: !2961)
!2987 = !DILocation(line: 225, column: 20, scope: !2961)
!2988 = !DILocation(line: 226, column: 22, scope: !2961)
!2989 = !DILocation(line: 226, column: 27, scope: !2961)
!2990 = !DILocation(line: 226, column: 37, scope: !2961)
!2991 = !DILocation(line: 226, column: 48, scope: !2961)
!2992 = !DILocation(line: 226, column: 35, scope: !2961)
!2993 = !DILocation(line: 226, column: 2, scope: !2961)
!2994 = !DILocation(line: 226, column: 13, scope: !2961)
!2995 = !DILocation(line: 226, column: 20, scope: !2961)
!2996 = !DILocation(line: 228, column: 2, scope: !2961)
!2997 = !DILocation(line: 229, column: 1, scope: !2961)
!2998 = distinct !DISubprogram(name: "nand_ooblayout_free_lp", scope: !3, file: !3, line: 231, type: !125, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!2999 = !DILocalVariable(name: "mtd", arg: 1, scope: !2998, file: !3, line: 231, type: !127)
!3000 = !DILocation(line: 231, column: 52, scope: !2998)
!3001 = !DILocalVariable(name: "section", arg: 2, scope: !2998, file: !3, line: 231, type: !117)
!3002 = !DILocation(line: 231, column: 61, scope: !2998)
!3003 = !DILocalVariable(name: "oobregion", arg: 3, scope: !2998, file: !3, line: 232, type: !128)
!3004 = !DILocation(line: 232, column: 30, scope: !2998)
!3005 = !DILocalVariable(name: "nand", scope: !2998, file: !3, line: 234, type: !80)
!3006 = !DILocation(line: 234, column: 22, scope: !2998)
!3007 = !DILocation(line: 234, column: 44, scope: !2998)
!3008 = !DILocation(line: 234, column: 29, scope: !2998)
!3009 = !DILocalVariable(name: "total_ecc_bytes", scope: !2998, file: !3, line: 235, type: !7)
!3010 = !DILocation(line: 235, column: 15, scope: !2998)
!3011 = !DILocation(line: 235, column: 33, scope: !2998)
!3012 = !DILocation(line: 235, column: 39, scope: !2998)
!3013 = !DILocation(line: 235, column: 43, scope: !2998)
!3014 = !DILocation(line: 235, column: 47, scope: !2998)
!3015 = !DILocation(line: 237, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 237, column: 6)
!3017 = !DILocation(line: 237, column: 6, scope: !2998)
!3018 = !DILocation(line: 238, column: 3, scope: !3016)
!3019 = !DILocation(line: 240, column: 22, scope: !2998)
!3020 = !DILocation(line: 240, column: 27, scope: !2998)
!3021 = !DILocation(line: 240, column: 37, scope: !2998)
!3022 = !DILocation(line: 240, column: 35, scope: !2998)
!3023 = !DILocation(line: 240, column: 53, scope: !2998)
!3024 = !DILocation(line: 240, column: 2, scope: !2998)
!3025 = !DILocation(line: 240, column: 13, scope: !2998)
!3026 = !DILocation(line: 240, column: 20, scope: !2998)
!3027 = !DILocation(line: 241, column: 2, scope: !2998)
!3028 = !DILocation(line: 241, column: 13, scope: !2998)
!3029 = !DILocation(line: 241, column: 20, scope: !2998)
!3030 = !DILocation(line: 243, column: 2, scope: !2998)
!3031 = !DILocation(line: 244, column: 1, scope: !2998)
!3032 = distinct !DISubprogram(name: "nand_ooblayout_ecc_lp_hamming", scope: !3, file: !3, line: 261, type: !125, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3033 = !DILocalVariable(name: "mtd", arg: 1, scope: !3032, file: !3, line: 261, type: !127)
!3034 = !DILocation(line: 261, column: 59, scope: !3032)
!3035 = !DILocalVariable(name: "section", arg: 2, scope: !3032, file: !3, line: 261, type: !117)
!3036 = !DILocation(line: 261, column: 68, scope: !3032)
!3037 = !DILocalVariable(name: "oobregion", arg: 3, scope: !3032, file: !3, line: 262, type: !128)
!3038 = !DILocation(line: 262, column: 30, scope: !3032)
!3039 = !DILocalVariable(name: "nand", scope: !3032, file: !3, line: 264, type: !80)
!3040 = !DILocation(line: 264, column: 22, scope: !3032)
!3041 = !DILocation(line: 264, column: 44, scope: !3032)
!3042 = !DILocation(line: 264, column: 29, scope: !3032)
!3043 = !DILocalVariable(name: "total_ecc_bytes", scope: !3032, file: !3, line: 265, type: !7)
!3044 = !DILocation(line: 265, column: 15, scope: !3032)
!3045 = !DILocation(line: 265, column: 33, scope: !3032)
!3046 = !DILocation(line: 265, column: 39, scope: !3032)
!3047 = !DILocation(line: 265, column: 43, scope: !3032)
!3048 = !DILocation(line: 265, column: 47, scope: !3032)
!3049 = !DILocation(line: 267, column: 6, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 267, column: 6)
!3051 = !DILocation(line: 267, column: 6, scope: !3032)
!3052 = !DILocation(line: 268, column: 3, scope: !3050)
!3053 = !DILocation(line: 270, column: 10, scope: !3032)
!3054 = !DILocation(line: 270, column: 15, scope: !3032)
!3055 = !DILocation(line: 270, column: 2, scope: !3032)
!3056 = !DILocation(line: 272, column: 3, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 270, column: 24)
!3058 = !DILocation(line: 272, column: 14, scope: !3057)
!3059 = !DILocation(line: 272, column: 21, scope: !3057)
!3060 = !DILocation(line: 273, column: 3, scope: !3057)
!3061 = !DILocation(line: 275, column: 3, scope: !3057)
!3062 = !DILocation(line: 275, column: 14, scope: !3057)
!3063 = !DILocation(line: 275, column: 21, scope: !3057)
!3064 = !DILocation(line: 276, column: 3, scope: !3057)
!3065 = !DILocation(line: 278, column: 3, scope: !3057)
!3066 = !DILocation(line: 281, column: 22, scope: !3032)
!3067 = !DILocation(line: 281, column: 2, scope: !3032)
!3068 = !DILocation(line: 281, column: 13, scope: !3032)
!3069 = !DILocation(line: 281, column: 20, scope: !3032)
!3070 = !DILocation(line: 282, column: 6, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 282, column: 6)
!3072 = !DILocation(line: 282, column: 17, scope: !3071)
!3073 = !DILocation(line: 282, column: 26, scope: !3071)
!3074 = !DILocation(line: 282, column: 37, scope: !3071)
!3075 = !DILocation(line: 282, column: 24, scope: !3071)
!3076 = !DILocation(line: 282, column: 46, scope: !3071)
!3077 = !DILocation(line: 282, column: 51, scope: !3071)
!3078 = !DILocation(line: 282, column: 44, scope: !3071)
!3079 = !DILocation(line: 282, column: 6, scope: !3032)
!3080 = !DILocation(line: 283, column: 3, scope: !3071)
!3081 = !DILocation(line: 285, column: 2, scope: !3032)
!3082 = !DILocation(line: 286, column: 1, scope: !3032)
!3083 = distinct !DISubprogram(name: "nand_ooblayout_free_lp_hamming", scope: !3, file: !3, line: 288, type: !125, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3084 = !DILocalVariable(name: "mtd", arg: 1, scope: !3083, file: !3, line: 288, type: !127)
!3085 = !DILocation(line: 288, column: 60, scope: !3083)
!3086 = !DILocalVariable(name: "section", arg: 2, scope: !3083, file: !3, line: 288, type: !117)
!3087 = !DILocation(line: 288, column: 69, scope: !3083)
!3088 = !DILocalVariable(name: "oobregion", arg: 3, scope: !3083, file: !3, line: 289, type: !128)
!3089 = !DILocation(line: 289, column: 31, scope: !3083)
!3090 = !DILocalVariable(name: "nand", scope: !3083, file: !3, line: 291, type: !80)
!3091 = !DILocation(line: 291, column: 22, scope: !3083)
!3092 = !DILocation(line: 291, column: 44, scope: !3083)
!3093 = !DILocation(line: 291, column: 29, scope: !3083)
!3094 = !DILocalVariable(name: "total_ecc_bytes", scope: !3083, file: !3, line: 292, type: !7)
!3095 = !DILocation(line: 292, column: 15, scope: !3083)
!3096 = !DILocation(line: 292, column: 33, scope: !3083)
!3097 = !DILocation(line: 292, column: 39, scope: !3083)
!3098 = !DILocation(line: 292, column: 43, scope: !3083)
!3099 = !DILocation(line: 292, column: 47, scope: !3083)
!3100 = !DILocalVariable(name: "ecc_offset", scope: !3083, file: !3, line: 293, type: !117)
!3101 = !DILocation(line: 293, column: 6, scope: !3083)
!3102 = !DILocation(line: 295, column: 6, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 295, column: 6)
!3104 = !DILocation(line: 295, column: 14, scope: !3103)
!3105 = !DILocation(line: 295, column: 18, scope: !3103)
!3106 = !DILocation(line: 295, column: 21, scope: !3103)
!3107 = !DILocation(line: 295, column: 29, scope: !3103)
!3108 = !DILocation(line: 295, column: 6, scope: !3083)
!3109 = !DILocation(line: 296, column: 3, scope: !3103)
!3110 = !DILocation(line: 298, column: 10, scope: !3083)
!3111 = !DILocation(line: 298, column: 15, scope: !3083)
!3112 = !DILocation(line: 298, column: 2, scope: !3083)
!3113 = !DILocation(line: 300, column: 14, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 298, column: 24)
!3115 = !DILocation(line: 301, column: 3, scope: !3114)
!3116 = !DILocation(line: 303, column: 14, scope: !3114)
!3117 = !DILocation(line: 304, column: 3, scope: !3114)
!3118 = !DILocation(line: 306, column: 3, scope: !3114)
!3119 = !DILocation(line: 309, column: 6, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 309, column: 6)
!3121 = !DILocation(line: 309, column: 14, scope: !3120)
!3122 = !DILocation(line: 309, column: 6, scope: !3083)
!3123 = !DILocation(line: 310, column: 3, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 309, column: 20)
!3125 = !DILocation(line: 310, column: 14, scope: !3124)
!3126 = !DILocation(line: 310, column: 21, scope: !3124)
!3127 = !DILocation(line: 311, column: 23, scope: !3124)
!3128 = !DILocation(line: 311, column: 34, scope: !3124)
!3129 = !DILocation(line: 311, column: 3, scope: !3124)
!3130 = !DILocation(line: 311, column: 14, scope: !3124)
!3131 = !DILocation(line: 311, column: 21, scope: !3124)
!3132 = !DILocation(line: 312, column: 2, scope: !3124)
!3133 = !DILocation(line: 313, column: 23, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 312, column: 9)
!3135 = !DILocation(line: 313, column: 36, scope: !3134)
!3136 = !DILocation(line: 313, column: 34, scope: !3134)
!3137 = !DILocation(line: 313, column: 3, scope: !3134)
!3138 = !DILocation(line: 313, column: 14, scope: !3134)
!3139 = !DILocation(line: 313, column: 21, scope: !3134)
!3140 = !DILocation(line: 314, column: 23, scope: !3134)
!3141 = !DILocation(line: 314, column: 28, scope: !3134)
!3142 = !DILocation(line: 314, column: 38, scope: !3134)
!3143 = !DILocation(line: 314, column: 49, scope: !3134)
!3144 = !DILocation(line: 314, column: 36, scope: !3134)
!3145 = !DILocation(line: 314, column: 3, scope: !3134)
!3146 = !DILocation(line: 314, column: 14, scope: !3134)
!3147 = !DILocation(line: 314, column: 21, scope: !3134)
!3148 = !DILocation(line: 317, column: 2, scope: !3083)
!3149 = !DILocation(line: 318, column: 1, scope: !3083)
!3150 = distinct !DISubprogram(name: "mtd_get_of_node", scope: !85, file: !85, line: 463, type: !3151, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!2095, !127}
!3153 = !DILocalVariable(name: "mtd", arg: 1, scope: !3150, file: !85, line: 463, type: !127)
!3154 = !DILocation(line: 463, column: 68, scope: !3150)
!3155 = !DILocation(line: 465, column: 22, scope: !3150)
!3156 = !DILocation(line: 465, column: 27, scope: !3150)
!3157 = !DILocation(line: 465, column: 9, scope: !3150)
!3158 = !DILocation(line: 465, column: 2, scope: !3150)
!3159 = distinct !DISubprogram(name: "dev_of_node", scope: !30, file: !30, line: 754, type: !3160, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!2095, !1787}
!3162 = !DILocalVariable(name: "dev", arg: 1, scope: !3159, file: !30, line: 754, type: !1787)
!3163 = !DILocation(line: 754, column: 62, scope: !3159)
!3164 = !DILocation(line: 756, column: 33, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3159, file: !30, line: 756, column: 6)
!3166 = !DILocation(line: 756, column: 6, scope: !3159)
!3167 = !DILocation(line: 757, column: 3, scope: !3165)
!3168 = !DILocation(line: 758, column: 9, scope: !3159)
!3169 = !DILocation(line: 758, column: 14, scope: !3159)
!3170 = !DILocation(line: 758, column: 2, scope: !3159)
!3171 = !DILocation(line: 759, column: 1, scope: !3159)
!3172 = distinct !DISubprogram(name: "of_node_put", scope: !2097, file: !2097, line: 129, type: !3173, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !2095}
!3175 = !DILocalVariable(name: "node", arg: 1, scope: !3172, file: !2097, line: 129, type: !2095)
!3176 = !DILocation(line: 129, column: 52, scope: !3172)
!3177 = !DILocation(line: 129, column: 60, scope: !3172)
!3178 = distinct !DISubprogram(name: "of_property_read_u32", scope: !2097, file: !2097, line: 1214, type: !3179, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!117, !2747, !113, !829}
!3181 = !DILocalVariable(name: "np", arg: 1, scope: !3178, file: !2097, line: 1214, type: !2747)
!3182 = !DILocation(line: 1214, column: 66, scope: !3178)
!3183 = !DILocalVariable(name: "propname", arg: 2, scope: !3178, file: !2097, line: 1215, type: !113)
!3184 = !DILocation(line: 1215, column: 24, scope: !3178)
!3185 = !DILocalVariable(name: "out_value", arg: 3, scope: !3178, file: !2097, line: 1216, type: !829)
!3186 = !DILocation(line: 1216, column: 17, scope: !3178)
!3187 = !DILocation(line: 1218, column: 36, scope: !3178)
!3188 = !DILocation(line: 1218, column: 40, scope: !3178)
!3189 = !DILocation(line: 1218, column: 50, scope: !3178)
!3190 = !DILocation(line: 1218, column: 9, scope: !3178)
!3191 = !DILocation(line: 1218, column: 2, scope: !3178)
!3192 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !2097, file: !2097, line: 494, type: !3193, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !346)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!117, !2747, !113, !829, !186}
!3195 = !DILocalVariable(name: "np", arg: 1, scope: !3192, file: !2097, line: 494, type: !2747)
!3196 = !DILocation(line: 494, column: 72, scope: !3192)
!3197 = !DILocalVariable(name: "propname", arg: 2, scope: !3192, file: !2097, line: 495, type: !113)
!3198 = !DILocation(line: 495, column: 23, scope: !3192)
!3199 = !DILocalVariable(name: "out_values", arg: 3, scope: !3192, file: !2097, line: 496, type: !829)
!3200 = !DILocation(line: 496, column: 16, scope: !3192)
!3201 = !DILocalVariable(name: "sz", arg: 4, scope: !3192, file: !2097, line: 496, type: !186)
!3202 = !DILocation(line: 496, column: 35, scope: !3192)
!3203 = !DILocalVariable(name: "ret", scope: !3192, file: !2097, line: 498, type: !117)
!3204 = !DILocation(line: 498, column: 6, scope: !3192)
!3205 = !DILocation(line: 498, column: 48, scope: !3192)
!3206 = !DILocation(line: 498, column: 52, scope: !3192)
!3207 = !DILocation(line: 498, column: 62, scope: !3192)
!3208 = !DILocation(line: 499, column: 13, scope: !3192)
!3209 = !DILocation(line: 498, column: 12, scope: !3192)
!3210 = !DILocation(line: 500, column: 6, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3192, file: !2097, line: 500, column: 6)
!3212 = !DILocation(line: 500, column: 10, scope: !3211)
!3213 = !DILocation(line: 500, column: 6, scope: !3192)
!3214 = !DILocation(line: 501, column: 3, scope: !3211)
!3215 = !DILocation(line: 503, column: 10, scope: !3211)
!3216 = !DILocation(line: 503, column: 3, scope: !3211)
!3217 = !DILocation(line: 504, column: 1, scope: !3192)
