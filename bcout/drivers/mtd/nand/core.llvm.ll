; ModuleID = '../bcout/drivers/mtd/nand/core.llvm.bc'
source_filename = "drivers/mtd/nand/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, %struct.nand_ecc_engine*, %struct.nand_ecc_engine* }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i8* }
%struct.nand_ecc_engine = type { %struct.nand_ecc_engine_ops* }
%struct.nand_ecc_engine_ops = type { i32 (%struct.nand_device*)*, void (%struct.nand_device*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)*, i32 (%struct.nand_device*, %struct.nand_page_io_req*)* }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.39, i32, i32, %union.anon.40, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.39 = type { i8* }
%union.anon.40 = type { i8* }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { i64* }
%struct.nand_ops = type { i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)*, {}* }

@.str = private unnamed_addr constant [55 x i8] c"\014nand: failed to write BBM to block @%llx (err = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\014nand: attempt to erase a bad/reserved block @%llx\0A\00", align 1
@__UNIQUE_ID_description171 = internal constant [44 x i8] c"nandcore.description=Generic NAND framework\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author172 = internal constant [69 x i8] c"nandcore.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1, !dbg !2405
@__UNIQUE_ID_file173 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1, !dbg !2410
@__UNIQUE_ID_license174 = internal constant [24 x i8] c"nandcore.license=GPL v2\00", section ".modinfo", align 1, !dbg !2415
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_description171, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_author172, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file173, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license174, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @nanddev_isbad(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2426 {
entry:
  %retval = alloca i1, align 1
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  %entry1 = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2427, metadata !DIExpression()), !dbg !2428
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2429, metadata !DIExpression()), !dbg !2430
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2431
  %call = call zeroext i1 @nanddev_bbt_is_initialized(%struct.nand_device* %0) #4, !dbg !2433
  br i1 %call, label %if.then, label %if.end14, !dbg !2434

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %entry1, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2438, metadata !DIExpression()), !dbg !2439
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2440
  %2 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2441
  %call2 = call i32 @nanddev_bbt_pos_to_entry(%struct.nand_device* %1, %struct.nand_pos* %2) #4, !dbg !2442
  store i32 %call2, i32* %entry1, align 4, !dbg !2443
  %3 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2444
  %4 = load i32, i32* %entry1, align 4, !dbg !2445
  %call3 = call i32 @nanddev_bbt_get_block_status(%struct.nand_device* %3, i32 %4) #4, !dbg !2446
  store i32 %call3, i32* %status, align 4, !dbg !2447
  %5 = load i32, i32* %status, align 4, !dbg !2448
  %cmp = icmp eq i32 %5, 0, !dbg !2450
  br i1 %cmp, label %if.then4, label %if.end9, !dbg !2451

if.then4:                                         ; preds = %if.then
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2452
  %ops = getelementptr inbounds %struct.nand_device, %struct.nand_device* %6, i32 0, i32 5, !dbg !2455
  %7 = load %struct.nand_ops*, %struct.nand_ops** %ops, align 8, !dbg !2455
  %isbad = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %7, i32 0, i32 2, !dbg !2456
  %isbad5 = bitcast {}** %isbad to i1 (%struct.nand_device*, %struct.nand_pos*)**, !dbg !2456
  %8 = load i1 (%struct.nand_device*, %struct.nand_pos*)*, i1 (%struct.nand_device*, %struct.nand_pos*)** %isbad5, align 8, !dbg !2456
  %9 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2457
  %10 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2458
  %call6 = call zeroext i1 %8(%struct.nand_device* %9, %struct.nand_pos* %10) #4, !dbg !2452
  br i1 %call6, label %if.then7, label %if.else, !dbg !2459

if.then7:                                         ; preds = %if.then4
  store i32 4, i32* %status, align 4, !dbg !2460
  br label %if.end, !dbg !2461

if.else:                                          ; preds = %if.then4
  store i32 1, i32* %status, align 4, !dbg !2462
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %11 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2463
  %12 = load i32, i32* %entry1, align 4, !dbg !2464
  %13 = load i32, i32* %status, align 4, !dbg !2465
  %call8 = call i32 @nanddev_bbt_set_block_status(%struct.nand_device* %11, i32 %12, i32 %13) #4, !dbg !2466
  br label %if.end9, !dbg !2467

if.end9:                                          ; preds = %if.end, %if.then
  %14 = load i32, i32* %status, align 4, !dbg !2468
  %cmp10 = icmp eq i32 %14, 2, !dbg !2470
  br i1 %cmp10, label %if.then12, label %lor.lhs.false, !dbg !2471

lor.lhs.false:                                    ; preds = %if.end9
  %15 = load i32, i32* %status, align 4, !dbg !2472
  %cmp11 = icmp eq i32 %15, 4, !dbg !2473
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2474

if.then12:                                        ; preds = %lor.lhs.false, %if.end9
  store i1 true, i1* %retval, align 1, !dbg !2475
  br label %return, !dbg !2475

if.end13:                                         ; preds = %lor.lhs.false
  store i1 false, i1* %retval, align 1, !dbg !2476
  br label %return, !dbg !2476

if.end14:                                         ; preds = %entry
  %16 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2477
  %ops15 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %16, i32 0, i32 5, !dbg !2478
  %17 = load %struct.nand_ops*, %struct.nand_ops** %ops15, align 8, !dbg !2478
  %isbad16 = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %17, i32 0, i32 2, !dbg !2479
  %isbad17 = bitcast {}** %isbad16 to i1 (%struct.nand_device*, %struct.nand_pos*)**, !dbg !2479
  %18 = load i1 (%struct.nand_device*, %struct.nand_pos*)*, i1 (%struct.nand_device*, %struct.nand_pos*)** %isbad17, align 8, !dbg !2479
  %19 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2480
  %20 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2481
  %call18 = call zeroext i1 %18(%struct.nand_device* %19, %struct.nand_pos* %20) #4, !dbg !2477
  store i1 %call18, i1* %retval, align 1, !dbg !2482
  br label %return, !dbg !2482

return:                                           ; preds = %if.end14, %if.end13, %if.then12
  %21 = load i1, i1* %retval, align 1, !dbg !2483
  ret i1 %21, !dbg !2483
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nanddev_bbt_is_initialized(%struct.nand_device* %nand) #0 !dbg !2484 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2487, metadata !DIExpression()), !dbg !2488
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2489
  %bbt = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 4, !dbg !2490
  %cache = getelementptr inbounds %struct.nand_bbt, %struct.nand_bbt* %bbt, i32 0, i32 0, !dbg !2491
  %1 = load i64*, i64** %cache, align 8, !dbg !2491
  %tobool = icmp ne i64* %1, null, !dbg !2492
  %lnot = xor i1 %tobool, true, !dbg !2492
  %lnot1 = xor i1 %lnot, true, !dbg !2493
  ret i1 %lnot1, !dbg !2494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_bbt_pos_to_entry(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2495 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2500, metadata !DIExpression()), !dbg !2501
  %0 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2502
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %0, i32 0, i32 3, !dbg !2503
  %1 = load i32, i32* %eraseblock, align 4, !dbg !2503
  %2 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2504
  %lun = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %2, i32 0, i32 1, !dbg !2505
  %3 = load i32, i32* %lun, align 4, !dbg !2505
  %4 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2506
  %target = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %4, i32 0, i32 0, !dbg !2507
  %5 = load i32, i32* %target, align 4, !dbg !2507
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2508
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %6, i32 0, i32 1, !dbg !2509
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 7, !dbg !2510
  %7 = load i32, i32* %luns_per_target, align 4, !dbg !2510
  %mul = mul i32 %5, %7, !dbg !2511
  %add = add i32 %3, %mul, !dbg !2512
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2513
  %memorg1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %8, i32 0, i32 1, !dbg !2514
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg1, i32 0, i32 4, !dbg !2515
  %9 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !2515
  %mul2 = mul i32 %add, %9, !dbg !2516
  %add3 = add i32 %1, %mul2, !dbg !2517
  ret i32 %add3, !dbg !2518
}

; Function Attrs: noredzone
declare dso_local i32 @nanddev_bbt_get_block_status(%struct.nand_device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @nanddev_bbt_set_block_status(%struct.nand_device*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_markbad(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2519 {
entry:
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %entry1 = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2524, metadata !DIExpression()), !dbg !2525
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2526
  %call = call %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %0) #4, !dbg !2527
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2525
  call void @llvm.dbg.declare(metadata i32* %entry1, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2530, metadata !DIExpression()), !dbg !2531
  store i32 0, i32* %ret, align 4, !dbg !2531
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2532
  %2 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2534
  %call2 = call zeroext i1 @nanddev_isbad(%struct.nand_device* %1, %struct.nand_pos* %2) #4, !dbg !2535
  br i1 %call2, label %if.then, label %if.end, !dbg !2536

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2537
  br label %return, !dbg !2537

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2538
  %ops = getelementptr inbounds %struct.nand_device, %struct.nand_device* %3, i32 0, i32 5, !dbg !2539
  %4 = load %struct.nand_ops*, %struct.nand_ops** %ops, align 8, !dbg !2539
  %markbad = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %4, i32 0, i32 1, !dbg !2540
  %5 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %markbad, align 8, !dbg !2540
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2541
  %7 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2542
  %call3 = call i32 %5(%struct.nand_device* %6, %struct.nand_pos* %7) #4, !dbg !2538
  store i32 %call3, i32* %ret, align 4, !dbg !2543
  %8 = load i32, i32* %ret, align 4, !dbg !2544
  %tobool = icmp ne i32 %8, 0, !dbg !2544
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !2546

if.then4:                                         ; preds = %if.end
  %9 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2547
  %10 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2547
  %call5 = call i64 @nanddev_pos_to_offs(%struct.nand_device* %9, %struct.nand_pos* %10) #4, !dbg !2547
  %11 = load i32, i32* %ret, align 4, !dbg !2547
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %call5, i32 %11) #5, !dbg !2547
  br label %if.end7, !dbg !2547

if.end7:                                          ; preds = %if.then4, %if.end
  %12 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2548
  %call8 = call zeroext i1 @nanddev_bbt_is_initialized(%struct.nand_device* %12) #4, !dbg !2550
  br i1 %call8, label %if.end10, label %if.then9, !dbg !2551

if.then9:                                         ; preds = %if.end7
  br label %out, !dbg !2552

if.end10:                                         ; preds = %if.end7
  %13 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2553
  %14 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2554
  %call11 = call i32 @nanddev_bbt_pos_to_entry(%struct.nand_device* %13, %struct.nand_pos* %14) #4, !dbg !2555
  store i32 %call11, i32* %entry1, align 4, !dbg !2556
  %15 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2557
  %16 = load i32, i32* %entry1, align 4, !dbg !2558
  %call12 = call i32 @nanddev_bbt_set_block_status(%struct.nand_device* %15, i32 %16, i32 2) #4, !dbg !2559
  store i32 %call12, i32* %ret, align 4, !dbg !2560
  %17 = load i32, i32* %ret, align 4, !dbg !2561
  %tobool13 = icmp ne i32 %17, 0, !dbg !2561
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2563

if.then14:                                        ; preds = %if.end10
  br label %out, !dbg !2564

if.end15:                                         ; preds = %if.end10
  %18 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2565
  %call16 = call i32 @nanddev_bbt_update(%struct.nand_device* %18) #4, !dbg !2566
  store i32 %call16, i32* %ret, align 4, !dbg !2567
  br label %out, !dbg !2568

out:                                              ; preds = %if.end15, %if.then14, %if.then9
  call void @llvm.dbg.label(metadata !2569), !dbg !2570
  %19 = load i32, i32* %ret, align 4, !dbg !2571
  %tobool17 = icmp ne i32 %19, 0, !dbg !2571
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !2573

if.then18:                                        ; preds = %out
  %20 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2574
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 51, !dbg !2575
  %badblocks = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 2, !dbg !2576
  %21 = load i32, i32* %badblocks, align 8, !dbg !2577
  %inc = add i32 %21, 1, !dbg !2577
  store i32 %inc, i32* %badblocks, align 8, !dbg !2577
  br label %if.end19, !dbg !2574

if.end19:                                         ; preds = %if.then18, %out
  %22 = load i32, i32* %ret, align 4, !dbg !2578
  store i32 %22, i32* %retval, align 4, !dbg !2579
  br label %return, !dbg !2579

return:                                           ; preds = %if.end19, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !2580
  ret i32 %23, !dbg !2580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %nand) #0 !dbg !2581 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2584, metadata !DIExpression()), !dbg !2585
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2586
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 0, !dbg !2587
  ret %struct.mtd_info* %mtd, !dbg !2588
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @nanddev_pos_to_offs(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2589 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  %npages = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2594, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.declare(metadata i32* %npages, metadata !2596, metadata !DIExpression()), !dbg !2597
  %0 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2598
  %page = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %0, i32 0, i32 4, !dbg !2599
  %1 = load i32, i32* %page, align 4, !dbg !2599
  %2 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2600
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %2, i32 0, i32 3, !dbg !2601
  %3 = load i32, i32* %eraseblock, align 4, !dbg !2601
  %4 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2602
  %lun = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %4, i32 0, i32 1, !dbg !2603
  %5 = load i32, i32* %lun, align 4, !dbg !2603
  %6 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2604
  %target = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %6, i32 0, i32 0, !dbg !2605
  %7 = load i32, i32* %target, align 4, !dbg !2605
  %8 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2606
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %8, i32 0, i32 1, !dbg !2607
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 7, !dbg !2608
  %9 = load i32, i32* %luns_per_target, align 4, !dbg !2608
  %mul = mul i32 %7, %9, !dbg !2609
  %add = add i32 %5, %mul, !dbg !2610
  %10 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2611
  %memorg1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %10, i32 0, i32 1, !dbg !2612
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg1, i32 0, i32 4, !dbg !2613
  %11 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !2613
  %mul2 = mul i32 %add, %11, !dbg !2614
  %add3 = add i32 %3, %mul2, !dbg !2615
  %12 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2616
  %memorg4 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %12, i32 0, i32 1, !dbg !2617
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg4, i32 0, i32 3, !dbg !2618
  %13 = load i32, i32* %pages_per_eraseblock, align 4, !dbg !2618
  %mul5 = mul i32 %add3, %13, !dbg !2619
  %add6 = add i32 %1, %mul5, !dbg !2620
  store i32 %add6, i32* %npages, align 4, !dbg !2621
  %14 = load i32, i32* %npages, align 4, !dbg !2622
  %conv = zext i32 %14 to i64, !dbg !2623
  %15 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2624
  %memorg7 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %15, i32 0, i32 1, !dbg !2625
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg7, i32 0, i32 1, !dbg !2626
  %16 = load i32, i32* %pagesize, align 4, !dbg !2626
  %conv8 = zext i32 %16 to i64, !dbg !2624
  %mul9 = mul i64 %conv, %conv8, !dbg !2627
  ret i64 %mul9, !dbg !2628
}

; Function Attrs: noredzone
declare dso_local i32 @nanddev_bbt_update(%struct.nand_device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @nanddev_isreserved(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2629 {
entry:
  %retval = alloca i1, align 1
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  %entry1 = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.declare(metadata i32* %entry1, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2636, metadata !DIExpression()), !dbg !2637
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2638
  %call = call zeroext i1 @nanddev_bbt_is_initialized(%struct.nand_device* %0) #4, !dbg !2640
  br i1 %call, label %if.end, label %if.then, !dbg !2641

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !2642
  br label %return, !dbg !2642

if.end:                                           ; preds = %entry
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2643
  %2 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2644
  %call2 = call i32 @nanddev_bbt_pos_to_entry(%struct.nand_device* %1, %struct.nand_pos* %2) #4, !dbg !2645
  store i32 %call2, i32* %entry1, align 4, !dbg !2646
  %3 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2647
  %4 = load i32, i32* %entry1, align 4, !dbg !2648
  %call3 = call i32 @nanddev_bbt_get_block_status(%struct.nand_device* %3, i32 %4) #4, !dbg !2649
  store i32 %call3, i32* %status, align 4, !dbg !2650
  %5 = load i32, i32* %status, align 4, !dbg !2651
  %cmp = icmp eq i32 %5, 3, !dbg !2652
  store i1 %cmp, i1* %retval, align 1, !dbg !2653
  br label %return, !dbg !2653

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !2654
  ret i1 %6, !dbg !2654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_erase(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2655 {
entry:
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2658, metadata !DIExpression()), !dbg !2659
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2660
  %1 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2662
  %call = call zeroext i1 @nanddev_isbad(%struct.nand_device* %0, %struct.nand_pos* %1) #4, !dbg !2663
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !2664

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2665
  %3 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2666
  %call1 = call zeroext i1 @nanddev_isreserved(%struct.nand_device* %2, %struct.nand_pos* %3) #4, !dbg !2667
  br i1 %call1, label %if.then, label %if.end, !dbg !2668

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2669
  %5 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2669
  %call2 = call i64 @nanddev_pos_to_offs(%struct.nand_device* %4, %struct.nand_pos* %5) #4, !dbg !2669
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %call2) #5, !dbg !2669
  store i32 -5, i32* %retval, align 4, !dbg !2671
  br label %return, !dbg !2671

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2672
  %ops = getelementptr inbounds %struct.nand_device, %struct.nand_device* %6, i32 0, i32 5, !dbg !2673
  %7 = load %struct.nand_ops*, %struct.nand_ops** %ops, align 8, !dbg !2673
  %erase = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %7, i32 0, i32 0, !dbg !2674
  %8 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %erase, align 8, !dbg !2674
  %9 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2675
  %10 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2676
  %call4 = call i32 %8(%struct.nand_device* %9, %struct.nand_pos* %10) #4, !dbg !2672
  store i32 %call4, i32* %retval, align 4, !dbg !2677
  br label %return, !dbg !2677

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2678
  ret i32 %11, !dbg !2678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_mtd_erase(%struct.mtd_info* %mtd, %struct.erase_info* %einfo) #0 !dbg !2679 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %einfo.addr = alloca %struct.erase_info*, align 8
  %nand = alloca %struct.nand_device*, align 8
  %pos = alloca %struct.nand_pos, align 4
  %last = alloca %struct.nand_pos, align 4
  %ret = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  store %struct.erase_info* %einfo, %struct.erase_info** %einfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.erase_info** %einfo.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !2684, metadata !DIExpression()), !dbg !2685
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2686
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #4, !dbg !2687
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !2685
  call void @llvm.dbg.declare(metadata %struct.nand_pos* %pos, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.declare(metadata %struct.nand_pos* %last, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2692, metadata !DIExpression()), !dbg !2693
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2694
  %2 = load %struct.erase_info*, %struct.erase_info** %einfo.addr, align 8, !dbg !2695
  %addr = getelementptr inbounds %struct.erase_info, %struct.erase_info* %2, i32 0, i32 0, !dbg !2696
  %3 = load i64, i64* %addr, align 8, !dbg !2696
  %call1 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %1, i64 %3, %struct.nand_pos* %pos) #4, !dbg !2697
  %4 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2698
  %5 = load %struct.erase_info*, %struct.erase_info** %einfo.addr, align 8, !dbg !2699
  %addr2 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %5, i32 0, i32 0, !dbg !2700
  %6 = load i64, i64* %addr2, align 8, !dbg !2700
  %7 = load %struct.erase_info*, %struct.erase_info** %einfo.addr, align 8, !dbg !2701
  %len = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 1, !dbg !2702
  %8 = load i64, i64* %len, align 8, !dbg !2702
  %add = add i64 %6, %8, !dbg !2703
  %sub = sub i64 %add, 1, !dbg !2704
  %call3 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %4, i64 %sub, %struct.nand_pos* %last) #4, !dbg !2705
  br label %while.cond, !dbg !2706

while.cond:                                       ; preds = %if.end, %entry
  %call4 = call i32 @nanddev_pos_cmp(%struct.nand_pos* %pos, %struct.nand_pos* %last) #4, !dbg !2707
  %cmp = icmp sle i32 %call4, 0, !dbg !2708
  br i1 %cmp, label %while.body, label %while.end, !dbg !2706

while.body:                                       ; preds = %while.cond
  %9 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2709
  %call5 = call i32 @nanddev_erase(%struct.nand_device* %9, %struct.nand_pos* %pos) #4, !dbg !2711
  store i32 %call5, i32* %ret, align 4, !dbg !2712
  %10 = load i32, i32* %ret, align 4, !dbg !2713
  %tobool = icmp ne i32 %10, 0, !dbg !2713
  br i1 %tobool, label %if.then, label %if.end, !dbg !2715

if.then:                                          ; preds = %while.body
  %11 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2716
  %call6 = call i64 @nanddev_pos_to_offs(%struct.nand_device* %11, %struct.nand_pos* %pos) #4, !dbg !2718
  %12 = load %struct.erase_info*, %struct.erase_info** %einfo.addr, align 8, !dbg !2719
  %fail_addr = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 2, !dbg !2720
  store i64 %call6, i64* %fail_addr, align 8, !dbg !2721
  %13 = load i32, i32* %ret, align 4, !dbg !2722
  store i32 %13, i32* %retval, align 4, !dbg !2723
  br label %return, !dbg !2723

if.end:                                           ; preds = %while.body
  %14 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2724
  call void @nanddev_pos_next_eraseblock(%struct.nand_device* %14, %struct.nand_pos* %pos) #4, !dbg !2725
  br label %while.cond, !dbg !2706, !llvm.loop !2726

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !2728
  br label %return, !dbg !2728

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2729
  ret i32 %15, !dbg !2729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %mtd) #0 !dbg !2730 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nand_device*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2735, metadata !DIExpression()), !dbg !2737
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2737
  %1 = bitcast %struct.mtd_info* %0 to i8*, !dbg !2737
  store i8* %1, i8** %__mptr, align 8, !dbg !2737
  br label %do.body, !dbg !2737

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2738

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2737
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2737
  %3 = bitcast i8* %add.ptr to %struct.nand_device*, !dbg !2737
  store %struct.nand_device* %3, %struct.nand_device** %tmp, align 8, !dbg !2738
  %4 = load %struct.nand_device*, %struct.nand_device** %tmp, align 8, !dbg !2737
  ret %struct.nand_device* %4, !dbg !2740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_offs_to_pos(%struct.nand_device* %nand, i64 %offs, %struct.nand_pos* %pos) #0 !dbg !2741 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %offs.addr = alloca i64, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  %pageoffs = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__base4 = alloca i32, align 4
  %__rem6 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %__base13 = alloca i32, align 4
  %__rem15 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %__base25 = alloca i32, align 4
  %__rem27 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.declare(metadata i32* %pageoffs, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load i64, i64* %offs.addr, align 8, !dbg !2755
  store i64 %0, i64* %tmp, align 8, !dbg !2754
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2756, metadata !DIExpression()), !dbg !2758
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2758
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 1, !dbg !2758
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 1, !dbg !2758
  %2 = load i32, i32* %pagesize, align 4, !dbg !2758
  store i32 %2, i32* %__base, align 4, !dbg !2758
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2759, metadata !DIExpression()), !dbg !2758
  %3 = load i64, i64* %tmp, align 8, !dbg !2758
  %4 = load i32, i32* %__base, align 4, !dbg !2758
  %conv = zext i32 %4 to i64, !dbg !2758
  %rem = urem i64 %3, %conv, !dbg !2758
  %conv1 = trunc i64 %rem to i32, !dbg !2758
  store i32 %conv1, i32* %__rem, align 4, !dbg !2758
  %5 = load i64, i64* %tmp, align 8, !dbg !2758
  %6 = load i32, i32* %__base, align 4, !dbg !2758
  %conv2 = zext i32 %6 to i64, !dbg !2758
  %div = udiv i64 %5, %conv2, !dbg !2758
  store i64 %div, i64* %tmp, align 8, !dbg !2758
  %7 = load i32, i32* %__rem, align 4, !dbg !2758
  store i32 %7, i32* %tmp3, align 4, !dbg !2758
  %8 = load i32, i32* %tmp3, align 4, !dbg !2758
  store i32 %8, i32* %pageoffs, align 4, !dbg !2760
  call void @llvm.dbg.declare(metadata i32* %__base4, metadata !2761, metadata !DIExpression()), !dbg !2763
  %9 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2763
  %memorg5 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %9, i32 0, i32 1, !dbg !2763
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg5, i32 0, i32 3, !dbg !2763
  %10 = load i32, i32* %pages_per_eraseblock, align 4, !dbg !2763
  store i32 %10, i32* %__base4, align 4, !dbg !2763
  call void @llvm.dbg.declare(metadata i32* %__rem6, metadata !2764, metadata !DIExpression()), !dbg !2763
  %11 = load i64, i64* %tmp, align 8, !dbg !2763
  %12 = load i32, i32* %__base4, align 4, !dbg !2763
  %conv7 = zext i32 %12 to i64, !dbg !2763
  %rem8 = urem i64 %11, %conv7, !dbg !2763
  %conv9 = trunc i64 %rem8 to i32, !dbg !2763
  store i32 %conv9, i32* %__rem6, align 4, !dbg !2763
  %13 = load i64, i64* %tmp, align 8, !dbg !2763
  %14 = load i32, i32* %__base4, align 4, !dbg !2763
  %conv10 = zext i32 %14 to i64, !dbg !2763
  %div11 = udiv i64 %13, %conv10, !dbg !2763
  store i64 %div11, i64* %tmp, align 8, !dbg !2763
  %15 = load i32, i32* %__rem6, align 4, !dbg !2763
  store i32 %15, i32* %tmp12, align 4, !dbg !2763
  %16 = load i32, i32* %tmp12, align 4, !dbg !2763
  %17 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2765
  %page = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %17, i32 0, i32 4, !dbg !2766
  store i32 %16, i32* %page, align 4, !dbg !2767
  call void @llvm.dbg.declare(metadata i32* %__base13, metadata !2768, metadata !DIExpression()), !dbg !2770
  %18 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2770
  %memorg14 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %18, i32 0, i32 1, !dbg !2770
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg14, i32 0, i32 4, !dbg !2770
  %19 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !2770
  store i32 %19, i32* %__base13, align 4, !dbg !2770
  call void @llvm.dbg.declare(metadata i32* %__rem15, metadata !2771, metadata !DIExpression()), !dbg !2770
  %20 = load i64, i64* %tmp, align 8, !dbg !2770
  %21 = load i32, i32* %__base13, align 4, !dbg !2770
  %conv16 = zext i32 %21 to i64, !dbg !2770
  %rem17 = urem i64 %20, %conv16, !dbg !2770
  %conv18 = trunc i64 %rem17 to i32, !dbg !2770
  store i32 %conv18, i32* %__rem15, align 4, !dbg !2770
  %22 = load i64, i64* %tmp, align 8, !dbg !2770
  %23 = load i32, i32* %__base13, align 4, !dbg !2770
  %conv19 = zext i32 %23 to i64, !dbg !2770
  %div20 = udiv i64 %22, %conv19, !dbg !2770
  store i64 %div20, i64* %tmp, align 8, !dbg !2770
  %24 = load i32, i32* %__rem15, align 4, !dbg !2770
  store i32 %24, i32* %tmp21, align 4, !dbg !2770
  %25 = load i32, i32* %tmp21, align 4, !dbg !2770
  %26 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2772
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %26, i32 0, i32 3, !dbg !2773
  store i32 %25, i32* %eraseblock, align 4, !dbg !2774
  %27 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2775
  %eraseblock22 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %27, i32 0, i32 3, !dbg !2776
  %28 = load i32, i32* %eraseblock22, align 4, !dbg !2776
  %29 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2777
  %memorg23 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %29, i32 0, i32 1, !dbg !2778
  %planes_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg23, i32 0, i32 6, !dbg !2779
  %30 = load i32, i32* %planes_per_lun, align 8, !dbg !2779
  %rem24 = urem i32 %28, %30, !dbg !2780
  %31 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2781
  %plane = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %31, i32 0, i32 2, !dbg !2782
  store i32 %rem24, i32* %plane, align 4, !dbg !2783
  call void @llvm.dbg.declare(metadata i32* %__base25, metadata !2784, metadata !DIExpression()), !dbg !2786
  %32 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2786
  %memorg26 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %32, i32 0, i32 1, !dbg !2786
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg26, i32 0, i32 7, !dbg !2786
  %33 = load i32, i32* %luns_per_target, align 4, !dbg !2786
  store i32 %33, i32* %__base25, align 4, !dbg !2786
  call void @llvm.dbg.declare(metadata i32* %__rem27, metadata !2787, metadata !DIExpression()), !dbg !2786
  %34 = load i64, i64* %tmp, align 8, !dbg !2786
  %35 = load i32, i32* %__base25, align 4, !dbg !2786
  %conv28 = zext i32 %35 to i64, !dbg !2786
  %rem29 = urem i64 %34, %conv28, !dbg !2786
  %conv30 = trunc i64 %rem29 to i32, !dbg !2786
  store i32 %conv30, i32* %__rem27, align 4, !dbg !2786
  %36 = load i64, i64* %tmp, align 8, !dbg !2786
  %37 = load i32, i32* %__base25, align 4, !dbg !2786
  %conv31 = zext i32 %37 to i64, !dbg !2786
  %div32 = udiv i64 %36, %conv31, !dbg !2786
  store i64 %div32, i64* %tmp, align 8, !dbg !2786
  %38 = load i32, i32* %__rem27, align 4, !dbg !2786
  store i32 %38, i32* %tmp33, align 4, !dbg !2786
  %39 = load i32, i32* %tmp33, align 4, !dbg !2786
  %40 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2788
  %lun = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %40, i32 0, i32 1, !dbg !2789
  store i32 %39, i32* %lun, align 4, !dbg !2790
  %41 = load i64, i64* %tmp, align 8, !dbg !2791
  %conv34 = trunc i64 %41 to i32, !dbg !2791
  %42 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2792
  %target = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %42, i32 0, i32 0, !dbg !2793
  store i32 %conv34, i32* %target, align 4, !dbg !2794
  %43 = load i32, i32* %pageoffs, align 4, !dbg !2795
  ret i32 %43, !dbg !2796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_pos_cmp(%struct.nand_pos* %a, %struct.nand_pos* %b) #0 !dbg !2797 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.nand_pos*, align 8
  %b.addr = alloca %struct.nand_pos*, align 8
  store %struct.nand_pos* %a, %struct.nand_pos** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %a.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  store %struct.nand_pos* %b, %struct.nand_pos** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %b.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  %0 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2804
  %target = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %0, i32 0, i32 0, !dbg !2806
  %1 = load i32, i32* %target, align 4, !dbg !2806
  %2 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2807
  %target1 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %2, i32 0, i32 0, !dbg !2808
  %3 = load i32, i32* %target1, align 4, !dbg !2808
  %cmp = icmp ne i32 %1, %3, !dbg !2809
  br i1 %cmp, label %if.then, label %if.end, !dbg !2810

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2811
  %target2 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %4, i32 0, i32 0, !dbg !2812
  %5 = load i32, i32* %target2, align 4, !dbg !2812
  %6 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2813
  %target3 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %6, i32 0, i32 0, !dbg !2814
  %7 = load i32, i32* %target3, align 4, !dbg !2814
  %cmp4 = icmp ult i32 %5, %7, !dbg !2815
  %8 = zext i1 %cmp4 to i64, !dbg !2811
  %cond = select i1 %cmp4, i32 -1, i32 1, !dbg !2811
  store i32 %cond, i32* %retval, align 4, !dbg !2816
  br label %return, !dbg !2816

