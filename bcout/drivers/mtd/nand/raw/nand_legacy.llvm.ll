; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_legacy.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, %struct.nand_interface_config*, %struct.nand_interface_config*, i32, i32, i32, i32, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, i8*, i32, i32, i32, i32, i32, i8*, i8*, %struct.anon.44, i64, %struct.mutex, i8, i32, i32, %struct.nand_controller*, %struct.nand_ecc_ctrl, i8* }
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
%struct.nand_ops = type { i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)*, i1 (%struct.nand_device*, %struct.nand_pos*)* }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { i8*, i8, [4 x i64], [4 x i64], %struct.onfi_params* }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i16, i16, [88 x i8] }
%struct.nand_manufacturer = type { %struct.nand_manufacturer_desc*, i8* }
%struct.nand_manufacturer_desc = type { i32, i8*, %struct.nand_manufacturer_ops* }
%struct.nand_manufacturer_ops = type { {}*, i32 (%struct.nand_chip*)*, {}*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* }
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_chip_ops = type { i32 (%struct.nand_chip*)*, {}*, i32 (%struct.nand_chip*, i64, i64)*, i32 (%struct.nand_chip*, i64, i64)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, %struct.nand_interface_config*)* }
%struct.nand_legacy = type { i8*, i8*, void (%struct.nand_chip*, i32)*, i8 (%struct.nand_chip*)*, void (%struct.nand_chip*, i8)*, void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)*, i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*, i64)*, i32 (%struct.nand_chip*, i64)*, i32 (%struct.nand_chip*, i32, i8*)*, i32 (%struct.nand_chip*, i32, i8*)*, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, %struct.nand_controller_ops* }
%struct.nand_controller_ops = type { i32 (%struct.nand_chip*)*, {}*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)* }
%struct.nand_operation = type { i32, %struct.nand_op_instr*, i32 }
%struct.nand_op_instr = type { i32, %union.anon.42, i32 }
%union.anon.42 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.43, i8 }
%union.anon.43 = type { i8* }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.41 }
%union.anon.41 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, i8* }
%struct.anon.44 = type { i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, void (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)* }

@oops_in_progress = external dso_local global i32, align 4
@jiffies = external dso_local global i64, align 8
@.str = private unnamed_addr constant [35 x i8] c"drivers/mtd/nand/raw/nand_legacy.c\00", align 1
@nand_wait_ready._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !0
@__func__.nand_wait_ready = private unnamed_addr constant [16 x i8] c"nand_wait_ready\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\014timeout while waiting for chip to become ready\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013->legacy.cmd_ctrl() should be provided\0A\00", align 1
@__preempt_count = external dso_local global i32, section ".data", align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nand_wait_ready(%struct.nand_chip* %chip) #0 !dbg !2 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2828, metadata !DIExpression()), !dbg !2834
  %pfo_val__.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pfo_val__.i, metadata !2836, metadata !DIExpression()), !dbg !2842
  %tmp.i = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %timeo = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.declare(metadata i64* %timeo, metadata !2847, metadata !DIExpression()), !dbg !2848
  store i64 400, i64* %timeo, align 8, !dbg !2848
  %0 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count) #5, !dbg !2842, !srcloc !2849
  store i32 %0, i32* %pfo_val__.i, align 4, !dbg !2842
  %1 = load i32, i32* %pfo_val__.i, align 4, !dbg !2842
  %conv.i = zext i32 %1 to i64, !dbg !2842
  store i32 %1, i32* %tmp.i, align 4, !dbg !2842
  %2 = load i32, i32* %tmp.i, align 4, !dbg !2842
  %and.i = and i32 %2, 2147483647, !dbg !2850
  %conv = sext i32 %and.i to i64, !dbg !2851
  %and = and i64 %conv, 16776960, !dbg !2851
  %tobool = icmp ne i64 %and, 0, !dbg !2851
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2852

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* @oops_in_progress, align 4, !dbg !2853
  %tobool1 = icmp ne i32 %3, 0, !dbg !2853
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2854

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2855
  %5 = load i64, i64* %timeo, align 8, !dbg !2856
  call void @panic_nand_wait_ready(%struct.nand_chip* %4, i64 %5) #6, !dbg !2857
  br label %if.end20, !dbg !2858

if.end:                                           ; preds = %lor.lhs.false
  %6 = load volatile i64, i64* @jiffies, align 8, !dbg !2859
  %7 = load i64, i64* %timeo, align 8, !dbg !2860
  %conv2 = trunc i64 %7 to i32, !dbg !2860
  store i32 %conv2, i32* %m.addr.i, align 4
  %8 = load i32, i32* %m.addr.i, align 4, !dbg !2861
  %9 = call i1 @llvm.is.constant.i32(i32 %8) #7, !dbg !2863
  br i1 %9, label %if.then.i, label %if.else.i, !dbg !2864

if.then.i:                                        ; preds = %if.end
  %10 = load i32, i32* %m.addr.i, align 4, !dbg !2865
  %cmp.i = icmp slt i32 %10, 0, !dbg !2868
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2869

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !2870
  br label %msecs_to_jiffies.exit, !dbg !2870

if.end.i:                                         ; preds = %if.then.i
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !2871
  %call.i = call i64 @_msecs_to_jiffies(i32 %11) #8, !dbg !2872
  store i64 %call.i, i64* %retval.i, align 8, !dbg !2873
  br label %msecs_to_jiffies.exit, !dbg !2873

if.else.i:                                        ; preds = %if.end
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !2874
  %call2.i = call i64 @__msecs_to_jiffies(i32 %12) #8, !dbg !2876
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !2877
  br label %msecs_to_jiffies.exit, !dbg !2877

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %13 = load i64, i64* %retval.i, align 8, !dbg !2878
  %add = add i64 %6, %13, !dbg !2879
  store i64 %add, i64* %timeo, align 8, !dbg !2880
  br label %do.body, !dbg !2881

do.body:                                          ; preds = %do.cond, %msecs_to_jiffies.exit
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2882
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 5, !dbg !2885
  %dev_ready = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 9, !dbg !2886
  %15 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready, align 8, !dbg !2886
  %16 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2887
  %call4 = call i32 %15(%struct.nand_chip* %16) #6, !dbg !2882
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2882
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2888

if.then6:                                         ; preds = %do.body
  br label %if.end20, !dbg !2889

if.end7:                                          ; preds = %do.body
  call void @___might_sleep(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 205, i32 0) #6, !dbg !2890
  %call8 = call i32 @_cond_resched() #6, !dbg !2890
  store i32 %call8, i32* %tmp, align 4, !dbg !2890
  %17 = load i32, i32* %tmp, align 4, !dbg !2890
  br label %do.cond, !dbg !2892

do.cond:                                          ; preds = %if.end7
  %18 = load volatile i64, i64* @jiffies, align 8, !dbg !2893
  %19 = load i64, i64* %timeo, align 8, !dbg !2893
  %sub = sub i64 %18, %19, !dbg !2893
  %cmp = icmp slt i64 %sub, 0, !dbg !2893
  br i1 %cmp, label %do.body, label %do.end, !dbg !2892, !llvm.loop !2894

do.end:                                           ; preds = %do.cond
  %20 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2896
  %legacy10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 5, !dbg !2898
  %dev_ready11 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy10, i32 0, i32 9, !dbg !2899
  %21 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready11, align 8, !dbg !2899
  %22 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2900
  %call12 = call i32 %21(%struct.nand_chip* %22) #6, !dbg !2896
  %tobool13 = icmp ne i32 %call12, 0, !dbg !2896
  br i1 %tobool13, label %if.end20, label %if.then14, !dbg !2901

if.then14:                                        ; preds = %do.end
  %call15 = call i32 @___ratelimit(%struct.ratelimit_state* @nand_wait_ready._rs, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.nand_wait_ready, i64 0, i64 0)) #6, !dbg !2902
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2902
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !2905

if.then17:                                        ; preds = %if.then14
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2902
  br label %if.end19, !dbg !2902

if.end19:                                         ; preds = %if.then17, %if.then14
  br label %if.end20, !dbg !2906

if.end20:                                         ; preds = %if.then, %if.then6, %if.end19, %do.end
  ret void, !dbg !2907
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @panic_nand_wait_ready(%struct.nand_chip* %chip, i64 %timeo) #0 !dbg !2908 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %timeo.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  store i64 %timeo, i64* %timeo.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeo.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i32 0, i32* %i, align 4, !dbg !2917
  br label %for.cond, !dbg !2919

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2920
  %conv = sext i32 %0 to i64, !dbg !2920
  %1 = load i64, i64* %timeo.addr, align 8, !dbg !2922
  %cmp = icmp ult i64 %conv, %1, !dbg !2923
  br i1 %cmp, label %for.body, label %for.end, !dbg !2924

for.body:                                         ; preds = %for.cond
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2925
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 5, !dbg !2928
  %dev_ready = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 9, !dbg !2929
  %3 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready, align 8, !dbg !2929
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2930
  %call = call i32 %3(%struct.nand_chip* %4) #6, !dbg !2925
  %tobool = icmp ne i32 %call, 0, !dbg !2925
  br i1 %tobool, label %if.then, label %if.end, !dbg !2931

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !2932

if.end:                                           ; preds = %for.body
  call void @touch_softlockup_watchdog() #6, !dbg !2933
  call void @__const_udelay(i64 4295000) #6, !dbg !2934
  br label %for.inc, !dbg !2939

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !2940
  %inc = add i32 %5, 1, !dbg !2940
  store i32 %inc, i32* %i, align 4, !dbg !2940
  br label %for.cond, !dbg !2941, !llvm.loop !2942

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !2944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @___might_sleep(i8* %file, i32 %line, i32 %preempt_offset) #0 !dbg !2945 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %preempt_offset.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  store i32 %line, i32* %line.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line.addr, metadata !2951, metadata !DIExpression()), !dbg !2952
  store i32 %preempt_offset, i32* %preempt_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preempt_offset.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  ret void, !dbg !2955
}

; Function Attrs: noredzone
declare dso_local i32 @_cond_resched() #2

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_get_set_features_notsupp(%struct.nand_chip* %chip, i32 %addr, i8* %subfeature_param) #0 !dbg !2956 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %addr.addr = alloca i32, align 4
  %subfeature_param.addr = alloca i8*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  store i8* %subfeature_param, i8** %subfeature_param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %subfeature_param.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  ret i32 -524, !dbg !2963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nand_legacy_set_defaults(%struct.nand_chip* %chip) #0 !dbg !2964 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %busw = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.declare(metadata i32* %busw, metadata !2967, metadata !DIExpression()), !dbg !2968
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2969
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 6, !dbg !2970
  %1 = load i32, i32* %options, align 8, !dbg !2970
  %conv = zext i32 %1 to i64, !dbg !2969
  %and = and i64 %conv, 2, !dbg !2971
  %conv1 = trunc i64 %and to i32, !dbg !2969
  store i32 %conv1, i32* %busw, align 4, !dbg !2968
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2972
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %2) #6, !dbg !2974
  br i1 %call, label %if.then, label %if.end, !dbg !2975

if.then:                                          ; preds = %entry
  br label %if.end73, !dbg !2976

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2977
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 5, !dbg !2979
  %chip_delay = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 15, !dbg !2980
  %4 = load i32, i32* %chip_delay, align 8, !dbg !2980
  %tobool = icmp ne i32 %4, 0, !dbg !2977
  br i1 %tobool, label %if.end5, label %if.then2, !dbg !2981

if.then2:                                         ; preds = %if.end
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2982
  %legacy3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 5, !dbg !2983
  %chip_delay4 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy3, i32 0, i32 15, !dbg !2984
  store i32 20, i32* %chip_delay4, align 8, !dbg !2985
  br label %if.end5, !dbg !2982

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2986
  %legacy6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 5, !dbg !2988
  %cmdfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy6, i32 0, i32 8, !dbg !2989
  %7 = load void (%struct.nand_chip*, i32, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc, align 8, !dbg !2989
  %tobool7 = icmp ne void (%struct.nand_chip*, i32, i32, i32)* %7, null, !dbg !2986
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !2990

if.then8:                                         ; preds = %if.end5
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2991
  %legacy9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 5, !dbg !2992
  %cmdfunc10 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy9, i32 0, i32 8, !dbg !2993
  store void (%struct.nand_chip*, i32, i32, i32)* @nand_command, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc10, align 8, !dbg !2994
  br label %if.end11, !dbg !2991

if.end11:                                         ; preds = %if.then8, %if.end5
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2995
  %legacy12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 5, !dbg !2997
  %waitfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy12, i32 0, i32 10, !dbg !2998
  %10 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %waitfunc, align 8, !dbg !2998
  %cmp = icmp eq i32 (%struct.nand_chip*)* %10, null, !dbg !2999
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !3000

if.then14:                                        ; preds = %if.end11
  %11 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3001
  %legacy15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 5, !dbg !3002
  %waitfunc16 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy15, i32 0, i32 10, !dbg !3003
  store i32 (%struct.nand_chip*)* @nand_wait, i32 (%struct.nand_chip*)** %waitfunc16, align 8, !dbg !3004
  br label %if.end17, !dbg !3001

if.end17:                                         ; preds = %if.then14, %if.end11
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3005
  %legacy18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 5, !dbg !3007
  %select_chip = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy18, i32 0, i32 2, !dbg !3008
  %13 = load void (%struct.nand_chip*, i32)*, void (%struct.nand_chip*, i32)** %select_chip, align 8, !dbg !3008
  %tobool19 = icmp ne void (%struct.nand_chip*, i32)* %13, null, !dbg !3005
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !3009

if.then20:                                        ; preds = %if.end17
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3010
  %legacy21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 5, !dbg !3011
  %select_chip22 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy21, i32 0, i32 2, !dbg !3012
  store void (%struct.nand_chip*, i32)* @nand_select_chip, void (%struct.nand_chip*, i32)** %select_chip22, align 8, !dbg !3013
  br label %if.end23, !dbg !3010

if.end23:                                         ; preds = %if.then20, %if.end17
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3014
  %legacy24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 5, !dbg !3016
  %read_byte = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy24, i32 0, i32 3, !dbg !3017
  %16 = load i8 (%struct.nand_chip*)*, i8 (%struct.nand_chip*)** %read_byte, align 8, !dbg !3017
  %tobool25 = icmp ne i8 (%struct.nand_chip*)* %16, null, !dbg !3014
  br i1 %tobool25, label %lor.lhs.false, label %if.then30, !dbg !3018

lor.lhs.false:                                    ; preds = %if.end23
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3019
  %legacy26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 5, !dbg !3020
  %read_byte27 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy26, i32 0, i32 3, !dbg !3021
  %18 = load i8 (%struct.nand_chip*)*, i8 (%struct.nand_chip*)** %read_byte27, align 8, !dbg !3021
  %cmp28 = icmp eq i8 (%struct.nand_chip*)* %18, @nand_read_byte, !dbg !3022
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !3023

if.then30:                                        ; preds = %lor.lhs.false, %if.end23
  %19 = load i32, i32* %busw, align 4, !dbg !3024
  %tobool31 = icmp ne i32 %19, 0, !dbg !3024
  %20 = zext i1 %tobool31 to i64, !dbg !3024
  %cond = select i1 %tobool31, i8 (%struct.nand_chip*)* @nand_read_byte16, i8 (%struct.nand_chip*)* @nand_read_byte, !dbg !3024
  %21 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3025
  %legacy32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 5, !dbg !3026
  %read_byte33 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy32, i32 0, i32 3, !dbg !3027
  store i8 (%struct.nand_chip*)* %cond, i8 (%struct.nand_chip*)** %read_byte33, align 8, !dbg !3028
  br label %if.end34, !dbg !3025

if.end34:                                         ; preds = %if.then30, %lor.lhs.false
  %22 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3029
  %legacy35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 5, !dbg !3031
  %write_buf = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy35, i32 0, i32 5, !dbg !3032
  %23 = load void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)** %write_buf, align 8, !dbg !3032
  %tobool36 = icmp ne void (%struct.nand_chip*, i8*, i32)* %23, null, !dbg !3029
  br i1 %tobool36, label %lor.lhs.false37, label %if.then42, !dbg !3033

lor.lhs.false37:                                  ; preds = %if.end34
  %24 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3034
  %legacy38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 5, !dbg !3035
  %write_buf39 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy38, i32 0, i32 5, !dbg !3036
  %25 = load void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)** %write_buf39, align 8, !dbg !3036
  %cmp40 = icmp eq void (%struct.nand_chip*, i8*, i32)* %25, @nand_write_buf, !dbg !3037
  br i1 %cmp40, label %if.then42, label %if.end47, !dbg !3038

if.then42:                                        ; preds = %lor.lhs.false37, %if.end34
  %26 = load i32, i32* %busw, align 4, !dbg !3039
  %tobool43 = icmp ne i32 %26, 0, !dbg !3039
  %27 = zext i1 %tobool43 to i64, !dbg !3039
  %cond44 = select i1 %tobool43, void (%struct.nand_chip*, i8*, i32)* @nand_write_buf16, void (%struct.nand_chip*, i8*, i32)* @nand_write_buf, !dbg !3039
  %28 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3040
  %legacy45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 5, !dbg !3041
  %write_buf46 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy45, i32 0, i32 5, !dbg !3042
  store void (%struct.nand_chip*, i8*, i32)* %cond44, void (%struct.nand_chip*, i8*, i32)** %write_buf46, align 8, !dbg !3043
  br label %if.end47, !dbg !3040

if.end47:                                         ; preds = %if.then42, %lor.lhs.false37
  %29 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3044
  %legacy48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 5, !dbg !3046
  %write_byte = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy48, i32 0, i32 4, !dbg !3047
  %30 = load void (%struct.nand_chip*, i8)*, void (%struct.nand_chip*, i8)** %write_byte, align 8, !dbg !3047
  %tobool49 = icmp ne void (%struct.nand_chip*, i8)* %30, null, !dbg !3044
  br i1 %tobool49, label %lor.lhs.false50, label %if.then55, !dbg !3048

lor.lhs.false50:                                  ; preds = %if.end47
  %31 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3049
  %legacy51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 5, !dbg !3050
  %write_byte52 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy51, i32 0, i32 4, !dbg !3051
  %32 = load void (%struct.nand_chip*, i8)*, void (%struct.nand_chip*, i8)** %write_byte52, align 8, !dbg !3051
  %cmp53 = icmp eq void (%struct.nand_chip*, i8)* %32, @nand_write_byte, !dbg !3052
  br i1 %cmp53, label %if.then55, label %if.end60, !dbg !3053

if.then55:                                        ; preds = %lor.lhs.false50, %if.end47
  %33 = load i32, i32* %busw, align 4, !dbg !3054
  %tobool56 = icmp ne i32 %33, 0, !dbg !3054
  %34 = zext i1 %tobool56 to i64, !dbg !3054
  %cond57 = select i1 %tobool56, void (%struct.nand_chip*, i8)* @nand_write_byte16, void (%struct.nand_chip*, i8)* @nand_write_byte, !dbg !3054
  %35 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3055
  %legacy58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 5, !dbg !3056
  %write_byte59 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy58, i32 0, i32 4, !dbg !3057
  store void (%struct.nand_chip*, i8)* %cond57, void (%struct.nand_chip*, i8)** %write_byte59, align 8, !dbg !3058
  br label %if.end60, !dbg !3055

if.end60:                                         ; preds = %if.then55, %lor.lhs.false50
  %36 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3059
  %legacy61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 5, !dbg !3061
  %read_buf = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy61, i32 0, i32 6, !dbg !3062
  %37 = load void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)** %read_buf, align 8, !dbg !3062
  %tobool62 = icmp ne void (%struct.nand_chip*, i8*, i32)* %37, null, !dbg !3059
  br i1 %tobool62, label %lor.lhs.false63, label %if.then68, !dbg !3063

lor.lhs.false63:                                  ; preds = %if.end60
  %38 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3064
  %legacy64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 5, !dbg !3065
  %read_buf65 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy64, i32 0, i32 6, !dbg !3066
  %39 = load void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)** %read_buf65, align 8, !dbg !3066
  %cmp66 = icmp eq void (%struct.nand_chip*, i8*, i32)* %39, @nand_read_buf, !dbg !3067
  br i1 %cmp66, label %if.then68, label %if.end73, !dbg !3068

if.then68:                                        ; preds = %lor.lhs.false63, %if.end60
  %40 = load i32, i32* %busw, align 4, !dbg !3069
  %tobool69 = icmp ne i32 %40, 0, !dbg !3069
  %41 = zext i1 %tobool69 to i64, !dbg !3069
  %cond70 = select i1 %tobool69, void (%struct.nand_chip*, i8*, i32)* @nand_read_buf16, void (%struct.nand_chip*, i8*, i32)* @nand_read_buf, !dbg !3069
  %42 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3070
  %legacy71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 5, !dbg !3071
  %read_buf72 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy71, i32 0, i32 6, !dbg !3072
  store void (%struct.nand_chip*, i8*, i32)* %cond70, void (%struct.nand_chip*, i8*, i32)** %read_buf72, align 8, !dbg !3073
  br label %if.end73, !dbg !3070

if.end73:                                         ; preds = %if.then, %if.then68, %lor.lhs.false63
  ret void, !dbg !3074
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !3075 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3078, metadata !DIExpression()), !dbg !3079
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3080
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !3082
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3082
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !3080
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3083

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3084
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !3085
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !3085
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !3086
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3086
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !3084
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3087

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3088
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !3089
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !3089
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !3090
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !3090
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !3091
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3091
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !3088
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3092

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !3093
  br label %return, !dbg !3093

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !3094
  br label %return, !dbg !3094

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3095
  ret i1 %9, !dbg !3095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_command(%struct.nand_chip* %chip, i32 %command, i32 %column, i32 %page_addr) #0 !dbg !3096 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %command.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %page_addr.addr = alloca i32, align 4
  %mtd = alloca %struct.mtd_info*, align 8
  %ctrl = alloca i32, align 4
  %readcmd = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3097, metadata !DIExpression()), !dbg !3098
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !3099, metadata !DIExpression()), !dbg !3100
  store i32 %column, i32* %column.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %column.addr, metadata !3101, metadata !DIExpression()), !dbg !3102
  store i32 %page_addr, i32* %page_addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page_addr.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3105, metadata !DIExpression()), !dbg !3106
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3107
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #6, !dbg !3108
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3106
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !3109, metadata !DIExpression()), !dbg !3110
  store i32 131, i32* %ctrl, align 4, !dbg !3110
  %1 = load i32, i32* %command.addr, align 4, !dbg !3111
  %cmp = icmp eq i32 %1, 128, !dbg !3113
  br i1 %cmp, label %if.then, label %if.end9, !dbg !3114

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %readcmd, metadata !3115, metadata !DIExpression()), !dbg !3117
  %2 = load i32, i32* %column.addr, align 4, !dbg !3118
  %3 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3120
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 4, !dbg !3121
  %4 = load i32, i32* %writesize, align 4, !dbg !3121
  %cmp1 = icmp uge i32 %2, %4, !dbg !3122
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3123

if.then2:                                         ; preds = %if.then
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3124
  %writesize3 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 4, !dbg !3126
  %6 = load i32, i32* %writesize3, align 4, !dbg !3126
  %7 = load i32, i32* %column.addr, align 4, !dbg !3127
  %sub = sub i32 %7, %6, !dbg !3127
  store i32 %sub, i32* %column.addr, align 4, !dbg !3127
  store i32 80, i32* %readcmd, align 4, !dbg !3128
  br label %if.end8, !dbg !3129

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %column.addr, align 4, !dbg !3130
  %cmp4 = icmp slt i32 %8, 256, !dbg !3132
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !3133

if.then5:                                         ; preds = %if.else
  store i32 0, i32* %readcmd, align 4, !dbg !3134
  br label %if.end, !dbg !3136

if.else6:                                         ; preds = %if.else
  %9 = load i32, i32* %column.addr, align 4, !dbg !3137
  %sub7 = sub i32 %9, 256, !dbg !3137
  store i32 %sub7, i32* %column.addr, align 4, !dbg !3137
  store i32 1, i32* %readcmd, align 4, !dbg !3139
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3140
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 5, !dbg !3141
  %cmd_ctrl = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 7, !dbg !3142
  %11 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl, align 8, !dbg !3142
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3143
  %13 = load i32, i32* %readcmd, align 4, !dbg !3144
  %14 = load i32, i32* %ctrl, align 4, !dbg !3145
  call void %11(%struct.nand_chip* %12, i32 %13, i32 %14) #6, !dbg !3140
  %15 = load i32, i32* %ctrl, align 4, !dbg !3146
  %and = and i32 %15, -129, !dbg !3146
  store i32 %and, i32* %ctrl, align 4, !dbg !3146
  br label %if.end9, !dbg !3147

if.end9:                                          ; preds = %if.end8, %entry
  %16 = load i32, i32* %command.addr, align 4, !dbg !3148
  %cmp10 = icmp ne i32 %16, -1, !dbg !3150
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !3151

if.then11:                                        ; preds = %if.end9
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3152
  %legacy12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 5, !dbg !3153
  %cmd_ctrl13 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy12, i32 0, i32 7, !dbg !3154
  %18 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl13, align 8, !dbg !3154
  %19 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3155
  %20 = load i32, i32* %command.addr, align 4, !dbg !3156
  %21 = load i32, i32* %ctrl, align 4, !dbg !3157
  call void %18(%struct.nand_chip* %19, i32 %20, i32 %21) #6, !dbg !3152
  br label %if.end14, !dbg !3152

if.end14:                                         ; preds = %if.then11, %if.end9
  store i32 133, i32* %ctrl, align 4, !dbg !3158
  %22 = load i32, i32* %column.addr, align 4, !dbg !3159
  %cmp15 = icmp ne i32 %22, -1, !dbg !3161
  br i1 %cmp15, label %if.then16, label %if.end25, !dbg !3162

if.then16:                                        ; preds = %if.end14
  %23 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3163
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 6, !dbg !3166
  %24 = load i32, i32* %options, align 8, !dbg !3166
  %conv = zext i32 %24 to i64, !dbg !3163
  %and17 = and i64 %conv, 2, !dbg !3167
  %tobool = icmp ne i64 %and17, 0, !dbg !3167
  br i1 %tobool, label %land.lhs.true, label %if.end21, !dbg !3168

land.lhs.true:                                    ; preds = %if.then16
  %25 = load i32, i32* %command.addr, align 4, !dbg !3169
  %call18 = call i32 @nand_opcode_8bits(i32 %25) #6, !dbg !3170
  %tobool19 = icmp ne i32 %call18, 0, !dbg !3170
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3171

if.then20:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %column.addr, align 4, !dbg !3172
  %shr = ashr i32 %26, 1, !dbg !3172
  store i32 %shr, i32* %column.addr, align 4, !dbg !3172
  br label %if.end21, !dbg !3173

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %if.then16
  %27 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3174
  %legacy22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 5, !dbg !3175
  %cmd_ctrl23 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy22, i32 0, i32 7, !dbg !3176
  %28 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl23, align 8, !dbg !3176
  %29 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3177
  %30 = load i32, i32* %column.addr, align 4, !dbg !3178
  %31 = load i32, i32* %ctrl, align 4, !dbg !3179
  call void %28(%struct.nand_chip* %29, i32 %30, i32 %31) #6, !dbg !3174
  %32 = load i32, i32* %ctrl, align 4, !dbg !3180
  %and24 = and i32 %32, -129, !dbg !3180
  store i32 %and24, i32* %ctrl, align 4, !dbg !3180
  br label %if.end25, !dbg !3181

if.end25:                                         ; preds = %if.end21, %if.end14
  %33 = load i32, i32* %page_addr.addr, align 4, !dbg !3182
  %cmp26 = icmp ne i32 %33, -1, !dbg !3184
  br i1 %cmp26, label %if.then28, label %if.end44, !dbg !3185

if.then28:                                        ; preds = %if.end25
  %34 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3186
  %legacy29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 5, !dbg !3188
  %cmd_ctrl30 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy29, i32 0, i32 7, !dbg !3189
  %35 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl30, align 8, !dbg !3189
  %36 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3190
  %37 = load i32, i32* %page_addr.addr, align 4, !dbg !3191
  %38 = load i32, i32* %ctrl, align 4, !dbg !3192
  call void %35(%struct.nand_chip* %36, i32 %37, i32 %38) #6, !dbg !3186
  %39 = load i32, i32* %ctrl, align 4, !dbg !3193
  %and31 = and i32 %39, -129, !dbg !3193
  store i32 %and31, i32* %ctrl, align 4, !dbg !3193
  %40 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3194
  %legacy32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 5, !dbg !3195
  %cmd_ctrl33 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy32, i32 0, i32 7, !dbg !3196
  %41 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl33, align 8, !dbg !3196
  %42 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3197
  %43 = load i32, i32* %page_addr.addr, align 4, !dbg !3198
  %shr34 = ashr i32 %43, 8, !dbg !3199
  %44 = load i32, i32* %ctrl, align 4, !dbg !3200
  call void %41(%struct.nand_chip* %42, i32 %shr34, i32 %44) #6, !dbg !3194
  %45 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3201
  %options35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 6, !dbg !3203
  %46 = load i32, i32* %options35, align 8, !dbg !3203
  %conv36 = zext i32 %46 to i64, !dbg !3201
  %and37 = and i64 %conv36, 16384, !dbg !3204
  %tobool38 = icmp ne i64 %and37, 0, !dbg !3204
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !3205

if.then39:                                        ; preds = %if.then28
  %47 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3206
  %legacy40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 5, !dbg !3207
  %cmd_ctrl41 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy40, i32 0, i32 7, !dbg !3208
  %48 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl41, align 8, !dbg !3208
  %49 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3209
  %50 = load i32, i32* %page_addr.addr, align 4, !dbg !3210
  %shr42 = ashr i32 %50, 16, !dbg !3211
  %51 = load i32, i32* %ctrl, align 4, !dbg !3212
  call void %48(%struct.nand_chip* %49, i32 %shr42, i32 %51) #6, !dbg !3206
  br label %if.end43, !dbg !3206

if.end43:                                         ; preds = %if.then39, %if.then28
  br label %if.end44, !dbg !3213

if.end44:                                         ; preds = %if.end43, %if.end25
  %52 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3214
  %legacy45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 5, !dbg !3215
  %cmd_ctrl46 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy45, i32 0, i32 7, !dbg !3216
  %53 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl46, align 8, !dbg !3216
  %54 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3217
  call void %53(%struct.nand_chip* %54, i32 -1, i32 129) #6, !dbg !3214
  %55 = load i32, i32* %command.addr, align 4, !dbg !3218
  switch i32 %55, label %sw.default [
    i32 -1, label %sw.bb
    i32 16, label %sw.bb
    i32 96, label %sw.bb
    i32 208, label %sw.bb
    i32 128, label %sw.bb
    i32 112, label %sw.bb
    i32 144, label %sw.bb
    i32 239, label %sw.bb
    i32 255, label %sw.bb47
    i32 0, label %sw.bb73
  ], !dbg !3219

sw.bb:                                            ; preds = %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44, %if.end44
  br label %return, !dbg !3220

sw.bb47:                                          ; preds = %if.end44
  %56 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3222
  %legacy48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 5, !dbg !3224
  %dev_ready = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy48, i32 0, i32 9, !dbg !3225
  %57 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready, align 8, !dbg !3225
  %tobool49 = icmp ne i32 (%struct.nand_chip*)* %57, null, !dbg !3222
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !3226

if.then50:                                        ; preds = %sw.bb47
  br label %sw.epilog, !dbg !3227

if.end51:                                         ; preds = %sw.bb47
  %58 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3228
  %legacy52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 5, !dbg !3228
  %chip_delay = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy52, i32 0, i32 15, !dbg !3228
  %59 = load i32, i32* %chip_delay, align 8, !dbg !3228
  %60 = call i1 @llvm.is.constant.i32(i32 %59), !dbg !3228
  br i1 %60, label %if.then53, label %if.else64, !dbg !3231

if.then53:                                        ; preds = %if.end51
  %61 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3232
  %legacy54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 5, !dbg !3232
  %chip_delay55 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy54, i32 0, i32 15, !dbg !3232
  %62 = load i32, i32* %chip_delay55, align 8, !dbg !3232
  %div = sdiv i32 %62, 20000, !dbg !3232
  %cmp56 = icmp sge i32 %div, 1, !dbg !3232
  br i1 %cmp56, label %if.then58, label %if.else59, !dbg !3235

if.then58:                                        ; preds = %if.then53
  call void @__bad_udelay() #6, !dbg !3232
  br label %if.end63, !dbg !3232

if.else59:                                        ; preds = %if.then53
  %63 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3232
  %legacy60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 5, !dbg !3232
  %chip_delay61 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy60, i32 0, i32 15, !dbg !3232
  %64 = load i32, i32* %chip_delay61, align 8, !dbg !3232
  %conv62 = sext i32 %64 to i64, !dbg !3232
  %mul = mul i64 %conv62, 4295, !dbg !3232
  call void @__const_udelay(i64 %mul) #6, !dbg !3232
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.then58
  br label %if.end68, !dbg !3235

if.else64:                                        ; preds = %if.end51
  %65 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3236
  %legacy65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 5, !dbg !3236
  %chip_delay66 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy65, i32 0, i32 15, !dbg !3236
  %66 = load i32, i32* %chip_delay66, align 8, !dbg !3236
  %conv67 = sext i32 %66 to i64, !dbg !3236
  call void @__udelay(i64 %conv67) #6, !dbg !3236
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.end63
  %67 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3238
  %legacy69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 5, !dbg !3239
  %cmd_ctrl70 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy69, i32 0, i32 7, !dbg !3240
  %68 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl70, align 8, !dbg !3240
  %69 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3241
  call void %68(%struct.nand_chip* %69, i32 112, i32 131) #6, !dbg !3238
  %70 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3242
  %legacy71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 5, !dbg !3243
  %cmd_ctrl72 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy71, i32 0, i32 7, !dbg !3244
  %71 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl72, align 8, !dbg !3244
  %72 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3245
  call void %71(%struct.nand_chip* %72, i32 -1, i32 129) #6, !dbg !3242
  %73 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3246
  call void @nand_wait_status_ready(%struct.nand_chip* %73, i64 250) #6, !dbg !3247
  br label %return, !dbg !3248

sw.bb73:                                          ; preds = %if.end44
  %74 = load i32, i32* %column.addr, align 4, !dbg !3249
  %cmp74 = icmp eq i32 %74, -1, !dbg !3251
  br i1 %cmp74, label %land.lhs.true76, label %if.end80, !dbg !3252

land.lhs.true76:                                  ; preds = %sw.bb73
  %75 = load i32, i32* %page_addr.addr, align 4, !dbg !3253
  %cmp77 = icmp eq i32 %75, -1, !dbg !3254
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !3255

if.then79:                                        ; preds = %land.lhs.true76
  br label %return, !dbg !3256

if.end80:                                         ; preds = %land.lhs.true76, %sw.bb73
  br label %sw.default, !dbg !3257

sw.default:                                       ; preds = %if.end44, %if.end80
  %76 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3258
  %legacy81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 5, !dbg !3260
  %dev_ready82 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy81, i32 0, i32 9, !dbg !3261
  %77 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready82, align 8, !dbg !3261
  %tobool83 = icmp ne i32 (%struct.nand_chip*)* %77, null, !dbg !3258
  br i1 %tobool83, label %if.end105, label %if.then84, !dbg !3262

if.then84:                                        ; preds = %sw.default
  %78 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3263
  %legacy85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 5, !dbg !3263
  %chip_delay86 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy85, i32 0, i32 15, !dbg !3263
  %79 = load i32, i32* %chip_delay86, align 8, !dbg !3263
  %80 = call i1 @llvm.is.constant.i32(i32 %79), !dbg !3263
  br i1 %80, label %if.then87, label %if.else100, !dbg !3267

