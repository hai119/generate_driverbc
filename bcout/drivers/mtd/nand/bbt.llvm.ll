; ModuleID = '../bcout/drivers/mtd/nand/bbt.llvm.bc'
source_filename = "drivers/mtd/nand/bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, %struct.nand_ops* }
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
%struct.vdso_image = type opaque
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

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_bbt_init(%struct.nand_device* %nand) #0 !dbg !96 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !2392, metadata !DIExpression()), !dbg !2397
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !2399, metadata !DIExpression()), !dbg !2400
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %bits_per_block = alloca i32, align 4
  %nblocks = alloca i32, align 4
  %nwords = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.declare(metadata i32* %bits_per_block, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i32 5, i32* %x.addr.i, align 4
  %0 = load i32, i32* %x.addr.i, align 4, !dbg !2405
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #6, !dbg !2406, !srcloc !2407
  store i32 %1, i32* %r.i, align 4, !dbg !2406
  %2 = load i32, i32* %r.i, align 4, !dbg !2408
  %add.i = add i32 %2, 1, !dbg !2409
  store i32 %add.i, i32* %bits_per_block, align 4, !dbg !2404
  call void @llvm.dbg.declare(metadata i32* %nblocks, metadata !2410, metadata !DIExpression()), !dbg !2411
  %3 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2412
  %call1 = call i32 @nanddev_neraseblocks(%struct.nand_device* %3) #7, !dbg !2413
  store i32 %call1, i32* %nblocks, align 4, !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %nwords, metadata !2414, metadata !DIExpression()), !dbg !2415
  %4 = load i32, i32* %nblocks, align 4, !dbg !2416
  %5 = load i32, i32* %bits_per_block, align 4, !dbg !2416
  %mul = mul i32 %4, %5, !dbg !2416
  %add = add i32 %mul, 64, !dbg !2416
  %sub = sub i32 %add, 1, !dbg !2416
  %div = udiv i32 %sub, 64, !dbg !2416
  store i32 %div, i32* %nwords, align 4, !dbg !2415
  %6 = load i32, i32* %nwords, align 4, !dbg !2417
  %conv = zext i32 %6 to i64, !dbg !2417
  %call2 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #7, !dbg !2418
  %7 = bitcast i8* %call2 to i64*, !dbg !2418
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2419
  %bbt = getelementptr inbounds %struct.nand_device, %struct.nand_device* %8, i32 0, i32 4, !dbg !2420
  %cache = getelementptr inbounds %struct.nand_bbt, %struct.nand_bbt* %bbt, i32 0, i32 0, !dbg !2421
  store i64* %7, i64** %cache, align 8, !dbg !2422
  %9 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2423
  %bbt3 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %9, i32 0, i32 4, !dbg !2425
  %cache4 = getelementptr inbounds %struct.nand_bbt, %struct.nand_bbt* %bbt3, i32 0, i32 0, !dbg !2426
  %10 = load i64*, i64** %cache4, align 8, !dbg !2426
  %tobool = icmp ne i64* %10, null, !dbg !2423
  br i1 %tobool, label %if.end, label %if.then, !dbg !2427

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2428
  br label %return, !dbg !2428

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2429
  br label %return, !dbg !2429

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2430
  ret i32 %11, !dbg !2430
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_neraseblocks(%struct.nand_device* %nand) #0 !dbg !2431 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2438
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !2439
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 8, !dbg !2440
  %1 = load i32, i32* %ntargets, align 8, !dbg !2440
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2441
  %memorg1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %2, i32 0, i32 1, !dbg !2442
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg1, i32 0, i32 7, !dbg !2443
  %3 = load i32, i32* %luns_per_target, align 4, !dbg !2443
  %mul = mul i32 %1, %3, !dbg !2444
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2445
  %memorg2 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 1, !dbg !2446
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg2, i32 0, i32 4, !dbg !2447
  %5 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !2447
  %mul3 = mul i32 %mul, %5, !dbg !2448
  ret i32 %mul3, !dbg !2449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2450 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2457, metadata !DIExpression()), !dbg !2458
  %0 = load i64, i64* %n.addr, align 8, !dbg !2459
  %1 = load i64, i64* %size.addr, align 8, !dbg !2460
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2461
  %or = or i32 %2, 256, !dbg !2462
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !2463
  ret i8* %call, !dbg !2464
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nanddev_bbt_cleanup(%struct.nand_device* %nand) #0 !dbg !2465 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2466, metadata !DIExpression()), !dbg !2467
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2468
  %bbt = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 4, !dbg !2469
  %cache = getelementptr inbounds %struct.nand_bbt, %struct.nand_bbt* %bbt, i32 0, i32 0, !dbg !2470
  %1 = load i64*, i64** %cache, align 8, !dbg !2470
  %2 = bitcast i64* %1 to i8*, !dbg !2468
  call void @kfree(i8* %2) #7, !dbg !2471
  ret void, !dbg !2472
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_bbt_update(%struct.nand_device* %nand) #0 !dbg !2473 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  ret i32 0, !dbg !2476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_bbt_get_block_status(%struct.nand_device* %nand, i32 %entry1) #0 !dbg !2477 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !2392, metadata !DIExpression()), !dbg !2480
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !2399, metadata !DIExpression()), !dbg !2482
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %entry.addr = alloca i32, align 4
  %bits_per_block = alloca i32, align 4
  %pos = alloca i64*, align 8
  %offs = alloca i32, align 4
  %status = alloca i64, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  store i32 %entry1, i32* %entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %entry.addr, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.declare(metadata i32* %bits_per_block, metadata !2487, metadata !DIExpression()), !dbg !2488
  store i32 5, i32* %x.addr.i, align 4
  %0 = load i32, i32* %x.addr.i, align 4, !dbg !2489
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #6, !dbg !2490, !srcloc !2407
  store i32 %1, i32* %r.i, align 4, !dbg !2490
  %2 = load i32, i32* %r.i, align 4, !dbg !2491
  %add.i = add i32 %2, 1, !dbg !2492
  store i32 %add.i, i32* %bits_per_block, align 4, !dbg !2488
  call void @llvm.dbg.declare(metadata i64** %pos, metadata !2493, metadata !DIExpression()), !dbg !2494
  %3 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2495
  %bbt = getelementptr inbounds %struct.nand_device, %struct.nand_device* %3, i32 0, i32 4, !dbg !2496
  %cache = getelementptr inbounds %struct.nand_bbt, %struct.nand_bbt* %bbt, i32 0, i32 0, !dbg !2497
  %4 = load i64*, i64** %cache, align 8, !dbg !2497
  %5 = load i32, i32* %entry.addr, align 4, !dbg !2498
  %6 = load i32, i32* %bits_per_block, align 4, !dbg !2499
  %mul = mul i32 %5, %6, !dbg !2500
  %div = udiv i32 %mul, 64, !dbg !2501
  %idx.ext = zext i32 %div to i64, !dbg !2502
  %add.ptr = getelementptr i64, i64* %4, i64 %idx.ext, !dbg !2502
  store i64* %add.ptr, i64** %pos, align 8, !dbg !2494
  call void @llvm.dbg.declare(metadata i32* %offs, metadata !2503, metadata !DIExpression()), !dbg !2504
  %7 = load i32, i32* %entry.addr, align 4, !dbg !2505
  %8 = load i32, i32* %bits_per_block, align 4, !dbg !2506
  %mul2 = mul i32 %7, %8, !dbg !2507
  %rem = urem i32 %mul2, 64, !dbg !2508
  store i32 %rem, i32* %offs, align 4, !dbg !2504
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2509, metadata !DIExpression()), !dbg !2510
  %9 = load i32, i32* %entry.addr, align 4, !dbg !2511
  %10 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2513
  %call3 = call i32 @nanddev_neraseblocks(%struct.nand_device* %10) #7, !dbg !2514
  %cmp = icmp uge i32 %9, %call3, !dbg !2515
  br i1 %cmp, label %if.then, label %if.end, !dbg !2516

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !2517
  br label %return, !dbg !2517

if.end:                                           ; preds = %entry
  %11 = load i64*, i64** %pos, align 8, !dbg !2518
  %arrayidx = getelementptr i64, i64* %11, i64 0, !dbg !2518
  %12 = load i64, i64* %arrayidx, align 8, !dbg !2518
  %13 = load i32, i32* %offs, align 4, !dbg !2519
  %sh_prom = zext i32 %13 to i64, !dbg !2520
  %shr = lshr i64 %12, %sh_prom, !dbg !2520
  store i64 %shr, i64* %status, align 8, !dbg !2521
  %14 = load i32, i32* %bits_per_block, align 4, !dbg !2522
  %15 = load i32, i32* %offs, align 4, !dbg !2524
  %add = add i32 %14, %15, !dbg !2525
  %cmp4 = icmp ugt i32 %add, 64, !dbg !2526
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !2527

if.then5:                                         ; preds = %if.end
  %16 = load i64*, i64** %pos, align 8, !dbg !2528
  %arrayidx6 = getelementptr i64, i64* %16, i64 1, !dbg !2528
  %17 = load i64, i64* %arrayidx6, align 8, !dbg !2528
  %18 = load i32, i32* %offs, align 4, !dbg !2529
  %sub = sub i32 64, %18, !dbg !2530
  %sh_prom7 = zext i32 %sub to i64, !dbg !2531
  %shl = shl i64 %17, %sh_prom7, !dbg !2531
  %19 = load i64, i64* %status, align 8, !dbg !2532
  %or = or i64 %19, %shl, !dbg !2532
  store i64 %or, i64* %status, align 8, !dbg !2532
  br label %if.end8, !dbg !2533

if.end8:                                          ; preds = %if.then5, %if.end
  %20 = load i64, i64* %status, align 8, !dbg !2534
  %21 = load i32, i32* %bits_per_block, align 4, !dbg !2535
  %sub9 = sub i32 %21, 1, !dbg !2535
  %sub10 = sub i32 63, %sub9, !dbg !2535
  %sh_prom11 = zext i32 %sub10 to i64, !dbg !2535
  %shr12 = lshr i64 -1, %sh_prom11, !dbg !2535
  %and = and i64 -1, %shr12, !dbg !2535
  %add13 = add i64 0, %and, !dbg !2535
  %and14 = and i64 %20, %add13, !dbg !2536
  %conv = trunc i64 %and14 to i32, !dbg !2534
  store i32 %conv, i32* %retval, align 4, !dbg !2537
  br label %return, !dbg !2537

return:                                           ; preds = %if.end8, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !2538
  ret i32 %22, !dbg !2538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_bbt_set_block_status(%struct.nand_device* %nand, i32 %entry1, i32 %status) #0 !dbg !2539 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !2392, metadata !DIExpression()), !dbg !2542
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !2399, metadata !DIExpression()), !dbg !2544
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %entry.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %bits_per_block = alloca i32, align 4
  %pos = alloca i64*, align 8
  %offs = alloca i32, align 4
  %val = alloca i64, align 8
  %rbits = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2545, metadata !DIExpression()), !dbg !2546
  store i32 %entry1, i32* %entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %entry.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i32* %bits_per_block, metadata !2551, metadata !DIExpression()), !dbg !2552
  store i32 5, i32* %x.addr.i, align 4
  %0 = load i32, i32* %x.addr.i, align 4, !dbg !2553
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #6, !dbg !2554, !srcloc !2407
  store i32 %1, i32* %r.i, align 4, !dbg !2554
  %2 = load i32, i32* %r.i, align 4, !dbg !2555
  %add.i = add i32 %2, 1, !dbg !2556
  store i32 %add.i, i32* %bits_per_block, align 4, !dbg !2552
  call void @llvm.dbg.declare(metadata i64** %pos, metadata !2557, metadata !DIExpression()), !dbg !2558
  %3 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2559
  %bbt = getelementptr inbounds %struct.nand_device, %struct.nand_device* %3, i32 0, i32 4, !dbg !2560
  %cache = getelementptr inbounds %struct.nand_bbt, %struct.nand_bbt* %bbt, i32 0, i32 0, !dbg !2561
  %4 = load i64*, i64** %cache, align 8, !dbg !2561
  %5 = load i32, i32* %entry.addr, align 4, !dbg !2562
  %6 = load i32, i32* %bits_per_block, align 4, !dbg !2563
  %mul = mul i32 %5, %6, !dbg !2564
  %div = udiv i32 %mul, 64, !dbg !2565
  %idx.ext = zext i32 %div to i64, !dbg !2566
  %add.ptr = getelementptr i64, i64* %4, i64 %idx.ext, !dbg !2566
  store i64* %add.ptr, i64** %pos, align 8, !dbg !2558
  call void @llvm.dbg.declare(metadata i32* %offs, metadata !2567, metadata !DIExpression()), !dbg !2568
  %7 = load i32, i32* %entry.addr, align 4, !dbg !2569
  %8 = load i32, i32* %bits_per_block, align 4, !dbg !2570
  %mul2 = mul i32 %7, %8, !dbg !2571
  %rem = urem i32 %mul2, 64, !dbg !2572
  store i32 %rem, i32* %offs, align 4, !dbg !2568
  call void @llvm.dbg.declare(metadata i64* %val, metadata !2573, metadata !DIExpression()), !dbg !2574
  %9 = load i32, i32* %status.addr, align 4, !dbg !2575
  %conv = zext i32 %9 to i64, !dbg !2575
  %10 = load i32, i32* %bits_per_block, align 4, !dbg !2576
  %sub = sub i32 %10, 1, !dbg !2576
  %sub3 = sub i32 63, %sub, !dbg !2576
  %sh_prom = zext i32 %sub3 to i64, !dbg !2576
  %shr = lshr i64 -1, %sh_prom, !dbg !2576
  %and = and i64 -1, %shr, !dbg !2576
  %add = add i64 0, %and, !dbg !2576
  %and4 = and i64 %conv, %add, !dbg !2577
  store i64 %and4, i64* %val, align 8, !dbg !2574
  %11 = load i32, i32* %entry.addr, align 4, !dbg !2578
  %12 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2580
  %call5 = call i32 @nanddev_neraseblocks(%struct.nand_device* %12) #7, !dbg !2581
  %cmp = icmp uge i32 %11, %call5, !dbg !2582
  br i1 %cmp, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !2584
  br label %return, !dbg !2584

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %offs, align 4, !dbg !2585
  %sh_prom7 = zext i32 %13 to i64, !dbg !2585
  %shl = shl i64 1, %sh_prom7, !dbg !2585
  %sub8 = sub i64 -1, %shl, !dbg !2585
  %add9 = add i64 %sub8, 1, !dbg !2585
  %14 = load i32, i32* %offs, align 4, !dbg !2585
  %15 = load i32, i32* %bits_per_block, align 4, !dbg !2585
  %add10 = add i32 %14, %15, !dbg !2585
  %sub11 = sub i32 %add10, 1, !dbg !2585
  %sub12 = sub i32 63, %sub11, !dbg !2585
  %sh_prom13 = zext i32 %sub12 to i64, !dbg !2585
  %shr14 = lshr i64 -1, %sh_prom13, !dbg !2585
  %and15 = and i64 %add9, %shr14, !dbg !2585
  %add16 = add i64 0, %and15, !dbg !2585
  %neg = xor i64 %add16, -1, !dbg !2586
  %16 = load i64*, i64** %pos, align 8, !dbg !2587
  %arrayidx = getelementptr i64, i64* %16, i64 0, !dbg !2587
  %17 = load i64, i64* %arrayidx, align 8, !dbg !2588
  %and17 = and i64 %17, %neg, !dbg !2588
  store i64 %and17, i64* %arrayidx, align 8, !dbg !2588
  %18 = load i64, i64* %val, align 8, !dbg !2589
  %19 = load i32, i32* %offs, align 4, !dbg !2590
  %sh_prom18 = zext i32 %19 to i64, !dbg !2591
  %shl19 = shl i64 %18, %sh_prom18, !dbg !2591
  %20 = load i64*, i64** %pos, align 8, !dbg !2592
  %arrayidx20 = getelementptr i64, i64* %20, i64 0, !dbg !2592
  %21 = load i64, i64* %arrayidx20, align 8, !dbg !2593
  %or = or i64 %21, %shl19, !dbg !2593
  store i64 %or, i64* %arrayidx20, align 8, !dbg !2593
  %22 = load i32, i32* %bits_per_block, align 4, !dbg !2594
  %23 = load i32, i32* %offs, align 4, !dbg !2596
  %add21 = add i32 %22, %23, !dbg !2597
  %cmp22 = icmp ugt i32 %add21, 64, !dbg !2598
  br i1 %cmp22, label %if.then24, label %if.end40, !dbg !2599

if.then24:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %rbits, metadata !2600, metadata !DIExpression()), !dbg !2602
  %24 = load i32, i32* %bits_per_block, align 4, !dbg !2603
  %25 = load i32, i32* %offs, align 4, !dbg !2604
  %add25 = add i32 %24, %25, !dbg !2605
  %sub26 = sub i32 %add25, 64, !dbg !2606
  store i32 %sub26, i32* %rbits, align 4, !dbg !2602
  %26 = load i32, i32* %rbits, align 4, !dbg !2607
  %sub27 = sub i32 %26, 1, !dbg !2607
  %sub28 = sub i32 63, %sub27, !dbg !2607
  %sh_prom29 = zext i32 %sub28 to i64, !dbg !2607
  %shr30 = lshr i64 -1, %sh_prom29, !dbg !2607
  %and31 = and i64 -1, %shr30, !dbg !2607
  %add32 = add i64 0, %and31, !dbg !2607
  %neg33 = xor i64 %add32, -1, !dbg !2608
  %27 = load i64*, i64** %pos, align 8, !dbg !2609
  %arrayidx34 = getelementptr i64, i64* %27, i64 1, !dbg !2609
  %28 = load i64, i64* %arrayidx34, align 8, !dbg !2610
  %and35 = and i64 %28, %neg33, !dbg !2610
  store i64 %and35, i64* %arrayidx34, align 8, !dbg !2610
  %29 = load i64, i64* %val, align 8, !dbg !2611
  %30 = load i32, i32* %rbits, align 4, !dbg !2612
  %sh_prom36 = zext i32 %30 to i64, !dbg !2613
  %shr37 = lshr i64 %29, %sh_prom36, !dbg !2613
  %31 = load i64*, i64** %pos, align 8, !dbg !2614
  %arrayidx38 = getelementptr i64, i64* %31, i64 1, !dbg !2614
  %32 = load i64, i64* %arrayidx38, align 8, !dbg !2615
  %or39 = or i64 %32, %shr37, !dbg !2615
  store i64 %or39, i64* %arrayidx38, align 8, !dbg !2615
  br label %if.end40, !dbg !2616

if.end40:                                         ; preds = %if.then24, %if.end
  store i32 0, i32* %retval, align 4, !dbg !2617
  br label %return, !dbg !2617