if.end:                                           ; preds = %entry
  %9 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2817
  %lun = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %9, i32 0, i32 1, !dbg !2819
  %10 = load i32, i32* %lun, align 4, !dbg !2819
  %11 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2820
  %lun5 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %11, i32 0, i32 1, !dbg !2821
  %12 = load i32, i32* %lun5, align 4, !dbg !2821
  %cmp6 = icmp ne i32 %10, %12, !dbg !2822
  br i1 %cmp6, label %if.then7, label %if.end12, !dbg !2823

if.then7:                                         ; preds = %if.end
  %13 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2824
  %lun8 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %13, i32 0, i32 1, !dbg !2825
  %14 = load i32, i32* %lun8, align 4, !dbg !2825
  %15 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2826
  %lun9 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %15, i32 0, i32 1, !dbg !2827
  %16 = load i32, i32* %lun9, align 4, !dbg !2827
  %cmp10 = icmp ult i32 %14, %16, !dbg !2828
  %17 = zext i1 %cmp10 to i64, !dbg !2824
  %cond11 = select i1 %cmp10, i32 -1, i32 1, !dbg !2824
  store i32 %cond11, i32* %retval, align 4, !dbg !2829
  br label %return, !dbg !2829

if.end12:                                         ; preds = %if.end
  %18 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2830
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %18, i32 0, i32 3, !dbg !2832
  %19 = load i32, i32* %eraseblock, align 4, !dbg !2832
  %20 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2833
  %eraseblock13 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %20, i32 0, i32 3, !dbg !2834
  %21 = load i32, i32* %eraseblock13, align 4, !dbg !2834
  %cmp14 = icmp ne i32 %19, %21, !dbg !2835
  br i1 %cmp14, label %if.then15, label %if.end20, !dbg !2836

if.then15:                                        ; preds = %if.end12
  %22 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2837
  %eraseblock16 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %22, i32 0, i32 3, !dbg !2838
  %23 = load i32, i32* %eraseblock16, align 4, !dbg !2838
  %24 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2839
  %eraseblock17 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %24, i32 0, i32 3, !dbg !2840
  %25 = load i32, i32* %eraseblock17, align 4, !dbg !2840
  %cmp18 = icmp ult i32 %23, %25, !dbg !2841
  %26 = zext i1 %cmp18 to i64, !dbg !2837
  %cond19 = select i1 %cmp18, i32 -1, i32 1, !dbg !2837
  store i32 %cond19, i32* %retval, align 4, !dbg !2842
  br label %return, !dbg !2842

if.end20:                                         ; preds = %if.end12
  %27 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2843
  %page = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %27, i32 0, i32 4, !dbg !2845
  %28 = load i32, i32* %page, align 4, !dbg !2845
  %29 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2846
  %page21 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %29, i32 0, i32 4, !dbg !2847
  %30 = load i32, i32* %page21, align 4, !dbg !2847
  %cmp22 = icmp ne i32 %28, %30, !dbg !2848
  br i1 %cmp22, label %if.then23, label %if.end28, !dbg !2849

if.then23:                                        ; preds = %if.end20
  %31 = load %struct.nand_pos*, %struct.nand_pos** %a.addr, align 8, !dbg !2850
  %page24 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %31, i32 0, i32 4, !dbg !2851
  %32 = load i32, i32* %page24, align 4, !dbg !2851
  %33 = load %struct.nand_pos*, %struct.nand_pos** %b.addr, align 8, !dbg !2852
  %page25 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %33, i32 0, i32 4, !dbg !2853
  %34 = load i32, i32* %page25, align 4, !dbg !2853
  %cmp26 = icmp ult i32 %32, %34, !dbg !2854
  %35 = zext i1 %cmp26 to i64, !dbg !2850
  %cond27 = select i1 %cmp26, i32 -1, i32 1, !dbg !2850
  store i32 %cond27, i32* %retval, align 4, !dbg !2855
  br label %return, !dbg !2855

if.end28:                                         ; preds = %if.end20
  store i32 0, i32* %retval, align 4, !dbg !2856
  br label %return, !dbg !2856

return:                                           ; preds = %if.end28, %if.then23, %if.then15, %if.then7, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !2857
  ret i32 %36, !dbg !2857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_pos_next_eraseblock(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2858 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  %0 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2865
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %0, i32 0, i32 3, !dbg !2867
  %1 = load i32, i32* %eraseblock, align 4, !dbg !2867
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2868
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %2, i32 0, i32 1, !dbg !2869
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 4, !dbg !2870
  %3 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !2870
  %sub = sub i32 %3, 1, !dbg !2871
  %cmp = icmp uge i32 %1, %sub, !dbg !2872
  br i1 %cmp, label %if.then, label %if.end, !dbg !2873

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2874
  %5 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2875
  call void @nanddev_pos_next_lun(%struct.nand_device* %4, %struct.nand_pos* %5) #4, !dbg !2876
  br label %return, !dbg !2877

if.end:                                           ; preds = %entry
  %6 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2878
  %eraseblock1 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %6, i32 0, i32 3, !dbg !2879
  %7 = load i32, i32* %eraseblock1, align 4, !dbg !2880
  %inc = add i32 %7, 1, !dbg !2880
  store i32 %inc, i32* %eraseblock1, align 4, !dbg !2880
  %8 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2881
  %page = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %8, i32 0, i32 4, !dbg !2882
  store i32 0, i32* %page, align 4, !dbg !2883
  %9 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2884
  %eraseblock2 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %9, i32 0, i32 3, !dbg !2885
  %10 = load i32, i32* %eraseblock2, align 4, !dbg !2885
  %11 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2886
  %memorg3 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %11, i32 0, i32 1, !dbg !2887
  %planes_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg3, i32 0, i32 6, !dbg !2888
  %12 = load i32, i32* %planes_per_lun, align 8, !dbg !2888
  %rem = urem i32 %10, %12, !dbg !2889
  %13 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2890
  %plane = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %13, i32 0, i32 2, !dbg !2891
  store i32 %rem, i32* %plane, align 4, !dbg !2892
  br label %return, !dbg !2893

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_mtd_max_bad_blocks(%struct.mtd_info* %mtd, i64 %offs, i64 %len) #0 !dbg !2894 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %nand = alloca %struct.nand_device*, align 8
  %pos = alloca %struct.nand_pos, align 4
  %end = alloca %struct.nand_pos, align 4
  %max_bb = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2895, metadata !DIExpression()), !dbg !2896
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !2897, metadata !DIExpression()), !dbg !2898
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand, metadata !2901, metadata !DIExpression()), !dbg !2902
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2903
  %call = call %struct.nand_device* @mtd_to_nanddev(%struct.mtd_info* %0) #4, !dbg !2904
  store %struct.nand_device* %call, %struct.nand_device** %nand, align 8, !dbg !2902
  call void @llvm.dbg.declare(metadata %struct.nand_pos* %pos, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.declare(metadata %struct.nand_pos* %end, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %max_bb, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i32 0, i32* %max_bb, align 4, !dbg !2910
  %1 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2911
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %1, i32 0, i32 1, !dbg !2913
  %max_bad_eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 5, !dbg !2914
  %2 = load i32, i32* %max_bad_eraseblocks_per_lun, align 4, !dbg !2914
  %tobool = icmp ne i32 %2, 0, !dbg !2911
  br i1 %tobool, label %if.end, label %if.then, !dbg !2915

if.then:                                          ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !2916
  br label %return, !dbg !2916

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2917
  %4 = load i64, i64* %offs.addr, align 8, !dbg !2918
  %call1 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %3, i64 %4, %struct.nand_pos* %pos) #4, !dbg !2919
  %5 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2920
  %6 = load i64, i64* %offs.addr, align 8, !dbg !2921
  %7 = load i64, i64* %len.addr, align 8, !dbg !2922
  %add = add i64 %6, %7, !dbg !2923
  %call2 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %5, i64 %add, %struct.nand_pos* %end) #4, !dbg !2924
  %8 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2925
  %9 = load i64, i64* %offs.addr, align 8, !dbg !2927
  %call3 = call i32 @nanddev_offs_to_pos(%struct.nand_device* %8, i64 %9, %struct.nand_pos* %pos) #4, !dbg !2928
  br label %for.cond, !dbg !2928

for.cond:                                         ; preds = %for.inc, %if.end
  %call4 = call i32 @nanddev_pos_cmp(%struct.nand_pos* %pos, %struct.nand_pos* %end) #4, !dbg !2929
  %cmp = icmp slt i32 %call4, 0, !dbg !2931
  br i1 %cmp, label %for.body, label %for.end, !dbg !2932

for.body:                                         ; preds = %for.cond
  %10 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2933
  %memorg5 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %10, i32 0, i32 1, !dbg !2934
  %max_bad_eraseblocks_per_lun6 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg5, i32 0, i32 5, !dbg !2935
  %11 = load i32, i32* %max_bad_eraseblocks_per_lun6, align 4, !dbg !2935
  %12 = load i32, i32* %max_bb, align 4, !dbg !2936
  %add7 = add i32 %12, %11, !dbg !2936
  store i32 %add7, i32* %max_bb, align 4, !dbg !2936
  br label %for.inc, !dbg !2937

for.inc:                                          ; preds = %for.body
  %13 = load %struct.nand_device*, %struct.nand_device** %nand, align 8, !dbg !2938
  call void @nanddev_pos_next_lun(%struct.nand_device* %13, %struct.nand_pos* %pos) #4, !dbg !2939
  br label %for.cond, !dbg !2940, !llvm.loop !2941

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %max_bb, align 4, !dbg !2943
  store i32 %14, i32* %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2945
  ret i32 %15, !dbg !2945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_pos_next_lun(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !2946 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2947, metadata !DIExpression()), !dbg !2948
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  %0 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2951
  %lun = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %0, i32 0, i32 1, !dbg !2953
  %1 = load i32, i32* %lun, align 4, !dbg !2953
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2954
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %2, i32 0, i32 1, !dbg !2955
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 7, !dbg !2956
  %3 = load i32, i32* %luns_per_target, align 4, !dbg !2956
  %sub = sub i32 %3, 1, !dbg !2957
  %cmp = icmp uge i32 %1, %sub, !dbg !2958
  br i1 %cmp, label %if.then, label %if.end, !dbg !2959

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2960
  %5 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2961
  call void @nanddev_pos_next_target(%struct.nand_device* %4, %struct.nand_pos* %5) #4, !dbg !2962
  br label %return, !dbg !2963

if.end:                                           ; preds = %entry
  %6 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2964
  %lun1 = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %6, i32 0, i32 1, !dbg !2965
  %7 = load i32, i32* %lun1, align 4, !dbg !2966
  %inc = add i32 %7, 1, !dbg !2966
  store i32 %inc, i32* %lun1, align 4, !dbg !2966
  %8 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2967
  %page = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %8, i32 0, i32 4, !dbg !2968
  store i32 0, i32* %page, align 4, !dbg !2969
  %9 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2970
  %plane = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %9, i32 0, i32 2, !dbg !2971
  store i32 0, i32* %plane, align 4, !dbg !2972
  %10 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !2973
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %10, i32 0, i32 3, !dbg !2974
  store i32 0, i32* %eraseblock, align 4, !dbg !2975
  br label %return, !dbg !2976

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nanddev_init(%struct.nand_device* %nand, %struct.nand_ops* %ops, %struct.module* %owner) #0 !dbg !2977 {
entry:
  %x.addr.i44 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i44, metadata !2980, metadata !DIExpression()), !dbg !2985
  %r.i45 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i45, metadata !2987, metadata !DIExpression()), !dbg !2988
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !2980, metadata !DIExpression()), !dbg !2989
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !2987, metadata !DIExpression()), !dbg !2991
  %retval = alloca i32, align 4
  %nand.addr = alloca %struct.nand_device*, align 8
  %ops.addr = alloca %struct.nand_ops*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %memorg = alloca %struct.nand_memory_organization*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2992, metadata !DIExpression()), !dbg !2993
  store %struct.nand_ops* %ops, %struct.nand_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_ops** %ops.addr, metadata !2994, metadata !DIExpression()), !dbg !2995
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2998, metadata !DIExpression()), !dbg !2999
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3000
  %call = call %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %0) #4, !dbg !3001
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.nand_memory_organization** %memorg, metadata !3002, metadata !DIExpression()), !dbg !3004
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3005
  %call1 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %1) #4, !dbg !3006
  store %struct.nand_memory_organization* %call1, %struct.nand_memory_organization** %memorg, align 8, !dbg !3004
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3007
  %tobool = icmp ne %struct.nand_device* %2, null, !dbg !3007
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3009

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.nand_ops*, %struct.nand_ops** %ops.addr, align 8, !dbg !3010
  %tobool2 = icmp ne %struct.nand_ops* %3, null, !dbg !3010
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3011

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3012
  br label %return, !dbg !3012

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.nand_ops*, %struct.nand_ops** %ops.addr, align 8, !dbg !3013
  %erase = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %4, i32 0, i32 0, !dbg !3015
  %5 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %erase, align 8, !dbg !3015
  %tobool3 = icmp ne i32 (%struct.nand_device*, %struct.nand_pos*)* %5, null, !dbg !3013
  br i1 %tobool3, label %lor.lhs.false4, label %if.then9, !dbg !3016

lor.lhs.false4:                                   ; preds = %if.end
  %6 = load %struct.nand_ops*, %struct.nand_ops** %ops.addr, align 8, !dbg !3017
  %markbad = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %6, i32 0, i32 1, !dbg !3018
  %7 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %markbad, align 8, !dbg !3018
  %tobool5 = icmp ne i32 (%struct.nand_device*, %struct.nand_pos*)* %7, null, !dbg !3017
  br i1 %tobool5, label %lor.lhs.false6, label %if.then9, !dbg !3019

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %8 = load %struct.nand_ops*, %struct.nand_ops** %ops.addr, align 8, !dbg !3020
  %isbad = getelementptr inbounds %struct.nand_ops, %struct.nand_ops* %8, i32 0, i32 2, !dbg !3021
  %isbad7 = bitcast {}** %isbad to i1 (%struct.nand_device*, %struct.nand_pos*)**, !dbg !3021
  %9 = load i1 (%struct.nand_device*, %struct.nand_pos*)*, i1 (%struct.nand_device*, %struct.nand_pos*)** %isbad7, align 8, !dbg !3021
  %tobool8 = icmp ne i1 (%struct.nand_device*, %struct.nand_pos*)* %9, null, !dbg !3020
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3022

if.then9:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3023
  br label %return, !dbg !3023

if.end10:                                         ; preds = %lor.lhs.false6
  %10 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3024
  %bits_per_cell = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %10, i32 0, i32 0, !dbg !3026
  %11 = load i32, i32* %bits_per_cell, align 4, !dbg !3026
  %tobool11 = icmp ne i32 %11, 0, !dbg !3024
  br i1 %tobool11, label %lor.lhs.false12, label %if.then24, !dbg !3027

lor.lhs.false12:                                  ; preds = %if.end10
  %12 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3028
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %12, i32 0, i32 1, !dbg !3029
  %13 = load i32, i32* %pagesize, align 4, !dbg !3029
  %tobool13 = icmp ne i32 %13, 0, !dbg !3028
  br i1 %tobool13, label %lor.lhs.false14, label %if.then24, !dbg !3030

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %14 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3031
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %14, i32 0, i32 3, !dbg !3032
  %15 = load i32, i32* %pages_per_eraseblock, align 4, !dbg !3032
  %tobool15 = icmp ne i32 %15, 0, !dbg !3031
  br i1 %tobool15, label %lor.lhs.false16, label %if.then24, !dbg !3033

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %16 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3034
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %16, i32 0, i32 4, !dbg !3035
  %17 = load i32, i32* %eraseblocks_per_lun, align 4, !dbg !3035
  %tobool17 = icmp ne i32 %17, 0, !dbg !3034
  br i1 %tobool17, label %lor.lhs.false18, label %if.then24, !dbg !3036

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %18 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3037
  %planes_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %18, i32 0, i32 6, !dbg !3038
  %19 = load i32, i32* %planes_per_lun, align 4, !dbg !3038
  %tobool19 = icmp ne i32 %19, 0, !dbg !3037
  br i1 %tobool19, label %lor.lhs.false20, label %if.then24, !dbg !3039

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %20 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3040
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %20, i32 0, i32 7, !dbg !3041
  %21 = load i32, i32* %luns_per_target, align 4, !dbg !3041
  %tobool21 = icmp ne i32 %21, 0, !dbg !3040
  br i1 %tobool21, label %lor.lhs.false22, label %if.then24, !dbg !3042

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %22 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3043
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %22, i32 0, i32 8, !dbg !3044
  %23 = load i32, i32* %ntargets, align 4, !dbg !3044
  %tobool23 = icmp ne i32 %23, 0, !dbg !3043
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !3045

if.then24:                                        ; preds = %lor.lhs.false22, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %if.end10
  store i32 -22, i32* %retval, align 4, !dbg !3046
  br label %return, !dbg !3046

if.end25:                                         ; preds = %lor.lhs.false22
  %24 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3047
  %pages_per_eraseblock26 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %24, i32 0, i32 3, !dbg !3048
  %25 = load i32, i32* %pages_per_eraseblock26, align 4, !dbg !3048
  %sub = sub i32 %25, 1, !dbg !3049
  store i32 %sub, i32* %x.addr.i, align 4
  %26 = load i32, i32* %x.addr.i, align 4, !dbg !3050
  %27 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %26, i32 -1) #6, !dbg !3051, !srcloc !3052
  store i32 %27, i32* %r.i, align 4, !dbg !3051
  %28 = load i32, i32* %r.i, align 4, !dbg !3053
  %add.i = add i32 %28, 1, !dbg !3054
  %29 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3055
  %rowconv = getelementptr inbounds %struct.nand_device, %struct.nand_device* %29, i32 0, i32 3, !dbg !3056
  %eraseblock_addr_shift = getelementptr inbounds %struct.nand_row_converter, %struct.nand_row_converter* %rowconv, i32 0, i32 1, !dbg !3057
  store i32 %add.i, i32* %eraseblock_addr_shift, align 4, !dbg !3058
  %30 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3059
  %eraseblocks_per_lun28 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %30, i32 0, i32 4, !dbg !3060
  %31 = load i32, i32* %eraseblocks_per_lun28, align 4, !dbg !3060
  %sub29 = sub i32 %31, 1, !dbg !3061
  store i32 %sub29, i32* %x.addr.i44, align 4
  %32 = load i32, i32* %x.addr.i44, align 4, !dbg !3062
  %33 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %32, i32 -1) #6, !dbg !3063, !srcloc !3052
  store i32 %33, i32* %r.i45, align 4, !dbg !3063
  %34 = load i32, i32* %r.i45, align 4, !dbg !3064
  %add.i46 = add i32 %34, 1, !dbg !3065
  %35 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3066
  %rowconv31 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %35, i32 0, i32 3, !dbg !3067
  %eraseblock_addr_shift32 = getelementptr inbounds %struct.nand_row_converter, %struct.nand_row_converter* %rowconv31, i32 0, i32 1, !dbg !3068
  %36 = load i32, i32* %eraseblock_addr_shift32, align 4, !dbg !3068
  %add = add i32 %add.i46, %36, !dbg !3069
  %37 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3070
  %rowconv33 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %37, i32 0, i32 3, !dbg !3071
  %lun_addr_shift = getelementptr inbounds %struct.nand_row_converter, %struct.nand_row_converter* %rowconv33, i32 0, i32 0, !dbg !3072
  store i32 %add, i32* %lun_addr_shift, align 8, !dbg !3073
  %38 = load %struct.nand_ops*, %struct.nand_ops** %ops.addr, align 8, !dbg !3074
  %39 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3075
  %ops34 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %39, i32 0, i32 5, !dbg !3076
  store %struct.nand_ops* %38, %struct.nand_ops** %ops34, align 8, !dbg !3077
  %40 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3078
  %bits_per_cell35 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %40, i32 0, i32 0, !dbg !3079
  %41 = load i32, i32* %bits_per_cell35, align 4, !dbg !3079
  %cmp = icmp eq i32 %41, 1, !dbg !3080
  %42 = zext i1 %cmp to i64, !dbg !3078
  %cond = select i1 %cmp, i32 4, i32 8, !dbg !3078
  %conv = trunc i32 %cond to i8, !dbg !3078
  %43 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3081
  %type = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0, !dbg !3082
  store i8 %conv, i8* %type, align 8, !dbg !3083
  %44 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3084
  %flags = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 1, !dbg !3085
  store i32 1024, i32* %flags, align 4, !dbg !3086
  %45 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3087
  %pagesize36 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %45, i32 0, i32 1, !dbg !3088
  %46 = load i32, i32* %pagesize36, align 4, !dbg !3088
  %47 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3089
  %pages_per_eraseblock37 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %47, i32 0, i32 3, !dbg !3090
  %48 = load i32, i32* %pages_per_eraseblock37, align 4, !dbg !3090
  %mul = mul i32 %46, %48, !dbg !3091
  %49 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3092
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 3, !dbg !3093
  store i32 %mul, i32* %erasesize, align 8, !dbg !3094
  %50 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3095
  %pagesize38 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %50, i32 0, i32 1, !dbg !3096
  %51 = load i32, i32* %pagesize38, align 4, !dbg !3096
  %52 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3097
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 4, !dbg !3098
  store i32 %51, i32* %writesize, align 4, !dbg !3099
  %53 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3100
  %pagesize39 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %53, i32 0, i32 1, !dbg !3101
  %54 = load i32, i32* %pagesize39, align 4, !dbg !3101
  %55 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3102
  %writebufsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 5, !dbg !3103
  store i32 %54, i32* %writebufsize, align 8, !dbg !3104
  %56 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3105
  %oobsize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %56, i32 0, i32 2, !dbg !3106
  %57 = load i32, i32* %oobsize, align 4, !dbg !3106
  %58 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3107
  %oobsize40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 6, !dbg !3108
  store i32 %57, i32* %oobsize40, align 4, !dbg !3109
  %59 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3110
  %call41 = call i64 @nanddev_size(%struct.nand_device* %59) #4, !dbg !3111
  %60 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3112
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 2, !dbg !3113
  store i64 %call41, i64* %size, align 8, !dbg !3114
  %61 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !3115
  %62 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3116
  %owner42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 54, !dbg !3117
  store %struct.module* %61, %struct.module** %owner42, align 8, !dbg !3118
  %63 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3119
  %call43 = call i32 @nanddev_bbt_init(%struct.nand_device* %63) #4, !dbg !3120
  store i32 %call43, i32* %retval, align 4, !dbg !3121
  br label %return, !dbg !3121