if.then87:                                        ; preds = %if.then84
  %81 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3268
  %legacy88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 5, !dbg !3268
  %chip_delay89 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy88, i32 0, i32 15, !dbg !3268
  %82 = load i32, i32* %chip_delay89, align 8, !dbg !3268
  %div90 = sdiv i32 %82, 20000, !dbg !3268
  %cmp91 = icmp sge i32 %div90, 1, !dbg !3268
  br i1 %cmp91, label %if.then93, label %if.else94, !dbg !3271

if.then93:                                        ; preds = %if.then87
  call void @__bad_udelay() #6, !dbg !3268
  br label %if.end99, !dbg !3268

if.else94:                                        ; preds = %if.then87
  %83 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3268
  %legacy95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 5, !dbg !3268
  %chip_delay96 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy95, i32 0, i32 15, !dbg !3268
  %84 = load i32, i32* %chip_delay96, align 8, !dbg !3268
  %conv97 = sext i32 %84 to i64, !dbg !3268
  %mul98 = mul i64 %conv97, 4295, !dbg !3268
  call void @__const_udelay(i64 %mul98) #6, !dbg !3268
  br label %if.end99

if.end99:                                         ; preds = %if.else94, %if.then93
  br label %if.end104, !dbg !3271

if.else100:                                       ; preds = %if.then84
  %85 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3272
  %legacy101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 5, !dbg !3272
  %chip_delay102 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy101, i32 0, i32 15, !dbg !3272
  %86 = load i32, i32* %chip_delay102, align 8, !dbg !3272
  %conv103 = sext i32 %86 to i64, !dbg !3272
  call void @__udelay(i64 %conv103) #6, !dbg !3272
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.end99
  br label %return, !dbg !3274

if.end105:                                        ; preds = %sw.default
  br label %sw.epilog, !dbg !3275

sw.epilog:                                        ; preds = %if.end105, %if.then50
  call void @__const_udelay(i64 500) #6, !dbg !3276
  %87 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3281
  call void @nand_wait_ready(%struct.nand_chip* %87) #6, !dbg !3282
  br label %return, !dbg !3283

return:                                           ; preds = %sw.epilog, %if.end104, %if.then79, %if.end68, %sw.bb
  ret void, !dbg !3283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_wait(%struct.nand_chip* %chip) #0 !dbg !3284 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2828, metadata !DIExpression()), !dbg !3285
  %pfo_val__.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pfo_val__.i, metadata !2836, metadata !DIExpression()), !dbg !3289
  %tmp.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %timeo = alloca i64, align 8
  %status = alloca i8, align 1
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.declare(metadata i64* %timeo, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i64 400, i64* %timeo, align 8, !dbg !3294
  call void @llvm.dbg.declare(metadata i8* %status, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @__const_udelay(i64 500) #6, !dbg !3299
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3304
  %call = call i32 @nand_status_op(%struct.nand_chip* %0, i8* null) #6, !dbg !3305
  store i32 %call, i32* %ret, align 4, !dbg !3306
  %1 = load i32, i32* %ret, align 4, !dbg !3307
  %tobool = icmp ne i32 %1, 0, !dbg !3307
  br i1 %tobool, label %if.then, label %if.end, !dbg !3309

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3310
  store i32 %2, i32* %retval, align 4, !dbg !3311
  br label %return, !dbg !3311

if.end:                                           ; preds = %entry
  %3 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count) #5, !dbg !3289, !srcloc !2849
  store i32 %3, i32* %pfo_val__.i, align 4, !dbg !3289
  %4 = load i32, i32* %pfo_val__.i, align 4, !dbg !3289
  %conv.i = zext i32 %4 to i64, !dbg !3289
  store i32 %4, i32* %tmp.i, align 4, !dbg !3289
  %5 = load i32, i32* %tmp.i, align 4, !dbg !3289
  %and.i = and i32 %5, 2147483647, !dbg !3312
  %conv = sext i32 %and.i to i64, !dbg !3313
  %and = and i64 %conv, 16776960, !dbg !3313
  %tobool2 = icmp ne i64 %and, 0, !dbg !3313
  br i1 %tobool2, label %if.then4, label %lor.lhs.false, !dbg !3314

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* @oops_in_progress, align 4, !dbg !3315
  %tobool3 = icmp ne i32 %6, 0, !dbg !3315
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !3316

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3317
  %8 = load i64, i64* %timeo, align 8, !dbg !3318
  call void @panic_nand_wait(%struct.nand_chip* %7, i64 %8) #6, !dbg !3319
  br label %if.end28, !dbg !3319

if.else:                                          ; preds = %lor.lhs.false
  %9 = load volatile i64, i64* @jiffies, align 8, !dbg !3320
  %10 = load i64, i64* %timeo, align 8, !dbg !3321
  %conv5 = trunc i64 %10 to i32, !dbg !3321
  store i32 %conv5, i32* %m.addr.i, align 4
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !3322
  %12 = call i1 @llvm.is.constant.i32(i32 %11) #7, !dbg !3323
  br i1 %12, label %if.then.i, label %if.else.i, !dbg !3324

if.then.i:                                        ; preds = %if.else
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !3325
  %cmp.i = icmp slt i32 %13, 0, !dbg !3326
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3327

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3328
  br label %msecs_to_jiffies.exit, !dbg !3328

if.end.i:                                         ; preds = %if.then.i
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !3329
  %call.i = call i64 @_msecs_to_jiffies(i32 %14) #8, !dbg !3330
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3331
  br label %msecs_to_jiffies.exit, !dbg !3331

if.else.i:                                        ; preds = %if.else
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !3332
  %call2.i = call i64 @__msecs_to_jiffies(i32 %15) #8, !dbg !3333
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3334
  br label %msecs_to_jiffies.exit, !dbg !3334

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %16 = load i64, i64* %retval.i, align 8, !dbg !3335
  %add = add i64 %9, %16, !dbg !3336
  store i64 %add, i64* %timeo, align 8, !dbg !3337
  br label %do.body, !dbg !3338

do.body:                                          ; preds = %do.cond, %msecs_to_jiffies.exit
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3339
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 5, !dbg !3342
  %dev_ready = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 9, !dbg !3343
  %18 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready, align 8, !dbg !3343
  %tobool7 = icmp ne i32 (%struct.nand_chip*)* %18, null, !dbg !3339
  br i1 %tobool7, label %if.then8, label %if.else15, !dbg !3344

if.then8:                                         ; preds = %do.body
  %19 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3345
  %legacy9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 5, !dbg !3348
  %dev_ready10 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy9, i32 0, i32 9, !dbg !3349
  %20 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready10, align 8, !dbg !3349
  %21 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3350
  %call11 = call i32 %20(%struct.nand_chip* %21) #6, !dbg !3345
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3345
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3351

if.then13:                                        ; preds = %if.then8
  br label %do.end, !dbg !3352

if.end14:                                         ; preds = %if.then8
  br label %if.end25, !dbg !3353

if.else15:                                        ; preds = %do.body
  %22 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3354
  %call16 = call i32 @nand_read_data_op(%struct.nand_chip* %22, i8* %status, i32 1, i1 zeroext true, i1 zeroext false) #6, !dbg !3356
  store i32 %call16, i32* %ret, align 4, !dbg !3357
  %23 = load i32, i32* %ret, align 4, !dbg !3358
  %tobool17 = icmp ne i32 %23, 0, !dbg !3358
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !3360

if.then18:                                        ; preds = %if.else15
  %24 = load i32, i32* %ret, align 4, !dbg !3361
  store i32 %24, i32* %retval, align 4, !dbg !3362
  br label %return, !dbg !3362

if.end19:                                         ; preds = %if.else15
  %25 = load i8, i8* %status, align 1, !dbg !3363
  %conv20 = zext i8 %25 to i32, !dbg !3363
  %and21 = and i32 %conv20, 64, !dbg !3365
  %tobool22 = icmp ne i32 %and21, 0, !dbg !3365
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3366

if.then23:                                        ; preds = %if.end19
  br label %do.end, !dbg !3367

if.end24:                                         ; preds = %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  call void @___might_sleep(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 567, i32 0) #6, !dbg !3368
  %call26 = call i32 @_cond_resched() #6, !dbg !3368
  store i32 %call26, i32* %tmp, align 4, !dbg !3368
  %26 = load i32, i32* %tmp, align 4, !dbg !3368
  br label %do.cond, !dbg !3370

do.cond:                                          ; preds = %if.end25
  %27 = load volatile i64, i64* @jiffies, align 8, !dbg !3371
  %28 = load i64, i64* %timeo, align 8, !dbg !3371
  %sub = sub i64 %27, %28, !dbg !3371
  %cmp = icmp slt i64 %sub, 0, !dbg !3371
  br i1 %cmp, label %do.body, label %do.end, !dbg !3370, !llvm.loop !3372

do.end:                                           ; preds = %do.cond, %if.then23, %if.then13
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3374
  %call29 = call i32 @nand_read_data_op(%struct.nand_chip* %29, i8* %status, i32 1, i1 zeroext true, i1 zeroext false) #6, !dbg !3375
  store i32 %call29, i32* %ret, align 4, !dbg !3376
  %30 = load i32, i32* %ret, align 4, !dbg !3377
  %tobool30 = icmp ne i32 %30, 0, !dbg !3377
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3379

if.then31:                                        ; preds = %if.end28
  %31 = load i32, i32* %ret, align 4, !dbg !3380
  store i32 %31, i32* %retval, align 4, !dbg !3381
  br label %return, !dbg !3381

if.end32:                                         ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3382, metadata !DIExpression()), !dbg !3384
  %32 = load i8, i8* %status, align 1, !dbg !3384
  %conv33 = zext i8 %32 to i32, !dbg !3384
  %and34 = and i32 %conv33, 64, !dbg !3384
  %tobool35 = icmp ne i32 %and34, 0, !dbg !3384
  %lnot = xor i1 %tobool35, true, !dbg !3384
  %lnot36 = xor i1 %lnot, true, !dbg !3384
  %lnot37 = xor i1 %lnot36, true, !dbg !3384
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !3384
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3384
  %33 = load i32, i32* %__ret_warn_on, align 4, !dbg !3385
  %tobool38 = icmp ne i32 %33, 0, !dbg !3385
  %lnot39 = xor i1 %tobool38, true, !dbg !3385
  %lnot41 = xor i1 %lnot39, true, !dbg !3385
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !3385
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !3385
  %tobool44 = icmp ne i64 %conv43, 0, !dbg !3385
  br i1 %tobool44, label %if.then45, label %if.end58, !dbg !3384

if.then45:                                        ; preds = %if.end32
  br label %do.body46, !dbg !3385

do.body46:                                        ; preds = %if.then45
  br label %do.body47, !dbg !3387

do.body47:                                        ; preds = %do.body46
  br label %do.end49, !dbg !3389

do.end49:                                         ; preds = %do.body47
  br label %do.body50, !dbg !3387

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 576, i32 2305, i64 12) #7, !dbg !3391, !srcloc !3393
  br label %do.end52, !dbg !3391

do.end52:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #7, !dbg !3394, !srcloc !3396
  br label %do.body53, !dbg !3387

do.body53:                                        ; preds = %do.end52
  br label %do.end55, !dbg !3397

do.end55:                                         ; preds = %do.body53
  br label %do.end57, !dbg !3387

do.end57:                                         ; preds = %do.end55
  br label %if.end58, !dbg !3387

if.end58:                                         ; preds = %do.end57, %if.end32
  %34 = load i32, i32* %__ret_warn_on, align 4, !dbg !3384
  %tobool60 = icmp ne i32 %34, 0, !dbg !3384
  %lnot61 = xor i1 %tobool60, true, !dbg !3384
  %lnot63 = xor i1 %lnot61, true, !dbg !3384
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !3384
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !3384
  store i64 %conv65, i64* %tmp59, align 8, !dbg !3385
  %35 = load i64, i64* %tmp59, align 8, !dbg !3384
  %36 = load i8, i8* %status, align 1, !dbg !3399
  %conv66 = zext i8 %36 to i32, !dbg !3399
  store i32 %conv66, i32* %retval, align 4, !dbg !3400
  br label %return, !dbg !3400

return:                                           ; preds = %if.end58, %if.then31, %if.then18, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !3401
  ret i32 %37, !dbg !3401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_select_chip(%struct.nand_chip* %chip, i32 %chipnr) #0 !dbg !3402 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %chipnr.addr = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3403, metadata !DIExpression()), !dbg !3404
  store i32 %chipnr, i32* %chipnr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipnr.addr, metadata !3405, metadata !DIExpression()), !dbg !3406
  %0 = load i32, i32* %chipnr.addr, align 4, !dbg !3407
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !3408

sw.bb:                                            ; preds = %entry
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3409
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 5, !dbg !3411
  %cmd_ctrl = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 7, !dbg !3412
  %2 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl, align 8, !dbg !3412
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3413
  call void %2(%struct.nand_chip* %3, i32 -1, i32 128) #6, !dbg !3409
  br label %sw.epilog, !dbg !3414

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog, !dbg !3415

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !3416

do.body:                                          ; preds = %sw.default
  br label %do.body2, !dbg !3417

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3419

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3417

do.body3:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 63, i32 0, i64 12) #7, !dbg !3421, !srcloc !3423
  br label %do.end4, !dbg !3421

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !3417

do.body5:                                         ; preds = %do.end4
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 170) #7, !dbg !3424, !srcloc !3427
  unreachable, !dbg !3428

do.end6:                                          ; No predecessors!
  br label %do.end7, !dbg !3417

do.end7:                                          ; preds = %do.end6
  br label %sw.epilog, !dbg !3429

sw.epilog:                                        ; preds = %do.end7, %sw.bb1, %sw.bb
  ret void, !dbg !3430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @nand_read_byte(%struct.nand_chip* %chip) #0 !dbg !3431 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3434, metadata !DIExpression()), !dbg !3435
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3436
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 5, !dbg !3437
  %IO_ADDR_R = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 0, !dbg !3438
  %1 = load i8*, i8** %IO_ADDR_R, align 8, !dbg !3438
  %call = call zeroext i8 @readb(i8* %1) #6, !dbg !3439
  ret i8 %call, !dbg !3440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @nand_read_byte16(%struct.nand_chip* %chip) #0 !dbg !3441 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3444
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 5, !dbg !3444
  %IO_ADDR_R = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 0, !dbg !3444
  %1 = load i8*, i8** %IO_ADDR_R, align 8, !dbg !3444
  %call = call zeroext i16 @readw(i8* %1) #6, !dbg !3444
  %conv = trunc i16 %call to i8, !dbg !3445
  ret i8 %conv, !dbg !3446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_write_buf(%struct.nand_chip* %chip, i8* %buf, i32 %len) #0 !dbg !3447 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3450, metadata !DIExpression()), !dbg !3451
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3452, metadata !DIExpression()), !dbg !3453
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3454, metadata !DIExpression()), !dbg !3455
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3456
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 5, !dbg !3457
  %IO_ADDR_W = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 1, !dbg !3458
  %1 = load i8*, i8** %IO_ADDR_W, align 8, !dbg !3458
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3459
  %3 = load i32, i32* %len.addr, align 4, !dbg !3460
  %conv = sext i32 %3 to i64, !dbg !3460
  call void @iowrite8_rep(i8* %1, i8* %2, i64 %conv) #6, !dbg !3461
  ret void, !dbg !3462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_write_buf16(%struct.nand_chip* %chip, i8* %buf, i32 %len) #0 !dbg !3463 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %p = alloca i16*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3464, metadata !DIExpression()), !dbg !3465
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3466, metadata !DIExpression()), !dbg !3467
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.declare(metadata i16** %p, metadata !3470, metadata !DIExpression()), !dbg !3471
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3472
  %1 = bitcast i8* %0 to i16*, !dbg !3473
  store i16* %1, i16** %p, align 8, !dbg !3471
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3474
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 5, !dbg !3475
  %IO_ADDR_W = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 1, !dbg !3476
  %3 = load i8*, i8** %IO_ADDR_W, align 8, !dbg !3476
  %4 = load i16*, i16** %p, align 8, !dbg !3477
  %5 = bitcast i16* %4 to i8*, !dbg !3477
  %6 = load i32, i32* %len.addr, align 4, !dbg !3478
  %shr = ashr i32 %6, 1, !dbg !3479
  %conv = sext i32 %shr to i64, !dbg !3478
  call void @iowrite16_rep(i8* %3, i8* %5, i64 %conv) #6, !dbg !3480
  ret void, !dbg !3481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_write_byte(%struct.nand_chip* %chip, i8 zeroext %byte) #0 !dbg !3482 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %byte.addr = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3485, metadata !DIExpression()), !dbg !3486
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !3487, metadata !DIExpression()), !dbg !3488
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3489
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 5, !dbg !3490
  %write_buf = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 5, !dbg !3491
  %1 = load void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)** %write_buf, align 8, !dbg !3491
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3492
  call void %1(%struct.nand_chip* %2, i8* %byte.addr, i32 1) #6, !dbg !3489
  ret void, !dbg !3493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_write_byte16(%struct.nand_chip* %chip, i8 zeroext %byte) #0 !dbg !3494 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %byte.addr = alloca i8, align 1
  %word = alloca i16, align 2
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3495, metadata !DIExpression()), !dbg !3496
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !3497, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.declare(metadata i16* %word, metadata !3499, metadata !DIExpression()), !dbg !3501
  %0 = load i8, i8* %byte.addr, align 1, !dbg !3502
  %conv = zext i8 %0 to i16, !dbg !3502
  store i16 %conv, i16* %word, align 2, !dbg !3501
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3503
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 5, !dbg !3504
  %write_buf = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 5, !dbg !3505
  %2 = load void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)** %write_buf, align 8, !dbg !3505
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3506
  %4 = bitcast i16* %word to i8*, !dbg !3507
  call void %2(%struct.nand_chip* %3, i8* %4, i32 2) #6, !dbg !3503
  ret void, !dbg !3508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_read_buf(%struct.nand_chip* %chip, i8* %buf, i32 %len) #0 !dbg !3509 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3514, metadata !DIExpression()), !dbg !3515
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3516, metadata !DIExpression()), !dbg !3517
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3518
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 5, !dbg !3519
  %IO_ADDR_R = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 0, !dbg !3520
  %1 = load i8*, i8** %IO_ADDR_R, align 8, !dbg !3520
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3521
  %3 = load i32, i32* %len.addr, align 4, !dbg !3522
  %conv = sext i32 %3 to i64, !dbg !3522
  call void @ioread8_rep(i8* %1, i8* %2, i64 %conv) #6, !dbg !3523
  ret void, !dbg !3524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_read_buf16(%struct.nand_chip* %chip, i8* %buf, i32 %len) #0 !dbg !3525 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %p = alloca i16*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3526, metadata !DIExpression()), !dbg !3527
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3528, metadata !DIExpression()), !dbg !3529
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata i16** %p, metadata !3532, metadata !DIExpression()), !dbg !3533
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3534
  %1 = bitcast i8* %0 to i16*, !dbg !3535
  store i16* %1, i16** %p, align 8, !dbg !3533
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3536
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 5, !dbg !3537
  %IO_ADDR_R = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 0, !dbg !3538
  %3 = load i8*, i8** %IO_ADDR_R, align 8, !dbg !3538
  %4 = load i16*, i16** %p, align 8, !dbg !3539
  %5 = bitcast i16* %4 to i8*, !dbg !3539
  %6 = load i32, i32* %len.addr, align 4, !dbg !3540
  %shr = ashr i32 %6, 1, !dbg !3541
  %conv = sext i32 %shr to i64, !dbg !3540
  call void @ioread16_rep(i8* %3, i8* %5, i64 %conv) #6, !dbg !3542
  ret void, !dbg !3543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @nand_legacy_adjust_cmdfunc(%struct.nand_chip* %chip) #0 !dbg !3544 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3547, metadata !DIExpression()), !dbg !3548
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3549
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #6, !dbg !3550
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3548
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3551
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 4, !dbg !3553
  %2 = load i32, i32* %writesize, align 4, !dbg !3553
  %cmp = icmp ugt i32 %2, 512, !dbg !3554
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3555

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3556
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 5, !dbg !3557
  %cmdfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 8, !dbg !3558
  %4 = load void (%struct.nand_chip*, i32, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc, align 8, !dbg !3558
  %cmp1 = icmp eq void (%struct.nand_chip*, i32, i32, i32)* %4, @nand_command, !dbg !3559
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3560

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3561
  %legacy2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 5, !dbg !3562
  %cmdfunc3 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy2, i32 0, i32 8, !dbg !3563
  store void (%struct.nand_chip*, i32, i32, i32)* @nand_command_lp, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc3, align 8, !dbg !3564
  br label %if.end, !dbg !3561

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !3565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3566 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3569, metadata !DIExpression()), !dbg !3570
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3571
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3572
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3573
  ret %struct.mtd_info* %mtd, !dbg !3574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_command_lp(%struct.nand_chip* %chip, i32 %command, i32 %column, i32 %page_addr) #0 !dbg !3575 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %command.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %page_addr.addr = alloca i32, align 4
  %mtd = alloca %struct.mtd_info*, align 8
  %ctrl = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3576, metadata !DIExpression()), !dbg !3577
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  store i32 %column, i32* %column.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %column.addr, metadata !3580, metadata !DIExpression()), !dbg !3581
  store i32 %page_addr, i32* %page_addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page_addr.addr, metadata !3582, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3584, metadata !DIExpression()), !dbg !3585
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3586
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #6, !dbg !3587
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3585
  %1 = load i32, i32* %command.addr, align 4, !dbg !3588
  %cmp = icmp eq i32 %1, 80, !dbg !3590
  br i1 %cmp, label %if.then, label %if.end, !dbg !3591

if.then:                                          ; preds = %entry
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3592
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 4, !dbg !3594
  %3 = load i32, i32* %writesize, align 4, !dbg !3594
  %4 = load i32, i32* %column.addr, align 4, !dbg !3595
  %add = add i32 %4, %3, !dbg !3595
  store i32 %add, i32* %column.addr, align 4, !dbg !3595
  store i32 0, i32* %command.addr, align 4, !dbg !3596
  br label %if.end, !dbg !3597

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %command.addr, align 4, !dbg !3598
  %cmp1 = icmp ne i32 %5, -1, !dbg !3600
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3601

if.then2:                                         ; preds = %if.end
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3602
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 5, !dbg !3603
  %cmd_ctrl = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 7, !dbg !3604
  %7 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl, align 8, !dbg !3604
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3605
  %9 = load i32, i32* %command.addr, align 4, !dbg !3606
  call void %7(%struct.nand_chip* %8, i32 %9, i32 131) #6, !dbg !3602
  br label %if.end3, !dbg !3602

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i32, i32* %column.addr, align 4, !dbg !3607
  %cmp4 = icmp ne i32 %10, -1, !dbg !3609
  br i1 %cmp4, label %if.then6, label %lor.lhs.false, !dbg !3610

lor.lhs.false:                                    ; preds = %if.end3
  %11 = load i32, i32* %page_addr.addr, align 4, !dbg !3611
  %cmp5 = icmp ne i32 %11, -1, !dbg !3612
  br i1 %cmp5, label %if.then6, label %if.end42, !dbg !3613

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !3614, metadata !DIExpression()), !dbg !3616
  store i32 133, i32* %ctrl, align 4, !dbg !3616
  %12 = load i32, i32* %column.addr, align 4, !dbg !3617
  %cmp7 = icmp ne i32 %12, -1, !dbg !3619
  br i1 %cmp7, label %if.then8, label %if.end23, !dbg !3620

if.then8:                                         ; preds = %if.then6
  %13 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3621
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 6, !dbg !3624
  %14 = load i32, i32* %options, align 8, !dbg !3624
  %conv = zext i32 %14 to i64, !dbg !3621
  %and = and i64 %conv, 2, !dbg !3625
  %tobool = icmp ne i64 %and, 0, !dbg !3625
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !3626

land.lhs.true:                                    ; preds = %if.then8
  %15 = load i32, i32* %command.addr, align 4, !dbg !3627
  %call9 = call i32 @nand_opcode_8bits(i32 %15) #6, !dbg !3628
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3628
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3629

if.then11:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %column.addr, align 4, !dbg !3630
  %shr = ashr i32 %16, 1, !dbg !3630
  store i32 %shr, i32* %column.addr, align 4, !dbg !3630
  br label %if.end12, !dbg !3631

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.then8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3632
  %legacy13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 5, !dbg !3633
  %cmd_ctrl14 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy13, i32 0, i32 7, !dbg !3634
  %18 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl14, align 8, !dbg !3634
  %19 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3635
  %20 = load i32, i32* %column.addr, align 4, !dbg !3636
  %21 = load i32, i32* %ctrl, align 4, !dbg !3637
  call void %18(%struct.nand_chip* %19, i32 %20, i32 %21) #6, !dbg !3632
  %22 = load i32, i32* %ctrl, align 4, !dbg !3638
  %and15 = and i32 %22, -129, !dbg !3638
  store i32 %and15, i32* %ctrl, align 4, !dbg !3638
  %23 = load i32, i32* %command.addr, align 4, !dbg !3639
  %call16 = call i32 @nand_opcode_8bits(i32 %23) #6, !dbg !3641
  %tobool17 = icmp ne i32 %call16, 0, !dbg !3641
  br i1 %tobool17, label %if.end22, label %if.then18, !dbg !3642

if.then18:                                        ; preds = %if.end12
  %24 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3643
  %legacy19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 5, !dbg !3644
  %cmd_ctrl20 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy19, i32 0, i32 7, !dbg !3645
  %25 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl20, align 8, !dbg !3645
  %26 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3646
  %27 = load i32, i32* %column.addr, align 4, !dbg !3647
  %shr21 = ashr i32 %27, 8, !dbg !3648
  %28 = load i32, i32* %ctrl, align 4, !dbg !3649
  call void %25(%struct.nand_chip* %26, i32 %shr21, i32 %28) #6, !dbg !3643
  br label %if.end22, !dbg !3643

if.end22:                                         ; preds = %if.then18, %if.end12
  br label %if.end23, !dbg !3650

if.end23:                                         ; preds = %if.end22, %if.then6
  %29 = load i32, i32* %page_addr.addr, align 4, !dbg !3651
  %cmp24 = icmp ne i32 %29, -1, !dbg !3653
  br i1 %cmp24, label %if.then26, label %if.end41, !dbg !3654

if.then26:                                        ; preds = %if.end23
  %30 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3655
  %legacy27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 5, !dbg !3657
  %cmd_ctrl28 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy27, i32 0, i32 7, !dbg !3658
  %31 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl28, align 8, !dbg !3658
  %32 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3659
  %33 = load i32, i32* %page_addr.addr, align 4, !dbg !3660
  %34 = load i32, i32* %ctrl, align 4, !dbg !3661
  call void %31(%struct.nand_chip* %32, i32 %33, i32 %34) #6, !dbg !3655
  %35 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3662
  %legacy29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 5, !dbg !3663
  %cmd_ctrl30 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy29, i32 0, i32 7, !dbg !3664
  %36 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl30, align 8, !dbg !3664
  %37 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3665
  %38 = load i32, i32* %page_addr.addr, align 4, !dbg !3666
  %shr31 = ashr i32 %38, 8, !dbg !3667
  call void %36(%struct.nand_chip* %37, i32 %shr31, i32 5) #6, !dbg !3662
  %39 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3668
  %options32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 6, !dbg !3670
  %40 = load i32, i32* %options32, align 8, !dbg !3670
  %conv33 = zext i32 %40 to i64, !dbg !3668
  %and34 = and i64 %conv33, 16384, !dbg !3671
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3671
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !3672

if.then36:                                        ; preds = %if.then26
  %41 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3673
  %legacy37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 5, !dbg !3674
  %cmd_ctrl38 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy37, i32 0, i32 7, !dbg !3675
  %42 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl38, align 8, !dbg !3675
  %43 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3676
  %44 = load i32, i32* %page_addr.addr, align 4, !dbg !3677
  %shr39 = ashr i32 %44, 16, !dbg !3678
  call void %42(%struct.nand_chip* %43, i32 %shr39, i32 5) #6, !dbg !3673
  br label %if.end40, !dbg !3673

if.end40:                                         ; preds = %if.then36, %if.then26
  br label %if.end41, !dbg !3679

if.end41:                                         ; preds = %if.end40, %if.end23
  br label %if.end42, !dbg !3680

if.end42:                                         ; preds = %if.end41, %lor.lhs.false
  %45 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3681
  %legacy43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 5, !dbg !3682
  %cmd_ctrl44 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy43, i32 0, i32 7, !dbg !3683
  %46 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl44, align 8, !dbg !3683
  %47 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3684
  call void %46(%struct.nand_chip* %47, i32 -1, i32 129) #6, !dbg !3681
  %48 = load i32, i32* %command.addr, align 4, !dbg !3685
  switch i32 %48, label %sw.default [
    i32 -1, label %sw.bb
    i32 21, label %sw.bb
    i32 16, label %sw.bb
    i32 96, label %sw.bb
    i32 208, label %sw.bb
    i32 128, label %sw.bb
    i32 112, label %sw.bb
    i32 144, label %sw.bb
    i32 239, label %sw.bb
    i32 133, label %sw.bb45
    i32 255, label %sw.bb46
    i32 5, label %sw.bb71
    i32 0, label %sw.bb76
  ], !dbg !3686

sw.bb:                                            ; preds = %if.end42, %if.end42, %if.end42, %if.end42, %if.end42, %if.end42, %if.end42, %if.end42, %if.end42
  br label %return, !dbg !3687

sw.bb45:                                          ; preds = %if.end42
  %49 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3689
  call void @nand_ccs_delay(%struct.nand_chip* %49) #6, !dbg !3690
  br label %return, !dbg !3691

sw.bb46:                                          ; preds = %if.end42
  %50 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3692
  %legacy47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 5, !dbg !3694
  %dev_ready = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy47, i32 0, i32 9, !dbg !3695
  %51 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready, align 8, !dbg !3695
  %tobool48 = icmp ne i32 (%struct.nand_chip*)* %51, null, !dbg !3692
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !3696

if.then49:                                        ; preds = %sw.bb46
  br label %sw.epilog, !dbg !3697

if.end50:                                         ; preds = %sw.bb46
  %52 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3698
  %legacy51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 5, !dbg !3698
  %chip_delay = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy51, i32 0, i32 15, !dbg !3698
  %53 = load i32, i32* %chip_delay, align 8, !dbg !3698
  %54 = call i1 @llvm.is.constant.i32(i32 %53), !dbg !3698
  br i1 %54, label %if.then52, label %if.else62, !dbg !3701

if.then52:                                        ; preds = %if.end50
  %55 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3702
  %legacy53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 5, !dbg !3702
  %chip_delay54 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy53, i32 0, i32 15, !dbg !3702
  %56 = load i32, i32* %chip_delay54, align 8, !dbg !3702
  %div = sdiv i32 %56, 20000, !dbg !3702
  %cmp55 = icmp sge i32 %div, 1, !dbg !3702
  br i1 %cmp55, label %if.then57, label %if.else, !dbg !3705

if.then57:                                        ; preds = %if.then52
  call void @__bad_udelay() #6, !dbg !3702
  br label %if.end61, !dbg !3702

if.else:                                          ; preds = %if.then52
  %57 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3702
  %legacy58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 5, !dbg !3702
  %chip_delay59 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy58, i32 0, i32 15, !dbg !3702
  %58 = load i32, i32* %chip_delay59, align 8, !dbg !3702
  %conv60 = sext i32 %58 to i64, !dbg !3702
  %mul = mul i64 %conv60, 4295, !dbg !3702
  call void @__const_udelay(i64 %mul) #6, !dbg !3702
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then57
  br label %if.end66, !dbg !3705

if.else62:                                        ; preds = %if.end50
  %59 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3706
  %legacy63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 5, !dbg !3706
  %chip_delay64 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy63, i32 0, i32 15, !dbg !3706
  %60 = load i32, i32* %chip_delay64, align 8, !dbg !3706
  %conv65 = sext i32 %60 to i64, !dbg !3706
  call void @__udelay(i64 %conv65) #6, !dbg !3706
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.end61
  %61 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3708
  %legacy67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 5, !dbg !3709
  %cmd_ctrl68 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy67, i32 0, i32 7, !dbg !3710
  %62 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl68, align 8, !dbg !3710
  %63 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3711
  call void %62(%struct.nand_chip* %63, i32 112, i32 131) #6, !dbg !3708
  %64 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3712
  %legacy69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 5, !dbg !3713
  %cmd_ctrl70 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy69, i32 0, i32 7, !dbg !3714
  %65 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl70, align 8, !dbg !3714
  %66 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3715
  call void %65(%struct.nand_chip* %66, i32 -1, i32 129) #6, !dbg !3712
  %67 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3716
  call void @nand_wait_status_ready(%struct.nand_chip* %67, i64 250) #6, !dbg !3717
  br label %return, !dbg !3718

sw.bb71:                                          ; preds = %if.end42
  %68 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3719
  %legacy72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 5, !dbg !3720
  %cmd_ctrl73 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy72, i32 0, i32 7, !dbg !3721
  %69 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl73, align 8, !dbg !3721
  %70 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3722
  call void %69(%struct.nand_chip* %70, i32 224, i32 131) #6, !dbg !3719
  %71 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3723
  %legacy74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 5, !dbg !3724
  %cmd_ctrl75 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy74, i32 0, i32 7, !dbg !3725
  %72 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl75, align 8, !dbg !3725
  %73 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3726
  call void %72(%struct.nand_chip* %73, i32 -1, i32 129) #6, !dbg !3723
  %74 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3727
  call void @nand_ccs_delay(%struct.nand_chip* %74) #6, !dbg !3728
  br label %return, !dbg !3729

sw.bb76:                                          ; preds = %if.end42
  %75 = load i32, i32* %column.addr, align 4, !dbg !3730
  %cmp77 = icmp eq i32 %75, -1, !dbg !3732
  br i1 %cmp77, label %land.lhs.true79, label %if.end83, !dbg !3733

land.lhs.true79:                                  ; preds = %sw.bb76
  %76 = load i32, i32* %page_addr.addr, align 4, !dbg !3734
  %cmp80 = icmp eq i32 %76, -1, !dbg !3735
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !3736

if.then82:                                        ; preds = %land.lhs.true79
  br label %return, !dbg !3737

if.end83:                                         ; preds = %land.lhs.true79, %sw.bb76
  %77 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3738
  %legacy84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 5, !dbg !3739
  %cmd_ctrl85 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy84, i32 0, i32 7, !dbg !3740
  %78 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl85, align 8, !dbg !3740
  %79 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3741
  call void %78(%struct.nand_chip* %79, i32 48, i32 131) #6, !dbg !3738
  %80 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3742
  %legacy86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 5, !dbg !3743
  %cmd_ctrl87 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy86, i32 0, i32 7, !dbg !3744
  %81 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl87, align 8, !dbg !3744
  %82 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3745
  call void %81(%struct.nand_chip* %82, i32 -1, i32 129) #6, !dbg !3742
  br label %sw.default, !dbg !3742

sw.default:                                       ; preds = %if.end42, %if.end83
  %83 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3746
  %legacy88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 5, !dbg !3748
  %dev_ready89 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy88, i32 0, i32 9, !dbg !3749
  %84 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %dev_ready89, align 8, !dbg !3749
  %tobool90 = icmp ne i32 (%struct.nand_chip*)* %84, null, !dbg !3746
  br i1 %tobool90, label %if.end112, label %if.then91, !dbg !3750