return:                                           ; preds = %if.end40, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !2618
  ret i32 %33, !dbg !2618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !2619 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2620, metadata !DIExpression()), !dbg !2624
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2633, metadata !DIExpression()), !dbg !2634
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2635, metadata !DIExpression()), !dbg !2636
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2637, metadata !DIExpression()), !dbg !2638
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2639, metadata !DIExpression()), !dbg !2643
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2645, metadata !DIExpression()), !dbg !2649
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2651, metadata !DIExpression()), !dbg !2655
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2660, metadata !DIExpression()), !dbg !2661
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2662, metadata !DIExpression()), !dbg !2663
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2664, metadata !DIExpression()), !dbg !2665
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2666, metadata !DIExpression()), !dbg !2667
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2668, metadata !DIExpression()), !dbg !2669
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2670, metadata !DIExpression()), !dbg !2671
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2672, metadata !DIExpression()), !dbg !2673
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2674, metadata !DIExpression()), !dbg !2675
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2684, metadata !DIExpression()), !dbg !2687
  %0 = load i64, i64* %n.addr, align 8, !dbg !2687
  store i64 %0, i64* %__a, align 8, !dbg !2687
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2688, metadata !DIExpression()), !dbg !2687
  %1 = load i64, i64* %size.addr, align 8, !dbg !2687
  store i64 %1, i64* %__b, align 8, !dbg !2687
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2689, metadata !DIExpression()), !dbg !2687
  store i64* %bytes, i64** %__d, align 8, !dbg !2687
  %cmp = icmp eq i64* %__a, %__b, !dbg !2687
  %conv = zext i1 %cmp to i32, !dbg !2687
  %2 = load i64*, i64** %__d, align 8, !dbg !2687
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2687
  %conv2 = zext i1 %cmp1 to i32, !dbg !2687
  %3 = load i64, i64* %__a, align 8, !dbg !2687
  %4 = load i64, i64* %__b, align 8, !dbg !2687
  %5 = load i64*, i64** %__d, align 8, !dbg !2687
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2687
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2687
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2687
  store i64 %8, i64* %5, align 8, !dbg !2687
  %frombool = zext i1 %7 to i8, !dbg !2687
  store i8 %frombool, i8* %tmp, align 1, !dbg !2687
  %9 = load i8, i8* %tmp, align 1, !dbg !2687
  %tobool = trunc i8 %9 to i1, !dbg !2687
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !2690
  %lnot = xor i1 %call, true, !dbg !2690
  %lnot3 = xor i1 %lnot, true, !dbg !2690
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2690
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2690
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2690
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2691

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2692
  br label %return, !dbg !2692

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2693
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2694
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2695

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2696
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2697
  br i1 %13, label %if.then6, label %if.end8, !dbg !2698

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2699
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2700
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2701
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !2702
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2703

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2704
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2705
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2706

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2707
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !2708
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !2709
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !2710
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2669
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2711
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2712
  %24 = load i32, i32* %order.i.i, align 4, !dbg !2713
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2714
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2715
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2716
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !2717
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2717
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2717
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2717
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2717
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2718
  br label %kmalloc.exit, !dbg !2718

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !2719
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2720
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !2720
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2722

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2723
  br label %kmalloc_index.exit.i, !dbg !2723

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2724
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !2726
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2727

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2728
  br label %kmalloc_index.exit.i, !dbg !2728

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2729
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !2731
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2732

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2733
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !2734
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2735

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2736
  br label %kmalloc_index.exit.i, !dbg !2736

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2737
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !2739
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2740

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2741
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !2742
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2743

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2744
  br label %kmalloc_index.exit.i, !dbg !2744

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2745
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !2747
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2748

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2749
  br label %kmalloc_index.exit.i, !dbg !2749

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2750
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !2752
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2753

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2754
  br label %kmalloc_index.exit.i, !dbg !2754

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2755
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !2757
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2758

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2759
  br label %kmalloc_index.exit.i, !dbg !2759

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2760
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !2762
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2763

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2764
  br label %kmalloc_index.exit.i, !dbg !2764

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2765
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !2767
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2768

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2769
  br label %kmalloc_index.exit.i, !dbg !2769

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2770
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !2772
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2773

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2774
  br label %kmalloc_index.exit.i, !dbg !2774

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2775
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !2777
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2778

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2779
  br label %kmalloc_index.exit.i, !dbg !2779

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2780
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !2782
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2783

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2784
  br label %kmalloc_index.exit.i, !dbg !2784

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2785
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !2787
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2788

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2789
  br label %kmalloc_index.exit.i, !dbg !2789

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2790
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !2792
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2793

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2794
  br label %kmalloc_index.exit.i, !dbg !2794

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2795
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !2797
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2798

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2799
  br label %kmalloc_index.exit.i, !dbg !2799

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2800
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !2802
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2803

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2804
  br label %kmalloc_index.exit.i, !dbg !2804

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2805
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !2807
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2808

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2809
  br label %kmalloc_index.exit.i, !dbg !2809

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2810
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !2812
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2813

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2814
  br label %kmalloc_index.exit.i, !dbg !2814

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2815
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !2817
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2818

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2819
  br label %kmalloc_index.exit.i, !dbg !2819

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2820
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !2822
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2823

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2824
  br label %kmalloc_index.exit.i, !dbg !2824

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2825
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !2827
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2828

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2829
  br label %kmalloc_index.exit.i, !dbg !2829

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2830
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !2832
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2833

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2834
  br label %kmalloc_index.exit.i, !dbg !2834

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2835
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !2837
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2838

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2839
  br label %kmalloc_index.exit.i, !dbg !2839

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2840
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !2842
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2843

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2844
  br label %kmalloc_index.exit.i, !dbg !2844

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2845
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !2847
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2848

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2849
  br label %kmalloc_index.exit.i, !dbg !2849

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2850
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !2852
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2853

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2854
  br label %kmalloc_index.exit.i, !dbg !2854

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2855
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !2857
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2858

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2859
  br label %kmalloc_index.exit.i, !dbg !2859

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2860
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !2862
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2863

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2864
  br label %kmalloc_index.exit.i, !dbg !2864

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2865, !srcloc !2868
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #8, !dbg !2869, !srcloc !2872
  unreachable, !dbg !2873

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !2874
  store i32 %59, i32* %index.i, align 4, !dbg !2875
  %60 = load i32, i32* %index.i, align 4, !dbg !2876
  %tobool.i = icmp ne i32 %60, 0, !dbg !2876
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2878

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2879
  br label %kmalloc.exit, !dbg !2879

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !2880
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2881
  %and.i.i = and i32 %62, 17, !dbg !2881
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2881
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2881
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2881
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2881
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2883

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2884
  br label %kmalloc_type.exit.i, !dbg !2884

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2885
  %and2.i.i = and i32 %63, 1, !dbg !2886
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2885
  %64 = zext i1 %tobool3.i.i to i64, !dbg !2885
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2885
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2887
  br label %kmalloc_type.exit.i, !dbg !2887

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !2888
  %idxprom.i = zext i32 %65 to i64, !dbg !2889
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2889
  %66 = load i32, i32* %index.i, align 4, !dbg !2890
  %idxprom6.i = zext i32 %66 to i64, !dbg !2889
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2889
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2889
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !2891
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !2892
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2893
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2894
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !2895
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2895
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2895
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2895
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2895
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2638
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2896
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !2897
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2898
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2899
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !2900
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2901
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !2902
  store i8* %76, i8** %retval.i, align 8, !dbg !2903
  br label %kmalloc.exit, !dbg !2903

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !2904
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !2905
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !2906
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2906
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2906
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2906
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2906
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2907
  br label %kmalloc.exit, !dbg !2907

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !2908
  store i8* %79, i8** %retval, align 8, !dbg !2909
  br label %return, !dbg !2909

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !2910
  %81 = load i32, i32* %flags.addr, align 4, !dbg !2911
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !2912
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !2912
  %maskedptr = and i64 %ptrint, 7, !dbg !2912
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !2912
  call void @llvm.assume(i1 %maskcond), !dbg !2912
  store i8* %call9, i8** %retval, align 8, !dbg !2913
  br label %return, !dbg !2913

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !2914
  ret i8* %82, !dbg !2914
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !2915 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2919, metadata !DIExpression()), !dbg !2920
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2921
  %tobool = trunc i8 %0 to i1, !dbg !2921
  %lnot = xor i1 %tobool, true, !dbg !2921
  %lnot1 = xor i1 %lnot, true, !dbg !2921
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2921
  %conv = sext i32 %lnot.ext to i64, !dbg !2921
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2921
  ret i1 %tobool2, !dbg !2922
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !2923 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2927, metadata !DIExpression()), !dbg !2931
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2933, metadata !DIExpression()), !dbg !2934
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2935, metadata !DIExpression()), !dbg !2936
  %0 = load i64, i64* %size.addr, align 8, !dbg !2937
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2939
  br i1 %1, label %if.then, label %if.end447, !dbg !2940

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2941
  %tobool = icmp ne i64 %2, 0, !dbg !2941
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2944

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2945
  br label %return, !dbg !2945

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2946
  %cmp = icmp ult i64 %3, 4096, !dbg !2948
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2949

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2950
  br label %return, !dbg !2950

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub = sub i64 %4, 1, !dbg !2951
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2951
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2951

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub4 = sub i64 %6, 1, !dbg !2951
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2951
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2951

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub6 = sub i64 %8, 1, !dbg !2951
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2951
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2951

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2951

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub9 = sub i64 %9, 1, !dbg !2951
  %and = and i64 %sub9, -9223372036854775808, !dbg !2951
  %tobool10 = icmp ne i64 %and, 0, !dbg !2951
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2951

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2951

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub13 = sub i64 %10, 1, !dbg !2951
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2951
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2951
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2951

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2951

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub18 = sub i64 %11, 1, !dbg !2951
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2951
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2951
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2951

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2951

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub23 = sub i64 %12, 1, !dbg !2951
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2951
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2951
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2951

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2951

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub28 = sub i64 %13, 1, !dbg !2951
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2951
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2951
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2951

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2951

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub33 = sub i64 %14, 1, !dbg !2951
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2951
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2951
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2951

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2951

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub38 = sub i64 %15, 1, !dbg !2951
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2951
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2951
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2951

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2951

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub43 = sub i64 %16, 1, !dbg !2951
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2951
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2951
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2951

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2951

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub48 = sub i64 %17, 1, !dbg !2951
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2951
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2951
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2951

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2951

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub53 = sub i64 %18, 1, !dbg !2951
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2951
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2951
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2951

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2951

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub58 = sub i64 %19, 1, !dbg !2951
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2951
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2951
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2951

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2951

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub63 = sub i64 %20, 1, !dbg !2951
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2951
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2951
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2951

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2951

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub68 = sub i64 %21, 1, !dbg !2951
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2951
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2951
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2951

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2951

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub73 = sub i64 %22, 1, !dbg !2951
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2951
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2951
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2951

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2951

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub78 = sub i64 %23, 1, !dbg !2951
  %and79 = and i64 %sub78, 562949953421312, !dbg !2951
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2951
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2951

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2951

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub83 = sub i64 %24, 1, !dbg !2951
  %and84 = and i64 %sub83, 281474976710656, !dbg !2951
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2951
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2951

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2951

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub88 = sub i64 %25, 1, !dbg !2951
  %and89 = and i64 %sub88, 140737488355328, !dbg !2951
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2951
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2951

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2951

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub93 = sub i64 %26, 1, !dbg !2951
  %and94 = and i64 %sub93, 70368744177664, !dbg !2951
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2951
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2951

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2951

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub98 = sub i64 %27, 1, !dbg !2951
  %and99 = and i64 %sub98, 35184372088832, !dbg !2951
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2951
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2951

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2951

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub103 = sub i64 %28, 1, !dbg !2951
  %and104 = and i64 %sub103, 17592186044416, !dbg !2951
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2951
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2951

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2951

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub108 = sub i64 %29, 1, !dbg !2951
  %and109 = and i64 %sub108, 8796093022208, !dbg !2951
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2951
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2951

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2951

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub113 = sub i64 %30, 1, !dbg !2951
  %and114 = and i64 %sub113, 4398046511104, !dbg !2951
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2951
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2951

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2951

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub118 = sub i64 %31, 1, !dbg !2951
  %and119 = and i64 %sub118, 2199023255552, !dbg !2951
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2951
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2951

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2951

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub123 = sub i64 %32, 1, !dbg !2951
  %and124 = and i64 %sub123, 1099511627776, !dbg !2951
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2951
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2951

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2951

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub128 = sub i64 %33, 1, !dbg !2951
  %and129 = and i64 %sub128, 549755813888, !dbg !2951
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2951
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2951

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2951

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub133 = sub i64 %34, 1, !dbg !2951
  %and134 = and i64 %sub133, 274877906944, !dbg !2951
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2951
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2951

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2951

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub138 = sub i64 %35, 1, !dbg !2951
  %and139 = and i64 %sub138, 137438953472, !dbg !2951
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2951
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2951

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2951

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub143 = sub i64 %36, 1, !dbg !2951
  %and144 = and i64 %sub143, 68719476736, !dbg !2951
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2951
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2951

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2951

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub148 = sub i64 %37, 1, !dbg !2951
  %and149 = and i64 %sub148, 34359738368, !dbg !2951
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2951
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2951

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2951

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub153 = sub i64 %38, 1, !dbg !2951
  %and154 = and i64 %sub153, 17179869184, !dbg !2951
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2951
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2951

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2951

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub158 = sub i64 %39, 1, !dbg !2951
  %and159 = and i64 %sub158, 8589934592, !dbg !2951
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2951
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2951

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2951

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub163 = sub i64 %40, 1, !dbg !2951
  %and164 = and i64 %sub163, 4294967296, !dbg !2951
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2951
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2951

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2951

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub168 = sub i64 %41, 1, !dbg !2951
  %and169 = and i64 %sub168, 2147483648, !dbg !2951
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2951
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2951

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2951

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub173 = sub i64 %42, 1, !dbg !2951
  %and174 = and i64 %sub173, 1073741824, !dbg !2951
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2951
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2951

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2951

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub178 = sub i64 %43, 1, !dbg !2951
  %and179 = and i64 %sub178, 536870912, !dbg !2951
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2951
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2951

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2951

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub183 = sub i64 %44, 1, !dbg !2951
  %and184 = and i64 %sub183, 268435456, !dbg !2951
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2951
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2951

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2951

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub188 = sub i64 %45, 1, !dbg !2951
  %and189 = and i64 %sub188, 134217728, !dbg !2951
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2951
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2951

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2951

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub193 = sub i64 %46, 1, !dbg !2951
  %and194 = and i64 %sub193, 67108864, !dbg !2951
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2951
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2951

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2951

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub198 = sub i64 %47, 1, !dbg !2951
  %and199 = and i64 %sub198, 33554432, !dbg !2951
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2951
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2951

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2951

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub203 = sub i64 %48, 1, !dbg !2951
  %and204 = and i64 %sub203, 16777216, !dbg !2951
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2951
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2951

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2951

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub208 = sub i64 %49, 1, !dbg !2951
  %and209 = and i64 %sub208, 8388608, !dbg !2951
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2951
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2951

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2951

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub213 = sub i64 %50, 1, !dbg !2951
  %and214 = and i64 %sub213, 4194304, !dbg !2951
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2951
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2951

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2951

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub218 = sub i64 %51, 1, !dbg !2951
  %and219 = and i64 %sub218, 2097152, !dbg !2951
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2951
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2951

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2951

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub223 = sub i64 %52, 1, !dbg !2951
  %and224 = and i64 %sub223, 1048576, !dbg !2951
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2951
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2951

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2951

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub228 = sub i64 %53, 1, !dbg !2951
  %and229 = and i64 %sub228, 524288, !dbg !2951
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2951
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2951

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2951

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub233 = sub i64 %54, 1, !dbg !2951
  %and234 = and i64 %sub233, 262144, !dbg !2951
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2951
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2951

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2951

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub238 = sub i64 %55, 1, !dbg !2951
  %and239 = and i64 %sub238, 131072, !dbg !2951
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2951
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2951

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2951

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub243 = sub i64 %56, 1, !dbg !2951
  %and244 = and i64 %sub243, 65536, !dbg !2951
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2951
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2951

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2951

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub248 = sub i64 %57, 1, !dbg !2951
  %and249 = and i64 %sub248, 32768, !dbg !2951
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2951
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2951

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2951

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub253 = sub i64 %58, 1, !dbg !2951
  %and254 = and i64 %sub253, 16384, !dbg !2951
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2951
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2951

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2951

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub258 = sub i64 %59, 1, !dbg !2951
  %and259 = and i64 %sub258, 8192, !dbg !2951
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2951
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2951

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2951

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub263 = sub i64 %60, 1, !dbg !2951
  %and264 = and i64 %sub263, 4096, !dbg !2951
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2951
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2951

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2951

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub268 = sub i64 %61, 1, !dbg !2951
  %and269 = and i64 %sub268, 2048, !dbg !2951
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2951
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2951

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2951

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub273 = sub i64 %62, 1, !dbg !2951
  %and274 = and i64 %sub273, 1024, !dbg !2951
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2951
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2951

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2951

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub278 = sub i64 %63, 1, !dbg !2951
  %and279 = and i64 %sub278, 512, !dbg !2951
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2951
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2951

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2951

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub283 = sub i64 %64, 1, !dbg !2951
  %and284 = and i64 %sub283, 256, !dbg !2951
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2951
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2951

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2951

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub288 = sub i64 %65, 1, !dbg !2951
  %and289 = and i64 %sub288, 128, !dbg !2951
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2951
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2951

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2951

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub293 = sub i64 %66, 1, !dbg !2951
  %and294 = and i64 %sub293, 64, !dbg !2951
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2951
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2951

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2951

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub298 = sub i64 %67, 1, !dbg !2951
  %and299 = and i64 %sub298, 32, !dbg !2951
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2951
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2951

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2951

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub303 = sub i64 %68, 1, !dbg !2951
  %and304 = and i64 %sub303, 16, !dbg !2951
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2951
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2951

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2951

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub308 = sub i64 %69, 1, !dbg !2951
  %and309 = and i64 %sub308, 8, !dbg !2951
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2951
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2951

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2951

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub313 = sub i64 %70, 1, !dbg !2951
  %and314 = and i64 %sub313, 4, !dbg !2951
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2951
  %71 = zext i1 %tobool315 to i64, !dbg !2951
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2951
  br label %cond.end, !dbg !2951

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2951
  br label %cond.end317, !dbg !2951

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2951
  br label %cond.end319, !dbg !2951

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2951
  br label %cond.end321, !dbg !2951

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2951
  br label %cond.end323, !dbg !2951

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2951
  br label %cond.end325, !dbg !2951

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2951
  br label %cond.end327, !dbg !2951

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2951
  br label %cond.end329, !dbg !2951

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2951
  br label %cond.end331, !dbg !2951

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2951
  br label %cond.end333, !dbg !2951

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2951
  br label %cond.end335, !dbg !2951

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2951
  br label %cond.end337, !dbg !2951

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2951
  br label %cond.end339, !dbg !2951

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2951
  br label %cond.end341, !dbg !2951

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2951
  br label %cond.end343, !dbg !2951

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2951
  br label %cond.end345, !dbg !2951

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2951
  br label %cond.end347, !dbg !2951

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2951
  br label %cond.end349, !dbg !2951

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2951
  br label %cond.end351, !dbg !2951

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2951
  br label %cond.end353, !dbg !2951

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2951
  br label %cond.end355, !dbg !2951

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2951
  br label %cond.end357, !dbg !2951

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2951
  br label %cond.end359, !dbg !2951

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2951
  br label %cond.end361, !dbg !2951

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2951
  br label %cond.end363, !dbg !2951

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2951
  br label %cond.end365, !dbg !2951

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2951
  br label %cond.end367, !dbg !2951

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2951
  br label %cond.end369, !dbg !2951

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2951
  br label %cond.end371, !dbg !2951

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2951
  br label %cond.end373, !dbg !2951

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2951
  br label %cond.end375, !dbg !2951

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2951
  br label %cond.end377, !dbg !2951

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2951
  br label %cond.end379, !dbg !2951

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2951
  br label %cond.end381, !dbg !2951

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2951
  br label %cond.end383, !dbg !2951

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2951
  br label %cond.end385, !dbg !2951

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2951
  br label %cond.end387, !dbg !2951

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2951
  br label %cond.end389, !dbg !2951

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2951
  br label %cond.end391, !dbg !2951

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2951
  br label %cond.end393, !dbg !2951

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2951
  br label %cond.end395, !dbg !2951

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2951
  br label %cond.end397, !dbg !2951

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2951
  br label %cond.end399, !dbg !2951

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2951
  br label %cond.end401, !dbg !2951

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2951
  br label %cond.end403, !dbg !2951

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2951
  br label %cond.end405, !dbg !2951

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2951
  br label %cond.end407, !dbg !2951

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2951
  br label %cond.end409, !dbg !2951

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2951
  br label %cond.end411, !dbg !2951

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2951
  br label %cond.end413, !dbg !2951

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2951
  br label %cond.end415, !dbg !2951

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2951
  br label %cond.end417, !dbg !2951

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2951
  br label %cond.end419, !dbg !2951

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2951
  br label %cond.end421, !dbg !2951

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2951
  br label %cond.end423, !dbg !2951

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2951
  br label %cond.end425, !dbg !2951

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2951
  br label %cond.end427, !dbg !2951

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2951
  br label %cond.end429, !dbg !2951

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2951
  br label %cond.end431, !dbg !2951

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2951
  br label %cond.end433, !dbg !2951

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2951
  br label %cond.end435, !dbg !2951

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2951
  br label %cond.end437, !dbg !2951

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2951
  br label %cond.end440, !dbg !2951

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2951

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2951
  br label %cond.end444, !dbg !2951

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2951
  %sub443 = sub i64 %72, 1, !dbg !2951
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2951
  br label %cond.end444, !dbg !2951

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2951
  %sub446 = sub i32 %cond445, 12, !dbg !2952
  %add = add i32 %sub446, 1, !dbg !2953
  store i32 %add, i32* %retval, align 4, !dbg !2954
  br label %return, !dbg !2954

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2955
  %dec = add i64 %73, -1, !dbg !2955
  store i64 %dec, i64* %size.addr, align 8, !dbg !2955
  %74 = load i64, i64* %size.addr, align 8, !dbg !2956
  %shr = lshr i64 %74, 12, !dbg !2956
  store i64 %shr, i64* %size.addr, align 8, !dbg !2956
  %75 = load i64, i64* %size.addr, align 8, !dbg !2957
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2934
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2958
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2959
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !2958, !srcloc !2960
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2958
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2961
  %add.i = add i32 %79, 1, !dbg !2962
  store i32 %add.i, i32* %retval, align 4, !dbg !2963
  br label %return, !dbg !2963

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2964
  ret i32 %80, !dbg !2964
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !2965 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2927, metadata !DIExpression()), !dbg !2969
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2933, metadata !DIExpression()), !dbg !2971
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  %0 = load i64, i64* %n.addr, align 8, !dbg !2974
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2971
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2975
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2976
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2975, !srcloc !2960
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2975
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2977
  %add.i = add i32 %4, 1, !dbg !2978
  %sub = sub i32 %add.i, 1, !dbg !2979
  ret i32 %sub, !dbg !2980
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2981 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2985, metadata !DIExpression()), !dbg !2986
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2987, metadata !DIExpression()), !dbg !2988
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2989, metadata !DIExpression()), !dbg !2990
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2991, metadata !DIExpression()), !dbg !2992
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2993
  ret i8* %0, !dbg !2994
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/mtd/nand/bbt.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !56, !61, !67, !71, !79}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !10, line: 16, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !16, line: 26, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !22, line: 44, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !28, line: 343, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !35, line: 524, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !35, line: 502, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_engine_type", file: !49, line: 142, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/mtd/nand.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_INVALID", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_NONE", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_SOFT", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_HOST", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_DIE", value: 4, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_placement", file: !49, line: 158, baseType: !5, size: 32, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_UNKNOWN", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_OOB", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_INTERLEAVED", value: 2, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_algo", file: !49, line: 171, baseType: !5, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "NAND_ECC_ALGO_UNKNOWN", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "NAND_ECC_ALGO_HAMMING", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "NAND_ECC_ALGO_BCH", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "NAND_ECC_ALGO_RS", value: 3, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_page_io_req_type", file: !49, line: 90, baseType: !5, size: 32, elements: !68)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "NAND_PAGE_READ", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "NAND_PAGE_WRITE", value: 1, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_bbt_block_status", file: !49, line: 888, baseType: !5, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DIEnumerator(name: "NAND_BBT_BLOCK_STATUS_UNKNOWN", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "NAND_BBT_BLOCK_GOOD", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "NAND_BBT_BLOCK_WORN", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "NAND_BBT_BLOCK_RESERVED", value: 3, isUnsigned: true)
!77 = !DIEnumerator(name: "NAND_BBT_BLOCK_FACTORY_BAD", value: 4, isUnsigned: true)
!78 = !DIEnumerator(name: "NAND_BBT_BLOCK_NUM_STATUS", value: 5, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !80, line: 305, baseType: !5, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!86 = !{!87, !89, !90}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !88, line: 148, baseType: !5)
!88 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !{i32 7, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"Code Model", i32 2}
!95 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!96 = distinct !DISubprogram(name: "nanddev_bbt_init", scope: !1, file: !1, line: 23, type: !97, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !363)
!97 = !DISubroutineType(types: !98)
!98 = !{!89, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !49, line: 319, size: 11200, elements: !101)
!101 = !{!102, !2288, !2300, !2367, !2372, !2376}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !100, file: !49, line: 320, baseType: !103, size: 9664)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !104, line: 235, size: 9664, elements: !105)
!104 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!105 = !{!106, !109, !115, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !134, !135, !151, !172, !173, !174, !175, !185, !195, !211, !215, !220, !226, !227, !246, !247, !258, !259, !260, !261, !262, !263, !274, !278, !282, !283, !284, !288, !289, !290, !291, !295, !296, !297, !298, !299, !302, !314, !321, !322, !323, !327, !2258, !2259, !2267, !2271, !2272, !2273}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !104, line: 236, baseType: !107, size: 8)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !88, line: 79, baseType: !108)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !104, line: 237, baseType: !110, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 104, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !112, line: 21, baseType: !113)
!112 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !5)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !103, file: !104, line: 238, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !88, line: 107, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !112, line: 23, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !119)
!119 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !103, file: !104, line: 244, baseType: !110, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !103, file: !104, line: 252, baseType: !110, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !103, file: !104, line: 263, baseType: !110, size: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !103, file: !104, line: 265, baseType: !110, size: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !103, file: !104, line: 266, baseType: !110, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !103, file: !104, line: 272, baseType: !5, size: 32, offset: 288)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !103, file: !104, line: 273, baseType: !5, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !103, file: !104, line: 275, baseType: !5, size: 32, offset: 352)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !103, file: !104, line: 276, baseType: !5, size: 32, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !103, file: !104, line: 285, baseType: !5, size: 32, offset: 416)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !104, line: 288, baseType: !131, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !103, file: !104, line: 289, baseType: !89, size: 32, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !103, file: !104, line: 292, baseType: !136, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !104, line: 101, size: 128, elements: !139)
!139 = !{!140, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !138, file: !104, line: 102, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!89, !144, !89, !145}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !104, line: 87, size: 64, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !146, file: !104, line: 88, baseType: !111, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !146, file: !104, line: 89, baseType: !111, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !138, file: !104, line: 104, baseType: !141, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !103, file: !104, line: 295, baseType: !152, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !104, line: 176, size: 192, elements: !155)
!155 = !{!156, !157, !166}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !154, file: !104, line: 177, baseType: !89, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !154, file: !104, line: 178, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!89, !144, !89, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !104, line: 138, size: 64, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !162, file: !104, line: 139, baseType: !89, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !162, file: !104, line: 140, baseType: !89, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !154, file: !104, line: 180, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!89, !144, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !103, file: !104, line: 298, baseType: !5, size: 32, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !103, file: !104, line: 301, baseType: !5, size: 32, offset: 736)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !103, file: !104, line: 306, baseType: !89, size: 32, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !103, file: !104, line: 307, baseType: !176, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !104, line: 36, size: 192, elements: !178)
!178 = !{!179, !180, !181, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !177, file: !104, line: 37, baseType: !116, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !177, file: !104, line: 38, baseType: !110, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !177, file: !104, line: 39, baseType: !110, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !177, file: !104, line: 40, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !103, file: !104, line: 313, baseType: !186, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!89, !144, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !104, line: 30, size: 192, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !190, file: !104, line: 31, baseType: !116, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !190, file: !104, line: 32, baseType: !116, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !190, file: !104, line: 33, baseType: !116, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !103, file: !104, line: 314, baseType: !196, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!89, !144, !199, !203, !206, !207, !208}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !88, line: 46, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !201, line: 88, baseType: !202)
!201 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 55, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !201, line: 72, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !201, line: 16, baseType: !184)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !88, line: 158, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !88, line: 153, baseType: !117)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !103, file: !104, line: 316, baseType: !212, size: 64, offset: 1024)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!89, !144, !199, !203}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !103, file: !104, line: 317, baseType: !216, size: 64, offset: 1088)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!89, !144, !199, !203, !206, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !103, file: !104, line: 319, baseType: !221, size: 64, offset: 1152)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!89, !144, !199, !203, !206, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !103, file: !104, line: 321, baseType: !221, size: 64, offset: 1216)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !103, file: !104, line: 323, baseType: !228, size: 64, offset: 1280)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!89, !144, !199, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !104, line: 64, size: 512, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !245}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !232, file: !104, line: 65, baseType: !5, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !232, file: !104, line: 66, baseType: !203, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !232, file: !104, line: 67, baseType: !203, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !232, file: !104, line: 68, baseType: !203, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !232, file: !104, line: 69, baseType: !203, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !232, file: !104, line: 70, baseType: !110, size: 32, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !232, file: !104, line: 71, baseType: !241, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 102, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !112, line: 17, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !108)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !232, file: !104, line: 72, baseType: !241, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !103, file: !104, line: 325, baseType: !228, size: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !103, file: !104, line: 327, baseType: !248, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!89, !144, !203, !206, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !253, line: 146, size: 96, elements: !254)
!253 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !256, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !252, file: !253, line: 147, baseType: !113, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !252, file: !253, line: 148, baseType: !113, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !252, file: !253, line: 149, baseType: !113, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !103, file: !104, line: 329, baseType: !216, size: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !103, file: !104, line: 331, baseType: !248, size: 64, offset: 1536)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !103, file: !104, line: 333, baseType: !216, size: 64, offset: 1600)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !103, file: !104, line: 335, baseType: !216, size: 64, offset: 1664)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !103, file: !104, line: 337, baseType: !212, size: 64, offset: 1728)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !103, file: !104, line: 339, baseType: !264, size: 64, offset: 1792)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!89, !144, !267, !184, !199, !206}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !270, line: 15, size: 128, elements: !271)
!270 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !269, file: !270, line: 16, baseType: !90, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !269, file: !270, line: 17, baseType: !203, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !103, file: !104, line: 341, baseType: !275, size: 64, offset: 1856)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !144}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !103, file: !104, line: 342, baseType: !279, size: 64, offset: 1920)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!89, !144, !199, !116}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !103, file: !104, line: 343, baseType: !279, size: 64, offset: 1984)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !103, file: !104, line: 344, baseType: !279, size: 64, offset: 2048)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !103, file: !104, line: 345, baseType: !285, size: 64, offset: 2112)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!89, !144, !199}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !103, file: !104, line: 346, baseType: !285, size: 64, offset: 2176)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !103, file: !104, line: 347, baseType: !285, size: 64, offset: 2240)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !103, file: !104, line: 348, baseType: !212, size: 64, offset: 2304)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !103, file: !104, line: 349, baseType: !292, size: 64, offset: 2368)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!89, !144}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !103, file: !104, line: 350, baseType: !275, size: 64, offset: 2432)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !103, file: !104, line: 351, baseType: !275, size: 64, offset: 2496)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !103, file: !104, line: 356, baseType: !292, size: 64, offset: 2560)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !103, file: !104, line: 357, baseType: !275, size: 64, offset: 2624)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !103, file: !104, line: 363, baseType: !300, size: 8, offset: 2688)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !88, line: 30, baseType: !301)
!301 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !103, file: !104, line: 365, baseType: !303, size: 192, offset: 2752)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !304, line: 54, size: 192, elements: !305)
!304 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !312, !313}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !303, file: !304, line: 55, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !304, line: 51, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!89, !311, !184, !90}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !304, line: 56, baseType: !311, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !303, file: !304, line: 57, baseType: !89, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !103, file: !104, line: 368, baseType: !315, size: 128, offset: 2944)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !253, line: 250, size: 128, elements: !316)
!316 = !{!317, !318, !319, !320}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !315, file: !253, line: 251, baseType: !113, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !315, file: !253, line: 252, baseType: !113, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !315, file: !253, line: 253, baseType: !113, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !315, file: !253, line: 254, baseType: !113, size: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !103, file: !104, line: 370, baseType: !89, size: 32, offset: 3072)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !103, file: !104, line: 372, baseType: !90, size: 64, offset: 3136)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !103, file: !104, line: 374, baseType: !324, size: 64, offset: 3200)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !326, line: 76, flags: DIFlagFwdDecl)
!326 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !103, file: !104, line: 375, baseType: !328, size: 5568, offset: 3264)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !329)
!329 = !{!330, !1784, !1786, !1789, !1790, !1841, !1935, !1936, !1937, !1938, !1939, !1948, !2053, !2066, !2069, !2070, !2074, !2076, !2077, !2078, !2082, !2088, !2089, !2092, !2207, !2208, !2211, !2212, !2213, !2214, !2246, !2247, !2248, !2251, !2254, !2255, !2256, !2257}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !328, file: !28, line: 462, baseType: !331, size: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !332, line: 64, size: 512, elements: !333)
!332 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !341, !343, !403, !1621, !1774, !1779, !1780, !1781, !1782, !1783}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !332, line: 65, baseType: !131, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !331, file: !332, line: 66, baseType: !336, size: 128, offset: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !88, line: 178, size: 128, elements: !337)
!337 = !{!338, !340}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !88, line: 179, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !336, file: !88, line: 179, baseType: !339, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !331, file: !332, line: 67, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !331, file: !332, line: 68, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !332, line: 192, size: 704, elements: !346)
!346 = !{!347, !348, !364, !365}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !345, file: !332, line: 193, baseType: !336, size: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !345, file: !332, line: 194, baseType: !349, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !350, line: 83, baseType: !351)
!350 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !350, line: 71, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !350, line: 72, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !350, line: 72, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !354, file: !350, line: 73, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !350, line: 20, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !357, file: !350, line: 21, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !361, line: 25, baseType: !362)
!361 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 25, elements: !363)
!363 = !{}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !345, file: !332, line: 195, baseType: !331, size: 512, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !345, file: !332, line: 196, baseType: !366, size: 64, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !332, line: 156, size: 192, elements: !369)
!369 = !{!370, !375, !380}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !368, file: !332, line: 157, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!89, !344, !342}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !332, line: 158, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!131, !344, !342}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !368, file: !332, line: 159, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!89, !344, !342, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !332, line: 148, size: 20736, elements: !387)
!387 = !{!388, !393, !397, !398, !402}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !386, file: !332, line: 149, baseType: !389, size: 192)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !391)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!391 = !{!392}
!392 = !DISubrange(count: 3)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !386, file: !332, line: 150, baseType: !394, size: 4096, offset: 192)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 4096, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !386, file: !332, line: 151, baseType: !89, size: 32, offset: 4288)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !386, file: !332, line: 152, baseType: !399, size: 16384, offset: 4320)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 16384, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 2048)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !386, file: !332, line: 153, baseType: !89, size: 32, offset: 20704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !331, file: !332, line: 69, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !332, line: 138, size: 448, elements: !406)
!406 = !{!407, !411, !436, !438, !1567, !1600, !1604}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !405, file: !332, line: 139, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !342}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !405, file: !332, line: 140, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !415, line: 230, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !432}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !414, file: !415, line: 231, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!421, !342, !425, !390}
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !88, line: 60, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !201, line: 73, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !201, line: 15, baseType: !424)
!424 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !415, line: 30, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !415, line: 31, baseType: !131, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !426, file: !415, line: 32, baseType: !430, size: 16, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !88, line: 19, baseType: !431)
!431 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !414, file: !415, line: 232, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!421, !342, !425, !131, !203}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !405, file: !332, line: 141, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !405, file: !332, line: 142, baseType: !439, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !415, line: 84, size: 320, elements: !443)
!443 = !{!444, !445, !449, !1564, !1565}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !415, line: 85, baseType: !131, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !442, file: !415, line: 86, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!430, !342, !425, !89}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !442, file: !415, line: 88, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!430, !342, !453, !89}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !415, line: 168, size: 448, elements: !455)
!455 = !{!456, !457, !458, !459, !466, !467}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !454, file: !415, line: 169, baseType: !426, size: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !454, file: !415, line: 170, baseType: !203, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !454, file: !415, line: 171, baseType: !90, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !454, file: !415, line: 172, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!421, !463, !342, !453, !390, !199, !203}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !465, line: 526, flags: DIFlagFwdDecl)
!465 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!466 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !454, file: !415, line: 174, baseType: !460, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !454, file: !415, line: 176, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!89, !463, !342, !453, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !473, line: 305, size: 1472, elements: !474)
!473 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!474 = !{!475, !476, !477, !478, !479, !487, !488, !1538, !1544, !1545, !1550, !1551, !1554, !1558, !1559, !1560, !1561, !1562}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !472, file: !473, line: 308, baseType: !184, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !472, file: !473, line: 309, baseType: !184, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !472, file: !473, line: 313, baseType: !471, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !472, file: !473, line: 313, baseType: !471, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !472, file: !473, line: 315, baseType: !480, size: 192, align: 64, offset: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !481, line: 24, size: 192, align: 64, elements: !482)
!481 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!482 = !{!483, !484, !486}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !480, file: !481, line: 25, baseType: !184, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !480, file: !481, line: 26, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !480, file: !481, line: 27, baseType: !485, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !472, file: !473, line: 323, baseType: !184, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !472, file: !473, line: 327, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !473, line: 388, size: 7296, elements: !491)
!491 = !{!492, !1534}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !473, line: 389, baseType: !493, size: 7296)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !473, line: 389, size: 7296, elements: !494)
!494 = !{!495, !496, !500, !501, !505, !506, !507, !508, !509, !517, !522, !523, !524, !525, !534, !535, !536, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !571, !579, !582, !614, !615, !1504, !1505, !1508, !1512, !1513, !1516, !1517, !1518, !1521, !1533}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !493, file: !473, line: 390, baseType: !471, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !493, file: !473, line: 391, baseType: !497, size: 64, offset: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !481, line: 31, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !497, file: !481, line: 32, baseType: !485, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !493, file: !473, line: 392, baseType: !117, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !493, file: !473, line: 394, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!184, !463, !184, !184, !184, !184}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !493, file: !473, line: 398, baseType: !184, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !493, file: !473, line: 399, baseType: !184, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !493, file: !473, line: 405, baseType: !184, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !493, file: !473, line: 406, baseType: !184, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !493, file: !473, line: 407, baseType: !510, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !465, line: 286, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 286, size: 64, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !512, file: !465, line: 286, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !516, line: 18, baseType: !184)
!516 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !493, file: !473, line: 416, baseType: !518, size: 32, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !88, line: 168, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 166, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !519, file: !88, line: 167, baseType: !89, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !493, file: !473, line: 428, baseType: !518, size: 32, offset: 608)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !493, file: !473, line: 437, baseType: !518, size: 32, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !493, file: !473, line: 447, baseType: !518, size: 32, offset: 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !493, file: !473, line: 450, baseType: !526, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !527, line: 13, baseType: !528)
!527 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !88, line: 175, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 173, size: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !529, file: !88, line: 174, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !112, line: 22, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !202)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !493, file: !473, line: 452, baseType: !89, size: 32, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !493, file: !473, line: 454, baseType: !349, offset: 800)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !493, file: !473, line: 457, baseType: !537, size: 256, offset: 832)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !538, line: 35, size: 256, elements: !539)
!538 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !541, !542, !544}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !537, file: !538, line: 36, baseType: !526, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !537, file: !538, line: 42, baseType: !526, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !537, file: !538, line: 46, baseType: !543, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !350, line: 29, baseType: !357)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !537, file: !538, line: 47, baseType: !336, size: 128, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !493, file: !473, line: 459, baseType: !336, size: 128, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !493, file: !473, line: 466, baseType: !184, size: 64, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !493, file: !473, line: 467, baseType: !184, size: 64, offset: 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !493, file: !473, line: 469, baseType: !184, size: 64, offset: 1344)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !493, file: !473, line: 470, baseType: !184, size: 64, offset: 1408)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !493, file: !473, line: 471, baseType: !528, size: 64, offset: 1472)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !493, file: !473, line: 472, baseType: !184, size: 64, offset: 1536)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !493, file: !473, line: 473, baseType: !184, size: 64, offset: 1600)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !493, file: !473, line: 474, baseType: !184, size: 64, offset: 1664)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !493, file: !473, line: 475, baseType: !184, size: 64, offset: 1728)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !493, file: !473, line: 477, baseType: !349, offset: 1792)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !493, file: !473, line: 478, baseType: !184, size: 64, offset: 1792)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !493, file: !473, line: 478, baseType: !184, size: 64, offset: 1856)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !493, file: !473, line: 478, baseType: !184, size: 64, offset: 1920)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !493, file: !473, line: 478, baseType: !184, size: 64, offset: 1984)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !493, file: !473, line: 479, baseType: !184, size: 64, offset: 2048)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !493, file: !473, line: 479, baseType: !184, size: 64, offset: 2112)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !493, file: !473, line: 479, baseType: !184, size: 64, offset: 2176)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !493, file: !473, line: 480, baseType: !184, size: 64, offset: 2240)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !493, file: !473, line: 480, baseType: !184, size: 64, offset: 2304)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !493, file: !473, line: 480, baseType: !184, size: 64, offset: 2368)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !493, file: !473, line: 480, baseType: !184, size: 64, offset: 2432)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !493, file: !473, line: 482, baseType: !568, size: 2816, offset: 2496)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 2816, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 44)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !493, file: !473, line: 488, baseType: !572, size: 256, offset: 5312)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !573, line: 60, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !573, line: 61, baseType: !576, size: 256)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 256, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 4)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !493, file: !473, line: 490, baseType: !580, size: 64, offset: 5568)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !473, line: 490, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !493, file: !473, line: 493, baseType: !583, size: 896, offset: 5632)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !584, line: 53, baseType: !585)
!584 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 13, size: 896, elements: !586)
!586 = !{!587, !588, !589, !590, !593, !594, !601, !602, !606, !607, !610}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !585, file: !584, line: 18, baseType: !117, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !585, file: !584, line: 28, baseType: !528, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !585, file: !584, line: 31, baseType: !537, size: 256, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !585, file: !584, line: 32, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !584, line: 32, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !585, file: !584, line: 37, baseType: !431, size: 16, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !584, line: 40, baseType: !595, size: 192, offset: 512)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !596, line: 53, size: 192, elements: !597)
!596 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !595, file: !596, line: 54, baseType: !526, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !595, file: !596, line: 55, baseType: !349, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !595, file: !596, line: 59, baseType: !336, size: 128, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !585, file: !584, line: 41, baseType: !90, size: 64, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !585, file: !584, line: 42, baseType: !603, size: 64, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !584, line: 42, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !585, file: !584, line: 44, baseType: !518, size: 32, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !585, file: !584, line: 50, baseType: !608, size: 16, offset: 864)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !112, line: 19, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !431)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !585, file: !584, line: 51, baseType: !611, size: 16, offset: 880)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !112, line: 18, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !613)
!613 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !473, line: 495, baseType: !184, size: 64, offset: 6528)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !493, file: !473, line: 497, baseType: !616, size: 64, offset: 6592)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !473, line: 381, size: 384, elements: !618)
!618 = !{!619, !620, !1503}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !617, file: !473, line: 382, baseType: !518, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !617, file: !473, line: 383, baseType: !621, size: 128, offset: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !473, line: 376, size: 128, elements: !622)
!622 = !{!623, !1501}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !621, file: !473, line: 377, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !626, line: 640, size: 48640, elements: !627)
!626 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !634, !636, !637, !643, !644, !645, !646, !647, !648, !649, !650, !654, !672, !683, !775, !776, !777, !788, !789, !791, !792, !793, !794, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !873, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !929, !931, !932, !933, !945, !947, !948, !949, !950, !951, !957, !958, !959, !960, !961, !962, !963, !975, !980, !984, !985, !986, !989, !993, !996, !999, !1002, !1005, !1008, !1011, !1014, !1020, !1021, !1022, !1028, !1029, !1030, !1031, !1032, !1041, !1042, !1043, !1044, !1045, !1050, !1051, !1052, !1055, !1056, !1059, !1062, !1065, !1068, !1071, !1074, !1075, !1155, !1158, !1161, !1162, !1165, !1166, !1167, !1173, !1174, !1175, !1188, !1189, !1190, !1200, !1205, !1208, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !625, file: !626, line: 646, baseType: !629, size: 128)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !630, line: 56, size: 128, elements: !631)
!630 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !630, line: 57, baseType: !184, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !629, file: !630, line: 58, baseType: !111, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !625, file: !626, line: 649, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !424)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !625, file: !626, line: 657, baseType: !90, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !625, file: !626, line: 658, baseType: !638, size: 32, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !639, line: 113, baseType: !640)
!639 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !639, line: 111, size: 32, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !640, file: !639, line: 112, baseType: !518, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !626, line: 660, baseType: !5, size: 32, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !625, file: !626, line: 661, baseType: !5, size: 32, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !625, file: !626, line: 684, baseType: !89, size: 32, offset: 352)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !625, file: !626, line: 686, baseType: !89, size: 32, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !625, file: !626, line: 687, baseType: !89, size: 32, offset: 416)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !625, file: !626, line: 688, baseType: !89, size: 32, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !625, file: !626, line: 689, baseType: !5, size: 32, offset: 480)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !625, file: !626, line: 691, baseType: !651, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !626, line: 691, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !625, file: !626, line: 692, baseType: !655, size: 832, offset: 576)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !626, line: 451, size: 832, elements: !656)
!656 = !{!657, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !655, file: !626, line: 453, baseType: !658, size: 128)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !626, line: 325, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !658, file: !626, line: 326, baseType: !184, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !658, file: !626, line: 327, baseType: !111, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !655, file: !626, line: 454, baseType: !480, size: 192, align: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !655, file: !626, line: 455, baseType: !336, size: 128, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !655, file: !626, line: 456, baseType: !5, size: 32, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !655, file: !626, line: 458, baseType: !117, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !655, file: !626, line: 459, baseType: !117, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !655, file: !626, line: 460, baseType: !117, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !655, file: !626, line: 461, baseType: !117, size: 64, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !655, file: !626, line: 463, baseType: !117, size: 64, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !655, file: !626, line: 465, baseType: !671, offset: 832)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !626, line: 415, elements: !363)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !625, file: !626, line: 693, baseType: !673, size: 384, offset: 1408)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !626, line: 489, size: 384, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !673, file: !626, line: 490, baseType: !336, size: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !673, file: !626, line: 491, baseType: !184, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !673, file: !626, line: 492, baseType: !184, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !673, file: !626, line: 493, baseType: !5, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !673, file: !626, line: 494, baseType: !431, size: 16, offset: 288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !673, file: !626, line: 495, baseType: !431, size: 16, offset: 304)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !673, file: !626, line: 497, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !625, file: !626, line: 697, baseType: !684, size: 1792, offset: 1792)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !626, line: 507, size: 1792, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !772, !773}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !684, file: !626, line: 508, baseType: !480, size: 192, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !684, file: !626, line: 515, baseType: !117, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !684, file: !626, line: 516, baseType: !117, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !684, file: !626, line: 517, baseType: !117, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !684, file: !626, line: 518, baseType: !117, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !684, file: !626, line: 519, baseType: !117, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !684, file: !626, line: 526, baseType: !532, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !684, file: !626, line: 527, baseType: !117, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !626, line: 528, baseType: !5, size: 32, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !684, file: !626, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !684, file: !626, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !684, file: !626, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !684, file: !626, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !684, file: !626, line: 563, baseType: !700, size: 512, offset: 704)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !701)
!701 = !{!702, !710, !711, !716, !768, !769, !770, !771}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !4, line: 119, baseType: !703, size: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !704, line: 9, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !704, line: 10, baseType: !480, size: 192, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !703, file: !704, line: 11, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !709, line: 29, baseType: !532)
!709 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !700, file: !4, line: 120, baseType: !708, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !700, file: !4, line: 121, baseType: !712, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!3, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !700, file: !4, line: 122, baseType: !717, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !719)
!719 = !{!720, !740, !741, !744, !754, !755, !763, !767}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !718, file: !4, line: 160, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !4, line: 215, baseType: !543)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !722, file: !4, line: 216, baseType: !5, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !722, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !722, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !722, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !722, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !722, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !722, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !722, file: !4, line: 233, baseType: !708, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !722, file: !4, line: 234, baseType: !715, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !722, file: !4, line: 235, baseType: !708, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !722, file: !4, line: 236, baseType: !715, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !722, file: !4, line: 237, baseType: !737, size: 4096, offset: 512)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 4096, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !718, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !718, file: !4, line: 162, baseType: !742, size: 32, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !88, line: 27, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !201, line: 96, baseType: !89)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !718, file: !4, line: 163, baseType: !745, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !746, line: 276, baseType: !747)
!746 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !746, line: 276, size: 32, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !747, file: !746, line: 276, baseType: !750, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !746, line: 70, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !746, line: 65, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !751, file: !746, line: 66, baseType: !5, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !718, file: !4, line: 164, baseType: !715, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !718, file: !4, line: 165, baseType: !756, size: 128, offset: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !704, line: 14, size: 128, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !756, file: !704, line: 15, baseType: !759, size: 128)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !481, line: 125, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !759, file: !481, line: 126, baseType: !497, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !759, file: !481, line: 127, baseType: !485, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !718, file: !4, line: 166, baseType: !764, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!708}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !718, file: !4, line: 167, baseType: !708, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !700, file: !4, line: 123, baseType: !243, size: 8, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !700, file: !4, line: 124, baseType: !243, size: 8, offset: 456)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !700, file: !4, line: 125, baseType: !243, size: 8, offset: 464)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !700, file: !4, line: 126, baseType: !243, size: 8, offset: 472)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !684, file: !626, line: 572, baseType: !700, size: 512, offset: 1216)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !684, file: !626, line: 580, baseType: !774, size: 64, offset: 1728)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !625, file: !626, line: 721, baseType: !5, size: 32, offset: 3584)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !625, file: !626, line: 722, baseType: !89, size: 32, offset: 3616)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !625, file: !626, line: 723, baseType: !778, size: 64, offset: 3648)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !781, line: 17, baseType: !782)
!781 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !781, line: 17, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !782, file: !781, line: 17, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 1)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !625, file: !626, line: 724, baseType: !780, size: 64, offset: 3712)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !625, file: !626, line: 749, baseType: !790, offset: 3776)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !626, line: 290, elements: !363)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !625, file: !626, line: 751, baseType: !336, size: 128, offset: 3776)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !625, file: !626, line: 757, baseType: !489, size: 64, offset: 3904)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !625, file: !626, line: 758, baseType: !489, size: 64, offset: 3968)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !625, file: !626, line: 761, baseType: !795, size: 320, offset: 4032)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !573, line: 34, size: 320, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !795, file: !573, line: 35, baseType: !117, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !795, file: !573, line: 36, baseType: !799, size: 256, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 256, elements: !577)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !625, file: !626, line: 766, baseType: !89, size: 32, offset: 4352)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !625, file: !626, line: 767, baseType: !89, size: 32, offset: 4384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !625, file: !626, line: 768, baseType: !89, size: 32, offset: 4416)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !625, file: !626, line: 770, baseType: !89, size: 32, offset: 4448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !625, file: !626, line: 772, baseType: !184, size: 64, offset: 4480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !625, file: !626, line: 775, baseType: !5, size: 32, offset: 4544)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !625, file: !626, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !625, file: !626, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !625, file: !626, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !625, file: !626, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !625, file: !626, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !625, file: !626, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !625, file: !626, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !625, file: !626, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !625, file: !626, line: 831, baseType: !184, size: 64, offset: 4672)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !625, file: !626, line: 833, baseType: !816, size: 384, offset: 4736)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !817)
!817 = !{!818, !823}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !816, file: !10, line: 26, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!424, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !10, line: 27, baseType: !824, size: 320, offset: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !10, line: 27, size: 320, elements: !825)
!825 = !{!826, !836, !863}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !824, file: !10, line: 36, baseType: !827, size: 320)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !10, line: 29, size: 320, elements: !828)
!828 = !{!829, !831, !832, !833, !834, !835}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !827, file: !10, line: 30, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !10, line: 31, baseType: !111, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !10, line: 32, baseType: !111, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !827, file: !10, line: 33, baseType: !111, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !827, file: !10, line: 34, baseType: !117, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !827, file: !10, line: 35, baseType: !830, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !824, file: !10, line: 46, baseType: !837, size: 192)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !10, line: 38, size: 192, elements: !838)
!838 = !{!839, !840, !841, !862}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !837, file: !10, line: 39, baseType: !742, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !837, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !10, line: 41, baseType: !842, size: 64, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !10, line: 41, size: 64, elements: !843)
!843 = !{!844, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !842, file: !10, line: 42, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !847, line: 7, size: 128, elements: !848)
!847 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!848 = !{!849, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !846, file: !847, line: 8, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !201, line: 93, baseType: !202)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !846, file: !847, line: 9, baseType: !202, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !842, file: !10, line: 43, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !855, line: 7, size: 64, elements: !856)
!855 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!856 = !{!857, !861}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !854, file: !855, line: 8, baseType: !858, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !855, line: 5, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !112, line: 20, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !89)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !854, file: !855, line: 9, baseType: !859, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !837, file: !10, line: 45, baseType: !117, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !824, file: !10, line: 54, baseType: !864, size: 256)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !10, line: 48, size: 256, elements: !865)
!865 = !{!866, !869, !870, !871, !872}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !864, file: !10, line: 49, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !864, file: !10, line: 50, baseType: !89, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !864, file: !10, line: 51, baseType: !89, size: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !864, file: !10, line: 52, baseType: !184, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !864, file: !10, line: 53, baseType: !184, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !625, file: !626, line: 835, baseType: !874, size: 32, offset: 5120)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !88, line: 22, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !201, line: 28, baseType: !89)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !625, file: !626, line: 836, baseType: !874, size: 32, offset: 5152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !625, file: !626, line: 840, baseType: !184, size: 64, offset: 5184)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !625, file: !626, line: 849, baseType: !624, size: 64, offset: 5248)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !625, file: !626, line: 852, baseType: !624, size: 64, offset: 5312)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !625, file: !626, line: 857, baseType: !336, size: 128, offset: 5376)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !625, file: !626, line: 858, baseType: !336, size: 128, offset: 5504)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !625, file: !626, line: 859, baseType: !624, size: 64, offset: 5632)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !625, file: !626, line: 867, baseType: !336, size: 128, offset: 5696)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !625, file: !626, line: 868, baseType: !336, size: 128, offset: 5824)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !625, file: !626, line: 871, baseType: !886, size: 64, offset: 5952)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !888, line: 59, size: 768, elements: !889)
!888 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!889 = !{!890, !891, !892, !893, !904, !905, !912, !921}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !887, file: !888, line: 61, baseType: !638, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !887, file: !888, line: 62, baseType: !5, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !887, file: !888, line: 63, baseType: !349, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !887, file: !888, line: 65, baseType: !894, size: 256, offset: 64)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 256, elements: !577)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !88, line: 182, size: 64, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !895, file: !88, line: 183, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !88, line: 186, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !88, line: 187, baseType: !898, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !899, file: !88, line: 187, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !887, file: !888, line: 66, baseType: !895, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !887, file: !888, line: 68, baseType: !906, size: 128, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !907, line: 40, baseType: !908)
!907 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !907, line: 36, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !908, file: !907, line: 37, baseType: !349)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !908, file: !907, line: 38, baseType: !336, size: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !887, file: !888, line: 69, baseType: !913, size: 128, align: 64, offset: 512)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !88, line: 216, size: 128, align: 64, elements: !914)
!914 = !{!915, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !913, file: !88, line: 217, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !913, file: !88, line: 218, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !916}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !887, file: !888, line: 70, baseType: !922, size: 128, offset: 640)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 128, elements: !786)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !888, line: 54, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !923, file: !888, line: 55, baseType: !89, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !923, file: !888, line: 56, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !888, line: 56, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !625, file: !626, line: 872, baseType: !930, size: 512, offset: 6016)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 512, elements: !577)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !625, file: !626, line: 873, baseType: !336, size: 128, offset: 6528)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !625, file: !626, line: 874, baseType: !336, size: 128, offset: 6656)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !625, file: !626, line: 876, baseType: !934, size: 64, offset: 6784)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !936, line: 26, size: 192, elements: !937)
!936 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !935, file: !936, line: 27, baseType: !5, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !935, file: !936, line: 28, baseType: !940, size: 128, offset: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !941, line: 43, size: 128, elements: !942)
!941 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !940, file: !941, line: 44, baseType: !543)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !940, file: !941, line: 45, baseType: !336, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !625, file: !626, line: 879, baseType: !946, size: 64, offset: 6848)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !625, file: !626, line: 882, baseType: !946, size: 64, offset: 6912)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !625, file: !626, line: 884, baseType: !117, size: 64, offset: 6976)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !625, file: !626, line: 885, baseType: !117, size: 64, offset: 7040)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !625, file: !626, line: 890, baseType: !117, size: 64, offset: 7104)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !625, file: !626, line: 891, baseType: !952, size: 128, offset: 7168)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !626, line: 242, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !952, file: !626, line: 244, baseType: !117, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !952, file: !626, line: 245, baseType: !117, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !626, line: 246, baseType: !543, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !625, file: !626, line: 900, baseType: !184, size: 64, offset: 7296)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !625, file: !626, line: 901, baseType: !184, size: 64, offset: 7360)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !625, file: !626, line: 904, baseType: !117, size: 64, offset: 7424)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !625, file: !626, line: 907, baseType: !117, size: 64, offset: 7488)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !625, file: !626, line: 910, baseType: !184, size: 64, offset: 7552)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !625, file: !626, line: 911, baseType: !184, size: 64, offset: 7616)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !625, file: !626, line: 914, baseType: !964, size: 640, offset: 7680)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !965, line: 123, size: 640, elements: !966)
!965 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!966 = !{!967, !973, !974}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !964, file: !965, line: 124, baseType: !968, size: 576)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 576, elements: !391)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !965, line: 108, size: 192, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !969, file: !965, line: 109, baseType: !117, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !969, file: !965, line: 110, baseType: !756, size: 128, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !964, file: !965, line: 125, baseType: !5, size: 32, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !964, file: !965, line: 126, baseType: !5, size: 32, offset: 608)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !625, file: !626, line: 917, baseType: !976, size: 192, offset: 8320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !965, line: 134, size: 192, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !976, file: !965, line: 135, baseType: !913, size: 128, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !976, file: !965, line: 136, baseType: !5, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !625, file: !626, line: 923, baseType: !981, size: 64, offset: 8512)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !626, line: 923, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !625, file: !626, line: 926, baseType: !981, size: 64, offset: 8576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !625, file: !626, line: 929, baseType: !981, size: 64, offset: 8640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !625, file: !626, line: 933, baseType: !987, size: 64, offset: 8704)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !626, line: 933, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !625, file: !626, line: 943, baseType: !990, size: 128, offset: 8768)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 16)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !625, file: !626, line: 945, baseType: !994, size: 64, offset: 8896)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !626, line: 49, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !625, file: !626, line: 956, baseType: !997, size: 64, offset: 8960)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !626, line: 45, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !625, file: !626, line: 959, baseType: !1000, size: 64, offset: 9024)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !626, line: 959, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !625, file: !626, line: 962, baseType: !1003, size: 64, offset: 9088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !626, line: 66, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !625, file: !626, line: 966, baseType: !1006, size: 64, offset: 9152)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !626, line: 50, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !625, file: !626, line: 969, baseType: !1009, size: 64, offset: 9216)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !965, line: 223, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !625, file: !626, line: 970, baseType: !1012, size: 64, offset: 9280)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !626, line: 62, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !625, file: !626, line: 971, baseType: !1015, size: 64, offset: 9344)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1016, line: 25, baseType: !1017)
!1016 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 23, size: 64, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1017, file: !1016, line: 24, baseType: !785, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !625, file: !626, line: 972, baseType: !1015, size: 64, offset: 9408)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !625, file: !626, line: 974, baseType: !1015, size: 64, offset: 9472)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !625, file: !626, line: 975, baseType: !1023, size: 192, offset: 9536)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1024, line: 30, size: 192, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1023, file: !1024, line: 31, baseType: !336, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1023, file: !1024, line: 32, baseType: !1015, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !625, file: !626, line: 976, baseType: !184, size: 64, offset: 9728)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !625, file: !626, line: 977, baseType: !203, size: 64, offset: 9792)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !625, file: !626, line: 978, baseType: !5, size: 32, offset: 9856)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !625, file: !626, line: 980, baseType: !916, size: 64, offset: 9920)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !625, file: !626, line: 989, baseType: !1033, size: 128, offset: 9984)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1034, line: 35, size: 128, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1033, file: !1034, line: 36, baseType: !89, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1033, file: !1034, line: 37, baseType: !518, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1033, file: !1034, line: 38, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1034, line: 23, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !625, file: !626, line: 992, baseType: !117, size: 64, offset: 10112)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !625, file: !626, line: 993, baseType: !117, size: 64, offset: 10176)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !625, file: !626, line: 996, baseType: !349, offset: 10240)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !625, file: !626, line: 999, baseType: !543, offset: 10240)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !625, file: !626, line: 1001, baseType: !1046, size: 64, offset: 10240)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !626, line: 636, size: 64, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1046, file: !626, line: 637, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !625, file: !626, line: 1005, baseType: !759, size: 128, offset: 10304)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !625, file: !626, line: 1007, baseType: !624, size: 64, offset: 10432)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !625, file: !626, line: 1009, baseType: !1053, size: 64, offset: 10496)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !626, line: 1009, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !625, file: !626, line: 1043, baseType: !90, size: 64, offset: 10560)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !625, file: !626, line: 1046, baseType: !1057, size: 64, offset: 10624)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !626, line: 41, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !625, file: !626, line: 1050, baseType: !1060, size: 64, offset: 10688)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !626, line: 42, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !625, file: !626, line: 1054, baseType: !1063, size: 64, offset: 10752)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !626, line: 55, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !625, file: !626, line: 1056, baseType: !1066, size: 64, offset: 10816)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !626, line: 40, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !625, file: !626, line: 1058, baseType: !1069, size: 64, offset: 10880)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !626, line: 47, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !625, file: !626, line: 1061, baseType: !1072, size: 64, offset: 10944)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !626, line: 43, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !625, file: !626, line: 1064, baseType: !184, size: 64, offset: 11008)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !625, file: !626, line: 1065, baseType: !1076, size: 64, offset: 11072)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1024, line: 14, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1024, line: 12, size: 384, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !1024, line: 13, baseType: !1081, size: 384)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !1024, line: 13, size: 384, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1081, file: !1024, line: 13, baseType: !89, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1081, file: !1024, line: 13, baseType: !89, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1081, file: !1024, line: 13, baseType: !89, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1081, file: !1024, line: 13, baseType: !1087, size: 256, offset: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1088, line: 32, size: 256, elements: !1089)
!1088 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1089 = !{!1090, !1096, !1109, !1115, !1124, !1144, !1149}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1087, file: !1088, line: 37, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 34, size: 64, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1091, file: !1088, line: 35, baseType: !875, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1091, file: !1088, line: 36, baseType: !1095, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !201, line: 49, baseType: !5)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1087, file: !1088, line: 45, baseType: !1097, size: 192)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 40, size: 192, elements: !1098)
!1098 = !{!1099, !1101, !1102, !1108}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1097, file: !1088, line: 41, baseType: !1100, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !201, line: 95, baseType: !89)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1097, file: !1088, line: 42, baseType: !89, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1097, file: !1088, line: 43, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1088, line: 11, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1088, line: 8, size: 64, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1104, file: !1088, line: 9, baseType: !89, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1104, file: !1088, line: 10, baseType: !90, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1097, file: !1088, line: 44, baseType: !89, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1087, file: !1088, line: 52, baseType: !1110, size: 128)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 48, size: 128, elements: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1110, file: !1088, line: 49, baseType: !875, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1110, file: !1088, line: 50, baseType: !1095, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1110, file: !1088, line: 51, baseType: !1103, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1087, file: !1088, line: 61, baseType: !1116, size: 256)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 55, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1116, file: !1088, line: 56, baseType: !875, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1116, file: !1088, line: 57, baseType: !1095, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1116, file: !1088, line: 58, baseType: !89, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1116, file: !1088, line: 59, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !201, line: 94, baseType: !423)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1116, file: !1088, line: 60, baseType: !1122, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1087, file: !1088, line: 95, baseType: !1125, size: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 64, size: 256, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1125, file: !1088, line: 65, baseType: !90, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1088, line: 77, baseType: !1129, size: 192, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !1088, line: 77, size: 192, elements: !1130)
!1130 = !{!1131, !1132, !1139}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1129, file: !1088, line: 82, baseType: !613, size: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1129, file: !1088, line: 88, baseType: !1133, size: 192)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !1088, line: 84, size: 192, elements: !1134)
!1134 = !{!1135, !1137, !1138}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1133, file: !1088, line: 85, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !738)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1133, file: !1088, line: 86, baseType: !90, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1133, file: !1088, line: 87, baseType: !90, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1129, file: !1088, line: 93, baseType: !1140, size: 96)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !1088, line: 90, size: 96, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1140, file: !1088, line: 91, baseType: !1136, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1140, file: !1088, line: 92, baseType: !113, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1087, file: !1088, line: 101, baseType: !1145, size: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 98, size: 128, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1145, file: !1088, line: 99, baseType: !424, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1145, file: !1088, line: 100, baseType: !89, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1087, file: !1088, line: 108, baseType: !1150, size: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1088, line: 104, size: 128, elements: !1151)
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1150, file: !1088, line: 105, baseType: !90, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1150, file: !1088, line: 106, baseType: !89, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1150, file: !1088, line: 107, baseType: !5, size: 32, offset: 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !625, file: !626, line: 1067, baseType: !1156, offset: 11136)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1157, line: 12, elements: !363)
!1157 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !625, file: !626, line: 1099, baseType: !1159, size: 64, offset: 11136)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !626, line: 56, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !625, file: !626, line: 1103, baseType: !336, size: 128, offset: 11200)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !625, file: !626, line: 1104, baseType: !1163, size: 64, offset: 11328)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !626, line: 46, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !625, file: !626, line: 1105, baseType: !595, size: 192, offset: 11392)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !625, file: !626, line: 1106, baseType: !5, size: 32, offset: 11584)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !625, file: !626, line: 1109, baseType: !1168, size: 128, offset: 11648)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 128, elements: !1171)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !626, line: 51, flags: DIFlagFwdDecl)
!1171 = !{!1172}
!1172 = !DISubrange(count: 2)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !625, file: !626, line: 1110, baseType: !595, size: 192, offset: 11776)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !625, file: !626, line: 1111, baseType: !336, size: 128, offset: 11968)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !625, file: !626, line: 1173, baseType: !1176, size: 64, offset: 12096)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1178, line: 62, size: 256, align: 256, elements: !1179)
!1178 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1181, !1182, !1187}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1177, file: !1178, line: 75, baseType: !113, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1177, file: !1178, line: 90, baseType: !113, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1177, file: !1178, line: 124, baseType: !1183, size: 64, offset: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !1178, line: 109, size: 64, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1183, file: !1178, line: 110, baseType: !118, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1183, file: !1178, line: 112, baseType: !118, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !1178, line: 144, baseType: !113, size: 32, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !625, file: !626, line: 1174, baseType: !111, size: 32, offset: 12160)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !625, file: !626, line: 1179, baseType: !184, size: 64, offset: 12224)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !625, file: !626, line: 1182, baseType: !1191, size: 128, offset: 12288)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !573, line: 76, size: 128, elements: !1192)
!1192 = !{!1193, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1191, file: !573, line: 85, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1195, line: 7, size: 64, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1194, file: !1195, line: 12, baseType: !782, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1191, file: !573, line: 88, baseType: !300, size: 8, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1191, file: !573, line: 95, baseType: !300, size: 8, offset: 72)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 1184, baseType: !1201, size: 128, offset: 12416)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 1184, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1201, file: !626, line: 1185, baseType: !638, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1201, file: !626, line: 1186, baseType: !913, size: 128, align: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !625, file: !626, line: 1190, baseType: !1206, size: 64, offset: 12544)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !270, line: 13, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !625, file: !626, line: 1192, baseType: !1209, size: 128, offset: 12608)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !573, line: 64, size: 128, elements: !1210)
!1210 = !{!1211, !1304, !1305}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1209, file: !573, line: 65, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !473, line: 68, size: 512, align: 128, elements: !1214)
!1214 = !{!1215, !1216, !1296, !1303}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !473, line: 69, baseType: !184, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !473, line: 77, baseType: !1217, size: 320, offset: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !473, line: 77, size: 320, elements: !1218)
!1218 = !{!1219, !1228, !1233, !1261, !1269, !1275, !1288, !1295}
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 78, baseType: !1220, size: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 78, size: 320, elements: !1221)
!1221 = !{!1222, !1223, !1226, !1227}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1220, file: !473, line: 84, baseType: !336, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1220, file: !473, line: 86, baseType: !1224, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !473, line: 26, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1220, file: !473, line: 87, baseType: !184, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1220, file: !473, line: 94, baseType: !184, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 96, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 96, size: 64, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1229, file: !473, line: 101, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !88, line: 143, baseType: !117)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 103, baseType: !1234, size: 320)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 103, size: 320, elements: !1235)
!1235 = !{!1236, !1246, !1249, !1250}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !473, line: 104, baseType: !1237, size: 128)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !473, line: 104, size: 128, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1237, file: !473, line: 105, baseType: !336, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !473, line: 106, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !473, line: 106, size: 128, elements: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1241, file: !473, line: 107, baseType: !1212, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1241, file: !473, line: 109, baseType: !89, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1241, file: !473, line: 110, baseType: !89, size: 32, offset: 96)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1234, file: !473, line: 117, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !473, line: 117, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1234, file: !473, line: 119, baseType: !90, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !473, line: 120, baseType: !1251, size: 64, offset: 256)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !473, line: 120, size: 64, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1251, file: !473, line: 121, baseType: !90, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1251, file: !473, line: 122, baseType: !184, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !473, line: 123, baseType: !1256, size: 32)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !473, line: 123, size: 32, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1256, file: !473, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1256, file: !473, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1256, file: !473, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 130, baseType: !1262, size: 192)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 130, size: 192, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1262, file: !473, line: 131, baseType: !184, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1262, file: !473, line: 134, baseType: !108, size: 8, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1262, file: !473, line: 135, baseType: !108, size: 8, offset: 72)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1262, file: !473, line: 136, baseType: !518, size: 32, offset: 96)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1262, file: !473, line: 137, baseType: !5, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 139, baseType: !1270, size: 256)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 139, size: 256, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1270, file: !473, line: 140, baseType: !184, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1270, file: !473, line: 141, baseType: !518, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1270, file: !473, line: 143, baseType: !336, size: 128, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 145, baseType: !1276, size: 256)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 145, size: 256, elements: !1277)
!1277 = !{!1278, !1279, !1281, !1282, !1287}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1276, file: !473, line: 146, baseType: !184, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1276, file: !473, line: 147, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !465, line: 509, baseType: !1212)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1276, file: !473, line: 148, baseType: !184, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !473, line: 149, baseType: !1283, size: 64, offset: 192)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1276, file: !473, line: 149, size: 64, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1283, file: !473, line: 150, baseType: !489, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1283, file: !473, line: 151, baseType: !518, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1276, file: !473, line: 156, baseType: !349, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !473, line: 159, baseType: !1289, size: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !473, line: 159, size: 128, elements: !1290)
!1290 = !{!1291, !1294}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1289, file: !473, line: 161, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !473, line: 161, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1289, file: !473, line: 162, baseType: !90, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1217, file: !473, line: 176, baseType: !913, size: 128, align: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !473, line: 179, baseType: !1297, size: 32, offset: 384)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !473, line: 179, size: 32, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1297, file: !473, line: 184, baseType: !518, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1297, file: !473, line: 192, baseType: !5, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1297, file: !473, line: 194, baseType: !5, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1297, file: !473, line: 195, baseType: !89, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1213, file: !473, line: 199, baseType: !518, size: 32, offset: 416)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1209, file: !573, line: 67, baseType: !113, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1209, file: !573, line: 68, baseType: !113, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !625, file: !626, line: 1206, baseType: !89, size: 32, offset: 12736)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !625, file: !626, line: 1207, baseType: !89, size: 32, offset: 12768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !625, file: !626, line: 1209, baseType: !184, size: 64, offset: 12800)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !625, file: !626, line: 1219, baseType: !117, size: 64, offset: 12864)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !625, file: !626, line: 1220, baseType: !117, size: 64, offset: 12928)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !625, file: !626, line: 1317, baseType: !89, size: 32, offset: 12992)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !625, file: !626, line: 1319, baseType: !624, size: 64, offset: 13056)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !625, file: !626, line: 1322, baseType: !1314, size: 64, offset: 13120)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !626, line: 1322, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !625, file: !626, line: 1326, baseType: !638, size: 32, offset: 13184)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !625, file: !626, line: 1342, baseType: !90, size: 64, offset: 13248)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !625, file: !626, line: 1343, baseType: !118, size: 64, offset: 13312)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !625, file: !626, line: 1344, baseType: !117, size: 64, offset: 13376)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !625, file: !626, line: 1345, baseType: !118, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !625, file: !626, line: 1346, baseType: !118, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !625, file: !626, line: 1347, baseType: !118, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !625, file: !626, line: 1348, baseType: !913, size: 128, align: 64, offset: 13504)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !625, file: !626, line: 1358, baseType: !1325, size: 34816, offset: 13824)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1326, line: 485, size: 34816, elements: !1327)
!1326 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !{!1328, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1357, !1358, !1359, !1360, !1361, !1362, !1365, !1366, !1367}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1325, file: !1326, line: 487, baseType: !1329, size: 192)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 192, elements: !391)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1331, line: 16, size: 64, elements: !1332)
!1331 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1330, file: !1331, line: 17, baseType: !608, size: 16)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1330, file: !1331, line: 18, baseType: !608, size: 16, offset: 16)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1330, file: !1331, line: 19, baseType: !608, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1330, file: !1331, line: 19, baseType: !608, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1330, file: !1331, line: 19, baseType: !608, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1330, file: !1331, line: 19, baseType: !608, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1330, file: !1331, line: 19, baseType: !608, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1330, file: !1331, line: 20, baseType: !608, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1330, file: !1331, line: 20, baseType: !608, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1330, file: !1331, line: 20, baseType: !608, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1330, file: !1331, line: 20, baseType: !608, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1330, file: !1331, line: 20, baseType: !608, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1330, file: !1331, line: 20, baseType: !608, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1325, file: !1326, line: 491, baseType: !184, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1325, file: !1326, line: 495, baseType: !431, size: 16, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1325, file: !1326, line: 496, baseType: !431, size: 16, offset: 272)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1325, file: !1326, line: 497, baseType: !431, size: 16, offset: 288)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1325, file: !1326, line: 498, baseType: !431, size: 16, offset: 304)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1325, file: !1326, line: 502, baseType: !184, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1325, file: !1326, line: 503, baseType: !184, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1325, file: !1326, line: 514, baseType: !1354, size: 256, offset: 448)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !577)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1326, line: 483, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1325, file: !1326, line: 516, baseType: !184, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1325, file: !1326, line: 518, baseType: !184, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1325, file: !1326, line: 520, baseType: !184, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1325, file: !1326, line: 521, baseType: !184, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1325, file: !1326, line: 522, baseType: !184, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1325, file: !1326, line: 528, baseType: !1363, size: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1326, line: 10, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1325, file: !1326, line: 535, baseType: !184, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1325, file: !1326, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1325, file: !1326, line: 540, baseType: !1368, size: 33280, offset: 1536)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1369, line: 317, size: 33280, elements: !1370)
!1369 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !{!1371, !1372, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1368, file: !1369, line: 330, baseType: !5, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1368, file: !1369, line: 337, baseType: !184, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1368, file: !1369, line: 348, baseType: !1374, size: 32768, offset: 512)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1369, line: 304, size: 32768, elements: !1375)
!1375 = !{!1376, !1391, !1430, !1480, !1497}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1374, file: !1369, line: 305, baseType: !1377, size: 896)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1369, line: 12, size: 896, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1390}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1377, file: !1369, line: 13, baseType: !111, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1377, file: !1369, line: 14, baseType: !111, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1377, file: !1369, line: 15, baseType: !111, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1377, file: !1369, line: 16, baseType: !111, size: 32, offset: 96)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1377, file: !1369, line: 17, baseType: !111, size: 32, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1377, file: !1369, line: 18, baseType: !111, size: 32, offset: 160)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1377, file: !1369, line: 19, baseType: !111, size: 32, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1377, file: !1369, line: 22, baseType: !1387, size: 640, offset: 224)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 20)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1377, file: !1369, line: 25, baseType: !111, size: 32, offset: 864)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1374, file: !1369, line: 306, baseType: !1392, size: 4096, align: 128)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1369, line: 34, size: 4096, align: 128, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1413, !1414, !1415, !1419, !1421, !1425}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1392, file: !1369, line: 35, baseType: !608, size: 16)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1392, file: !1369, line: 36, baseType: !608, size: 16, offset: 16)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1392, file: !1369, line: 37, baseType: !608, size: 16, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1392, file: !1369, line: 38, baseType: !608, size: 16, offset: 48)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1369, line: 39, baseType: !1399, size: 128, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !1369, line: 39, size: 128, elements: !1400)
!1400 = !{!1401, !1406}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1369, line: 40, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !1369, line: 40, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1402, file: !1369, line: 41, baseType: !117, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1402, file: !1369, line: 42, baseType: !117, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1369, line: 44, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !1369, line: 44, size: 128, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1407, file: !1369, line: 45, baseType: !111, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1407, file: !1369, line: 46, baseType: !111, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1407, file: !1369, line: 47, baseType: !111, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1407, file: !1369, line: 48, baseType: !111, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1392, file: !1369, line: 51, baseType: !111, size: 32, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1392, file: !1369, line: 52, baseType: !111, size: 32, offset: 224)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1392, file: !1369, line: 55, baseType: !1416, size: 1024, offset: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1392, file: !1369, line: 58, baseType: !1420, size: 2048, offset: 1280)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2048, elements: !395)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1392, file: !1369, line: 60, baseType: !1422, size: 384, offset: 3328)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 384, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 12)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1369, line: 62, baseType: !1426, size: 384, offset: 3712)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !1369, line: 62, size: 384, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1426, file: !1369, line: 63, baseType: !1422, size: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1426, file: !1369, line: 64, baseType: !1422, size: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1374, file: !1369, line: 307, baseType: !1431, size: 1088)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1369, line: 79, size: 1088, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1479}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1431, file: !1369, line: 80, baseType: !111, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1431, file: !1369, line: 81, baseType: !111, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1431, file: !1369, line: 82, baseType: !111, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1431, file: !1369, line: 83, baseType: !111, size: 32, offset: 96)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1431, file: !1369, line: 84, baseType: !111, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1431, file: !1369, line: 85, baseType: !111, size: 32, offset: 160)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1431, file: !1369, line: 86, baseType: !111, size: 32, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1431, file: !1369, line: 88, baseType: !1387, size: 640, offset: 224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1431, file: !1369, line: 89, baseType: !243, size: 8, offset: 864)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1431, file: !1369, line: 90, baseType: !243, size: 8, offset: 872)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1431, file: !1369, line: 91, baseType: !243, size: 8, offset: 880)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1431, file: !1369, line: 92, baseType: !243, size: 8, offset: 888)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1431, file: !1369, line: 93, baseType: !243, size: 8, offset: 896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1431, file: !1369, line: 94, baseType: !243, size: 8, offset: 904)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1431, file: !1369, line: 95, baseType: !1448, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1450, line: 11, size: 128, elements: !1451)
!1450 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1449, file: !1450, line: 12, baseType: !424, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1449, file: !1450, line: 13, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1456, line: 56, size: 1344, elements: !1457)
!1456 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1455, file: !1456, line: 61, baseType: !184, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1455, file: !1456, line: 62, baseType: !184, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1455, file: !1456, line: 63, baseType: !184, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1455, file: !1456, line: 64, baseType: !184, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1455, file: !1456, line: 65, baseType: !184, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1455, file: !1456, line: 66, baseType: !184, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1455, file: !1456, line: 68, baseType: !184, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1455, file: !1456, line: 69, baseType: !184, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1455, file: !1456, line: 70, baseType: !184, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1455, file: !1456, line: 71, baseType: !184, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1455, file: !1456, line: 72, baseType: !184, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1455, file: !1456, line: 73, baseType: !184, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1455, file: !1456, line: 74, baseType: !184, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1455, file: !1456, line: 75, baseType: !184, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1455, file: !1456, line: 76, baseType: !184, size: 64, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1455, file: !1456, line: 81, baseType: !184, size: 64, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1455, file: !1456, line: 83, baseType: !184, size: 64, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1455, file: !1456, line: 84, baseType: !184, size: 64, offset: 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !1456, line: 85, baseType: !184, size: 64, offset: 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1455, file: !1456, line: 86, baseType: !184, size: 64, offset: 1216)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1455, file: !1456, line: 87, baseType: !184, size: 64, offset: 1280)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1431, file: !1369, line: 96, baseType: !111, size: 32, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1374, file: !1369, line: 308, baseType: !1481, size: 4608, align: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1369, line: 289, size: 4608, align: 512, elements: !1482)
!1482 = !{!1483, !1484, !1493}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1481, file: !1369, line: 290, baseType: !1392, size: 4096, align: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1481, file: !1369, line: 291, baseType: !1485, size: 512, offset: 4096)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1369, line: 268, size: 512, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1485, file: !1369, line: 269, baseType: !117, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1485, file: !1369, line: 270, baseType: !117, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1485, file: !1369, line: 271, baseType: !1490, size: 384, offset: 128)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 384, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 6)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1481, file: !1369, line: 292, baseType: !1494, offset: 4608)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 0)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1374, file: !1369, line: 309, baseType: !1498, size: 32768)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 32768, elements: !1499)
!1499 = !{!1500}
!1500 = !DISubrange(count: 4096)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !473, line: 378, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !617, file: !473, line: 384, baseType: !935, size: 192, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !493, file: !473, line: 500, baseType: !349, offset: 6656)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !493, file: !473, line: 501, baseType: !1506, size: 64, offset: 6656)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !473, line: 387, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !493, file: !473, line: 516, baseType: !1509, size: 64, offset: 6720)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1511, line: 18, flags: DIFlagFwdDecl)
!1511 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !493, file: !473, line: 519, baseType: !463, size: 64, offset: 6784)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !493, file: !473, line: 521, baseType: !1514, size: 64, offset: 6848)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !473, line: 521, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !493, file: !473, line: 545, baseType: !518, size: 32, offset: 6912)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !493, file: !473, line: 548, baseType: !300, size: 8, offset: 6944)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !493, file: !473, line: 550, baseType: !1519, offset: 6952)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1520, line: 142, elements: !363)
!1520 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !493, file: !473, line: 554, baseType: !1522, size: 256, offset: 6976)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1523, line: 102, size: 256, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1524 = !{!1525, !1526, !1527}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1522, file: !1523, line: 103, baseType: !526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1522, file: !1523, line: 104, baseType: !336, size: 128, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1522, file: !1523, line: 105, baseType: !1528, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1523, line: 21, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !493, file: !473, line: 557, baseType: !111, size: 32, offset: 7232)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !490, file: !473, line: 565, baseType: !1535, offset: 7296)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, elements: !1536)
!1536 = !{!1537}
!1537 = !DISubrange(count: -1)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !472, file: !473, line: 333, baseType: !1539, size: 64, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !465, line: 284, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !465, line: 284, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1540, file: !465, line: 284, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !516, line: 19, baseType: !184)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !472, file: !473, line: 334, baseType: !184, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !472, file: !473, line: 343, baseType: !1546, size: 256, offset: 704)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !473, line: 340, size: 256, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1546, file: !473, line: 341, baseType: !480, size: 192, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1546, file: !473, line: 342, baseType: !184, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !472, file: !473, line: 351, baseType: !336, size: 128, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !472, file: !473, line: 353, baseType: !1552, size: 64, offset: 1088)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !473, line: 353, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !472, file: !473, line: 356, baseType: !1555, size: 64, offset: 1152)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !473, line: 356, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !472, file: !473, line: 359, baseType: !184, size: 64, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !472, file: !473, line: 361, baseType: !463, size: 64, offset: 1280)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !472, file: !473, line: 362, baseType: !90, size: 64, offset: 1344)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !472, file: !473, line: 365, baseType: !526, size: 64, offset: 1408)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !472, file: !473, line: 373, baseType: !1563, offset: 1472)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !473, line: 296, elements: !363)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !442, file: !415, line: 90, baseType: !437, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !442, file: !415, line: 91, baseType: !1566, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !405, file: !332, line: 143, baseType: !1568, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1571, !342}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1574)
!1574 = !{!1575, !1576, !1580, !1584, !1592, !1596}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1573, file: !16, line: 40, baseType: !15, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1573, file: !16, line: 41, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!300}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1573, file: !16, line: 42, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!90}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1573, file: !16, line: 43, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1588, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1573, file: !16, line: 44, baseType: !1593, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1588}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1573, file: !16, line: 45, baseType: !1597, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !90}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !405, file: !332, line: 144, baseType: !1601, size: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1588, !342}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !405, file: !332, line: 145, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !342, !1608, !1614}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1511, line: 23, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1511, line: 21, size: 32, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1610, file: !1511, line: 22, baseType: !1613, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !88, line: 32, baseType: !1095)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1511, line: 28, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1511, line: 26, size: 32, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1616, file: !1511, line: 27, baseType: !1619, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !88, line: 33, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !201, line: 50, baseType: !5)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !331, file: !332, line: 70, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1624, line: 123, size: 1024, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1767, !1768, !1769, !1770, !1771}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1623, file: !1624, line: 124, baseType: !518, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1623, file: !1624, line: 125, baseType: !518, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1623, file: !1624, line: 135, baseType: !1622, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1623, file: !1624, line: 136, baseType: !131, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1623, file: !1624, line: 138, baseType: !480, size: 192, align: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1623, file: !1624, line: 140, baseType: !1588, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1623, file: !1624, line: 141, baseType: !5, size: 32, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1624, line: 142, baseType: !1634, size: 256, offset: 512)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !1624, line: 142, size: 256, elements: !1635)
!1635 = !{!1636, !1690, !1694}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1634, file: !1624, line: 143, baseType: !1637, size: 192)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1624, line: 91, size: 192, elements: !1638)
!1638 = !{!1639, !1640, !1641}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1637, file: !1624, line: 92, baseType: !184, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1637, file: !1624, line: 94, baseType: !497, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1637, file: !1624, line: 100, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1624, line: 180, size: 704, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1660, !1661, !1662, !1688, !1689}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1643, file: !1624, line: 182, baseType: !1622, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1643, file: !1624, line: 183, baseType: !5, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1643, file: !1624, line: 186, baseType: !1648, size: 192, offset: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1649, line: 19, size: 192, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1658, !1659}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1648, file: !1649, line: 20, baseType: !1652, size: 128)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1653, line: 292, size: 128, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1652, file: !1653, line: 293, baseType: !349)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1652, file: !1653, line: 295, baseType: !87, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1652, file: !1653, line: 296, baseType: !90, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1648, file: !1649, line: 21, baseType: !5, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1648, file: !1649, line: 22, baseType: !5, size: 32, offset: 160)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1643, file: !1624, line: 187, baseType: !111, size: 32, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1643, file: !1624, line: 188, baseType: !111, size: 32, offset: 352)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1643, file: !1624, line: 189, baseType: !1663, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1624, line: 168, size: 320, elements: !1665)
!1665 = !{!1666, !1672, !1676, !1680, !1684}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1664, file: !1624, line: 169, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!89, !1670, !1642}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !465, line: 539, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1664, file: !1624, line: 171, baseType: !1673, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!89, !1622, !131, !430}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1664, file: !1624, line: 173, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!89, !1622}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1664, file: !1624, line: 174, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!89, !1622, !1622, !131}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1664, file: !1624, line: 176, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!89, !1670, !1622, !1642}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1643, file: !1624, line: 192, baseType: !336, size: 128, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1643, file: !1624, line: 194, baseType: !906, size: 128, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1634, file: !1624, line: 144, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1624, line: 103, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1691, file: !1624, line: 104, baseType: !1622, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1634, file: !1624, line: 145, baseType: !1695, size: 256)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1624, line: 107, size: 256, elements: !1696)
!1696 = !{!1697, !1762, !1765, !1766}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1695, file: !1624, line: 108, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1624, line: 217, size: 768, elements: !1701)
!1701 = !{!1702, !1722, !1726, !1730, !1735, !1739, !1743, !1747, !1748, !1749, !1750, !1758}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1700, file: !1624, line: 222, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!89, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1624, line: 197, size: 1088, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1707, file: !1624, line: 199, baseType: !1622, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1707, file: !1624, line: 200, baseType: !463, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1707, file: !1624, line: 201, baseType: !1670, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1707, file: !1624, line: 202, baseType: !90, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1707, file: !1624, line: 205, baseType: !595, size: 192, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1707, file: !1624, line: 206, baseType: !595, size: 192, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1707, file: !1624, line: 207, baseType: !89, size: 32, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1707, file: !1624, line: 208, baseType: !336, size: 128, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1707, file: !1624, line: 209, baseType: !390, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1707, file: !1624, line: 211, baseType: !203, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1707, file: !1624, line: 212, baseType: !300, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1707, file: !1624, line: 213, baseType: !300, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1707, file: !1624, line: 214, baseType: !1555, size: 64, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1700, file: !1624, line: 223, baseType: !1723, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1706}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1700, file: !1624, line: 236, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!89, !1670, !90}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1700, file: !1624, line: 238, baseType: !1731, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!90, !1670, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1700, file: !1624, line: 239, baseType: !1736, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!90, !1670, !90, !1734}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1700, file: !1624, line: 240, baseType: !1740, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1670, !90}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1700, file: !1624, line: 242, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!421, !1706, !390, !203, !199}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1700, file: !1624, line: 252, baseType: !203, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1700, file: !1624, line: 259, baseType: !300, size: 8, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1700, file: !1624, line: 260, baseType: !1744, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1700, file: !1624, line: 263, baseType: !1751, size: 64, offset: 640)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1754, !1706, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1755, line: 52, baseType: !5)
!1755 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1624, line: 27, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1700, file: !1624, line: 266, baseType: !1759, size: 64, offset: 704)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!89, !1706, !471}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1695, file: !1624, line: 109, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1624, line: 31, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1695, file: !1624, line: 110, baseType: !199, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1695, file: !1624, line: 111, baseType: !1622, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1623, file: !1624, line: 148, baseType: !90, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1623, file: !1624, line: 154, baseType: !117, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1623, file: !1624, line: 156, baseType: !431, size: 16, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1623, file: !1624, line: 157, baseType: !430, size: 16, offset: 912)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1623, file: !1624, line: 158, baseType: !1772, size: 64, offset: 960)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1624, line: 32, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !331, file: !332, line: 71, baseType: !1775, size: 32, offset: 448)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1776, line: 19, size: 32, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1775, file: !1776, line: 20, baseType: !638, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !331, file: !332, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !331, file: !332, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !331, file: !332, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !331, file: !332, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !331, file: !332, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !328, file: !28, line: 463, baseType: !1785, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !328, file: !28, line: 465, baseType: !1787, size: 64, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !328, file: !28, line: 467, baseType: !131, size: 64, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !328, file: !28, line: 468, baseType: !1791, size: 64, offset: 704)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1801, !1806, !1810}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1793, file: !28, line: 88, baseType: !131, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1793, file: !28, line: 89, baseType: !439, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1793, file: !28, line: 90, baseType: !1798, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!89, !1785, !385}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1793, file: !28, line: 91, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!390, !1785, !1805, !1608, !1614}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1793, file: !28, line: 93, baseType: !1807, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1785}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1793, file: !28, line: 95, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1814)
!1814 = !{!1815, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1813, file: !35, line: 279, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!89, !1785}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1813, file: !35, line: 280, baseType: !1807, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1813, file: !35, line: 281, baseType: !1816, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1813, file: !35, line: 282, baseType: !1816, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1813, file: !35, line: 283, baseType: !1816, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1813, file: !35, line: 284, baseType: !1816, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1813, file: !35, line: 285, baseType: !1816, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1813, file: !35, line: 286, baseType: !1816, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1813, file: !35, line: 287, baseType: !1816, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1813, file: !35, line: 288, baseType: !1816, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1813, file: !35, line: 289, baseType: !1816, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1813, file: !35, line: 290, baseType: !1816, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1813, file: !35, line: 291, baseType: !1816, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1813, file: !35, line: 292, baseType: !1816, size: 64, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1813, file: !35, line: 293, baseType: !1816, size: 64, offset: 896)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1813, file: !35, line: 294, baseType: !1816, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1813, file: !35, line: 295, baseType: !1816, size: 64, offset: 1024)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1813, file: !35, line: 296, baseType: !1816, size: 64, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1813, file: !35, line: 297, baseType: !1816, size: 64, offset: 1152)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1813, file: !35, line: 298, baseType: !1816, size: 64, offset: 1216)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1813, file: !35, line: 299, baseType: !1816, size: 64, offset: 1280)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1813, file: !35, line: 300, baseType: !1816, size: 64, offset: 1344)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1813, file: !35, line: 301, baseType: !1816, size: 64, offset: 1408)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !328, file: !28, line: 470, baseType: !1842, size: 64, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1844, line: 82, size: 1408, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851, !1852, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1928, !1931, !1934}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1843, file: !1844, line: 83, baseType: !131, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1843, file: !1844, line: 84, baseType: !131, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1843, file: !1844, line: 85, baseType: !1785, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1843, file: !1844, line: 86, baseType: !439, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1843, file: !1844, line: 87, baseType: !439, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1843, file: !1844, line: 88, baseType: !439, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1843, file: !1844, line: 90, baseType: !1853, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!89, !1785, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1879, !1892, !1893, !1894, !1895, !1896, !1904, !1905, !1906, !1907, !1908, !1909}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !22, line: 96, baseType: !131, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1857, file: !22, line: 97, baseType: !1842, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1857, file: !22, line: 99, baseType: !324, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1857, file: !22, line: 100, baseType: !131, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1857, file: !22, line: 102, baseType: !300, size: 8, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1857, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1857, file: !22, line: 105, baseType: !1866, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1869, line: 262, size: 1600, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !{!1871, !1873, !1874, !1878}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !1869, line: 263, baseType: !1872, size: 256)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !1417)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1868, file: !1869, line: 264, baseType: !1872, size: 256, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1868, file: !1869, line: 265, baseType: !1875, size: 1024, offset: 512)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1868, file: !1869, line: 266, baseType: !1588, size: 64, offset: 1536)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1857, file: !22, line: 106, baseType: !1880, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1869, line: 210, size: 256, elements: !1883)
!1883 = !{!1884, !1888, !1890, !1891}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1882, file: !1869, line: 211, baseType: !1885, size: 72)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 72, elements: !1886)
!1886 = !{!1887}
!1887 = !DISubrange(count: 9)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1882, file: !1869, line: 212, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1869, line: 14, baseType: !184)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1882, file: !1869, line: 213, baseType: !113, size: 32, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1882, file: !1869, line: 214, baseType: !113, size: 32, offset: 224)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1857, file: !22, line: 108, baseType: !1816, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1857, file: !22, line: 109, baseType: !1807, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1857, file: !22, line: 110, baseType: !1816, size: 64, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1857, file: !22, line: 111, baseType: !1807, size: 64, offset: 640)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1857, file: !22, line: 112, baseType: !1897, size: 64, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!89, !1785, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1901, file: !35, line: 51, baseType: !89, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1857, file: !22, line: 113, baseType: !1816, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1857, file: !22, line: 114, baseType: !439, size: 64, offset: 832)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1857, file: !22, line: 115, baseType: !439, size: 64, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1857, file: !22, line: 117, baseType: !1811, size: 64, offset: 960)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1857, file: !22, line: 118, baseType: !1807, size: 64, offset: 1024)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1857, file: !22, line: 120, baseType: !1910, size: 64, offset: 1088)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1843, file: !1844, line: 91, baseType: !1798, size: 64, offset: 448)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1843, file: !1844, line: 92, baseType: !1816, size: 64, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1843, file: !1844, line: 93, baseType: !1807, size: 64, offset: 576)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1843, file: !1844, line: 94, baseType: !1816, size: 64, offset: 640)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1843, file: !1844, line: 95, baseType: !1807, size: 64, offset: 704)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1843, file: !1844, line: 97, baseType: !1816, size: 64, offset: 768)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1843, file: !1844, line: 98, baseType: !1816, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1843, file: !1844, line: 100, baseType: !1897, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1843, file: !1844, line: 101, baseType: !1816, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1843, file: !1844, line: 103, baseType: !1816, size: 64, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1843, file: !1844, line: 105, baseType: !1816, size: 64, offset: 1088)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1843, file: !1844, line: 107, baseType: !1811, size: 64, offset: 1152)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1843, file: !1844, line: 109, baseType: !1925, size: 64, offset: 1216)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1844, line: 109, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1843, file: !1844, line: 111, baseType: !1929, size: 64, offset: 1280)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1844, line: 111, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1843, file: !1844, line: 112, baseType: !1932, offset: 1344)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1933, line: 187, elements: !363)
!1933 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1843, file: !1844, line: 114, baseType: !300, size: 8, offset: 1344)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !328, file: !28, line: 471, baseType: !1856, size: 64, offset: 832)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !328, file: !28, line: 473, baseType: !90, size: 64, offset: 896)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !328, file: !28, line: 475, baseType: !90, size: 64, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !328, file: !28, line: 480, baseType: !595, size: 192, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !328, file: !28, line: 484, baseType: !1940, size: 576, offset: 1216)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1940, file: !28, line: 362, baseType: !336, size: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1940, file: !28, line: 363, baseType: !336, size: 128, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1940, file: !28, line: 364, baseType: !336, size: 128, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1940, file: !28, line: 365, baseType: !336, size: 128, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1940, file: !28, line: 366, baseType: !300, size: 8, offset: 512)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1940, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !328, file: !28, line: 485, baseType: !1949, size: 2304, offset: 1792)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2046, !2050}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1949, file: !35, line: 566, baseType: !1900, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1949, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1949, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1949, file: !35, line: 569, baseType: !300, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1949, file: !35, line: 570, baseType: !300, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1949, file: !35, line: 571, baseType: !300, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1949, file: !35, line: 572, baseType: !300, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1949, file: !35, line: 573, baseType: !300, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1949, file: !35, line: 574, baseType: !300, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1949, file: !35, line: 575, baseType: !300, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1949, file: !35, line: 576, baseType: !300, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1949, file: !35, line: 577, baseType: !111, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1949, file: !35, line: 578, baseType: !349, offset: 96)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1949, file: !35, line: 580, baseType: !336, size: 128, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1949, file: !35, line: 581, baseType: !935, size: 192, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1949, file: !35, line: 582, baseType: !1967, size: 64, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1969, line: 43, size: 1472, elements: !1970)
!1969 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1978, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1968, file: !1969, line: 44, baseType: !131, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1968, file: !1969, line: 45, baseType: !89, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1968, file: !1969, line: 46, baseType: !336, size: 128, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1968, file: !1969, line: 47, baseType: !349, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1968, file: !1969, line: 48, baseType: !1976, size: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1968, file: !1969, line: 49, baseType: !1979, size: 320, offset: 320)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1980, line: 11, size: 320, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1983, !1984, !1989}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1979, file: !1980, line: 16, baseType: !899, size: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1979, file: !1980, line: 17, baseType: !184, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1979, file: !1980, line: 18, baseType: !1985, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1979, file: !1980, line: 19, baseType: !111, size: 32, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1968, file: !1969, line: 50, baseType: !184, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1968, file: !1969, line: 51, baseType: !708, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1968, file: !1969, line: 52, baseType: !708, size: 64, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1968, file: !1969, line: 53, baseType: !708, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1968, file: !1969, line: 54, baseType: !708, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1968, file: !1969, line: 55, baseType: !708, size: 64, offset: 960)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1968, file: !1969, line: 56, baseType: !184, size: 64, offset: 1024)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1968, file: !1969, line: 57, baseType: !184, size: 64, offset: 1088)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1968, file: !1969, line: 58, baseType: !184, size: 64, offset: 1152)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1968, file: !1969, line: 59, baseType: !184, size: 64, offset: 1216)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1968, file: !1969, line: 60, baseType: !184, size: 64, offset: 1280)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1968, file: !1969, line: 61, baseType: !1785, size: 64, offset: 1344)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1968, file: !1969, line: 62, baseType: !300, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1968, file: !1969, line: 63, baseType: !300, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1949, file: !35, line: 583, baseType: !300, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1949, file: !35, line: 584, baseType: !300, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1949, file: !35, line: 585, baseType: !300, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1949, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1949, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1949, file: !35, line: 592, baseType: !700, size: 512, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1949, file: !35, line: 593, baseType: !117, size: 64, offset: 1088)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1949, file: !35, line: 594, baseType: !1522, size: 256, offset: 1152)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1949, file: !35, line: 595, baseType: !906, size: 128, offset: 1408)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1949, file: !35, line: 596, baseType: !1976, size: 64, offset: 1536)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1949, file: !35, line: 597, baseType: !518, size: 32, offset: 1600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1949, file: !35, line: 598, baseType: !518, size: 32, offset: 1632)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1949, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1949, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1949, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1949, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1949, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1949, file: !35, line: 604, baseType: !300, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1949, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1949, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1949, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1949, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1949, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1949, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1949, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1949, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1949, file: !35, line: 613, baseType: !89, size: 32, offset: 1792)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1949, file: !35, line: 614, baseType: !89, size: 32, offset: 1824)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1949, file: !35, line: 615, baseType: !117, size: 64, offset: 1856)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1949, file: !35, line: 616, baseType: !117, size: 64, offset: 1920)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1949, file: !35, line: 617, baseType: !117, size: 64, offset: 1984)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1949, file: !35, line: 618, baseType: !117, size: 64, offset: 2048)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1949, file: !35, line: 620, baseType: !2037, size: 64, offset: 2112)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2038, file: !35, line: 537, baseType: !349)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2038, file: !35, line: 538, baseType: !5, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2038, file: !35, line: 540, baseType: !336, size: 128, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2038, file: !35, line: 543, baseType: !2044, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1949, file: !35, line: 621, baseType: !2047, size: 64, offset: 2176)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !1785, !859}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1949, file: !35, line: 622, baseType: !2051, size: 64, offset: 2240)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !328, file: !28, line: 486, baseType: !2054, size: 64, offset: 4096)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2063, !2064, !2065}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2055, file: !35, line: 643, baseType: !1813, size: 1472)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2055, file: !35, line: 644, baseType: !1816, size: 64, offset: 1472)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2055, file: !35, line: 645, baseType: !2060, size: 64, offset: 1536)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !1785, !300}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2055, file: !35, line: 646, baseType: !1816, size: 64, offset: 1600)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2055, file: !35, line: 647, baseType: !1807, size: 64, offset: 1664)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2055, file: !35, line: 648, baseType: !1807, size: 64, offset: 1728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !328, file: !28, line: 493, baseType: !2067, size: 64, offset: 4160)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !328, file: !28, line: 499, baseType: !336, size: 128, offset: 4224)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !328, file: !28, line: 502, baseType: !2071, size: 64, offset: 4352)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !328, file: !28, line: 504, baseType: !2075, size: 64, offset: 4416)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !328, file: !28, line: 505, baseType: !117, size: 64, offset: 4480)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !328, file: !28, line: 510, baseType: !117, size: 64, offset: 4544)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !328, file: !28, line: 511, baseType: !2079, size: 64, offset: 4608)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !328, file: !28, line: 513, baseType: !2083, size: 64, offset: 4672)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2084, file: !28, line: 293, baseType: !5, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2084, file: !28, line: 294, baseType: !184, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !328, file: !28, line: 515, baseType: !336, size: 128, offset: 4736)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !328, file: !28, line: 526, baseType: !2090, offset: 4864)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2091, line: 5, elements: !363)
!2091 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !328, file: !28, line: 528, baseType: !2093, size: 64, offset: 4864)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2095, line: 51, size: 1344, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !{!2097, !2098, !2100, !2101, !2191, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2094, file: !2095, line: 52, baseType: !131, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2094, file: !2095, line: 53, baseType: !2099, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2095, line: 28, baseType: !111)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2094, file: !2095, line: 54, baseType: !131, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2094, file: !2095, line: 55, baseType: !2102, size: 192, offset: 192)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2103, line: 17, size: 192, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2107, !2190}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2102, file: !2103, line: 18, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2102, file: !2103, line: 19, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2103, line: 110, size: 1152, elements: !2111)
!2111 = !{!2112, !2116, !2120, !2126, !2132, !2136, !2140, !2145, !2149, !2150, !2154, !2158, !2162, !2173, !2174, !2175, !2176, !2186}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2110, file: !2103, line: 111, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!2106, !2106}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2110, file: !2103, line: 112, baseType: !2117, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2106}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2110, file: !2103, line: 113, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!300, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2110, file: !2103, line: 114, baseType: !2127, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!1588, !2124, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2110, file: !2103, line: 116, baseType: !2133, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!300, !2124, !131}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2110, file: !2103, line: 118, baseType: !2137, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!89, !2124, !131, !5, !90, !203}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2110, file: !2103, line: 123, baseType: !2141, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!89, !2124, !131, !2144, !203}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2110, file: !2103, line: 126, baseType: !2146, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!131, !2124}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2110, file: !2103, line: 127, baseType: !2146, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2110, file: !2103, line: 128, baseType: !2151, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!2106, !2124}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2110, file: !2103, line: 130, baseType: !2155, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!2106, !2124, !2106}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2110, file: !2103, line: 133, baseType: !2159, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2106, !2124, !131}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2110, file: !2103, line: 135, baseType: !2163, size: 64, offset: 768)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!89, !2124, !131, !131, !5, !5, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2103, line: 43, size: 640, elements: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2167, file: !2103, line: 44, baseType: !2106, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2167, file: !2103, line: 45, baseType: !5, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2167, file: !2103, line: 46, baseType: !2172, size: 512, offset: 128)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !738)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2110, file: !2103, line: 140, baseType: !2155, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2110, file: !2103, line: 143, baseType: !2151, size: 64, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2110, file: !2103, line: 145, baseType: !2113, size: 64, offset: 960)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2110, file: !2103, line: 146, baseType: !2177, size: 64, offset: 1024)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!89, !2124, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2103, line: 29, size: 128, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2181, file: !2103, line: 30, baseType: !5, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2181, file: !2103, line: 31, baseType: !5, size: 32, offset: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2181, file: !2103, line: 32, baseType: !2124, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2110, file: !2103, line: 148, baseType: !2187, size: 64, offset: 1088)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!89, !2124, !1785}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2102, file: !2103, line: 20, baseType: !1785, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2094, file: !2095, line: 57, baseType: !2192, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2095, line: 31, size: 704, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2193, file: !2095, line: 32, baseType: !390, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2193, file: !2095, line: 33, baseType: !89, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2193, file: !2095, line: 34, baseType: !90, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2193, file: !2095, line: 35, baseType: !2192, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2193, file: !2095, line: 43, baseType: !454, size: 448, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2094, file: !2095, line: 58, baseType: !2192, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2094, file: !2095, line: 59, baseType: !2093, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2094, file: !2095, line: 60, baseType: !2093, size: 64, offset: 576)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2094, file: !2095, line: 61, baseType: !2093, size: 64, offset: 640)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2094, file: !2095, line: 63, baseType: !331, size: 512, offset: 704)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2094, file: !2095, line: 65, baseType: !184, size: 64, offset: 1216)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2094, file: !2095, line: 66, baseType: !90, size: 64, offset: 1280)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !328, file: !28, line: 529, baseType: !2106, size: 64, offset: 4928)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !328, file: !28, line: 534, baseType: !2209, size: 32, offset: 4992)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !88, line: 16, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !88, line: 13, baseType: !111)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !328, file: !28, line: 535, baseType: !111, size: 32, offset: 5024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !328, file: !28, line: 537, baseType: !349, offset: 5056)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !328, file: !28, line: 538, baseType: !336, size: 128, offset: 5056)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !328, file: !28, line: 540, baseType: !2215, size: 64, offset: 5184)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2217, line: 54, size: 960, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2229, !2233, !2234, !2235, !2236, !2240, !2244, !2245}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2216, file: !2217, line: 55, baseType: !131, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2216, file: !2217, line: 56, baseType: !324, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2216, file: !2217, line: 58, baseType: !439, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2216, file: !2217, line: 59, baseType: !439, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2216, file: !2217, line: 60, baseType: !342, size: 64, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2216, file: !2217, line: 62, baseType: !1798, size: 64, offset: 320)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2216, file: !2217, line: 63, baseType: !2226, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!390, !1785, !1805}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2216, file: !2217, line: 65, baseType: !2230, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2215}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2216, file: !2217, line: 66, baseType: !1807, size: 64, offset: 512)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2216, file: !2217, line: 68, baseType: !1816, size: 64, offset: 576)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2216, file: !2217, line: 70, baseType: !1571, size: 64, offset: 640)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2216, file: !2217, line: 71, baseType: !2237, size: 64, offset: 704)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!1588, !1785}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2216, file: !2217, line: 73, baseType: !2241, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !1785, !1608, !1614}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2216, file: !2217, line: 75, baseType: !1811, size: 64, offset: 832)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2216, file: !2217, line: 77, baseType: !1929, size: 64, offset: 896)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !328, file: !28, line: 541, baseType: !439, size: 64, offset: 5248)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !328, file: !28, line: 543, baseType: !1807, size: 64, offset: 5312)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !328, file: !28, line: 544, baseType: !2249, size: 64, offset: 5376)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !328, file: !28, line: 545, baseType: !2252, size: 64, offset: 5440)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !328, file: !28, line: 547, baseType: !300, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !328, file: !28, line: 548, baseType: !300, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !328, file: !28, line: 549, baseType: !300, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !328, file: !28, line: 550, baseType: !300, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !103, file: !104, line: 376, baseType: !89, size: 32, offset: 8832)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !103, file: !104, line: 377, baseType: !2260, size: 192, offset: 8896)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !104, line: 191, size: 192, elements: !2261)
!2261 = !{!2262, !2265, !2266}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2260, file: !104, line: 192, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1624, line: 21, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2260, file: !104, line: 194, baseType: !131, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2260, file: !104, line: 195, baseType: !131, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !103, file: !104, line: 378, baseType: !2268, size: 64, offset: 9088)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2270, line: 16, flags: DIFlagFwdDecl)
!2270 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !104, line: 386, baseType: !144, size: 64, offset: 9152)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !103, file: !104, line: 389, baseType: !336, size: 128, offset: 9216)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !104, line: 391, baseType: !2274, size: 320, offset: 9344)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !104, line: 391, size: 320, elements: !2275)
!2275 = !{!2276, !2283}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2274, file: !104, line: 392, baseType: !2277, size: 320)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !104, line: 211, size: 320, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2277, file: !104, line: 212, baseType: !336, size: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2277, file: !104, line: 213, baseType: !117, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2277, file: !104, line: 214, baseType: !117, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !104, line: 215, baseType: !111, size: 32, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2274, file: !104, line: 393, baseType: !2284, size: 256)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !104, line: 230, size: 256, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2284, file: !104, line: 231, baseType: !595, size: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2284, file: !104, line: 232, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !100, file: !49, line: 321, baseType: !2289, size: 288, offset: 9664)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !49, line: 29, size: 288, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2289, file: !49, line: 30, baseType: !5, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2289, file: !49, line: 31, baseType: !5, size: 32, offset: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2289, file: !49, line: 32, baseType: !5, size: 32, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2289, file: !49, line: 33, baseType: !5, size: 32, offset: 96)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2289, file: !49, line: 34, baseType: !5, size: 32, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2289, file: !49, line: 35, baseType: !5, size: 32, offset: 160)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2289, file: !49, line: 36, baseType: !5, size: 32, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2289, file: !49, line: 37, baseType: !5, size: 32, offset: 224)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2289, file: !49, line: 38, baseType: !5, size: 32, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !100, file: !49, line: 322, baseType: !2301, size: 1024, offset: 9984)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !49, line: 291, size: 1024, elements: !2302)
!2302 = !{!2303, !2312, !2313, !2314, !2320, !2366}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2301, file: !49, line: 292, baseType: !2304, size: 192)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !49, line: 187, size: 192, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2311}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2304, file: !49, line: 188, baseType: !48, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2304, file: !49, line: 189, baseType: !56, size: 32, offset: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2304, file: !49, line: 190, baseType: !61, size: 32, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2304, file: !49, line: 191, baseType: !5, size: 32, offset: 96)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2304, file: !49, line: 192, baseType: !5, size: 32, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2304, file: !49, line: 193, baseType: !5, size: 32, offset: 160)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2301, file: !49, line: 293, baseType: !2304, size: 192, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2301, file: !49, line: 294, baseType: !2304, size: 192, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2301, file: !49, line: 295, baseType: !2315, size: 320, offset: 576)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !49, line: 238, size: 320, elements: !2316)
!2316 = !{!2317, !2318, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2315, file: !49, line: 239, baseType: !2304, size: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2315, file: !49, line: 240, baseType: !5, size: 32, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2315, file: !49, line: 241, baseType: !90, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2301, file: !49, line: 296, baseType: !2321, size: 64, offset: 896)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !49, line: 268, size: 64, elements: !2323)
!2323 = !{!2324}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2322, file: !49, line: 269, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !49, line: 255, size: 256, elements: !2327)
!2327 = !{!2328, !2330, !2334, !2365}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2326, file: !49, line: 256, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2326, file: !49, line: 257, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !99}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2326, file: !49, line: 258, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!89, !99, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !49, line: 112, size: 512, elements: !2340)
!2340 = !{!2341, !2342, !2350, !2351, !2352, !2357, !2358, !2359, !2364}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2339, file: !49, line: 113, baseType: !67, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2339, file: !49, line: 114, baseType: !2343, size: 160, offset: 32)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !49, line: 77, size: 160, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2343, file: !49, line: 78, baseType: !5, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2343, file: !49, line: 79, baseType: !5, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2343, file: !49, line: 80, baseType: !5, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2343, file: !49, line: 81, baseType: !5, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2343, file: !49, line: 82, baseType: !5, size: 32, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2339, file: !49, line: 115, baseType: !5, size: 32, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2339, file: !49, line: 116, baseType: !5, size: 32, offset: 224)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2339, file: !49, line: 120, baseType: !2353, size: 64, offset: 256)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2339, file: !49, line: 117, size: 64, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2353, file: !49, line: 118, baseType: !1588, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2353, file: !49, line: 119, baseType: !90, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2339, file: !49, line: 121, baseType: !5, size: 32, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2339, file: !49, line: 122, baseType: !5, size: 32, offset: 352)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2339, file: !49, line: 126, baseType: !2360, size: 64, offset: 384)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2339, file: !49, line: 123, size: 64, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2360, file: !49, line: 124, baseType: !1588, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2360, file: !49, line: 125, baseType: !90, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2339, file: !49, line: 127, baseType: !89, size: 32, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2326, file: !49, line: 260, baseType: !2335, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2301, file: !49, line: 297, baseType: !2321, size: 64, offset: 960)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !100, file: !49, line: 323, baseType: !2368, size: 64, offset: 11008)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !49, line: 61, size: 64, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2368, file: !49, line: 62, baseType: !5, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2368, file: !49, line: 63, baseType: !5, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !100, file: !49, line: 324, baseType: !2373, size: 64, offset: 11072)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !49, line: 205, size: 64, elements: !2374)
!2374 = !{!2375}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2373, file: !49, line: 206, baseType: !183, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !100, file: !49, line: 325, baseType: !2377, size: 64, offset: 11136)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !49, line: 225, size: 192, elements: !2380)
!2380 = !{!2381, !2387, !2388}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2379, file: !49, line: 226, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!89, !99, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2379, file: !49, line: 227, baseType: !2382, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2379, file: !49, line: 228, baseType: !2389, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!300, !99, !2385}
!2392 = !DILocalVariable(name: "x", arg: 1, scope: !2393, file: !2394, line: 324, type: !5)
!2393 = distinct !DISubprogram(name: "fls", scope: !2394, file: !2394, line: 324, type: !2395, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2394 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!89, !5}
!2397 = !DILocation(line: 324, column: 45, scope: !2393, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 25, column: 32, scope: !96)
!2399 = !DILocalVariable(name: "r", scope: !2393, file: !2394, line: 326, type: !89)
!2400 = !DILocation(line: 326, column: 6, scope: !2393, inlinedAt: !2398)
!2401 = !DILocalVariable(name: "nand", arg: 1, scope: !96, file: !1, line: 23, type: !99)
!2402 = !DILocation(line: 23, column: 42, scope: !96)
!2403 = !DILocalVariable(name: "bits_per_block", scope: !96, file: !1, line: 25, type: !5)
!2404 = !DILocation(line: 25, column: 15, scope: !96)
!2405 = !DILocation(line: 340, column: 14, scope: !2393, inlinedAt: !2398)
!2406 = !DILocation(line: 338, column: 2, scope: !2393, inlinedAt: !2398)
!2407 = !{i32 300340}
!2408 = !DILocation(line: 351, column: 9, scope: !2393, inlinedAt: !2398)
!2409 = !DILocation(line: 351, column: 11, scope: !2393, inlinedAt: !2398)
!2410 = !DILocalVariable(name: "nblocks", scope: !96, file: !1, line: 26, type: !5)
!2411 = !DILocation(line: 26, column: 15, scope: !96)
!2412 = !DILocation(line: 26, column: 46, scope: !96)
!2413 = !DILocation(line: 26, column: 25, scope: !96)
!2414 = !DILocalVariable(name: "nwords", scope: !96, file: !1, line: 27, type: !5)
!2415 = !DILocation(line: 27, column: 15, scope: !96)
!2416 = !DILocation(line: 27, column: 24, scope: !96)
!2417 = !DILocation(line: 30, column: 28, scope: !96)
!2418 = !DILocation(line: 30, column: 20, scope: !96)
!2419 = !DILocation(line: 30, column: 2, scope: !96)
!2420 = !DILocation(line: 30, column: 8, scope: !96)
!2421 = !DILocation(line: 30, column: 12, scope: !96)
!2422 = !DILocation(line: 30, column: 18, scope: !96)
!2423 = !DILocation(line: 32, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !96, file: !1, line: 32, column: 6)
!2425 = !DILocation(line: 32, column: 13, scope: !2424)
!2426 = !DILocation(line: 32, column: 17, scope: !2424)
!2427 = !DILocation(line: 32, column: 6, scope: !96)
!2428 = !DILocation(line: 33, column: 3, scope: !2424)
!2429 = !DILocation(line: 35, column: 2, scope: !96)
!2430 = !DILocation(line: 36, column: 1, scope: !96)
!2431 = distinct !DISubprogram(name: "nanddev_neraseblocks", scope: !49, file: !49, line: 494, type: !2432, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!5, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!2436 = !DILocalVariable(name: "nand", arg: 1, scope: !2431, file: !49, line: 494, type: !2434)
!2437 = !DILocation(line: 494, column: 75, scope: !2431)
!2438 = !DILocation(line: 496, column: 9, scope: !2431)
!2439 = !DILocation(line: 496, column: 15, scope: !2431)
!2440 = !DILocation(line: 496, column: 22, scope: !2431)
!2441 = !DILocation(line: 496, column: 33, scope: !2431)
!2442 = !DILocation(line: 496, column: 39, scope: !2431)
!2443 = !DILocation(line: 496, column: 46, scope: !2431)
!2444 = !DILocation(line: 496, column: 31, scope: !2431)
!2445 = !DILocation(line: 497, column: 9, scope: !2431)
!2446 = !DILocation(line: 497, column: 15, scope: !2431)
!2447 = !DILocation(line: 497, column: 22, scope: !2431)
!2448 = !DILocation(line: 496, column: 62, scope: !2431)
!2449 = !DILocation(line: 496, column: 2, scope: !2431)
!2450 = distinct !DISubprogram(name: "kcalloc", scope: !80, file: !80, line: 601, type: !2451, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!90, !203, !203, !87}
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !80, line: 601, type: !203)
!2454 = !DILocation(line: 601, column: 36, scope: !2450)
!2455 = !DILocalVariable(name: "size", arg: 2, scope: !2450, file: !80, line: 601, type: !203)
!2456 = !DILocation(line: 601, column: 46, scope: !2450)
!2457 = !DILocalVariable(name: "flags", arg: 3, scope: !2450, file: !80, line: 601, type: !87)
!2458 = !DILocation(line: 601, column: 58, scope: !2450)
!2459 = !DILocation(line: 603, column: 23, scope: !2450)
!2460 = !DILocation(line: 603, column: 26, scope: !2450)
!2461 = !DILocation(line: 603, column: 32, scope: !2450)
!2462 = !DILocation(line: 603, column: 38, scope: !2450)
!2463 = !DILocation(line: 603, column: 9, scope: !2450)
!2464 = !DILocation(line: 603, column: 2, scope: !2450)
!2465 = distinct !DISubprogram(name: "nanddev_bbt_cleanup", scope: !1, file: !1, line: 45, type: !2332, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2466 = !DILocalVariable(name: "nand", arg: 1, scope: !2465, file: !1, line: 45, type: !99)
!2467 = !DILocation(line: 45, column: 46, scope: !2465)
!2468 = !DILocation(line: 47, column: 8, scope: !2465)
!2469 = !DILocation(line: 47, column: 14, scope: !2465)
!2470 = !DILocation(line: 47, column: 18, scope: !2465)
!2471 = !DILocation(line: 47, column: 2, scope: !2465)
!2472 = !DILocation(line: 48, column: 1, scope: !2465)
!2473 = distinct !DISubprogram(name: "nanddev_bbt_update", scope: !1, file: !1, line: 60, type: !97, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2474 = !DILocalVariable(name: "nand", arg: 1, scope: !2473, file: !1, line: 60, type: !99)
!2475 = !DILocation(line: 60, column: 44, scope: !2473)
!2476 = !DILocation(line: 62, column: 2, scope: !2473)
!2477 = distinct !DISubprogram(name: "nanddev_bbt_get_block_status", scope: !1, file: !1, line: 74, type: !2478, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!89, !2434, !5}
!2480 = !DILocation(line: 324, column: 45, scope: !2393, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 77, column: 32, scope: !2477)
!2482 = !DILocation(line: 326, column: 6, scope: !2393, inlinedAt: !2481)
!2483 = !DILocalVariable(name: "nand", arg: 1, scope: !2477, file: !1, line: 74, type: !2434)
!2484 = !DILocation(line: 74, column: 60, scope: !2477)
!2485 = !DILocalVariable(name: "entry", arg: 2, scope: !2477, file: !1, line: 75, type: !5)
!2486 = !DILocation(line: 75, column: 19, scope: !2477)
!2487 = !DILocalVariable(name: "bits_per_block", scope: !2477, file: !1, line: 77, type: !5)
!2488 = !DILocation(line: 77, column: 15, scope: !2477)
!2489 = !DILocation(line: 340, column: 14, scope: !2393, inlinedAt: !2481)
!2490 = !DILocation(line: 338, column: 2, scope: !2393, inlinedAt: !2481)
!2491 = !DILocation(line: 351, column: 9, scope: !2393, inlinedAt: !2481)
!2492 = !DILocation(line: 351, column: 11, scope: !2393, inlinedAt: !2481)
!2493 = !DILocalVariable(name: "pos", scope: !2477, file: !1, line: 78, type: !183)
!2494 = !DILocation(line: 78, column: 17, scope: !2477)
!2495 = !DILocation(line: 78, column: 23, scope: !2477)
!2496 = !DILocation(line: 78, column: 29, scope: !2477)
!2497 = !DILocation(line: 78, column: 33, scope: !2477)
!2498 = !DILocation(line: 79, column: 11, scope: !2477)
!2499 = !DILocation(line: 79, column: 19, scope: !2477)
!2500 = !DILocation(line: 79, column: 17, scope: !2477)
!2501 = !DILocation(line: 79, column: 35, scope: !2477)
!2502 = !DILocation(line: 78, column: 39, scope: !2477)
!2503 = !DILocalVariable(name: "offs", scope: !2477, file: !1, line: 80, type: !5)
!2504 = !DILocation(line: 80, column: 15, scope: !2477)
!2505 = !DILocation(line: 80, column: 23, scope: !2477)
!2506 = !DILocation(line: 80, column: 31, scope: !2477)
!2507 = !DILocation(line: 80, column: 29, scope: !2477)
!2508 = !DILocation(line: 80, column: 47, scope: !2477)
!2509 = !DILocalVariable(name: "status", scope: !2477, file: !1, line: 81, type: !184)
!2510 = !DILocation(line: 81, column: 16, scope: !2477)
!2511 = !DILocation(line: 83, column: 6, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2477, file: !1, line: 83, column: 6)
!2513 = !DILocation(line: 83, column: 36, scope: !2512)
!2514 = !DILocation(line: 83, column: 15, scope: !2512)
!2515 = !DILocation(line: 83, column: 12, scope: !2512)
!2516 = !DILocation(line: 83, column: 6, scope: !2477)
!2517 = !DILocation(line: 84, column: 3, scope: !2512)
!2518 = !DILocation(line: 86, column: 11, scope: !2477)
!2519 = !DILocation(line: 86, column: 21, scope: !2477)
!2520 = !DILocation(line: 86, column: 18, scope: !2477)
!2521 = !DILocation(line: 86, column: 9, scope: !2477)
!2522 = !DILocation(line: 87, column: 6, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2477, file: !1, line: 87, column: 6)
!2524 = !DILocation(line: 87, column: 23, scope: !2523)
!2525 = !DILocation(line: 87, column: 21, scope: !2523)
!2526 = !DILocation(line: 87, column: 28, scope: !2523)
!2527 = !DILocation(line: 87, column: 6, scope: !2477)
!2528 = !DILocation(line: 88, column: 13, scope: !2523)
!2529 = !DILocation(line: 88, column: 40, scope: !2523)
!2530 = !DILocation(line: 88, column: 38, scope: !2523)
!2531 = !DILocation(line: 88, column: 20, scope: !2523)
!2532 = !DILocation(line: 88, column: 10, scope: !2523)
!2533 = !DILocation(line: 88, column: 3, scope: !2523)
!2534 = !DILocation(line: 90, column: 9, scope: !2477)
!2535 = !DILocation(line: 90, column: 18, scope: !2477)
!2536 = !DILocation(line: 90, column: 16, scope: !2477)
!2537 = !DILocation(line: 90, column: 2, scope: !2477)
!2538 = !DILocation(line: 91, column: 1, scope: !2477)
!2539 = distinct !DISubprogram(name: "nanddev_bbt_set_block_status", scope: !1, file: !1, line: 107, type: !2540, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!89, !99, !5, !71}
!2542 = !DILocation(line: 324, column: 45, scope: !2393, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 110, column: 32, scope: !2539)
!2544 = !DILocation(line: 326, column: 6, scope: !2393, inlinedAt: !2543)
!2545 = !DILocalVariable(name: "nand", arg: 1, scope: !2539, file: !1, line: 107, type: !99)
!2546 = !DILocation(line: 107, column: 54, scope: !2539)
!2547 = !DILocalVariable(name: "entry", arg: 2, scope: !2539, file: !1, line: 107, type: !5)
!2548 = !DILocation(line: 107, column: 73, scope: !2539)
!2549 = !DILocalVariable(name: "status", arg: 3, scope: !2539, file: !1, line: 108, type: !71)
!2550 = !DILocation(line: 108, column: 33, scope: !2539)
!2551 = !DILocalVariable(name: "bits_per_block", scope: !2539, file: !1, line: 110, type: !5)
!2552 = !DILocation(line: 110, column: 15, scope: !2539)
!2553 = !DILocation(line: 340, column: 14, scope: !2393, inlinedAt: !2543)
!2554 = !DILocation(line: 338, column: 2, scope: !2393, inlinedAt: !2543)
!2555 = !DILocation(line: 351, column: 9, scope: !2393, inlinedAt: !2543)
!2556 = !DILocation(line: 351, column: 11, scope: !2393, inlinedAt: !2543)
!2557 = !DILocalVariable(name: "pos", scope: !2539, file: !1, line: 111, type: !183)
!2558 = !DILocation(line: 111, column: 17, scope: !2539)
!2559 = !DILocation(line: 111, column: 23, scope: !2539)
!2560 = !DILocation(line: 111, column: 29, scope: !2539)
!2561 = !DILocation(line: 111, column: 33, scope: !2539)
!2562 = !DILocation(line: 112, column: 11, scope: !2539)
!2563 = !DILocation(line: 112, column: 19, scope: !2539)
!2564 = !DILocation(line: 112, column: 17, scope: !2539)
!2565 = !DILocation(line: 112, column: 35, scope: !2539)
!2566 = !DILocation(line: 111, column: 39, scope: !2539)
!2567 = !DILocalVariable(name: "offs", scope: !2539, file: !1, line: 113, type: !5)
!2568 = !DILocation(line: 113, column: 15, scope: !2539)
!2569 = !DILocation(line: 113, column: 23, scope: !2539)
!2570 = !DILocation(line: 113, column: 31, scope: !2539)
!2571 = !DILocation(line: 113, column: 29, scope: !2539)
!2572 = !DILocation(line: 113, column: 47, scope: !2539)
!2573 = !DILocalVariable(name: "val", scope: !2539, file: !1, line: 114, type: !184)
!2574 = !DILocation(line: 114, column: 16, scope: !2539)
!2575 = !DILocation(line: 114, column: 22, scope: !2539)
!2576 = !DILocation(line: 114, column: 31, scope: !2539)
!2577 = !DILocation(line: 114, column: 29, scope: !2539)
!2578 = !DILocation(line: 116, column: 6, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 116, column: 6)
!2580 = !DILocation(line: 116, column: 36, scope: !2579)
!2581 = !DILocation(line: 116, column: 15, scope: !2579)
!2582 = !DILocation(line: 116, column: 12, scope: !2579)
!2583 = !DILocation(line: 116, column: 6, scope: !2539)
!2584 = !DILocation(line: 117, column: 3, scope: !2579)
!2585 = !DILocation(line: 119, column: 13, scope: !2539)
!2586 = !DILocation(line: 119, column: 12, scope: !2539)
!2587 = !DILocation(line: 119, column: 2, scope: !2539)
!2588 = !DILocation(line: 119, column: 9, scope: !2539)
!2589 = !DILocation(line: 120, column: 12, scope: !2539)
!2590 = !DILocation(line: 120, column: 19, scope: !2539)
!2591 = !DILocation(line: 120, column: 16, scope: !2539)
!2592 = !DILocation(line: 120, column: 2, scope: !2539)
!2593 = !DILocation(line: 120, column: 9, scope: !2539)
!2594 = !DILocation(line: 122, column: 6, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 122, column: 6)
!2596 = !DILocation(line: 122, column: 23, scope: !2595)
!2597 = !DILocation(line: 122, column: 21, scope: !2595)
!2598 = !DILocation(line: 122, column: 28, scope: !2595)
!2599 = !DILocation(line: 122, column: 6, scope: !2539)
!2600 = !DILocalVariable(name: "rbits", scope: !2601, file: !1, line: 123, type: !5)
!2601 = distinct !DILexicalBlock(scope: !2595, file: !1, line: 122, column: 45)
!2602 = !DILocation(line: 123, column: 16, scope: !2601)
!2603 = !DILocation(line: 123, column: 24, scope: !2601)
!2604 = !DILocation(line: 123, column: 41, scope: !2601)
!2605 = !DILocation(line: 123, column: 39, scope: !2601)
!2606 = !DILocation(line: 123, column: 46, scope: !2601)
!2607 = !DILocation(line: 125, column: 14, scope: !2601)
!2608 = !DILocation(line: 125, column: 13, scope: !2601)
!2609 = !DILocation(line: 125, column: 3, scope: !2601)
!2610 = !DILocation(line: 125, column: 10, scope: !2601)
!2611 = !DILocation(line: 126, column: 13, scope: !2601)
!2612 = !DILocation(line: 126, column: 20, scope: !2601)
!2613 = !DILocation(line: 126, column: 17, scope: !2601)
!2614 = !DILocation(line: 126, column: 3, scope: !2601)
!2615 = !DILocation(line: 126, column: 10, scope: !2601)
!2616 = !DILocation(line: 127, column: 2, scope: !2601)
!2617 = !DILocation(line: 129, column: 2, scope: !2539)
!2618 = !DILocation(line: 130, column: 1, scope: !2539)
!2619 = distinct !DISubprogram(name: "kmalloc_array", scope: !80, file: !80, line: 584, type: !2451, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2620 = !DILocalVariable(name: "s", arg: 1, scope: !2621, file: !80, line: 445, type: !1247)
!2621 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !80, file: !80, line: 445, type: !2622, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!90, !1247, !87, !203}
!2624 = !DILocation(line: 445, column: 72, scope: !2621, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 552, column: 10, scope: !2626, inlinedAt: !2631)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !80, line: 540, column: 34)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !80, line: 540, column: 6)
!2628 = distinct !DISubprogram(name: "kmalloc", scope: !80, file: !80, line: 538, type: !2629, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!90, !203, !87}
!2631 = distinct !DILocation(line: 591, column: 10, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2619, file: !80, line: 590, column: 6)
!2633 = !DILocalVariable(name: "flags", arg: 2, scope: !2621, file: !80, line: 446, type: !87)
!2634 = !DILocation(line: 446, column: 9, scope: !2621, inlinedAt: !2625)
!2635 = !DILocalVariable(name: "size", arg: 3, scope: !2621, file: !80, line: 446, type: !203)
!2636 = !DILocation(line: 446, column: 23, scope: !2621, inlinedAt: !2625)
!2637 = !DILocalVariable(name: "ret", scope: !2621, file: !80, line: 448, type: !90)
!2638 = !DILocation(line: 448, column: 8, scope: !2621, inlinedAt: !2625)
!2639 = !DILocalVariable(name: "flags", arg: 1, scope: !2640, file: !80, line: 318, type: !87)
!2640 = distinct !DISubprogram(name: "kmalloc_type", scope: !80, file: !80, line: 318, type: !2641, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!79, !87}
!2643 = !DILocation(line: 318, column: 67, scope: !2640, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 553, column: 20, scope: !2626, inlinedAt: !2631)
!2645 = !DILocalVariable(name: "size", arg: 1, scope: !2646, file: !80, line: 346, type: !203)
!2646 = distinct !DISubprogram(name: "kmalloc_index", scope: !80, file: !80, line: 346, type: !2647, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!5, !203}
!2649 = !DILocation(line: 346, column: 58, scope: !2646, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 547, column: 11, scope: !2626, inlinedAt: !2631)
!2651 = !DILocalVariable(name: "size", arg: 1, scope: !2652, file: !80, line: 472, type: !203)
!2652 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !80, file: !80, line: 472, type: !2653, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!90, !203, !87, !5}
!2655 = !DILocation(line: 472, column: 28, scope: !2652, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 481, column: 9, scope: !2657, inlinedAt: !2658)
!2657 = distinct !DISubprogram(name: "kmalloc_large", scope: !80, file: !80, line: 478, type: !2629, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2658 = distinct !DILocation(line: 545, column: 11, scope: !2659, inlinedAt: !2631)
!2659 = distinct !DILexicalBlock(scope: !2626, file: !80, line: 544, column: 7)
!2660 = !DILocalVariable(name: "flags", arg: 2, scope: !2652, file: !80, line: 472, type: !87)
!2661 = !DILocation(line: 472, column: 40, scope: !2652, inlinedAt: !2656)
!2662 = !DILocalVariable(name: "order", arg: 3, scope: !2652, file: !80, line: 472, type: !5)
!2663 = !DILocation(line: 472, column: 60, scope: !2652, inlinedAt: !2656)
!2664 = !DILocalVariable(name: "size", arg: 1, scope: !2657, file: !80, line: 478, type: !203)
!2665 = !DILocation(line: 478, column: 51, scope: !2657, inlinedAt: !2658)
!2666 = !DILocalVariable(name: "flags", arg: 2, scope: !2657, file: !80, line: 478, type: !87)
!2667 = !DILocation(line: 478, column: 63, scope: !2657, inlinedAt: !2658)
!2668 = !DILocalVariable(name: "order", scope: !2657, file: !80, line: 480, type: !5)
!2669 = !DILocation(line: 480, column: 15, scope: !2657, inlinedAt: !2658)
!2670 = !DILocalVariable(name: "size", arg: 1, scope: !2628, file: !80, line: 538, type: !203)
!2671 = !DILocation(line: 538, column: 45, scope: !2628, inlinedAt: !2631)
!2672 = !DILocalVariable(name: "flags", arg: 2, scope: !2628, file: !80, line: 538, type: !87)
!2673 = !DILocation(line: 538, column: 57, scope: !2628, inlinedAt: !2631)
!2674 = !DILocalVariable(name: "index", scope: !2626, file: !80, line: 542, type: !5)
!2675 = !DILocation(line: 542, column: 16, scope: !2626, inlinedAt: !2631)
!2676 = !DILocalVariable(name: "n", arg: 1, scope: !2619, file: !80, line: 584, type: !203)
!2677 = !DILocation(line: 584, column: 42, scope: !2619)
!2678 = !DILocalVariable(name: "size", arg: 2, scope: !2619, file: !80, line: 584, type: !203)
!2679 = !DILocation(line: 584, column: 52, scope: !2619)
!2680 = !DILocalVariable(name: "flags", arg: 3, scope: !2619, file: !80, line: 584, type: !87)
!2681 = !DILocation(line: 584, column: 64, scope: !2619)
!2682 = !DILocalVariable(name: "bytes", scope: !2619, file: !80, line: 586, type: !203)
!2683 = !DILocation(line: 586, column: 9, scope: !2619)
!2684 = !DILocalVariable(name: "__a", scope: !2685, file: !80, line: 588, type: !203)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !80, line: 588, column: 6)
!2686 = distinct !DILexicalBlock(scope: !2619, file: !80, line: 588, column: 6)
!2687 = !DILocation(line: 588, column: 6, scope: !2685)
!2688 = !DILocalVariable(name: "__b", scope: !2685, file: !80, line: 588, type: !203)
!2689 = !DILocalVariable(name: "__d", scope: !2685, file: !80, line: 588, type: !206)
!2690 = !DILocation(line: 588, column: 6, scope: !2686)
!2691 = !DILocation(line: 588, column: 6, scope: !2619)
!2692 = !DILocation(line: 589, column: 3, scope: !2686)
!2693 = !DILocation(line: 590, column: 27, scope: !2632)
!2694 = !DILocation(line: 590, column: 6, scope: !2632)
!2695 = !DILocation(line: 590, column: 30, scope: !2632)
!2696 = !DILocation(line: 590, column: 54, scope: !2632)
!2697 = !DILocation(line: 590, column: 33, scope: !2632)
!2698 = !DILocation(line: 590, column: 6, scope: !2619)
!2699 = !DILocation(line: 591, column: 18, scope: !2632)
!2700 = !DILocation(line: 591, column: 25, scope: !2632)
!2701 = !DILocation(line: 540, column: 27, scope: !2627, inlinedAt: !2631)
!2702 = !DILocation(line: 540, column: 6, scope: !2627, inlinedAt: !2631)
!2703 = !DILocation(line: 540, column: 6, scope: !2628, inlinedAt: !2631)
!2704 = !DILocation(line: 544, column: 7, scope: !2659, inlinedAt: !2631)
!2705 = !DILocation(line: 544, column: 12, scope: !2659, inlinedAt: !2631)
!2706 = !DILocation(line: 544, column: 7, scope: !2626, inlinedAt: !2631)
!2707 = !DILocation(line: 545, column: 25, scope: !2659, inlinedAt: !2631)
!2708 = !DILocation(line: 545, column: 31, scope: !2659, inlinedAt: !2631)
!2709 = !DILocation(line: 480, column: 33, scope: !2657, inlinedAt: !2658)
!2710 = !DILocation(line: 480, column: 23, scope: !2657, inlinedAt: !2658)
!2711 = !DILocation(line: 481, column: 29, scope: !2657, inlinedAt: !2658)
!2712 = !DILocation(line: 481, column: 35, scope: !2657, inlinedAt: !2658)
!2713 = !DILocation(line: 481, column: 42, scope: !2657, inlinedAt: !2658)
!2714 = !DILocation(line: 474, column: 23, scope: !2652, inlinedAt: !2656)
!2715 = !DILocation(line: 474, column: 29, scope: !2652, inlinedAt: !2656)
!2716 = !DILocation(line: 474, column: 36, scope: !2652, inlinedAt: !2656)
!2717 = !DILocation(line: 474, column: 9, scope: !2652, inlinedAt: !2656)
!2718 = !DILocation(line: 545, column: 4, scope: !2659, inlinedAt: !2631)
!2719 = !DILocation(line: 547, column: 25, scope: !2626, inlinedAt: !2631)
!2720 = !DILocation(line: 348, column: 7, scope: !2721, inlinedAt: !2650)
!2721 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 348, column: 6)
!2722 = !DILocation(line: 348, column: 6, scope: !2646, inlinedAt: !2650)
!2723 = !DILocation(line: 349, column: 3, scope: !2721, inlinedAt: !2650)
!2724 = !DILocation(line: 351, column: 6, scope: !2725, inlinedAt: !2650)
!2725 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 351, column: 6)
!2726 = !DILocation(line: 351, column: 11, scope: !2725, inlinedAt: !2650)
!2727 = !DILocation(line: 351, column: 6, scope: !2646, inlinedAt: !2650)
!2728 = !DILocation(line: 352, column: 3, scope: !2725, inlinedAt: !2650)
!2729 = !DILocation(line: 354, column: 32, scope: !2730, inlinedAt: !2650)
!2730 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 354, column: 6)
!2731 = !DILocation(line: 354, column: 37, scope: !2730, inlinedAt: !2650)
!2732 = !DILocation(line: 354, column: 42, scope: !2730, inlinedAt: !2650)
!2733 = !DILocation(line: 354, column: 45, scope: !2730, inlinedAt: !2650)
!2734 = !DILocation(line: 354, column: 50, scope: !2730, inlinedAt: !2650)
!2735 = !DILocation(line: 354, column: 6, scope: !2646, inlinedAt: !2650)
!2736 = !DILocation(line: 355, column: 3, scope: !2730, inlinedAt: !2650)
!2737 = !DILocation(line: 356, column: 32, scope: !2738, inlinedAt: !2650)
!2738 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 356, column: 6)
!2739 = !DILocation(line: 356, column: 37, scope: !2738, inlinedAt: !2650)
!2740 = !DILocation(line: 356, column: 43, scope: !2738, inlinedAt: !2650)
!2741 = !DILocation(line: 356, column: 46, scope: !2738, inlinedAt: !2650)
!2742 = !DILocation(line: 356, column: 51, scope: !2738, inlinedAt: !2650)
!2743 = !DILocation(line: 356, column: 6, scope: !2646, inlinedAt: !2650)
!2744 = !DILocation(line: 357, column: 3, scope: !2738, inlinedAt: !2650)
!2745 = !DILocation(line: 358, column: 6, scope: !2746, inlinedAt: !2650)
!2746 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 358, column: 6)
!2747 = !DILocation(line: 358, column: 11, scope: !2746, inlinedAt: !2650)
!2748 = !DILocation(line: 358, column: 6, scope: !2646, inlinedAt: !2650)
!2749 = !DILocation(line: 358, column: 26, scope: !2746, inlinedAt: !2650)
!2750 = !DILocation(line: 359, column: 6, scope: !2751, inlinedAt: !2650)
!2751 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 359, column: 6)
!2752 = !DILocation(line: 359, column: 11, scope: !2751, inlinedAt: !2650)
!2753 = !DILocation(line: 359, column: 6, scope: !2646, inlinedAt: !2650)
!2754 = !DILocation(line: 359, column: 26, scope: !2751, inlinedAt: !2650)
!2755 = !DILocation(line: 360, column: 6, scope: !2756, inlinedAt: !2650)
!2756 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 360, column: 6)
!2757 = !DILocation(line: 360, column: 11, scope: !2756, inlinedAt: !2650)
!2758 = !DILocation(line: 360, column: 6, scope: !2646, inlinedAt: !2650)
!2759 = !DILocation(line: 360, column: 26, scope: !2756, inlinedAt: !2650)
!2760 = !DILocation(line: 361, column: 6, scope: !2761, inlinedAt: !2650)
!2761 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 361, column: 6)
!2762 = !DILocation(line: 361, column: 11, scope: !2761, inlinedAt: !2650)
!2763 = !DILocation(line: 361, column: 6, scope: !2646, inlinedAt: !2650)
!2764 = !DILocation(line: 361, column: 26, scope: !2761, inlinedAt: !2650)
!2765 = !DILocation(line: 362, column: 6, scope: !2766, inlinedAt: !2650)
!2766 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 362, column: 6)
!2767 = !DILocation(line: 362, column: 11, scope: !2766, inlinedAt: !2650)
!2768 = !DILocation(line: 362, column: 6, scope: !2646, inlinedAt: !2650)
!2769 = !DILocation(line: 362, column: 26, scope: !2766, inlinedAt: !2650)
!2770 = !DILocation(line: 363, column: 6, scope: !2771, inlinedAt: !2650)
!2771 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 363, column: 6)
!2772 = !DILocation(line: 363, column: 11, scope: !2771, inlinedAt: !2650)
!2773 = !DILocation(line: 363, column: 6, scope: !2646, inlinedAt: !2650)
!2774 = !DILocation(line: 363, column: 26, scope: !2771, inlinedAt: !2650)
!2775 = !DILocation(line: 364, column: 6, scope: !2776, inlinedAt: !2650)
!2776 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 364, column: 6)
!2777 = !DILocation(line: 364, column: 11, scope: !2776, inlinedAt: !2650)
!2778 = !DILocation(line: 364, column: 6, scope: !2646, inlinedAt: !2650)
!2779 = !DILocation(line: 364, column: 26, scope: !2776, inlinedAt: !2650)
!2780 = !DILocation(line: 365, column: 6, scope: !2781, inlinedAt: !2650)
!2781 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 365, column: 6)
!2782 = !DILocation(line: 365, column: 11, scope: !2781, inlinedAt: !2650)
!2783 = !DILocation(line: 365, column: 6, scope: !2646, inlinedAt: !2650)
!2784 = !DILocation(line: 365, column: 26, scope: !2781, inlinedAt: !2650)
!2785 = !DILocation(line: 366, column: 6, scope: !2786, inlinedAt: !2650)
!2786 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 366, column: 6)
!2787 = !DILocation(line: 366, column: 11, scope: !2786, inlinedAt: !2650)
!2788 = !DILocation(line: 366, column: 6, scope: !2646, inlinedAt: !2650)
!2789 = !DILocation(line: 366, column: 26, scope: !2786, inlinedAt: !2650)
!2790 = !DILocation(line: 367, column: 6, scope: !2791, inlinedAt: !2650)
!2791 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 367, column: 6)
!2792 = !DILocation(line: 367, column: 11, scope: !2791, inlinedAt: !2650)
!2793 = !DILocation(line: 367, column: 6, scope: !2646, inlinedAt: !2650)
!2794 = !DILocation(line: 367, column: 26, scope: !2791, inlinedAt: !2650)
!2795 = !DILocation(line: 368, column: 6, scope: !2796, inlinedAt: !2650)
!2796 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 368, column: 6)
!2797 = !DILocation(line: 368, column: 11, scope: !2796, inlinedAt: !2650)
!2798 = !DILocation(line: 368, column: 6, scope: !2646, inlinedAt: !2650)
!2799 = !DILocation(line: 368, column: 26, scope: !2796, inlinedAt: !2650)
!2800 = !DILocation(line: 369, column: 6, scope: !2801, inlinedAt: !2650)
!2801 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 369, column: 6)
!2802 = !DILocation(line: 369, column: 11, scope: !2801, inlinedAt: !2650)
!2803 = !DILocation(line: 369, column: 6, scope: !2646, inlinedAt: !2650)
!2804 = !DILocation(line: 369, column: 26, scope: !2801, inlinedAt: !2650)
!2805 = !DILocation(line: 370, column: 6, scope: !2806, inlinedAt: !2650)
!2806 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 370, column: 6)
!2807 = !DILocation(line: 370, column: 11, scope: !2806, inlinedAt: !2650)
!2808 = !DILocation(line: 370, column: 6, scope: !2646, inlinedAt: !2650)
!2809 = !DILocation(line: 370, column: 26, scope: !2806, inlinedAt: !2650)
!2810 = !DILocation(line: 371, column: 6, scope: !2811, inlinedAt: !2650)
!2811 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 371, column: 6)
!2812 = !DILocation(line: 371, column: 11, scope: !2811, inlinedAt: !2650)
!2813 = !DILocation(line: 371, column: 6, scope: !2646, inlinedAt: !2650)
!2814 = !DILocation(line: 371, column: 26, scope: !2811, inlinedAt: !2650)
!2815 = !DILocation(line: 372, column: 6, scope: !2816, inlinedAt: !2650)
!2816 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 372, column: 6)
!2817 = !DILocation(line: 372, column: 11, scope: !2816, inlinedAt: !2650)
!2818 = !DILocation(line: 372, column: 6, scope: !2646, inlinedAt: !2650)
!2819 = !DILocation(line: 372, column: 26, scope: !2816, inlinedAt: !2650)
!2820 = !DILocation(line: 373, column: 6, scope: !2821, inlinedAt: !2650)
!2821 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 373, column: 6)
!2822 = !DILocation(line: 373, column: 11, scope: !2821, inlinedAt: !2650)
!2823 = !DILocation(line: 373, column: 6, scope: !2646, inlinedAt: !2650)
!2824 = !DILocation(line: 373, column: 26, scope: !2821, inlinedAt: !2650)
!2825 = !DILocation(line: 374, column: 6, scope: !2826, inlinedAt: !2650)
!2826 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 374, column: 6)
!2827 = !DILocation(line: 374, column: 11, scope: !2826, inlinedAt: !2650)
!2828 = !DILocation(line: 374, column: 6, scope: !2646, inlinedAt: !2650)
!2829 = !DILocation(line: 374, column: 26, scope: !2826, inlinedAt: !2650)
!2830 = !DILocation(line: 375, column: 6, scope: !2831, inlinedAt: !2650)
!2831 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 375, column: 6)
!2832 = !DILocation(line: 375, column: 11, scope: !2831, inlinedAt: !2650)
!2833 = !DILocation(line: 375, column: 6, scope: !2646, inlinedAt: !2650)
!2834 = !DILocation(line: 375, column: 27, scope: !2831, inlinedAt: !2650)
!2835 = !DILocation(line: 376, column: 6, scope: !2836, inlinedAt: !2650)
!2836 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 376, column: 6)
!2837 = !DILocation(line: 376, column: 11, scope: !2836, inlinedAt: !2650)
!2838 = !DILocation(line: 376, column: 6, scope: !2646, inlinedAt: !2650)
!2839 = !DILocation(line: 376, column: 32, scope: !2836, inlinedAt: !2650)
!2840 = !DILocation(line: 377, column: 6, scope: !2841, inlinedAt: !2650)
!2841 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 377, column: 6)
!2842 = !DILocation(line: 377, column: 11, scope: !2841, inlinedAt: !2650)
!2843 = !DILocation(line: 377, column: 6, scope: !2646, inlinedAt: !2650)
!2844 = !DILocation(line: 377, column: 32, scope: !2841, inlinedAt: !2650)
!2845 = !DILocation(line: 378, column: 6, scope: !2846, inlinedAt: !2650)
!2846 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 378, column: 6)
!2847 = !DILocation(line: 378, column: 11, scope: !2846, inlinedAt: !2650)
!2848 = !DILocation(line: 378, column: 6, scope: !2646, inlinedAt: !2650)
!2849 = !DILocation(line: 378, column: 32, scope: !2846, inlinedAt: !2650)
!2850 = !DILocation(line: 379, column: 6, scope: !2851, inlinedAt: !2650)
!2851 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 379, column: 6)
!2852 = !DILocation(line: 379, column: 11, scope: !2851, inlinedAt: !2650)
!2853 = !DILocation(line: 379, column: 6, scope: !2646, inlinedAt: !2650)
!2854 = !DILocation(line: 379, column: 33, scope: !2851, inlinedAt: !2650)
!2855 = !DILocation(line: 380, column: 6, scope: !2856, inlinedAt: !2650)
!2856 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 380, column: 6)
!2857 = !DILocation(line: 380, column: 11, scope: !2856, inlinedAt: !2650)
!2858 = !DILocation(line: 380, column: 6, scope: !2646, inlinedAt: !2650)
!2859 = !DILocation(line: 380, column: 33, scope: !2856, inlinedAt: !2650)
!2860 = !DILocation(line: 381, column: 6, scope: !2861, inlinedAt: !2650)
!2861 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 381, column: 6)
!2862 = !DILocation(line: 381, column: 11, scope: !2861, inlinedAt: !2650)
!2863 = !DILocation(line: 381, column: 6, scope: !2646, inlinedAt: !2650)
!2864 = !DILocation(line: 381, column: 33, scope: !2861, inlinedAt: !2650)
!2865 = !DILocation(line: 382, column: 2, scope: !2866, inlinedAt: !2650)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !80, line: 382, column: 2)
!2867 = distinct !DILexicalBlock(scope: !2646, file: !80, line: 382, column: 2)
!2868 = !{i32 -2143494681, i32 -2143494652, i32 -2143494606, i32 -2143494548, i32 -2143494494, i32 -2143494440, i32 -2143494385, i32 -2143494354}
!2869 = !DILocation(line: 382, column: 2, scope: !2870, inlinedAt: !2650)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !80, line: 382, column: 2)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !80, line: 382, column: 2)
!2872 = !{i32 -2143493911, i32 -2143493904, i32 -2143493850, i32 -2143493819, i32 -2143493789}
!2873 = !DILocation(line: 382, column: 2, scope: !2871, inlinedAt: !2650)
!2874 = !DILocation(line: 386, column: 1, scope: !2646, inlinedAt: !2650)
!2875 = !DILocation(line: 547, column: 9, scope: !2626, inlinedAt: !2631)
!2876 = !DILocation(line: 549, column: 8, scope: !2877, inlinedAt: !2631)
!2877 = distinct !DILexicalBlock(scope: !2626, file: !80, line: 549, column: 7)
!2878 = !DILocation(line: 549, column: 7, scope: !2626, inlinedAt: !2631)
!2879 = !DILocation(line: 550, column: 4, scope: !2877, inlinedAt: !2631)
!2880 = !DILocation(line: 553, column: 33, scope: !2626, inlinedAt: !2631)
!2881 = !DILocation(line: 325, column: 6, scope: !2882, inlinedAt: !2644)
!2882 = distinct !DILexicalBlock(scope: !2640, file: !80, line: 325, column: 6)
!2883 = !DILocation(line: 325, column: 6, scope: !2640, inlinedAt: !2644)
!2884 = !DILocation(line: 326, column: 3, scope: !2882, inlinedAt: !2644)
!2885 = !DILocation(line: 332, column: 9, scope: !2640, inlinedAt: !2644)
!2886 = !DILocation(line: 332, column: 15, scope: !2640, inlinedAt: !2644)
!2887 = !DILocation(line: 332, column: 2, scope: !2640, inlinedAt: !2644)
!2888 = !DILocation(line: 336, column: 1, scope: !2640, inlinedAt: !2644)
!2889 = !DILocation(line: 553, column: 5, scope: !2626, inlinedAt: !2631)
!2890 = !DILocation(line: 553, column: 41, scope: !2626, inlinedAt: !2631)
!2891 = !DILocation(line: 554, column: 5, scope: !2626, inlinedAt: !2631)
!2892 = !DILocation(line: 554, column: 12, scope: !2626, inlinedAt: !2631)
!2893 = !DILocation(line: 448, column: 31, scope: !2621, inlinedAt: !2625)
!2894 = !DILocation(line: 448, column: 34, scope: !2621, inlinedAt: !2625)
!2895 = !DILocation(line: 448, column: 14, scope: !2621, inlinedAt: !2625)
!2896 = !DILocation(line: 450, column: 22, scope: !2621, inlinedAt: !2625)
!2897 = !DILocation(line: 450, column: 25, scope: !2621, inlinedAt: !2625)
!2898 = !DILocation(line: 450, column: 30, scope: !2621, inlinedAt: !2625)
!2899 = !DILocation(line: 450, column: 36, scope: !2621, inlinedAt: !2625)
!2900 = !DILocation(line: 450, column: 8, scope: !2621, inlinedAt: !2625)
!2901 = !DILocation(line: 450, column: 6, scope: !2621, inlinedAt: !2625)
!2902 = !DILocation(line: 451, column: 9, scope: !2621, inlinedAt: !2625)
!2903 = !DILocation(line: 552, column: 3, scope: !2626, inlinedAt: !2631)
!2904 = !DILocation(line: 557, column: 19, scope: !2628, inlinedAt: !2631)
!2905 = !DILocation(line: 557, column: 25, scope: !2628, inlinedAt: !2631)
!2906 = !DILocation(line: 557, column: 9, scope: !2628, inlinedAt: !2631)
!2907 = !DILocation(line: 557, column: 2, scope: !2628, inlinedAt: !2631)
!2908 = !DILocation(line: 558, column: 1, scope: !2628, inlinedAt: !2631)
!2909 = !DILocation(line: 591, column: 3, scope: !2632)
!2910 = !DILocation(line: 592, column: 19, scope: !2619)
!2911 = !DILocation(line: 592, column: 26, scope: !2619)
!2912 = !DILocation(line: 592, column: 9, scope: !2619)
!2913 = !DILocation(line: 592, column: 2, scope: !2619)
!2914 = !DILocation(line: 593, column: 1, scope: !2619)
!2915 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2916, file: !2916, line: 52, type: !2917, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2916 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!300, !300}
!2919 = !DILocalVariable(name: "overflow", arg: 1, scope: !2915, file: !2916, line: 52, type: !300)
!2920 = !DILocation(line: 52, column: 60, scope: !2915)
!2921 = !DILocation(line: 54, column: 9, scope: !2915)
!2922 = !DILocation(line: 54, column: 2, scope: !2915)
!2923 = distinct !DISubprogram(name: "get_order", scope: !2924, file: !2924, line: 29, type: !2925, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2924 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!89, !184}
!2927 = !DILocalVariable(name: "x", arg: 1, scope: !2928, file: !2394, line: 366, type: !118)
!2928 = distinct !DISubprogram(name: "fls64", scope: !2394, file: !2394, line: 366, type: !2929, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!89, !118}
!2931 = !DILocation(line: 366, column: 40, scope: !2928, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 46, column: 9, scope: !2923)
!2933 = !DILocalVariable(name: "bitpos", scope: !2928, file: !2394, line: 368, type: !89)
!2934 = !DILocation(line: 368, column: 6, scope: !2928, inlinedAt: !2932)
!2935 = !DILocalVariable(name: "size", arg: 1, scope: !2923, file: !2924, line: 29, type: !184)
!2936 = !DILocation(line: 29, column: 63, scope: !2923)
!2937 = !DILocation(line: 31, column: 27, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2923, file: !2924, line: 31, column: 6)
!2939 = !DILocation(line: 31, column: 6, scope: !2938)
!2940 = !DILocation(line: 31, column: 6, scope: !2923)
!2941 = !DILocation(line: 32, column: 8, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !2924, line: 32, column: 7)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !2924, line: 31, column: 34)
!2944 = !DILocation(line: 32, column: 7, scope: !2943)
!2945 = !DILocation(line: 33, column: 4, scope: !2942)
!2946 = !DILocation(line: 35, column: 7, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !2924, line: 35, column: 7)
!2948 = !DILocation(line: 35, column: 12, scope: !2947)
!2949 = !DILocation(line: 35, column: 7, scope: !2943)
!2950 = !DILocation(line: 36, column: 4, scope: !2947)
!2951 = !DILocation(line: 38, column: 10, scope: !2943)
!2952 = !DILocation(line: 38, column: 28, scope: !2943)
!2953 = !DILocation(line: 38, column: 41, scope: !2943)
!2954 = !DILocation(line: 38, column: 3, scope: !2943)
!2955 = !DILocation(line: 41, column: 6, scope: !2923)
!2956 = !DILocation(line: 42, column: 7, scope: !2923)
!2957 = !DILocation(line: 46, column: 15, scope: !2923)
!2958 = !DILocation(line: 374, column: 2, scope: !2928, inlinedAt: !2932)
!2959 = !DILocation(line: 376, column: 14, scope: !2928, inlinedAt: !2932)
!2960 = !{i32 301306}
!2961 = !DILocation(line: 377, column: 9, scope: !2928, inlinedAt: !2932)
!2962 = !DILocation(line: 377, column: 16, scope: !2928, inlinedAt: !2932)
!2963 = !DILocation(line: 46, column: 2, scope: !2923)
!2964 = !DILocation(line: 48, column: 1, scope: !2923)
!2965 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2966, file: !2966, line: 30, type: !2967, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2966 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!89, !117}
!2969 = !DILocation(line: 366, column: 40, scope: !2928, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 32, column: 9, scope: !2965)
!2971 = !DILocation(line: 368, column: 6, scope: !2928, inlinedAt: !2970)
!2972 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !2966, line: 30, type: !117)
!2973 = !DILocation(line: 30, column: 21, scope: !2965)
!2974 = !DILocation(line: 32, column: 15, scope: !2965)
!2975 = !DILocation(line: 374, column: 2, scope: !2928, inlinedAt: !2970)
!2976 = !DILocation(line: 376, column: 14, scope: !2928, inlinedAt: !2970)
!2977 = !DILocation(line: 377, column: 9, scope: !2928, inlinedAt: !2970)
!2978 = !DILocation(line: 377, column: 16, scope: !2928, inlinedAt: !2970)
!2979 = !DILocation(line: 32, column: 18, scope: !2965)
!2980 = !DILocation(line: 32, column: 2, scope: !2965)
!2981 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2982, file: !2982, line: 137, type: !2983, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !363)
!2982 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!90, !1247, !1588, !203, !87}
!2985 = !DILocalVariable(name: "s", arg: 1, scope: !2981, file: !2982, line: 137, type: !1247)
!2986 = !DILocation(line: 137, column: 54, scope: !2981)
!2987 = !DILocalVariable(name: "object", arg: 2, scope: !2981, file: !2982, line: 137, type: !1588)
!2988 = !DILocation(line: 137, column: 69, scope: !2981)
!2989 = !DILocalVariable(name: "size", arg: 3, scope: !2981, file: !2982, line: 138, type: !203)
!2990 = !DILocation(line: 138, column: 12, scope: !2981)
!2991 = !DILocalVariable(name: "flags", arg: 4, scope: !2981, file: !2982, line: 138, type: !87)
!2992 = !DILocation(line: 138, column: 24, scope: !2981)
!2993 = !DILocation(line: 140, column: 17, scope: !2981)
!2994 = !DILocation(line: 140, column: 2, scope: !2981)