return:                                           ; preds = %if.end25, %if.then24, %if.then9, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !3122
  ret i32 %64, !dbg !3122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %nand) #0 !dbg !3123 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3126, metadata !DIExpression()), !dbg !3127
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3128
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3129
  ret %struct.nand_memory_organization* %memorg, !dbg !3130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @nanddev_size(%struct.nand_device* %nand) #0 !dbg !3131 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3136, metadata !DIExpression()), !dbg !3137
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3138
  %call = call i64 @nanddev_target_size(%struct.nand_device* %0) #4, !dbg !3139
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3140
  %call1 = call i32 @nanddev_ntargets(%struct.nand_device* %1) #4, !dbg !3141
  %conv = zext i32 %call1 to i64, !dbg !3141
  %mul = mul i64 %call, %conv, !dbg !3142
  ret i64 %mul, !dbg !3143
}

; Function Attrs: noredzone
declare dso_local i32 @nanddev_bbt_init(%struct.nand_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nanddev_cleanup(%struct.nand_device* %nand) #0 !dbg !3144 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3147
  %call = call zeroext i1 @nanddev_bbt_is_initialized(%struct.nand_device* %0) #4, !dbg !3149
  br i1 %call, label %if.then, label %if.end, !dbg !3150

if.then:                                          ; preds = %entry
  %1 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3151
  call void @nanddev_bbt_cleanup(%struct.nand_device* %1) #4, !dbg !3152
  br label %if.end, !dbg !3152

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3153
}