if.then91:                                        ; preds = %sw.default
  %85 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3751
  %legacy92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 5, !dbg !3751
  %chip_delay93 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy92, i32 0, i32 15, !dbg !3751
  %86 = load i32, i32* %chip_delay93, align 8, !dbg !3751
  %87 = call i1 @llvm.is.constant.i32(i32 %86), !dbg !3751
  br i1 %87, label %if.then94, label %if.else107, !dbg !3755

if.then94:                                        ; preds = %if.then91
  %88 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3756
  %legacy95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 5, !dbg !3756
  %chip_delay96 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy95, i32 0, i32 15, !dbg !3756
  %89 = load i32, i32* %chip_delay96, align 8, !dbg !3756
  %div97 = sdiv i32 %89, 20000, !dbg !3756
  %cmp98 = icmp sge i32 %div97, 1, !dbg !3756
  br i1 %cmp98, label %if.then100, label %if.else101, !dbg !3759

if.then100:                                       ; preds = %if.then94
  call void @__bad_udelay() #6, !dbg !3756
  br label %if.end106, !dbg !3756

if.else101:                                       ; preds = %if.then94
  %90 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3756
  %legacy102 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 5, !dbg !3756
  %chip_delay103 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy102, i32 0, i32 15, !dbg !3756
  %91 = load i32, i32* %chip_delay103, align 8, !dbg !3756
  %conv104 = sext i32 %91 to i64, !dbg !3756
  %mul105 = mul i64 %conv104, 4295, !dbg !3756
  call void @__const_udelay(i64 %mul105) #6, !dbg !3756
  br label %if.end106

if.end106:                                        ; preds = %if.else101, %if.then100
  br label %if.end111, !dbg !3759

if.else107:                                       ; preds = %if.then91
  %92 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3760
  %legacy108 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %92, i32 0, i32 5, !dbg !3760
  %chip_delay109 = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy108, i32 0, i32 15, !dbg !3760
  %93 = load i32, i32* %chip_delay109, align 8, !dbg !3760
  %conv110 = sext i32 %93 to i64, !dbg !3760
  call void @__udelay(i64 %conv110) #6, !dbg !3760
  br label %if.end111

if.end111:                                        ; preds = %if.else107, %if.end106
  br label %return, !dbg !3762

if.end112:                                        ; preds = %sw.default
  br label %sw.epilog, !dbg !3763

sw.epilog:                                        ; preds = %if.end112, %if.then49
  call void @__const_udelay(i64 500) #6, !dbg !3764
  %94 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3769
  call void @nand_wait_ready(%struct.nand_chip* %94) #6, !dbg !3770
  br label %return, !dbg !3771

return:                                           ; preds = %sw.epilog, %if.end111, %if.then82, %sw.bb71, %if.end66, %sw.bb45, %sw.bb
  ret void, !dbg !3771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_legacy_check_hooks(%struct.nand_chip* %chip) #0 !dbg !3772 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3775
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %0) #6, !dbg !3777
  br i1 %call, label %if.then, label %if.end, !dbg !3778

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3779
  br label %return, !dbg !3779

if.end:                                           ; preds = %entry
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3780
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 5, !dbg !3782
  %cmdfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 8, !dbg !3783
  %2 = load void (%struct.nand_chip*, i32, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc, align 8, !dbg !3783
  %tobool = icmp ne void (%struct.nand_chip*, i32, i32, i32)* %2, null, !dbg !3780
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !3784

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3785
  %legacy1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 5, !dbg !3786
  %select_chip = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy1, i32 0, i32 2, !dbg !3787
  %4 = load void (%struct.nand_chip*, i32)*, void (%struct.nand_chip*, i32)** %select_chip, align 8, !dbg !3787
  %tobool2 = icmp ne void (%struct.nand_chip*, i32)* %4, null, !dbg !3785
  br i1 %tobool2, label %if.end7, label %land.lhs.true, !dbg !3788

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3789
  %legacy3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 5, !dbg !3790
  %cmd_ctrl = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy3, i32 0, i32 7, !dbg !3791
  %6 = load void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32)** %cmd_ctrl, align 8, !dbg !3791
  %tobool4 = icmp ne void (%struct.nand_chip*, i32, i32)* %6, null, !dbg !3789
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !3792

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3793
  store i32 -22, i32* %retval, align 4, !dbg !3795
  br label %return, !dbg !3795

if.end7:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !3796
  br label %return, !dbg !3796

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3797
  ret i32 %7, !dbg !3797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @touch_softlockup_watchdog() #0 !dbg !3798 {
entry:
  ret void, !dbg !3802
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !3803 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !3804, metadata !DIExpression()), !dbg !3805
  %0 = load i32, i32* %m.addr, align 4, !dbg !3806
  %conv = zext i32 %0 to i64, !dbg !3806
  %add = add i64 %conv, 4, !dbg !3807
  %sub = sub i64 %add, 1, !dbg !3808
  %div = sdiv i64 %sub, 4, !dbg !3809
  ret i64 %div, !dbg !3810
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_opcode_8bits(i32 %command) #0 !dbg !3811 {
entry:
  %retval = alloca i32, align 4
  %command.addr = alloca i32, align 4
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  %0 = load i32, i32* %command.addr, align 4, !dbg !3816
  switch i32 %0, label %sw.default [
    i32 144, label %sw.bb
    i32 236, label %sw.bb
    i32 238, label %sw.bb
    i32 239, label %sw.bb
  ], !dbg !3817

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval, align 4, !dbg !3818
  br label %return, !dbg !3818

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !3820

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval, align 4, !dbg !3821
  br label %return, !dbg !3821

return:                                           ; preds = %sw.epilog, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !3822
  ret i32 %1, !dbg !3822
}

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_wait_status_ready(%struct.nand_chip* %chip, i64 %timeo) #0 !dbg !3823 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2828, metadata !DIExpression()), !dbg !3824
  %chip.addr = alloca %struct.nand_chip*, align 8
  %timeo.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %status = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3826, metadata !DIExpression()), !dbg !3827
  store i64 %timeo, i64* %timeo.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeo.addr, metadata !3828, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3830, metadata !DIExpression()), !dbg !3831
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !3832
  %1 = load i64, i64* %timeo.addr, align 8, !dbg !3833
  %conv = trunc i64 %1 to i32, !dbg !3833
  store i32 %conv, i32* %m.addr.i, align 4
  %2 = load i32, i32* %m.addr.i, align 4, !dbg !3834
  %3 = call i1 @llvm.is.constant.i32(i32 %2) #7, !dbg !3835
  br i1 %3, label %if.then.i, label %if.else.i, !dbg !3836

if.then.i:                                        ; preds = %entry
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !3837
  %cmp.i = icmp slt i32 %4, 0, !dbg !3838
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3839

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3840
  br label %msecs_to_jiffies.exit, !dbg !3840

if.end.i:                                         ; preds = %if.then.i
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !3841
  %call.i = call i64 @_msecs_to_jiffies(i32 %5) #8, !dbg !3842
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3843
  br label %msecs_to_jiffies.exit, !dbg !3843

if.else.i:                                        ; preds = %entry
  %6 = load i32, i32* %m.addr.i, align 4, !dbg !3844
  %call2.i = call i64 @__msecs_to_jiffies(i32 %6) #8, !dbg !3845
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3846
  br label %msecs_to_jiffies.exit, !dbg !3846

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %7 = load i64, i64* %retval.i, align 8, !dbg !3847
  %add = add i64 %0, %7, !dbg !3848
  store i64 %add, i64* %timeo.addr, align 8, !dbg !3849
  br label %do.body, !dbg !3850

do.body:                                          ; preds = %do.cond, %msecs_to_jiffies.exit
  call void @llvm.dbg.declare(metadata i8* %status, metadata !3851, metadata !DIExpression()), !dbg !3853
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3854
  %call1 = call i32 @nand_read_data_op(%struct.nand_chip* %8, i8* %status, i32 1, i1 zeroext true, i1 zeroext false) #6, !dbg !3855
  store i32 %call1, i32* %ret, align 4, !dbg !3856
  %9 = load i32, i32* %ret, align 4, !dbg !3857
  %tobool = icmp ne i32 %9, 0, !dbg !3857
  br i1 %tobool, label %if.then, label %if.end, !dbg !3859

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !3860

if.end:                                           ; preds = %do.body
  %10 = load i8, i8* %status, align 1, !dbg !3861
  %conv2 = zext i8 %10 to i32, !dbg !3861
  %and = and i32 %conv2, 64, !dbg !3863
  %tobool3 = icmp ne i32 %and, 0, !dbg !3863
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3864

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !3865

if.end5:                                          ; preds = %if.end
  call void @touch_softlockup_watchdog() #6, !dbg !3866
  br label %do.cond, !dbg !3867

do.cond:                                          ; preds = %if.end5
  %11 = load volatile i64, i64* @jiffies, align 8, !dbg !3868
  %12 = load i64, i64* %timeo.addr, align 8, !dbg !3868
  %sub = sub i64 %11, %12, !dbg !3868
  %cmp = icmp slt i64 %sub, 0, !dbg !3868
  br i1 %cmp, label %do.body, label %do.end, !dbg !3867, !llvm.loop !3869

do.end:                                           ; preds = %if.then, %do.cond, %if.then4
  ret void, !dbg !3871
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i8*, i32, i1 zeroext, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_status_op(%struct.nand_chip*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @panic_nand_wait(%struct.nand_chip*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !3872 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !3881, metadata !DIExpression()), !dbg !3880
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3880
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !3880, !srcloc !3882
  store i8 %1, i8* %ret, align 1, !dbg !3880
  %2 = load i8, i8* %ret, align 1, !dbg !3880
  ret i8 %2, !dbg !3880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #0 !dbg !3883 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !3888, metadata !DIExpression()), !dbg !3887
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3887
  %1 = bitcast i8* %0 to i16*, !dbg !3887
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #7, !dbg !3887, !srcloc !3889
  store i16 %2, i16* %ret, align 2, !dbg !3887
  %3 = load i16, i16* %ret, align 2, !dbg !3887
  ret i16 %3, !dbg !3887
}

; Function Attrs: noredzone
declare dso_local void @iowrite8_rep(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @iowrite16_rep(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @ioread8_rep(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @ioread16_rep(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_ccs_delay(%struct.nand_chip* %chip) #0 !dbg !3890 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %sdr = alloca %struct.nand_sdr_timings*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.declare(metadata %struct.nand_sdr_timings** %sdr, metadata !3893, metadata !DIExpression()), !dbg !3896
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3897
  %call = call %struct.nand_interface_config* @nand_get_interface_config(%struct.nand_chip* %0) #6, !dbg !3898
  %call1 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_interface_config* %call) #6, !dbg !3899
  store %struct.nand_sdr_timings* %call1, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3896
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3900
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 6, !dbg !3902
  %2 = load i32, i32* %options, align 8, !dbg !3902
  %conv = zext i32 %2 to i64, !dbg !3900
  %and = and i64 %conv, 2097152, !dbg !3903
  %tobool = icmp ne i64 %and, 0, !dbg !3903
  br i1 %tobool, label %if.end, label %if.then, !dbg !3904

if.then:                                          ; preds = %entry
  br label %if.end20, !dbg !3905

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3906
  %call2 = call zeroext i1 @nand_controller_can_setup_interface(%struct.nand_chip* %3) #6, !dbg !3908
  br i1 %call2, label %if.then3, label %if.else19, !dbg !3909

if.then3:                                         ; preds = %if.end
  %4 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3910
  %tCCS_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %4, i32 0, i32 1, !dbg !3910
  %5 = load i32, i32* %tCCS_min, align 8, !dbg !3910
  %div = udiv i32 %5, 1000, !dbg !3910
  %6 = call i1 @llvm.is.constant.i32(i32 %div), !dbg !3910
  br i1 %6, label %if.then4, label %if.else14, !dbg !3913

if.then4:                                         ; preds = %if.then3
  %7 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3914
  %tCCS_min5 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %7, i32 0, i32 1, !dbg !3914
  %8 = load i32, i32* %tCCS_min5, align 8, !dbg !3914
  %div6 = udiv i32 %8, 1000, !dbg !3914
  %div7 = udiv i32 %div6, 20000, !dbg !3914
  %cmp = icmp uge i32 %div7, 1, !dbg !3914
  br i1 %cmp, label %if.then9, label %if.else, !dbg !3917

if.then9:                                         ; preds = %if.then4
  call void @__bad_ndelay() #6, !dbg !3914
  br label %if.end13, !dbg !3914

if.else:                                          ; preds = %if.then4
  %9 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3914
  %tCCS_min10 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %9, i32 0, i32 1, !dbg !3914
  %10 = load i32, i32* %tCCS_min10, align 8, !dbg !3914
  %div11 = udiv i32 %10, 1000, !dbg !3914
  %conv12 = zext i32 %div11 to i64, !dbg !3914
  %mul = mul i64 %conv12, 5, !dbg !3914
  call void @__const_udelay(i64 %mul) #6, !dbg !3914
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  br label %if.end18, !dbg !3917

if.else14:                                        ; preds = %if.then3
  %11 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3918
  %tCCS_min15 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %11, i32 0, i32 1, !dbg !3918
  %12 = load i32, i32* %tCCS_min15, align 8, !dbg !3918
  %div16 = udiv i32 %12, 1000, !dbg !3918
  %conv17 = zext i32 %div16 to i64, !dbg !3918
  call void @__ndelay(i64 %conv17) #6, !dbg !3918
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.end13
  br label %if.end20, !dbg !3920

if.else19:                                        ; preds = %if.end
  call void @__const_udelay(i64 2500) #6, !dbg !3921
  br label %if.end20

if.end20:                                         ; preds = %if.then, %if.else19, %if.end18
  ret void, !dbg !3926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_interface_config* %conf) #0 !dbg !3927 {
entry:
  %retval = alloca %struct.nand_sdr_timings*, align 8
  %conf.addr = alloca %struct.nand_interface_config*, align 8
  store %struct.nand_interface_config* %conf, %struct.nand_interface_config** %conf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %conf.addr, metadata !3930, metadata !DIExpression()), !dbg !3931
  %0 = load %struct.nand_interface_config*, %struct.nand_interface_config** %conf.addr, align 8, !dbg !3932
  %type = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %0, i32 0, i32 0, !dbg !3934
  %1 = load i32, i32* %type, align 8, !dbg !3934
  %cmp = icmp ne i32 %1, 0, !dbg !3935
  br i1 %cmp, label %if.then, label %if.end, !dbg !3936

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #6, !dbg !3937
  %2 = bitcast i8* %call to %struct.nand_sdr_timings*, !dbg !3937
  store %struct.nand_sdr_timings* %2, %struct.nand_sdr_timings** %retval, align 8, !dbg !3938
  br label %return, !dbg !3938

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %conf.addr, align 8, !dbg !3939
  %timings = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %3, i32 0, i32 1, !dbg !3940
  %4 = getelementptr inbounds %struct.nand_timings, %struct.nand_timings* %timings, i32 0, i32 1, !dbg !3941
  %sdr = bitcast %union.anon.41* %4 to %struct.nand_sdr_timings*, !dbg !3941
  store %struct.nand_sdr_timings* %sdr, %struct.nand_sdr_timings** %retval, align 8, !dbg !3942
  br label %return, !dbg !3942

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %retval, align 8, !dbg !3943
  ret %struct.nand_sdr_timings* %5, !dbg !3943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_interface_config* @nand_get_interface_config(%struct.nand_chip* %chip) #0 !dbg !3944 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3947, metadata !DIExpression()), !dbg !3948
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3949
  %current_interface_config = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 7, !dbg !3950
  %1 = load %struct.nand_interface_config*, %struct.nand_interface_config** %current_interface_config, align 8, !dbg !3950
  ret %struct.nand_interface_config* %1, !dbg !3951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_controller_can_setup_interface(%struct.nand_chip* %chip) #0 !dbg !3952 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3955
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !3957
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3957
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !3955
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3958

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3959
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !3960
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !3960
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !3961
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3961
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !3959
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3962

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3963
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !3964
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !3964
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !3965
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !3965
  %setup_interface = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 3, !dbg !3966
  %8 = load i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)*, i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)** %setup_interface, align 8, !dbg !3966
  %tobool6 = icmp ne i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)* %8, null, !dbg !3963
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3967

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !3968
  br label %return, !dbg !3968

if.end:                                           ; preds = %lor.lhs.false3
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3969
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 6, !dbg !3971
  %10 = load i32, i32* %options, align 8, !dbg !3971
  %conv = zext i32 %10 to i64, !dbg !3969
  %and = and i64 %conv, 8388608, !dbg !3972
  %tobool7 = icmp ne i64 %and, 0, !dbg !3972
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3973

if.then8:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !3974
  br label %return, !dbg !3974

if.end9:                                          ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !3975
  br label %return, !dbg !3975

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %11 = load i1, i1* %retval, align 1, !dbg !3976
  ret i1 %11, !dbg !3976
}

; Function Attrs: noredzone
declare dso_local void @__bad_ndelay() #2