; Function Attrs: noredzone
declare dso_local void @nanddev_bbt_cleanup(%struct.nand_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_pos_next_target(%struct.nand_device* %nand, %struct.nand_pos* %pos) #0 !dbg !3154 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %pos.addr = alloca %struct.nand_pos*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3155, metadata !DIExpression()), !dbg !3156
  store %struct.nand_pos* %pos, %struct.nand_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_pos** %pos.addr, metadata !3157, metadata !DIExpression()), !dbg !3158
  %0 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !3159
  %page = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %0, i32 0, i32 4, !dbg !3160
  store i32 0, i32* %page, align 4, !dbg !3161
  %1 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !3162
  %plane = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %1, i32 0, i32 2, !dbg !3163
  store i32 0, i32* %plane, align 4, !dbg !3164
  %2 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !3165
  %eraseblock = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %2, i32 0, i32 3, !dbg !3166
  store i32 0, i32* %eraseblock, align 4, !dbg !3167
  %3 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !3168
  %lun = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %3, i32 0, i32 1, !dbg !3169
  store i32 0, i32* %lun, align 4, !dbg !3170
  %4 = load %struct.nand_pos*, %struct.nand_pos** %pos.addr, align 8, !dbg !3171
  %target = getelementptr inbounds %struct.nand_pos, %struct.nand_pos* %4, i32 0, i32 0, !dbg !3172
  %5 = load i32, i32* %target, align 4, !dbg !3173
  %inc = add i32 %5, 1, !dbg !3173
  store i32 %inc, i32* %target, align 4, !dbg !3173
  ret void, !dbg !3174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @nanddev_target_size(%struct.nand_device* %nand) #0 !dbg !3175 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3176, metadata !DIExpression()), !dbg !3177
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3178
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3179
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 7, !dbg !3180
  %1 = load i32, i32* %luns_per_target, align 4, !dbg !3180
  %conv = zext i32 %1 to i64, !dbg !3181
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3182
  %memorg1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %2, i32 0, i32 1, !dbg !3183
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg1, i32 0, i32 4, !dbg !3184
  %3 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !3184
  %conv2 = zext i32 %3 to i64, !dbg !3182
  %mul = mul i64 %conv, %conv2, !dbg !3185
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3186
  %memorg3 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 1, !dbg !3187
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg3, i32 0, i32 3, !dbg !3188
  %5 = load i32, i32* %pages_per_eraseblock, align 4, !dbg !3188
  %conv4 = zext i32 %5 to i64, !dbg !3186
  %mul5 = mul i64 %mul, %conv4, !dbg !3189
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3190
  %memorg6 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %6, i32 0, i32 1, !dbg !3191
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg6, i32 0, i32 1, !dbg !3192
  %7 = load i32, i32* %pagesize, align 4, !dbg !3192
  %conv7 = zext i32 %7 to i64, !dbg !3190
  %mul8 = mul i64 %mul5, %conv7, !dbg !3193
  ret i64 %mul8, !dbg !3194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_ntargets(%struct.nand_device* %nand) #0 !dbg !3195 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3198, metadata !DIExpression()), !dbg !3199
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3200
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3201
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 8, !dbg !3202
  %1 = load i32, i32* %ntargets, align 8, !dbg !3202
  ret i32 %1, !dbg !3203
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2421, !2422, !2423, !2424}
!llvm.ident = !{!2425}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description171", scope: !2, file: !3, line: 273, type: !2420, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !86, globals: !2404, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73, !81}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_bbt_block_status", file: !51, line: 888, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80}
!75 = !DIEnumerator(name: "NAND_BBT_BLOCK_STATUS_UNKNOWN", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "NAND_BBT_BLOCK_GOOD", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "NAND_BBT_BLOCK_WORN", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "NAND_BBT_BLOCK_RESERVED", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "NAND_BBT_BLOCK_FACTORY_BAD", value: 4, isUnsigned: true)
!80 = !DIEnumerator(name: "NAND_BBT_BLOCK_NUM_STATUS", value: 5, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 10, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!86 = !{!87, !92, !93, !110, !111}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !90, line: 88, baseType: !91)
!90 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!91 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !95)
!95 = !{!96, !2298, !2310, !2379, !2384, !2388}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !94, file: !51, line: 320, baseType: !97, size: 9664)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !98, line: 235, size: 9664, elements: !99)
!98 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !103, !109, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !128, !130, !146, !167, !168, !169, !170, !180, !190, !202, !206, !211, !217, !218, !237, !238, !249, !250, !251, !252, !253, !254, !265, !269, !273, !274, !275, !279, !280, !281, !282, !286, !287, !288, !289, !290, !293, !305, !312, !313, !314, !318, !2268, !2269, !2277, !2281, !2282, !2283}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !98, line: 236, baseType: !101, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !88, line: 79, baseType: !102)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !98, line: 237, baseType: !104, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 104, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !108, line: 27, baseType: !7)
!108 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !97, file: !98, line: 238, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !88, line: 107, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !108, line: 31, baseType: !113)
!113 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !97, file: !98, line: 244, baseType: !104, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !97, file: !98, line: 252, baseType: !104, size: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !97, file: !98, line: 263, baseType: !104, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !97, file: !98, line: 265, baseType: !104, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !97, file: !98, line: 266, baseType: !104, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !97, file: !98, line: 272, baseType: !7, size: 32, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !97, file: !98, line: 273, baseType: !7, size: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !97, file: !98, line: 275, baseType: !7, size: 32, offset: 352)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !97, file: !98, line: 276, baseType: !7, size: 32, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !97, file: !98, line: 285, baseType: !7, size: 32, offset: 416)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !98, line: 288, baseType: !125, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !97, file: !98, line: 289, baseType: !129, size: 32, offset: 512)
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !97, file: !98, line: 292, baseType: !131, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !98, line: 101, size: 128, elements: !134)
!134 = !{!135, !145}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !133, file: !98, line: 102, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!129, !139, !129, !140}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !98, line: 87, size: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !141, file: !98, line: 88, baseType: !105, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !141, file: !98, line: 89, baseType: !105, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !133, file: !98, line: 104, baseType: !136, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !97, file: !98, line: 295, baseType: !147, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !98, line: 176, size: 192, elements: !150)
!150 = !{!151, !152, !161}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !149, file: !98, line: 177, baseType: !129, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !149, file: !98, line: 178, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!129, !139, !129, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !98, line: 138, size: 64, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !157, file: !98, line: 139, baseType: !129, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !157, file: !98, line: 140, baseType: !129, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !149, file: !98, line: 180, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!129, !139, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !97, file: !98, line: 298, baseType: !7, size: 32, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !97, file: !98, line: 301, baseType: !7, size: 32, offset: 736)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !97, file: !98, line: 306, baseType: !129, size: 32, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !97, file: !98, line: 307, baseType: !171, size: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !98, line: 36, size: 192, elements: !173)
!173 = !{!174, !175, !176, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !172, file: !98, line: 37, baseType: !110, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !172, file: !98, line: 38, baseType: !104, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !172, file: !98, line: 39, baseType: !104, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !172, file: !98, line: 40, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !97, file: !98, line: 313, baseType: !181, size: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!129, !139, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !98, line: 30, size: 192, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !185, file: !98, line: 31, baseType: !110, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !185, file: !98, line: 32, baseType: !110, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !185, file: !98, line: 33, baseType: !110, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !97, file: !98, line: 314, baseType: !191, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!129, !139, !87, !194, !197, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 55, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !90, line: 72, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !90, line: 16, baseType: !179)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !88, line: 158, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !88, line: 153, baseType: !111)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !97, file: !98, line: 316, baseType: !203, size: 64, offset: 1024)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!129, !139, !87, !194}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !97, file: !98, line: 317, baseType: !207, size: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!129, !139, !87, !194, !197, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !97, file: !98, line: 319, baseType: !212, size: 64, offset: 1152)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!129, !139, !87, !194, !197, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !97, file: !98, line: 321, baseType: !212, size: 64, offset: 1216)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !97, file: !98, line: 323, baseType: !219, size: 64, offset: 1280)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!129, !139, !87, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !98, line: 64, size: 512, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !236}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !223, file: !98, line: 65, baseType: !7, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !223, file: !98, line: 66, baseType: !194, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !223, file: !98, line: 67, baseType: !194, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !223, file: !98, line: 68, baseType: !194, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !223, file: !98, line: 69, baseType: !194, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !223, file: !98, line: 70, baseType: !104, size: 32, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !223, file: !98, line: 71, baseType: !232, size: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 102, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !108, line: 21, baseType: !102)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !223, file: !98, line: 72, baseType: !232, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !97, file: !98, line: 325, baseType: !219, size: 64, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !97, file: !98, line: 327, baseType: !239, size: 64, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!129, !139, !194, !197, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !244, line: 146, size: 96, elements: !245)
!244 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !243, file: !244, line: 147, baseType: !107, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !243, file: !244, line: 148, baseType: !107, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !243, file: !244, line: 149, baseType: !107, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !97, file: !98, line: 329, baseType: !207, size: 64, offset: 1472)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !97, file: !98, line: 331, baseType: !239, size: 64, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !97, file: !98, line: 333, baseType: !207, size: 64, offset: 1600)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !97, file: !98, line: 335, baseType: !207, size: 64, offset: 1664)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !97, file: !98, line: 337, baseType: !203, size: 64, offset: 1728)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !97, file: !98, line: 339, baseType: !255, size: 64, offset: 1792)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!129, !139, !258, !179, !87, !197}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !261, line: 15, size: 128, elements: !262)
!261 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !260, file: !261, line: 16, baseType: !92, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !260, file: !261, line: 17, baseType: !194, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !97, file: !98, line: 341, baseType: !266, size: 64, offset: 1856)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !139}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !97, file: !98, line: 342, baseType: !270, size: 64, offset: 1920)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!129, !139, !87, !110}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !97, file: !98, line: 343, baseType: !270, size: 64, offset: 1984)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !97, file: !98, line: 344, baseType: !270, size: 64, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !97, file: !98, line: 345, baseType: !276, size: 64, offset: 2112)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!129, !139, !87}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !97, file: !98, line: 346, baseType: !276, size: 64, offset: 2176)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !97, file: !98, line: 347, baseType: !276, size: 64, offset: 2240)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !97, file: !98, line: 348, baseType: !203, size: 64, offset: 2304)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !97, file: !98, line: 349, baseType: !283, size: 64, offset: 2368)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!129, !139}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !97, file: !98, line: 350, baseType: !266, size: 64, offset: 2432)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !97, file: !98, line: 351, baseType: !266, size: 64, offset: 2496)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !97, file: !98, line: 356, baseType: !283, size: 64, offset: 2560)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !97, file: !98, line: 357, baseType: !266, size: 64, offset: 2624)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !97, file: !98, line: 363, baseType: !291, size: 8, offset: 2688)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !88, line: 30, baseType: !292)
!292 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !97, file: !98, line: 365, baseType: !294, size: 192, offset: 2752)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !295, line: 54, size: 192, elements: !296)
!295 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !303, !304}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !294, file: !295, line: 55, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !295, line: 51, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!129, !302, !179, !92}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !295, line: 56, baseType: !302, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !294, file: !295, line: 57, baseType: !129, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !97, file: !98, line: 368, baseType: !306, size: 128, offset: 2944)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !244, line: 250, size: 128, elements: !307)
!307 = !{!308, !309, !310, !311}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !306, file: !244, line: 251, baseType: !107, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !306, file: !244, line: 252, baseType: !107, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !306, file: !244, line: 253, baseType: !107, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !306, file: !244, line: 254, baseType: !107, size: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !97, file: !98, line: 370, baseType: !129, size: 32, offset: 3072)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !97, file: !98, line: 372, baseType: !92, size: 64, offset: 3136)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !97, file: !98, line: 374, baseType: !315, size: 64, offset: 3200)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !317, line: 76, flags: DIFlagFwdDecl)
!317 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !97, file: !98, line: 375, baseType: !319, size: 5568, offset: 3264)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !320)
!320 = !{!321, !1794, !1796, !1799, !1800, !1851, !1945, !1946, !1947, !1948, !1949, !1958, !2063, !2076, !2079, !2080, !2084, !2086, !2087, !2088, !2092, !2098, !2099, !2102, !2217, !2218, !2221, !2222, !2223, !2224, !2256, !2257, !2258, !2261, !2264, !2265, !2266, !2267}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !319, file: !30, line: 462, baseType: !322, size: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !323, line: 64, size: 512, elements: !324)
!323 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !326, !332, !334, !394, !1630, !1784, !1789, !1790, !1791, !1792, !1793}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !323, line: 65, baseType: !125, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !322, file: !323, line: 66, baseType: !327, size: 128, offset: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !88, line: 178, size: 128, elements: !328)
!328 = !{!329, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !88, line: 179, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !327, file: !88, line: 179, baseType: !330, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !322, file: !323, line: 67, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !322, file: !323, line: 68, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !323, line: 192, size: 704, elements: !337)
!337 = !{!338, !339, !355, !356}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !336, file: !323, line: 193, baseType: !327, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !336, file: !323, line: 194, baseType: !340, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !341, line: 83, baseType: !342)
!341 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !341, line: 71, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !341, line: 72, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !341, line: 72, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !345, file: !341, line: 73, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !341, line: 20, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !348, file: !341, line: 21, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !352, line: 25, baseType: !353)
!352 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 25, elements: !354)
!354 = !{}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !336, file: !323, line: 195, baseType: !322, size: 512, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !336, file: !323, line: 196, baseType: !357, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !323, line: 156, size: 192, elements: !360)
!360 = !{!361, !366, !371}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !359, file: !323, line: 157, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!129, !335, !333}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !323, line: 158, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!125, !335, !333}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !359, file: !323, line: 159, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!129, !335, !333, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !323, line: 148, size: 20736, elements: !378)
!378 = !{!379, !384, !388, !389, !393}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !377, file: !323, line: 149, baseType: !380, size: 192)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 192, elements: !382)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!382 = !{!383}
!383 = !DISubrange(count: 3)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !377, file: !323, line: 150, baseType: !385, size: 4096, offset: 192)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 4096, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !377, file: !323, line: 151, baseType: !129, size: 32, offset: 4288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !377, file: !323, line: 152, baseType: !390, size: 16384, offset: 4320)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 2048)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !377, file: !323, line: 153, baseType: !129, size: 32, offset: 20704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !322, file: !323, line: 69, baseType: !395, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !323, line: 138, size: 448, elements: !397)
!397 = !{!398, !402, !427, !429, !1576, !1609, !1613}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !396, file: !323, line: 139, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !333}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !396, file: !323, line: 140, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !406, line: 230, size: 128, elements: !407)
!406 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !423}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !405, file: !406, line: 231, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !333, !416, !381}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !88, line: 60, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !90, line: 73, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !90, line: 15, baseType: !415)
!415 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !406, line: 30, size: 128, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !406, line: 31, baseType: !125, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !417, file: !406, line: 32, baseType: !421, size: 16, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !88, line: 19, baseType: !422)
!422 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !405, file: !406, line: 232, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!412, !333, !416, !125, !194}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !396, file: !323, line: 141, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !396, file: !323, line: 142, baseType: !430, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !406, line: 84, size: 320, elements: !434)
!434 = !{!435, !436, !440, !1573, !1574}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !406, line: 85, baseType: !125, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !433, file: !406, line: 86, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!421, !333, !416, !129}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !433, file: !406, line: 88, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!421, !333, !444, !129}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !406, line: 168, size: 448, elements: !446)
!446 = !{!447, !448, !449, !450, !457, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !445, file: !406, line: 169, baseType: !417, size: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !445, file: !406, line: 170, baseType: !194, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !445, file: !406, line: 171, baseType: !92, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !445, file: !406, line: 172, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!412, !454, !333, !444, !381, !87, !194}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !456, line: 526, flags: DIFlagFwdDecl)
!456 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!457 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !445, file: !406, line: 174, baseType: !451, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !445, file: !406, line: 176, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!129, !454, !333, !444, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !464, line: 305, size: 1472, elements: !465)
!464 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !467, !468, !469, !470, !478, !479, !1547, !1553, !1554, !1559, !1560, !1563, !1567, !1568, !1569, !1570, !1571}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !463, file: !464, line: 308, baseType: !179, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !463, file: !464, line: 309, baseType: !179, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !463, file: !464, line: 313, baseType: !462, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !463, file: !464, line: 313, baseType: !462, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !463, file: !464, line: 315, baseType: !471, size: 192, align: 64, offset: 256)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !472, line: 24, size: 192, align: 64, elements: !473)
!472 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !475, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !471, file: !472, line: 25, baseType: !179, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !471, file: !472, line: 26, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !471, file: !472, line: 27, baseType: !476, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !463, file: !464, line: 323, baseType: !179, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !463, file: !464, line: 327, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !464, line: 388, size: 7296, elements: !482)
!482 = !{!483, !1543}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !464, line: 389, baseType: !484, size: 7296)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !464, line: 389, size: 7296, elements: !485)
!485 = !{!486, !487, !491, !492, !496, !497, !498, !499, !500, !508, !513, !514, !515, !516, !525, !526, !527, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !562, !570, !573, !621, !622, !1513, !1514, !1517, !1521, !1522, !1525, !1526, !1527, !1530, !1542}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !484, file: !464, line: 390, baseType: !462, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !484, file: !464, line: 391, baseType: !488, size: 64, offset: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !472, line: 31, size: 64, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !488, file: !472, line: 32, baseType: !476, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !484, file: !464, line: 392, baseType: !111, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !484, file: !464, line: 394, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!179, !454, !179, !179, !179, !179}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !484, file: !464, line: 398, baseType: !179, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !484, file: !464, line: 399, baseType: !179, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !484, file: !464, line: 405, baseType: !179, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !484, file: !464, line: 406, baseType: !179, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !484, file: !464, line: 407, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !456, line: 286, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 286, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !503, file: !456, line: 286, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !507, line: 18, baseType: !179)
!507 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !484, file: !464, line: 416, baseType: !509, size: 32, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !88, line: 168, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 166, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !510, file: !88, line: 167, baseType: !129, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !484, file: !464, line: 428, baseType: !509, size: 32, offset: 608)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !484, file: !464, line: 437, baseType: !509, size: 32, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !484, file: !464, line: 447, baseType: !509, size: 32, offset: 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !484, file: !464, line: 450, baseType: !517, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !518, line: 13, baseType: !519)
!518 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !88, line: 175, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 173, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !520, file: !88, line: 174, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !106, line: 22, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !108, line: 30, baseType: !91)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !484, file: !464, line: 452, baseType: !129, size: 32, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !484, file: !464, line: 454, baseType: !340, offset: 800)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !484, file: !464, line: 457, baseType: !528, size: 256, offset: 832)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !529, line: 35, size: 256, elements: !530)
!529 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531, !532, !533, !535}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !528, file: !529, line: 36, baseType: !517, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !529, line: 42, baseType: !517, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !528, file: !529, line: 46, baseType: !534, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !341, line: 29, baseType: !348)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !528, file: !529, line: 47, baseType: !327, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !484, file: !464, line: 459, baseType: !327, size: 128, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !484, file: !464, line: 466, baseType: !179, size: 64, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !484, file: !464, line: 467, baseType: !179, size: 64, offset: 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !484, file: !464, line: 469, baseType: !179, size: 64, offset: 1344)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !484, file: !464, line: 470, baseType: !179, size: 64, offset: 1408)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !484, file: !464, line: 471, baseType: !519, size: 64, offset: 1472)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !484, file: !464, line: 472, baseType: !179, size: 64, offset: 1536)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !484, file: !464, line: 473, baseType: !179, size: 64, offset: 1600)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !484, file: !464, line: 474, baseType: !179, size: 64, offset: 1664)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !484, file: !464, line: 475, baseType: !179, size: 64, offset: 1728)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !484, file: !464, line: 477, baseType: !340, offset: 1792)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !484, file: !464, line: 478, baseType: !179, size: 64, offset: 1792)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !484, file: !464, line: 478, baseType: !179, size: 64, offset: 1856)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !484, file: !464, line: 478, baseType: !179, size: 64, offset: 1920)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !484, file: !464, line: 478, baseType: !179, size: 64, offset: 1984)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !484, file: !464, line: 479, baseType: !179, size: 64, offset: 2048)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !484, file: !464, line: 479, baseType: !179, size: 64, offset: 2112)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !484, file: !464, line: 479, baseType: !179, size: 64, offset: 2176)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !484, file: !464, line: 480, baseType: !179, size: 64, offset: 2240)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !484, file: !464, line: 480, baseType: !179, size: 64, offset: 2304)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !484, file: !464, line: 480, baseType: !179, size: 64, offset: 2368)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !484, file: !464, line: 480, baseType: !179, size: 64, offset: 2432)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !484, file: !464, line: 482, baseType: !559, size: 2816, offset: 2496)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 2816, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 44)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !484, file: !464, line: 488, baseType: !563, size: 256, offset: 5312)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !564, line: 60, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !563, file: !564, line: 61, baseType: !567, size: 256)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 256, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 4)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !484, file: !464, line: 490, baseType: !571, size: 64, offset: 5568)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !464, line: 490, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !484, file: !464, line: 493, baseType: !574, size: 896, offset: 5632)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !575, line: 53, baseType: !576)
!575 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 13, size: 896, elements: !577)
!577 = !{!578, !579, !580, !581, !584, !585, !592, !593, !613, !614, !617}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !576, file: !575, line: 18, baseType: !111, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !576, file: !575, line: 28, baseType: !519, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !576, file: !575, line: 31, baseType: !528, size: 256, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !576, file: !575, line: 32, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !575, line: 32, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !576, file: !575, line: 37, baseType: !422, size: 16, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !575, line: 40, baseType: !586, size: 192, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !587, line: 53, size: 192, elements: !588)
!587 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !586, file: !587, line: 54, baseType: !517, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !586, file: !587, line: 55, baseType: !340, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !586, file: !587, line: 59, baseType: !327, size: 128, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !576, file: !575, line: 41, baseType: !92, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !576, file: !575, line: 42, baseType: !594, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !597, line: 13, size: 896, elements: !598)
!597 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !596, file: !597, line: 14, baseType: !92, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !597, line: 15, baseType: !179, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !596, file: !597, line: 17, baseType: !179, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !596, file: !597, line: 17, baseType: !179, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !596, file: !597, line: 19, baseType: !415, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !596, file: !597, line: 21, baseType: !415, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !596, file: !597, line: 22, baseType: !415, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !596, file: !597, line: 23, baseType: !415, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !596, file: !597, line: 24, baseType: !415, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !596, file: !597, line: 25, baseType: !415, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !596, file: !597, line: 26, baseType: !415, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !596, file: !597, line: 27, baseType: !415, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !596, file: !597, line: 28, baseType: !415, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !596, file: !597, line: 29, baseType: !415, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !576, file: !575, line: 44, baseType: !509, size: 32, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !576, file: !575, line: 50, baseType: !615, size: 16, offset: 864)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !108, line: 24, baseType: !422)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !576, file: !575, line: 51, baseType: !618, size: 16, offset: 880)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !106, line: 18, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !108, line: 23, baseType: !620)
!620 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !464, line: 495, baseType: !179, size: 64, offset: 6528)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !484, file: !464, line: 497, baseType: !623, size: 64, offset: 6592)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !464, line: 381, size: 384, elements: !625)
!625 = !{!626, !627, !1512}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !624, file: !464, line: 382, baseType: !509, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !624, file: !464, line: 383, baseType: !628, size: 128, offset: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !464, line: 376, size: 128, elements: !629)
!629 = !{!630, !1510}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !628, file: !464, line: 377, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !633, line: 640, size: 48640, elements: !634)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !641, !643, !644, !650, !651, !652, !653, !654, !655, !656, !657, !661, !679, !690, !782, !783, !784, !795, !796, !798, !799, !800, !801, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !880, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !936, !938, !939, !940, !952, !954, !955, !956, !957, !958, !964, !965, !966, !967, !968, !969, !970, !982, !987, !992, !993, !994, !997, !1001, !1004, !1007, !1010, !1013, !1017, !1020, !1023, !1029, !1030, !1031, !1037, !1038, !1039, !1040, !1041, !1050, !1051, !1052, !1053, !1054, !1059, !1060, !1061, !1064, !1065, !1068, !1071, !1074, !1077, !1080, !1083, !1084, !1164, !1167, !1170, !1171, !1174, !1175, !1176, !1182, !1183, !1184, !1197, !1198, !1199, !1209, !1214, !1217, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !632, file: !633, line: 646, baseType: !636, size: 128)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !637, line: 56, size: 128, elements: !638)
!637 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !637, line: 57, baseType: !179, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !636, file: !637, line: 58, baseType: !105, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !632, file: !633, line: 649, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !415)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !632, file: !633, line: 657, baseType: !92, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !632, file: !633, line: 658, baseType: !645, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !646, line: 113, baseType: !647)
!646 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !646, line: 111, size: 32, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !647, file: !646, line: 112, baseType: !509, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 660, baseType: !7, size: 32, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !632, file: !633, line: 661, baseType: !7, size: 32, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !632, file: !633, line: 684, baseType: !129, size: 32, offset: 352)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !632, file: !633, line: 686, baseType: !129, size: 32, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !632, file: !633, line: 687, baseType: !129, size: 32, offset: 416)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !632, file: !633, line: 688, baseType: !129, size: 32, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !632, file: !633, line: 689, baseType: !7, size: 32, offset: 480)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !632, file: !633, line: 691, baseType: !658, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !633, line: 691, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !632, file: !633, line: 692, baseType: !662, size: 832, offset: 576)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !633, line: 451, size: 832, elements: !663)
!663 = !{!664, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !662, file: !633, line: 453, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !633, line: 325, size: 128, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !665, file: !633, line: 326, baseType: !179, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !665, file: !633, line: 327, baseType: !105, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !662, file: !633, line: 454, baseType: !471, size: 192, align: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !662, file: !633, line: 455, baseType: !327, size: 128, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !662, file: !633, line: 456, baseType: !7, size: 32, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !662, file: !633, line: 458, baseType: !111, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !662, file: !633, line: 459, baseType: !111, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !662, file: !633, line: 460, baseType: !111, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !662, file: !633, line: 461, baseType: !111, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !662, file: !633, line: 463, baseType: !111, size: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !662, file: !633, line: 465, baseType: !678, offset: 832)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !633, line: 415, elements: !354)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !632, file: !633, line: 693, baseType: !680, size: 384, offset: 1408)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !633, line: 489, size: 384, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !680, file: !633, line: 490, baseType: !327, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !680, file: !633, line: 491, baseType: !179, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !680, file: !633, line: 492, baseType: !179, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !680, file: !633, line: 493, baseType: !7, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !680, file: !633, line: 494, baseType: !422, size: 16, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !680, file: !633, line: 495, baseType: !422, size: 16, offset: 304)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !680, file: !633, line: 497, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !632, file: !633, line: 697, baseType: !691, size: 1792, offset: 1792)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !633, line: 507, size: 1792, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !779, !780}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !691, file: !633, line: 508, baseType: !471, size: 192, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !691, file: !633, line: 515, baseType: !111, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !691, file: !633, line: 516, baseType: !111, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !691, file: !633, line: 517, baseType: !111, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !691, file: !633, line: 518, baseType: !111, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !691, file: !633, line: 519, baseType: !111, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !691, file: !633, line: 526, baseType: !523, size: 64, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !691, file: !633, line: 527, baseType: !111, size: 64, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !633, line: 528, baseType: !7, size: 32, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !691, file: !633, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !691, file: !633, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !691, file: !633, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !691, file: !633, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !691, file: !633, line: 563, baseType: !707, size: 512, offset: 704)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !708)
!708 = !{!709, !717, !718, !723, !775, !776, !777, !778}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !6, line: 119, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !711, line: 9, size: 256, elements: !712)
!711 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !711, line: 10, baseType: !471, size: 192, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !710, file: !711, line: 11, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !716, line: 29, baseType: !523)
!716 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !707, file: !6, line: 120, baseType: !715, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !707, file: !6, line: 121, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!5, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !707, file: !6, line: 122, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !726)
!726 = !{!727, !747, !748, !751, !761, !762, !770, !774}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !725, file: !6, line: 160, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !6, line: 215, baseType: !534)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !729, file: !6, line: 216, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !729, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !729, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !729, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !729, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !729, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !729, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !729, file: !6, line: 233, baseType: !715, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !729, file: !6, line: 234, baseType: !722, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !729, file: !6, line: 235, baseType: !715, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !729, file: !6, line: 236, baseType: !722, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !729, file: !6, line: 237, baseType: !744, size: 4096, offset: 512)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 4096, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 8)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !725, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !725, file: !6, line: 162, baseType: !749, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !88, line: 27, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !90, line: 96, baseType: !129)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !725, file: !6, line: 163, baseType: !752, size: 32, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !753, line: 276, baseType: !754)
!753 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !753, line: 276, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !754, file: !753, line: 276, baseType: !757, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !753, line: 70, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !753, line: 65, size: 32, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !758, file: !753, line: 66, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !725, file: !6, line: 164, baseType: !722, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !725, file: !6, line: 165, baseType: !763, size: 128, offset: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !711, line: 14, size: 128, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !763, file: !711, line: 15, baseType: !766, size: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !472, line: 125, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !766, file: !472, line: 126, baseType: !488, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !766, file: !472, line: 127, baseType: !476, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !725, file: !6, line: 166, baseType: !771, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!715}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !725, file: !6, line: 167, baseType: !715, size: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !707, file: !6, line: 123, baseType: !234, size: 8, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !707, file: !6, line: 124, baseType: !234, size: 8, offset: 456)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !707, file: !6, line: 125, baseType: !234, size: 8, offset: 464)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !707, file: !6, line: 126, baseType: !234, size: 8, offset: 472)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !691, file: !633, line: 572, baseType: !707, size: 512, offset: 1216)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !691, file: !633, line: 580, baseType: !781, size: 64, offset: 1728)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !632, file: !633, line: 721, baseType: !7, size: 32, offset: 3584)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !632, file: !633, line: 722, baseType: !129, size: 32, offset: 3616)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !632, file: !633, line: 723, baseType: !785, size: 64, offset: 3648)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !788, line: 17, baseType: !789)
!788 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !788, line: 17, size: 64, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !789, file: !788, line: 17, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 1)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !632, file: !633, line: 724, baseType: !787, size: 64, offset: 3712)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !632, file: !633, line: 749, baseType: !797, offset: 3776)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !633, line: 290, elements: !354)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !632, file: !633, line: 751, baseType: !327, size: 128, offset: 3776)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !632, file: !633, line: 757, baseType: !480, size: 64, offset: 3904)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !632, file: !633, line: 758, baseType: !480, size: 64, offset: 3968)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !632, file: !633, line: 761, baseType: !802, size: 320, offset: 4032)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !564, line: 34, size: 320, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !802, file: !564, line: 35, baseType: !111, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !802, file: !564, line: 36, baseType: !806, size: 256, offset: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 256, elements: !568)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !632, file: !633, line: 766, baseType: !129, size: 32, offset: 4352)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !632, file: !633, line: 767, baseType: !129, size: 32, offset: 4384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !632, file: !633, line: 768, baseType: !129, size: 32, offset: 4416)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !632, file: !633, line: 770, baseType: !129, size: 32, offset: 4448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !632, file: !633, line: 772, baseType: !179, size: 64, offset: 4480)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !632, file: !633, line: 775, baseType: !7, size: 32, offset: 4544)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !632, file: !633, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !632, file: !633, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !632, file: !633, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !632, file: !633, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !632, file: !633, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !632, file: !633, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !632, file: !633, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !632, file: !633, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !632, file: !633, line: 831, baseType: !179, size: 64, offset: 4672)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !632, file: !633, line: 833, baseType: !823, size: 384, offset: 4736)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !824)
!824 = !{!825, !830}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !823, file: !12, line: 26, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!415, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !12, line: 27, baseType: !831, size: 320, offset: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !12, line: 27, size: 320, elements: !832)
!832 = !{!833, !843, !870}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !831, file: !12, line: 36, baseType: !834, size: 320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !12, line: 29, size: 320, elements: !835)
!835 = !{!836, !838, !839, !840, !841, !842}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !834, file: !12, line: 30, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !12, line: 31, baseType: !105, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !12, line: 32, baseType: !105, size: 32, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !834, file: !12, line: 33, baseType: !105, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !834, file: !12, line: 34, baseType: !111, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !834, file: !12, line: 35, baseType: !837, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !831, file: !12, line: 46, baseType: !844, size: 192)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !12, line: 38, size: 192, elements: !845)
!845 = !{!846, !847, !848, !869}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !844, file: !12, line: 39, baseType: !749, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !12, line: 41, baseType: !849, size: 64, offset: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !12, line: 41, size: 64, elements: !850)
!850 = !{!851, !859}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !849, file: !12, line: 42, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !854, line: 7, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !853, file: !854, line: 8, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !90, line: 93, baseType: !91)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !853, file: !854, line: 9, baseType: !91, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !849, file: !12, line: 43, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !862, line: 7, size: 64, elements: !863)
!862 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!863 = !{!864, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !861, file: !862, line: 8, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !862, line: 5, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !106, line: 20, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !108, line: 26, baseType: !129)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !861, file: !862, line: 9, baseType: !866, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !844, file: !12, line: 45, baseType: !111, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !831, file: !12, line: 54, baseType: !871, size: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !12, line: 48, size: 256, elements: !872)
!872 = !{!873, !876, !877, !878, !879}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !871, file: !12, line: 49, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !871, file: !12, line: 50, baseType: !129, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !871, file: !12, line: 51, baseType: !129, size: 32, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !871, file: !12, line: 52, baseType: !179, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !871, file: !12, line: 53, baseType: !179, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !632, file: !633, line: 835, baseType: !881, size: 32, offset: 5120)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !88, line: 22, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !90, line: 28, baseType: !129)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !632, file: !633, line: 836, baseType: !881, size: 32, offset: 5152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !632, file: !633, line: 840, baseType: !179, size: 64, offset: 5184)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !632, file: !633, line: 849, baseType: !631, size: 64, offset: 5248)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !633, line: 852, baseType: !631, size: 64, offset: 5312)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !632, file: !633, line: 857, baseType: !327, size: 128, offset: 5376)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !632, file: !633, line: 858, baseType: !327, size: 128, offset: 5504)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !632, file: !633, line: 859, baseType: !631, size: 64, offset: 5632)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !632, file: !633, line: 867, baseType: !327, size: 128, offset: 5696)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !632, file: !633, line: 868, baseType: !327, size: 128, offset: 5824)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !632, file: !633, line: 871, baseType: !893, size: 64, offset: 5952)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !895, line: 59, size: 768, elements: !896)
!895 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !898, !899, !900, !911, !912, !919, !928}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !894, file: !895, line: 61, baseType: !645, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !894, file: !895, line: 62, baseType: !7, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !894, file: !895, line: 63, baseType: !340, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !894, file: !895, line: 65, baseType: !901, size: 256, offset: 64)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 256, elements: !568)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !88, line: 182, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !902, file: !88, line: 183, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !88, line: 186, size: 128, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !906, file: !88, line: 187, baseType: !905, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !906, file: !88, line: 187, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !894, file: !895, line: 66, baseType: !902, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !894, file: !895, line: 68, baseType: !913, size: 128, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !914, line: 40, baseType: !915)
!914 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !914, line: 36, size: 128, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !915, file: !914, line: 37, baseType: !340)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !915, file: !914, line: 38, baseType: !327, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !894, file: !895, line: 69, baseType: !920, size: 128, align: 64, offset: 512)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !88, line: 216, size: 128, align: 64, elements: !921)
!921 = !{!922, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !920, file: !88, line: 217, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !920, file: !88, line: 218, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !923}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !894, file: !895, line: 70, baseType: !929, size: 128, offset: 640)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 128, elements: !793)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !895, line: 54, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !930, file: !895, line: 55, baseType: !129, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !930, file: !895, line: 56, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !895, line: 56, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !632, file: !633, line: 872, baseType: !937, size: 512, offset: 6016)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 512, elements: !568)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !632, file: !633, line: 873, baseType: !327, size: 128, offset: 6528)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !632, file: !633, line: 874, baseType: !327, size: 128, offset: 6656)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !632, file: !633, line: 876, baseType: !941, size: 64, offset: 6784)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !943, line: 26, size: 192, elements: !944)
!943 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !942, file: !943, line: 27, baseType: !7, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !942, file: !943, line: 28, baseType: !947, size: 128, offset: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !948, line: 43, size: 128, elements: !949)
!948 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !947, file: !948, line: 44, baseType: !534)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !947, file: !948, line: 45, baseType: !327, size: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !632, file: !633, line: 879, baseType: !953, size: 64, offset: 6848)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !632, file: !633, line: 882, baseType: !953, size: 64, offset: 6912)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !632, file: !633, line: 884, baseType: !111, size: 64, offset: 6976)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !632, file: !633, line: 885, baseType: !111, size: 64, offset: 7040)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !632, file: !633, line: 890, baseType: !111, size: 64, offset: 7104)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !632, file: !633, line: 891, baseType: !959, size: 128, offset: 7168)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !633, line: 242, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !959, file: !633, line: 244, baseType: !111, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !959, file: !633, line: 245, baseType: !111, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !959, file: !633, line: 246, baseType: !534, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !632, file: !633, line: 900, baseType: !179, size: 64, offset: 7296)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !632, file: !633, line: 901, baseType: !179, size: 64, offset: 7360)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !632, file: !633, line: 904, baseType: !111, size: 64, offset: 7424)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !632, file: !633, line: 907, baseType: !111, size: 64, offset: 7488)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !632, file: !633, line: 910, baseType: !179, size: 64, offset: 7552)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !632, file: !633, line: 911, baseType: !179, size: 64, offset: 7616)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !632, file: !633, line: 914, baseType: !971, size: 640, offset: 7680)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !972, line: 123, size: 640, elements: !973)
!972 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!973 = !{!974, !980, !981}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !971, file: !972, line: 124, baseType: !975, size: 576)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 576, elements: !382)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !972, line: 108, size: 192, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !976, file: !972, line: 109, baseType: !111, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !976, file: !972, line: 110, baseType: !763, size: 128, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !971, file: !972, line: 125, baseType: !7, size: 32, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !971, file: !972, line: 126, baseType: !7, size: 32, offset: 608)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !632, file: !633, line: 917, baseType: !983, size: 192, offset: 8320)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !972, line: 134, size: 192, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !983, file: !972, line: 135, baseType: !920, size: 128, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !983, file: !972, line: 136, baseType: !7, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !632, file: !633, line: 923, baseType: !988, size: 64, offset: 8512)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !991, line: 11, flags: DIFlagFwdDecl)
!991 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !632, file: !633, line: 926, baseType: !988, size: 64, offset: 8576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !632, file: !633, line: 929, baseType: !988, size: 64, offset: 8640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !632, file: !633, line: 933, baseType: !995, size: 64, offset: 8704)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !633, line: 933, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !632, file: !633, line: 943, baseType: !998, size: 128, offset: 8768)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 16)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !632, file: !633, line: 945, baseType: !1002, size: 64, offset: 8896)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !633, line: 49, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !632, file: !633, line: 956, baseType: !1005, size: 64, offset: 8960)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !633, line: 45, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !632, file: !633, line: 959, baseType: !1008, size: 64, offset: 9024)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !633, line: 959, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !632, file: !633, line: 962, baseType: !1011, size: 64, offset: 9088)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !633, line: 66, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !632, file: !633, line: 966, baseType: !1014, size: 64, offset: 9152)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1016, line: 35, flags: DIFlagFwdDecl)
!1016 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !632, file: !633, line: 969, baseType: !1018, size: 64, offset: 9216)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !972, line: 223, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !632, file: !633, line: 970, baseType: !1021, size: 64, offset: 9280)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !633, line: 62, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !632, file: !633, line: 971, baseType: !1024, size: 64, offset: 9344)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1025, line: 25, baseType: !1026)
!1025 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1025, line: 23, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1026, file: !1025, line: 24, baseType: !792, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !632, file: !633, line: 972, baseType: !1024, size: 64, offset: 9408)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !632, file: !633, line: 974, baseType: !1024, size: 64, offset: 9472)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !632, file: !633, line: 975, baseType: !1032, size: 192, offset: 9536)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1033, line: 30, size: 192, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1032, file: !1033, line: 31, baseType: !327, size: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1032, file: !1033, line: 32, baseType: !1024, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !632, file: !633, line: 976, baseType: !179, size: 64, offset: 9728)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !632, file: !633, line: 977, baseType: !194, size: 64, offset: 9792)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !632, file: !633, line: 978, baseType: !7, size: 32, offset: 9856)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !632, file: !633, line: 980, baseType: !923, size: 64, offset: 9920)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !632, file: !633, line: 989, baseType: !1042, size: 128, offset: 9984)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1043, line: 35, size: 128, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1042, file: !1043, line: 36, baseType: !129, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1042, file: !1043, line: 37, baseType: !509, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1042, file: !1043, line: 38, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1043, line: 23, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !632, file: !633, line: 992, baseType: !111, size: 64, offset: 10112)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !632, file: !633, line: 993, baseType: !111, size: 64, offset: 10176)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !632, file: !633, line: 996, baseType: !340, offset: 10240)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !632, file: !633, line: 999, baseType: !534, offset: 10240)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !632, file: !633, line: 1001, baseType: !1055, size: 64, offset: 10240)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !633, line: 636, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !633, line: 637, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !632, file: !633, line: 1005, baseType: !766, size: 128, offset: 10304)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !632, file: !633, line: 1007, baseType: !631, size: 64, offset: 10432)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !632, file: !633, line: 1009, baseType: !1062, size: 64, offset: 10496)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !633, line: 1009, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !632, file: !633, line: 1043, baseType: !92, size: 64, offset: 10560)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !632, file: !633, line: 1046, baseType: !1066, size: 64, offset: 10624)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !633, line: 41, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !632, file: !633, line: 1050, baseType: !1069, size: 64, offset: 10688)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !633, line: 42, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !632, file: !633, line: 1054, baseType: !1072, size: 64, offset: 10752)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !633, line: 55, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !632, file: !633, line: 1056, baseType: !1075, size: 64, offset: 10816)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !633, line: 40, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !632, file: !633, line: 1058, baseType: !1078, size: 64, offset: 10880)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !633, line: 47, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !632, file: !633, line: 1061, baseType: !1081, size: 64, offset: 10944)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !633, line: 43, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !632, file: !633, line: 1064, baseType: !179, size: 64, offset: 11008)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !632, file: !633, line: 1065, baseType: !1085, size: 64, offset: 11072)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1033, line: 14, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1033, line: 12, size: 384, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1033, line: 13, baseType: !1090, size: 384)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1033, line: 13, size: 384, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1090, file: !1033, line: 13, baseType: !129, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1090, file: !1033, line: 13, baseType: !129, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1090, file: !1033, line: 13, baseType: !129, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1090, file: !1033, line: 13, baseType: !1096, size: 256, offset: 128)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1097, line: 32, size: 256, elements: !1098)
!1097 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !{!1099, !1105, !1118, !1124, !1133, !1153, !1158}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1096, file: !1097, line: 37, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 34, size: 64, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1100, file: !1097, line: 35, baseType: !882, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1100, file: !1097, line: 36, baseType: !1104, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !90, line: 49, baseType: !7)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1096, file: !1097, line: 45, baseType: !1106, size: 192)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 40, size: 192, elements: !1107)
!1107 = !{!1108, !1110, !1111, !1117}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1106, file: !1097, line: 41, baseType: !1109, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !90, line: 95, baseType: !129)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1106, file: !1097, line: 42, baseType: !129, size: 32, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1106, file: !1097, line: 43, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1097, line: 11, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1097, line: 8, size: 64, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1113, file: !1097, line: 9, baseType: !129, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1113, file: !1097, line: 10, baseType: !92, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1106, file: !1097, line: 44, baseType: !129, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1096, file: !1097, line: 52, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 48, size: 128, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1119, file: !1097, line: 49, baseType: !882, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1119, file: !1097, line: 50, baseType: !1104, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1119, file: !1097, line: 51, baseType: !1112, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1096, file: !1097, line: 61, baseType: !1125, size: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 55, size: 256, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1132}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1125, file: !1097, line: 56, baseType: !882, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1125, file: !1097, line: 57, baseType: !1104, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1125, file: !1097, line: 58, baseType: !129, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1125, file: !1097, line: 59, baseType: !1131, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !90, line: 94, baseType: !414)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1125, file: !1097, line: 60, baseType: !1131, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1096, file: !1097, line: 95, baseType: !1134, size: 256)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 64, size: 256, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1134, file: !1097, line: 65, baseType: !92, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !1097, line: 77, baseType: !1138, size: 192, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !1097, line: 77, size: 192, elements: !1139)
!1139 = !{!1140, !1141, !1148}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1138, file: !1097, line: 82, baseType: !620, size: 16)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1138, file: !1097, line: 88, baseType: !1142, size: 192)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1097, line: 84, size: 192, elements: !1143)
!1143 = !{!1144, !1146, !1147}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1142, file: !1097, line: 85, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !745)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1142, file: !1097, line: 86, baseType: !92, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1142, file: !1097, line: 87, baseType: !92, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1138, file: !1097, line: 93, baseType: !1149, size: 96)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1097, line: 90, size: 96, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1149, file: !1097, line: 91, baseType: !1145, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1149, file: !1097, line: 92, baseType: !107, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1096, file: !1097, line: 101, baseType: !1154, size: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 98, size: 128, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1154, file: !1097, line: 99, baseType: !415, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1154, file: !1097, line: 100, baseType: !129, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1096, file: !1097, line: 108, baseType: !1159, size: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 104, size: 128, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1159, file: !1097, line: 105, baseType: !92, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1159, file: !1097, line: 106, baseType: !129, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1159, file: !1097, line: 107, baseType: !7, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !632, file: !633, line: 1067, baseType: !1165, offset: 11136)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1166, line: 12, elements: !354)
!1166 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !632, file: !633, line: 1099, baseType: !1168, size: 64, offset: 11136)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !633, line: 56, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !632, file: !633, line: 1103, baseType: !327, size: 128, offset: 11200)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !632, file: !633, line: 1104, baseType: !1172, size: 64, offset: 11328)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !633, line: 46, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !632, file: !633, line: 1105, baseType: !586, size: 192, offset: 11392)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !632, file: !633, line: 1106, baseType: !7, size: 32, offset: 11584)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !632, file: !633, line: 1109, baseType: !1177, size: 128, offset: 11648)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 128, elements: !1180)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !633, line: 51, flags: DIFlagFwdDecl)
!1180 = !{!1181}
!1181 = !DISubrange(count: 2)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !632, file: !633, line: 1110, baseType: !586, size: 192, offset: 11776)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !632, file: !633, line: 1111, baseType: !327, size: 128, offset: 11968)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !632, file: !633, line: 1173, baseType: !1185, size: 64, offset: 12096)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1187, line: 62, size: 256, align: 256, elements: !1188)
!1187 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191, !1196}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1186, file: !1187, line: 75, baseType: !107, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1186, file: !1187, line: 90, baseType: !107, size: 32, offset: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1186, file: !1187, line: 124, baseType: !1192, size: 64, offset: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1187, line: 109, size: 64, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1192, file: !1187, line: 110, baseType: !112, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1192, file: !1187, line: 112, baseType: !112, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 144, baseType: !107, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !632, file: !633, line: 1174, baseType: !105, size: 32, offset: 12160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !632, file: !633, line: 1179, baseType: !179, size: 64, offset: 12224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !632, file: !633, line: 1182, baseType: !1200, size: 128, offset: 12288)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !564, line: 76, size: 128, elements: !1201)
!1201 = !{!1202, !1207, !1208}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1200, file: !564, line: 85, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1204, line: 7, size: 64, elements: !1205)
!1204 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1203, file: !1204, line: 12, baseType: !789, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1200, file: !564, line: 88, baseType: !291, size: 8, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1200, file: !564, line: 95, baseType: !291, size: 8, offset: 72)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 1184, baseType: !1210, size: 128, offset: 12416)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 1184, size: 128, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1210, file: !633, line: 1185, baseType: !645, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1210, file: !633, line: 1186, baseType: !920, size: 128, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !632, file: !633, line: 1190, baseType: !1215, size: 64, offset: 12544)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !261, line: 13, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !632, file: !633, line: 1192, baseType: !1218, size: 128, offset: 12608)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !564, line: 64, size: 128, elements: !1219)
!1219 = !{!1220, !1313, !1314}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1218, file: !564, line: 65, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !464, line: 68, size: 512, align: 128, elements: !1223)
!1223 = !{!1224, !1225, !1305, !1312}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1222, file: !464, line: 69, baseType: !179, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !464, line: 77, baseType: !1226, size: 320, offset: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !464, line: 77, size: 320, elements: !1227)
!1227 = !{!1228, !1237, !1242, !1270, !1278, !1284, !1297, !1304}
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 78, baseType: !1229, size: 320)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 78, size: 320, elements: !1230)
!1230 = !{!1231, !1232, !1235, !1236}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1229, file: !464, line: 84, baseType: !327, size: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1229, file: !464, line: 86, baseType: !1233, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !464, line: 26, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1229, file: !464, line: 87, baseType: !179, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1229, file: !464, line: 94, baseType: !179, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 96, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 96, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1238, file: !464, line: 101, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !88, line: 143, baseType: !111)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 103, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 103, size: 320, elements: !1244)
!1244 = !{!1245, !1255, !1258, !1259}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !464, line: 104, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !464, line: 104, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1246, file: !464, line: 105, baseType: !327, size: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !464, line: 106, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !464, line: 106, size: 128, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1250, file: !464, line: 107, baseType: !1221, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1250, file: !464, line: 109, baseType: !129, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1250, file: !464, line: 110, baseType: !129, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1243, file: !464, line: 117, baseType: !1256, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !464, line: 117, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1243, file: !464, line: 119, baseType: !92, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !464, line: 120, baseType: !1260, size: 64, offset: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !464, line: 120, size: 64, elements: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1260, file: !464, line: 121, baseType: !92, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1260, file: !464, line: 122, baseType: !179, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !464, line: 123, baseType: !1265, size: 32)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !464, line: 123, size: 32, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1265, file: !464, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1265, file: !464, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1265, file: !464, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 130, baseType: !1271, size: 192)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 130, size: 192, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1271, file: !464, line: 131, baseType: !179, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1271, file: !464, line: 134, baseType: !102, size: 8, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1271, file: !464, line: 135, baseType: !102, size: 8, offset: 72)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1271, file: !464, line: 136, baseType: !509, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1271, file: !464, line: 137, baseType: !7, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 139, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 139, size: 256, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1279, file: !464, line: 140, baseType: !179, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1279, file: !464, line: 141, baseType: !509, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1279, file: !464, line: 143, baseType: !327, size: 128, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 145, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 145, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1290, !1291, !1296}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1285, file: !464, line: 146, baseType: !179, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1285, file: !464, line: 147, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !456, line: 509, baseType: !1221)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1285, file: !464, line: 148, baseType: !179, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !464, line: 149, baseType: !1292, size: 64, offset: 192)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !464, line: 149, size: 64, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1292, file: !464, line: 150, baseType: !480, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1292, file: !464, line: 151, baseType: !509, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1285, file: !464, line: 156, baseType: !340, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !464, line: 159, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !464, line: 159, size: 128, elements: !1299)
!1299 = !{!1300, !1303}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1298, file: !464, line: 161, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !464, line: 161, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1298, file: !464, line: 162, baseType: !92, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1226, file: !464, line: 176, baseType: !920, size: 128, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !464, line: 179, baseType: !1306, size: 32, offset: 384)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !464, line: 179, size: 32, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1306, file: !464, line: 184, baseType: !509, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1306, file: !464, line: 192, baseType: !7, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1306, file: !464, line: 194, baseType: !7, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1306, file: !464, line: 195, baseType: !129, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1222, file: !464, line: 199, baseType: !509, size: 32, offset: 416)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1218, file: !564, line: 67, baseType: !107, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1218, file: !564, line: 68, baseType: !107, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !632, file: !633, line: 1206, baseType: !129, size: 32, offset: 12736)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !632, file: !633, line: 1207, baseType: !129, size: 32, offset: 12768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !632, file: !633, line: 1209, baseType: !179, size: 64, offset: 12800)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !632, file: !633, line: 1219, baseType: !111, size: 64, offset: 12864)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !632, file: !633, line: 1220, baseType: !111, size: 64, offset: 12928)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !632, file: !633, line: 1317, baseType: !129, size: 32, offset: 12992)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !632, file: !633, line: 1319, baseType: !631, size: 64, offset: 13056)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !632, file: !633, line: 1322, baseType: !1323, size: 64, offset: 13120)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !633, line: 1322, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !632, file: !633, line: 1326, baseType: !645, size: 32, offset: 13184)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !632, file: !633, line: 1342, baseType: !92, size: 64, offset: 13248)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !632, file: !633, line: 1343, baseType: !112, size: 64, offset: 13312)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !632, file: !633, line: 1344, baseType: !111, size: 64, offset: 13376)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !632, file: !633, line: 1345, baseType: !112, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !632, file: !633, line: 1346, baseType: !112, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !632, file: !633, line: 1347, baseType: !112, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !632, file: !633, line: 1348, baseType: !920, size: 128, align: 64, offset: 13504)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !632, file: !633, line: 1358, baseType: !1334, size: 34816, offset: 13824)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1335, line: 485, size: 34816, elements: !1336)
!1335 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1366, !1367, !1368, !1369, !1370, !1371, !1374, !1375, !1376}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1334, file: !1335, line: 487, baseType: !1338, size: 192)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 192, elements: !382)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1340, line: 16, size: 64, elements: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1339, file: !1340, line: 17, baseType: !615, size: 16)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1339, file: !1340, line: 18, baseType: !615, size: 16, offset: 16)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1339, file: !1340, line: 19, baseType: !615, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1339, file: !1340, line: 19, baseType: !615, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1339, file: !1340, line: 19, baseType: !615, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1339, file: !1340, line: 19, baseType: !615, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1339, file: !1340, line: 19, baseType: !615, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1339, file: !1340, line: 20, baseType: !615, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1339, file: !1340, line: 20, baseType: !615, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1339, file: !1340, line: 20, baseType: !615, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1339, file: !1340, line: 20, baseType: !615, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1339, file: !1340, line: 20, baseType: !615, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1339, file: !1340, line: 20, baseType: !615, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1334, file: !1335, line: 491, baseType: !179, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1334, file: !1335, line: 495, baseType: !422, size: 16, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1334, file: !1335, line: 496, baseType: !422, size: 16, offset: 272)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1334, file: !1335, line: 497, baseType: !422, size: 16, offset: 288)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1334, file: !1335, line: 498, baseType: !422, size: 16, offset: 304)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1334, file: !1335, line: 502, baseType: !179, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1334, file: !1335, line: 503, baseType: !179, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1334, file: !1335, line: 514, baseType: !1363, size: 256, offset: 448)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 256, elements: !568)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1335, line: 483, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1334, file: !1335, line: 516, baseType: !179, size: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1334, file: !1335, line: 518, baseType: !179, size: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1334, file: !1335, line: 520, baseType: !179, size: 64, offset: 832)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1334, file: !1335, line: 521, baseType: !179, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1334, file: !1335, line: 522, baseType: !179, size: 64, offset: 960)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1334, file: !1335, line: 528, baseType: !1372, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1335, line: 10, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1334, file: !1335, line: 535, baseType: !179, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1334, file: !1335, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1334, file: !1335, line: 540, baseType: !1377, size: 33280, offset: 1536)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1378, line: 317, size: 33280, elements: !1379)
!1378 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1377, file: !1378, line: 330, baseType: !7, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1377, file: !1378, line: 337, baseType: !179, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1377, file: !1378, line: 348, baseType: !1383, size: 32768, offset: 512)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1378, line: 304, size: 32768, elements: !1384)
!1384 = !{!1385, !1400, !1439, !1489, !1506}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1383, file: !1378, line: 305, baseType: !1386, size: 896)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1378, line: 12, size: 896, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1399}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1386, file: !1378, line: 13, baseType: !105, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1386, file: !1378, line: 14, baseType: !105, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1386, file: !1378, line: 15, baseType: !105, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1386, file: !1378, line: 16, baseType: !105, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1386, file: !1378, line: 17, baseType: !105, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1386, file: !1378, line: 18, baseType: !105, size: 32, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1386, file: !1378, line: 19, baseType: !105, size: 32, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1386, file: !1378, line: 22, baseType: !1396, size: 640, offset: 224)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 20)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1386, file: !1378, line: 25, baseType: !105, size: 32, offset: 864)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1383, file: !1378, line: 306, baseType: !1401, size: 4096, align: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1378, line: 34, size: 4096, align: 128, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1422, !1423, !1424, !1428, !1430, !1434}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1401, file: !1378, line: 35, baseType: !615, size: 16)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1401, file: !1378, line: 36, baseType: !615, size: 16, offset: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1401, file: !1378, line: 37, baseType: !615, size: 16, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1401, file: !1378, line: 38, baseType: !615, size: 16, offset: 48)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1378, line: 39, baseType: !1408, size: 128, offset: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1378, line: 39, size: 128, elements: !1409)
!1409 = !{!1410, !1415}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1378, line: 40, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1378, line: 40, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1411, file: !1378, line: 41, baseType: !111, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1411, file: !1378, line: 42, baseType: !111, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1378, line: 44, baseType: !1416, size: 128)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1378, line: 44, size: 128, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1416, file: !1378, line: 45, baseType: !105, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1416, file: !1378, line: 46, baseType: !105, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1416, file: !1378, line: 47, baseType: !105, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1416, file: !1378, line: 48, baseType: !105, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1401, file: !1378, line: 51, baseType: !105, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1401, file: !1378, line: 52, baseType: !105, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1401, file: !1378, line: 55, baseType: !1425, size: 1024, offset: 256)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1024, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1401, file: !1378, line: 58, baseType: !1429, size: 2048, offset: 1280)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 2048, elements: !386)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1401, file: !1378, line: 60, baseType: !1431, size: 384, offset: 3328)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 12)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1378, line: 62, baseType: !1435, size: 384, offset: 3712)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1378, line: 62, size: 384, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1435, file: !1378, line: 63, baseType: !1431, size: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1435, file: !1378, line: 64, baseType: !1431, size: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1383, file: !1378, line: 307, baseType: !1440, size: 1088)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1378, line: 79, size: 1088, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1488}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1440, file: !1378, line: 80, baseType: !105, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1440, file: !1378, line: 81, baseType: !105, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1440, file: !1378, line: 82, baseType: !105, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1440, file: !1378, line: 83, baseType: !105, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1440, file: !1378, line: 84, baseType: !105, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1440, file: !1378, line: 85, baseType: !105, size: 32, offset: 160)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1440, file: !1378, line: 86, baseType: !105, size: 32, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1440, file: !1378, line: 88, baseType: !1396, size: 640, offset: 224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1440, file: !1378, line: 89, baseType: !234, size: 8, offset: 864)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1440, file: !1378, line: 90, baseType: !234, size: 8, offset: 872)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1440, file: !1378, line: 91, baseType: !234, size: 8, offset: 880)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1440, file: !1378, line: 92, baseType: !234, size: 8, offset: 888)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1440, file: !1378, line: 93, baseType: !234, size: 8, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1440, file: !1378, line: 94, baseType: !234, size: 8, offset: 904)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1440, file: !1378, line: 95, baseType: !1457, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1459, line: 11, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1458, file: !1459, line: 12, baseType: !415, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1458, file: !1459, line: 13, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1465, line: 56, size: 1344, elements: !1466)
!1465 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1464, file: !1465, line: 61, baseType: !179, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1464, file: !1465, line: 62, baseType: !179, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1464, file: !1465, line: 63, baseType: !179, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1464, file: !1465, line: 64, baseType: !179, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1464, file: !1465, line: 65, baseType: !179, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1464, file: !1465, line: 66, baseType: !179, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1464, file: !1465, line: 68, baseType: !179, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1464, file: !1465, line: 69, baseType: !179, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1464, file: !1465, line: 70, baseType: !179, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1464, file: !1465, line: 71, baseType: !179, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1464, file: !1465, line: 72, baseType: !179, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1464, file: !1465, line: 73, baseType: !179, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1464, file: !1465, line: 74, baseType: !179, size: 64, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1464, file: !1465, line: 75, baseType: !179, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1464, file: !1465, line: 76, baseType: !179, size: 64, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1464, file: !1465, line: 81, baseType: !179, size: 64, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1464, file: !1465, line: 83, baseType: !179, size: 64, offset: 1024)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1464, file: !1465, line: 84, baseType: !179, size: 64, offset: 1088)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1464, file: !1465, line: 85, baseType: !179, size: 64, offset: 1152)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1464, file: !1465, line: 86, baseType: !179, size: 64, offset: 1216)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1464, file: !1465, line: 87, baseType: !179, size: 64, offset: 1280)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1440, file: !1378, line: 96, baseType: !105, size: 32, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1383, file: !1378, line: 308, baseType: !1490, size: 4608, align: 512)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1378, line: 289, size: 4608, align: 512, elements: !1491)
!1491 = !{!1492, !1493, !1502}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1490, file: !1378, line: 290, baseType: !1401, size: 4096, align: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1490, file: !1378, line: 291, baseType: !1494, size: 512, offset: 4096)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1378, line: 268, size: 512, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1494, file: !1378, line: 269, baseType: !111, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1494, file: !1378, line: 270, baseType: !111, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1494, file: !1378, line: 271, baseType: !1499, size: 384, offset: 128)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 384, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 6)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1490, file: !1378, line: 292, baseType: !1503, offset: 4608)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 0)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1383, file: !1378, line: 309, baseType: !1507, size: 32768)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 32768, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 4096)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !464, line: 378, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !624, file: !464, line: 384, baseType: !942, size: 192, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !484, file: !464, line: 500, baseType: !340, offset: 6656)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !484, file: !464, line: 501, baseType: !1515, size: 64, offset: 6656)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !464, line: 387, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !484, file: !464, line: 516, baseType: !1518, size: 64, offset: 6720)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1520, line: 18, flags: DIFlagFwdDecl)
!1520 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !484, file: !464, line: 519, baseType: !454, size: 64, offset: 6784)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !484, file: !464, line: 521, baseType: !1523, size: 64, offset: 6848)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !464, line: 521, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !484, file: !464, line: 545, baseType: !509, size: 32, offset: 6912)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !484, file: !464, line: 548, baseType: !291, size: 8, offset: 6944)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !484, file: !464, line: 550, baseType: !1528, offset: 6952)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1529, line: 142, elements: !354)
!1529 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !484, file: !464, line: 554, baseType: !1531, size: 256, offset: 6976)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1532, line: 102, size: 256, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1531, file: !1532, line: 103, baseType: !517, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1531, file: !1532, line: 104, baseType: !327, size: 128, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1531, file: !1532, line: 105, baseType: !1537, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1532, line: 21, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1541}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !484, file: !464, line: 557, baseType: !105, size: 32, offset: 7232)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !481, file: !464, line: 565, baseType: !1544, offset: 7296)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: -1)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !463, file: !464, line: 333, baseType: !1548, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !456, line: 284, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !456, line: 284, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1549, file: !456, line: 284, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !507, line: 19, baseType: !179)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !463, file: !464, line: 334, baseType: !179, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !463, file: !464, line: 343, baseType: !1555, size: 256, offset: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !464, line: 340, size: 256, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1555, file: !464, line: 341, baseType: !471, size: 192, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1555, file: !464, line: 342, baseType: !179, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !463, file: !464, line: 351, baseType: !327, size: 128, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !463, file: !464, line: 353, baseType: !1561, size: 64, offset: 1088)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !464, line: 353, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !463, file: !464, line: 356, baseType: !1564, size: 64, offset: 1152)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !464, line: 356, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !463, file: !464, line: 359, baseType: !179, size: 64, offset: 1216)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !463, file: !464, line: 361, baseType: !454, size: 64, offset: 1280)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !463, file: !464, line: 362, baseType: !92, size: 64, offset: 1344)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !463, file: !464, line: 365, baseType: !517, size: 64, offset: 1408)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !463, file: !464, line: 373, baseType: !1572, offset: 1472)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !464, line: 296, elements: !354)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !433, file: !406, line: 90, baseType: !428, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !433, file: !406, line: 91, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !396, file: !323, line: 143, baseType: !1577, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580, !333}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1583)
!1583 = !{!1584, !1585, !1589, !1593, !1601, !1605}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1582, file: !18, line: 40, baseType: !17, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1582, file: !18, line: 41, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!291}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1582, file: !18, line: 42, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!92}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1582, file: !18, line: 43, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1597, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1582, file: !18, line: 44, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1597}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1582, file: !18, line: 45, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !92}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !396, file: !323, line: 144, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1597, !333}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !396, file: !323, line: 145, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !333, !1617, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1520, line: 23, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 21, size: 32, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1619, file: !1520, line: 22, baseType: !1622, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !88, line: 32, baseType: !1104)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1520, line: 28, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 26, size: 32, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1625, file: !1520, line: 27, baseType: !1628, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !88, line: 33, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !90, line: 50, baseType: !7)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !322, file: !323, line: 70, baseType: !1631, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1633, line: 123, size: 1024, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1777, !1778, !1779, !1780, !1781}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1632, file: !1633, line: 124, baseType: !509, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1632, file: !1633, line: 125, baseType: !509, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1632, file: !1633, line: 135, baseType: !1631, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1632, file: !1633, line: 136, baseType: !125, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1632, file: !1633, line: 138, baseType: !471, size: 192, align: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1632, file: !1633, line: 140, baseType: !1597, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1632, file: !1633, line: 141, baseType: !7, size: 32, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !1633, line: 142, baseType: !1643, size: 256, offset: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !1633, line: 142, size: 256, elements: !1644)
!1644 = !{!1645, !1700, !1704}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1643, file: !1633, line: 143, baseType: !1646, size: 192)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1633, line: 91, size: 192, elements: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1646, file: !1633, line: 92, baseType: !179, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1646, file: !1633, line: 94, baseType: !488, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1646, file: !1633, line: 100, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1633, line: 180, size: 704, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1670, !1671, !1672, !1698, !1699}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1652, file: !1633, line: 182, baseType: !1631, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1652, file: !1633, line: 183, baseType: !7, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1652, file: !1633, line: 186, baseType: !1657, size: 192, offset: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1658, line: 19, size: 192, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1668, !1669}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1657, file: !1658, line: 20, baseType: !1661, size: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1662, line: 292, size: 128, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1661, file: !1662, line: 293, baseType: !340)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1661, file: !1662, line: 295, baseType: !1666, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !88, line: 148, baseType: !7)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1661, file: !1662, line: 296, baseType: !92, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1657, file: !1658, line: 21, baseType: !7, size: 32, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1657, file: !1658, line: 22, baseType: !7, size: 32, offset: 160)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1652, file: !1633, line: 187, baseType: !105, size: 32, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1652, file: !1633, line: 188, baseType: !105, size: 32, offset: 352)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1652, file: !1633, line: 189, baseType: !1673, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1633, line: 168, size: 320, elements: !1675)
!1675 = !{!1676, !1682, !1686, !1690, !1694}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1674, file: !1633, line: 169, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!129, !1680, !1651}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !456, line: 539, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1674, file: !1633, line: 171, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!129, !1631, !125, !421}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1674, file: !1633, line: 173, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!129, !1631}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1674, file: !1633, line: 174, baseType: !1691, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!129, !1631, !1631, !125}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1674, file: !1633, line: 176, baseType: !1695, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!129, !1680, !1631, !1651}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1652, file: !1633, line: 192, baseType: !327, size: 128, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1652, file: !1633, line: 194, baseType: !913, size: 128, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1643, file: !1633, line: 144, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1633, line: 103, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1701, file: !1633, line: 104, baseType: !1631, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1643, file: !1633, line: 145, baseType: !1705, size: 256)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1633, line: 107, size: 256, elements: !1706)
!1706 = !{!1707, !1772, !1775, !1776}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1705, file: !1633, line: 108, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1633, line: 217, size: 768, elements: !1711)
!1711 = !{!1712, !1732, !1736, !1740, !1745, !1749, !1753, !1757, !1758, !1759, !1760, !1768}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1710, file: !1633, line: 222, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!129, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1633, line: 197, size: 1088, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1717, file: !1633, line: 199, baseType: !1631, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1717, file: !1633, line: 200, baseType: !454, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1717, file: !1633, line: 201, baseType: !1680, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1717, file: !1633, line: 202, baseType: !92, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1717, file: !1633, line: 205, baseType: !586, size: 192, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1717, file: !1633, line: 206, baseType: !586, size: 192, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1717, file: !1633, line: 207, baseType: !129, size: 32, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1717, file: !1633, line: 208, baseType: !327, size: 128, offset: 704)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1717, file: !1633, line: 209, baseType: !381, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1717, file: !1633, line: 211, baseType: !194, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1717, file: !1633, line: 212, baseType: !291, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1717, file: !1633, line: 213, baseType: !291, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1717, file: !1633, line: 214, baseType: !1564, size: 64, offset: 1024)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1710, file: !1633, line: 223, baseType: !1733, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1716}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1710, file: !1633, line: 236, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!129, !1680, !92}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1710, file: !1633, line: 238, baseType: !1741, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!92, !1680, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1710, file: !1633, line: 239, baseType: !1746, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!92, !1680, !92, !1744}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1710, file: !1633, line: 240, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1680, !92}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1710, file: !1633, line: 242, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!412, !1716, !381, !194, !87}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1710, file: !1633, line: 252, baseType: !194, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1710, file: !1633, line: 259, baseType: !291, size: 8, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1710, file: !1633, line: 260, baseType: !1754, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1710, file: !1633, line: 263, baseType: !1761, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1764, !1716, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1765, line: 52, baseType: !7)
!1765 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1633, line: 27, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1710, file: !1633, line: 266, baseType: !1769, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!129, !1716, !462}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1705, file: !1633, line: 109, baseType: !1773, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1633, line: 31, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1705, file: !1633, line: 110, baseType: !87, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1705, file: !1633, line: 111, baseType: !1631, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1632, file: !1633, line: 148, baseType: !92, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1632, file: !1633, line: 154, baseType: !111, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1632, file: !1633, line: 156, baseType: !422, size: 16, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1632, file: !1633, line: 157, baseType: !421, size: 16, offset: 912)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1632, file: !1633, line: 158, baseType: !1782, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1633, line: 32, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !322, file: !323, line: 71, baseType: !1785, size: 32, offset: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1786, line: 19, size: 32, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1785, file: !1786, line: 20, baseType: !645, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !322, file: !323, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !322, file: !323, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !322, file: !323, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !322, file: !323, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !322, file: !323, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !319, file: !30, line: 463, baseType: !1795, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !319, file: !30, line: 465, baseType: !1797, size: 64, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !319, file: !30, line: 467, baseType: !125, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !319, file: !30, line: 468, baseType: !1801, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1811, !1816, !1820}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !30, line: 88, baseType: !125, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1803, file: !30, line: 89, baseType: !430, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1803, file: !30, line: 90, baseType: !1808, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!129, !1795, !376}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1803, file: !30, line: 91, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!381, !1795, !1815, !1617, !1623}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1803, file: !30, line: 93, baseType: !1817, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1795}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1803, file: !30, line: 95, baseType: !1821, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1824)
!1824 = !{!1825, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1823, file: !37, line: 279, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!129, !1795}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1823, file: !37, line: 280, baseType: !1817, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1823, file: !37, line: 281, baseType: !1826, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1823, file: !37, line: 282, baseType: !1826, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1823, file: !37, line: 283, baseType: !1826, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1823, file: !37, line: 284, baseType: !1826, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1823, file: !37, line: 285, baseType: !1826, size: 64, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1823, file: !37, line: 286, baseType: !1826, size: 64, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1823, file: !37, line: 287, baseType: !1826, size: 64, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1823, file: !37, line: 288, baseType: !1826, size: 64, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1823, file: !37, line: 289, baseType: !1826, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1823, file: !37, line: 290, baseType: !1826, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1823, file: !37, line: 291, baseType: !1826, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1823, file: !37, line: 292, baseType: !1826, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1823, file: !37, line: 293, baseType: !1826, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1823, file: !37, line: 294, baseType: !1826, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1823, file: !37, line: 295, baseType: !1826, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1823, file: !37, line: 296, baseType: !1826, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1823, file: !37, line: 297, baseType: !1826, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1823, file: !37, line: 298, baseType: !1826, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1823, file: !37, line: 299, baseType: !1826, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1823, file: !37, line: 300, baseType: !1826, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1823, file: !37, line: 301, baseType: !1826, size: 64, offset: 1408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !319, file: !30, line: 470, baseType: !1852, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1854, line: 82, size: 1408, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1938, !1941, !1944}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1853, file: !1854, line: 83, baseType: !125, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1853, file: !1854, line: 84, baseType: !125, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1853, file: !1854, line: 85, baseType: !1795, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1853, file: !1854, line: 86, baseType: !430, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1853, file: !1854, line: 87, baseType: !430, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1853, file: !1854, line: 88, baseType: !430, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1853, file: !1854, line: 90, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!129, !1795, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1889, !1902, !1903, !1904, !1905, !1906, !1914, !1915, !1916, !1917, !1918, !1919}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1867, file: !24, line: 96, baseType: !125, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1867, file: !24, line: 97, baseType: !1852, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1867, file: !24, line: 99, baseType: !315, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1867, file: !24, line: 100, baseType: !125, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1867, file: !24, line: 102, baseType: !291, size: 8, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1867, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1867, file: !24, line: 105, baseType: !1876, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1879, line: 262, size: 1600, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1883, !1884, !1888}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1878, file: !1879, line: 263, baseType: !1882, size: 256)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1426)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1878, file: !1879, line: 264, baseType: !1882, size: 256, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1878, file: !1879, line: 265, baseType: !1885, size: 1024, offset: 512)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !1886)
!1886 = !{!1887}
!1887 = !DISubrange(count: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1878, file: !1879, line: 266, baseType: !1597, size: 64, offset: 1536)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1867, file: !24, line: 106, baseType: !1890, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1879, line: 210, size: 256, elements: !1893)
!1893 = !{!1894, !1898, !1900, !1901}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1892, file: !1879, line: 211, baseType: !1895, size: 72)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 72, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 9)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1892, file: !1879, line: 212, baseType: !1899, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1879, line: 14, baseType: !179)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1892, file: !1879, line: 213, baseType: !107, size: 32, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1892, file: !1879, line: 214, baseType: !107, size: 32, offset: 224)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1867, file: !24, line: 108, baseType: !1826, size: 64, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1867, file: !24, line: 109, baseType: !1817, size: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1867, file: !24, line: 110, baseType: !1826, size: 64, offset: 576)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1867, file: !24, line: 111, baseType: !1817, size: 64, offset: 640)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1867, file: !24, line: 112, baseType: !1907, size: 64, offset: 704)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!129, !1795, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1911, file: !37, line: 51, baseType: !129, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1867, file: !24, line: 113, baseType: !1826, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1867, file: !24, line: 114, baseType: !430, size: 64, offset: 832)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1867, file: !24, line: 115, baseType: !430, size: 64, offset: 896)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1867, file: !24, line: 117, baseType: !1821, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1867, file: !24, line: 118, baseType: !1817, size: 64, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1867, file: !24, line: 120, baseType: !1920, size: 64, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1853, file: !1854, line: 91, baseType: !1808, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1853, file: !1854, line: 92, baseType: !1826, size: 64, offset: 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1853, file: !1854, line: 93, baseType: !1817, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1853, file: !1854, line: 94, baseType: !1826, size: 64, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1853, file: !1854, line: 95, baseType: !1817, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1853, file: !1854, line: 97, baseType: !1826, size: 64, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1853, file: !1854, line: 98, baseType: !1826, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1853, file: !1854, line: 100, baseType: !1907, size: 64, offset: 896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1853, file: !1854, line: 101, baseType: !1826, size: 64, offset: 960)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1853, file: !1854, line: 103, baseType: !1826, size: 64, offset: 1024)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1853, file: !1854, line: 105, baseType: !1826, size: 64, offset: 1088)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1853, file: !1854, line: 107, baseType: !1821, size: 64, offset: 1152)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1853, file: !1854, line: 109, baseType: !1935, size: 64, offset: 1216)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1854, line: 109, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1853, file: !1854, line: 111, baseType: !1939, size: 64, offset: 1280)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1854, line: 111, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1853, file: !1854, line: 112, baseType: !1942, offset: 1344)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1943, line: 187, elements: !354)
!1943 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1853, file: !1854, line: 114, baseType: !291, size: 8, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !319, file: !30, line: 471, baseType: !1866, size: 64, offset: 832)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !319, file: !30, line: 473, baseType: !92, size: 64, offset: 896)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !319, file: !30, line: 475, baseType: !92, size: 64, offset: 960)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !319, file: !30, line: 480, baseType: !586, size: 192, offset: 1024)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !319, file: !30, line: 484, baseType: !1950, size: 576, offset: 1216)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1950, file: !30, line: 362, baseType: !327, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1950, file: !30, line: 363, baseType: !327, size: 128, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1950, file: !30, line: 364, baseType: !327, size: 128, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1950, file: !30, line: 365, baseType: !327, size: 128, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1950, file: !30, line: 366, baseType: !291, size: 8, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1950, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !319, file: !30, line: 485, baseType: !1959, size: 2304, offset: 1792)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2056, !2060}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1959, file: !37, line: 566, baseType: !1910, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1959, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1959, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1959, file: !37, line: 569, baseType: !291, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1959, file: !37, line: 570, baseType: !291, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1959, file: !37, line: 571, baseType: !291, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1959, file: !37, line: 572, baseType: !291, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1959, file: !37, line: 573, baseType: !291, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1959, file: !37, line: 574, baseType: !291, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1959, file: !37, line: 575, baseType: !291, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1959, file: !37, line: 576, baseType: !291, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1959, file: !37, line: 577, baseType: !105, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1959, file: !37, line: 578, baseType: !340, offset: 96)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1959, file: !37, line: 580, baseType: !327, size: 128, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1959, file: !37, line: 581, baseType: !942, size: 192, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1959, file: !37, line: 582, baseType: !1977, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1979, line: 43, size: 1472, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1988, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1978, file: !1979, line: 44, baseType: !125, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1978, file: !1979, line: 45, baseType: !129, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1978, file: !1979, line: 46, baseType: !327, size: 128, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !1979, line: 47, baseType: !340, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1978, file: !1979, line: 48, baseType: !1986, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1978, file: !1979, line: 49, baseType: !1989, size: 320, offset: 320)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1990, line: 11, size: 320, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994, !1999}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1989, file: !1990, line: 16, baseType: !906, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1989, file: !1990, line: 17, baseType: !179, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1989, file: !1990, line: 18, baseType: !1995, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1989, file: !1990, line: 19, baseType: !105, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1978, file: !1979, line: 50, baseType: !179, size: 64, offset: 640)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1978, file: !1979, line: 51, baseType: !715, size: 64, offset: 704)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1978, file: !1979, line: 52, baseType: !715, size: 64, offset: 768)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1978, file: !1979, line: 53, baseType: !715, size: 64, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1978, file: !1979, line: 54, baseType: !715, size: 64, offset: 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1978, file: !1979, line: 55, baseType: !715, size: 64, offset: 960)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1978, file: !1979, line: 56, baseType: !179, size: 64, offset: 1024)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1978, file: !1979, line: 57, baseType: !179, size: 64, offset: 1088)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1978, file: !1979, line: 58, baseType: !179, size: 64, offset: 1152)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1978, file: !1979, line: 59, baseType: !179, size: 64, offset: 1216)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1978, file: !1979, line: 60, baseType: !179, size: 64, offset: 1280)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1978, file: !1979, line: 61, baseType: !1795, size: 64, offset: 1344)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1978, file: !1979, line: 62, baseType: !291, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1978, file: !1979, line: 63, baseType: !291, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1959, file: !37, line: 583, baseType: !291, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1959, file: !37, line: 584, baseType: !291, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1959, file: !37, line: 585, baseType: !291, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1959, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1959, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1959, file: !37, line: 592, baseType: !707, size: 512, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1959, file: !37, line: 593, baseType: !111, size: 64, offset: 1088)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1959, file: !37, line: 594, baseType: !1531, size: 256, offset: 1152)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1959, file: !37, line: 595, baseType: !913, size: 128, offset: 1408)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1959, file: !37, line: 596, baseType: !1986, size: 64, offset: 1536)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1959, file: !37, line: 597, baseType: !509, size: 32, offset: 1600)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1959, file: !37, line: 598, baseType: !509, size: 32, offset: 1632)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1959, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1959, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1959, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1959, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1959, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1959, file: !37, line: 604, baseType: !291, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1959, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1959, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1959, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1959, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1959, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1959, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1959, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1959, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1959, file: !37, line: 613, baseType: !129, size: 32, offset: 1792)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1959, file: !37, line: 614, baseType: !129, size: 32, offset: 1824)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1959, file: !37, line: 615, baseType: !111, size: 64, offset: 1856)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1959, file: !37, line: 616, baseType: !111, size: 64, offset: 1920)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1959, file: !37, line: 617, baseType: !111, size: 64, offset: 1984)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1959, file: !37, line: 618, baseType: !111, size: 64, offset: 2048)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1959, file: !37, line: 620, baseType: !2047, size: 64, offset: 2112)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2048, file: !37, line: 537, baseType: !340)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2048, file: !37, line: 538, baseType: !7, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2048, file: !37, line: 540, baseType: !327, size: 128, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2048, file: !37, line: 543, baseType: !2054, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1959, file: !37, line: 621, baseType: !2057, size: 64, offset: 2176)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1795, !866}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1959, file: !37, line: 622, baseType: !2061, size: 64, offset: 2240)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !319, file: !30, line: 486, baseType: !2064, size: 64, offset: 4096)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2073, !2074, !2075}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2065, file: !37, line: 643, baseType: !1823, size: 1472)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2065, file: !37, line: 644, baseType: !1826, size: 64, offset: 1472)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2065, file: !37, line: 645, baseType: !2070, size: 64, offset: 1536)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !1795, !291}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2065, file: !37, line: 646, baseType: !1826, size: 64, offset: 1600)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2065, file: !37, line: 647, baseType: !1817, size: 64, offset: 1664)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2065, file: !37, line: 648, baseType: !1817, size: 64, offset: 1728)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !319, file: !30, line: 493, baseType: !2077, size: 64, offset: 4160)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !319, file: !30, line: 499, baseType: !327, size: 128, offset: 4224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !319, file: !30, line: 502, baseType: !2081, size: 64, offset: 4352)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !319, file: !30, line: 504, baseType: !2085, size: 64, offset: 4416)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !319, file: !30, line: 505, baseType: !111, size: 64, offset: 4480)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !319, file: !30, line: 510, baseType: !111, size: 64, offset: 4544)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !319, file: !30, line: 511, baseType: !2089, size: 64, offset: 4608)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !319, file: !30, line: 513, baseType: !2093, size: 64, offset: 4672)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2094, file: !30, line: 293, baseType: !7, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2094, file: !30, line: 294, baseType: !179, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !319, file: !30, line: 515, baseType: !327, size: 128, offset: 4736)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !319, file: !30, line: 526, baseType: !2100, offset: 4864)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2101, line: 5, elements: !354)
!2101 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !319, file: !30, line: 528, baseType: !2103, size: 64, offset: 4864)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2105, line: 51, size: 1344, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2108, !2110, !2111, !2201, !2210, !2211, !2212, !2213, !2214, !2215, !2216}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !2105, line: 52, baseType: !125, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2104, file: !2105, line: 53, baseType: !2109, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2105, line: 28, baseType: !105)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2104, file: !2105, line: 54, baseType: !125, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2104, file: !2105, line: 55, baseType: !2112, size: 192, offset: 192)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2113, line: 17, size: 192, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2117, !2200}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2112, file: !2113, line: 18, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2112, file: !2113, line: 19, baseType: !2118, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2113, line: 110, size: 1152, elements: !2121)
!2121 = !{!2122, !2126, !2130, !2136, !2142, !2146, !2150, !2155, !2159, !2160, !2164, !2168, !2172, !2183, !2184, !2185, !2186, !2196}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2120, file: !2113, line: 111, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2116, !2116}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2120, file: !2113, line: 112, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !2116}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2120, file: !2113, line: 113, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!291, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2120, file: !2113, line: 114, baseType: !2137, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!1597, !2134, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2120, file: !2113, line: 116, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!291, !2134, !125}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2120, file: !2113, line: 118, baseType: !2147, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!129, !2134, !125, !7, !92, !194}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2120, file: !2113, line: 123, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!129, !2134, !125, !2154, !194}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2120, file: !2113, line: 126, baseType: !2156, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!125, !2134}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2120, file: !2113, line: 127, baseType: !2156, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2120, file: !2113, line: 128, baseType: !2161, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2116, !2134}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2120, file: !2113, line: 130, baseType: !2165, size: 64, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2116, !2134, !2116}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2120, file: !2113, line: 133, baseType: !2169, size: 64, offset: 704)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2116, !2134, !125}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2120, file: !2113, line: 135, baseType: !2173, size: 64, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!129, !2134, !125, !125, !7, !7, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2113, line: 43, size: 640, elements: !2178)
!2178 = !{!2179, !2180, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2177, file: !2113, line: 44, baseType: !2116, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2177, file: !2113, line: 45, baseType: !7, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2177, file: !2113, line: 46, baseType: !2182, size: 512, offset: 128)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 512, elements: !745)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2120, file: !2113, line: 140, baseType: !2165, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2120, file: !2113, line: 143, baseType: !2161, size: 64, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2120, file: !2113, line: 145, baseType: !2123, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2120, file: !2113, line: 146, baseType: !2187, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!129, !2134, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2113, line: 29, size: 128, elements: !2192)
!2192 = !{!2193, !2194, !2195}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2191, file: !2113, line: 30, baseType: !7, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2191, file: !2113, line: 31, baseType: !7, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2191, file: !2113, line: 32, baseType: !2134, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2120, file: !2113, line: 148, baseType: !2197, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!129, !2134, !1795}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2112, file: !2113, line: 20, baseType: !1795, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2104, file: !2105, line: 57, baseType: !2202, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2105, line: 31, size: 704, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2203, file: !2105, line: 32, baseType: !381, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2203, file: !2105, line: 33, baseType: !129, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2203, file: !2105, line: 34, baseType: !92, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2203, file: !2105, line: 35, baseType: !2202, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2203, file: !2105, line: 43, baseType: !445, size: 448, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2104, file: !2105, line: 58, baseType: !2202, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2104, file: !2105, line: 59, baseType: !2103, size: 64, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2104, file: !2105, line: 60, baseType: !2103, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2104, file: !2105, line: 61, baseType: !2103, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2104, file: !2105, line: 63, baseType: !322, size: 512, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2104, file: !2105, line: 65, baseType: !179, size: 64, offset: 1216)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2104, file: !2105, line: 66, baseType: !92, size: 64, offset: 1280)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !319, file: !30, line: 529, baseType: !2116, size: 64, offset: 4928)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !319, file: !30, line: 534, baseType: !2219, size: 32, offset: 4992)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !88, line: 16, baseType: !2220)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !88, line: 13, baseType: !105)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !319, file: !30, line: 535, baseType: !105, size: 32, offset: 5024)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !319, file: !30, line: 537, baseType: !340, offset: 5056)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !319, file: !30, line: 538, baseType: !327, size: 128, offset: 5056)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !319, file: !30, line: 540, baseType: !2225, size: 64, offset: 5184)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2227, line: 54, size: 960, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2239, !2243, !2244, !2245, !2246, !2250, !2254, !2255}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2226, file: !2227, line: 55, baseType: !125, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2226, file: !2227, line: 56, baseType: !315, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2226, file: !2227, line: 58, baseType: !430, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2226, file: !2227, line: 59, baseType: !430, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2226, file: !2227, line: 60, baseType: !333, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2226, file: !2227, line: 62, baseType: !1808, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2226, file: !2227, line: 63, baseType: !2236, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!381, !1795, !1815}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2226, file: !2227, line: 65, baseType: !2240, size: 64, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !2225}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2226, file: !2227, line: 66, baseType: !1817, size: 64, offset: 512)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2226, file: !2227, line: 68, baseType: !1826, size: 64, offset: 576)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2226, file: !2227, line: 70, baseType: !1580, size: 64, offset: 640)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2226, file: !2227, line: 71, baseType: !2247, size: 64, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!1597, !1795}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2226, file: !2227, line: 73, baseType: !2251, size: 64, offset: 768)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !1795, !1617, !1623}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2226, file: !2227, line: 75, baseType: !1821, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2226, file: !2227, line: 77, baseType: !1939, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !319, file: !30, line: 541, baseType: !430, size: 64, offset: 5248)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !319, file: !30, line: 543, baseType: !1817, size: 64, offset: 5312)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !319, file: !30, line: 544, baseType: !2259, size: 64, offset: 5376)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !319, file: !30, line: 545, baseType: !2262, size: 64, offset: 5440)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !319, file: !30, line: 547, baseType: !291, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !319, file: !30, line: 548, baseType: !291, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !319, file: !30, line: 549, baseType: !291, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !319, file: !30, line: 550, baseType: !291, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !97, file: !98, line: 376, baseType: !129, size: 32, offset: 8832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !97, file: !98, line: 377, baseType: !2270, size: 192, offset: 8896)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !98, line: 191, size: 192, elements: !2271)
!2271 = !{!2272, !2275, !2276}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2270, file: !98, line: 192, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1633, line: 21, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2270, file: !98, line: 194, baseType: !125, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2270, file: !98, line: 195, baseType: !125, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !97, file: !98, line: 378, baseType: !2278, size: 64, offset: 9088)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2280, line: 16, flags: DIFlagFwdDecl)
!2280 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !98, line: 386, baseType: !139, size: 64, offset: 9152)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !97, file: !98, line: 389, baseType: !327, size: 128, offset: 9216)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !98, line: 391, baseType: !2284, size: 320, offset: 9344)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !98, line: 391, size: 320, elements: !2285)
!2285 = !{!2286, !2293}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2284, file: !98, line: 392, baseType: !2287, size: 320)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !98, line: 211, size: 320, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2287, file: !98, line: 212, baseType: !327, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2287, file: !98, line: 213, baseType: !111, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2287, file: !98, line: 214, baseType: !111, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2287, file: !98, line: 215, baseType: !105, size: 32, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2284, file: !98, line: 393, baseType: !2294, size: 256)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !98, line: 230, size: 256, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2294, file: !98, line: 231, baseType: !586, size: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2294, file: !98, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !94, file: !51, line: 321, baseType: !2299, size: 288, offset: 9664)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2299, file: !51, line: 30, baseType: !7, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2299, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2299, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2299, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2299, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2299, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2299, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2299, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2299, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !94, file: !51, line: 322, baseType: !2311, size: 1024, offset: 9984)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2312)
!2312 = !{!2313, !2322, !2323, !2324, !2330, !2378}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2311, file: !51, line: 292, baseType: !2314, size: 192)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2314, file: !51, line: 188, baseType: !50, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2314, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2314, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2314, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2314, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2311, file: !51, line: 293, baseType: !2314, size: 192, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2311, file: !51, line: 294, baseType: !2314, size: 192, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2311, file: !51, line: 295, baseType: !2325, size: 320, offset: 576)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2325, file: !51, line: 239, baseType: !2314, size: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2325, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2325, file: !51, line: 241, baseType: !92, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2311, file: !51, line: 296, baseType: !2331, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2333)
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2332, file: !51, line: 269, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2337)
!2337 = !{!2338, !2342, !2346, !2377}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2336, file: !51, line: 256, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!129, !93}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2336, file: !51, line: 257, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !93}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2336, file: !51, line: 258, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!129, !93, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2352)
!2352 = !{!2353, !2354, !2362, !2363, !2364, !2369, !2370, !2371, !2376}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2351, file: !51, line: 113, baseType: !69, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2351, file: !51, line: 114, baseType: !2355, size: 160, offset: 32)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2355, file: !51, line: 78, baseType: !7, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2355, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2355, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2355, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2355, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2351, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2351, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2351, file: !51, line: 120, baseType: !2365, size: 64, offset: 256)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2351, file: !51, line: 117, size: 64, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2365, file: !51, line: 118, baseType: !1597, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2365, file: !51, line: 119, baseType: !92, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2351, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2351, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2351, file: !51, line: 126, baseType: !2372, size: 64, offset: 384)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2351, file: !51, line: 123, size: 64, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2372, file: !51, line: 124, baseType: !1597, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2372, file: !51, line: 125, baseType: !92, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2351, file: !51, line: 127, baseType: !129, size: 32, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2336, file: !51, line: 260, baseType: !2347, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2311, file: !51, line: 297, baseType: !2331, size: 64, offset: 960)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !94, file: !51, line: 323, baseType: !2380, size: 64, offset: 11008)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2381)
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2380, file: !51, line: 62, baseType: !7, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2380, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !94, file: !51, line: 324, baseType: !2385, size: 64, offset: 11072)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2386)
!2386 = !{!2387}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2385, file: !51, line: 206, baseType: !178, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !94, file: !51, line: 325, baseType: !2389, size: 64, offset: 11136)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2392)
!2392 = !{!2393, !2399, !2400}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2391, file: !51, line: 226, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!129, !93, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2391, file: !51, line: 227, baseType: !2394, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2391, file: !51, line: 228, baseType: !2401, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!291, !93, !2397}
!2404 = !{!0, !2405, !2410, !2415}
!2405 = !DIGlobalVariableExpression(var: !2406, expr: !DIExpression())
!2406 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author172", scope: !2, file: !3, line: 274, type: !2407, isLocal: true, isDefinition: true, align: 8)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 552, elements: !2408)
!2408 = !{!2409}
!2409 = !DISubrange(count: 69)
!2410 = !DIGlobalVariableExpression(var: !2411, expr: !DIExpression())
!2411 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file173", scope: !2, file: !3, line: 275, type: !2412, isLocal: true, isDefinition: true, align: 8)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !2413)
!2413 = !{!2414}
!2414 = !DISubrange(count: 40)
!2415 = !DIGlobalVariableExpression(var: !2416, expr: !DIExpression())
!2416 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license174", scope: !2, file: !3, line: 275, type: !2417, isLocal: true, isDefinition: true, align: 8)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !2418)
!2418 = !{!2419}
!2419 = !DISubrange(count: 24)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 352, elements: !560)
!2421 = !{i32 7, !"Dwarf Version", i32 4}
!2422 = !{i32 2, !"Debug Info Version", i32 3}
!2423 = !{i32 1, !"wchar_size", i32 2}
!2424 = !{i32 1, !"Code Model", i32 2}
!2425 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2426 = distinct !DISubprogram(name: "nanddev_isbad", scope: !3, file: !3, line: 22, type: !2402, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2427 = !DILocalVariable(name: "nand", arg: 1, scope: !2426, file: !3, line: 22, type: !93)
!2428 = !DILocation(line: 22, column: 40, scope: !2426)
!2429 = !DILocalVariable(name: "pos", arg: 2, scope: !2426, file: !3, line: 22, type: !2397)
!2430 = !DILocation(line: 22, column: 69, scope: !2426)
!2431 = !DILocation(line: 24, column: 33, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 24, column: 6)
!2433 = !DILocation(line: 24, column: 6, scope: !2432)
!2434 = !DILocation(line: 24, column: 6, scope: !2426)
!2435 = !DILocalVariable(name: "entry", scope: !2436, file: !3, line: 25, type: !7)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 24, column: 40)
!2437 = !DILocation(line: 25, column: 16, scope: !2436)
!2438 = !DILocalVariable(name: "status", scope: !2436, file: !3, line: 26, type: !129)
!2439 = !DILocation(line: 26, column: 7, scope: !2436)
!2440 = !DILocation(line: 28, column: 36, scope: !2436)
!2441 = !DILocation(line: 28, column: 42, scope: !2436)
!2442 = !DILocation(line: 28, column: 11, scope: !2436)
!2443 = !DILocation(line: 28, column: 9, scope: !2436)
!2444 = !DILocation(line: 29, column: 41, scope: !2436)
!2445 = !DILocation(line: 29, column: 47, scope: !2436)
!2446 = !DILocation(line: 29, column: 12, scope: !2436)
!2447 = !DILocation(line: 29, column: 10, scope: !2436)
!2448 = !DILocation(line: 31, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 31, column: 7)
!2450 = !DILocation(line: 31, column: 14, scope: !2449)
!2451 = !DILocation(line: 31, column: 7, scope: !2436)
!2452 = !DILocation(line: 32, column: 8, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 32, column: 8)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 31, column: 48)
!2455 = !DILocation(line: 32, column: 14, scope: !2453)
!2456 = !DILocation(line: 32, column: 19, scope: !2453)
!2457 = !DILocation(line: 32, column: 25, scope: !2453)
!2458 = !DILocation(line: 32, column: 31, scope: !2453)
!2459 = !DILocation(line: 32, column: 8, scope: !2454)
!2460 = !DILocation(line: 33, column: 12, scope: !2453)
!2461 = !DILocation(line: 33, column: 5, scope: !2453)
!2462 = !DILocation(line: 35, column: 12, scope: !2453)
!2463 = !DILocation(line: 37, column: 33, scope: !2454)
!2464 = !DILocation(line: 37, column: 39, scope: !2454)
!2465 = !DILocation(line: 37, column: 46, scope: !2454)
!2466 = !DILocation(line: 37, column: 4, scope: !2454)
!2467 = !DILocation(line: 38, column: 3, scope: !2454)
!2468 = !DILocation(line: 40, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 40, column: 7)
!2470 = !DILocation(line: 40, column: 14, scope: !2469)
!2471 = !DILocation(line: 40, column: 37, scope: !2469)
!2472 = !DILocation(line: 41, column: 7, scope: !2469)
!2473 = !DILocation(line: 41, column: 14, scope: !2469)
!2474 = !DILocation(line: 40, column: 7, scope: !2436)
!2475 = !DILocation(line: 42, column: 4, scope: !2469)
!2476 = !DILocation(line: 44, column: 3, scope: !2436)
!2477 = !DILocation(line: 47, column: 9, scope: !2426)
!2478 = !DILocation(line: 47, column: 15, scope: !2426)
!2479 = !DILocation(line: 47, column: 20, scope: !2426)
!2480 = !DILocation(line: 47, column: 26, scope: !2426)
!2481 = !DILocation(line: 47, column: 32, scope: !2426)
!2482 = !DILocation(line: 47, column: 2, scope: !2426)
!2483 = !DILocation(line: 48, column: 1, scope: !2426)
!2484 = distinct !DISubprogram(name: "nanddev_bbt_is_initialized", scope: !51, file: !51, line: 930, type: !2485, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!291, !93}
!2487 = !DILocalVariable(name: "nand", arg: 1, scope: !2484, file: !51, line: 930, type: !93)
!2488 = !DILocation(line: 930, column: 67, scope: !2484)
!2489 = !DILocation(line: 932, column: 11, scope: !2484)
!2490 = !DILocation(line: 932, column: 17, scope: !2484)
!2491 = !DILocation(line: 932, column: 21, scope: !2484)
!2492 = !DILocation(line: 932, column: 10, scope: !2484)
!2493 = !DILocation(line: 932, column: 9, scope: !2484)
!2494 = !DILocation(line: 932, column: 2, scope: !2484)
!2495 = distinct !DISubprogram(name: "nanddev_bbt_pos_to_entry", scope: !51, file: !51, line: 916, type: !2496, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!7, !93, !2397}
!2498 = !DILocalVariable(name: "nand", arg: 1, scope: !2495, file: !51, line: 916, type: !93)
!2499 = !DILocation(line: 916, column: 73, scope: !2495)
!2500 = !DILocalVariable(name: "pos", arg: 2, scope: !2495, file: !51, line: 917, type: !2397)
!2501 = !DILocation(line: 917, column: 34, scope: !2495)
!2502 = !DILocation(line: 919, column: 9, scope: !2495)
!2503 = !DILocation(line: 919, column: 14, scope: !2495)
!2504 = !DILocation(line: 920, column: 11, scope: !2495)
!2505 = !DILocation(line: 920, column: 16, scope: !2495)
!2506 = !DILocation(line: 920, column: 23, scope: !2495)
!2507 = !DILocation(line: 920, column: 28, scope: !2495)
!2508 = !DILocation(line: 920, column: 37, scope: !2495)
!2509 = !DILocation(line: 920, column: 43, scope: !2495)
!2510 = !DILocation(line: 920, column: 50, scope: !2495)
!2511 = !DILocation(line: 920, column: 35, scope: !2495)
!2512 = !DILocation(line: 920, column: 20, scope: !2495)
!2513 = !DILocation(line: 921, column: 3, scope: !2495)
!2514 = !DILocation(line: 921, column: 9, scope: !2495)
!2515 = !DILocation(line: 921, column: 16, scope: !2495)
!2516 = !DILocation(line: 920, column: 68, scope: !2495)
!2517 = !DILocation(line: 919, column: 25, scope: !2495)
!2518 = !DILocation(line: 919, column: 2, scope: !2495)
!2519 = distinct !DISubprogram(name: "nanddev_markbad", scope: !3, file: !3, line: 61, type: !2395, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2520 = !DILocalVariable(name: "nand", arg: 1, scope: !2519, file: !3, line: 61, type: !93)
!2521 = !DILocation(line: 61, column: 41, scope: !2519)
!2522 = !DILocalVariable(name: "pos", arg: 2, scope: !2519, file: !3, line: 61, type: !2397)
!2523 = !DILocation(line: 61, column: 70, scope: !2519)
!2524 = !DILocalVariable(name: "mtd", scope: !2519, file: !3, line: 63, type: !139)
!2525 = !DILocation(line: 63, column: 19, scope: !2519)
!2526 = !DILocation(line: 63, column: 40, scope: !2519)
!2527 = !DILocation(line: 63, column: 25, scope: !2519)
!2528 = !DILocalVariable(name: "entry", scope: !2519, file: !3, line: 64, type: !7)
!2529 = !DILocation(line: 64, column: 15, scope: !2519)
!2530 = !DILocalVariable(name: "ret", scope: !2519, file: !3, line: 65, type: !129)
!2531 = !DILocation(line: 65, column: 6, scope: !2519)
!2532 = !DILocation(line: 67, column: 20, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 67, column: 6)
!2534 = !DILocation(line: 67, column: 26, scope: !2533)
!2535 = !DILocation(line: 67, column: 6, scope: !2533)
!2536 = !DILocation(line: 67, column: 6, scope: !2519)
!2537 = !DILocation(line: 68, column: 3, scope: !2533)
!2538 = !DILocation(line: 70, column: 8, scope: !2519)
!2539 = !DILocation(line: 70, column: 14, scope: !2519)
!2540 = !DILocation(line: 70, column: 19, scope: !2519)
!2541 = !DILocation(line: 70, column: 27, scope: !2519)
!2542 = !DILocation(line: 70, column: 33, scope: !2519)
!2543 = !DILocation(line: 70, column: 6, scope: !2519)
!2544 = !DILocation(line: 71, column: 6, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 71, column: 6)
!2546 = !DILocation(line: 71, column: 6, scope: !2519)
!2547 = !DILocation(line: 72, column: 3, scope: !2545)
!2548 = !DILocation(line: 75, column: 34, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 75, column: 6)
!2550 = !DILocation(line: 75, column: 7, scope: !2549)
!2551 = !DILocation(line: 75, column: 6, scope: !2519)
!2552 = !DILocation(line: 76, column: 3, scope: !2549)
!2553 = !DILocation(line: 78, column: 35, scope: !2519)
!2554 = !DILocation(line: 78, column: 41, scope: !2519)
!2555 = !DILocation(line: 78, column: 10, scope: !2519)
!2556 = !DILocation(line: 78, column: 8, scope: !2519)
!2557 = !DILocation(line: 79, column: 37, scope: !2519)
!2558 = !DILocation(line: 79, column: 43, scope: !2519)
!2559 = !DILocation(line: 79, column: 8, scope: !2519)
!2560 = !DILocation(line: 79, column: 6, scope: !2519)
!2561 = !DILocation(line: 80, column: 6, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 80, column: 6)
!2563 = !DILocation(line: 80, column: 6, scope: !2519)
!2564 = !DILocation(line: 81, column: 3, scope: !2562)
!2565 = !DILocation(line: 83, column: 27, scope: !2519)
!2566 = !DILocation(line: 83, column: 8, scope: !2519)
!2567 = !DILocation(line: 83, column: 6, scope: !2519)
!2568 = !DILocation(line: 83, column: 2, scope: !2519)
!2569 = !DILabel(scope: !2519, name: "out", file: !3, line: 85)
!2570 = !DILocation(line: 85, column: 1, scope: !2519)
!2571 = !DILocation(line: 86, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 86, column: 6)
!2573 = !DILocation(line: 86, column: 6, scope: !2519)
!2574 = !DILocation(line: 87, column: 3, scope: !2572)
!2575 = !DILocation(line: 87, column: 8, scope: !2572)
!2576 = !DILocation(line: 87, column: 18, scope: !2572)
!2577 = !DILocation(line: 87, column: 27, scope: !2572)
!2578 = !DILocation(line: 89, column: 9, scope: !2519)
!2579 = !DILocation(line: 89, column: 2, scope: !2519)
!2580 = !DILocation(line: 90, column: 1, scope: !2519)
!2581 = distinct !DISubprogram(name: "nanddev_to_mtd", scope: !51, file: !51, line: 363, type: !2582, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!139, !93}
!2584 = !DILocalVariable(name: "nand", arg: 1, scope: !2581, file: !51, line: 363, type: !93)
!2585 = !DILocation(line: 363, column: 67, scope: !2581)
!2586 = !DILocation(line: 365, column: 10, scope: !2581)
!2587 = !DILocation(line: 365, column: 16, scope: !2581)
!2588 = !DILocation(line: 365, column: 2, scope: !2581)
!2589 = distinct !DISubprogram(name: "nanddev_pos_to_offs", scope: !51, file: !51, line: 683, type: !2590, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!87, !93, !2397}
!2592 = !DILocalVariable(name: "nand", arg: 1, scope: !2589, file: !51, line: 683, type: !93)
!2593 = !DILocation(line: 683, column: 62, scope: !2589)
!2594 = !DILocalVariable(name: "pos", arg: 2, scope: !2589, file: !51, line: 684, type: !2397)
!2595 = !DILocation(line: 684, column: 30, scope: !2589)
!2596 = !DILocalVariable(name: "npages", scope: !2589, file: !51, line: 686, type: !7)
!2597 = !DILocation(line: 686, column: 15, scope: !2589)
!2598 = !DILocation(line: 688, column: 11, scope: !2589)
!2599 = !DILocation(line: 688, column: 16, scope: !2589)
!2600 = !DILocation(line: 689, column: 6, scope: !2589)
!2601 = !DILocation(line: 689, column: 11, scope: !2589)
!2602 = !DILocation(line: 690, column: 7, scope: !2589)
!2603 = !DILocation(line: 690, column: 12, scope: !2589)
!2604 = !DILocation(line: 691, column: 8, scope: !2589)
!2605 = !DILocation(line: 691, column: 13, scope: !2589)
!2606 = !DILocation(line: 691, column: 22, scope: !2589)
!2607 = !DILocation(line: 691, column: 28, scope: !2589)
!2608 = !DILocation(line: 691, column: 35, scope: !2589)
!2609 = !DILocation(line: 691, column: 20, scope: !2589)
!2610 = !DILocation(line: 690, column: 16, scope: !2589)
!2611 = !DILocation(line: 692, column: 6, scope: !2589)
!2612 = !DILocation(line: 692, column: 12, scope: !2589)
!2613 = !DILocation(line: 692, column: 19, scope: !2589)
!2614 = !DILocation(line: 691, column: 53, scope: !2589)
!2615 = !DILocation(line: 689, column: 22, scope: !2589)
!2616 = !DILocation(line: 693, column: 5, scope: !2589)
!2617 = !DILocation(line: 693, column: 11, scope: !2589)
!2618 = !DILocation(line: 693, column: 18, scope: !2589)
!2619 = !DILocation(line: 692, column: 40, scope: !2589)
!2620 = !DILocation(line: 688, column: 21, scope: !2589)
!2621 = !DILocation(line: 688, column: 9, scope: !2589)
!2622 = !DILocation(line: 695, column: 17, scope: !2589)
!2623 = !DILocation(line: 695, column: 9, scope: !2589)
!2624 = !DILocation(line: 695, column: 26, scope: !2589)
!2625 = !DILocation(line: 695, column: 32, scope: !2589)
!2626 = !DILocation(line: 695, column: 39, scope: !2589)
!2627 = !DILocation(line: 695, column: 24, scope: !2589)
!2628 = !DILocation(line: 695, column: 2, scope: !2589)
!2629 = distinct !DISubprogram(name: "nanddev_isreserved", scope: !3, file: !3, line: 102, type: !2402, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2630 = !DILocalVariable(name: "nand", arg: 1, scope: !2629, file: !3, line: 102, type: !93)
!2631 = !DILocation(line: 102, column: 45, scope: !2629)
!2632 = !DILocalVariable(name: "pos", arg: 2, scope: !2629, file: !3, line: 102, type: !2397)
!2633 = !DILocation(line: 102, column: 74, scope: !2629)
!2634 = !DILocalVariable(name: "entry", scope: !2629, file: !3, line: 104, type: !7)
!2635 = !DILocation(line: 104, column: 15, scope: !2629)
!2636 = !DILocalVariable(name: "status", scope: !2629, file: !3, line: 105, type: !129)
!2637 = !DILocation(line: 105, column: 6, scope: !2629)
!2638 = !DILocation(line: 107, column: 34, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 107, column: 6)
!2640 = !DILocation(line: 107, column: 7, scope: !2639)
!2641 = !DILocation(line: 107, column: 6, scope: !2629)
!2642 = !DILocation(line: 108, column: 3, scope: !2639)
!2643 = !DILocation(line: 111, column: 35, scope: !2629)
!2644 = !DILocation(line: 111, column: 41, scope: !2629)
!2645 = !DILocation(line: 111, column: 10, scope: !2629)
!2646 = !DILocation(line: 111, column: 8, scope: !2629)
!2647 = !DILocation(line: 112, column: 40, scope: !2629)
!2648 = !DILocation(line: 112, column: 46, scope: !2629)
!2649 = !DILocation(line: 112, column: 11, scope: !2629)
!2650 = !DILocation(line: 112, column: 9, scope: !2629)
!2651 = !DILocation(line: 113, column: 9, scope: !2629)
!2652 = !DILocation(line: 113, column: 16, scope: !2629)
!2653 = !DILocation(line: 113, column: 2, scope: !2629)
!2654 = !DILocation(line: 114, column: 1, scope: !2629)
!2655 = distinct !DISubprogram(name: "nanddev_erase", scope: !3, file: !3, line: 126, type: !2395, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2656 = !DILocalVariable(name: "nand", arg: 1, scope: !2655, file: !3, line: 126, type: !93)
!2657 = !DILocation(line: 126, column: 39, scope: !2655)
!2658 = !DILocalVariable(name: "pos", arg: 2, scope: !2655, file: !3, line: 126, type: !2397)
!2659 = !DILocation(line: 126, column: 68, scope: !2655)
!2660 = !DILocation(line: 128, column: 20, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 128, column: 6)
!2662 = !DILocation(line: 128, column: 26, scope: !2661)
!2663 = !DILocation(line: 128, column: 6, scope: !2661)
!2664 = !DILocation(line: 128, column: 31, scope: !2661)
!2665 = !DILocation(line: 128, column: 53, scope: !2661)
!2666 = !DILocation(line: 128, column: 59, scope: !2661)
!2667 = !DILocation(line: 128, column: 34, scope: !2661)
!2668 = !DILocation(line: 128, column: 6, scope: !2655)
!2669 = !DILocation(line: 129, column: 3, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 128, column: 65)
!2671 = !DILocation(line: 131, column: 3, scope: !2670)
!2672 = !DILocation(line: 134, column: 9, scope: !2655)
!2673 = !DILocation(line: 134, column: 15, scope: !2655)
!2674 = !DILocation(line: 134, column: 20, scope: !2655)
!2675 = !DILocation(line: 134, column: 26, scope: !2655)
!2676 = !DILocation(line: 134, column: 32, scope: !2655)
!2677 = !DILocation(line: 134, column: 2, scope: !2655)
!2678 = !DILocation(line: 135, column: 1, scope: !2655)
!2679 = distinct !DISubprogram(name: "nanddev_mtd_erase", scope: !3, file: !3, line: 153, type: !182, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2680 = !DILocalVariable(name: "mtd", arg: 1, scope: !2679, file: !3, line: 153, type: !139)
!2681 = !DILocation(line: 153, column: 40, scope: !2679)
!2682 = !DILocalVariable(name: "einfo", arg: 2, scope: !2679, file: !3, line: 153, type: !184)
!2683 = !DILocation(line: 153, column: 64, scope: !2679)
!2684 = !DILocalVariable(name: "nand", scope: !2679, file: !3, line: 155, type: !93)
!2685 = !DILocation(line: 155, column: 22, scope: !2679)
!2686 = !DILocation(line: 155, column: 44, scope: !2679)
!2687 = !DILocation(line: 155, column: 29, scope: !2679)
!2688 = !DILocalVariable(name: "pos", scope: !2679, file: !3, line: 156, type: !2355)
!2689 = !DILocation(line: 156, column: 18, scope: !2679)
!2690 = !DILocalVariable(name: "last", scope: !2679, file: !3, line: 156, type: !2355)
!2691 = !DILocation(line: 156, column: 23, scope: !2679)
!2692 = !DILocalVariable(name: "ret", scope: !2679, file: !3, line: 157, type: !129)
!2693 = !DILocation(line: 157, column: 6, scope: !2679)
!2694 = !DILocation(line: 159, column: 22, scope: !2679)
!2695 = !DILocation(line: 159, column: 28, scope: !2679)
!2696 = !DILocation(line: 159, column: 35, scope: !2679)
!2697 = !DILocation(line: 159, column: 2, scope: !2679)
!2698 = !DILocation(line: 160, column: 22, scope: !2679)
!2699 = !DILocation(line: 160, column: 28, scope: !2679)
!2700 = !DILocation(line: 160, column: 35, scope: !2679)
!2701 = !DILocation(line: 160, column: 42, scope: !2679)
!2702 = !DILocation(line: 160, column: 49, scope: !2679)
!2703 = !DILocation(line: 160, column: 40, scope: !2679)
!2704 = !DILocation(line: 160, column: 53, scope: !2679)
!2705 = !DILocation(line: 160, column: 2, scope: !2679)
!2706 = !DILocation(line: 161, column: 2, scope: !2679)
!2707 = !DILocation(line: 161, column: 9, scope: !2679)
!2708 = !DILocation(line: 161, column: 38, scope: !2679)
!2709 = !DILocation(line: 162, column: 23, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 161, column: 44)
!2711 = !DILocation(line: 162, column: 9, scope: !2710)
!2712 = !DILocation(line: 162, column: 7, scope: !2710)
!2713 = !DILocation(line: 163, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 163, column: 7)
!2715 = !DILocation(line: 163, column: 7, scope: !2710)
!2716 = !DILocation(line: 164, column: 43, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 163, column: 12)
!2718 = !DILocation(line: 164, column: 23, scope: !2717)
!2719 = !DILocation(line: 164, column: 4, scope: !2717)
!2720 = !DILocation(line: 164, column: 11, scope: !2717)
!2721 = !DILocation(line: 164, column: 21, scope: !2717)
!2722 = !DILocation(line: 166, column: 11, scope: !2717)
!2723 = !DILocation(line: 166, column: 4, scope: !2717)
!2724 = !DILocation(line: 169, column: 31, scope: !2710)
!2725 = !DILocation(line: 169, column: 3, scope: !2710)
!2726 = distinct !{!2726, !2706, !2727}
!2727 = !DILocation(line: 170, column: 2, scope: !2679)
!2728 = !DILocation(line: 172, column: 2, scope: !2679)
!2729 = !DILocation(line: 173, column: 1, scope: !2679)
!2730 = distinct !DISubprogram(name: "mtd_to_nanddev", scope: !51, file: !51, line: 352, type: !2731, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!93, !139}
!2733 = !DILocalVariable(name: "mtd", arg: 1, scope: !2730, file: !51, line: 352, type: !139)
!2734 = !DILocation(line: 352, column: 67, scope: !2730)
!2735 = !DILocalVariable(name: "__mptr", scope: !2736, file: !51, line: 354, type: !92)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !51, line: 354, column: 9)
!2737 = !DILocation(line: 354, column: 9, scope: !2736)
!2738 = !DILocation(line: 354, column: 9, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !51, line: 354, column: 9)
!2740 = !DILocation(line: 354, column: 2, scope: !2730)
!2741 = distinct !DISubprogram(name: "nanddev_offs_to_pos", scope: !51, file: !51, line: 628, type: !2742, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!7, !93, !87, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2745 = !DILocalVariable(name: "nand", arg: 1, scope: !2741, file: !51, line: 628, type: !93)
!2746 = !DILocation(line: 628, column: 68, scope: !2741)
!2747 = !DILocalVariable(name: "offs", arg: 2, scope: !2741, file: !51, line: 629, type: !87)
!2748 = !DILocation(line: 629, column: 20, scope: !2741)
!2749 = !DILocalVariable(name: "pos", arg: 3, scope: !2741, file: !51, line: 630, type: !2744)
!2750 = !DILocation(line: 630, column: 30, scope: !2741)
!2751 = !DILocalVariable(name: "pageoffs", scope: !2741, file: !51, line: 632, type: !7)
!2752 = !DILocation(line: 632, column: 15, scope: !2741)
!2753 = !DILocalVariable(name: "tmp", scope: !2741, file: !51, line: 633, type: !111)
!2754 = !DILocation(line: 633, column: 6, scope: !2741)
!2755 = !DILocation(line: 633, column: 12, scope: !2741)
!2756 = !DILocalVariable(name: "__base", scope: !2757, file: !51, line: 635, type: !104)
!2757 = distinct !DILexicalBlock(scope: !2741, file: !51, line: 635, column: 13)
!2758 = !DILocation(line: 635, column: 13, scope: !2757)
!2759 = !DILocalVariable(name: "__rem", scope: !2757, file: !51, line: 635, type: !104)
!2760 = !DILocation(line: 635, column: 11, scope: !2741)
!2761 = !DILocalVariable(name: "__base", scope: !2762, file: !51, line: 636, type: !104)
!2762 = distinct !DILexicalBlock(scope: !2741, file: !51, line: 636, column: 14)
!2763 = !DILocation(line: 636, column: 14, scope: !2762)
!2764 = !DILocalVariable(name: "__rem", scope: !2762, file: !51, line: 636, type: !104)
!2765 = !DILocation(line: 636, column: 2, scope: !2741)
!2766 = !DILocation(line: 636, column: 7, scope: !2741)
!2767 = !DILocation(line: 636, column: 12, scope: !2741)
!2768 = !DILocalVariable(name: "__base", scope: !2769, file: !51, line: 637, type: !104)
!2769 = distinct !DILexicalBlock(scope: !2741, file: !51, line: 637, column: 20)
!2770 = !DILocation(line: 637, column: 20, scope: !2769)
!2771 = !DILocalVariable(name: "__rem", scope: !2769, file: !51, line: 637, type: !104)
!2772 = !DILocation(line: 637, column: 2, scope: !2741)
!2773 = !DILocation(line: 637, column: 7, scope: !2741)
!2774 = !DILocation(line: 637, column: 18, scope: !2741)
!2775 = !DILocation(line: 638, column: 15, scope: !2741)
!2776 = !DILocation(line: 638, column: 20, scope: !2741)
!2777 = !DILocation(line: 638, column: 33, scope: !2741)
!2778 = !DILocation(line: 638, column: 39, scope: !2741)
!2779 = !DILocation(line: 638, column: 46, scope: !2741)
!2780 = !DILocation(line: 638, column: 31, scope: !2741)
!2781 = !DILocation(line: 638, column: 2, scope: !2741)
!2782 = !DILocation(line: 638, column: 7, scope: !2741)
!2783 = !DILocation(line: 638, column: 13, scope: !2741)
!2784 = !DILocalVariable(name: "__base", scope: !2785, file: !51, line: 639, type: !104)
!2785 = distinct !DILexicalBlock(scope: !2741, file: !51, line: 639, column: 13)
!2786 = !DILocation(line: 639, column: 13, scope: !2785)
!2787 = !DILocalVariable(name: "__rem", scope: !2785, file: !51, line: 639, type: !104)
!2788 = !DILocation(line: 639, column: 2, scope: !2741)
!2789 = !DILocation(line: 639, column: 7, scope: !2741)
!2790 = !DILocation(line: 639, column: 11, scope: !2741)
!2791 = !DILocation(line: 640, column: 16, scope: !2741)
!2792 = !DILocation(line: 640, column: 2, scope: !2741)
!2793 = !DILocation(line: 640, column: 7, scope: !2741)
!2794 = !DILocation(line: 640, column: 14, scope: !2741)
!2795 = !DILocation(line: 642, column: 9, scope: !2741)
!2796 = !DILocation(line: 642, column: 2, scope: !2741)
!2797 = distinct !DISubprogram(name: "nanddev_pos_cmp", scope: !51, file: !51, line: 654, type: !2798, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!129, !2397, !2397}
!2800 = !DILocalVariable(name: "a", arg: 1, scope: !2797, file: !51, line: 654, type: !2397)
!2801 = !DILocation(line: 654, column: 58, scope: !2797)
!2802 = !DILocalVariable(name: "b", arg: 2, scope: !2797, file: !51, line: 655, type: !2397)
!2803 = !DILocation(line: 655, column: 30, scope: !2797)
!2804 = !DILocation(line: 657, column: 6, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2797, file: !51, line: 657, column: 6)
!2806 = !DILocation(line: 657, column: 9, scope: !2805)
!2807 = !DILocation(line: 657, column: 19, scope: !2805)
!2808 = !DILocation(line: 657, column: 22, scope: !2805)
!2809 = !DILocation(line: 657, column: 16, scope: !2805)
!2810 = !DILocation(line: 657, column: 6, scope: !2797)
!2811 = !DILocation(line: 658, column: 10, scope: !2805)
!2812 = !DILocation(line: 658, column: 13, scope: !2805)
!2813 = !DILocation(line: 658, column: 22, scope: !2805)
!2814 = !DILocation(line: 658, column: 25, scope: !2805)
!2815 = !DILocation(line: 658, column: 20, scope: !2805)
!2816 = !DILocation(line: 658, column: 3, scope: !2805)
!2817 = !DILocation(line: 660, column: 6, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2797, file: !51, line: 660, column: 6)
!2819 = !DILocation(line: 660, column: 9, scope: !2818)
!2820 = !DILocation(line: 660, column: 16, scope: !2818)
!2821 = !DILocation(line: 660, column: 19, scope: !2818)
!2822 = !DILocation(line: 660, column: 13, scope: !2818)
!2823 = !DILocation(line: 660, column: 6, scope: !2797)
!2824 = !DILocation(line: 661, column: 10, scope: !2818)
!2825 = !DILocation(line: 661, column: 13, scope: !2818)
!2826 = !DILocation(line: 661, column: 19, scope: !2818)
!2827 = !DILocation(line: 661, column: 22, scope: !2818)
!2828 = !DILocation(line: 661, column: 17, scope: !2818)
!2829 = !DILocation(line: 661, column: 3, scope: !2818)
!2830 = !DILocation(line: 663, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2797, file: !51, line: 663, column: 6)
!2832 = !DILocation(line: 663, column: 9, scope: !2831)
!2833 = !DILocation(line: 663, column: 23, scope: !2831)
!2834 = !DILocation(line: 663, column: 26, scope: !2831)
!2835 = !DILocation(line: 663, column: 20, scope: !2831)
!2836 = !DILocation(line: 663, column: 6, scope: !2797)
!2837 = !DILocation(line: 664, column: 10, scope: !2831)
!2838 = !DILocation(line: 664, column: 13, scope: !2831)
!2839 = !DILocation(line: 664, column: 26, scope: !2831)
!2840 = !DILocation(line: 664, column: 29, scope: !2831)
!2841 = !DILocation(line: 664, column: 24, scope: !2831)
!2842 = !DILocation(line: 664, column: 3, scope: !2831)
!2843 = !DILocation(line: 666, column: 6, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2797, file: !51, line: 666, column: 6)
!2845 = !DILocation(line: 666, column: 9, scope: !2844)
!2846 = !DILocation(line: 666, column: 17, scope: !2844)
!2847 = !DILocation(line: 666, column: 20, scope: !2844)
!2848 = !DILocation(line: 666, column: 14, scope: !2844)
!2849 = !DILocation(line: 666, column: 6, scope: !2797)
!2850 = !DILocation(line: 667, column: 10, scope: !2844)
!2851 = !DILocation(line: 667, column: 13, scope: !2844)
!2852 = !DILocation(line: 667, column: 20, scope: !2844)
!2853 = !DILocation(line: 667, column: 23, scope: !2844)
!2854 = !DILocation(line: 667, column: 18, scope: !2844)
!2855 = !DILocation(line: 667, column: 3, scope: !2844)
!2856 = !DILocation(line: 669, column: 2, scope: !2797)
!2857 = !DILocation(line: 670, column: 1, scope: !2797)
!2858 = distinct !DISubprogram(name: "nanddev_pos_next_eraseblock", scope: !51, file: !51, line: 762, type: !2859, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !93, !2744}
!2861 = !DILocalVariable(name: "nand", arg: 1, scope: !2858, file: !51, line: 762, type: !93)
!2862 = !DILocation(line: 762, column: 68, scope: !2858)
!2863 = !DILocalVariable(name: "pos", arg: 2, scope: !2858, file: !51, line: 763, type: !2744)
!2864 = !DILocation(line: 763, column: 30, scope: !2858)
!2865 = !DILocation(line: 765, column: 6, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !51, line: 765, column: 6)
!2867 = !DILocation(line: 765, column: 11, scope: !2866)
!2868 = !DILocation(line: 765, column: 25, scope: !2866)
!2869 = !DILocation(line: 765, column: 31, scope: !2866)
!2870 = !DILocation(line: 765, column: 38, scope: !2866)
!2871 = !DILocation(line: 765, column: 58, scope: !2866)
!2872 = !DILocation(line: 765, column: 22, scope: !2866)
!2873 = !DILocation(line: 765, column: 6, scope: !2858)
!2874 = !DILocation(line: 766, column: 31, scope: !2866)
!2875 = !DILocation(line: 766, column: 37, scope: !2866)
!2876 = !DILocation(line: 766, column: 10, scope: !2866)
!2877 = !DILocation(line: 766, column: 3, scope: !2866)
!2878 = !DILocation(line: 768, column: 2, scope: !2858)
!2879 = !DILocation(line: 768, column: 7, scope: !2858)
!2880 = !DILocation(line: 768, column: 17, scope: !2858)
!2881 = !DILocation(line: 769, column: 2, scope: !2858)
!2882 = !DILocation(line: 769, column: 7, scope: !2858)
!2883 = !DILocation(line: 769, column: 12, scope: !2858)
!2884 = !DILocation(line: 770, column: 15, scope: !2858)
!2885 = !DILocation(line: 770, column: 20, scope: !2858)
!2886 = !DILocation(line: 770, column: 33, scope: !2858)
!2887 = !DILocation(line: 770, column: 39, scope: !2858)
!2888 = !DILocation(line: 770, column: 46, scope: !2858)
!2889 = !DILocation(line: 770, column: 31, scope: !2858)
!2890 = !DILocation(line: 770, column: 2, scope: !2858)
!2891 = !DILocation(line: 770, column: 7, scope: !2858)
!2892 = !DILocation(line: 770, column: 13, scope: !2858)
!2893 = !DILocation(line: 771, column: 1, scope: !2858)
!2894 = distinct !DISubprogram(name: "nanddev_mtd_max_bad_blocks", scope: !3, file: !3, line: 189, type: !204, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2895 = !DILocalVariable(name: "mtd", arg: 1, scope: !2894, file: !3, line: 189, type: !139)
!2896 = !DILocation(line: 189, column: 49, scope: !2894)
!2897 = !DILocalVariable(name: "offs", arg: 2, scope: !2894, file: !3, line: 189, type: !87)
!2898 = !DILocation(line: 189, column: 61, scope: !2894)
!2899 = !DILocalVariable(name: "len", arg: 3, scope: !2894, file: !3, line: 189, type: !194)
!2900 = !DILocation(line: 189, column: 74, scope: !2894)
!2901 = !DILocalVariable(name: "nand", scope: !2894, file: !3, line: 191, type: !93)
!2902 = !DILocation(line: 191, column: 22, scope: !2894)
!2903 = !DILocation(line: 191, column: 44, scope: !2894)
!2904 = !DILocation(line: 191, column: 29, scope: !2894)
!2905 = !DILocalVariable(name: "pos", scope: !2894, file: !3, line: 192, type: !2355)
!2906 = !DILocation(line: 192, column: 18, scope: !2894)
!2907 = !DILocalVariable(name: "end", scope: !2894, file: !3, line: 192, type: !2355)
!2908 = !DILocation(line: 192, column: 23, scope: !2894)
!2909 = !DILocalVariable(name: "max_bb", scope: !2894, file: !3, line: 193, type: !7)
!2910 = !DILocation(line: 193, column: 15, scope: !2894)
!2911 = !DILocation(line: 195, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 195, column: 6)
!2913 = !DILocation(line: 195, column: 13, scope: !2912)
!2914 = !DILocation(line: 195, column: 20, scope: !2912)
!2915 = !DILocation(line: 195, column: 6, scope: !2894)
!2916 = !DILocation(line: 196, column: 3, scope: !2912)
!2917 = !DILocation(line: 198, column: 22, scope: !2894)
!2918 = !DILocation(line: 198, column: 28, scope: !2894)
!2919 = !DILocation(line: 198, column: 2, scope: !2894)
!2920 = !DILocation(line: 199, column: 22, scope: !2894)
!2921 = !DILocation(line: 199, column: 28, scope: !2894)
!2922 = !DILocation(line: 199, column: 35, scope: !2894)
!2923 = !DILocation(line: 199, column: 33, scope: !2894)
!2924 = !DILocation(line: 199, column: 2, scope: !2894)
!2925 = !DILocation(line: 201, column: 27, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 201, column: 2)
!2927 = !DILocation(line: 201, column: 33, scope: !2926)
!2928 = !DILocation(line: 201, column: 7, scope: !2926)
!2929 = !DILocation(line: 202, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 201, column: 2)
!2931 = !DILocation(line: 202, column: 35, scope: !2930)
!2932 = !DILocation(line: 201, column: 2, scope: !2926)
!2933 = !DILocation(line: 204, column: 13, scope: !2930)
!2934 = !DILocation(line: 204, column: 19, scope: !2930)
!2935 = !DILocation(line: 204, column: 26, scope: !2930)
!2936 = !DILocation(line: 204, column: 10, scope: !2930)
!2937 = !DILocation(line: 204, column: 3, scope: !2930)
!2938 = !DILocation(line: 203, column: 28, scope: !2930)
!2939 = !DILocation(line: 203, column: 7, scope: !2930)
!2940 = !DILocation(line: 201, column: 2, scope: !2930)
!2941 = distinct !{!2941, !2932, !2942}
!2942 = !DILocation(line: 204, column: 26, scope: !2926)
!2943 = !DILocation(line: 206, column: 9, scope: !2894)
!2944 = !DILocation(line: 206, column: 2, scope: !2894)
!2945 = !DILocation(line: 207, column: 1, scope: !2894)
!2946 = distinct !DISubprogram(name: "nanddev_pos_next_lun", scope: !51, file: !51, line: 742, type: !2859, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2947 = !DILocalVariable(name: "nand", arg: 1, scope: !2946, file: !51, line: 742, type: !93)
!2948 = !DILocation(line: 742, column: 61, scope: !2946)
!2949 = !DILocalVariable(name: "pos", arg: 2, scope: !2946, file: !51, line: 743, type: !2744)
!2950 = !DILocation(line: 743, column: 23, scope: !2946)
!2951 = !DILocation(line: 745, column: 6, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2946, file: !51, line: 745, column: 6)
!2953 = !DILocation(line: 745, column: 11, scope: !2952)
!2954 = !DILocation(line: 745, column: 18, scope: !2952)
!2955 = !DILocation(line: 745, column: 24, scope: !2952)
!2956 = !DILocation(line: 745, column: 31, scope: !2952)
!2957 = !DILocation(line: 745, column: 47, scope: !2952)
!2958 = !DILocation(line: 745, column: 15, scope: !2952)
!2959 = !DILocation(line: 745, column: 6, scope: !2946)
!2960 = !DILocation(line: 746, column: 34, scope: !2952)
!2961 = !DILocation(line: 746, column: 40, scope: !2952)
!2962 = !DILocation(line: 746, column: 10, scope: !2952)
!2963 = !DILocation(line: 746, column: 3, scope: !2952)
!2964 = !DILocation(line: 748, column: 2, scope: !2946)
!2965 = !DILocation(line: 748, column: 7, scope: !2946)
!2966 = !DILocation(line: 748, column: 10, scope: !2946)
!2967 = !DILocation(line: 749, column: 2, scope: !2946)
!2968 = !DILocation(line: 749, column: 7, scope: !2946)
!2969 = !DILocation(line: 749, column: 12, scope: !2946)
!2970 = !DILocation(line: 750, column: 2, scope: !2946)
!2971 = !DILocation(line: 750, column: 7, scope: !2946)
!2972 = !DILocation(line: 750, column: 13, scope: !2946)
!2973 = !DILocation(line: 751, column: 2, scope: !2946)
!2974 = !DILocation(line: 751, column: 7, scope: !2946)
!2975 = !DILocation(line: 751, column: 18, scope: !2946)
!2976 = !DILocation(line: 752, column: 1, scope: !2946)
!2977 = distinct !DISubprogram(name: "nanddev_init", scope: !3, file: !3, line: 221, type: !2978, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!129, !93, !2389, !315}
!2980 = !DILocalVariable(name: "x", arg: 1, scope: !2981, file: !2982, line: 324, type: !7)
!2981 = distinct !DISubprogram(name: "fls", scope: !2982, file: !2982, line: 324, type: !2983, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!2982 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!129, !7}
!2985 = !DILocation(line: 324, column: 45, scope: !2981, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 241, column: 33, scope: !2977)
!2987 = !DILocalVariable(name: "r", scope: !2981, file: !2982, line: 326, type: !129)
!2988 = !DILocation(line: 326, column: 6, scope: !2981, inlinedAt: !2986)
!2989 = !DILocation(line: 324, column: 45, scope: !2981, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 240, column: 6, scope: !2977)
!2991 = !DILocation(line: 326, column: 6, scope: !2981, inlinedAt: !2990)
!2992 = !DILocalVariable(name: "nand", arg: 1, scope: !2977, file: !3, line: 221, type: !93)
!2993 = !DILocation(line: 221, column: 38, scope: !2977)
!2994 = !DILocalVariable(name: "ops", arg: 2, scope: !2977, file: !3, line: 221, type: !2389)
!2995 = !DILocation(line: 221, column: 67, scope: !2977)
!2996 = !DILocalVariable(name: "owner", arg: 3, scope: !2977, file: !3, line: 222, type: !315)
!2997 = !DILocation(line: 222, column: 19, scope: !2977)
!2998 = !DILocalVariable(name: "mtd", scope: !2977, file: !3, line: 224, type: !139)
!2999 = !DILocation(line: 224, column: 19, scope: !2977)
!3000 = !DILocation(line: 224, column: 40, scope: !2977)
!3001 = !DILocation(line: 224, column: 25, scope: !2977)
!3002 = !DILocalVariable(name: "memorg", scope: !2977, file: !3, line: 225, type: !3003)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!3004 = !DILocation(line: 225, column: 35, scope: !2977)
!3005 = !DILocation(line: 225, column: 63, scope: !2977)
!3006 = !DILocation(line: 225, column: 44, scope: !2977)
!3007 = !DILocation(line: 227, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 227, column: 6)
!3009 = !DILocation(line: 227, column: 12, scope: !3008)
!3010 = !DILocation(line: 227, column: 16, scope: !3008)
!3011 = !DILocation(line: 227, column: 6, scope: !2977)
!3012 = !DILocation(line: 228, column: 3, scope: !3008)
!3013 = !DILocation(line: 230, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 230, column: 6)
!3015 = !DILocation(line: 230, column: 12, scope: !3014)
!3016 = !DILocation(line: 230, column: 18, scope: !3014)
!3017 = !DILocation(line: 230, column: 22, scope: !3014)
!3018 = !DILocation(line: 230, column: 27, scope: !3014)
!3019 = !DILocation(line: 230, column: 35, scope: !3014)
!3020 = !DILocation(line: 230, column: 39, scope: !3014)
!3021 = !DILocation(line: 230, column: 44, scope: !3014)
!3022 = !DILocation(line: 230, column: 6, scope: !2977)
!3023 = !DILocation(line: 231, column: 3, scope: !3014)
!3024 = !DILocation(line: 233, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 233, column: 6)
!3026 = !DILocation(line: 233, column: 15, scope: !3025)
!3027 = !DILocation(line: 233, column: 29, scope: !3025)
!3028 = !DILocation(line: 233, column: 33, scope: !3025)
!3029 = !DILocation(line: 233, column: 41, scope: !3025)
!3030 = !DILocation(line: 233, column: 50, scope: !3025)
!3031 = !DILocation(line: 234, column: 7, scope: !3025)
!3032 = !DILocation(line: 234, column: 15, scope: !3025)
!3033 = !DILocation(line: 234, column: 36, scope: !3025)
!3034 = !DILocation(line: 234, column: 40, scope: !3025)
!3035 = !DILocation(line: 234, column: 48, scope: !3025)
!3036 = !DILocation(line: 234, column: 68, scope: !3025)
!3037 = !DILocation(line: 235, column: 7, scope: !3025)
!3038 = !DILocation(line: 235, column: 15, scope: !3025)
!3039 = !DILocation(line: 235, column: 30, scope: !3025)
!3040 = !DILocation(line: 235, column: 34, scope: !3025)
!3041 = !DILocation(line: 235, column: 42, scope: !3025)
!3042 = !DILocation(line: 235, column: 58, scope: !3025)
!3043 = !DILocation(line: 236, column: 7, scope: !3025)
!3044 = !DILocation(line: 236, column: 15, scope: !3025)
!3045 = !DILocation(line: 233, column: 6, scope: !2977)
!3046 = !DILocation(line: 237, column: 3, scope: !3025)
!3047 = !DILocation(line: 240, column: 10, scope: !2977)
!3048 = !DILocation(line: 240, column: 18, scope: !2977)
!3049 = !DILocation(line: 240, column: 39, scope: !2977)
!3050 = !DILocation(line: 340, column: 14, scope: !2981, inlinedAt: !2990)
!3051 = !DILocation(line: 338, column: 2, scope: !2981, inlinedAt: !2990)
!3052 = !{i32 303211}
!3053 = !DILocation(line: 351, column: 9, scope: !2981, inlinedAt: !2990)
!3054 = !DILocation(line: 351, column: 11, scope: !2981, inlinedAt: !2990)
!3055 = !DILocation(line: 239, column: 2, scope: !2977)
!3056 = !DILocation(line: 239, column: 8, scope: !2977)
!3057 = !DILocation(line: 239, column: 16, scope: !2977)
!3058 = !DILocation(line: 239, column: 38, scope: !2977)
!3059 = !DILocation(line: 241, column: 37, scope: !2977)
!3060 = !DILocation(line: 241, column: 45, scope: !2977)
!3061 = !DILocation(line: 241, column: 65, scope: !2977)
!3062 = !DILocation(line: 340, column: 14, scope: !2981, inlinedAt: !2986)
!3063 = !DILocation(line: 338, column: 2, scope: !2981, inlinedAt: !2986)
!3064 = !DILocation(line: 351, column: 9, scope: !2981, inlinedAt: !2986)
!3065 = !DILocation(line: 351, column: 11, scope: !2981, inlinedAt: !2986)
!3066 = !DILocation(line: 242, column: 12, scope: !2977)
!3067 = !DILocation(line: 242, column: 18, scope: !2977)
!3068 = !DILocation(line: 242, column: 26, scope: !2977)
!3069 = !DILocation(line: 241, column: 70, scope: !2977)
!3070 = !DILocation(line: 241, column: 2, scope: !2977)
!3071 = !DILocation(line: 241, column: 8, scope: !2977)
!3072 = !DILocation(line: 241, column: 16, scope: !2977)
!3073 = !DILocation(line: 241, column: 31, scope: !2977)
!3074 = !DILocation(line: 244, column: 14, scope: !2977)
!3075 = !DILocation(line: 244, column: 2, scope: !2977)
!3076 = !DILocation(line: 244, column: 8, scope: !2977)
!3077 = !DILocation(line: 244, column: 12, scope: !2977)
!3078 = !DILocation(line: 246, column: 14, scope: !2977)
!3079 = !DILocation(line: 246, column: 22, scope: !2977)
!3080 = !DILocation(line: 246, column: 36, scope: !2977)
!3081 = !DILocation(line: 246, column: 2, scope: !2977)
!3082 = !DILocation(line: 246, column: 7, scope: !2977)
!3083 = !DILocation(line: 246, column: 12, scope: !2977)
!3084 = !DILocation(line: 248, column: 2, scope: !2977)
!3085 = !DILocation(line: 248, column: 7, scope: !2977)
!3086 = !DILocation(line: 248, column: 13, scope: !2977)
!3087 = !DILocation(line: 249, column: 19, scope: !2977)
!3088 = !DILocation(line: 249, column: 27, scope: !2977)
!3089 = !DILocation(line: 249, column: 38, scope: !2977)
!3090 = !DILocation(line: 249, column: 46, scope: !2977)
!3091 = !DILocation(line: 249, column: 36, scope: !2977)
!3092 = !DILocation(line: 249, column: 2, scope: !2977)
!3093 = !DILocation(line: 249, column: 7, scope: !2977)
!3094 = !DILocation(line: 249, column: 17, scope: !2977)
!3095 = !DILocation(line: 250, column: 19, scope: !2977)
!3096 = !DILocation(line: 250, column: 27, scope: !2977)
!3097 = !DILocation(line: 250, column: 2, scope: !2977)
!3098 = !DILocation(line: 250, column: 7, scope: !2977)
!3099 = !DILocation(line: 250, column: 17, scope: !2977)
!3100 = !DILocation(line: 251, column: 22, scope: !2977)
!3101 = !DILocation(line: 251, column: 30, scope: !2977)
!3102 = !DILocation(line: 251, column: 2, scope: !2977)
!3103 = !DILocation(line: 251, column: 7, scope: !2977)
!3104 = !DILocation(line: 251, column: 20, scope: !2977)
!3105 = !DILocation(line: 252, column: 17, scope: !2977)
!3106 = !DILocation(line: 252, column: 25, scope: !2977)
!3107 = !DILocation(line: 252, column: 2, scope: !2977)
!3108 = !DILocation(line: 252, column: 7, scope: !2977)
!3109 = !DILocation(line: 252, column: 15, scope: !2977)
!3110 = !DILocation(line: 253, column: 27, scope: !2977)
!3111 = !DILocation(line: 253, column: 14, scope: !2977)
!3112 = !DILocation(line: 253, column: 2, scope: !2977)
!3113 = !DILocation(line: 253, column: 7, scope: !2977)
!3114 = !DILocation(line: 253, column: 12, scope: !2977)
!3115 = !DILocation(line: 254, column: 15, scope: !2977)
!3116 = !DILocation(line: 254, column: 2, scope: !2977)
!3117 = !DILocation(line: 254, column: 7, scope: !2977)
!3118 = !DILocation(line: 254, column: 13, scope: !2977)
!3119 = !DILocation(line: 256, column: 26, scope: !2977)
!3120 = !DILocation(line: 256, column: 9, scope: !2977)
!3121 = !DILocation(line: 256, column: 2, scope: !2977)
!3122 = !DILocation(line: 257, column: 1, scope: !2977)
!3123 = distinct !DISubprogram(name: "nanddev_get_memorg", scope: !51, file: !51, line: 521, type: !3124, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!3003, !93}
!3126 = !DILocalVariable(name: "nand", arg: 1, scope: !3123, file: !51, line: 521, type: !93)
!3127 = !DILocation(line: 521, column: 40, scope: !3123)
!3128 = !DILocation(line: 523, column: 10, scope: !3123)
!3129 = !DILocation(line: 523, column: 16, scope: !3123)
!3130 = !DILocation(line: 523, column: 2, scope: !3123)
!3131 = distinct !DISubprogram(name: "nanddev_size", scope: !51, file: !51, line: 506, type: !3132, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!111, !3134}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!3136 = !DILocalVariable(name: "nand", arg: 1, scope: !3131, file: !51, line: 506, type: !3134)
!3137 = !DILocation(line: 506, column: 58, scope: !3131)
!3138 = !DILocation(line: 508, column: 29, scope: !3131)
!3139 = !DILocation(line: 508, column: 9, scope: !3131)
!3140 = !DILocation(line: 508, column: 54, scope: !3131)
!3141 = !DILocation(line: 508, column: 37, scope: !3131)
!3142 = !DILocation(line: 508, column: 35, scope: !3131)
!3143 = !DILocation(line: 508, column: 2, scope: !3131)
!3144 = distinct !DISubprogram(name: "nanddev_cleanup", scope: !3, file: !3, line: 266, type: !2344, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !354)
!3145 = !DILocalVariable(name: "nand", arg: 1, scope: !3144, file: !3, line: 266, type: !93)
!3146 = !DILocation(line: 266, column: 42, scope: !3144)
!3147 = !DILocation(line: 268, column: 33, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 268, column: 6)
!3149 = !DILocation(line: 268, column: 6, scope: !3148)
!3150 = !DILocation(line: 268, column: 6, scope: !3144)
!3151 = !DILocation(line: 269, column: 23, scope: !3148)
!3152 = !DILocation(line: 269, column: 3, scope: !3148)
!3153 = !DILocation(line: 270, column: 1, scope: !3144)
!3154 = distinct !DISubprogram(name: "nanddev_pos_next_target", scope: !51, file: !51, line: 724, type: !2859, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!3155 = !DILocalVariable(name: "nand", arg: 1, scope: !3154, file: !51, line: 724, type: !93)
!3156 = !DILocation(line: 724, column: 64, scope: !3154)
!3157 = !DILocalVariable(name: "pos", arg: 2, scope: !3154, file: !51, line: 725, type: !2744)
!3158 = !DILocation(line: 725, column: 26, scope: !3154)
!3159 = !DILocation(line: 727, column: 2, scope: !3154)
!3160 = !DILocation(line: 727, column: 7, scope: !3154)
!3161 = !DILocation(line: 727, column: 12, scope: !3154)
!3162 = !DILocation(line: 728, column: 2, scope: !3154)
!3163 = !DILocation(line: 728, column: 7, scope: !3154)
!3164 = !DILocation(line: 728, column: 13, scope: !3154)
!3165 = !DILocation(line: 729, column: 2, scope: !3154)
!3166 = !DILocation(line: 729, column: 7, scope: !3154)
!3167 = !DILocation(line: 729, column: 18, scope: !3154)
!3168 = !DILocation(line: 730, column: 2, scope: !3154)
!3169 = !DILocation(line: 730, column: 7, scope: !3154)
!3170 = !DILocation(line: 730, column: 11, scope: !3154)
!3171 = !DILocation(line: 731, column: 2, scope: !3154)
!3172 = !DILocation(line: 731, column: 7, scope: !3154)
!3173 = !DILocation(line: 731, column: 13, scope: !3154)
!3174 = !DILocation(line: 732, column: 1, scope: !3154)
!3175 = distinct !DISubprogram(name: "nanddev_target_size", scope: !51, file: !51, line: 469, type: !3132, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!3176 = !DILocalVariable(name: "nand", arg: 1, scope: !3175, file: !51, line: 469, type: !3134)
!3177 = !DILocation(line: 469, column: 65, scope: !3175)
!3178 = !DILocation(line: 471, column: 14, scope: !3175)
!3179 = !DILocation(line: 471, column: 20, scope: !3175)
!3180 = !DILocation(line: 471, column: 27, scope: !3175)
!3181 = !DILocation(line: 471, column: 9, scope: !3175)
!3182 = !DILocation(line: 472, column: 9, scope: !3175)
!3183 = !DILocation(line: 472, column: 15, scope: !3175)
!3184 = !DILocation(line: 472, column: 22, scope: !3175)
!3185 = !DILocation(line: 471, column: 43, scope: !3175)
!3186 = !DILocation(line: 473, column: 9, scope: !3175)
!3187 = !DILocation(line: 473, column: 15, scope: !3175)
!3188 = !DILocation(line: 473, column: 22, scope: !3175)
!3189 = !DILocation(line: 472, column: 42, scope: !3175)
!3190 = !DILocation(line: 474, column: 9, scope: !3175)
!3191 = !DILocation(line: 474, column: 15, scope: !3175)
!3192 = !DILocation(line: 474, column: 22, scope: !3175)
!3193 = !DILocation(line: 473, column: 43, scope: !3175)
!3194 = !DILocation(line: 471, column: 2, scope: !3175)
!3195 = distinct !DISubprogram(name: "nanddev_ntargets", scope: !51, file: !51, line: 483, type: !3196, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !354)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!7, !3134}
!3198 = !DILocalVariable(name: "nand", arg: 1, scope: !3195, file: !51, line: 483, type: !3134)
!3199 = !DILocation(line: 483, column: 71, scope: !3195)
!3200 = !DILocation(line: 485, column: 9, scope: !3195)
!3201 = !DILocation(line: 485, column: 15, scope: !3195)
!3202 = !DILocation(line: 485, column: 22, scope: !3195)
!3203 = !DILocation(line: 485, column: 2, scope: !3195)