; Function Attrs: noredzone
declare dso_local void @__ndelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3977 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  %0 = load i64, i64* %error.addr, align 8, !dbg !3983
  %1 = inttoptr i64 %0 to i8*, !dbg !3984
  ret i8* %1, !dbg !3985
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2799}
!llvm.module.flags = !{!2823, !2824, !2825, !2826}
!llvm.ident = !{!2827}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_rs", scope: !2, file: !3, line: 209, type: !2813, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "nand_wait_ready", scope: !3, file: !3, line: 193, type: !4, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/nand_legacy.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !8, line: 1096, size: 16704, elements: !9)
!8 = !DIFile(filename: "./include/linux/mtd/rawnand.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !2389, !2395, !2419, !2514, !2587, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2741, !2742, !2743, !2744, !2745, !2746, !2748, !2798}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !7, file: !8, line: 1097, baseType: !11, size: 11200)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !12, line: 319, size: 11200, elements: !13)
!12 = !DIFile(filename: "./include/linux/mtd/nand.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !2260, !2272, !2364, !2369, !2373}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !11, file: !12, line: 320, baseType: !15, size: 9664)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !16, line: 235, size: 9664, elements: !17)
!16 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !22, !29, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !48, !50, !66, !87, !88, !89, !90, !100, !110, !127, !131, !136, !142, !143, !162, !163, !174, !175, !176, !177, !178, !179, !190, !194, !198, !199, !200, !204, !205, !206, !207, !211, !212, !213, !214, !215, !218, !230, !237, !238, !239, !243, !2230, !2231, !2239, !2243, !2244, !2245}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !16, line: 236, baseType: !19, size: 8)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !20, line: 79, baseType: !21)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !15, file: !16, line: 237, baseType: !23, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 104, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !16, line: 238, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 107, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !33)
!33 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !15, file: !16, line: 244, baseType: !23, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !15, file: !16, line: 252, baseType: !23, size: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !15, file: !16, line: 263, baseType: !23, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !15, file: !16, line: 265, baseType: !23, size: 32, offset: 224)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !15, file: !16, line: 266, baseType: !23, size: 32, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !15, file: !16, line: 272, baseType: !28, size: 32, offset: 288)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !15, file: !16, line: 273, baseType: !28, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !15, file: !16, line: 275, baseType: !28, size: 32, offset: 352)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !15, file: !16, line: 276, baseType: !28, size: 32, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !15, file: !16, line: 285, baseType: !28, size: 32, offset: 416)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !16, line: 288, baseType: !45, size: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !15, file: !16, line: 289, baseType: !49, size: 32, offset: 512)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !15, file: !16, line: 292, baseType: !51, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !16, line: 101, size: 128, elements: !54)
!54 = !{!55, !65}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !53, file: !16, line: 102, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!49, !59, !49, !60}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !16, line: 87, size: 64, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !61, file: !16, line: 88, baseType: !24, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !61, file: !16, line: 89, baseType: !24, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !53, file: !16, line: 104, baseType: !56, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !15, file: !16, line: 295, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !16, line: 176, size: 192, elements: !70)
!70 = !{!71, !72, !81}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !69, file: !16, line: 177, baseType: !49, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !69, file: !16, line: 178, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!49, !59, !49, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !16, line: 138, size: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !77, file: !16, line: 139, baseType: !49, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !77, file: !16, line: 140, baseType: !49, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !69, file: !16, line: 180, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!49, !59, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !15, file: !16, line: 298, baseType: !28, size: 32, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !15, file: !16, line: 301, baseType: !28, size: 32, offset: 736)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !15, file: !16, line: 306, baseType: !49, size: 32, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !15, file: !16, line: 307, baseType: !91, size: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !16, line: 36, size: 192, elements: !93)
!93 = !{!94, !95, !96, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !92, file: !16, line: 37, baseType: !30, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !92, file: !16, line: 38, baseType: !23, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !92, file: !16, line: 39, baseType: !23, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !92, file: !16, line: 40, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !15, file: !16, line: 313, baseType: !101, size: 64, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!49, !59, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !16, line: 30, size: 192, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !105, file: !16, line: 31, baseType: !30, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !105, file: !16, line: 32, baseType: !30, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !105, file: !16, line: 33, baseType: !30, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !15, file: !16, line: 314, baseType: !111, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!49, !59, !114, !118, !121, !122, !124}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !20, line: 46, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !116, line: 88, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 55, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !116, line: 72, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !116, line: 16, baseType: !99)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !20, line: 158, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !20, line: 153, baseType: !31)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !15, file: !16, line: 316, baseType: !128, size: 64, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!49, !59, !114, !118}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !16, line: 317, baseType: !132, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!49, !59, !114, !118, !121, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !16, line: 319, baseType: !137, size: 64, offset: 1152)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!49, !59, !114, !118, !121, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !15, file: !16, line: 321, baseType: !137, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !15, file: !16, line: 323, baseType: !144, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!49, !59, !114, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !16, line: 64, size: 512, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !161}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !148, file: !16, line: 65, baseType: !28, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !148, file: !16, line: 66, baseType: !118, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !148, file: !16, line: 67, baseType: !118, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !148, file: !16, line: 68, baseType: !118, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !148, file: !16, line: 69, baseType: !118, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !148, file: !16, line: 70, baseType: !23, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !148, file: !16, line: 71, baseType: !157, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !20, line: 102, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !21)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !148, file: !16, line: 72, baseType: !157, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !15, file: !16, line: 325, baseType: !144, size: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !15, file: !16, line: 327, baseType: !164, size: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!49, !59, !118, !121, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !169, line: 146, size: 96, elements: !170)
!169 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !172, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !168, file: !169, line: 147, baseType: !26, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !168, file: !169, line: 148, baseType: !26, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !168, file: !169, line: 149, baseType: !26, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !15, file: !16, line: 329, baseType: !132, size: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !15, file: !16, line: 331, baseType: !164, size: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !15, file: !16, line: 333, baseType: !132, size: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !15, file: !16, line: 335, baseType: !132, size: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !15, file: !16, line: 337, baseType: !128, size: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !15, file: !16, line: 339, baseType: !180, size: 64, offset: 1792)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!49, !59, !183, !99, !114, !121}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !186, line: 15, size: 128, elements: !187)
!186 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !185, file: !186, line: 16, baseType: !123, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !185, file: !186, line: 17, baseType: !118, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !15, file: !16, line: 341, baseType: !191, size: 64, offset: 1856)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !59}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !16, line: 342, baseType: !195, size: 64, offset: 1920)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!49, !59, !114, !30}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !15, file: !16, line: 343, baseType: !195, size: 64, offset: 1984)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !15, file: !16, line: 344, baseType: !195, size: 64, offset: 2048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !15, file: !16, line: 345, baseType: !201, size: 64, offset: 2112)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!49, !59, !114}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !15, file: !16, line: 346, baseType: !201, size: 64, offset: 2176)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !15, file: !16, line: 347, baseType: !201, size: 64, offset: 2240)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !15, file: !16, line: 348, baseType: !128, size: 64, offset: 2304)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !15, file: !16, line: 349, baseType: !208, size: 64, offset: 2368)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!49, !59}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !15, file: !16, line: 350, baseType: !191, size: 64, offset: 2432)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !15, file: !16, line: 351, baseType: !191, size: 64, offset: 2496)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !15, file: !16, line: 356, baseType: !208, size: 64, offset: 2560)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !15, file: !16, line: 357, baseType: !191, size: 64, offset: 2624)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !15, file: !16, line: 363, baseType: !216, size: 8, offset: 2688)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !20, line: 30, baseType: !217)
!217 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !15, file: !16, line: 365, baseType: !219, size: 192, offset: 2752)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !220, line: 54, size: 192, elements: !221)
!220 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !228, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !219, file: !220, line: 55, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !220, line: 51, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!49, !227, !99, !123}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !220, line: 56, baseType: !227, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !219, file: !220, line: 57, baseType: !49, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !15, file: !16, line: 368, baseType: !231, size: 128, offset: 2944)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !169, line: 250, size: 128, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !231, file: !169, line: 251, baseType: !26, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !231, file: !169, line: 252, baseType: !26, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !231, file: !169, line: 253, baseType: !26, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !231, file: !169, line: 254, baseType: !26, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !15, file: !16, line: 370, baseType: !49, size: 32, offset: 3072)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !15, file: !16, line: 372, baseType: !123, size: 64, offset: 3136)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !15, file: !16, line: 374, baseType: !240, size: 64, offset: 3200)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !242, line: 76, flags: DIFlagFwdDecl)
!242 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !15, file: !16, line: 375, baseType: !244, size: 5568, offset: 3264)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !245, line: 461, size: 5568, elements: !246)
!245 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !1730, !1732, !1735, !1736, !1788, !1888, !1889, !1890, !1891, !1892, !1907, !2025, !2038, !2041, !2042, !2046, !2048, !2049, !2050, !2054, !2060, !2061, !2064, !2179, !2180, !2183, !2184, !2185, !2186, !2218, !2219, !2220, !2223, !2226, !2227, !2228, !2229}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !244, file: !245, line: 462, baseType: !248, size: 512)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !249, line: 64, size: 512, elements: !250)
!249 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !252, !258, !260, !320, !1566, !1720, !1725, !1726, !1727, !1728, !1729}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !249, line: 65, baseType: !45, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !248, file: !249, line: 66, baseType: !253, size: 128, offset: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !20, line: 178, size: 128, elements: !254)
!254 = !{!255, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !20, line: 179, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !20, line: 179, baseType: !256, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !248, file: !249, line: 67, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !248, file: !249, line: 68, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !249, line: 192, size: 704, elements: !263)
!263 = !{!264, !265, !281, !282}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !262, file: !249, line: 193, baseType: !253, size: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !262, file: !249, line: 194, baseType: !266, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !267, line: 83, baseType: !268)
!267 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !267, line: 71, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !267, line: 72, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 72, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !271, file: !267, line: 73, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !267, line: 20, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !274, file: !267, line: 21, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !278, line: 25, baseType: !279)
!278 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 25, elements: !280)
!280 = !{}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !249, line: 195, baseType: !248, size: 512, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !262, file: !249, line: 196, baseType: !283, size: 64, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !249, line: 156, size: 192, elements: !286)
!286 = !{!287, !292, !297}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !285, file: !249, line: 157, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!49, !261, !259}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !249, line: 158, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!45, !261, !259}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !285, file: !249, line: 159, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!49, !261, !259, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !249, line: 148, size: 20736, elements: !304)
!304 = !{!305, !310, !314, !315, !319}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !303, file: !249, line: 149, baseType: !306, size: 192)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 192, elements: !308)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!308 = !{!309}
!309 = !DISubrange(count: 3)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !303, file: !249, line: 150, baseType: !311, size: 4096, offset: 192)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 4096, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !303, file: !249, line: 151, baseType: !49, size: 32, offset: 4288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !303, file: !249, line: 152, baseType: !316, size: 16384, offset: 4320)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 16384, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 2048)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !303, file: !249, line: 153, baseType: !49, size: 32, offset: 20704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !248, file: !249, line: 69, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !249, line: 138, size: 448, elements: !323)
!323 = !{!324, !328, !353, !355, !1508, !1545, !1549}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !322, file: !249, line: 139, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !259}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !322, file: !249, line: 140, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !332, line: 230, size: 128, elements: !333)
!332 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !349}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !331, file: !332, line: 231, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !259, !342, !307}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 60, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !116, line: 73, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !116, line: 15, baseType: !341)
!341 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !332, line: 30, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !332, line: 31, baseType: !45, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !343, file: !332, line: 32, baseType: !347, size: 16, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !20, line: 19, baseType: !348)
!348 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !331, file: !332, line: 232, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!338, !259, !342, !45, !118}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !322, file: !249, line: 141, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !322, file: !249, line: 142, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !332, line: 84, size: 320, elements: !360)
!360 = !{!361, !362, !366, !1505, !1506}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !332, line: 85, baseType: !45, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !359, file: !332, line: 86, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!347, !259, !342, !49}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !359, file: !332, line: 88, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!347, !259, !370, !49}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !332, line: 168, size: 448, elements: !372)
!372 = !{!373, !374, !375, !376, !383, !384}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !371, file: !332, line: 169, baseType: !343, size: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !371, file: !332, line: 170, baseType: !118, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !371, file: !332, line: 171, baseType: !123, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !371, file: !332, line: 172, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!338, !380, !259, !370, !307, !114, !118}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !382, line: 526, flags: DIFlagFwdDecl)
!382 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !371, file: !332, line: 174, baseType: !377, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !371, file: !332, line: 176, baseType: !385, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!49, !380, !259, !370, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !390, line: 305, size: 1472, elements: !391)
!390 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !393, !394, !395, !396, !404, !405, !1479, !1485, !1486, !1491, !1492, !1495, !1499, !1500, !1501, !1502, !1503}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !389, file: !390, line: 308, baseType: !99, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !389, file: !390, line: 309, baseType: !99, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !389, file: !390, line: 313, baseType: !388, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !389, file: !390, line: 313, baseType: !388, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !389, file: !390, line: 315, baseType: !397, size: 192, align: 64, offset: 256)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !398, line: 24, size: 192, align: 64, elements: !399)
!398 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !401, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !397, file: !398, line: 25, baseType: !99, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !397, file: !398, line: 26, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !397, file: !398, line: 27, baseType: !402, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !389, file: !390, line: 323, baseType: !99, size: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !389, file: !390, line: 327, baseType: !406, size: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !390, line: 388, size: 7296, elements: !408)
!408 = !{!409, !1475}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !390, line: 389, baseType: !410, size: 7296)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !390, line: 389, size: 7296, elements: !411)
!411 = !{!412, !413, !417, !418, !422, !423, !424, !425, !426, !434, !439, !440, !441, !442, !451, !452, !453, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !488, !496, !499, !531, !532, !1445, !1446, !1449, !1453, !1454, !1457, !1458, !1459, !1462, !1474}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !410, file: !390, line: 390, baseType: !388, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !410, file: !390, line: 391, baseType: !414, size: 64, offset: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !398, line: 31, size: 64, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !414, file: !398, line: 32, baseType: !402, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !410, file: !390, line: 392, baseType: !31, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !410, file: !390, line: 394, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!99, !380, !99, !99, !99, !99}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !410, file: !390, line: 398, baseType: !99, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !410, file: !390, line: 399, baseType: !99, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !410, file: !390, line: 405, baseType: !99, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !410, file: !390, line: 406, baseType: !99, size: 64, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !410, file: !390, line: 407, baseType: !427, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !382, line: 286, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 286, size: 64, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !429, file: !382, line: 286, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !433, line: 18, baseType: !99)
!433 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!434 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !410, file: !390, line: 416, baseType: !435, size: 32, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !20, line: 168, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 166, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !436, file: !20, line: 167, baseType: !49, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !410, file: !390, line: 428, baseType: !435, size: 32, offset: 608)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !410, file: !390, line: 437, baseType: !435, size: 32, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !410, file: !390, line: 447, baseType: !435, size: 32, offset: 672)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !410, file: !390, line: 450, baseType: !443, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !444, line: 13, baseType: !445)
!444 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !20, line: 175, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 173, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !446, file: !20, line: 174, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !25, line: 22, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !27, line: 30, baseType: !117)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !410, file: !390, line: 452, baseType: !49, size: 32, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !410, file: !390, line: 454, baseType: !266, offset: 800)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !410, file: !390, line: 457, baseType: !454, size: 256, offset: 832)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !455, line: 35, size: 256, elements: !456)
!455 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !458, !459, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !455, line: 36, baseType: !443, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !454, file: !455, line: 42, baseType: !443, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !454, file: !455, line: 46, baseType: !460, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !267, line: 29, baseType: !274)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !454, file: !455, line: 47, baseType: !253, size: 128, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !410, file: !390, line: 459, baseType: !253, size: 128, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !410, file: !390, line: 466, baseType: !99, size: 64, offset: 1216)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !410, file: !390, line: 467, baseType: !99, size: 64, offset: 1280)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !410, file: !390, line: 469, baseType: !99, size: 64, offset: 1344)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !410, file: !390, line: 470, baseType: !99, size: 64, offset: 1408)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !410, file: !390, line: 471, baseType: !445, size: 64, offset: 1472)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !410, file: !390, line: 472, baseType: !99, size: 64, offset: 1536)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !410, file: !390, line: 473, baseType: !99, size: 64, offset: 1600)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !410, file: !390, line: 474, baseType: !99, size: 64, offset: 1664)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !410, file: !390, line: 475, baseType: !99, size: 64, offset: 1728)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !410, file: !390, line: 477, baseType: !266, offset: 1792)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !410, file: !390, line: 478, baseType: !99, size: 64, offset: 1792)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !410, file: !390, line: 478, baseType: !99, size: 64, offset: 1856)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !410, file: !390, line: 478, baseType: !99, size: 64, offset: 1920)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !410, file: !390, line: 478, baseType: !99, size: 64, offset: 1984)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !410, file: !390, line: 479, baseType: !99, size: 64, offset: 2048)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !410, file: !390, line: 479, baseType: !99, size: 64, offset: 2112)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !410, file: !390, line: 479, baseType: !99, size: 64, offset: 2176)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !410, file: !390, line: 480, baseType: !99, size: 64, offset: 2240)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !410, file: !390, line: 480, baseType: !99, size: 64, offset: 2304)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !410, file: !390, line: 480, baseType: !99, size: 64, offset: 2368)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !410, file: !390, line: 480, baseType: !99, size: 64, offset: 2432)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !410, file: !390, line: 482, baseType: !485, size: 2816, offset: 2496)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2816, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 44)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !410, file: !390, line: 488, baseType: !489, size: 256, offset: 5312)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !490, line: 60, size: 256, elements: !491)
!490 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !489, file: !490, line: 61, baseType: !493, size: 256)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 256, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 4)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !410, file: !390, line: 490, baseType: !497, size: 64, offset: 5568)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !390, line: 490, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !410, file: !390, line: 493, baseType: !500, size: 896, offset: 5632)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !501, line: 53, baseType: !502)
!501 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 13, size: 896, elements: !503)
!503 = !{!504, !505, !506, !507, !510, !511, !518, !519, !523, !524, !527}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !502, file: !501, line: 18, baseType: !31, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !502, file: !501, line: 28, baseType: !445, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !502, file: !501, line: 31, baseType: !454, size: 256, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !502, file: !501, line: 32, baseType: !508, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !501, line: 32, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !502, file: !501, line: 37, baseType: !348, size: 16, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !502, file: !501, line: 40, baseType: !512, size: 192, offset: 512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 53, size: 192, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 54, baseType: !443, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 55, baseType: !266, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 59, baseType: !253, size: 128, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !502, file: !501, line: 41, baseType: !123, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !502, file: !501, line: 42, baseType: !520, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !501, line: 42, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !502, file: !501, line: 44, baseType: !435, size: 32, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !502, file: !501, line: 50, baseType: !525, size: 16, offset: 864)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !348)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !502, file: !501, line: 51, baseType: !528, size: 16, offset: 880)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !25, line: 18, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !27, line: 23, baseType: !530)
!530 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !390, line: 495, baseType: !99, size: 64, offset: 6528)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !410, file: !390, line: 497, baseType: !533, size: 64, offset: 6592)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !390, line: 381, size: 384, elements: !535)
!535 = !{!536, !537, !1444}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !534, file: !390, line: 382, baseType: !435, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !534, file: !390, line: 383, baseType: !538, size: 128, offset: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !390, line: 376, size: 128, elements: !539)
!539 = !{!540, !1442}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !538, file: !390, line: 377, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !543, line: 640, size: 48640, elements: !544)
!543 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !551, !553, !554, !560, !561, !562, !563, !564, !565, !566, !567, !571, !589, !600, !697, !698, !699, !710, !711, !713, !714, !715, !716, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !801, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !857, !859, !860, !861, !873, !875, !876, !877, !878, !879, !885, !886, !887, !888, !889, !890, !891, !903, !908, !912, !913, !914, !917, !921, !924, !927, !930, !933, !936, !939, !942, !948, !949, !950, !956, !957, !958, !959, !960, !969, !970, !971, !972, !973, !978, !979, !980, !983, !984, !987, !990, !993, !996, !999, !1002, !1003, !1083, !1086, !1089, !1090, !1093, !1094, !1095, !1101, !1102, !1103, !1116, !1117, !1118, !1128, !1133, !1136, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !542, file: !543, line: 646, baseType: !546, size: 128)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !547, line: 56, size: 128, elements: !548)
!547 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !547, line: 57, baseType: !99, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !546, file: !547, line: 58, baseType: !24, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !542, file: !543, line: 649, baseType: !552, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !341)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !542, file: !543, line: 657, baseType: !123, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !542, file: !543, line: 658, baseType: !555, size: 32, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !556, line: 113, baseType: !557)
!556 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !556, line: 111, size: 32, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !557, file: !556, line: 112, baseType: !435, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !543, line: 660, baseType: !28, size: 32, offset: 288)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !542, file: !543, line: 661, baseType: !28, size: 32, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !542, file: !543, line: 684, baseType: !49, size: 32, offset: 352)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !542, file: !543, line: 686, baseType: !49, size: 32, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !542, file: !543, line: 687, baseType: !49, size: 32, offset: 416)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !542, file: !543, line: 688, baseType: !49, size: 32, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !542, file: !543, line: 689, baseType: !28, size: 32, offset: 480)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !542, file: !543, line: 691, baseType: !568, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !543, line: 691, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !542, file: !543, line: 692, baseType: !572, size: 832, offset: 576)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !543, line: 451, size: 832, elements: !573)
!573 = !{!574, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !572, file: !543, line: 453, baseType: !575, size: 128)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !543, line: 325, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !575, file: !543, line: 326, baseType: !99, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !575, file: !543, line: 327, baseType: !24, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !572, file: !543, line: 454, baseType: !397, size: 192, align: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !572, file: !543, line: 455, baseType: !253, size: 128, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !572, file: !543, line: 456, baseType: !28, size: 32, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !572, file: !543, line: 458, baseType: !31, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !572, file: !543, line: 459, baseType: !31, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !572, file: !543, line: 460, baseType: !31, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !572, file: !543, line: 461, baseType: !31, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !572, file: !543, line: 463, baseType: !31, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !572, file: !543, line: 465, baseType: !588, offset: 832)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !543, line: 415, elements: !280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !542, file: !543, line: 693, baseType: !590, size: 384, offset: 1408)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !543, line: 489, size: 384, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !590, file: !543, line: 490, baseType: !253, size: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !590, file: !543, line: 491, baseType: !99, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !590, file: !543, line: 492, baseType: !99, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !590, file: !543, line: 493, baseType: !28, size: 32, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !590, file: !543, line: 494, baseType: !348, size: 16, offset: 288)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !590, file: !543, line: 495, baseType: !348, size: 16, offset: 304)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !590, file: !543, line: 497, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !542, file: !543, line: 697, baseType: !601, size: 1792, offset: 1792)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !543, line: 507, size: 1792, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !694, !695}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !601, file: !543, line: 508, baseType: !397, size: 192, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !601, file: !543, line: 515, baseType: !31, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !601, file: !543, line: 516, baseType: !31, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !601, file: !543, line: 517, baseType: !31, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !601, file: !543, line: 518, baseType: !31, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !601, file: !543, line: 519, baseType: !31, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !601, file: !543, line: 526, baseType: !449, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !601, file: !543, line: 527, baseType: !31, size: 64, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !543, line: 528, baseType: !28, size: 32, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !601, file: !543, line: 554, baseType: !28, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !601, file: !543, line: 555, baseType: !28, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !601, file: !543, line: 556, baseType: !28, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !601, file: !543, line: 557, baseType: !28, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !601, file: !543, line: 563, baseType: !617, size: 512, offset: 704)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !618, line: 118, size: 512, elements: !619)
!618 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!619 = !{!620, !628, !629, !638, !690, !691, !692, !693}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !618, line: 119, baseType: !621, size: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !622, line: 9, size: 256, elements: !623)
!622 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !622, line: 10, baseType: !397, size: 192, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !621, file: !622, line: 11, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !627, line: 29, baseType: !449)
!627 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !617, file: !618, line: 120, baseType: !626, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !617, file: !618, line: 121, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!633, !637}
!633 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !618, line: 65, baseType: !28, size: 32, elements: !634)
!634 = !{!635, !636}
!635 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!636 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !617, file: !618, line: 122, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !618, line: 159, size: 512, align: 512, elements: !641)
!641 = !{!642, !662, !663, !666, !676, !677, !685, !689}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !640, file: !618, line: 160, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !618, line: 214, size: 4608, align: 512, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !644, file: !618, line: 215, baseType: !460)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !644, file: !618, line: 216, baseType: !28, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !644, file: !618, line: 217, baseType: !28, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !644, file: !618, line: 218, baseType: !28, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !644, file: !618, line: 219, baseType: !28, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !644, file: !618, line: 220, baseType: !28, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !644, file: !618, line: 221, baseType: !28, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !644, file: !618, line: 222, baseType: !28, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !644, file: !618, line: 233, baseType: !626, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !644, file: !618, line: 234, baseType: !637, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !644, file: !618, line: 235, baseType: !626, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !644, file: !618, line: 236, baseType: !637, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !644, file: !618, line: 237, baseType: !659, size: 4096, offset: 512)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 4096, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 8)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !640, file: !618, line: 161, baseType: !28, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !640, file: !618, line: 162, baseType: !664, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !20, line: 27, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !116, line: 96, baseType: !49)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !640, file: !618, line: 163, baseType: !667, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !668, line: 276, baseType: !669)
!668 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !668, line: 276, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !669, file: !668, line: 276, baseType: !672, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !668, line: 70, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !668, line: 65, size: 32, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !673, file: !668, line: 66, baseType: !28, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !640, file: !618, line: 164, baseType: !637, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !640, file: !618, line: 165, baseType: !678, size: 128, offset: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !622, line: 14, size: 128, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !678, file: !622, line: 15, baseType: !681, size: 128)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !398, line: 125, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !681, file: !398, line: 126, baseType: !414, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !681, file: !398, line: 127, baseType: !402, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !640, file: !618, line: 166, baseType: !686, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!626}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !640, file: !618, line: 167, baseType: !626, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !617, file: !618, line: 123, baseType: !159, size: 8, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !617, file: !618, line: 124, baseType: !159, size: 8, offset: 456)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !617, file: !618, line: 125, baseType: !159, size: 8, offset: 464)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !617, file: !618, line: 126, baseType: !159, size: 8, offset: 472)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !601, file: !543, line: 572, baseType: !617, size: 512, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !601, file: !543, line: 580, baseType: !696, size: 64, offset: 1728)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !542, file: !543, line: 721, baseType: !28, size: 32, offset: 3584)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !542, file: !543, line: 722, baseType: !49, size: 32, offset: 3616)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !542, file: !543, line: 723, baseType: !700, size: 64, offset: 3648)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !703, line: 17, baseType: !704)
!703 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !703, line: 17, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !704, file: !703, line: 17, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 1)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !542, file: !543, line: 724, baseType: !702, size: 64, offset: 3712)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !542, file: !543, line: 749, baseType: !712, offset: 3776)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !543, line: 290, elements: !280)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !542, file: !543, line: 751, baseType: !253, size: 128, offset: 3776)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !542, file: !543, line: 757, baseType: !406, size: 64, offset: 3904)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !542, file: !543, line: 758, baseType: !406, size: 64, offset: 3968)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !542, file: !543, line: 761, baseType: !717, size: 320, offset: 4032)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !490, line: 34, size: 320, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !717, file: !490, line: 35, baseType: !31, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !717, file: !490, line: 36, baseType: !721, size: 256, offset: 64)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !494)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !542, file: !543, line: 766, baseType: !49, size: 32, offset: 4352)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !542, file: !543, line: 767, baseType: !49, size: 32, offset: 4384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !542, file: !543, line: 768, baseType: !49, size: 32, offset: 4416)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !542, file: !543, line: 770, baseType: !49, size: 32, offset: 4448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !542, file: !543, line: 772, baseType: !99, size: 64, offset: 4480)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !542, file: !543, line: 775, baseType: !28, size: 32, offset: 4544)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !542, file: !543, line: 778, baseType: !28, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !542, file: !543, line: 779, baseType: !28, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !542, file: !543, line: 780, baseType: !28, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !542, file: !543, line: 803, baseType: !28, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !542, file: !543, line: 806, baseType: !28, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !542, file: !543, line: 807, baseType: !28, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !542, file: !543, line: 809, baseType: !28, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !542, file: !543, line: 815, baseType: !28, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !542, file: !543, line: 831, baseType: !99, size: 64, offset: 4672)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !542, file: !543, line: 833, baseType: !738, size: 384, offset: 4736)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !739, line: 25, size: 384, elements: !740)
!739 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !746}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !738, file: !739, line: 26, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!341, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 27, baseType: !747, size: 320, offset: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 27, size: 320, elements: !748)
!748 = !{!749, !759, !791}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !747, file: !739, line: 36, baseType: !750, size: 320)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !739, line: 29, size: 320, elements: !751)
!751 = !{!752, !754, !755, !756, !757, !758}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !750, file: !739, line: 30, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !739, line: 31, baseType: !24, size: 32, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !739, line: 32, baseType: !24, size: 32, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !750, file: !739, line: 33, baseType: !24, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !750, file: !739, line: 34, baseType: !31, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !750, file: !739, line: 35, baseType: !753, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !747, file: !739, line: 46, baseType: !760, size: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !739, line: 38, size: 192, elements: !761)
!761 = !{!762, !763, !769, !790}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !760, file: !739, line: 39, baseType: !664, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !739, line: 40, baseType: !764, size: 32, offset: 32)
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !739, line: 16, baseType: !28, size: 32, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!767 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!768 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !739, line: 41, baseType: !770, size: 64, offset: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !739, line: 41, size: 64, elements: !771)
!771 = !{!772, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !770, file: !739, line: 42, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !775, line: 7, size: 128, elements: !776)
!775 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !774, file: !775, line: 8, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !116, line: 93, baseType: !117)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !774, file: !775, line: 9, baseType: !117, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !770, file: !739, line: 43, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !783, line: 7, size: 64, elements: !784)
!783 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !782, file: !783, line: 8, baseType: !786, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !783, line: 5, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !25, line: 20, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !27, line: 26, baseType: !49)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !782, file: !783, line: 9, baseType: !787, size: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !760, file: !739, line: 45, baseType: !31, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !747, file: !739, line: 54, baseType: !792, size: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !739, line: 48, size: 256, elements: !793)
!793 = !{!794, !797, !798, !799, !800}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !792, file: !739, line: 49, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !739, line: 14, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !792, file: !739, line: 50, baseType: !49, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !792, file: !739, line: 51, baseType: !49, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !792, file: !739, line: 52, baseType: !99, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !792, file: !739, line: 53, baseType: !99, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !542, file: !543, line: 835, baseType: !802, size: 32, offset: 5120)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !20, line: 22, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !116, line: 28, baseType: !49)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !542, file: !543, line: 836, baseType: !802, size: 32, offset: 5152)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !542, file: !543, line: 840, baseType: !99, size: 64, offset: 5184)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !542, file: !543, line: 849, baseType: !541, size: 64, offset: 5248)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !542, file: !543, line: 852, baseType: !541, size: 64, offset: 5312)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !542, file: !543, line: 857, baseType: !253, size: 128, offset: 5376)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !542, file: !543, line: 858, baseType: !253, size: 128, offset: 5504)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !542, file: !543, line: 859, baseType: !541, size: 64, offset: 5632)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !542, file: !543, line: 867, baseType: !253, size: 128, offset: 5696)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !542, file: !543, line: 868, baseType: !253, size: 128, offset: 5824)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !542, file: !543, line: 871, baseType: !814, size: 64, offset: 5952)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !816, line: 59, size: 768, elements: !817)
!816 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !819, !820, !821, !832, !833, !840, !849}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !815, file: !816, line: 61, baseType: !555, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !815, file: !816, line: 62, baseType: !28, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !816, line: 63, baseType: !266, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !815, file: !816, line: 65, baseType: !822, size: 256, offset: 64)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 256, elements: !494)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !20, line: 182, size: 64, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !823, file: !20, line: 183, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !20, line: 186, size: 128, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !827, file: !20, line: 187, baseType: !826, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !827, file: !20, line: 187, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !815, file: !816, line: 66, baseType: !823, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !815, file: !816, line: 68, baseType: !834, size: 128, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !835, line: 40, baseType: !836)
!835 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !835, line: 36, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !836, file: !835, line: 37, baseType: !266)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !836, file: !835, line: 38, baseType: !253, size: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !815, file: !816, line: 69, baseType: !841, size: 128, align: 64, offset: 512)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !20, line: 216, size: 128, align: 64, elements: !842)
!842 = !{!843, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !20, line: 217, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !841, file: !20, line: 218, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !844}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !815, file: !816, line: 70, baseType: !850, size: 128, offset: 640)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 128, elements: !708)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !816, line: 54, size: 128, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !851, file: !816, line: 55, baseType: !49, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !851, file: !816, line: 56, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !816, line: 56, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !542, file: !543, line: 872, baseType: !858, size: 512, offset: 6016)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 512, elements: !494)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !542, file: !543, line: 873, baseType: !253, size: 128, offset: 6528)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !542, file: !543, line: 874, baseType: !253, size: 128, offset: 6656)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !542, file: !543, line: 876, baseType: !862, size: 64, offset: 6784)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !864, line: 26, size: 192, elements: !865)
!864 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !863, file: !864, line: 27, baseType: !28, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !863, file: !864, line: 28, baseType: !868, size: 128, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !869, line: 43, size: 128, elements: !870)
!869 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !868, file: !869, line: 44, baseType: !460)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !868, file: !869, line: 45, baseType: !253, size: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !542, file: !543, line: 879, baseType: !874, size: 64, offset: 6848)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !542, file: !543, line: 882, baseType: !874, size: 64, offset: 6912)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !542, file: !543, line: 884, baseType: !31, size: 64, offset: 6976)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !542, file: !543, line: 885, baseType: !31, size: 64, offset: 7040)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !542, file: !543, line: 890, baseType: !31, size: 64, offset: 7104)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !542, file: !543, line: 891, baseType: !880, size: 128, offset: 7168)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !543, line: 242, size: 128, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !880, file: !543, line: 244, baseType: !31, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !880, file: !543, line: 245, baseType: !31, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !880, file: !543, line: 246, baseType: !460, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !542, file: !543, line: 900, baseType: !99, size: 64, offset: 7296)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !542, file: !543, line: 901, baseType: !99, size: 64, offset: 7360)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !542, file: !543, line: 904, baseType: !31, size: 64, offset: 7424)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !542, file: !543, line: 907, baseType: !31, size: 64, offset: 7488)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !542, file: !543, line: 910, baseType: !99, size: 64, offset: 7552)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !542, file: !543, line: 911, baseType: !99, size: 64, offset: 7616)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !542, file: !543, line: 914, baseType: !892, size: 640, offset: 7680)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !893, line: 123, size: 640, elements: !894)
!893 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!894 = !{!895, !901, !902}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !892, file: !893, line: 124, baseType: !896, size: 576)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 576, elements: !308)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !893, line: 108, size: 192, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !897, file: !893, line: 109, baseType: !31, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !897, file: !893, line: 110, baseType: !678, size: 128, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !892, file: !893, line: 125, baseType: !28, size: 32, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !892, file: !893, line: 126, baseType: !28, size: 32, offset: 608)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !542, file: !543, line: 917, baseType: !904, size: 192, offset: 8320)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !893, line: 134, size: 192, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !904, file: !893, line: 135, baseType: !841, size: 128, align: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !904, file: !893, line: 136, baseType: !28, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !542, file: !543, line: 923, baseType: !909, size: 64, offset: 8512)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !543, line: 923, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !542, file: !543, line: 926, baseType: !909, size: 64, offset: 8576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !542, file: !543, line: 929, baseType: !909, size: 64, offset: 8640)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !542, file: !543, line: 933, baseType: !915, size: 64, offset: 8704)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !543, line: 933, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !542, file: !543, line: 943, baseType: !918, size: 128, offset: 8768)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 16)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !542, file: !543, line: 945, baseType: !922, size: 64, offset: 8896)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !543, line: 49, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !542, file: !543, line: 956, baseType: !925, size: 64, offset: 8960)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !543, line: 45, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !542, file: !543, line: 959, baseType: !928, size: 64, offset: 9024)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !543, line: 959, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !542, file: !543, line: 962, baseType: !931, size: 64, offset: 9088)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !543, line: 66, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !542, file: !543, line: 966, baseType: !934, size: 64, offset: 9152)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !543, line: 50, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !542, file: !543, line: 969, baseType: !937, size: 64, offset: 9216)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !893, line: 223, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !542, file: !543, line: 970, baseType: !940, size: 64, offset: 9280)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !543, line: 62, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !542, file: !543, line: 971, baseType: !943, size: 64, offset: 9344)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !944, line: 25, baseType: !945)
!944 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 23, size: 64, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !945, file: !944, line: 24, baseType: !707, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !542, file: !543, line: 972, baseType: !943, size: 64, offset: 9408)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !542, file: !543, line: 974, baseType: !943, size: 64, offset: 9472)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !542, file: !543, line: 975, baseType: !951, size: 192, offset: 9536)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !952, line: 30, size: 192, elements: !953)
!952 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !951, file: !952, line: 31, baseType: !253, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !951, file: !952, line: 32, baseType: !943, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !542, file: !543, line: 976, baseType: !99, size: 64, offset: 9728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !542, file: !543, line: 977, baseType: !118, size: 64, offset: 9792)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !542, file: !543, line: 978, baseType: !28, size: 32, offset: 9856)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !542, file: !543, line: 980, baseType: !844, size: 64, offset: 9920)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !542, file: !543, line: 989, baseType: !961, size: 128, offset: 9984)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !962, line: 35, size: 128, elements: !963)
!962 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !961, file: !962, line: 36, baseType: !49, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !961, file: !962, line: 37, baseType: !435, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !961, file: !962, line: 38, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !962, line: 23, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !542, file: !543, line: 992, baseType: !31, size: 64, offset: 10112)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !542, file: !543, line: 993, baseType: !31, size: 64, offset: 10176)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !542, file: !543, line: 996, baseType: !266, offset: 10240)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !542, file: !543, line: 999, baseType: !460, offset: 10240)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !542, file: !543, line: 1001, baseType: !974, size: 64, offset: 10240)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !543, line: 636, size: 64, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !543, line: 637, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !542, file: !543, line: 1005, baseType: !681, size: 128, offset: 10304)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !542, file: !543, line: 1007, baseType: !541, size: 64, offset: 10432)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !542, file: !543, line: 1009, baseType: !981, size: 64, offset: 10496)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !543, line: 1009, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !542, file: !543, line: 1043, baseType: !123, size: 64, offset: 10560)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !542, file: !543, line: 1046, baseType: !985, size: 64, offset: 10624)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !543, line: 41, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !542, file: !543, line: 1050, baseType: !988, size: 64, offset: 10688)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !543, line: 42, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !542, file: !543, line: 1054, baseType: !991, size: 64, offset: 10752)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !543, line: 55, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !542, file: !543, line: 1056, baseType: !994, size: 64, offset: 10816)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !543, line: 40, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !542, file: !543, line: 1058, baseType: !997, size: 64, offset: 10880)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !543, line: 47, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !542, file: !543, line: 1061, baseType: !1000, size: 64, offset: 10944)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !543, line: 43, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !542, file: !543, line: 1064, baseType: !99, size: 64, offset: 11008)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !542, file: !543, line: 1065, baseType: !1004, size: 64, offset: 11072)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !952, line: 14, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !952, line: 12, size: 384, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !952, line: 13, baseType: !1009, size: 384)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1006, file: !952, line: 13, size: 384, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1009, file: !952, line: 13, baseType: !49, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1009, file: !952, line: 13, baseType: !49, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1009, file: !952, line: 13, baseType: !49, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1009, file: !952, line: 13, baseType: !1015, size: 256, offset: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1016, line: 32, size: 256, elements: !1017)
!1016 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !{!1018, !1024, !1037, !1043, !1052, !1072, !1077}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1015, file: !1016, line: 37, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 34, size: 64, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1019, file: !1016, line: 35, baseType: !803, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1019, file: !1016, line: 36, baseType: !1023, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !116, line: 49, baseType: !28)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1015, file: !1016, line: 45, baseType: !1025, size: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 40, size: 192, elements: !1026)
!1026 = !{!1027, !1029, !1030, !1036}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1025, file: !1016, line: 41, baseType: !1028, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !116, line: 95, baseType: !49)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1025, file: !1016, line: 42, baseType: !49, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1025, file: !1016, line: 43, baseType: !1031, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1016, line: 11, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1016, line: 8, size: 64, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1032, file: !1016, line: 9, baseType: !49, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1032, file: !1016, line: 10, baseType: !123, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1025, file: !1016, line: 44, baseType: !49, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1015, file: !1016, line: 52, baseType: !1038, size: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 48, size: 128, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1038, file: !1016, line: 49, baseType: !803, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1038, file: !1016, line: 50, baseType: !1023, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1038, file: !1016, line: 51, baseType: !1031, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1015, file: !1016, line: 61, baseType: !1044, size: 256)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 55, size: 256, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1051}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1044, file: !1016, line: 56, baseType: !803, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1044, file: !1016, line: 57, baseType: !1023, size: 32, offset: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1044, file: !1016, line: 58, baseType: !49, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1044, file: !1016, line: 59, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !116, line: 94, baseType: !340)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1044, file: !1016, line: 60, baseType: !1050, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1015, file: !1016, line: 95, baseType: !1053, size: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 64, size: 256, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1053, file: !1016, line: 65, baseType: !123, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !1016, line: 77, baseType: !1057, size: 192, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !1016, line: 77, size: 192, elements: !1058)
!1058 = !{!1059, !1060, !1067}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1057, file: !1016, line: 82, baseType: !530, size: 16)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1057, file: !1016, line: 88, baseType: !1061, size: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1016, line: 84, size: 192, elements: !1062)
!1062 = !{!1063, !1065, !1066}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1061, file: !1016, line: 85, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !660)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1061, file: !1016, line: 86, baseType: !123, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1061, file: !1016, line: 87, baseType: !123, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1057, file: !1016, line: 93, baseType: !1068, size: 96)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1016, line: 90, size: 96, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1068, file: !1016, line: 91, baseType: !1064, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1068, file: !1016, line: 92, baseType: !26, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1015, file: !1016, line: 101, baseType: !1073, size: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 98, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1073, file: !1016, line: 99, baseType: !341, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1073, file: !1016, line: 100, baseType: !49, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1015, file: !1016, line: 108, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !1016, line: 104, size: 128, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1078, file: !1016, line: 105, baseType: !123, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1078, file: !1016, line: 106, baseType: !49, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1078, file: !1016, line: 107, baseType: !28, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !542, file: !543, line: 1067, baseType: !1084, offset: 11136)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1085, line: 12, elements: !280)
!1085 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !542, file: !543, line: 1099, baseType: !1087, size: 64, offset: 11136)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !543, line: 56, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !542, file: !543, line: 1103, baseType: !253, size: 128, offset: 11200)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !542, file: !543, line: 1104, baseType: !1091, size: 64, offset: 11328)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !543, line: 46, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !542, file: !543, line: 1105, baseType: !512, size: 192, offset: 11392)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !542, file: !543, line: 1106, baseType: !28, size: 32, offset: 11584)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !542, file: !543, line: 1109, baseType: !1096, size: 128, offset: 11648)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 128, elements: !1099)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !543, line: 51, flags: DIFlagFwdDecl)
!1099 = !{!1100}
!1100 = !DISubrange(count: 2)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !542, file: !543, line: 1110, baseType: !512, size: 192, offset: 11776)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !542, file: !543, line: 1111, baseType: !253, size: 128, offset: 11968)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !542, file: !543, line: 1173, baseType: !1104, size: 64, offset: 12096)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1106, line: 62, size: 256, align: 256, elements: !1107)
!1106 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1107 = !{!1108, !1109, !1110, !1115}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1105, file: !1106, line: 75, baseType: !26, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1105, file: !1106, line: 90, baseType: !26, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1105, file: !1106, line: 124, baseType: !1111, size: 64, offset: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !1106, line: 109, size: 64, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1111, file: !1106, line: 110, baseType: !32, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1111, file: !1106, line: 112, baseType: !32, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !1106, line: 144, baseType: !26, size: 32, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !542, file: !543, line: 1174, baseType: !24, size: 32, offset: 12160)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !542, file: !543, line: 1179, baseType: !99, size: 64, offset: 12224)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !542, file: !543, line: 1182, baseType: !1119, size: 128, offset: 12288)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !490, line: 76, size: 128, elements: !1120)
!1120 = !{!1121, !1126, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1119, file: !490, line: 85, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1123, line: 7, size: 64, elements: !1124)
!1123 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1122, file: !1123, line: 12, baseType: !704, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1119, file: !490, line: 88, baseType: !216, size: 8, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1119, file: !490, line: 95, baseType: !216, size: 8, offset: 72)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !543, line: 1184, baseType: !1129, size: 128, offset: 12416)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !543, line: 1184, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1129, file: !543, line: 1185, baseType: !555, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1129, file: !543, line: 1186, baseType: !841, size: 128, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !542, file: !543, line: 1190, baseType: !1134, size: 64, offset: 12544)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !543, line: 53, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !542, file: !543, line: 1192, baseType: !1137, size: 128, offset: 12608)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !490, line: 64, size: 128, elements: !1138)
!1138 = !{!1139, !1232, !1233}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1137, file: !490, line: 65, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !390, line: 68, size: 512, align: 128, elements: !1142)
!1142 = !{!1143, !1144, !1224, !1231}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !390, line: 69, baseType: !99, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !390, line: 77, baseType: !1145, size: 320, offset: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !390, line: 77, size: 320, elements: !1146)
!1146 = !{!1147, !1156, !1161, !1189, !1197, !1203, !1216, !1223}
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 78, baseType: !1148, size: 320)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 78, size: 320, elements: !1149)
!1149 = !{!1150, !1151, !1154, !1155}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1148, file: !390, line: 84, baseType: !253, size: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1148, file: !390, line: 86, baseType: !1152, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !390, line: 26, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1148, file: !390, line: 87, baseType: !99, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1148, file: !390, line: 94, baseType: !99, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 96, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 96, size: 64, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1157, file: !390, line: 101, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !20, line: 143, baseType: !31)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 103, baseType: !1162, size: 320)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 103, size: 320, elements: !1163)
!1163 = !{!1164, !1174, !1177, !1178}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !390, line: 104, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !390, line: 104, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1165, file: !390, line: 105, baseType: !253, size: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !390, line: 106, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1165, file: !390, line: 106, size: 128, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1169, file: !390, line: 107, baseType: !1140, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1169, file: !390, line: 109, baseType: !49, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1169, file: !390, line: 110, baseType: !49, size: 32, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1162, file: !390, line: 117, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !390, line: 117, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1162, file: !390, line: 119, baseType: !123, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !390, line: 120, baseType: !1179, size: 64, offset: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !390, line: 120, size: 64, elements: !1180)
!1180 = !{!1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1179, file: !390, line: 121, baseType: !123, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1179, file: !390, line: 122, baseType: !99, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !390, line: 123, baseType: !1184, size: 32)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !390, line: 123, size: 32, elements: !1185)
!1185 = !{!1186, !1187, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1184, file: !390, line: 124, baseType: !28, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1184, file: !390, line: 125, baseType: !28, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1184, file: !390, line: 126, baseType: !28, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 130, baseType: !1190, size: 192)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 130, size: 192, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1190, file: !390, line: 131, baseType: !99, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1190, file: !390, line: 134, baseType: !21, size: 8, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1190, file: !390, line: 135, baseType: !21, size: 8, offset: 72)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1190, file: !390, line: 136, baseType: !435, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1190, file: !390, line: 137, baseType: !28, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 139, baseType: !1198, size: 256)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 139, size: 256, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1198, file: !390, line: 140, baseType: !99, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1198, file: !390, line: 141, baseType: !435, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1198, file: !390, line: 143, baseType: !253, size: 128, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 145, baseType: !1204, size: 256)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 145, size: 256, elements: !1205)
!1205 = !{!1206, !1207, !1209, !1210, !1215}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1204, file: !390, line: 146, baseType: !99, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1204, file: !390, line: 147, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !382, line: 509, baseType: !1140)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1204, file: !390, line: 148, baseType: !99, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !390, line: 149, baseType: !1211, size: 64, offset: 192)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !390, line: 149, size: 64, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1211, file: !390, line: 150, baseType: !406, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1211, file: !390, line: 151, baseType: !435, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1204, file: !390, line: 156, baseType: !266, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !390, line: 159, baseType: !1217, size: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !390, line: 159, size: 128, elements: !1218)
!1218 = !{!1219, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1217, file: !390, line: 161, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !390, line: 161, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1217, file: !390, line: 162, baseType: !123, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1145, file: !390, line: 176, baseType: !841, size: 128, align: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !390, line: 179, baseType: !1225, size: 32, offset: 384)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !390, line: 179, size: 32, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1225, file: !390, line: 184, baseType: !435, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1225, file: !390, line: 192, baseType: !28, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1225, file: !390, line: 194, baseType: !28, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1225, file: !390, line: 195, baseType: !49, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1141, file: !390, line: 199, baseType: !435, size: 32, offset: 416)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1137, file: !490, line: 67, baseType: !26, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1137, file: !490, line: 68, baseType: !26, size: 32, offset: 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !542, file: !543, line: 1206, baseType: !49, size: 32, offset: 12736)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !542, file: !543, line: 1207, baseType: !49, size: 32, offset: 12768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !542, file: !543, line: 1209, baseType: !99, size: 64, offset: 12800)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !542, file: !543, line: 1219, baseType: !31, size: 64, offset: 12864)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !542, file: !543, line: 1220, baseType: !31, size: 64, offset: 12928)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !542, file: !543, line: 1317, baseType: !49, size: 32, offset: 12992)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !542, file: !543, line: 1319, baseType: !541, size: 64, offset: 13056)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !542, file: !543, line: 1322, baseType: !1242, size: 64, offset: 13120)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1244, line: 56, size: 512, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1252, !1253, !1254}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1243, file: !1244, line: 57, baseType: !1242, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1243, file: !1244, line: 58, baseType: !123, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1243, file: !1244, line: 59, baseType: !99, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1243, file: !1244, line: 60, baseType: !99, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1243, file: !1244, line: 61, baseType: !1251, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1243, file: !1244, line: 62, baseType: !28, size: 32, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1243, file: !1244, line: 63, baseType: !126, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1243, file: !1244, line: 64, baseType: !1255, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !542, file: !543, line: 1326, baseType: !555, size: 32, offset: 13184)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !542, file: !543, line: 1342, baseType: !123, size: 64, offset: 13248)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !542, file: !543, line: 1343, baseType: !32, size: 64, offset: 13312)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !542, file: !543, line: 1344, baseType: !31, size: 64, offset: 13376)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !542, file: !543, line: 1345, baseType: !32, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !542, file: !543, line: 1346, baseType: !32, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !542, file: !543, line: 1347, baseType: !32, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !542, file: !543, line: 1348, baseType: !841, size: 128, align: 64, offset: 13504)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !542, file: !543, line: 1358, baseType: !1266, size: 34816, offset: 13824)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1267, line: 485, size: 34816, elements: !1268)
!1267 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1298, !1299, !1300, !1301, !1302, !1303, !1306, !1307, !1308}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1266, file: !1267, line: 487, baseType: !1270, size: 192)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 192, elements: !308)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1272, line: 16, size: 64, elements: !1273)
!1272 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1271, file: !1272, line: 17, baseType: !525, size: 16)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1271, file: !1272, line: 18, baseType: !525, size: 16, offset: 16)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1271, file: !1272, line: 19, baseType: !525, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1271, file: !1272, line: 19, baseType: !525, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1271, file: !1272, line: 19, baseType: !525, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1271, file: !1272, line: 19, baseType: !525, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1271, file: !1272, line: 19, baseType: !525, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1271, file: !1272, line: 20, baseType: !525, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1271, file: !1272, line: 20, baseType: !525, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1271, file: !1272, line: 20, baseType: !525, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1271, file: !1272, line: 20, baseType: !525, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1271, file: !1272, line: 20, baseType: !525, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1271, file: !1272, line: 20, baseType: !525, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1266, file: !1267, line: 491, baseType: !99, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1266, file: !1267, line: 495, baseType: !348, size: 16, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1266, file: !1267, line: 496, baseType: !348, size: 16, offset: 272)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1266, file: !1267, line: 497, baseType: !348, size: 16, offset: 288)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1266, file: !1267, line: 498, baseType: !348, size: 16, offset: 304)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1266, file: !1267, line: 502, baseType: !99, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1266, file: !1267, line: 503, baseType: !99, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1266, file: !1267, line: 514, baseType: !1295, size: 256, offset: 448)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1296, size: 256, elements: !494)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1267, line: 483, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1266, file: !1267, line: 516, baseType: !99, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1266, file: !1267, line: 518, baseType: !99, size: 64, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1266, file: !1267, line: 520, baseType: !99, size: 64, offset: 832)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1266, file: !1267, line: 521, baseType: !99, size: 64, offset: 896)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1266, file: !1267, line: 522, baseType: !99, size: 64, offset: 960)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1266, file: !1267, line: 528, baseType: !1304, size: 64, offset: 1024)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1267, line: 10, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1266, file: !1267, line: 535, baseType: !99, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1266, file: !1267, line: 537, baseType: !28, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1266, file: !1267, line: 540, baseType: !1309, size: 33280, offset: 1536)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1310, line: 317, size: 33280, elements: !1311)
!1310 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1309, file: !1310, line: 330, baseType: !28, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1309, file: !1310, line: 337, baseType: !99, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1309, file: !1310, line: 348, baseType: !1315, size: 32768, offset: 512)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1310, line: 304, size: 32768, elements: !1316)
!1316 = !{!1317, !1332, !1371, !1421, !1438}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1315, file: !1310, line: 305, baseType: !1318, size: 896)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1310, line: 12, size: 896, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1331}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1318, file: !1310, line: 13, baseType: !24, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1318, file: !1310, line: 14, baseType: !24, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1318, file: !1310, line: 15, baseType: !24, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1318, file: !1310, line: 16, baseType: !24, size: 32, offset: 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1318, file: !1310, line: 17, baseType: !24, size: 32, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1318, file: !1310, line: 18, baseType: !24, size: 32, offset: 160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1318, file: !1310, line: 19, baseType: !24, size: 32, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1318, file: !1310, line: 22, baseType: !1328, size: 640, offset: 224)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 640, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 20)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1318, file: !1310, line: 25, baseType: !24, size: 32, offset: 864)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1315, file: !1310, line: 306, baseType: !1333, size: 4096, align: 128)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1310, line: 34, size: 4096, align: 128, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1354, !1355, !1356, !1360, !1362, !1366}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1333, file: !1310, line: 35, baseType: !525, size: 16)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1333, file: !1310, line: 36, baseType: !525, size: 16, offset: 16)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1333, file: !1310, line: 37, baseType: !525, size: 16, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1333, file: !1310, line: 38, baseType: !525, size: 16, offset: 48)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1310, line: 39, baseType: !1340, size: 128, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1310, line: 39, size: 128, elements: !1341)
!1341 = !{!1342, !1347}
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1310, line: 40, baseType: !1343, size: 128)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !1310, line: 40, size: 128, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1343, file: !1310, line: 41, baseType: !31, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1343, file: !1310, line: 42, baseType: !31, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1310, line: 44, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !1310, line: 44, size: 128, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1348, file: !1310, line: 45, baseType: !24, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1348, file: !1310, line: 46, baseType: !24, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1348, file: !1310, line: 47, baseType: !24, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1348, file: !1310, line: 48, baseType: !24, size: 32, offset: 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1333, file: !1310, line: 51, baseType: !24, size: 32, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1333, file: !1310, line: 52, baseType: !24, size: 32, offset: 224)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1333, file: !1310, line: 55, baseType: !1357, size: 1024, offset: 256)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1333, file: !1310, line: 58, baseType: !1361, size: 2048, offset: 1280)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !312)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1333, file: !1310, line: 60, baseType: !1363, size: 384, offset: 3328)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 384, elements: !1364)
!1364 = !{!1365}
!1365 = !DISubrange(count: 12)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1310, line: 62, baseType: !1367, size: 384, offset: 3712)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1310, line: 62, size: 384, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1367, file: !1310, line: 63, baseType: !1363, size: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1367, file: !1310, line: 64, baseType: !1363, size: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1315, file: !1310, line: 307, baseType: !1372, size: 1088)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1310, line: 79, size: 1088, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1420}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1372, file: !1310, line: 80, baseType: !24, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1372, file: !1310, line: 81, baseType: !24, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1372, file: !1310, line: 82, baseType: !24, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1372, file: !1310, line: 83, baseType: !24, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1372, file: !1310, line: 84, baseType: !24, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1372, file: !1310, line: 85, baseType: !24, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1372, file: !1310, line: 86, baseType: !24, size: 32, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1372, file: !1310, line: 88, baseType: !1328, size: 640, offset: 224)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1372, file: !1310, line: 89, baseType: !159, size: 8, offset: 864)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1372, file: !1310, line: 90, baseType: !159, size: 8, offset: 872)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1372, file: !1310, line: 91, baseType: !159, size: 8, offset: 880)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1372, file: !1310, line: 92, baseType: !159, size: 8, offset: 888)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1372, file: !1310, line: 93, baseType: !159, size: 8, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1372, file: !1310, line: 94, baseType: !159, size: 8, offset: 904)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1372, file: !1310, line: 95, baseType: !1389, size: 64, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1391, line: 11, size: 128, elements: !1392)
!1391 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1390, file: !1391, line: 12, baseType: !341, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1390, file: !1391, line: 13, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1397, line: 56, size: 1344, elements: !1398)
!1397 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1396, file: !1397, line: 61, baseType: !99, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1396, file: !1397, line: 62, baseType: !99, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1396, file: !1397, line: 63, baseType: !99, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1396, file: !1397, line: 64, baseType: !99, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1396, file: !1397, line: 65, baseType: !99, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1396, file: !1397, line: 66, baseType: !99, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1396, file: !1397, line: 68, baseType: !99, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1396, file: !1397, line: 69, baseType: !99, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1396, file: !1397, line: 70, baseType: !99, size: 64, offset: 512)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1396, file: !1397, line: 71, baseType: !99, size: 64, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1396, file: !1397, line: 72, baseType: !99, size: 64, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1396, file: !1397, line: 73, baseType: !99, size: 64, offset: 704)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1396, file: !1397, line: 74, baseType: !99, size: 64, offset: 768)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1396, file: !1397, line: 75, baseType: !99, size: 64, offset: 832)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1396, file: !1397, line: 76, baseType: !99, size: 64, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1396, file: !1397, line: 81, baseType: !99, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1396, file: !1397, line: 83, baseType: !99, size: 64, offset: 1024)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1396, file: !1397, line: 84, baseType: !99, size: 64, offset: 1088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !1397, line: 85, baseType: !99, size: 64, offset: 1152)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1396, file: !1397, line: 86, baseType: !99, size: 64, offset: 1216)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1396, file: !1397, line: 87, baseType: !99, size: 64, offset: 1280)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1372, file: !1310, line: 96, baseType: !24, size: 32, offset: 1024)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1315, file: !1310, line: 308, baseType: !1422, size: 4608, align: 512)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1310, line: 289, size: 4608, align: 512, elements: !1423)
!1423 = !{!1424, !1425, !1434}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1422, file: !1310, line: 290, baseType: !1333, size: 4096, align: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1422, file: !1310, line: 291, baseType: !1426, size: 512, offset: 4096)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1310, line: 268, size: 512, elements: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1426, file: !1310, line: 269, baseType: !31, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1426, file: !1310, line: 270, baseType: !31, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1426, file: !1310, line: 271, baseType: !1431, size: 384, offset: 128)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 6)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1422, file: !1310, line: 292, baseType: !1435, offset: 4608)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 0)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1315, file: !1310, line: 309, baseType: !1439, size: 32768)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 4096)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !390, line: 378, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !534, file: !390, line: 384, baseType: !863, size: 192, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !410, file: !390, line: 500, baseType: !266, offset: 6656)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !410, file: !390, line: 501, baseType: !1447, size: 64, offset: 6656)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !390, line: 387, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !410, file: !390, line: 516, baseType: !1450, size: 64, offset: 6720)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1452, line: 18, flags: DIFlagFwdDecl)
!1452 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !410, file: !390, line: 519, baseType: !380, size: 64, offset: 6784)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !410, file: !390, line: 521, baseType: !1455, size: 64, offset: 6848)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !390, line: 521, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !410, file: !390, line: 545, baseType: !435, size: 32, offset: 6912)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !410, file: !390, line: 548, baseType: !216, size: 8, offset: 6944)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !410, file: !390, line: 550, baseType: !1460, offset: 6952)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1461, line: 142, elements: !280)
!1461 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !410, file: !390, line: 554, baseType: !1463, size: 256, offset: 6976)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1464, line: 102, size: 256, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1463, file: !1464, line: 103, baseType: !443, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1463, file: !1464, line: 104, baseType: !253, size: 128, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1463, file: !1464, line: 105, baseType: !1469, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1464, line: 21, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !410, file: !390, line: 557, baseType: !24, size: 32, offset: 7232)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !407, file: !390, line: 565, baseType: !1476, offset: 7296)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: -1)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !389, file: !390, line: 333, baseType: !1480, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !382, line: 284, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !382, line: 284, size: 64, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1481, file: !382, line: 284, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !433, line: 19, baseType: !99)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !389, file: !390, line: 334, baseType: !99, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !389, file: !390, line: 343, baseType: !1487, size: 256, offset: 704)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !390, line: 340, size: 256, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1487, file: !390, line: 341, baseType: !397, size: 192, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1487, file: !390, line: 342, baseType: !99, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !389, file: !390, line: 351, baseType: !253, size: 128, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !389, file: !390, line: 353, baseType: !1493, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !390, line: 353, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !389, file: !390, line: 356, baseType: !1496, size: 64, offset: 1152)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !390, line: 356, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !389, file: !390, line: 359, baseType: !99, size: 64, offset: 1216)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !389, file: !390, line: 361, baseType: !380, size: 64, offset: 1280)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !389, file: !390, line: 362, baseType: !123, size: 64, offset: 1344)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !389, file: !390, line: 365, baseType: !443, size: 64, offset: 1408)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !389, file: !390, line: 373, baseType: !1504, offset: 1472)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !390, line: 296, elements: !280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !359, file: !332, line: 90, baseType: !354, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !359, file: !332, line: 91, baseType: !1507, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !322, file: !249, line: 143, baseType: !1509, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1512, !259}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1515, line: 39, size: 384, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1523, !1527, !1531, !1537, !1541}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1514, file: !1515, line: 40, baseType: !1518, size: 32)
!1518 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1515, line: 26, baseType: !28, size: 32, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!1521 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!1522 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1514, file: !1515, line: 41, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!216}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1514, file: !1515, line: 42, baseType: !1528, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!123}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1514, file: !1515, line: 43, baseType: !1532, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1255, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1515, line: 19, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1514, file: !1515, line: 44, baseType: !1538, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1255}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1514, file: !1515, line: 45, baseType: !1542, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !123}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !322, file: !249, line: 144, baseType: !1546, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1255, !259}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !322, file: !249, line: 145, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !259, !1553, !1559}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1452, line: 23, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1452, line: 21, size: 32, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1555, file: !1452, line: 22, baseType: !1558, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !20, line: 32, baseType: !1023)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1452, line: 28, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1452, line: 26, size: 32, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1561, file: !1452, line: 27, baseType: !1564, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !20, line: 33, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !116, line: 50, baseType: !28)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !248, file: !249, line: 70, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1569, line: 123, size: 1024, elements: !1570)
!1569 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1713, !1714, !1715, !1716, !1717}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1568, file: !1569, line: 124, baseType: !435, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1568, file: !1569, line: 125, baseType: !435, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1568, file: !1569, line: 135, baseType: !1567, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !1569, line: 136, baseType: !45, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1568, file: !1569, line: 138, baseType: !397, size: 192, align: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1568, file: !1569, line: 140, baseType: !1255, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1568, file: !1569, line: 141, baseType: !28, size: 32, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1569, line: 142, baseType: !1579, size: 256, offset: 512)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !1569, line: 142, size: 256, elements: !1580)
!1580 = !{!1581, !1636, !1640}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1579, file: !1569, line: 143, baseType: !1582, size: 192)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1569, line: 91, size: 192, elements: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1582, file: !1569, line: 92, baseType: !99, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1582, file: !1569, line: 94, baseType: !414, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1582, file: !1569, line: 100, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1569, line: 180, size: 704, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1606, !1607, !1608, !1634, !1635}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1588, file: !1569, line: 182, baseType: !1567, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1588, file: !1569, line: 183, baseType: !28, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1588, file: !1569, line: 186, baseType: !1593, size: 192, offset: 128)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1594, line: 19, size: 192, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1595 = !{!1596, !1604, !1605}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1593, file: !1594, line: 20, baseType: !1597, size: 128)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1598, line: 292, size: 128, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1601, !1603}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1597, file: !1598, line: 293, baseType: !266)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1597, file: !1598, line: 295, baseType: !1602, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !20, line: 148, baseType: !28)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1597, file: !1598, line: 296, baseType: !123, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1593, file: !1594, line: 21, baseType: !28, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1593, file: !1594, line: 22, baseType: !28, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1588, file: !1569, line: 187, baseType: !24, size: 32, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1588, file: !1569, line: 188, baseType: !24, size: 32, offset: 352)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1588, file: !1569, line: 189, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1569, line: 168, size: 320, elements: !1611)
!1611 = !{!1612, !1618, !1622, !1626, !1630}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1610, file: !1569, line: 169, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!49, !1616, !1587}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !382, line: 539, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1610, file: !1569, line: 171, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!49, !1567, !45, !347}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1610, file: !1569, line: 173, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!49, !1567}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1610, file: !1569, line: 174, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!49, !1567, !1567, !45}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1610, file: !1569, line: 176, baseType: !1631, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!49, !1616, !1567, !1587}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1588, file: !1569, line: 192, baseType: !253, size: 128, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1588, file: !1569, line: 194, baseType: !834, size: 128, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1579, file: !1569, line: 144, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1569, line: 103, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1637, file: !1569, line: 104, baseType: !1567, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1579, file: !1569, line: 145, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1569, line: 107, size: 256, elements: !1642)
!1642 = !{!1643, !1708, !1711, !1712}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1641, file: !1569, line: 108, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1569, line: 217, size: 768, elements: !1647)
!1647 = !{!1648, !1668, !1672, !1676, !1681, !1685, !1689, !1693, !1694, !1695, !1696, !1704}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1646, file: !1569, line: 222, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!49, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1569, line: 197, size: 1088, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1653, file: !1569, line: 199, baseType: !1567, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1653, file: !1569, line: 200, baseType: !380, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1653, file: !1569, line: 201, baseType: !1616, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1653, file: !1569, line: 202, baseType: !123, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1653, file: !1569, line: 205, baseType: !512, size: 192, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1653, file: !1569, line: 206, baseType: !512, size: 192, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1653, file: !1569, line: 207, baseType: !49, size: 32, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1653, file: !1569, line: 208, baseType: !253, size: 128, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1653, file: !1569, line: 209, baseType: !307, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1653, file: !1569, line: 211, baseType: !118, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1653, file: !1569, line: 212, baseType: !216, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1653, file: !1569, line: 213, baseType: !216, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1653, file: !1569, line: 214, baseType: !1496, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1646, file: !1569, line: 223, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1652}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1646, file: !1569, line: 236, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!49, !1616, !123}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1646, file: !1569, line: 238, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!123, !1616, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1646, file: !1569, line: 239, baseType: !1682, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!123, !1616, !123, !1680}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1646, file: !1569, line: 240, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1616, !123}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1646, file: !1569, line: 242, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!338, !1652, !307, !118, !114}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1646, file: !1569, line: 252, baseType: !118, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1646, file: !1569, line: 259, baseType: !216, size: 8, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1646, file: !1569, line: 260, baseType: !1690, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1646, file: !1569, line: 263, baseType: !1697, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700, !1652, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1701, line: 52, baseType: !28)
!1701 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1569, line: 27, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1646, file: !1569, line: 266, baseType: !1705, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!49, !1652, !388}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1641, file: !1569, line: 109, baseType: !1709, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1569, line: 31, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1641, file: !1569, line: 110, baseType: !114, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1641, file: !1569, line: 111, baseType: !1567, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1568, file: !1569, line: 148, baseType: !123, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1568, file: !1569, line: 154, baseType: !31, size: 64, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1568, file: !1569, line: 156, baseType: !348, size: 16, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1568, file: !1569, line: 157, baseType: !347, size: 16, offset: 912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1568, file: !1569, line: 158, baseType: !1718, size: 64, offset: 960)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1569, line: 32, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !248, file: !249, line: 71, baseType: !1721, size: 32, offset: 448)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1722, line: 19, size: 32, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1721, file: !1722, line: 20, baseType: !555, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !248, file: !249, line: 75, baseType: !28, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !248, file: !249, line: 76, baseType: !28, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !248, file: !249, line: 77, baseType: !28, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !248, file: !249, line: 78, baseType: !28, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !248, file: !249, line: 79, baseType: !28, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !244, file: !245, line: 463, baseType: !1731, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !244, file: !245, line: 465, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !245, line: 36, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !244, file: !245, line: 467, baseType: !45, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !244, file: !245, line: 468, baseType: !1737, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !245, line: 87, size: 384, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1747, !1752, !1756}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1739, file: !245, line: 88, baseType: !45, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1739, file: !245, line: 89, baseType: !356, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1739, file: !245, line: 90, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!49, !1731, !302}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1739, file: !245, line: 91, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!307, !1731, !1751, !1553, !1559}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1739, file: !245, line: 93, baseType: !1753, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1731}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1739, file: !245, line: 95, baseType: !1757, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1760, line: 278, size: 1472, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1759, file: !1760, line: 279, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!49, !1731}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1759, file: !1760, line: 280, baseType: !1753, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1759, file: !1760, line: 281, baseType: !1763, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1759, file: !1760, line: 282, baseType: !1763, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1759, file: !1760, line: 283, baseType: !1763, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1759, file: !1760, line: 284, baseType: !1763, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1759, file: !1760, line: 285, baseType: !1763, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1759, file: !1760, line: 286, baseType: !1763, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1759, file: !1760, line: 287, baseType: !1763, size: 64, offset: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1759, file: !1760, line: 288, baseType: !1763, size: 64, offset: 576)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1759, file: !1760, line: 289, baseType: !1763, size: 64, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1759, file: !1760, line: 290, baseType: !1763, size: 64, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1759, file: !1760, line: 291, baseType: !1763, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1759, file: !1760, line: 292, baseType: !1763, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1759, file: !1760, line: 293, baseType: !1763, size: 64, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1759, file: !1760, line: 294, baseType: !1763, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1759, file: !1760, line: 295, baseType: !1763, size: 64, offset: 1024)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1759, file: !1760, line: 296, baseType: !1763, size: 64, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1759, file: !1760, line: 297, baseType: !1763, size: 64, offset: 1152)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1759, file: !1760, line: 298, baseType: !1763, size: 64, offset: 1216)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1759, file: !1760, line: 299, baseType: !1763, size: 64, offset: 1280)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1759, file: !1760, line: 300, baseType: !1763, size: 64, offset: 1344)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1759, file: !1760, line: 301, baseType: !1763, size: 64, offset: 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !244, file: !245, line: 470, baseType: !1789, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1791, line: 82, size: 1408, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1881, !1884, !1887}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !1791, line: 83, baseType: !45, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1790, file: !1791, line: 84, baseType: !45, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1790, file: !1791, line: 85, baseType: !1731, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1790, file: !1791, line: 86, baseType: !356, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1790, file: !1791, line: 87, baseType: !356, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1790, file: !1791, line: 88, baseType: !356, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1790, file: !1791, line: 90, baseType: !1800, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!49, !1731, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1805, line: 95, size: 1152, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1818, !1832, !1845, !1846, !1847, !1848, !1849, !1857, !1858, !1859, !1860, !1861, !1862}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1804, file: !1805, line: 96, baseType: !45, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1804, file: !1805, line: 97, baseType: !1789, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1804, file: !1805, line: 99, baseType: !240, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1804, file: !1805, line: 100, baseType: !45, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1804, file: !1805, line: 102, baseType: !216, size: 8, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1804, file: !1805, line: 103, baseType: !1813, size: 32, offset: 288)
!1813 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1805, line: 44, baseType: !28, size: 32, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!1816 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!1817 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1804, file: !1805, line: 105, baseType: !1819, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1822, line: 262, size: 1600, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1826, !1827, !1831}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1821, file: !1822, line: 263, baseType: !1825, size: 256)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !1358)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !1822, line: 264, baseType: !1825, size: 256, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1821, file: !1822, line: 265, baseType: !1828, size: 1024, offset: 512)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, elements: !1829)
!1829 = !{!1830}
!1830 = !DISubrange(count: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1821, file: !1822, line: 266, baseType: !1255, size: 64, offset: 1536)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1804, file: !1805, line: 106, baseType: !1833, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1822, line: 210, size: 256, elements: !1836)
!1836 = !{!1837, !1841, !1843, !1844}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1835, file: !1822, line: 211, baseType: !1838, size: 72)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 72, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 9)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1835, file: !1822, line: 212, baseType: !1842, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1822, line: 14, baseType: !99)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1835, file: !1822, line: 213, baseType: !26, size: 32, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1835, file: !1822, line: 214, baseType: !26, size: 32, offset: 224)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1804, file: !1805, line: 108, baseType: !1763, size: 64, offset: 448)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1804, file: !1805, line: 109, baseType: !1753, size: 64, offset: 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1804, file: !1805, line: 110, baseType: !1763, size: 64, offset: 576)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1804, file: !1805, line: 111, baseType: !1753, size: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1804, file: !1805, line: 112, baseType: !1850, size: 64, offset: 704)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!49, !1731, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1760, line: 52, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1760, line: 50, size: 32, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1854, file: !1760, line: 51, baseType: !49, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1804, file: !1805, line: 113, baseType: !1763, size: 64, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1804, file: !1805, line: 114, baseType: !356, size: 64, offset: 832)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1804, file: !1805, line: 115, baseType: !356, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1804, file: !1805, line: 117, baseType: !1757, size: 64, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1804, file: !1805, line: 118, baseType: !1753, size: 64, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1804, file: !1805, line: 120, baseType: !1863, size: 64, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1805, line: 120, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1790, file: !1791, line: 91, baseType: !1744, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1790, file: !1791, line: 92, baseType: !1763, size: 64, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1790, file: !1791, line: 93, baseType: !1753, size: 64, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1790, file: !1791, line: 94, baseType: !1763, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1790, file: !1791, line: 95, baseType: !1753, size: 64, offset: 704)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1790, file: !1791, line: 97, baseType: !1763, size: 64, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1790, file: !1791, line: 98, baseType: !1763, size: 64, offset: 832)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1790, file: !1791, line: 100, baseType: !1850, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1790, file: !1791, line: 101, baseType: !1763, size: 64, offset: 960)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1790, file: !1791, line: 103, baseType: !1763, size: 64, offset: 1024)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1790, file: !1791, line: 105, baseType: !1763, size: 64, offset: 1088)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1790, file: !1791, line: 107, baseType: !1757, size: 64, offset: 1152)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1790, file: !1791, line: 109, baseType: !1878, size: 64, offset: 1216)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1791, line: 109, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1790, file: !1791, line: 111, baseType: !1882, size: 64, offset: 1280)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1791, line: 111, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1790, file: !1791, line: 112, baseType: !1885, offset: 1344)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1886, line: 187, elements: !280)
!1886 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1790, file: !1791, line: 114, baseType: !216, size: 8, offset: 1344)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !244, file: !245, line: 471, baseType: !1803, size: 64, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !244, file: !245, line: 473, baseType: !123, size: 64, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !244, file: !245, line: 475, baseType: !123, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !244, file: !245, line: 480, baseType: !512, size: 192, offset: 1024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !244, file: !245, line: 484, baseType: !1893, size: 576, offset: 1216)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !245, line: 361, size: 576, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1893, file: !245, line: 362, baseType: !253, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1893, file: !245, line: 363, baseType: !253, size: 128, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1893, file: !245, line: 364, baseType: !253, size: 128, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1893, file: !245, line: 365, baseType: !253, size: 128, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1893, file: !245, line: 366, baseType: !216, size: 8, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1893, file: !245, line: 367, baseType: !1901, size: 32, offset: 544)
!1901 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !245, line: 343, baseType: !28, size: 32, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906}
!1903 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!1904 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!1905 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!1906 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !244, file: !245, line: 485, baseType: !1908, size: 2304, offset: 1792)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1760, line: 565, size: 2304, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1995, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2018, !2022}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1908, file: !1760, line: 566, baseType: !1853, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1908, file: !1760, line: 567, baseType: !28, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1908, file: !1760, line: 568, baseType: !28, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1908, file: !1760, line: 569, baseType: !216, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1908, file: !1760, line: 570, baseType: !216, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1908, file: !1760, line: 571, baseType: !216, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1908, file: !1760, line: 572, baseType: !216, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1908, file: !1760, line: 573, baseType: !216, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1908, file: !1760, line: 574, baseType: !216, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1908, file: !1760, line: 575, baseType: !216, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1908, file: !1760, line: 576, baseType: !216, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1908, file: !1760, line: 577, baseType: !24, size: 32, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1908, file: !1760, line: 578, baseType: !266, offset: 96)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1908, file: !1760, line: 580, baseType: !253, size: 128, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1908, file: !1760, line: 581, baseType: !863, size: 192, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1908, file: !1760, line: 582, baseType: !1926, size: 64, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1928, line: 43, size: 1472, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1937, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1927, file: !1928, line: 44, baseType: !45, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1927, file: !1928, line: 45, baseType: !49, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1927, file: !1928, line: 46, baseType: !253, size: 128, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1927, file: !1928, line: 47, baseType: !266, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1927, file: !1928, line: 48, baseType: !1935, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1760, line: 533, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1927, file: !1928, line: 49, baseType: !1938, size: 320, offset: 320)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1939, line: 11, size: 320, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942, !1943, !1948}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1938, file: !1939, line: 16, baseType: !827, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1938, file: !1939, line: 17, baseType: !99, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1938, file: !1939, line: 18, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1938, file: !1939, line: 19, baseType: !24, size: 32, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1927, file: !1928, line: 50, baseType: !99, size: 64, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1927, file: !1928, line: 51, baseType: !626, size: 64, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1927, file: !1928, line: 52, baseType: !626, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1927, file: !1928, line: 53, baseType: !626, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1927, file: !1928, line: 54, baseType: !626, size: 64, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1927, file: !1928, line: 55, baseType: !626, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1927, file: !1928, line: 56, baseType: !99, size: 64, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1927, file: !1928, line: 57, baseType: !99, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1927, file: !1928, line: 58, baseType: !99, size: 64, offset: 1152)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1927, file: !1928, line: 59, baseType: !99, size: 64, offset: 1216)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1927, file: !1928, line: 60, baseType: !99, size: 64, offset: 1280)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1927, file: !1928, line: 61, baseType: !1731, size: 64, offset: 1344)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1927, file: !1928, line: 62, baseType: !216, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1927, file: !1928, line: 63, baseType: !216, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1908, file: !1760, line: 583, baseType: !216, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1908, file: !1760, line: 584, baseType: !216, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1908, file: !1760, line: 585, baseType: !216, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1908, file: !1760, line: 586, baseType: !28, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1908, file: !1760, line: 587, baseType: !28, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1908, file: !1760, line: 592, baseType: !617, size: 512, offset: 576)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1908, file: !1760, line: 593, baseType: !31, size: 64, offset: 1088)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1908, file: !1760, line: 594, baseType: !1463, size: 256, offset: 1152)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1908, file: !1760, line: 595, baseType: !834, size: 128, offset: 1408)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1908, file: !1760, line: 596, baseType: !1935, size: 64, offset: 1536)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1908, file: !1760, line: 597, baseType: !435, size: 32, offset: 1600)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1908, file: !1760, line: 598, baseType: !435, size: 32, offset: 1632)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1908, file: !1760, line: 599, baseType: !28, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1908, file: !1760, line: 600, baseType: !28, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1908, file: !1760, line: 601, baseType: !28, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1908, file: !1760, line: 602, baseType: !28, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1908, file: !1760, line: 603, baseType: !28, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1908, file: !1760, line: 604, baseType: !216, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1908, file: !1760, line: 605, baseType: !28, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1908, file: !1760, line: 606, baseType: !28, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1908, file: !1760, line: 607, baseType: !28, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1908, file: !1760, line: 608, baseType: !28, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1908, file: !1760, line: 609, baseType: !28, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1908, file: !1760, line: 610, baseType: !28, size: 32, offset: 1696)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1908, file: !1760, line: 611, baseType: !1988, size: 32, offset: 1728)
!1988 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1760, line: 524, baseType: !28, size: 32, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1994}
!1990 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!1991 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!1992 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!1993 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!1994 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1908, file: !1760, line: 612, baseType: !1996, size: 32, offset: 1760)
!1996 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1760, line: 502, baseType: !28, size: 32, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!1999 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!2000 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!2001 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1908, file: !1760, line: 613, baseType: !49, size: 32, offset: 1792)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1908, file: !1760, line: 614, baseType: !49, size: 32, offset: 1824)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1908, file: !1760, line: 615, baseType: !31, size: 64, offset: 1856)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1908, file: !1760, line: 616, baseType: !31, size: 64, offset: 1920)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1908, file: !1760, line: 617, baseType: !31, size: 64, offset: 1984)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1908, file: !1760, line: 618, baseType: !31, size: 64, offset: 2048)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1908, file: !1760, line: 620, baseType: !2009, size: 64, offset: 2112)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1760, line: 536, size: 256, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2010, file: !1760, line: 537, baseType: !266)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2010, file: !1760, line: 538, baseType: !28, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2010, file: !1760, line: 540, baseType: !253, size: 128, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2010, file: !1760, line: 543, baseType: !2016, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1760, line: 534, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1908, file: !1760, line: 621, baseType: !2019, size: 64, offset: 2176)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !1731, !787}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1908, file: !1760, line: 622, baseType: !2023, size: 64, offset: 2240)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1760, line: 622, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !244, file: !245, line: 486, baseType: !2026, size: 64, offset: 4096)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1760, line: 642, size: 1792, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2035, !2036, !2037}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2027, file: !1760, line: 643, baseType: !1759, size: 1472)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2027, file: !1760, line: 644, baseType: !1763, size: 64, offset: 1472)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2027, file: !1760, line: 645, baseType: !2032, size: 64, offset: 1536)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1731, !216}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2027, file: !1760, line: 646, baseType: !1763, size: 64, offset: 1600)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2027, file: !1760, line: 647, baseType: !1753, size: 64, offset: 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2027, file: !1760, line: 648, baseType: !1753, size: 64, offset: 1728)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !244, file: !245, line: 493, baseType: !2039, size: 64, offset: 4160)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !245, line: 493, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !244, file: !245, line: 499, baseType: !253, size: 128, offset: 4224)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !244, file: !245, line: 502, baseType: !2043, size: 64, offset: 4352)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !245, line: 502, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !244, file: !245, line: 504, baseType: !2047, size: 64, offset: 4416)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !244, file: !245, line: 505, baseType: !31, size: 64, offset: 4480)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !244, file: !245, line: 510, baseType: !31, size: 64, offset: 4544)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !244, file: !245, line: 511, baseType: !2051, size: 64, offset: 4608)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2053)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !245, line: 511, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !244, file: !245, line: 513, baseType: !2055, size: 64, offset: 4672)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !245, line: 288, size: 128, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2056, file: !245, line: 293, baseType: !28, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2056, file: !245, line: 294, baseType: !99, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !244, file: !245, line: 515, baseType: !253, size: 128, offset: 4736)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !244, file: !245, line: 526, baseType: !2062, offset: 4864)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2063, line: 5, elements: !280)
!2063 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !244, file: !245, line: 528, baseType: !2065, size: 64, offset: 4864)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2067, line: 51, size: 1344, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2072, !2073, !2163, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !2067, line: 52, baseType: !45, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2066, file: !2067, line: 53, baseType: !2071, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2067, line: 28, baseType: !24)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2066, file: !2067, line: 54, baseType: !45, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2066, file: !2067, line: 55, baseType: !2074, size: 192, offset: 192)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2075, line: 17, size: 192, elements: !2076)
!2075 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2076 = !{!2077, !2079, !2162}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2074, file: !2075, line: 18, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2074, file: !2075, line: 19, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2075, line: 110, size: 1152, elements: !2083)
!2083 = !{!2084, !2088, !2092, !2098, !2104, !2108, !2112, !2117, !2121, !2122, !2126, !2130, !2134, !2145, !2146, !2147, !2148, !2158}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2082, file: !2075, line: 111, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2078, !2078}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2082, file: !2075, line: 112, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2078}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2082, file: !2075, line: 113, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!216, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2082, file: !2075, line: 114, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!1255, !2096, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2082, file: !2075, line: 116, baseType: !2105, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!216, !2096, !45}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2082, file: !2075, line: 118, baseType: !2109, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!49, !2096, !45, !28, !123, !118}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2082, file: !2075, line: 123, baseType: !2113, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!49, !2096, !45, !2116, !118}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2082, file: !2075, line: 126, baseType: !2118, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!45, !2096}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2082, file: !2075, line: 127, baseType: !2118, size: 64, offset: 512)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2082, file: !2075, line: 128, baseType: !2123, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2078, !2096}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2082, file: !2075, line: 130, baseType: !2127, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2078, !2096, !2078}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2082, file: !2075, line: 133, baseType: !2131, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2078, !2096, !45}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2082, file: !2075, line: 135, baseType: !2135, size: 64, offset: 768)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!49, !2096, !45, !45, !28, !28, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2075, line: 43, size: 640, elements: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2139, file: !2075, line: 44, baseType: !2078, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2139, file: !2075, line: 45, baseType: !28, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2139, file: !2075, line: 46, baseType: !2144, size: 512, offset: 128)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !660)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2082, file: !2075, line: 140, baseType: !2127, size: 64, offset: 832)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2082, file: !2075, line: 143, baseType: !2123, size: 64, offset: 896)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2082, file: !2075, line: 145, baseType: !2085, size: 64, offset: 960)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2082, file: !2075, line: 146, baseType: !2149, size: 64, offset: 1024)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!49, !2096, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2075, line: 29, size: 128, elements: !2154)
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2153, file: !2075, line: 30, baseType: !28, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2153, file: !2075, line: 31, baseType: !28, size: 32, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2153, file: !2075, line: 32, baseType: !2096, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2082, file: !2075, line: 148, baseType: !2159, size: 64, offset: 1088)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!49, !2096, !1731}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2074, file: !2075, line: 20, baseType: !1731, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2066, file: !2067, line: 57, baseType: !2164, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2067, line: 31, size: 704, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2171}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2165, file: !2067, line: 32, baseType: !307, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2165, file: !2067, line: 33, baseType: !49, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2165, file: !2067, line: 34, baseType: !123, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2165, file: !2067, line: 35, baseType: !2164, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2165, file: !2067, line: 43, baseType: !371, size: 448, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2066, file: !2067, line: 58, baseType: !2164, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2066, file: !2067, line: 59, baseType: !2065, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2066, file: !2067, line: 60, baseType: !2065, size: 64, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2066, file: !2067, line: 61, baseType: !2065, size: 64, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2066, file: !2067, line: 63, baseType: !248, size: 512, offset: 704)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2066, file: !2067, line: 65, baseType: !99, size: 64, offset: 1216)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2066, file: !2067, line: 66, baseType: !123, size: 64, offset: 1280)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !244, file: !245, line: 529, baseType: !2078, size: 64, offset: 4928)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !244, file: !245, line: 534, baseType: !2181, size: 32, offset: 4992)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !20, line: 16, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !20, line: 13, baseType: !24)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !244, file: !245, line: 535, baseType: !24, size: 32, offset: 5024)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !244, file: !245, line: 537, baseType: !266, offset: 5056)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !244, file: !245, line: 538, baseType: !253, size: 128, offset: 5056)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !244, file: !245, line: 540, baseType: !2187, size: 64, offset: 5184)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2189, line: 54, size: 960, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2201, !2205, !2206, !2207, !2208, !2212, !2216, !2217}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2188, file: !2189, line: 55, baseType: !45, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2188, file: !2189, line: 56, baseType: !240, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2188, file: !2189, line: 58, baseType: !356, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2188, file: !2189, line: 59, baseType: !356, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2188, file: !2189, line: 60, baseType: !259, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2188, file: !2189, line: 62, baseType: !1744, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2188, file: !2189, line: 63, baseType: !2198, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!307, !1731, !1751}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2188, file: !2189, line: 65, baseType: !2202, size: 64, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2187}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2188, file: !2189, line: 66, baseType: !1753, size: 64, offset: 512)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2188, file: !2189, line: 68, baseType: !1763, size: 64, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2188, file: !2189, line: 70, baseType: !1512, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2188, file: !2189, line: 71, baseType: !2209, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!1255, !1731}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2188, file: !2189, line: 73, baseType: !2213, size: 64, offset: 768)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !1731, !1553, !1559}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2188, file: !2189, line: 75, baseType: !1757, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2188, file: !2189, line: 77, baseType: !1882, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !244, file: !245, line: 541, baseType: !356, size: 64, offset: 5248)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !244, file: !245, line: 543, baseType: !1753, size: 64, offset: 5312)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !244, file: !245, line: 544, baseType: !2221, size: 64, offset: 5376)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !245, line: 45, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !244, file: !245, line: 545, baseType: !2224, size: 64, offset: 5440)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !245, line: 47, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !244, file: !245, line: 547, baseType: !216, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !244, file: !245, line: 548, baseType: !216, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !244, file: !245, line: 549, baseType: !216, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !244, file: !245, line: 550, baseType: !216, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !15, file: !16, line: 376, baseType: !49, size: 32, offset: 8832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !15, file: !16, line: 377, baseType: !2232, size: 192, offset: 8896)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !16, line: 191, size: 192, elements: !2233)
!2233 = !{!2234, !2237, !2238}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2232, file: !16, line: 192, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1569, line: 21, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2232, file: !16, line: 194, baseType: !45, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2232, file: !16, line: 195, baseType: !45, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !15, file: !16, line: 378, baseType: !2240, size: 64, offset: 9088)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2242, line: 16, flags: DIFlagFwdDecl)
!2242 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !15, file: !16, line: 386, baseType: !59, size: 64, offset: 9152)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !15, file: !16, line: 389, baseType: !253, size: 128, offset: 9216)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !15, file: !16, line: 391, baseType: !2246, size: 320, offset: 9344)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 391, size: 320, elements: !2247)
!2247 = !{!2248, !2255}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2246, file: !16, line: 392, baseType: !2249, size: 320)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !16, line: 211, size: 320, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2249, file: !16, line: 212, baseType: !253, size: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2249, file: !16, line: 213, baseType: !31, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2249, file: !16, line: 214, baseType: !31, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2249, file: !16, line: 215, baseType: !24, size: 32, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2246, file: !16, line: 393, baseType: !2256, size: 256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !16, line: 230, size: 256, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2256, file: !16, line: 231, baseType: !512, size: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2256, file: !16, line: 232, baseType: !28, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !11, file: !12, line: 321, baseType: !2261, size: 288, offset: 9664)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !12, line: 29, size: 288, elements: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2261, file: !12, line: 30, baseType: !28, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2261, file: !12, line: 31, baseType: !28, size: 32, offset: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2261, file: !12, line: 32, baseType: !28, size: 32, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2261, file: !12, line: 33, baseType: !28, size: 32, offset: 96)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2261, file: !12, line: 34, baseType: !28, size: 32, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2261, file: !12, line: 35, baseType: !28, size: 32, offset: 160)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2261, file: !12, line: 36, baseType: !28, size: 32, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2261, file: !12, line: 37, baseType: !28, size: 32, offset: 224)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2261, file: !12, line: 38, baseType: !28, size: 32, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !11, file: !12, line: 322, baseType: !2273, size: 1024, offset: 9984)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !12, line: 291, size: 1024, elements: !2274)
!2274 = !{!2275, !2302, !2303, !2304, !2310, !2363}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2273, file: !12, line: 292, baseType: !2276, size: 192)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !12, line: 187, size: 192, elements: !2277)
!2277 = !{!2278, !2286, !2292, !2299, !2300, !2301}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2276, file: !12, line: 188, baseType: !2279, size: 32)
!2279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_engine_type", file: !12, line: 142, baseType: !28, size: 32, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285}
!2281 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_INVALID", value: 0, isUnsigned: true)
!2282 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_NONE", value: 1, isUnsigned: true)
!2283 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_SOFT", value: 2, isUnsigned: true)
!2284 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_HOST", value: 3, isUnsigned: true)
!2285 = !DIEnumerator(name: "NAND_ECC_ENGINE_TYPE_ON_DIE", value: 4, isUnsigned: true)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2276, file: !12, line: 189, baseType: !2287, size: 32, offset: 32)
!2287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_placement", file: !12, line: 158, baseType: !28, size: 32, elements: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_UNKNOWN", value: 0, isUnsigned: true)
!2290 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_OOB", value: 1, isUnsigned: true)
!2291 = !DIEnumerator(name: "NAND_ECC_PLACEMENT_INTERLEAVED", value: 2, isUnsigned: true)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2276, file: !12, line: 190, baseType: !2293, size: 32, offset: 64)
!2293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_ecc_algo", file: !12, line: 171, baseType: !28, size: 32, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2298}
!2295 = !DIEnumerator(name: "NAND_ECC_ALGO_UNKNOWN", value: 0, isUnsigned: true)
!2296 = !DIEnumerator(name: "NAND_ECC_ALGO_HAMMING", value: 1, isUnsigned: true)
!2297 = !DIEnumerator(name: "NAND_ECC_ALGO_BCH", value: 2, isUnsigned: true)
!2298 = !DIEnumerator(name: "NAND_ECC_ALGO_RS", value: 3, isUnsigned: true)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2276, file: !12, line: 191, baseType: !28, size: 32, offset: 96)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2276, file: !12, line: 192, baseType: !28, size: 32, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !12, line: 193, baseType: !28, size: 32, offset: 160)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2273, file: !12, line: 293, baseType: !2276, size: 192, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2273, file: !12, line: 294, baseType: !2276, size: 192, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2273, file: !12, line: 295, baseType: !2305, size: 320, offset: 576)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !12, line: 238, size: 320, elements: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2305, file: !12, line: 239, baseType: !2276, size: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2305, file: !12, line: 240, baseType: !28, size: 32, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2305, file: !12, line: 241, baseType: !123, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2273, file: !12, line: 296, baseType: !2311, size: 64, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !12, line: 268, size: 64, elements: !2313)
!2313 = !{!2314}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2312, file: !12, line: 269, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !12, line: 255, size: 256, elements: !2317)
!2317 = !{!2318, !2323, !2327, !2362}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2316, file: !12, line: 256, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!49, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2316, file: !12, line: 257, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2322}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2316, file: !12, line: 258, baseType: !2328, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!49, !2322, !2331}
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !12, line: 112, size: 512, elements: !2333)
!2333 = !{!2334, !2339, !2347, !2348, !2349, !2354, !2355, !2356, !2361}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2332, file: !12, line: 113, baseType: !2335, size: 32)
!2335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_page_io_req_type", file: !12, line: 90, baseType: !28, size: 32, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIEnumerator(name: "NAND_PAGE_READ", value: 0, isUnsigned: true)
!2338 = !DIEnumerator(name: "NAND_PAGE_WRITE", value: 1, isUnsigned: true)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2332, file: !12, line: 114, baseType: !2340, size: 160, offset: 32)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !12, line: 77, size: 160, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2340, file: !12, line: 78, baseType: !28, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2340, file: !12, line: 79, baseType: !28, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2340, file: !12, line: 80, baseType: !28, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2340, file: !12, line: 81, baseType: !28, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2340, file: !12, line: 82, baseType: !28, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2332, file: !12, line: 115, baseType: !28, size: 32, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2332, file: !12, line: 116, baseType: !28, size: 32, offset: 224)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2332, file: !12, line: 120, baseType: !2350, size: 64, offset: 256)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !12, line: 117, size: 64, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2350, file: !12, line: 118, baseType: !1255, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2350, file: !12, line: 119, baseType: !123, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2332, file: !12, line: 121, baseType: !28, size: 32, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2332, file: !12, line: 122, baseType: !28, size: 32, offset: 352)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2332, file: !12, line: 126, baseType: !2357, size: 64, offset: 384)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !12, line: 123, size: 64, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2357, file: !12, line: 124, baseType: !1255, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2357, file: !12, line: 125, baseType: !123, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2332, file: !12, line: 127, baseType: !49, size: 32, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2316, file: !12, line: 260, baseType: !2328, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2273, file: !12, line: 297, baseType: !2311, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !11, file: !12, line: 323, baseType: !2365, size: 64, offset: 11008)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !12, line: 61, size: 64, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2365, file: !12, line: 62, baseType: !28, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2365, file: !12, line: 63, baseType: !28, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !11, file: !12, line: 324, baseType: !2370, size: 64, offset: 11072)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !12, line: 205, size: 64, elements: !2371)
!2371 = !{!2372}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2370, file: !12, line: 206, baseType: !98, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !11, file: !12, line: 325, baseType: !2374, size: 64, offset: 11136)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2376)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !12, line: 225, size: 192, elements: !2377)
!2377 = !{!2378, !2384, !2385}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2376, file: !12, line: 226, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!49, !2322, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2376, file: !12, line: 227, baseType: !2379, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2376, file: !12, line: 228, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!216, !2322, !2382}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !7, file: !8, line: 1098, baseType: !2390, size: 96, offset: 11200)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !8, line: 249, size: 96, elements: !2391)
!2391 = !{!2392, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2390, file: !8, line: 250, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !660)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2390, file: !8, line: 251, baseType: !49, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !7, file: !8, line: 1099, baseType: !2396, size: 704, offset: 11328)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !8, line: 230, size: 704, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2402, !2403}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2396, file: !8, line: 232, baseType: !45, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2396, file: !8, line: 233, baseType: !216, size: 8, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2396, file: !8, line: 234, baseType: !2401, size: 256, offset: 128)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !494)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2396, file: !8, line: 235, baseType: !2401, size: 256, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2396, file: !8, line: 238, baseType: !2404, size: 64, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2406, line: 167, size: 832, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2405, file: !2406, line: 168, baseType: !49, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2405, file: !2406, line: 169, baseType: !525, size: 16, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2405, file: !2406, line: 170, baseType: !525, size: 16, offset: 48)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2405, file: !2406, line: 171, baseType: !525, size: 16, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2405, file: !2406, line: 172, baseType: !525, size: 16, offset: 80)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2405, file: !2406, line: 173, baseType: !525, size: 16, offset: 96)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2405, file: !2406, line: 174, baseType: !525, size: 16, offset: 112)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2405, file: !2406, line: 175, baseType: !2416, size: 704, offset: 128)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 704, elements: !2417)
!2417 = !{!2418}
!2418 = !DISubrange(count: 88)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !7, file: !8, line: 1100, baseType: !2420, size: 128, offset: 12032)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !8, line: 1036, size: 128, elements: !2421)
!2421 = !{!2422, !2513}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2420, file: !8, line: 1037, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !2426, line: 61, size: 192, elements: !2427)
!2426 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2429, !2430}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2425, file: !2426, line: 62, baseType: !49, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2425, file: !2426, line: 63, baseType: !307, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2425, file: !2426, line: 64, baseType: !2431, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !2426, line: 47, size: 256, elements: !2434)
!2434 = !{!2435, !2437, !2441, !2442}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2433, file: !2426, line: 48, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2433, file: !2426, line: 49, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!49, !6}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2433, file: !2426, line: 50, baseType: !2436, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !2433, file: !2426, line: 51, baseType: !2443, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !6, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2406, line: 54, size: 2048, elements: !2448)
!2448 = !{!2449, !2451, !2453, !2454, !2455, !2457, !2458, !2459, !2463, !2465, !2467, !2468, !2469, !2473, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2447, file: !2406, line: 57, baseType: !2450, size: 32)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32, elements: !494)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2447, file: !2406, line: 58, baseType: !2452, size: 16, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1701, line: 29, baseType: !526)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2447, file: !2406, line: 59, baseType: !2452, size: 16, offset: 48)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2447, file: !2406, line: 60, baseType: !2452, size: 16, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2447, file: !2406, line: 61, baseType: !2456, size: 16, offset: 80)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 16, elements: !1099)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2447, file: !2406, line: 62, baseType: !2452, size: 16, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2447, file: !2406, line: 63, baseType: !159, size: 8, offset: 112)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2447, file: !2406, line: 64, baseType: !2460, size: 136, offset: 120)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 136, elements: !2461)
!2461 = !{!2462}
!2462 = !DISubrange(count: 17)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2447, file: !2406, line: 67, baseType: !2464, size: 96, offset: 256)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 96, elements: !1364)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2447, file: !2406, line: 68, baseType: !2466, size: 160, offset: 352)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, elements: !1329)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2447, file: !2406, line: 69, baseType: !159, size: 8, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2447, file: !2406, line: 70, baseType: !2452, size: 16, offset: 520)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2447, file: !2406, line: 71, baseType: !2470, size: 104, offset: 536)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 104, elements: !2471)
!2471 = !{!2472}
!2472 = !DISubrange(count: 13)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2447, file: !2406, line: 74, baseType: !2474, size: 32, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1701, line: 31, baseType: !26)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2447, file: !2406, line: 75, baseType: !2452, size: 16, offset: 672)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2447, file: !2406, line: 76, baseType: !2474, size: 32, offset: 688)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2447, file: !2406, line: 77, baseType: !2452, size: 16, offset: 720)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2447, file: !2406, line: 78, baseType: !2474, size: 32, offset: 736)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2447, file: !2406, line: 79, baseType: !2474, size: 32, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2447, file: !2406, line: 80, baseType: !159, size: 8, offset: 800)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2447, file: !2406, line: 81, baseType: !159, size: 8, offset: 808)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2447, file: !2406, line: 82, baseType: !159, size: 8, offset: 816)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2447, file: !2406, line: 83, baseType: !2452, size: 16, offset: 824)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2447, file: !2406, line: 84, baseType: !2452, size: 16, offset: 840)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2447, file: !2406, line: 85, baseType: !159, size: 8, offset: 856)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2447, file: !2406, line: 86, baseType: !2452, size: 16, offset: 864)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2447, file: !2406, line: 87, baseType: !159, size: 8, offset: 880)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2447, file: !2406, line: 88, baseType: !159, size: 8, offset: 888)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2447, file: !2406, line: 89, baseType: !159, size: 8, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2447, file: !2406, line: 90, baseType: !159, size: 8, offset: 904)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2447, file: !2406, line: 91, baseType: !159, size: 8, offset: 912)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2447, file: !2406, line: 92, baseType: !2470, size: 104, offset: 920)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2447, file: !2406, line: 95, baseType: !159, size: 8, offset: 1024)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2447, file: !2406, line: 96, baseType: !2452, size: 16, offset: 1032)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2447, file: !2406, line: 97, baseType: !2452, size: 16, offset: 1048)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2447, file: !2406, line: 98, baseType: !2452, size: 16, offset: 1064)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2447, file: !2406, line: 99, baseType: !2452, size: 16, offset: 1080)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2447, file: !2406, line: 100, baseType: !2452, size: 16, offset: 1096)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2447, file: !2406, line: 101, baseType: !2452, size: 16, offset: 1112)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2447, file: !2406, line: 102, baseType: !2452, size: 16, offset: 1128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2447, file: !2406, line: 103, baseType: !159, size: 8, offset: 1144)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2447, file: !2406, line: 104, baseType: !2452, size: 16, offset: 1152)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2447, file: !2406, line: 105, baseType: !2452, size: 16, offset: 1168)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2447, file: !2406, line: 106, baseType: !2452, size: 16, offset: 1184)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2447, file: !2406, line: 107, baseType: !159, size: 8, offset: 1200)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2447, file: !2406, line: 108, baseType: !159, size: 8, offset: 1208)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2447, file: !2406, line: 109, baseType: !2452, size: 16, offset: 1216)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2447, file: !2406, line: 110, baseType: !2452, size: 16, offset: 1232)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2447, file: !2406, line: 111, baseType: !2393, size: 64, offset: 1248)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2447, file: !2406, line: 114, baseType: !2452, size: 16, offset: 1312)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2447, file: !2406, line: 115, baseType: !2416, size: 704, offset: 1328)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2447, file: !2406, line: 117, baseType: !2452, size: 16, offset: 2032)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2420, file: !8, line: 1038, baseType: !123, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !7, file: !8, line: 1101, baseType: !2515, size: 384, offset: 12160)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !8, line: 1021, size: 384, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2523, !2524, !2528}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2515, file: !8, line: 1022, baseType: !2438, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2515, file: !8, line: 1023, baseType: !2436, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2515, file: !8, line: 1024, baseType: !2520, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!49, !6, !114, !30}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2515, file: !8, line: 1025, baseType: !2520, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2515, file: !8, line: 1026, baseType: !2525, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!49, !6, !49}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2515, file: !8, line: 1027, baseType: !2529, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!49, !6, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !8, line: 492, size: 1536, elements: !2534)
!2534 = !{!2535, !2539}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2533, file: !8, line: 493, baseType: !2536, size: 32)
!2536 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_interface_type", file: !8, line: 481, baseType: !28, size: 32, elements: !2537)
!2537 = !{!2538}
!2538 = !DIEnumerator(name: "NAND_SDR_IFACE", value: 0, isUnsigned: true)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2533, file: !8, line: 499, baseType: !2540, size: 1472, offset: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !8, line: 494, size: 1472, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2540, file: !8, line: 495, baseType: !28, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !8, line: 496, baseType: !2544, size: 1408, offset: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2540, file: !8, line: 496, size: 1408, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2544, file: !8, line: 497, baseType: !2547, size: 1408)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !8, line: 436, size: 1408, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2547, file: !8, line: 437, baseType: !31, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2547, file: !8, line: 438, baseType: !24, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2547, file: !8, line: 439, baseType: !31, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2547, file: !8, line: 440, baseType: !31, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2547, file: !8, line: 441, baseType: !24, size: 32, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2547, file: !8, line: 442, baseType: !24, size: 32, offset: 288)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2547, file: !8, line: 443, baseType: !24, size: 32, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2547, file: !8, line: 444, baseType: !24, size: 32, offset: 352)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2547, file: !8, line: 445, baseType: !24, size: 32, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2547, file: !8, line: 446, baseType: !24, size: 32, offset: 416)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2547, file: !8, line: 447, baseType: !24, size: 32, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2547, file: !8, line: 448, baseType: !24, size: 32, offset: 480)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2547, file: !8, line: 449, baseType: !24, size: 32, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2547, file: !8, line: 450, baseType: !24, size: 32, offset: 544)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2547, file: !8, line: 451, baseType: !24, size: 32, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2547, file: !8, line: 452, baseType: !24, size: 32, offset: 608)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2547, file: !8, line: 453, baseType: !24, size: 32, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2547, file: !8, line: 454, baseType: !24, size: 32, offset: 672)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2547, file: !8, line: 455, baseType: !24, size: 32, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2547, file: !8, line: 456, baseType: !24, size: 32, offset: 736)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2547, file: !8, line: 457, baseType: !24, size: 32, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2547, file: !8, line: 458, baseType: !24, size: 32, offset: 800)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2547, file: !8, line: 459, baseType: !24, size: 32, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2547, file: !8, line: 460, baseType: !24, size: 32, offset: 864)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2547, file: !8, line: 461, baseType: !24, size: 32, offset: 896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2547, file: !8, line: 462, baseType: !24, size: 32, offset: 928)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2547, file: !8, line: 463, baseType: !24, size: 32, offset: 960)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2547, file: !8, line: 464, baseType: !24, size: 32, offset: 992)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2547, file: !8, line: 465, baseType: !24, size: 32, offset: 1024)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2547, file: !8, line: 466, baseType: !24, size: 32, offset: 1056)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2547, file: !8, line: 467, baseType: !24, size: 32, offset: 1088)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2547, file: !8, line: 468, baseType: !31, size: 64, offset: 1152)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2547, file: !8, line: 469, baseType: !24, size: 32, offset: 1216)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2547, file: !8, line: 470, baseType: !24, size: 32, offset: 1248)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2547, file: !8, line: 471, baseType: !24, size: 32, offset: 1280)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2547, file: !8, line: 472, baseType: !24, size: 32, offset: 1312)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2547, file: !8, line: 473, baseType: !24, size: 32, offset: 1344)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2547, file: !8, line: 474, baseType: !24, size: 32, offset: 1376)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !7, file: !8, line: 1102, baseType: !2588, size: 1280, offset: 12544)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !8, line: 989, size: 1280, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2596, !2600, !2604, !2610, !2615, !2619, !2623, !2624, !2625, !2629, !2630, !2634, !2635, !2636}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2588, file: !8, line: 990, baseType: !123, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2588, file: !8, line: 991, baseType: !123, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2588, file: !8, line: 992, baseType: !2593, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !6, !49}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2588, file: !8, line: 993, baseType: !2597, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!159, !6}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2588, file: !8, line: 994, baseType: !2601, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !6, !159}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2588, file: !8, line: 995, baseType: !2605, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !6, !2608, !49}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2588, file: !8, line: 996, baseType: !2611, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !6, !2614, !49}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2588, file: !8, line: 997, baseType: !2616, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !6, !49, !28}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2588, file: !8, line: 998, baseType: !2620, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !6, !28, !49, !49}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2588, file: !8, line: 1000, baseType: !2438, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2588, file: !8, line: 1001, baseType: !2438, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2588, file: !8, line: 1002, baseType: !2626, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!49, !6, !114}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2588, file: !8, line: 1003, baseType: !2626, size: 64, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2588, file: !8, line: 1004, baseType: !2631, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!49, !6, !49, !2614}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2588, file: !8, line: 1006, baseType: !2631, size: 64, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2588, file: !8, line: 1008, baseType: !49, size: 32, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2588, file: !8, line: 1009, baseType: !2637, size: 256, offset: 1024)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !8, line: 951, size: 256, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2637, file: !8, line: 952, baseType: !512, size: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2637, file: !8, line: 953, baseType: !2641, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !8, line: 935, size: 256, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2697}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2643, file: !8, line: 936, baseType: !2438, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2643, file: !8, line: 937, baseType: !2436, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2643, file: !8, line: 938, baseType: !2648, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!49, !6, !2651, !216}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !8, line: 860, size: 192, elements: !2654)
!2654 = !{!2655, !2656, !2696}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2653, file: !8, line: 861, baseType: !28, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2653, file: !8, line: 862, baseType: !2657, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !8, line: 593, size: 320, elements: !2660)
!2660 = !{!2661, !2669, !2695}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2659, file: !8, line: 594, baseType: !2662, size: 32)
!2662 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_op_instr_type", file: !8, line: 570, baseType: !28, size: 32, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668}
!2664 = !DIEnumerator(name: "NAND_OP_CMD_INSTR", value: 0, isUnsigned: true)
!2665 = !DIEnumerator(name: "NAND_OP_ADDR_INSTR", value: 1, isUnsigned: true)
!2666 = !DIEnumerator(name: "NAND_OP_DATA_IN_INSTR", value: 2, isUnsigned: true)
!2667 = !DIEnumerator(name: "NAND_OP_DATA_OUT_INSTR", value: 3, isUnsigned: true)
!2668 = !DIEnumerator(name: "NAND_OP_WAITRDY_INSTR", value: 4, isUnsigned: true)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2659, file: !8, line: 600, baseType: !2670, size: 192, offset: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2659, file: !8, line: 595, size: 192, elements: !2671)
!2671 = !{!2672, !2676, !2681, !2691}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2670, file: !8, line: 596, baseType: !2673, size: 8)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !8, line: 519, size: 8, elements: !2674)
!2674 = !{!2675}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2673, file: !8, line: 520, baseType: !159, size: 8)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2670, file: !8, line: 597, baseType: !2677, size: 128)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !8, line: 528, size: 128, elements: !2678)
!2678 = !{!2679, !2680}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2677, file: !8, line: 529, baseType: !28, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2677, file: !8, line: 530, baseType: !2608, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2670, file: !8, line: 598, baseType: !2682, size: 192)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !8, line: 545, size: 192, elements: !2683)
!2683 = !{!2684, !2685, !2690}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2682, file: !8, line: 546, baseType: !28, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2682, file: !8, line: 550, baseType: !2686, size: 64, offset: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2682, file: !8, line: 547, size: 64, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2686, file: !8, line: 548, baseType: !123, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2686, file: !8, line: 549, baseType: !1255, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2682, file: !8, line: 551, baseType: !216, size: 8, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2670, file: !8, line: 599, baseType: !2692, size: 32)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !8, line: 558, size: 32, elements: !2693)
!2693 = !{!2694}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2692, file: !8, line: 559, baseType: !28, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2659, file: !8, line: 601, baseType: !28, size: 32, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2653, file: !8, line: 863, baseType: !28, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2643, file: !8, line: 941, baseType: !2698, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!49, !6, !49, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !7, file: !8, line: 1103, baseType: !28, size: 32, offset: 13824)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !7, file: !8, line: 1106, baseType: !2701, size: 64, offset: 13888)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !7, file: !8, line: 1107, baseType: !2532, size: 64, offset: 13952)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !7, file: !8, line: 1110, baseType: !28, size: 32, offset: 14016)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !7, file: !8, line: 1111, baseType: !28, size: 32, offset: 14048)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !7, file: !8, line: 1112, baseType: !28, size: 32, offset: 14080)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !7, file: !8, line: 1113, baseType: !28, size: 32, offset: 14112)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !7, file: !8, line: 1114, baseType: !2711, size: 64, offset: 14144)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2713, line: 41, size: 576, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2714 = !{!2715, !2716, !2718, !2719, !2720, !2722, !2723, !2724, !2725}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2712, file: !2713, line: 42, baseType: !49, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2712, file: !2713, line: 43, baseType: !2717, size: 256, offset: 32)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 256, elements: !660)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2712, file: !2713, line: 44, baseType: !49, size: 32, offset: 288)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2712, file: !2713, line: 45, baseType: !49, size: 32, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2712, file: !2713, line: 46, baseType: !2721, size: 64, offset: 352)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !660)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2712, file: !2713, line: 47, baseType: !49, size: 32, offset: 416)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2712, file: !2713, line: 48, baseType: !49, size: 32, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2712, file: !2713, line: 49, baseType: !49, size: 32, offset: 480)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2712, file: !2713, line: 50, baseType: !157, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !7, file: !8, line: 1115, baseType: !2711, size: 64, offset: 14208)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !7, file: !8, line: 1116, baseType: !2711, size: 64, offset: 14272)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !7, file: !8, line: 1117, baseType: !2614, size: 64, offset: 14336)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !7, file: !8, line: 1120, baseType: !28, size: 32, offset: 14400)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !7, file: !8, line: 1121, baseType: !28, size: 32, offset: 14432)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !7, file: !8, line: 1122, baseType: !28, size: 32, offset: 14464)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !7, file: !8, line: 1123, baseType: !28, size: 32, offset: 14496)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !7, file: !8, line: 1124, baseType: !28, size: 32, offset: 14528)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !7, file: !8, line: 1127, baseType: !2614, size: 64, offset: 14592)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !7, file: !8, line: 1128, baseType: !2614, size: 64, offset: 14656)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !7, file: !8, line: 1132, baseType: !2737, size: 64, offset: 14720)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !8, line: 1129, size: 64, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2737, file: !8, line: 1130, baseType: !28, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2737, file: !8, line: 1131, baseType: !49, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !7, file: !8, line: 1133, baseType: !99, size: 64, offset: 14784)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !8, line: 1136, baseType: !512, size: 192, offset: 14848)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !7, file: !8, line: 1137, baseType: !28, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !7, file: !8, line: 1138, baseType: !49, size: 32, offset: 15072)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !7, file: !8, line: 1139, baseType: !49, size: 32, offset: 15104)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !7, file: !8, line: 1142, baseType: !2747, size: 64, offset: 15168)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !7, file: !8, line: 1143, baseType: !2749, size: 1408, offset: 15232)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !8, line: 346, size: 1408, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2772, !2776, !2780, !2784, !2785, !2789, !2793, !2794, !2795, !2796, !2797}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2749, file: !8, line: 347, baseType: !2279, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2749, file: !8, line: 348, baseType: !2287, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2749, file: !8, line: 349, baseType: !2293, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2749, file: !8, line: 350, baseType: !49, size: 32, offset: 96)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2749, file: !8, line: 351, baseType: !49, size: 32, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2749, file: !8, line: 352, baseType: !49, size: 32, offset: 160)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2749, file: !8, line: 353, baseType: !49, size: 32, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2749, file: !8, line: 354, baseType: !49, size: 32, offset: 224)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2749, file: !8, line: 355, baseType: !49, size: 32, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2749, file: !8, line: 356, baseType: !49, size: 32, offset: 288)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2749, file: !8, line: 357, baseType: !28, size: 32, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2749, file: !8, line: 358, baseType: !123, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2749, file: !8, line: 359, baseType: !2614, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2749, file: !8, line: 360, baseType: !2614, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2749, file: !8, line: 361, baseType: !2593, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2749, file: !8, line: 362, baseType: !2767, size: 64, offset: 640)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!49, !6, !2770, !157}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2749, file: !8, line: 364, baseType: !2773, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!49, !6, !157, !157, !157}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2749, file: !8, line: 366, baseType: !2777, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!49, !6, !157, !49, !49}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2749, file: !8, line: 368, baseType: !2781, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!49, !6, !2770, !49, !49}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2749, file: !8, line: 370, baseType: !2777, size: 64, offset: 896)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2749, file: !8, line: 372, baseType: !2786, size: 64, offset: 960)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!49, !6, !23, !23, !157, !49}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2749, file: !8, line: 374, baseType: !2790, size: 64, offset: 1024)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!49, !6, !23, !23, !2770, !49, !49}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2749, file: !8, line: 377, baseType: !2781, size: 64, offset: 1088)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2749, file: !8, line: 379, baseType: !2525, size: 64, offset: 1152)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2749, file: !8, line: 380, baseType: !2525, size: 64, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2749, file: !8, line: 381, baseType: !2525, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2749, file: !8, line: 382, baseType: !2525, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !7, file: !8, line: 1144, baseType: !123, size: 64, offset: 16640)
!2799 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2800, retainedTypes: !2806, globals: !2812, splitDebugInlining: false, nameTableKind: None)
!2800 = !{!633, !764, !1518, !1813, !1901, !1988, !1996, !2279, !2287, !2293, !2335, !2536, !2662, !2801}
!2801 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2802, line: 10, baseType: !28, size: 32, elements: !2803)
!2802 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!2803 = !{!2804, !2805}
!2804 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!2805 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!2806 = !{!341, !123, !49, !99, !2807, !158, !2452, !526, !2809, !2811, !157}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !348)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!2812 = !{!0}
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2814, line: 15, size: 256, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2813, file: !2814, line: 16, baseType: !460)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2813, file: !2814, line: 18, baseType: !49, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2813, file: !2814, line: 19, baseType: !49, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2813, file: !2814, line: 20, baseType: !49, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2813, file: !2814, line: 21, baseType: !49, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2813, file: !2814, line: 22, baseType: !99, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2814, line: 23, baseType: !99, size: 64, offset: 192)
!2823 = !{i32 7, !"Dwarf Version", i32 4}
!2824 = !{i32 2, !"Debug Info Version", i32 3}
!2825 = !{i32 1, !"wchar_size", i32 2}
!2826 = !{i32 1, !"Code Model", i32 2}
!2827 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2828 = !DILocalVariable(name: "m", arg: 1, scope: !2829, file: !2830, line: 363, type: !2833)
!2829 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !2830, file: !2830, line: 363, type: !2831, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!2830 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!99, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!2834 = !DILocation(line: 363, column: 74, scope: !2829, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 201, column: 20, scope: !2)
!2836 = !DILocalVariable(name: "pfo_val__", scope: !2837, file: !2838, line: 26, type: !24)
!2837 = distinct !DILexicalBlock(scope: !2839, file: !2838, line: 26, column: 9)
!2838 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!2839 = distinct !DISubprogram(name: "preempt_count", scope: !2838, file: !2838, line: 24, type: !2840, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!49}
!2842 = !DILocation(line: 26, column: 9, scope: !2837, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 197, column: 6, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2, file: !3, line: 197, column: 6)
!2845 = !DILocalVariable(name: "chip", arg: 1, scope: !2, file: !3, line: 193, type: !6)
!2846 = !DILocation(line: 193, column: 40, scope: !2)
!2847 = !DILocalVariable(name: "timeo", scope: !2, file: !3, line: 195, type: !99)
!2848 = !DILocation(line: 195, column: 16, scope: !2)
!2849 = !{i32 -2145599761}
!2850 = !DILocation(line: 26, column: 41, scope: !2839, inlinedAt: !2843)
!2851 = !DILocation(line: 197, column: 6, scope: !2844)
!2852 = !DILocation(line: 197, column: 21, scope: !2844)
!2853 = !DILocation(line: 197, column: 24, scope: !2844)
!2854 = !DILocation(line: 197, column: 6, scope: !2)
!2855 = !DILocation(line: 198, column: 32, scope: !2844)
!2856 = !DILocation(line: 198, column: 38, scope: !2844)
!2857 = !DILocation(line: 198, column: 10, scope: !2844)
!2858 = !DILocation(line: 198, column: 3, scope: !2844)
!2859 = !DILocation(line: 201, column: 10, scope: !2)
!2860 = !DILocation(line: 201, column: 37, scope: !2)
!2861 = !DILocation(line: 365, column: 27, scope: !2862, inlinedAt: !2835)
!2862 = distinct !DILexicalBlock(scope: !2829, file: !2830, line: 365, column: 6)
!2863 = !DILocation(line: 365, column: 6, scope: !2862, inlinedAt: !2835)
!2864 = !DILocation(line: 365, column: 6, scope: !2829, inlinedAt: !2835)
!2865 = !DILocation(line: 366, column: 12, scope: !2866, inlinedAt: !2835)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !2830, line: 366, column: 7)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !2830, line: 365, column: 31)
!2868 = !DILocation(line: 366, column: 14, scope: !2866, inlinedAt: !2835)
!2869 = !DILocation(line: 366, column: 7, scope: !2867, inlinedAt: !2835)
!2870 = !DILocation(line: 367, column: 4, scope: !2866, inlinedAt: !2835)
!2871 = !DILocation(line: 368, column: 28, scope: !2867, inlinedAt: !2835)
!2872 = !DILocation(line: 368, column: 10, scope: !2867, inlinedAt: !2835)
!2873 = !DILocation(line: 368, column: 3, scope: !2867, inlinedAt: !2835)
!2874 = !DILocation(line: 370, column: 29, scope: !2875, inlinedAt: !2835)
!2875 = distinct !DILexicalBlock(scope: !2862, file: !2830, line: 369, column: 9)
!2876 = !DILocation(line: 370, column: 10, scope: !2875, inlinedAt: !2835)
!2877 = !DILocation(line: 370, column: 3, scope: !2875, inlinedAt: !2835)
!2878 = !DILocation(line: 372, column: 1, scope: !2829, inlinedAt: !2835)
!2879 = !DILocation(line: 201, column: 18, scope: !2)
!2880 = !DILocation(line: 201, column: 8, scope: !2)
!2881 = !DILocation(line: 202, column: 2, scope: !2)
!2882 = !DILocation(line: 203, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 203, column: 7)
!2884 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 5)
!2885 = !DILocation(line: 203, column: 13, scope: !2883)
!2886 = !DILocation(line: 203, column: 20, scope: !2883)
!2887 = !DILocation(line: 203, column: 30, scope: !2883)
!2888 = !DILocation(line: 203, column: 7, scope: !2884)
!2889 = !DILocation(line: 204, column: 4, scope: !2883)
!2890 = !DILocation(line: 205, column: 3, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 205, column: 3)
!2892 = !DILocation(line: 206, column: 2, scope: !2884)
!2893 = !DILocation(line: 206, column: 11, scope: !2)
!2894 = distinct !{!2894, !2881, !2895}
!2895 = !DILocation(line: 206, column: 38, scope: !2)
!2896 = !DILocation(line: 208, column: 7, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2, file: !3, line: 208, column: 6)
!2898 = !DILocation(line: 208, column: 13, scope: !2897)
!2899 = !DILocation(line: 208, column: 20, scope: !2897)
!2900 = !DILocation(line: 208, column: 30, scope: !2897)
!2901 = !DILocation(line: 208, column: 6, scope: !2)
!2902 = !DILocation(line: 209, column: 3, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 209, column: 3)
!2904 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 209, column: 3)
!2905 = !DILocation(line: 209, column: 3, scope: !2904)
!2906 = !DILocation(line: 209, column: 3, scope: !2897)
!2907 = !DILocation(line: 210, column: 1, scope: !2)
!2908 = distinct !DISubprogram(name: "panic_nand_wait_ready", scope: !3, file: !3, line: 174, type: !2909, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !6, !99}
!2911 = !DILocalVariable(name: "chip", arg: 1, scope: !2908, file: !3, line: 174, type: !6)
!2912 = !DILocation(line: 174, column: 53, scope: !2908)
!2913 = !DILocalVariable(name: "timeo", arg: 2, scope: !2908, file: !3, line: 174, type: !99)
!2914 = !DILocation(line: 174, column: 73, scope: !2908)
!2915 = !DILocalVariable(name: "i", scope: !2908, file: !3, line: 176, type: !49)
!2916 = !DILocation(line: 176, column: 6, scope: !2908)
!2917 = !DILocation(line: 179, column: 9, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 179, column: 2)
!2919 = !DILocation(line: 179, column: 7, scope: !2918)
!2920 = !DILocation(line: 179, column: 14, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 179, column: 2)
!2922 = !DILocation(line: 179, column: 18, scope: !2921)
!2923 = !DILocation(line: 179, column: 16, scope: !2921)
!2924 = !DILocation(line: 179, column: 2, scope: !2918)
!2925 = !DILocation(line: 180, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 180, column: 7)
!2927 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 179, column: 30)
!2928 = !DILocation(line: 180, column: 13, scope: !2926)
!2929 = !DILocation(line: 180, column: 20, scope: !2926)
!2930 = !DILocation(line: 180, column: 30, scope: !2926)
!2931 = !DILocation(line: 180, column: 7, scope: !2927)
!2932 = !DILocation(line: 181, column: 4, scope: !2926)
!2933 = !DILocation(line: 182, column: 3, scope: !2927)
!2934 = !DILocation(line: 183, column: 3, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 183, column: 3)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 183, column: 3)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 183, column: 3)
!2938 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 183, column: 3)
!2939 = !DILocation(line: 184, column: 2, scope: !2927)
!2940 = !DILocation(line: 179, column: 26, scope: !2921)
!2941 = !DILocation(line: 179, column: 2, scope: !2921)
!2942 = distinct !{!2942, !2924, !2943}
!2943 = !DILocation(line: 184, column: 2, scope: !2918)
!2944 = !DILocation(line: 185, column: 1, scope: !2908)
!2945 = distinct !DISubprogram(name: "___might_sleep", scope: !2946, file: !2946, line: 248, type: !2947, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!2946 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !45, !49, !49}
!2949 = !DILocalVariable(name: "file", arg: 1, scope: !2945, file: !2946, line: 248, type: !45)
!2950 = !DILocation(line: 248, column: 49, scope: !2945)
!2951 = !DILocalVariable(name: "line", arg: 2, scope: !2945, file: !2946, line: 248, type: !49)
!2952 = !DILocation(line: 248, column: 59, scope: !2945)
!2953 = !DILocalVariable(name: "preempt_offset", arg: 3, scope: !2945, file: !2946, line: 249, type: !49)
!2954 = !DILocation(line: 249, column: 12, scope: !2945)
!2955 = !DILocation(line: 249, column: 30, scope: !2945)
!2956 = distinct !DISubprogram(name: "nand_get_set_features_notsupp", scope: !3, file: !3, line: 519, type: !2632, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!2957 = !DILocalVariable(name: "chip", arg: 1, scope: !2956, file: !3, line: 519, type: !6)
!2958 = !DILocation(line: 519, column: 53, scope: !2956)
!2959 = !DILocalVariable(name: "addr", arg: 2, scope: !2956, file: !3, line: 519, type: !49)
!2960 = !DILocation(line: 519, column: 63, scope: !2956)
!2961 = !DILocalVariable(name: "subfeature_param", arg: 3, scope: !2956, file: !3, line: 520, type: !2614)
!2962 = !DILocation(line: 520, column: 11, scope: !2956)
!2963 = !DILocation(line: 522, column: 2, scope: !2956)
!2964 = distinct !DISubprogram(name: "nand_legacy_set_defaults", scope: !3, file: !3, line: 580, type: !4, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!2965 = !DILocalVariable(name: "chip", arg: 1, scope: !2964, file: !3, line: 580, type: !6)
!2966 = !DILocation(line: 580, column: 49, scope: !2964)
!2967 = !DILocalVariable(name: "busw", scope: !2964, file: !3, line: 582, type: !28)
!2968 = !DILocation(line: 582, column: 15, scope: !2964)
!2969 = !DILocation(line: 582, column: 22, scope: !2964)
!2970 = !DILocation(line: 582, column: 28, scope: !2964)
!2971 = !DILocation(line: 582, column: 36, scope: !2964)
!2972 = !DILocation(line: 584, column: 23, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 584, column: 6)
!2974 = !DILocation(line: 584, column: 6, scope: !2973)
!2975 = !DILocation(line: 584, column: 6, scope: !2964)
!2976 = !DILocation(line: 585, column: 3, scope: !2973)
!2977 = !DILocation(line: 588, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 588, column: 6)
!2979 = !DILocation(line: 588, column: 13, scope: !2978)
!2980 = !DILocation(line: 588, column: 20, scope: !2978)
!2981 = !DILocation(line: 588, column: 6, scope: !2964)
!2982 = !DILocation(line: 589, column: 3, scope: !2978)
!2983 = !DILocation(line: 589, column: 9, scope: !2978)
!2984 = !DILocation(line: 589, column: 16, scope: !2978)
!2985 = !DILocation(line: 589, column: 27, scope: !2978)
!2986 = !DILocation(line: 592, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 592, column: 6)
!2988 = !DILocation(line: 592, column: 13, scope: !2987)
!2989 = !DILocation(line: 592, column: 20, scope: !2987)
!2990 = !DILocation(line: 592, column: 6, scope: !2964)
!2991 = !DILocation(line: 593, column: 3, scope: !2987)
!2992 = !DILocation(line: 593, column: 9, scope: !2987)
!2993 = !DILocation(line: 593, column: 16, scope: !2987)
!2994 = !DILocation(line: 593, column: 24, scope: !2987)
!2995 = !DILocation(line: 596, column: 6, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 596, column: 6)
!2997 = !DILocation(line: 596, column: 12, scope: !2996)
!2998 = !DILocation(line: 596, column: 19, scope: !2996)
!2999 = !DILocation(line: 596, column: 28, scope: !2996)
!3000 = !DILocation(line: 596, column: 6, scope: !2964)
!3001 = !DILocation(line: 597, column: 3, scope: !2996)
!3002 = !DILocation(line: 597, column: 9, scope: !2996)
!3003 = !DILocation(line: 597, column: 16, scope: !2996)
!3004 = !DILocation(line: 597, column: 25, scope: !2996)
!3005 = !DILocation(line: 599, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 599, column: 6)
!3007 = !DILocation(line: 599, column: 13, scope: !3006)
!3008 = !DILocation(line: 599, column: 20, scope: !3006)
!3009 = !DILocation(line: 599, column: 6, scope: !2964)
!3010 = !DILocation(line: 600, column: 3, scope: !3006)
!3011 = !DILocation(line: 600, column: 9, scope: !3006)
!3012 = !DILocation(line: 600, column: 16, scope: !3006)
!3013 = !DILocation(line: 600, column: 28, scope: !3006)
!3014 = !DILocation(line: 603, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 603, column: 6)
!3016 = !DILocation(line: 603, column: 13, scope: !3015)
!3017 = !DILocation(line: 603, column: 20, scope: !3015)
!3018 = !DILocation(line: 603, column: 30, scope: !3015)
!3019 = !DILocation(line: 603, column: 33, scope: !3015)
!3020 = !DILocation(line: 603, column: 39, scope: !3015)
!3021 = !DILocation(line: 603, column: 46, scope: !3015)
!3022 = !DILocation(line: 603, column: 56, scope: !3015)
!3023 = !DILocation(line: 603, column: 6, scope: !2964)
!3024 = !DILocation(line: 604, column: 28, scope: !3015)
!3025 = !DILocation(line: 604, column: 3, scope: !3015)
!3026 = !DILocation(line: 604, column: 9, scope: !3015)
!3027 = !DILocation(line: 604, column: 16, scope: !3015)
!3028 = !DILocation(line: 604, column: 26, scope: !3015)
!3029 = !DILocation(line: 605, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 605, column: 6)
!3031 = !DILocation(line: 605, column: 13, scope: !3030)
!3032 = !DILocation(line: 605, column: 20, scope: !3030)
!3033 = !DILocation(line: 605, column: 30, scope: !3030)
!3034 = !DILocation(line: 605, column: 33, scope: !3030)
!3035 = !DILocation(line: 605, column: 39, scope: !3030)
!3036 = !DILocation(line: 605, column: 46, scope: !3030)
!3037 = !DILocation(line: 605, column: 56, scope: !3030)
!3038 = !DILocation(line: 605, column: 6, scope: !2964)
!3039 = !DILocation(line: 606, column: 28, scope: !3030)
!3040 = !DILocation(line: 606, column: 3, scope: !3030)
!3041 = !DILocation(line: 606, column: 9, scope: !3030)
!3042 = !DILocation(line: 606, column: 16, scope: !3030)
!3043 = !DILocation(line: 606, column: 26, scope: !3030)
!3044 = !DILocation(line: 607, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 607, column: 6)
!3046 = !DILocation(line: 607, column: 13, scope: !3045)
!3047 = !DILocation(line: 607, column: 20, scope: !3045)
!3048 = !DILocation(line: 607, column: 31, scope: !3045)
!3049 = !DILocation(line: 607, column: 34, scope: !3045)
!3050 = !DILocation(line: 607, column: 40, scope: !3045)
!3051 = !DILocation(line: 607, column: 47, scope: !3045)
!3052 = !DILocation(line: 607, column: 58, scope: !3045)
!3053 = !DILocation(line: 607, column: 6, scope: !2964)
!3054 = !DILocation(line: 608, column: 29, scope: !3045)
!3055 = !DILocation(line: 608, column: 3, scope: !3045)
!3056 = !DILocation(line: 608, column: 9, scope: !3045)
!3057 = !DILocation(line: 608, column: 16, scope: !3045)
!3058 = !DILocation(line: 608, column: 27, scope: !3045)
!3059 = !DILocation(line: 609, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 609, column: 6)
!3061 = !DILocation(line: 609, column: 13, scope: !3060)
!3062 = !DILocation(line: 609, column: 20, scope: !3060)
!3063 = !DILocation(line: 609, column: 29, scope: !3060)
!3064 = !DILocation(line: 609, column: 32, scope: !3060)
!3065 = !DILocation(line: 609, column: 38, scope: !3060)
!3066 = !DILocation(line: 609, column: 45, scope: !3060)
!3067 = !DILocation(line: 609, column: 54, scope: !3060)
!3068 = !DILocation(line: 609, column: 6, scope: !2964)
!3069 = !DILocation(line: 610, column: 27, scope: !3060)
!3070 = !DILocation(line: 610, column: 3, scope: !3060)
!3071 = !DILocation(line: 610, column: 9, scope: !3060)
!3072 = !DILocation(line: 610, column: 16, scope: !3060)
!3073 = !DILocation(line: 610, column: 25, scope: !3060)
!3074 = !DILocation(line: 611, column: 1, scope: !2964)
!3075 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !2426, file: !2426, line: 110, type: !3076, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!216, !6}
!3078 = !DILocalVariable(name: "chip", arg: 1, scope: !3075, file: !2426, line: 110, type: !6)
!3079 = !DILocation(line: 110, column: 55, scope: !3075)
!3080 = !DILocation(line: 112, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3075, file: !2426, line: 112, column: 6)
!3082 = !DILocation(line: 112, column: 13, scope: !3081)
!3083 = !DILocation(line: 112, column: 24, scope: !3081)
!3084 = !DILocation(line: 112, column: 28, scope: !3081)
!3085 = !DILocation(line: 112, column: 34, scope: !3081)
!3086 = !DILocation(line: 112, column: 46, scope: !3081)
!3087 = !DILocation(line: 112, column: 50, scope: !3081)
!3088 = !DILocation(line: 113, column: 7, scope: !3081)
!3089 = !DILocation(line: 113, column: 13, scope: !3081)
!3090 = !DILocation(line: 113, column: 25, scope: !3081)
!3091 = !DILocation(line: 113, column: 30, scope: !3081)
!3092 = !DILocation(line: 112, column: 6, scope: !3075)
!3093 = !DILocation(line: 114, column: 3, scope: !3081)
!3094 = !DILocation(line: 116, column: 2, scope: !3075)
!3095 = !DILocation(line: 117, column: 1, scope: !3075)
!3096 = distinct !DISubprogram(name: "nand_command", scope: !3, file: !3, line: 249, type: !2621, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3097 = !DILocalVariable(name: "chip", arg: 1, scope: !3096, file: !3, line: 249, type: !6)
!3098 = !DILocation(line: 249, column: 44, scope: !3096)
!3099 = !DILocalVariable(name: "command", arg: 2, scope: !3096, file: !3, line: 249, type: !28)
!3100 = !DILocation(line: 249, column: 63, scope: !3096)
!3101 = !DILocalVariable(name: "column", arg: 3, scope: !3096, file: !3, line: 250, type: !49)
!3102 = !DILocation(line: 250, column: 9, scope: !3096)
!3103 = !DILocalVariable(name: "page_addr", arg: 4, scope: !3096, file: !3, line: 250, type: !49)
!3104 = !DILocation(line: 250, column: 21, scope: !3096)
!3105 = !DILocalVariable(name: "mtd", scope: !3096, file: !3, line: 252, type: !59)
!3106 = !DILocation(line: 252, column: 19, scope: !3096)
!3107 = !DILocation(line: 252, column: 37, scope: !3096)
!3108 = !DILocation(line: 252, column: 25, scope: !3096)
!3109 = !DILocalVariable(name: "ctrl", scope: !3096, file: !3, line: 253, type: !49)
!3110 = !DILocation(line: 253, column: 6, scope: !3096)
!3111 = !DILocation(line: 256, column: 6, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 256, column: 6)
!3113 = !DILocation(line: 256, column: 14, scope: !3112)
!3114 = !DILocation(line: 256, column: 6, scope: !3096)
!3115 = !DILocalVariable(name: "readcmd", scope: !3116, file: !3, line: 257, type: !49)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 256, column: 33)
!3117 = !DILocation(line: 257, column: 7, scope: !3116)
!3118 = !DILocation(line: 259, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 259, column: 7)
!3120 = !DILocation(line: 259, column: 17, scope: !3119)
!3121 = !DILocation(line: 259, column: 22, scope: !3119)
!3122 = !DILocation(line: 259, column: 14, scope: !3119)
!3123 = !DILocation(line: 259, column: 7, scope: !3116)
!3124 = !DILocation(line: 261, column: 14, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 259, column: 33)
!3126 = !DILocation(line: 261, column: 19, scope: !3125)
!3127 = !DILocation(line: 261, column: 11, scope: !3125)
!3128 = !DILocation(line: 262, column: 12, scope: !3125)
!3129 = !DILocation(line: 263, column: 3, scope: !3125)
!3130 = !DILocation(line: 263, column: 14, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 263, column: 14)
!3132 = !DILocation(line: 263, column: 21, scope: !3131)
!3133 = !DILocation(line: 263, column: 14, scope: !3119)
!3134 = !DILocation(line: 265, column: 12, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 263, column: 28)
!3136 = !DILocation(line: 266, column: 3, scope: !3135)
!3137 = !DILocation(line: 267, column: 11, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 266, column: 10)
!3139 = !DILocation(line: 268, column: 12, scope: !3138)
!3140 = !DILocation(line: 270, column: 3, scope: !3116)
!3141 = !DILocation(line: 270, column: 9, scope: !3116)
!3142 = !DILocation(line: 270, column: 16, scope: !3116)
!3143 = !DILocation(line: 270, column: 25, scope: !3116)
!3144 = !DILocation(line: 270, column: 31, scope: !3116)
!3145 = !DILocation(line: 270, column: 40, scope: !3116)
!3146 = !DILocation(line: 271, column: 8, scope: !3116)
!3147 = !DILocation(line: 272, column: 2, scope: !3116)
!3148 = !DILocation(line: 273, column: 6, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 273, column: 6)
!3150 = !DILocation(line: 273, column: 14, scope: !3149)
!3151 = !DILocation(line: 273, column: 6, scope: !3096)
!3152 = !DILocation(line: 274, column: 3, scope: !3149)
!3153 = !DILocation(line: 274, column: 9, scope: !3149)
!3154 = !DILocation(line: 274, column: 16, scope: !3149)
!3155 = !DILocation(line: 274, column: 25, scope: !3149)
!3156 = !DILocation(line: 274, column: 31, scope: !3149)
!3157 = !DILocation(line: 274, column: 40, scope: !3149)
!3158 = !DILocation(line: 277, column: 7, scope: !3096)
!3159 = !DILocation(line: 279, column: 6, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 279, column: 6)
!3161 = !DILocation(line: 279, column: 13, scope: !3160)
!3162 = !DILocation(line: 279, column: 6, scope: !3096)
!3163 = !DILocation(line: 281, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 281, column: 7)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 279, column: 20)
!3166 = !DILocation(line: 281, column: 13, scope: !3164)
!3167 = !DILocation(line: 281, column: 21, scope: !3164)
!3168 = !DILocation(line: 281, column: 40, scope: !3164)
!3169 = !DILocation(line: 282, column: 24, scope: !3164)
!3170 = !DILocation(line: 282, column: 6, scope: !3164)
!3171 = !DILocation(line: 281, column: 7, scope: !3165)
!3172 = !DILocation(line: 283, column: 11, scope: !3164)
!3173 = !DILocation(line: 283, column: 4, scope: !3164)
!3174 = !DILocation(line: 284, column: 3, scope: !3165)
!3175 = !DILocation(line: 284, column: 9, scope: !3165)
!3176 = !DILocation(line: 284, column: 16, scope: !3165)
!3177 = !DILocation(line: 284, column: 25, scope: !3165)
!3178 = !DILocation(line: 284, column: 31, scope: !3165)
!3179 = !DILocation(line: 284, column: 39, scope: !3165)
!3180 = !DILocation(line: 285, column: 8, scope: !3165)
!3181 = !DILocation(line: 286, column: 2, scope: !3165)
!3182 = !DILocation(line: 287, column: 6, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 287, column: 6)
!3184 = !DILocation(line: 287, column: 16, scope: !3183)
!3185 = !DILocation(line: 287, column: 6, scope: !3096)
!3186 = !DILocation(line: 288, column: 3, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 287, column: 23)
!3188 = !DILocation(line: 288, column: 9, scope: !3187)
!3189 = !DILocation(line: 288, column: 16, scope: !3187)
!3190 = !DILocation(line: 288, column: 25, scope: !3187)
!3191 = !DILocation(line: 288, column: 31, scope: !3187)
!3192 = !DILocation(line: 288, column: 42, scope: !3187)
!3193 = !DILocation(line: 289, column: 8, scope: !3187)
!3194 = !DILocation(line: 290, column: 3, scope: !3187)
!3195 = !DILocation(line: 290, column: 9, scope: !3187)
!3196 = !DILocation(line: 290, column: 16, scope: !3187)
!3197 = !DILocation(line: 290, column: 25, scope: !3187)
!3198 = !DILocation(line: 290, column: 31, scope: !3187)
!3199 = !DILocation(line: 290, column: 41, scope: !3187)
!3200 = !DILocation(line: 290, column: 47, scope: !3187)
!3201 = !DILocation(line: 291, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 291, column: 7)
!3203 = !DILocation(line: 291, column: 13, scope: !3202)
!3204 = !DILocation(line: 291, column: 21, scope: !3202)
!3205 = !DILocation(line: 291, column: 7, scope: !3187)
!3206 = !DILocation(line: 292, column: 4, scope: !3202)
!3207 = !DILocation(line: 292, column: 10, scope: !3202)
!3208 = !DILocation(line: 292, column: 17, scope: !3202)
!3209 = !DILocation(line: 292, column: 26, scope: !3202)
!3210 = !DILocation(line: 292, column: 32, scope: !3202)
!3211 = !DILocation(line: 292, column: 42, scope: !3202)
!3212 = !DILocation(line: 292, column: 49, scope: !3202)
!3213 = !DILocation(line: 293, column: 2, scope: !3187)
!3214 = !DILocation(line: 294, column: 2, scope: !3096)
!3215 = !DILocation(line: 294, column: 8, scope: !3096)
!3216 = !DILocation(line: 294, column: 15, scope: !3096)
!3217 = !DILocation(line: 294, column: 24, scope: !3096)
!3218 = !DILocation(line: 301, column: 10, scope: !3096)
!3219 = !DILocation(line: 301, column: 2, scope: !3096)
!3220 = !DILocation(line: 311, column: 3, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 301, column: 19)
!3222 = !DILocation(line: 314, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 314, column: 7)
!3224 = !DILocation(line: 314, column: 13, scope: !3223)
!3225 = !DILocation(line: 314, column: 20, scope: !3223)
!3226 = !DILocation(line: 314, column: 7, scope: !3221)
!3227 = !DILocation(line: 315, column: 4, scope: !3223)
!3228 = !DILocation(line: 316, column: 3, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 316, column: 3)
!3230 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 316, column: 3)
!3231 = !DILocation(line: 316, column: 3, scope: !3230)
!3232 = !DILocation(line: 316, column: 3, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 316, column: 3)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 316, column: 3)
!3235 = !DILocation(line: 316, column: 3, scope: !3234)
!3236 = !DILocation(line: 316, column: 3, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 316, column: 3)
!3238 = !DILocation(line: 317, column: 3, scope: !3221)
!3239 = !DILocation(line: 317, column: 9, scope: !3221)
!3240 = !DILocation(line: 317, column: 16, scope: !3221)
!3241 = !DILocation(line: 317, column: 25, scope: !3221)
!3242 = !DILocation(line: 319, column: 3, scope: !3221)
!3243 = !DILocation(line: 319, column: 9, scope: !3221)
!3244 = !DILocation(line: 319, column: 16, scope: !3221)
!3245 = !DILocation(line: 319, column: 25, scope: !3221)
!3246 = !DILocation(line: 322, column: 26, scope: !3221)
!3247 = !DILocation(line: 322, column: 3, scope: !3221)
!3248 = !DILocation(line: 323, column: 3, scope: !3221)
!3249 = !DILocation(line: 333, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 333, column: 7)
!3251 = !DILocation(line: 333, column: 14, scope: !3250)
!3252 = !DILocation(line: 333, column: 20, scope: !3250)
!3253 = !DILocation(line: 333, column: 23, scope: !3250)
!3254 = !DILocation(line: 333, column: 33, scope: !3250)
!3255 = !DILocation(line: 333, column: 7, scope: !3221)
!3256 = !DILocation(line: 334, column: 4, scope: !3250)
!3257 = !DILocation(line: 333, column: 37, scope: !3250)
!3258 = !DILocation(line: 341, column: 8, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 341, column: 7)
!3260 = !DILocation(line: 341, column: 14, scope: !3259)
!3261 = !DILocation(line: 341, column: 21, scope: !3259)
!3262 = !DILocation(line: 341, column: 7, scope: !3221)
!3263 = !DILocation(line: 342, column: 4, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 342, column: 4)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 342, column: 4)
!3266 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 341, column: 32)
!3267 = !DILocation(line: 342, column: 4, scope: !3265)
!3268 = !DILocation(line: 342, column: 4, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 342, column: 4)
!3270 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 342, column: 4)
!3271 = !DILocation(line: 342, column: 4, scope: !3270)
!3272 = !DILocation(line: 342, column: 4, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 342, column: 4)
!3274 = !DILocation(line: 343, column: 4, scope: !3266)
!3275 = !DILocation(line: 345, column: 2, scope: !3221)
!3276 = !DILocation(line: 350, column: 2, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 350, column: 2)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 350, column: 2)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 350, column: 2)
!3280 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 350, column: 2)
!3281 = !DILocation(line: 352, column: 18, scope: !3096)
!3282 = !DILocation(line: 352, column: 2, scope: !3096)
!3283 = !DILocation(line: 353, column: 1, scope: !3096)
!3284 = distinct !DISubprogram(name: "nand_wait", scope: !3, file: !3, line: 532, type: !2439, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3285 = !DILocation(line: 363, column: 74, scope: !2829, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 552, column: 21, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 551, column: 7)
!3288 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 549, column: 6)
!3289 = !DILocation(line: 26, column: 9, scope: !2837, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 549, column: 6, scope: !3288)
!3291 = !DILocalVariable(name: "chip", arg: 1, scope: !3284, file: !3, line: 532, type: !6)
!3292 = !DILocation(line: 532, column: 40, scope: !3284)
!3293 = !DILocalVariable(name: "timeo", scope: !3284, file: !3, line: 535, type: !99)
!3294 = !DILocation(line: 535, column: 16, scope: !3284)
!3295 = !DILocalVariable(name: "status", scope: !3284, file: !3, line: 536, type: !159)
!3296 = !DILocation(line: 536, column: 5, scope: !3284)
!3297 = !DILocalVariable(name: "ret", scope: !3284, file: !3, line: 537, type: !49)
!3298 = !DILocation(line: 537, column: 6, scope: !3284)
!3299 = !DILocation(line: 543, column: 2, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 543, column: 2)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 543, column: 2)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 543, column: 2)
!3303 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 543, column: 2)
!3304 = !DILocation(line: 545, column: 23, scope: !3284)
!3305 = !DILocation(line: 545, column: 8, scope: !3284)
!3306 = !DILocation(line: 545, column: 6, scope: !3284)
!3307 = !DILocation(line: 546, column: 6, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 546, column: 6)
!3309 = !DILocation(line: 546, column: 6, scope: !3284)
!3310 = !DILocation(line: 547, column: 10, scope: !3308)
!3311 = !DILocation(line: 547, column: 3, scope: !3308)
!3312 = !DILocation(line: 26, column: 41, scope: !2839, inlinedAt: !3290)
!3313 = !DILocation(line: 549, column: 6, scope: !3288)
!3314 = !DILocation(line: 549, column: 21, scope: !3288)
!3315 = !DILocation(line: 549, column: 24, scope: !3288)
!3316 = !DILocation(line: 549, column: 6, scope: !3284)
!3317 = !DILocation(line: 550, column: 19, scope: !3288)
!3318 = !DILocation(line: 550, column: 25, scope: !3288)
!3319 = !DILocation(line: 550, column: 3, scope: !3288)
!3320 = !DILocation(line: 552, column: 11, scope: !3287)
!3321 = !DILocation(line: 552, column: 38, scope: !3287)
!3322 = !DILocation(line: 365, column: 27, scope: !2862, inlinedAt: !3286)
!3323 = !DILocation(line: 365, column: 6, scope: !2862, inlinedAt: !3286)
!3324 = !DILocation(line: 365, column: 6, scope: !2829, inlinedAt: !3286)
!3325 = !DILocation(line: 366, column: 12, scope: !2866, inlinedAt: !3286)
!3326 = !DILocation(line: 366, column: 14, scope: !2866, inlinedAt: !3286)
!3327 = !DILocation(line: 366, column: 7, scope: !2867, inlinedAt: !3286)
!3328 = !DILocation(line: 367, column: 4, scope: !2866, inlinedAt: !3286)
!3329 = !DILocation(line: 368, column: 28, scope: !2867, inlinedAt: !3286)
!3330 = !DILocation(line: 368, column: 10, scope: !2867, inlinedAt: !3286)
!3331 = !DILocation(line: 368, column: 3, scope: !2867, inlinedAt: !3286)
!3332 = !DILocation(line: 370, column: 29, scope: !2875, inlinedAt: !3286)
!3333 = !DILocation(line: 370, column: 10, scope: !2875, inlinedAt: !3286)
!3334 = !DILocation(line: 370, column: 3, scope: !2875, inlinedAt: !3286)
!3335 = !DILocation(line: 372, column: 1, scope: !2829, inlinedAt: !3286)
!3336 = !DILocation(line: 552, column: 19, scope: !3287)
!3337 = !DILocation(line: 552, column: 9, scope: !3287)
!3338 = !DILocation(line: 553, column: 3, scope: !3287)
!3339 = !DILocation(line: 554, column: 8, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 554, column: 8)
!3341 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 553, column: 6)
!3342 = !DILocation(line: 554, column: 14, scope: !3340)
!3343 = !DILocation(line: 554, column: 21, scope: !3340)
!3344 = !DILocation(line: 554, column: 8, scope: !3341)
!3345 = !DILocation(line: 555, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 555, column: 9)
!3347 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 554, column: 32)
!3348 = !DILocation(line: 555, column: 15, scope: !3346)
!3349 = !DILocation(line: 555, column: 22, scope: !3346)
!3350 = !DILocation(line: 555, column: 32, scope: !3346)
!3351 = !DILocation(line: 555, column: 9, scope: !3347)
!3352 = !DILocation(line: 556, column: 6, scope: !3346)
!3353 = !DILocation(line: 557, column: 4, scope: !3347)
!3354 = !DILocation(line: 558, column: 29, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 557, column: 11)
!3356 = !DILocation(line: 558, column: 11, scope: !3355)
!3357 = !DILocation(line: 558, column: 9, scope: !3355)
!3358 = !DILocation(line: 561, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 561, column: 9)
!3360 = !DILocation(line: 561, column: 9, scope: !3355)
!3361 = !DILocation(line: 562, column: 13, scope: !3359)
!3362 = !DILocation(line: 562, column: 6, scope: !3359)
!3363 = !DILocation(line: 564, column: 9, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 564, column: 9)
!3365 = !DILocation(line: 564, column: 16, scope: !3364)
!3366 = !DILocation(line: 564, column: 9, scope: !3355)
!3367 = !DILocation(line: 565, column: 6, scope: !3364)
!3368 = !DILocation(line: 567, column: 4, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 567, column: 4)
!3370 = !DILocation(line: 568, column: 3, scope: !3341)
!3371 = !DILocation(line: 568, column: 12, scope: !3287)
!3372 = distinct !{!3372, !3338, !3373}
!3373 = !DILocation(line: 568, column: 39, scope: !3287)
!3374 = !DILocation(line: 571, column: 26, scope: !3284)
!3375 = !DILocation(line: 571, column: 8, scope: !3284)
!3376 = !DILocation(line: 571, column: 6, scope: !3284)
!3377 = !DILocation(line: 572, column: 6, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 572, column: 6)
!3379 = !DILocation(line: 572, column: 6, scope: !3284)
!3380 = !DILocation(line: 573, column: 10, scope: !3378)
!3381 = !DILocation(line: 573, column: 3, scope: !3378)
!3382 = !DILocalVariable(name: "__ret_warn_on", scope: !3383, file: !3, line: 576, type: !49)
!3383 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 576, column: 2)
!3384 = !DILocation(line: 576, column: 2, scope: !3383)
!3385 = !DILocation(line: 576, column: 2, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 576, column: 2)
!3387 = !DILocation(line: 576, column: 2, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 576, column: 2)
!3389 = !DILocation(line: 576, column: 2, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 576, column: 2)
!3391 = !DILocation(line: 576, column: 2, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 576, column: 2)
!3393 = !{i32 -2143356322, i32 -2143356293, i32 -2143356247, i32 -2143356189, i32 -2143356135, i32 -2143356081, i32 -2143356026, i32 -2143355995}
!3394 = !DILocation(line: 576, column: 2, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 576, column: 2)
!3396 = !{i32 -2143355579, i32 -2143355572, i32 -2143355520, i32 -2143355489, i32 -2143355459}
!3397 = !DILocation(line: 576, column: 2, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 576, column: 2)
!3399 = !DILocation(line: 577, column: 9, scope: !3284)
!3400 = !DILocation(line: 577, column: 2, scope: !3284)
!3401 = !DILocation(line: 578, column: 1, scope: !3284)
!3402 = distinct !DISubprogram(name: "nand_select_chip", scope: !3, file: !3, line: 52, type: !2594, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3403 = !DILocalVariable(name: "chip", arg: 1, scope: !3402, file: !3, line: 52, type: !6)
!3404 = !DILocation(line: 52, column: 48, scope: !3402)
!3405 = !DILocalVariable(name: "chipnr", arg: 2, scope: !3402, file: !3, line: 52, type: !49)
!3406 = !DILocation(line: 52, column: 58, scope: !3402)
!3407 = !DILocation(line: 54, column: 10, scope: !3402)
!3408 = !DILocation(line: 54, column: 2, scope: !3402)
!3409 = !DILocation(line: 56, column: 3, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 54, column: 18)
!3411 = !DILocation(line: 56, column: 9, scope: !3410)
!3412 = !DILocation(line: 56, column: 16, scope: !3410)
!3413 = !DILocation(line: 56, column: 25, scope: !3410)
!3414 = !DILocation(line: 58, column: 3, scope: !3410)
!3415 = !DILocation(line: 60, column: 3, scope: !3410)
!3416 = !DILocation(line: 63, column: 3, scope: !3410)
!3417 = !DILocation(line: 63, column: 3, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 63, column: 3)
!3419 = !DILocation(line: 63, column: 3, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 63, column: 3)
!3421 = !DILocation(line: 63, column: 3, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 63, column: 3)
!3423 = !{i32 -2143365293, i32 -2143365264, i32 -2143365218, i32 -2143365160, i32 -2143365106, i32 -2143365052, i32 -2143364997, i32 -2143364966}
!3424 = !DILocation(line: 63, column: 3, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 63, column: 3)
!3426 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 63, column: 3)
!3427 = !{i32 -2143364510, i32 -2143364503, i32 -2143364449, i32 -2143364418, i32 -2143364388}
!3428 = !DILocation(line: 63, column: 3, scope: !3426)
!3429 = !DILocation(line: 64, column: 2, scope: !3410)
!3430 = !DILocation(line: 65, column: 1, scope: !3402)
!3431 = distinct !DISubprogram(name: "nand_read_byte", scope: !3, file: !3, line: 28, type: !3432, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!158, !6}
!3434 = !DILocalVariable(name: "chip", arg: 1, scope: !3431, file: !3, line: 28, type: !6)
!3435 = !DILocation(line: 28, column: 49, scope: !3431)
!3436 = !DILocation(line: 30, column: 15, scope: !3431)
!3437 = !DILocation(line: 30, column: 21, scope: !3431)
!3438 = !DILocation(line: 30, column: 28, scope: !3431)
!3439 = !DILocation(line: 30, column: 9, scope: !3431)
!3440 = !DILocation(line: 30, column: 2, scope: !3431)
!3441 = distinct !DISubprogram(name: "nand_read_byte16", scope: !3, file: !3, line: 40, type: !3432, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3442 = !DILocalVariable(name: "chip", arg: 1, scope: !3441, file: !3, line: 40, type: !6)
!3443 = !DILocation(line: 40, column: 51, scope: !3441)
!3444 = !DILocation(line: 42, column: 19, scope: !3441)
!3445 = !DILocation(line: 42, column: 9, scope: !3441)
!3446 = !DILocation(line: 42, column: 2, scope: !3441)
!3447 = distinct !DISubprogram(name: "nand_write_buf", scope: !3, file: !3, line: 117, type: !3448, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !6, !2770, !49}
!3450 = !DILocalVariable(name: "chip", arg: 1, scope: !3447, file: !3, line: 117, type: !6)
!3451 = !DILocation(line: 117, column: 46, scope: !3447)
!3452 = !DILocalVariable(name: "buf", arg: 2, scope: !3447, file: !3, line: 117, type: !2770)
!3453 = !DILocation(line: 117, column: 67, scope: !3447)
!3454 = !DILocalVariable(name: "len", arg: 3, scope: !3447, file: !3, line: 117, type: !49)
!3455 = !DILocation(line: 117, column: 76, scope: !3447)
!3456 = !DILocation(line: 119, column: 15, scope: !3447)
!3457 = !DILocation(line: 119, column: 21, scope: !3447)
!3458 = !DILocation(line: 119, column: 28, scope: !3447)
!3459 = !DILocation(line: 119, column: 39, scope: !3447)
!3460 = !DILocation(line: 119, column: 44, scope: !3447)
!3461 = !DILocation(line: 119, column: 2, scope: !3447)
!3462 = !DILocation(line: 120, column: 1, scope: !3447)
!3463 = distinct !DISubprogram(name: "nand_write_buf16", scope: !3, file: !3, line: 143, type: !3448, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3464 = !DILocalVariable(name: "chip", arg: 1, scope: !3463, file: !3, line: 143, type: !6)
!3465 = !DILocation(line: 143, column: 48, scope: !3463)
!3466 = !DILocalVariable(name: "buf", arg: 2, scope: !3463, file: !3, line: 143, type: !2770)
!3467 = !DILocation(line: 143, column: 69, scope: !3463)
!3468 = !DILocalVariable(name: "len", arg: 3, scope: !3463, file: !3, line: 144, type: !49)
!3469 = !DILocation(line: 144, column: 13, scope: !3463)
!3470 = !DILocalVariable(name: "p", scope: !3463, file: !3, line: 146, type: !2811)
!3471 = !DILocation(line: 146, column: 7, scope: !3463)
!3472 = !DILocation(line: 146, column: 19, scope: !3463)
!3473 = !DILocation(line: 146, column: 11, scope: !3463)
!3474 = !DILocation(line: 148, column: 16, scope: !3463)
!3475 = !DILocation(line: 148, column: 22, scope: !3463)
!3476 = !DILocation(line: 148, column: 29, scope: !3463)
!3477 = !DILocation(line: 148, column: 40, scope: !3463)
!3478 = !DILocation(line: 148, column: 43, scope: !3463)
!3479 = !DILocation(line: 148, column: 47, scope: !3463)
!3480 = !DILocation(line: 148, column: 2, scope: !3463)
!3481 = !DILocation(line: 149, column: 1, scope: !3463)
!3482 = distinct !DISubprogram(name: "nand_write_byte", scope: !3, file: !3, line: 74, type: !3483, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !6, !158}
!3485 = !DILocalVariable(name: "chip", arg: 1, scope: !3482, file: !3, line: 74, type: !6)
!3486 = !DILocation(line: 74, column: 47, scope: !3482)
!3487 = !DILocalVariable(name: "byte", arg: 2, scope: !3482, file: !3, line: 74, type: !158)
!3488 = !DILocation(line: 74, column: 61, scope: !3482)
!3489 = !DILocation(line: 76, column: 2, scope: !3482)
!3490 = !DILocation(line: 76, column: 8, scope: !3482)
!3491 = !DILocation(line: 76, column: 15, scope: !3482)
!3492 = !DILocation(line: 76, column: 25, scope: !3482)
!3493 = !DILocation(line: 77, column: 1, scope: !3482)
!3494 = distinct !DISubprogram(name: "nand_write_byte16", scope: !3, file: !3, line: 86, type: !3483, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3495 = !DILocalVariable(name: "chip", arg: 1, scope: !3494, file: !3, line: 86, type: !6)
!3496 = !DILocation(line: 86, column: 49, scope: !3494)
!3497 = !DILocalVariable(name: "byte", arg: 2, scope: !3494, file: !3, line: 86, type: !158)
!3498 = !DILocation(line: 86, column: 63, scope: !3494)
!3499 = !DILocalVariable(name: "word", scope: !3494, file: !3, line: 88, type: !3500)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !20, line: 103, baseType: !525)
!3501 = !DILocation(line: 88, column: 11, scope: !3494)
!3502 = !DILocation(line: 88, column: 18, scope: !3494)
!3503 = !DILocation(line: 106, column: 2, scope: !3494)
!3504 = !DILocation(line: 106, column: 8, scope: !3494)
!3505 = !DILocation(line: 106, column: 15, scope: !3494)
!3506 = !DILocation(line: 106, column: 25, scope: !3494)
!3507 = !DILocation(line: 106, column: 31, scope: !3494)
!3508 = !DILocation(line: 107, column: 1, scope: !3494)
!3509 = distinct !DISubprogram(name: "nand_read_buf", scope: !3, file: !3, line: 130, type: !3510, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !6, !157, !49}
!3512 = !DILocalVariable(name: "chip", arg: 1, scope: !3509, file: !3, line: 130, type: !6)
!3513 = !DILocation(line: 130, column: 45, scope: !3509)
!3514 = !DILocalVariable(name: "buf", arg: 2, scope: !3509, file: !3, line: 130, type: !157)
!3515 = !DILocation(line: 130, column: 60, scope: !3509)
!3516 = !DILocalVariable(name: "len", arg: 3, scope: !3509, file: !3, line: 130, type: !49)
!3517 = !DILocation(line: 130, column: 69, scope: !3509)
!3518 = !DILocation(line: 132, column: 14, scope: !3509)
!3519 = !DILocation(line: 132, column: 20, scope: !3509)
!3520 = !DILocation(line: 132, column: 27, scope: !3509)
!3521 = !DILocation(line: 132, column: 38, scope: !3509)
!3522 = !DILocation(line: 132, column: 43, scope: !3509)
!3523 = !DILocation(line: 132, column: 2, scope: !3509)
!3524 = !DILocation(line: 133, column: 1, scope: !3509)
!3525 = distinct !DISubprogram(name: "nand_read_buf16", scope: !3, file: !3, line: 159, type: !3510, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3526 = !DILocalVariable(name: "chip", arg: 1, scope: !3525, file: !3, line: 159, type: !6)
!3527 = !DILocation(line: 159, column: 47, scope: !3525)
!3528 = !DILocalVariable(name: "buf", arg: 2, scope: !3525, file: !3, line: 159, type: !157)
!3529 = !DILocation(line: 159, column: 62, scope: !3525)
!3530 = !DILocalVariable(name: "len", arg: 3, scope: !3525, file: !3, line: 159, type: !49)
!3531 = !DILocation(line: 159, column: 71, scope: !3525)
!3532 = !DILocalVariable(name: "p", scope: !3525, file: !3, line: 161, type: !2811)
!3533 = !DILocation(line: 161, column: 7, scope: !3525)
!3534 = !DILocation(line: 161, column: 19, scope: !3525)
!3535 = !DILocation(line: 161, column: 11, scope: !3525)
!3536 = !DILocation(line: 163, column: 15, scope: !3525)
!3537 = !DILocation(line: 163, column: 21, scope: !3525)
!3538 = !DILocation(line: 163, column: 28, scope: !3525)
!3539 = !DILocation(line: 163, column: 39, scope: !3525)
!3540 = !DILocation(line: 163, column: 42, scope: !3525)
!3541 = !DILocation(line: 163, column: 46, scope: !3525)
!3542 = !DILocation(line: 163, column: 2, scope: !3525)
!3543 = !DILocation(line: 164, column: 1, scope: !3525)
!3544 = distinct !DISubprogram(name: "nand_legacy_adjust_cmdfunc", scope: !3, file: !3, line: 613, type: !4, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3545 = !DILocalVariable(name: "chip", arg: 1, scope: !3544, file: !3, line: 613, type: !6)
!3546 = !DILocation(line: 613, column: 51, scope: !3544)
!3547 = !DILocalVariable(name: "mtd", scope: !3544, file: !3, line: 615, type: !59)
!3548 = !DILocation(line: 615, column: 19, scope: !3544)
!3549 = !DILocation(line: 615, column: 37, scope: !3544)
!3550 = !DILocation(line: 615, column: 25, scope: !3544)
!3551 = !DILocation(line: 618, column: 6, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 618, column: 6)
!3553 = !DILocation(line: 618, column: 11, scope: !3552)
!3554 = !DILocation(line: 618, column: 21, scope: !3552)
!3555 = !DILocation(line: 618, column: 27, scope: !3552)
!3556 = !DILocation(line: 618, column: 30, scope: !3552)
!3557 = !DILocation(line: 618, column: 36, scope: !3552)
!3558 = !DILocation(line: 618, column: 43, scope: !3552)
!3559 = !DILocation(line: 618, column: 51, scope: !3552)
!3560 = !DILocation(line: 618, column: 6, scope: !3544)
!3561 = !DILocation(line: 619, column: 3, scope: !3552)
!3562 = !DILocation(line: 619, column: 9, scope: !3552)
!3563 = !DILocation(line: 619, column: 16, scope: !3552)
!3564 = !DILocation(line: 619, column: 24, scope: !3552)
!3565 = !DILocation(line: 620, column: 1, scope: !3544)
!3566 = distinct !DISubprogram(name: "nand_to_mtd", scope: !8, file: !8, line: 1152, type: !3567, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!59, !6}
!3569 = !DILocalVariable(name: "chip", arg: 1, scope: !3566, file: !8, line: 1152, type: !6)
!3570 = !DILocation(line: 1152, column: 62, scope: !3566)
!3571 = !DILocation(line: 1154, column: 10, scope: !3566)
!3572 = !DILocation(line: 1154, column: 16, scope: !3566)
!3573 = !DILocation(line: 1154, column: 21, scope: !3566)
!3574 = !DILocation(line: 1154, column: 2, scope: !3566)
!3575 = distinct !DISubprogram(name: "nand_command_lp", scope: !3, file: !3, line: 388, type: !2621, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3576 = !DILocalVariable(name: "chip", arg: 1, scope: !3575, file: !3, line: 388, type: !6)
!3577 = !DILocation(line: 388, column: 47, scope: !3575)
!3578 = !DILocalVariable(name: "command", arg: 2, scope: !3575, file: !3, line: 388, type: !28)
!3579 = !DILocation(line: 388, column: 66, scope: !3575)
!3580 = !DILocalVariable(name: "column", arg: 3, scope: !3575, file: !3, line: 389, type: !49)
!3581 = !DILocation(line: 389, column: 12, scope: !3575)
!3582 = !DILocalVariable(name: "page_addr", arg: 4, scope: !3575, file: !3, line: 389, type: !49)
!3583 = !DILocation(line: 389, column: 24, scope: !3575)
!3584 = !DILocalVariable(name: "mtd", scope: !3575, file: !3, line: 391, type: !59)
!3585 = !DILocation(line: 391, column: 19, scope: !3575)
!3586 = !DILocation(line: 391, column: 37, scope: !3575)
!3587 = !DILocation(line: 391, column: 25, scope: !3575)
!3588 = !DILocation(line: 394, column: 6, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 394, column: 6)
!3590 = !DILocation(line: 394, column: 14, scope: !3589)
!3591 = !DILocation(line: 394, column: 6, scope: !3575)
!3592 = !DILocation(line: 395, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 394, column: 35)
!3594 = !DILocation(line: 395, column: 18, scope: !3593)
!3595 = !DILocation(line: 395, column: 10, scope: !3593)
!3596 = !DILocation(line: 396, column: 11, scope: !3593)
!3597 = !DILocation(line: 397, column: 2, scope: !3593)
!3598 = !DILocation(line: 400, column: 6, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 400, column: 6)
!3600 = !DILocation(line: 400, column: 14, scope: !3599)
!3601 = !DILocation(line: 400, column: 6, scope: !3575)
!3602 = !DILocation(line: 401, column: 3, scope: !3599)
!3603 = !DILocation(line: 401, column: 9, scope: !3599)
!3604 = !DILocation(line: 401, column: 16, scope: !3599)
!3605 = !DILocation(line: 401, column: 25, scope: !3599)
!3606 = !DILocation(line: 401, column: 31, scope: !3599)
!3607 = !DILocation(line: 404, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 404, column: 6)
!3609 = !DILocation(line: 404, column: 13, scope: !3608)
!3610 = !DILocation(line: 404, column: 19, scope: !3608)
!3611 = !DILocation(line: 404, column: 22, scope: !3608)
!3612 = !DILocation(line: 404, column: 32, scope: !3608)
!3613 = !DILocation(line: 404, column: 6, scope: !3575)
!3614 = !DILocalVariable(name: "ctrl", scope: !3615, file: !3, line: 405, type: !49)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 404, column: 39)
!3616 = !DILocation(line: 405, column: 7, scope: !3615)
!3617 = !DILocation(line: 408, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 408, column: 7)
!3619 = !DILocation(line: 408, column: 14, scope: !3618)
!3620 = !DILocation(line: 408, column: 7, scope: !3615)
!3621 = !DILocation(line: 410, column: 8, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 410, column: 8)
!3623 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 408, column: 21)
!3624 = !DILocation(line: 410, column: 14, scope: !3622)
!3625 = !DILocation(line: 410, column: 22, scope: !3622)
!3626 = !DILocation(line: 410, column: 41, scope: !3622)
!3627 = !DILocation(line: 411, column: 25, scope: !3622)
!3628 = !DILocation(line: 411, column: 7, scope: !3622)
!3629 = !DILocation(line: 410, column: 8, scope: !3623)
!3630 = !DILocation(line: 412, column: 12, scope: !3622)
!3631 = !DILocation(line: 412, column: 5, scope: !3622)
!3632 = !DILocation(line: 413, column: 4, scope: !3623)
!3633 = !DILocation(line: 413, column: 10, scope: !3623)
!3634 = !DILocation(line: 413, column: 17, scope: !3623)
!3635 = !DILocation(line: 413, column: 26, scope: !3623)
!3636 = !DILocation(line: 413, column: 32, scope: !3623)
!3637 = !DILocation(line: 413, column: 40, scope: !3623)
!3638 = !DILocation(line: 414, column: 9, scope: !3623)
!3639 = !DILocation(line: 417, column: 27, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 417, column: 8)
!3641 = !DILocation(line: 417, column: 9, scope: !3640)
!3642 = !DILocation(line: 417, column: 8, scope: !3623)
!3643 = !DILocation(line: 418, column: 5, scope: !3640)
!3644 = !DILocation(line: 418, column: 11, scope: !3640)
!3645 = !DILocation(line: 418, column: 18, scope: !3640)
!3646 = !DILocation(line: 418, column: 27, scope: !3640)
!3647 = !DILocation(line: 418, column: 33, scope: !3640)
!3648 = !DILocation(line: 418, column: 40, scope: !3640)
!3649 = !DILocation(line: 418, column: 46, scope: !3640)
!3650 = !DILocation(line: 419, column: 3, scope: !3623)
!3651 = !DILocation(line: 420, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 420, column: 7)
!3653 = !DILocation(line: 420, column: 17, scope: !3652)
!3654 = !DILocation(line: 420, column: 7, scope: !3615)
!3655 = !DILocation(line: 421, column: 4, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 420, column: 24)
!3657 = !DILocation(line: 421, column: 10, scope: !3656)
!3658 = !DILocation(line: 421, column: 17, scope: !3656)
!3659 = !DILocation(line: 421, column: 26, scope: !3656)
!3660 = !DILocation(line: 421, column: 32, scope: !3656)
!3661 = !DILocation(line: 421, column: 43, scope: !3656)
!3662 = !DILocation(line: 422, column: 4, scope: !3656)
!3663 = !DILocation(line: 422, column: 10, scope: !3656)
!3664 = !DILocation(line: 422, column: 17, scope: !3656)
!3665 = !DILocation(line: 422, column: 26, scope: !3656)
!3666 = !DILocation(line: 422, column: 32, scope: !3656)
!3667 = !DILocation(line: 422, column: 42, scope: !3656)
!3668 = !DILocation(line: 424, column: 8, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 424, column: 8)
!3670 = !DILocation(line: 424, column: 14, scope: !3669)
!3671 = !DILocation(line: 424, column: 22, scope: !3669)
!3672 = !DILocation(line: 424, column: 8, scope: !3656)
!3673 = !DILocation(line: 425, column: 5, scope: !3669)
!3674 = !DILocation(line: 425, column: 11, scope: !3669)
!3675 = !DILocation(line: 425, column: 18, scope: !3669)
!3676 = !DILocation(line: 425, column: 27, scope: !3669)
!3677 = !DILocation(line: 425, column: 33, scope: !3669)
!3678 = !DILocation(line: 425, column: 43, scope: !3669)
!3679 = !DILocation(line: 427, column: 3, scope: !3656)
!3680 = !DILocation(line: 428, column: 2, scope: !3615)
!3681 = !DILocation(line: 429, column: 2, scope: !3575)
!3682 = !DILocation(line: 429, column: 8, scope: !3575)
!3683 = !DILocation(line: 429, column: 15, scope: !3575)
!3684 = !DILocation(line: 429, column: 24, scope: !3575)
!3685 = !DILocation(line: 436, column: 10, scope: !3575)
!3686 = !DILocation(line: 436, column: 2, scope: !3575)
!3687 = !DILocation(line: 447, column: 3, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 436, column: 19)
!3689 = !DILocation(line: 450, column: 18, scope: !3688)
!3690 = !DILocation(line: 450, column: 3, scope: !3688)
!3691 = !DILocation(line: 451, column: 3, scope: !3688)
!3692 = !DILocation(line: 454, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 454, column: 7)
!3694 = !DILocation(line: 454, column: 13, scope: !3693)
!3695 = !DILocation(line: 454, column: 20, scope: !3693)
!3696 = !DILocation(line: 454, column: 7, scope: !3688)
!3697 = !DILocation(line: 455, column: 4, scope: !3693)
!3698 = !DILocation(line: 456, column: 3, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 456, column: 3)
!3700 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 456, column: 3)
!3701 = !DILocation(line: 456, column: 3, scope: !3700)
!3702 = !DILocation(line: 456, column: 3, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 456, column: 3)
!3704 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 456, column: 3)
!3705 = !DILocation(line: 456, column: 3, scope: !3704)
!3706 = !DILocation(line: 456, column: 3, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 456, column: 3)
!3708 = !DILocation(line: 457, column: 3, scope: !3688)
!3709 = !DILocation(line: 457, column: 9, scope: !3688)
!3710 = !DILocation(line: 457, column: 16, scope: !3688)
!3711 = !DILocation(line: 457, column: 25, scope: !3688)
!3712 = !DILocation(line: 459, column: 3, scope: !3688)
!3713 = !DILocation(line: 459, column: 9, scope: !3688)
!3714 = !DILocation(line: 459, column: 16, scope: !3688)
!3715 = !DILocation(line: 459, column: 25, scope: !3688)
!3716 = !DILocation(line: 462, column: 26, scope: !3688)
!3717 = !DILocation(line: 462, column: 3, scope: !3688)
!3718 = !DILocation(line: 463, column: 3, scope: !3688)
!3719 = !DILocation(line: 467, column: 3, scope: !3688)
!3720 = !DILocation(line: 467, column: 9, scope: !3688)
!3721 = !DILocation(line: 467, column: 16, scope: !3688)
!3722 = !DILocation(line: 467, column: 25, scope: !3688)
!3723 = !DILocation(line: 469, column: 3, scope: !3688)
!3724 = !DILocation(line: 469, column: 9, scope: !3688)
!3725 = !DILocation(line: 469, column: 16, scope: !3688)
!3726 = !DILocation(line: 469, column: 25, scope: !3688)
!3727 = !DILocation(line: 472, column: 18, scope: !3688)
!3728 = !DILocation(line: 472, column: 3, scope: !3688)
!3729 = !DILocation(line: 473, column: 3, scope: !3688)
!3730 = !DILocation(line: 482, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 482, column: 7)
!3732 = !DILocation(line: 482, column: 14, scope: !3731)
!3733 = !DILocation(line: 482, column: 20, scope: !3731)
!3734 = !DILocation(line: 482, column: 23, scope: !3731)
!3735 = !DILocation(line: 482, column: 33, scope: !3731)
!3736 = !DILocation(line: 482, column: 7, scope: !3688)
!3737 = !DILocation(line: 483, column: 4, scope: !3731)
!3738 = !DILocation(line: 485, column: 3, scope: !3688)
!3739 = !DILocation(line: 485, column: 9, scope: !3688)
!3740 = !DILocation(line: 485, column: 16, scope: !3688)
!3741 = !DILocation(line: 485, column: 25, scope: !3688)
!3742 = !DILocation(line: 487, column: 3, scope: !3688)
!3743 = !DILocation(line: 487, column: 9, scope: !3688)
!3744 = !DILocation(line: 487, column: 16, scope: !3688)
!3745 = !DILocation(line: 487, column: 25, scope: !3688)
!3746 = !DILocation(line: 495, column: 8, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 495, column: 7)
!3748 = !DILocation(line: 495, column: 14, scope: !3747)
!3749 = !DILocation(line: 495, column: 21, scope: !3747)
!3750 = !DILocation(line: 495, column: 7, scope: !3688)
!3751 = !DILocation(line: 496, column: 4, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 496, column: 4)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !3, line: 496, column: 4)
!3754 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 495, column: 32)
!3755 = !DILocation(line: 496, column: 4, scope: !3753)
!3756 = !DILocation(line: 496, column: 4, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 496, column: 4)
!3758 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 496, column: 4)
!3759 = !DILocation(line: 496, column: 4, scope: !3758)
!3760 = !DILocation(line: 496, column: 4, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 496, column: 4)
!3762 = !DILocation(line: 497, column: 4, scope: !3754)
!3763 = !DILocation(line: 499, column: 2, scope: !3688)
!3764 = !DILocation(line: 505, column: 2, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 505, column: 2)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 505, column: 2)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 505, column: 2)
!3768 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 505, column: 2)
!3769 = !DILocation(line: 507, column: 18, scope: !3575)
!3770 = !DILocation(line: 507, column: 2, scope: !3575)
!3771 = !DILocation(line: 508, column: 1, scope: !3575)
!3772 = distinct !DISubprogram(name: "nand_legacy_check_hooks", scope: !3, file: !3, line: 622, type: !2439, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3773 = !DILocalVariable(name: "chip", arg: 1, scope: !3772, file: !3, line: 622, type: !6)
!3774 = !DILocation(line: 622, column: 47, scope: !3772)
!3775 = !DILocation(line: 628, column: 23, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 628, column: 6)
!3777 = !DILocation(line: 628, column: 6, scope: !3776)
!3778 = !DILocation(line: 628, column: 6, scope: !3772)
!3779 = !DILocation(line: 629, column: 3, scope: !3776)
!3780 = !DILocation(line: 636, column: 8, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 636, column: 6)
!3782 = !DILocation(line: 636, column: 14, scope: !3781)
!3783 = !DILocation(line: 636, column: 21, scope: !3781)
!3784 = !DILocation(line: 636, column: 29, scope: !3781)
!3785 = !DILocation(line: 636, column: 33, scope: !3781)
!3786 = !DILocation(line: 636, column: 39, scope: !3781)
!3787 = !DILocation(line: 636, column: 46, scope: !3781)
!3788 = !DILocation(line: 636, column: 59, scope: !3781)
!3789 = !DILocation(line: 637, column: 7, scope: !3781)
!3790 = !DILocation(line: 637, column: 13, scope: !3781)
!3791 = !DILocation(line: 637, column: 20, scope: !3781)
!3792 = !DILocation(line: 636, column: 6, scope: !3772)
!3793 = !DILocation(line: 638, column: 3, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 637, column: 30)
!3795 = !DILocation(line: 639, column: 3, scope: !3794)
!3796 = !DILocation(line: 642, column: 2, scope: !3772)
!3797 = !DILocation(line: 643, column: 1, scope: !3772)
!3798 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !3799, file: !3799, line: 53, type: !3800, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3799 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/lizy2001/genbc/linux")
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null}
!3802 = !DILocation(line: 53, column: 54, scope: !3798)
!3803 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !2830, file: !2830, line: 308, type: !2831, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3804 = !DILocalVariable(name: "m", arg: 1, scope: !3803, file: !2830, line: 308, type: !2833)
!3805 = !DILocation(line: 308, column: 66, scope: !3803)
!3806 = !DILocation(line: 310, column: 10, scope: !3803)
!3807 = !DILocation(line: 310, column: 12, scope: !3803)
!3808 = !DILocation(line: 310, column: 34, scope: !3803)
!3809 = !DILocation(line: 310, column: 39, scope: !3803)
!3810 = !DILocation(line: 310, column: 2, scope: !3803)
!3811 = distinct !DISubprogram(name: "nand_opcode_8bits", scope: !8, file: !8, line: 1292, type: !3812, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!49, !28}
!3814 = !DILocalVariable(name: "command", arg: 1, scope: !3811, file: !8, line: 1292, type: !28)
!3815 = !DILocation(line: 1292, column: 50, scope: !3811)
!3816 = !DILocation(line: 1294, column: 10, scope: !3811)
!3817 = !DILocation(line: 1294, column: 2, scope: !3811)
!3818 = !DILocation(line: 1299, column: 3, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3811, file: !8, line: 1294, column: 19)
!3820 = !DILocation(line: 1301, column: 3, scope: !3819)
!3821 = !DILocation(line: 1303, column: 2, scope: !3811)
!3822 = !DILocation(line: 1304, column: 1, scope: !3811)
!3823 = distinct !DISubprogram(name: "nand_wait_status_ready", scope: !3, file: !3, line: 220, type: !2909, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3824 = !DILocation(line: 363, column: 74, scope: !2829, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 224, column: 20, scope: !3823)
!3826 = !DILocalVariable(name: "chip", arg: 1, scope: !3823, file: !3, line: 220, type: !6)
!3827 = !DILocation(line: 220, column: 54, scope: !3823)
!3828 = !DILocalVariable(name: "timeo", arg: 2, scope: !3823, file: !3, line: 220, type: !99)
!3829 = !DILocation(line: 220, column: 74, scope: !3823)
!3830 = !DILocalVariable(name: "ret", scope: !3823, file: !3, line: 222, type: !49)
!3831 = !DILocation(line: 222, column: 6, scope: !3823)
!3832 = !DILocation(line: 224, column: 10, scope: !3823)
!3833 = !DILocation(line: 224, column: 37, scope: !3823)
!3834 = !DILocation(line: 365, column: 27, scope: !2862, inlinedAt: !3825)
!3835 = !DILocation(line: 365, column: 6, scope: !2862, inlinedAt: !3825)
!3836 = !DILocation(line: 365, column: 6, scope: !2829, inlinedAt: !3825)
!3837 = !DILocation(line: 366, column: 12, scope: !2866, inlinedAt: !3825)
!3838 = !DILocation(line: 366, column: 14, scope: !2866, inlinedAt: !3825)
!3839 = !DILocation(line: 366, column: 7, scope: !2867, inlinedAt: !3825)
!3840 = !DILocation(line: 367, column: 4, scope: !2866, inlinedAt: !3825)
!3841 = !DILocation(line: 368, column: 28, scope: !2867, inlinedAt: !3825)
!3842 = !DILocation(line: 368, column: 10, scope: !2867, inlinedAt: !3825)
!3843 = !DILocation(line: 368, column: 3, scope: !2867, inlinedAt: !3825)
!3844 = !DILocation(line: 370, column: 29, scope: !2875, inlinedAt: !3825)
!3845 = !DILocation(line: 370, column: 10, scope: !2875, inlinedAt: !3825)
!3846 = !DILocation(line: 370, column: 3, scope: !2875, inlinedAt: !3825)
!3847 = !DILocation(line: 372, column: 1, scope: !2829, inlinedAt: !3825)
!3848 = !DILocation(line: 224, column: 18, scope: !3823)
!3849 = !DILocation(line: 224, column: 8, scope: !3823)
!3850 = !DILocation(line: 225, column: 2, scope: !3823)
!3851 = !DILocalVariable(name: "status", scope: !3852, file: !3, line: 226, type: !159)
!3852 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 225, column: 5)
!3853 = !DILocation(line: 226, column: 6, scope: !3852)
!3854 = !DILocation(line: 228, column: 27, scope: !3852)
!3855 = !DILocation(line: 228, column: 9, scope: !3852)
!3856 = !DILocation(line: 228, column: 7, scope: !3852)
!3857 = !DILocation(line: 230, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 230, column: 7)
!3859 = !DILocation(line: 230, column: 7, scope: !3852)
!3860 = !DILocation(line: 231, column: 4, scope: !3858)
!3861 = !DILocation(line: 233, column: 7, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 233, column: 7)
!3863 = !DILocation(line: 233, column: 14, scope: !3862)
!3864 = !DILocation(line: 233, column: 7, scope: !3852)
!3865 = !DILocation(line: 234, column: 4, scope: !3862)
!3866 = !DILocation(line: 235, column: 3, scope: !3852)
!3867 = !DILocation(line: 236, column: 2, scope: !3852)
!3868 = !DILocation(line: 236, column: 11, scope: !3823)
!3869 = distinct !{!3869, !3850, !3870}
!3870 = !DILocation(line: 236, column: 38, scope: !3823)
!3871 = !DILocation(line: 237, column: 1, scope: !3823)
!3872 = distinct !DISubprogram(name: "readb", scope: !3873, file: !3873, line: 57, type: !3874, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3873 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!21, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3879 = !DILocalVariable(name: "addr", arg: 1, scope: !3872, file: !3873, line: 57, type: !3876)
!3880 = !DILocation(line: 57, column: 1, scope: !3872)
!3881 = !DILocalVariable(name: "ret", scope: !3872, file: !3873, line: 57, type: !21)
!3882 = !{i32 -2146508126}
!3883 = distinct !DISubprogram(name: "readw", scope: !3873, file: !3873, line: 58, type: !3884, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!348, !3876}
!3886 = !DILocalVariable(name: "addr", arg: 1, scope: !3883, file: !3873, line: 58, type: !3876)
!3887 = !DILocation(line: 58, column: 1, scope: !3883)
!3888 = !DILocalVariable(name: "ret", scope: !3883, file: !3873, line: 58, type: !348)
!3889 = !{i32 -2146507712}
!3890 = distinct !DISubprogram(name: "nand_ccs_delay", scope: !3, file: !3, line: 355, type: !4, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3891 = !DILocalVariable(name: "chip", arg: 1, scope: !3890, file: !3, line: 355, type: !6)
!3892 = !DILocation(line: 355, column: 46, scope: !3890)
!3893 = !DILocalVariable(name: "sdr", scope: !3890, file: !3, line: 357, type: !3894)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2547)
!3896 = !DILocation(line: 357, column: 33, scope: !3890)
!3897 = !DILocation(line: 358, column: 50, scope: !3890)
!3898 = !DILocation(line: 358, column: 24, scope: !3890)
!3899 = !DILocation(line: 358, column: 3, scope: !3890)
!3900 = !DILocation(line: 364, column: 8, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 364, column: 6)
!3902 = !DILocation(line: 364, column: 14, scope: !3901)
!3903 = !DILocation(line: 364, column: 22, scope: !3901)
!3904 = !DILocation(line: 364, column: 6, scope: !3890)
!3905 = !DILocation(line: 365, column: 3, scope: !3901)
!3906 = !DILocation(line: 371, column: 42, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 371, column: 6)
!3908 = !DILocation(line: 371, column: 6, scope: !3907)
!3909 = !DILocation(line: 371, column: 6, scope: !3890)
!3910 = !DILocation(line: 372, column: 3, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 372, column: 3)
!3912 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 372, column: 3)
!3913 = !DILocation(line: 372, column: 3, scope: !3912)
!3914 = !DILocation(line: 372, column: 3, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 372, column: 3)
!3916 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 372, column: 3)
!3917 = !DILocation(line: 372, column: 3, scope: !3916)
!3918 = !DILocation(line: 372, column: 3, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 372, column: 3)
!3920 = !DILocation(line: 372, column: 3, scope: !3907)
!3921 = !DILocation(line: 374, column: 3, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 374, column: 3)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 374, column: 3)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 374, column: 3)
!3925 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 374, column: 3)
!3926 = !DILocation(line: 375, column: 1, scope: !3890)
!3927 = distinct !DISubprogram(name: "nand_get_sdr_timings", scope: !8, file: !8, line: 507, type: !3928, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!3894, !2701}
!3930 = !DILocalVariable(name: "conf", arg: 1, scope: !3927, file: !8, line: 507, type: !2701)
!3931 = !DILocation(line: 507, column: 58, scope: !3927)
!3932 = !DILocation(line: 509, column: 6, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3927, file: !8, line: 509, column: 6)
!3934 = !DILocation(line: 509, column: 12, scope: !3933)
!3935 = !DILocation(line: 509, column: 17, scope: !3933)
!3936 = !DILocation(line: 509, column: 6, scope: !3927)
!3937 = !DILocation(line: 510, column: 10, scope: !3933)
!3938 = !DILocation(line: 510, column: 3, scope: !3933)
!3939 = !DILocation(line: 512, column: 10, scope: !3927)
!3940 = !DILocation(line: 512, column: 16, scope: !3927)
!3941 = !DILocation(line: 512, column: 24, scope: !3927)
!3942 = !DILocation(line: 512, column: 2, scope: !3927)
!3943 = !DILocation(line: 513, column: 1, scope: !3927)
!3944 = distinct !DISubprogram(name: "nand_get_interface_config", scope: !8, file: !8, line: 1195, type: !3945, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!2701, !6}
!3947 = !DILocalVariable(name: "chip", arg: 1, scope: !3944, file: !8, line: 1195, type: !6)
!3948 = !DILocation(line: 1195, column: 45, scope: !3944)
!3949 = !DILocation(line: 1197, column: 9, scope: !3944)
!3950 = !DILocation(line: 1197, column: 15, scope: !3944)
!3951 = !DILocation(line: 1197, column: 2, scope: !3944)
!3952 = distinct !DISubprogram(name: "nand_controller_can_setup_interface", scope: !2426, file: !2426, line: 140, type: !3076, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3953 = !DILocalVariable(name: "chip", arg: 1, scope: !3952, file: !2426, line: 140, type: !6)
!3954 = !DILocation(line: 140, column: 74, scope: !3952)
!3955 = !DILocation(line: 142, column: 7, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3952, file: !2426, line: 142, column: 6)
!3957 = !DILocation(line: 142, column: 13, scope: !3956)
!3958 = !DILocation(line: 142, column: 24, scope: !3956)
!3959 = !DILocation(line: 142, column: 28, scope: !3956)
!3960 = !DILocation(line: 142, column: 34, scope: !3956)
!3961 = !DILocation(line: 142, column: 46, scope: !3956)
!3962 = !DILocation(line: 142, column: 50, scope: !3956)
!3963 = !DILocation(line: 143, column: 7, scope: !3956)
!3964 = !DILocation(line: 143, column: 13, scope: !3956)
!3965 = !DILocation(line: 143, column: 25, scope: !3956)
!3966 = !DILocation(line: 143, column: 30, scope: !3956)
!3967 = !DILocation(line: 142, column: 6, scope: !3952)
!3968 = !DILocation(line: 144, column: 3, scope: !3956)
!3969 = !DILocation(line: 146, column: 6, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3952, file: !2426, line: 146, column: 6)
!3971 = !DILocation(line: 146, column: 12, scope: !3970)
!3972 = !DILocation(line: 146, column: 20, scope: !3970)
!3973 = !DILocation(line: 146, column: 6, scope: !3952)
!3974 = !DILocation(line: 147, column: 3, scope: !3970)
!3975 = !DILocation(line: 149, column: 2, scope: !3952)
!3976 = !DILocation(line: 150, column: 1, scope: !3952)
!3977 = distinct !DISubprogram(name: "ERR_PTR", scope: !3978, file: !3978, line: 24, type: !3979, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2799, retainedNodes: !280)
!3978 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!123, !341}
!3981 = !DILocalVariable(name: "error", arg: 1, scope: !3977, file: !3978, line: 24, type: !341)
!3982 = !DILocation(line: 24, column: 48, scope: !3977)
!3983 = !DILocation(line: 26, column: 18, scope: !3977)
!3984 = !DILocation(line: 26, column: 9, scope: !3977)
!3985 = !DILocation(line: 26, column: 2, scope: !3977)
