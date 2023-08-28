; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_bbt.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, i8* }
%struct.kmem_cache = type opaque
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
%struct.nand_manufacturer_ops = type { void (%struct.nand_chip*)*, {}*, void (%struct.nand_chip*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* }
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_chip_ops = type { {}*, void (%struct.nand_chip*)*, i32 (%struct.nand_chip*, i64, i64)*, i32 (%struct.nand_chip*, i64, i64)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, %struct.nand_interface_config*)* }
%struct.nand_legacy = type { i8*, i8*, void (%struct.nand_chip*, i32)*, i8 (%struct.nand_chip*)*, void (%struct.nand_chip*, i8)*, void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i8*, i32)*, void (%struct.nand_chip*, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)*, {}*, {}*, i32 (%struct.nand_chip*, i64)*, i32 (%struct.nand_chip*, i64)*, i32 (%struct.nand_chip*, i32, i8*)*, i32 (%struct.nand_chip*, i32, i8*)*, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, %struct.nand_controller_ops* }
%struct.nand_controller_ops = type { {}*, void (%struct.nand_chip*)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, i32, %struct.nand_interface_config*)* }
%struct.nand_operation = type { i32, %struct.nand_op_instr*, i32 }
%struct.nand_op_instr = type { i32, %union.anon.42, i32 }
%union.anon.42 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.43, i8 }
%union.anon.43 = type { i8* }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.41 }
%union.anon.41 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.anon.44 = type { i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, void (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)* }

@bbt_main_no_oob_descr = internal global %struct.nand_bbt_descr { i32 271250, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bbt_pattern, i32 0, i32 0) }, align 8, !dbg !0
@bbt_mirror_no_oob_descr = internal global %struct.nand_bbt_descr { i32 271250, [8 x i32] zeroinitializer, i32 0, i32 4, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mirror_pattern, i32 0, i32 0) }, align 8, !dbg !129
@bbt_main_descr = internal global %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 8, i32 12, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bbt_pattern, i32 0, i32 0) }, align 8, !dbg !150
@bbt_mirror_descr = internal global %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 8, i32 12, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mirror_pattern, i32 0, i32 0) }, align 8, !dbg !152
@bbt_pattern = internal global [4 x i8] c"Bbt0", align 1, !dbg !124
@mirror_pattern = internal global [4 x i8] c"1tbB", align 1, !dbg !148
@.str = private unnamed_addr constant [54 x i8] c"\014Bad block pattern already allocated; not replacing\0A\00", align 1
@scan_ff_pattern = internal global [2 x i8] c"\FF\FF", align 1, !dbg !154
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\013nand_bbt: can't scan flash and build the RAM-based BBT\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\016Scanning device for bad blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\014create_bbt(): chipnr (%d) > available chips (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"drivers/mtd/nand/raw/nand_bbt.c\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\014Bad eraseblock %d at 0x%012llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\016Bad block table at page %d, version 0x%02X\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\014Bad block table not found for chip %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"\016Bad block table found at page %d, version 0x%02X\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\016nand_bbt: ECC error in BBT at 0x%012llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\016nand_bbt: corrected error in BBT at 0x%012llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\016nand_bbt: error reading BBT\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\016nand_read_bbt: reserved block at 0x%012llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\016nand_read_bbt: bad block at 0x%012llx\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\013No space left to write bad block table\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"\016nand_bbt: error reading block for writing the bad block table\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"\014nand_bbt: ECC error while reading block for writing bad block table\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"\014nand_bbt: error while erasing BBT block %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\014nand_bbt: error while writing BBT block %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"\016Bad block table written to 0x%012llx, version 0x%02X\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"\014nand_bbt: error while writing bad block table %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"\014nand_bbt: error %d while marking block %d bad\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_create_bbt(%struct.nand_chip* %this) #0 !dbg !164 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %ret = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !2838, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2840, metadata !DIExpression()), !dbg !2841
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2842
  %bbt_options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 10, !dbg !2844
  %1 = load i32, i32* %bbt_options, align 4, !dbg !2844
  %and = and i32 %1, 131072, !dbg !2845
  %tobool = icmp ne i32 %and, 0, !dbg !2845
  br i1 %tobool, label %if.then, label %if.else11, !dbg !2846

if.then:                                          ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2847
  %bbt_td = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 13, !dbg !2850
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_td, align 8, !dbg !2850
  %tobool1 = icmp ne %struct.nand_bbt_descr* %3, null, !dbg !2847
  br i1 %tobool1, label %if.end10, label %if.then2, !dbg !2851

if.then2:                                         ; preds = %if.then
  %4 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2852
  %bbt_options3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 10, !dbg !2855
  %5 = load i32, i32* %bbt_options3, align 4, !dbg !2855
  %and4 = and i32 %5, 262144, !dbg !2856
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2856
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !2857

if.then6:                                         ; preds = %if.then2
  %6 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2858
  %bbt_td7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 13, !dbg !2860
  store %struct.nand_bbt_descr* @bbt_main_no_oob_descr, %struct.nand_bbt_descr** %bbt_td7, align 8, !dbg !2861
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2862
  %bbt_md = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 14, !dbg !2863
  store %struct.nand_bbt_descr* @bbt_mirror_no_oob_descr, %struct.nand_bbt_descr** %bbt_md, align 8, !dbg !2864
  br label %if.end, !dbg !2865

if.else:                                          ; preds = %if.then2
  %8 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2866
  %bbt_td8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 13, !dbg !2868
  store %struct.nand_bbt_descr* @bbt_main_descr, %struct.nand_bbt_descr** %bbt_td8, align 8, !dbg !2869
  %9 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2870
  %bbt_md9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 14, !dbg !2871
  store %struct.nand_bbt_descr* @bbt_mirror_descr, %struct.nand_bbt_descr** %bbt_md9, align 8, !dbg !2872
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end10, !dbg !2873

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end14, !dbg !2874

if.else11:                                        ; preds = %entry
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2875
  %bbt_td12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 13, !dbg !2877
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %bbt_td12, align 8, !dbg !2878
  %11 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2879
  %bbt_md13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 14, !dbg !2880
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %bbt_md13, align 8, !dbg !2881
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.end10
  %12 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2882
  %badblock_pattern = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 15, !dbg !2884
  %13 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %badblock_pattern, align 8, !dbg !2884
  %tobool15 = icmp ne %struct.nand_bbt_descr* %13, null, !dbg !2882
  br i1 %tobool15, label %if.end20, label %if.then16, !dbg !2885

if.then16:                                        ; preds = %if.end14
  %14 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2886
  %call = call i32 @nand_create_badblock_pattern(%struct.nand_chip* %14) #8, !dbg !2888
  store i32 %call, i32* %ret, align 4, !dbg !2889
  %15 = load i32, i32* %ret, align 4, !dbg !2890
  %tobool17 = icmp ne i32 %15, 0, !dbg !2890
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2892

if.then18:                                        ; preds = %if.then16
  %16 = load i32, i32* %ret, align 4, !dbg !2893
  store i32 %16, i32* %retval, align 4, !dbg !2894
  br label %return, !dbg !2894

if.end19:                                         ; preds = %if.then16
  br label %if.end20, !dbg !2895

if.end20:                                         ; preds = %if.end19, %if.end14
  %17 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2896
  %18 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2897
  %badblock_pattern21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 15, !dbg !2898
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %badblock_pattern21, align 8, !dbg !2898
  %call22 = call i32 @nand_scan_bbt(%struct.nand_chip* %17, %struct.nand_bbt_descr* %19) #8, !dbg !2899
  store i32 %call22, i32* %retval, align 4, !dbg !2900
  br label %return, !dbg !2900

return:                                           ; preds = %if.end20, %if.then18
  %20 = load i32, i32* %retval, align 4, !dbg !2901
  ret i32 %20, !dbg !2901
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_create_badblock_pattern(%struct.nand_chip* %this) #0 !dbg !2902 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %bd = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd, metadata !2905, metadata !DIExpression()), !dbg !2906
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2907
  %badblock_pattern = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 15, !dbg !2909
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %badblock_pattern, align 8, !dbg !2909
  %tobool = icmp ne %struct.nand_bbt_descr* %1, null, !dbg !2907
  br i1 %tobool, label %if.then, label %if.end, !dbg !2910

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2911
  store i32 -22, i32* %retval, align 4, !dbg !2913
  br label %return, !dbg !2913

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 72, i32 3264) #8, !dbg !2914
  %2 = bitcast i8* %call1 to %struct.nand_bbt_descr*, !dbg !2914
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %bd, align 8, !dbg !2915
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2916
  %tobool2 = icmp ne %struct.nand_bbt_descr* %3, null, !dbg !2916
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2918

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2919
  br label %return, !dbg !2919

if.end4:                                          ; preds = %if.end
  %4 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2920
  %bbt_options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 10, !dbg !2921
  %5 = load i32, i32* %bbt_options, align 4, !dbg !2921
  %and = and i32 %5, -262145, !dbg !2922
  %6 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2923
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %6, i32 0, i32 0, !dbg !2924
  store i32 %and, i32* %options, align 8, !dbg !2925
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2926
  %badblockpos = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 11, !dbg !2927
  %8 = load i32, i32* %badblockpos, align 8, !dbg !2927
  %9 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2928
  %offs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %9, i32 0, i32 2, !dbg !2929
  store i32 %8, i32* %offs, align 4, !dbg !2930
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2931
  %options5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 6, !dbg !2932
  %11 = load i32, i32* %options5, align 8, !dbg !2932
  %conv = zext i32 %11 to i64, !dbg !2931
  %and6 = and i64 %conv, 2, !dbg !2933
  %tobool7 = icmp ne i64 %and6, 0, !dbg !2934
  %12 = zext i1 %tobool7 to i64, !dbg !2934
  %cond = select i1 %tobool7, i32 2, i32 1, !dbg !2934
  %13 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2935
  %len = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %13, i32 0, i32 5, !dbg !2936
  store i32 %cond, i32* %len, align 4, !dbg !2937
  %14 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2938
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %14, i32 0, i32 8, !dbg !2939
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @scan_ff_pattern, i64 0, i64 0), i8** %pattern, align 8, !dbg !2940
  %15 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2941
  %options8 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %15, i32 0, i32 0, !dbg !2942
  %16 = load i32, i32* %options8, align 8, !dbg !2943
  %or = or i32 %16, -2147483648, !dbg !2943
  store i32 %or, i32* %options8, align 8, !dbg !2943
  %17 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd, align 8, !dbg !2944
  %18 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2945
  %badblock_pattern9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 15, !dbg !2946
  store %struct.nand_bbt_descr* %17, %struct.nand_bbt_descr** %badblock_pattern9, align 8, !dbg !2947
  store i32 0, i32* %retval, align 4, !dbg !2948
  br label %return, !dbg !2948

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !2949
  ret i32 %19, !dbg !2949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_scan_bbt(%struct.nand_chip* %this, %struct.nand_bbt_descr* %bd) #0 !dbg !2950 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %bd.addr = alloca %struct.nand_bbt_descr*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %len = alloca i32, align 4
  %res = alloca i32, align 4
  %buf = alloca i8*, align 8
  %td = alloca %struct.nand_bbt_descr*, align 8
  %md = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  store %struct.nand_bbt_descr* %bd, %struct.nand_bbt_descr** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2957, metadata !DIExpression()), !dbg !2958
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2959
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !2960
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2958
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !2965, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td, metadata !2967, metadata !DIExpression()), !dbg !2968
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2969
  %bbt_td = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 13, !dbg !2970
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_td, align 8, !dbg !2970
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %td, align 8, !dbg !2968
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md, metadata !2971, metadata !DIExpression()), !dbg !2972
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2973
  %bbt_md = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 14, !dbg !2974
  %4 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_md, align 8, !dbg !2974
  store %struct.nand_bbt_descr* %4, %struct.nand_bbt_descr** %md, align 8, !dbg !2972
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2975
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 2, !dbg !2976
  %6 = load i64, i64* %size, align 8, !dbg !2976
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2977
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 9, !dbg !2978
  %8 = load i32, i32* %bbt_erase_shift, align 8, !dbg !2978
  %add = add i32 %8, 2, !dbg !2979
  %sh_prom = zext i32 %add to i64, !dbg !2980
  %shr = lshr i64 %6, %sh_prom, !dbg !2980
  %tobool = icmp ne i64 %shr, 0, !dbg !2981
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2981

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2981

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ 1, %cond.false ], !dbg !2981
  %conv = trunc i64 %cond to i32, !dbg !2981
  store i32 %conv, i32* %len, align 4, !dbg !2982
  %9 = load i32, i32* %len, align 4, !dbg !2983
  %conv1 = sext i32 %9 to i64, !dbg !2983
  %call2 = call i8* @kzalloc(i64 %conv1, i32 3264) #8, !dbg !2984
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2985
  %bbt = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 16, !dbg !2986
  store i8* %call2, i8** %bbt, align 8, !dbg !2987
  %11 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2988
  %bbt3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 16, !dbg !2990
  %12 = load i8*, i8** %bbt3, align 8, !dbg !2990
  %tobool4 = icmp ne i8* %12, null, !dbg !2988
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2991

if.then:                                          ; preds = %cond.end
  store i32 -12, i32* %retval, align 4, !dbg !2992
  br label %return, !dbg !2992

if.end:                                           ; preds = %cond.end
  %13 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !2993
  %tobool5 = icmp ne %struct.nand_bbt_descr* %13, null, !dbg !2993
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !2995

if.then6:                                         ; preds = %if.end
  %14 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !2996
  %15 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !2999
  %call7 = call i32 @nand_memory_bbt(%struct.nand_chip* %14, %struct.nand_bbt_descr* %15) #8, !dbg !3000
  store i32 %call7, i32* %res, align 4, !dbg !3001
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3001
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !3002

if.then9:                                         ; preds = %if.then6
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3003
  br label %err_free_bbt, !dbg !3005

if.end11:                                         ; preds = %if.then6
  store i32 0, i32* %retval, align 4, !dbg !3006
  br label %return, !dbg !3006

if.end12:                                         ; preds = %if.end
  %16 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3007
  %17 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3008
  call void @verify_bbt_descr(%struct.nand_chip* %16, %struct.nand_bbt_descr* %17) #8, !dbg !3009
  %18 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3010
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3011
  call void @verify_bbt_descr(%struct.nand_chip* %18, %struct.nand_bbt_descr* %19) #8, !dbg !3012
  %20 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3013
  %bbt_erase_shift13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 9, !dbg !3014
  %21 = load i32, i32* %bbt_erase_shift13, align 8, !dbg !3014
  %shl = shl i32 1, %21, !dbg !3015
  store i32 %shl, i32* %len, align 4, !dbg !3016
  %22 = load i32, i32* %len, align 4, !dbg !3017
  %23 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3018
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 17, !dbg !3019
  %24 = load i32, i32* %page_shift, align 8, !dbg !3019
  %shr14 = ashr i32 %22, %24, !dbg !3020
  %25 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3021
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 6, !dbg !3022
  %26 = load i32, i32* %oobsize, align 4, !dbg !3022
  %mul = mul i32 %shr14, %26, !dbg !3023
  %27 = load i32, i32* %len, align 4, !dbg !3024
  %add15 = add i32 %27, %mul, !dbg !3024
  store i32 %add15, i32* %len, align 4, !dbg !3024
  %28 = load i32, i32* %len, align 4, !dbg !3025
  %conv16 = sext i32 %28 to i64, !dbg !3025
  %call17 = call i8* @vmalloc(i64 %conv16) #8, !dbg !3026
  store i8* %call17, i8** %buf, align 8, !dbg !3027
  %29 = load i8*, i8** %buf, align 8, !dbg !3028
  %tobool18 = icmp ne i8* %29, null, !dbg !3028
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !3030

if.then19:                                        ; preds = %if.end12
  store i32 -12, i32* %res, align 4, !dbg !3031
  br label %err_free_bbt, !dbg !3033

if.end20:                                         ; preds = %if.end12
  %30 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3034
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %30, i32 0, i32 0, !dbg !3036
  %31 = load i32, i32* %options, align 8, !dbg !3036
  %and = and i32 %31, 32, !dbg !3037
  %tobool21 = icmp ne i32 %and, 0, !dbg !3037
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !3038

if.then22:                                        ; preds = %if.end20
  %32 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3039
  %33 = load i8*, i8** %buf, align 8, !dbg !3041
  %34 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3042
  %35 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3043
  call void @read_abs_bbts(%struct.nand_chip* %32, i8* %33, %struct.nand_bbt_descr* %34, %struct.nand_bbt_descr* %35) #8, !dbg !3044
  br label %if.end23, !dbg !3045

if.else:                                          ; preds = %if.end20
  %36 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3046
  %37 = load i8*, i8** %buf, align 8, !dbg !3048
  %38 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3049
  %39 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3050
  call void @search_read_bbts(%struct.nand_chip* %36, i8* %37, %struct.nand_bbt_descr* %38, %struct.nand_bbt_descr* %39) #8, !dbg !3051
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %40 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3052
  %41 = load i8*, i8** %buf, align 8, !dbg !3053
  %42 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3054
  %call24 = call i32 @check_create(%struct.nand_chip* %40, i8* %41, %struct.nand_bbt_descr* %42) #8, !dbg !3055
  store i32 %call24, i32* %res, align 4, !dbg !3056
  %43 = load i32, i32* %res, align 4, !dbg !3057
  %tobool25 = icmp ne i32 %43, 0, !dbg !3057
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3059

if.then26:                                        ; preds = %if.end23
  br label %err_free_buf, !dbg !3060

if.end27:                                         ; preds = %if.end23
  %44 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3061
  %45 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3062
  call void @mark_bbt_region(%struct.nand_chip* %44, %struct.nand_bbt_descr* %45) #8, !dbg !3063
  %46 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3064
  %tobool28 = icmp ne %struct.nand_bbt_descr* %46, null, !dbg !3064
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !3066

if.then29:                                        ; preds = %if.end27
  %47 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3067
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3068
  call void @mark_bbt_region(%struct.nand_chip* %47, %struct.nand_bbt_descr* %48) #8, !dbg !3069
  br label %if.end30, !dbg !3069

if.end30:                                         ; preds = %if.then29, %if.end27
  %49 = load i8*, i8** %buf, align 8, !dbg !3070
  call void @vfree(i8* %49) #8, !dbg !3071
  store i32 0, i32* %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

err_free_buf:                                     ; preds = %if.then26
  call void @llvm.dbg.label(metadata !3073), !dbg !3074
  %50 = load i8*, i8** %buf, align 8, !dbg !3075
  call void @vfree(i8* %50) #8, !dbg !3076
  br label %err_free_bbt, !dbg !3076

err_free_bbt:                                     ; preds = %err_free_buf, %if.then19, %if.then9
  call void @llvm.dbg.label(metadata !3077), !dbg !3078
  %51 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3079
  %bbt31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 16, !dbg !3080
  %52 = load i8*, i8** %bbt31, align 8, !dbg !3080
  call void @kfree(i8* %52) #8, !dbg !3081
  %53 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3082
  %bbt32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 16, !dbg !3083
  store i8* null, i8** %bbt32, align 8, !dbg !3084
  %54 = load i32, i32* %res, align 4, !dbg !3085
  store i32 %54, i32* %retval, align 4, !dbg !3086
  br label %return, !dbg !3086

return:                                           ; preds = %err_free_bbt, %if.end30, %if.end11, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !3087
  ret i32 %55, !dbg !3087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_isreserved_bbt(%struct.nand_chip* %this, i64 %offs) #0 !dbg !3088 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %offs.addr = alloca i64, align 8
  %block = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.declare(metadata i32* %block, metadata !3093, metadata !DIExpression()), !dbg !3094
  %0 = load i64, i64* %offs.addr, align 8, !dbg !3095
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3096
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 9, !dbg !3097
  %2 = load i32, i32* %bbt_erase_shift, align 8, !dbg !3097
  %sh_prom = zext i32 %2 to i64, !dbg !3098
  %shr = ashr i64 %0, %sh_prom, !dbg !3098
  %conv = trunc i64 %shr to i32, !dbg !3099
  store i32 %conv, i32* %block, align 4, !dbg !3100
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3101
  %4 = load i32, i32* %block, align 4, !dbg !3102
  %call = call zeroext i8 @bbt_get_entry(%struct.nand_chip* %3, i32 %4) #8, !dbg !3103
  %conv1 = zext i8 %call to i32, !dbg !3103
  %cmp = icmp eq i32 %conv1, 2, !dbg !3104
  %conv2 = zext i1 %cmp to i32, !dbg !3104
  ret i32 %conv2, !dbg !3105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @bbt_get_entry(%struct.nand_chip* %chip, i32 %block) #0 !dbg !3106 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %block.addr = alloca i32, align 4
  %entry1 = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3109, metadata !DIExpression()), !dbg !3110
  store i32 %block, i32* %block.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block.addr, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.declare(metadata i8* %entry1, metadata !3113, metadata !DIExpression()), !dbg !3114
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3115
  %bbt = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 16, !dbg !3116
  %1 = load i8*, i8** %bbt, align 8, !dbg !3116
  %2 = load i32, i32* %block.addr, align 4, !dbg !3117
  %shr = ashr i32 %2, 2, !dbg !3118
  %idxprom = sext i32 %shr to i64, !dbg !3115
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !3115
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3115
  store i8 %3, i8* %entry1, align 1, !dbg !3114
  %4 = load i32, i32* %block.addr, align 4, !dbg !3119
  %and = and i32 %4, 3, !dbg !3120
  %mul = mul i32 %and, 2, !dbg !3121
  %5 = load i8, i8* %entry1, align 1, !dbg !3122
  %conv = zext i8 %5 to i32, !dbg !3122
  %shr2 = ashr i32 %conv, %mul, !dbg !3122
  %conv3 = trunc i32 %shr2 to i8, !dbg !3122
  store i8 %conv3, i8* %entry1, align 1, !dbg !3122
  %6 = load i8, i8* %entry1, align 1, !dbg !3123
  %conv4 = zext i8 %6 to i32, !dbg !3123
  %and5 = and i32 %conv4, 3, !dbg !3124
  %conv6 = trunc i32 %and5 to i8, !dbg !3123
  ret i8 %conv6, !dbg !3125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_isbad_bbt(%struct.nand_chip* %this, i64 %offs, i32 %allowbbt) #0 !dbg !3126 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %offs.addr = alloca i64, align 8
  %allowbbt.addr = alloca i32, align 4
  %block = alloca i32, align 4
  %res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3129, metadata !DIExpression()), !dbg !3130
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i32 %allowbbt, i32* %allowbbt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %allowbbt.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.declare(metadata i32* %block, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.declare(metadata i32* %res, metadata !3137, metadata !DIExpression()), !dbg !3138
  %0 = load i64, i64* %offs.addr, align 8, !dbg !3139
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3140
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 9, !dbg !3141
  %2 = load i32, i32* %bbt_erase_shift, align 8, !dbg !3141
  %sh_prom = zext i32 %2 to i64, !dbg !3142
  %shr = ashr i64 %0, %sh_prom, !dbg !3142
  %conv = trunc i64 %shr to i32, !dbg !3143
  store i32 %conv, i32* %block, align 4, !dbg !3144
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3145
  %4 = load i32, i32* %block, align 4, !dbg !3146
  %call = call zeroext i8 @bbt_get_entry(%struct.nand_chip* %3, i32 %4) #8, !dbg !3147
  %conv1 = zext i8 %call to i32, !dbg !3147
  store i32 %conv1, i32* %res, align 4, !dbg !3148
  store i32 0, i32* %tmp, align 4, !dbg !3149
  %5 = load i32, i32* %tmp, align 4, !dbg !3152
  %6 = load i32, i32* %res, align 4, !dbg !3153
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !3154

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3155
  br label %return, !dbg !3155

sw.bb2:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !3157
  br label %return, !dbg !3157

sw.bb3:                                           ; preds = %entry
  %7 = load i32, i32* %allowbbt.addr, align 4, !dbg !3158
  %tobool = icmp ne i32 %7, 0, !dbg !3158
  %8 = zext i1 %tobool to i64, !dbg !3158
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !3158
  store i32 %cond, i32* %retval, align 4, !dbg !3159
  br label %return, !dbg !3159

sw.epilog:                                        ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !3160
  br label %return, !dbg !3160

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb
  %9 = load i32, i32* %retval, align 4, !dbg !3161
  ret i32 %9, !dbg !3161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_markbad_bbt(%struct.nand_chip* %this, i64 %offs) #0 !dbg !3162 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %offs.addr = alloca i64, align 8
  %block = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !3165, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.declare(metadata i32* %block, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3169, metadata !DIExpression()), !dbg !3170
  store i32 0, i32* %ret, align 4, !dbg !3170
  %0 = load i64, i64* %offs.addr, align 8, !dbg !3171
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3172
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 9, !dbg !3173
  %2 = load i32, i32* %bbt_erase_shift, align 8, !dbg !3173
  %sh_prom = zext i32 %2 to i64, !dbg !3174
  %shr = ashr i64 %0, %sh_prom, !dbg !3174
  %conv = trunc i64 %shr to i32, !dbg !3175
  store i32 %conv, i32* %block, align 4, !dbg !3176
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3177
  %4 = load i32, i32* %block, align 4, !dbg !3178
  call void @bbt_mark_entry(%struct.nand_chip* %3, i32 %4, i8 zeroext 1) #8, !dbg !3179
  %5 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3180
  %bbt_options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 10, !dbg !3182
  %6 = load i32, i32* %bbt_options, align 4, !dbg !3182
  %and = and i32 %6, 131072, !dbg !3183
  %tobool = icmp ne i32 %and, 0, !dbg !3183
  br i1 %tobool, label %if.then, label %if.end, !dbg !3184

if.then:                                          ; preds = %entry
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3185
  %8 = load i64, i64* %offs.addr, align 8, !dbg !3186
  %call = call i32 @nand_update_bbt(%struct.nand_chip* %7, i64 %8) #8, !dbg !3187
  store i32 %call, i32* %ret, align 4, !dbg !3188
  br label %if.end, !dbg !3189

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ret, align 4, !dbg !3190
  ret i32 %9, !dbg !3191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bbt_mark_entry(%struct.nand_chip* %chip, i32 %block, i8 zeroext %mark) #0 !dbg !3192 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %block.addr = alloca i32, align 4
  %mark.addr = alloca i8, align 1
  %msk = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3195, metadata !DIExpression()), !dbg !3196
  store i32 %block, i32* %block.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block.addr, metadata !3197, metadata !DIExpression()), !dbg !3198
  store i8 %mark, i8* %mark.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mark.addr, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.declare(metadata i8* %msk, metadata !3201, metadata !DIExpression()), !dbg !3202
  %0 = load i8, i8* %mark.addr, align 1, !dbg !3203
  %conv = zext i8 %0 to i32, !dbg !3203
  %and = and i32 %conv, 3, !dbg !3204
  %1 = load i32, i32* %block.addr, align 4, !dbg !3205
  %and1 = and i32 %1, 3, !dbg !3206
  %mul = mul i32 %and1, 2, !dbg !3207
  %shl = shl i32 %and, %mul, !dbg !3208
  %conv2 = trunc i32 %shl to i8, !dbg !3209
  store i8 %conv2, i8* %msk, align 1, !dbg !3202
  %2 = load i8, i8* %msk, align 1, !dbg !3210
  %conv3 = zext i8 %2 to i32, !dbg !3210
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3211
  %bbt = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 16, !dbg !3212
  %4 = load i8*, i8** %bbt, align 8, !dbg !3212
  %5 = load i32, i32* %block.addr, align 4, !dbg !3213
  %shr = ashr i32 %5, 2, !dbg !3214
  %idxprom = sext i32 %shr to i64, !dbg !3211
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !3211
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3215
  %conv4 = zext i8 %6 to i32, !dbg !3215
  %or = or i32 %conv4, %conv3, !dbg !3215
  %conv5 = trunc i32 %or to i8, !dbg !3215
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !3215
  ret void, !dbg !3216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_update_bbt(%struct.nand_chip* %this, i64 %offs) #0 !dbg !3217 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3218, metadata !DIExpression()), !dbg !3222
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3230, metadata !DIExpression()), !dbg !3231
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3232, metadata !DIExpression()), !dbg !3233
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3234, metadata !DIExpression()), !dbg !3235
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3236, metadata !DIExpression()), !dbg !3240
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3242, metadata !DIExpression()), !dbg !3246
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3248, metadata !DIExpression()), !dbg !3252
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3257, metadata !DIExpression()), !dbg !3258
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3259, metadata !DIExpression()), !dbg !3260
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3261, metadata !DIExpression()), !dbg !3262
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3263, metadata !DIExpression()), !dbg !3264
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3265, metadata !DIExpression()), !dbg !3266
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3267, metadata !DIExpression()), !dbg !3268
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3269, metadata !DIExpression()), !dbg !3270
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3271, metadata !DIExpression()), !dbg !3272
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %offs.addr = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %len = alloca i32, align 4
  %res = alloca i32, align 4
  %chip = alloca i32, align 4
  %chipsel = alloca i32, align 4
  %buf = alloca i8*, align 8
  %td = alloca %struct.nand_bbt_descr*, align 8
  %md = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3277, metadata !DIExpression()), !dbg !3278
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3279
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !3280
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3278
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.declare(metadata i32* %res, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i32 0, i32* %res, align 4, !dbg !3284
  call void @llvm.dbg.declare(metadata i32* %chip, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.declare(metadata i32* %chipsel, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td, metadata !3291, metadata !DIExpression()), !dbg !3292
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3293
  %bbt_td = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 13, !dbg !3294
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_td, align 8, !dbg !3294
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %td, align 8, !dbg !3292
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md, metadata !3295, metadata !DIExpression()), !dbg !3296
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3297
  %bbt_md = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 14, !dbg !3298
  %4 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_md, align 8, !dbg !3298
  store %struct.nand_bbt_descr* %4, %struct.nand_bbt_descr** %md, align 8, !dbg !3296
  %5 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3299
  %bbt = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 16, !dbg !3301
  %6 = load i8*, i8** %bbt, align 8, !dbg !3301
  %tobool = icmp ne i8* %6, null, !dbg !3299
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3302

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3303
  %tobool1 = icmp ne %struct.nand_bbt_descr* %7, null, !dbg !3303
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3304

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3305
  br label %return, !dbg !3305

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3306
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 9, !dbg !3307
  %9 = load i32, i32* %bbt_erase_shift, align 8, !dbg !3307
  %shl = shl i32 1, %9, !dbg !3308
  store i32 %shl, i32* %len, align 4, !dbg !3309
  %10 = load i32, i32* %len, align 4, !dbg !3310
  %11 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3311
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 17, !dbg !3312
  %12 = load i32, i32* %page_shift, align 8, !dbg !3312
  %shr = ashr i32 %10, %12, !dbg !3313
  %13 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3314
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 6, !dbg !3315
  %14 = load i32, i32* %oobsize, align 4, !dbg !3315
  %mul = mul i32 %shr, %14, !dbg !3316
  %15 = load i32, i32* %len, align 4, !dbg !3317
  %add = add i32 %15, %mul, !dbg !3317
  store i32 %add, i32* %len, align 4, !dbg !3317
  %16 = load i32, i32* %len, align 4, !dbg !3318
  %conv = sext i32 %16 to i64, !dbg !3318
  store i64 %conv, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !3319
  %18 = call i1 @llvm.is.constant.i64(i64 %17) #10, !dbg !3320
  br i1 %18, label %if.then.i, label %if.end9.i, !dbg !3321

if.then.i:                                        ; preds = %if.end
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3322
  %cmp.i = icmp ugt i64 %19, 8192, !dbg !3323
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3324

if.then1.i:                                       ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !3325
  %21 = load i32, i32* %flags.addr.i, align 4, !dbg !3326
  store i64 %20, i64* %size.addr.i.i, align 8
  store i32 %21, i32* %flags.addr.i.i, align 4
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3327
  %call.i.i = call i32 @get_order(i64 %22) #11, !dbg !3328
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3266
  %23 = load i64, i64* %size.addr.i.i, align 8, !dbg !3329
  %24 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3330
  %25 = load i32, i32* %order.i.i, align 4, !dbg !3331
  store i64 %23, i64* %size.addr.i.i.i, align 8
  store i32 %24, i32* %flags.addr.i.i.i, align 4
  store i32 %25, i32* %order.addr.i.i.i, align 4
  %26 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3332
  %27 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3333
  %28 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3334
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %26, i32 %27, i32 %28) #12, !dbg !3335
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3335
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3335
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3335
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3335
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3336
  br label %kmalloc.exit, !dbg !3336

if.end.i:                                         ; preds = %if.then.i
  %29 = load i64, i64* %size.addr.i, align 8, !dbg !3337
  store i64 %29, i64* %size.addr.i11.i, align 8
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3338
  %tobool.i.i = icmp ne i64 %30, 0, !dbg !3338
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3340

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3341
  br label %kmalloc_index.exit.i, !dbg !3341

if.end.i.i:                                       ; preds = %if.end.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3342
  %cmp.i.i = icmp ule i64 %31, 8, !dbg !3344
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3345

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3346
  br label %kmalloc_index.exit.i, !dbg !3346

if.end2.i.i:                                      ; preds = %if.end.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3347
  %cmp3.i.i = icmp ugt i64 %32, 64, !dbg !3349
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3350

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3351
  %cmp4.i.i = icmp ule i64 %33, 96, !dbg !3352
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3353

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3354
  br label %kmalloc_index.exit.i, !dbg !3354

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3355
  %cmp7.i.i = icmp ugt i64 %34, 128, !dbg !3357
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3358

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3359
  %cmp9.i.i = icmp ule i64 %35, 192, !dbg !3360
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3361

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3362
  br label %kmalloc_index.exit.i, !dbg !3362

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3363
  %cmp12.i.i = icmp ule i64 %36, 8, !dbg !3365
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3366

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3367
  br label %kmalloc_index.exit.i, !dbg !3367

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3368
  %cmp15.i.i = icmp ule i64 %37, 16, !dbg !3370
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3371

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3372
  br label %kmalloc_index.exit.i, !dbg !3372

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3373
  %cmp18.i.i = icmp ule i64 %38, 32, !dbg !3375
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3376

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3377
  br label %kmalloc_index.exit.i, !dbg !3377

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3378
  %cmp21.i.i = icmp ule i64 %39, 64, !dbg !3380
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3381

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3382
  br label %kmalloc_index.exit.i, !dbg !3382

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3383
  %cmp24.i.i = icmp ule i64 %40, 128, !dbg !3385
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3386

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3387
  br label %kmalloc_index.exit.i, !dbg !3387

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3388
  %cmp27.i.i = icmp ule i64 %41, 256, !dbg !3390
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3391

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3392
  br label %kmalloc_index.exit.i, !dbg !3392

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3393
  %cmp30.i.i = icmp ule i64 %42, 512, !dbg !3395
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3396

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3397
  br label %kmalloc_index.exit.i, !dbg !3397

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3398
  %cmp33.i.i = icmp ule i64 %43, 1024, !dbg !3400
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3401

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3402
  br label %kmalloc_index.exit.i, !dbg !3402

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3403
  %cmp36.i.i = icmp ule i64 %44, 2048, !dbg !3405
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3406

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3407
  br label %kmalloc_index.exit.i, !dbg !3407

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3408
  %cmp39.i.i = icmp ule i64 %45, 4096, !dbg !3410
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3411

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3412
  br label %kmalloc_index.exit.i, !dbg !3412

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3413
  %cmp42.i.i = icmp ule i64 %46, 8192, !dbg !3415
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3416

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3417
  br label %kmalloc_index.exit.i, !dbg !3417

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3418
  %cmp45.i.i = icmp ule i64 %47, 16384, !dbg !3420
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3421

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3422
  br label %kmalloc_index.exit.i, !dbg !3422

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3423
  %cmp48.i.i = icmp ule i64 %48, 32768, !dbg !3425
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3426

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3427
  br label %kmalloc_index.exit.i, !dbg !3427

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3428
  %cmp51.i.i = icmp ule i64 %49, 65536, !dbg !3430
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3431

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3432
  br label %kmalloc_index.exit.i, !dbg !3432

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3433
  %cmp54.i.i = icmp ule i64 %50, 131072, !dbg !3435
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3436

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3437
  br label %kmalloc_index.exit.i, !dbg !3437

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3438
  %cmp57.i.i = icmp ule i64 %51, 262144, !dbg !3440
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3441

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3442
  br label %kmalloc_index.exit.i, !dbg !3442

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3443
  %cmp60.i.i = icmp ule i64 %52, 524288, !dbg !3445
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3446

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3447
  br label %kmalloc_index.exit.i, !dbg !3447

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3448
  %cmp63.i.i = icmp ule i64 %53, 1048576, !dbg !3450
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3451

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3452
  br label %kmalloc_index.exit.i, !dbg !3452

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3453
  %cmp66.i.i = icmp ule i64 %54, 2097152, !dbg !3455
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3456

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3457
  br label %kmalloc_index.exit.i, !dbg !3457

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3458
  %cmp69.i.i = icmp ule i64 %55, 4194304, !dbg !3460
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3461

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3462
  br label %kmalloc_index.exit.i, !dbg !3462

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3463
  %cmp72.i.i = icmp ule i64 %56, 8388608, !dbg !3465
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3466

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3467
  br label %kmalloc_index.exit.i, !dbg !3467

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3468
  %cmp75.i.i = icmp ule i64 %57, 16777216, !dbg !3470
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3471

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3472
  br label %kmalloc_index.exit.i, !dbg !3472

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3473
  %cmp78.i.i = icmp ule i64 %58, 33554432, !dbg !3475
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3476

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3477
  br label %kmalloc_index.exit.i, !dbg !3477

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3478
  %cmp81.i.i = icmp ule i64 %59, 67108864, !dbg !3480
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3481

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3482
  br label %kmalloc_index.exit.i, !dbg !3482

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3483, !srcloc !3486
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !3487, !srcloc !3490
  unreachable, !dbg !3491

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %60 = load i32, i32* %retval.i.i, align 4, !dbg !3492
  store i32 %60, i32* %index.i, align 4, !dbg !3493
  %61 = load i32, i32* %index.i, align 4, !dbg !3494
  %tobool.i = icmp ne i32 %61, 0, !dbg !3494
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3496

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3497
  br label %kmalloc.exit, !dbg !3497

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !3498
  store i32 %62, i32* %flags.addr.i13.i, align 4
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3499
  %and.i.i = and i32 %63, 17, !dbg !3499
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3499
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3499
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3499
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3499
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3501

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3502
  br label %kmalloc_type.exit.i, !dbg !3502

if.end.i16.i:                                     ; preds = %if.end4.i
  %64 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3503
  %and2.i.i = and i32 %64, 1, !dbg !3504
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3503
  %65 = zext i1 %tobool3.i.i to i64, !dbg !3503
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3503
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3505
  br label %kmalloc_type.exit.i, !dbg !3505

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %66 = load i32, i32* %retval.i12.i, align 4, !dbg !3506
  %idxprom.i = zext i32 %66 to i64, !dbg !3507
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3507
  %67 = load i32, i32* %index.i, align 4, !dbg !3508
  %idxprom6.i = zext i32 %67 to i64, !dbg !3507
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3507
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3507
  %69 = load i32, i32* %flags.addr.i, align 4, !dbg !3509
  %70 = load i64, i64* %size.addr.i, align 8, !dbg !3510
  store %struct.kmem_cache* %68, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %69, i32* %flags.addr.i17.i, align 4
  store i64 %70, i64* %size.addr.i18.i, align 8
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3511
  %72 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3512
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %71, i32 %72) #12, !dbg !3513
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3513
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3513
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3513
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3513
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3235
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3514
  %74 = load i8*, i8** %ret.i.i, align 8, !dbg !3515
  %75 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3516
  %76 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3517
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %73, i8* %74, i64 %75, i32 %76) #12, !dbg !3518
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3519
  %77 = load i8*, i8** %ret.i.i, align 8, !dbg !3520
  store i8* %77, i8** %retval.i, align 8, !dbg !3521
  br label %kmalloc.exit, !dbg !3521

if.end9.i:                                        ; preds = %if.end
  %78 = load i64, i64* %size.addr.i, align 8, !dbg !3522
  %79 = load i32, i32* %flags.addr.i, align 4, !dbg !3523
  %call10.i = call noalias i8* @__kmalloc(i64 %78, i32 %79) #12, !dbg !3524
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3524
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3524
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3524
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3524
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3525
  br label %kmalloc.exit, !dbg !3525

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %80 = load i8*, i8** %retval.i, align 8, !dbg !3526
  store i8* %80, i8** %buf, align 8, !dbg !3527
  %81 = load i8*, i8** %buf, align 8, !dbg !3528
  %tobool3 = icmp ne i8* %81, null, !dbg !3528
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3530

if.then4:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !3531
  br label %return, !dbg !3531

if.end5:                                          ; preds = %kmalloc.exit
  %82 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3532
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %82, i32 0, i32 0, !dbg !3534
  %83 = load i32, i32* %options, align 8, !dbg !3534
  %and = and i32 %83, 128, !dbg !3535
  %tobool6 = icmp ne i32 %and, 0, !dbg !3535
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !3536

if.then7:                                         ; preds = %if.end5
  %84 = load i64, i64* %offs.addr, align 8, !dbg !3537
  %85 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3539
  %chip_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 19, !dbg !3540
  %86 = load i32, i32* %chip_shift, align 8, !dbg !3540
  %sh_prom = zext i32 %86 to i64, !dbg !3541
  %shr8 = ashr i64 %84, %sh_prom, !dbg !3541
  %conv9 = trunc i64 %shr8 to i32, !dbg !3542
  store i32 %conv9, i32* %chip, align 4, !dbg !3543
  %87 = load i32, i32* %chip, align 4, !dbg !3544
  store i32 %87, i32* %chipsel, align 4, !dbg !3545
  br label %if.end10, !dbg !3546

if.else:                                          ; preds = %if.end5
  store i32 0, i32* %chip, align 4, !dbg !3547
  store i32 -1, i32* %chipsel, align 4, !dbg !3549
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %88 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3550
  %version = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %88, i32 0, i32 4, !dbg !3551
  %89 = load i32, i32* %chip, align 4, !dbg !3552
  %idxprom = sext i32 %89 to i64, !dbg !3550
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %version, i64 0, i64 %idxprom, !dbg !3550
  %90 = load i8, i8* %arrayidx, align 1, !dbg !3553
  %inc = add i8 %90, 1, !dbg !3553
  store i8 %inc, i8* %arrayidx, align 1, !dbg !3553
  %91 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3554
  %tobool11 = icmp ne %struct.nand_bbt_descr* %91, null, !dbg !3554
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !3556

if.then12:                                        ; preds = %if.end10
  %92 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3557
  %version13 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %92, i32 0, i32 4, !dbg !3558
  %93 = load i32, i32* %chip, align 4, !dbg !3559
  %idxprom14 = sext i32 %93 to i64, !dbg !3557
  %arrayidx15 = getelementptr [8 x i8], [8 x i8]* %version13, i64 0, i64 %idxprom14, !dbg !3557
  %94 = load i8, i8* %arrayidx15, align 1, !dbg !3560
  %inc16 = add i8 %94, 1, !dbg !3560
  store i8 %inc16, i8* %arrayidx15, align 1, !dbg !3560
  br label %if.end17, !dbg !3557

if.end17:                                         ; preds = %if.then12, %if.end10
  %95 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3561
  %options18 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %95, i32 0, i32 0, !dbg !3563
  %96 = load i32, i32* %options18, align 8, !dbg !3563
  %and19 = and i32 %96, 8192, !dbg !3564
  %tobool20 = icmp ne i32 %and19, 0, !dbg !3564
  br i1 %tobool20, label %if.then21, label %if.end26, !dbg !3565

if.then21:                                        ; preds = %if.end17
  %97 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3566
  %98 = load i8*, i8** %buf, align 8, !dbg !3568
  %99 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3569
  %100 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3570
  %101 = load i32, i32* %chipsel, align 4, !dbg !3571
  %call22 = call i32 @write_bbt(%struct.nand_chip* %97, i8* %98, %struct.nand_bbt_descr* %99, %struct.nand_bbt_descr* %100, i32 %101) #8, !dbg !3572
  store i32 %call22, i32* %res, align 4, !dbg !3573
  %102 = load i32, i32* %res, align 4, !dbg !3574
  %cmp = icmp slt i32 %102, 0, !dbg !3576
  br i1 %cmp, label %if.then24, label %if.end25, !dbg !3577

if.then24:                                        ; preds = %if.then21
  br label %out, !dbg !3578

if.end25:                                         ; preds = %if.then21
  br label %if.end26, !dbg !3579

if.end26:                                         ; preds = %if.end25, %if.end17
  %103 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3580
  %tobool27 = icmp ne %struct.nand_bbt_descr* %103, null, !dbg !3580
  br i1 %tobool27, label %land.lhs.true, label %if.end33, !dbg !3582

land.lhs.true:                                    ; preds = %if.end26
  %104 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3583
  %options28 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %104, i32 0, i32 0, !dbg !3584
  %105 = load i32, i32* %options28, align 8, !dbg !3584
  %and29 = and i32 %105, 8192, !dbg !3585
  %tobool30 = icmp ne i32 %and29, 0, !dbg !3585
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !3586

if.then31:                                        ; preds = %land.lhs.true
  %106 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3587
  %107 = load i8*, i8** %buf, align 8, !dbg !3589
  %108 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !3590
  %109 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !3591
  %110 = load i32, i32* %chipsel, align 4, !dbg !3592
  %call32 = call i32 @write_bbt(%struct.nand_chip* %106, i8* %107, %struct.nand_bbt_descr* %108, %struct.nand_bbt_descr* %109, i32 %110) #8, !dbg !3593
  store i32 %call32, i32* %res, align 4, !dbg !3594
  br label %if.end33, !dbg !3595

if.end33:                                         ; preds = %if.then31, %land.lhs.true, %if.end26
  br label %out, !dbg !3596

out:                                              ; preds = %if.end33, %if.then24
  call void @llvm.dbg.label(metadata !3597), !dbg !3598
  %111 = load i8*, i8** %buf, align 8, !dbg !3599
  call void @kfree(i8* %111) #8, !dbg !3600
  %112 = load i32, i32* %res, align 4, !dbg !3601
  store i32 %112, i32* %retval, align 4, !dbg !3602
  br label %return, !dbg !3602

return:                                           ; preds = %out, %if.then4, %if.then
  %113 = load i32, i32* %retval, align 4, !dbg !3603
  ret i32 %113, !dbg !3603
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3604 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3218, metadata !DIExpression()), !dbg !3605
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3230, metadata !DIExpression()), !dbg !3608
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3232, metadata !DIExpression()), !dbg !3609
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3234, metadata !DIExpression()), !dbg !3610
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3236, metadata !DIExpression()), !dbg !3611
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3242, metadata !DIExpression()), !dbg !3613
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3248, metadata !DIExpression()), !dbg !3615
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3257, metadata !DIExpression()), !dbg !3618
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3259, metadata !DIExpression()), !dbg !3619
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3261, metadata !DIExpression()), !dbg !3620
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3263, metadata !DIExpression()), !dbg !3621
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3265, metadata !DIExpression()), !dbg !3622
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3267, metadata !DIExpression()), !dbg !3623
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3269, metadata !DIExpression()), !dbg !3624
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3271, metadata !DIExpression()), !dbg !3625
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3626, metadata !DIExpression()), !dbg !3627
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3628, metadata !DIExpression()), !dbg !3629
  %0 = load i64, i64* %size.addr, align 8, !dbg !3630
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3631
  %or = or i32 %1, 256, !dbg !3632
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3633
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !3634
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3635

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3636
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3637
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3638

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3639
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3640
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3641
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3642
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3622
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3643
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3644
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3645
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3646
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3647
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3648
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3649
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3649
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3649
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3649
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3649
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3650
  br label %kmalloc.exit, !dbg !3650

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3651
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3652
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3652
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3653

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3654
  br label %kmalloc_index.exit.i, !dbg !3654

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3655
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3656
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3657

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3658
  br label %kmalloc_index.exit.i, !dbg !3658

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3659
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3660
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3661

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3662
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3663
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3664

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3665
  br label %kmalloc_index.exit.i, !dbg !3665

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3666
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3667
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3668

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3669
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3670
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3671

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3672
  br label %kmalloc_index.exit.i, !dbg !3672

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3673
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3674
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3675

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3676
  br label %kmalloc_index.exit.i, !dbg !3676

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3677
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3678
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3679

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3680
  br label %kmalloc_index.exit.i, !dbg !3680

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3681
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3682
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3683

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3684
  br label %kmalloc_index.exit.i, !dbg !3684

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3685
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3686
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3687

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3688
  br label %kmalloc_index.exit.i, !dbg !3688

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3689
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3690
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3691

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3692
  br label %kmalloc_index.exit.i, !dbg !3692

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3693
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3694
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3695

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3696
  br label %kmalloc_index.exit.i, !dbg !3696

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3697
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3698
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3699

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3700
  br label %kmalloc_index.exit.i, !dbg !3700

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3701
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3702
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3703

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3704
  br label %kmalloc_index.exit.i, !dbg !3704

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3705
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3706
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3707

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3708
  br label %kmalloc_index.exit.i, !dbg !3708

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3709
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3710
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3711

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3712
  br label %kmalloc_index.exit.i, !dbg !3712

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3713
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3714
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3715

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3716
  br label %kmalloc_index.exit.i, !dbg !3716

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3717
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3718
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3719

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3720
  br label %kmalloc_index.exit.i, !dbg !3720

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3721
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3722
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3723

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3724
  br label %kmalloc_index.exit.i, !dbg !3724

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3725
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3726
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3727

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3728
  br label %kmalloc_index.exit.i, !dbg !3728

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3729
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3730
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3731

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3732
  br label %kmalloc_index.exit.i, !dbg !3732

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3733
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3734
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3735

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3736
  br label %kmalloc_index.exit.i, !dbg !3736

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3737
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3738
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3739

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3740
  br label %kmalloc_index.exit.i, !dbg !3740

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3741
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3742
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3743

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3744
  br label %kmalloc_index.exit.i, !dbg !3744

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3745
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3746
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3747

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3748
  br label %kmalloc_index.exit.i, !dbg !3748

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3749
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3750
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3751

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3752
  br label %kmalloc_index.exit.i, !dbg !3752

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3753
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3754
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3755

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3756
  br label %kmalloc_index.exit.i, !dbg !3756

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3757
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3758
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3759

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3760
  br label %kmalloc_index.exit.i, !dbg !3760

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3761
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3762
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3763

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3764
  br label %kmalloc_index.exit.i, !dbg !3764

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3765
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3766
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3767

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3768
  br label %kmalloc_index.exit.i, !dbg !3768

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3769, !srcloc !3486
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !3770, !srcloc !3490
  unreachable, !dbg !3771

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3772
  store i32 %45, i32* %index.i, align 4, !dbg !3773
  %46 = load i32, i32* %index.i, align 4, !dbg !3774
  %tobool.i = icmp ne i32 %46, 0, !dbg !3774
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3775

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3776
  br label %kmalloc.exit, !dbg !3776

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3777
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3778
  %and.i.i = and i32 %48, 17, !dbg !3778
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3778
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3778
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3778
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3778
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3779

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3780
  br label %kmalloc_type.exit.i, !dbg !3780

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3781
  %and2.i.i = and i32 %49, 1, !dbg !3782
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3781
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3781
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3781
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3783
  br label %kmalloc_type.exit.i, !dbg !3783

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3784
  %idxprom.i = zext i32 %51 to i64, !dbg !3785
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3785
  %52 = load i32, i32* %index.i, align 4, !dbg !3786
  %idxprom6.i = zext i32 %52 to i64, !dbg !3785
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3785
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3785
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3787
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3788
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3789
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3790
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3791
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3791
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3791
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3791
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3791
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3610
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3792
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3793
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3794
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3795
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3796
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3797
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3798
  store i8* %62, i8** %retval.i, align 8, !dbg !3799
  br label %kmalloc.exit, !dbg !3799

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3800
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3801
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3802
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3802
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3802
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3802
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3802
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3803
  br label %kmalloc.exit, !dbg !3803

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3804
  ret i8* %65, !dbg !3805
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3806 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3810, metadata !DIExpression()), !dbg !3815
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3817, metadata !DIExpression()), !dbg !3818
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3819, metadata !DIExpression()), !dbg !3820
  %0 = load i64, i64* %size.addr, align 8, !dbg !3821
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3823
  br i1 %1, label %if.then, label %if.end447, !dbg !3824

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3825
  %tobool = icmp ne i64 %2, 0, !dbg !3825
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3828

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3829
  br label %return, !dbg !3829

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3830
  %cmp = icmp ult i64 %3, 4096, !dbg !3832
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3833

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3834
  br label %return, !dbg !3834

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub = sub i64 %4, 1, !dbg !3835
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3835
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3835

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub4 = sub i64 %6, 1, !dbg !3835
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3835
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3835

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub6 = sub i64 %8, 1, !dbg !3835
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3835
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3835

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3835

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub9 = sub i64 %9, 1, !dbg !3835
  %and = and i64 %sub9, -9223372036854775808, !dbg !3835
  %tobool10 = icmp ne i64 %and, 0, !dbg !3835
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3835

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3835

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub13 = sub i64 %10, 1, !dbg !3835
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3835
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3835
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3835

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3835

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub18 = sub i64 %11, 1, !dbg !3835
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3835
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3835
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3835

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3835

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub23 = sub i64 %12, 1, !dbg !3835
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3835
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3835
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3835

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3835

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub28 = sub i64 %13, 1, !dbg !3835
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3835
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3835
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3835

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3835

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub33 = sub i64 %14, 1, !dbg !3835
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3835
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3835
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3835

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3835

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub38 = sub i64 %15, 1, !dbg !3835
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3835
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3835
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3835

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3835

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub43 = sub i64 %16, 1, !dbg !3835
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3835
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3835
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3835

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3835

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub48 = sub i64 %17, 1, !dbg !3835
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3835
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3835
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3835

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3835

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub53 = sub i64 %18, 1, !dbg !3835
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3835
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3835
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3835

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3835

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub58 = sub i64 %19, 1, !dbg !3835
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3835
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3835
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3835

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3835

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub63 = sub i64 %20, 1, !dbg !3835
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3835
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3835
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3835

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3835

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub68 = sub i64 %21, 1, !dbg !3835
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3835
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3835
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3835

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3835

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub73 = sub i64 %22, 1, !dbg !3835
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3835
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3835
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3835

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3835

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub78 = sub i64 %23, 1, !dbg !3835
  %and79 = and i64 %sub78, 562949953421312, !dbg !3835
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3835
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3835

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3835

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub83 = sub i64 %24, 1, !dbg !3835
  %and84 = and i64 %sub83, 281474976710656, !dbg !3835
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3835
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3835

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3835

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub88 = sub i64 %25, 1, !dbg !3835
  %and89 = and i64 %sub88, 140737488355328, !dbg !3835
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3835
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3835

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3835

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub93 = sub i64 %26, 1, !dbg !3835
  %and94 = and i64 %sub93, 70368744177664, !dbg !3835
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3835
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3835

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3835

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub98 = sub i64 %27, 1, !dbg !3835
  %and99 = and i64 %sub98, 35184372088832, !dbg !3835
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3835
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3835

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3835

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub103 = sub i64 %28, 1, !dbg !3835
  %and104 = and i64 %sub103, 17592186044416, !dbg !3835
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3835
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3835

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3835

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub108 = sub i64 %29, 1, !dbg !3835
  %and109 = and i64 %sub108, 8796093022208, !dbg !3835
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3835
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3835

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3835

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub113 = sub i64 %30, 1, !dbg !3835
  %and114 = and i64 %sub113, 4398046511104, !dbg !3835
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3835
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3835

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3835

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub118 = sub i64 %31, 1, !dbg !3835
  %and119 = and i64 %sub118, 2199023255552, !dbg !3835
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3835
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3835

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3835

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub123 = sub i64 %32, 1, !dbg !3835
  %and124 = and i64 %sub123, 1099511627776, !dbg !3835
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3835
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3835

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3835

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub128 = sub i64 %33, 1, !dbg !3835
  %and129 = and i64 %sub128, 549755813888, !dbg !3835
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3835
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3835

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3835

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub133 = sub i64 %34, 1, !dbg !3835
  %and134 = and i64 %sub133, 274877906944, !dbg !3835
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3835
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3835

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3835

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub138 = sub i64 %35, 1, !dbg !3835
  %and139 = and i64 %sub138, 137438953472, !dbg !3835
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3835
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3835

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3835

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub143 = sub i64 %36, 1, !dbg !3835
  %and144 = and i64 %sub143, 68719476736, !dbg !3835
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3835
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3835

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3835

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub148 = sub i64 %37, 1, !dbg !3835
  %and149 = and i64 %sub148, 34359738368, !dbg !3835
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3835
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3835

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3835

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub153 = sub i64 %38, 1, !dbg !3835
  %and154 = and i64 %sub153, 17179869184, !dbg !3835
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3835
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3835

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3835

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub158 = sub i64 %39, 1, !dbg !3835
  %and159 = and i64 %sub158, 8589934592, !dbg !3835
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3835
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3835

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3835

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub163 = sub i64 %40, 1, !dbg !3835
  %and164 = and i64 %sub163, 4294967296, !dbg !3835
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3835
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3835

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3835

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub168 = sub i64 %41, 1, !dbg !3835
  %and169 = and i64 %sub168, 2147483648, !dbg !3835
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3835
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3835

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3835

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub173 = sub i64 %42, 1, !dbg !3835
  %and174 = and i64 %sub173, 1073741824, !dbg !3835
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3835
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3835

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3835

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub178 = sub i64 %43, 1, !dbg !3835
  %and179 = and i64 %sub178, 536870912, !dbg !3835
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3835
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3835

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3835

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub183 = sub i64 %44, 1, !dbg !3835
  %and184 = and i64 %sub183, 268435456, !dbg !3835
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3835
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3835

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3835

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub188 = sub i64 %45, 1, !dbg !3835
  %and189 = and i64 %sub188, 134217728, !dbg !3835
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3835
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3835

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3835

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub193 = sub i64 %46, 1, !dbg !3835
  %and194 = and i64 %sub193, 67108864, !dbg !3835
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3835
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3835

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3835

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub198 = sub i64 %47, 1, !dbg !3835
  %and199 = and i64 %sub198, 33554432, !dbg !3835
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3835
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3835

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3835

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub203 = sub i64 %48, 1, !dbg !3835
  %and204 = and i64 %sub203, 16777216, !dbg !3835
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3835
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3835

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3835

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub208 = sub i64 %49, 1, !dbg !3835
  %and209 = and i64 %sub208, 8388608, !dbg !3835
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3835
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3835

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3835

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub213 = sub i64 %50, 1, !dbg !3835
  %and214 = and i64 %sub213, 4194304, !dbg !3835
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3835
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3835

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3835

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub218 = sub i64 %51, 1, !dbg !3835
  %and219 = and i64 %sub218, 2097152, !dbg !3835
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3835
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3835

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3835

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub223 = sub i64 %52, 1, !dbg !3835
  %and224 = and i64 %sub223, 1048576, !dbg !3835
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3835
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3835

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3835

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub228 = sub i64 %53, 1, !dbg !3835
  %and229 = and i64 %sub228, 524288, !dbg !3835
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3835
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3835

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3835

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub233 = sub i64 %54, 1, !dbg !3835
  %and234 = and i64 %sub233, 262144, !dbg !3835
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3835
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3835

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3835

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub238 = sub i64 %55, 1, !dbg !3835
  %and239 = and i64 %sub238, 131072, !dbg !3835
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3835
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3835

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3835

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub243 = sub i64 %56, 1, !dbg !3835
  %and244 = and i64 %sub243, 65536, !dbg !3835
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3835
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3835

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3835

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub248 = sub i64 %57, 1, !dbg !3835
  %and249 = and i64 %sub248, 32768, !dbg !3835
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3835
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3835

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3835

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub253 = sub i64 %58, 1, !dbg !3835
  %and254 = and i64 %sub253, 16384, !dbg !3835
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3835
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3835

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3835

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub258 = sub i64 %59, 1, !dbg !3835
  %and259 = and i64 %sub258, 8192, !dbg !3835
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3835
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3835

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3835

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub263 = sub i64 %60, 1, !dbg !3835
  %and264 = and i64 %sub263, 4096, !dbg !3835
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3835
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3835

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3835

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub268 = sub i64 %61, 1, !dbg !3835
  %and269 = and i64 %sub268, 2048, !dbg !3835
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3835
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3835

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3835

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub273 = sub i64 %62, 1, !dbg !3835
  %and274 = and i64 %sub273, 1024, !dbg !3835
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3835
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3835

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3835

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub278 = sub i64 %63, 1, !dbg !3835
  %and279 = and i64 %sub278, 512, !dbg !3835
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3835
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3835

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3835

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub283 = sub i64 %64, 1, !dbg !3835
  %and284 = and i64 %sub283, 256, !dbg !3835
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3835
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3835

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3835

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub288 = sub i64 %65, 1, !dbg !3835
  %and289 = and i64 %sub288, 128, !dbg !3835
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3835
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3835

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3835

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub293 = sub i64 %66, 1, !dbg !3835
  %and294 = and i64 %sub293, 64, !dbg !3835
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3835
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3835

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3835

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub298 = sub i64 %67, 1, !dbg !3835
  %and299 = and i64 %sub298, 32, !dbg !3835
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3835
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3835

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3835

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub303 = sub i64 %68, 1, !dbg !3835
  %and304 = and i64 %sub303, 16, !dbg !3835
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3835
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3835

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3835

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub308 = sub i64 %69, 1, !dbg !3835
  %and309 = and i64 %sub308, 8, !dbg !3835
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3835
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3835

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3835

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub313 = sub i64 %70, 1, !dbg !3835
  %and314 = and i64 %sub313, 4, !dbg !3835
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3835
  %71 = zext i1 %tobool315 to i64, !dbg !3835
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3835
  br label %cond.end, !dbg !3835

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3835
  br label %cond.end317, !dbg !3835

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3835
  br label %cond.end319, !dbg !3835

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3835
  br label %cond.end321, !dbg !3835

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3835
  br label %cond.end323, !dbg !3835

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3835
  br label %cond.end325, !dbg !3835

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3835
  br label %cond.end327, !dbg !3835

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3835
  br label %cond.end329, !dbg !3835

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3835
  br label %cond.end331, !dbg !3835

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3835
  br label %cond.end333, !dbg !3835

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3835
  br label %cond.end335, !dbg !3835

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3835
  br label %cond.end337, !dbg !3835

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3835
  br label %cond.end339, !dbg !3835

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3835
  br label %cond.end341, !dbg !3835

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3835
  br label %cond.end343, !dbg !3835

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3835
  br label %cond.end345, !dbg !3835

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3835
  br label %cond.end347, !dbg !3835

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3835
  br label %cond.end349, !dbg !3835

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3835
  br label %cond.end351, !dbg !3835

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3835
  br label %cond.end353, !dbg !3835

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3835
  br label %cond.end355, !dbg !3835

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3835
  br label %cond.end357, !dbg !3835

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3835
  br label %cond.end359, !dbg !3835

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3835
  br label %cond.end361, !dbg !3835

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3835
  br label %cond.end363, !dbg !3835

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3835
  br label %cond.end365, !dbg !3835

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3835
  br label %cond.end367, !dbg !3835

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3835
  br label %cond.end369, !dbg !3835

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3835
  br label %cond.end371, !dbg !3835

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3835
  br label %cond.end373, !dbg !3835

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3835
  br label %cond.end375, !dbg !3835

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3835
  br label %cond.end377, !dbg !3835

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3835
  br label %cond.end379, !dbg !3835

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3835
  br label %cond.end381, !dbg !3835

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3835
  br label %cond.end383, !dbg !3835

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3835
  br label %cond.end385, !dbg !3835

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3835
  br label %cond.end387, !dbg !3835

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3835
  br label %cond.end389, !dbg !3835

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3835
  br label %cond.end391, !dbg !3835

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3835
  br label %cond.end393, !dbg !3835

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3835
  br label %cond.end395, !dbg !3835

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3835
  br label %cond.end397, !dbg !3835

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3835
  br label %cond.end399, !dbg !3835

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3835
  br label %cond.end401, !dbg !3835

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3835
  br label %cond.end403, !dbg !3835

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3835
  br label %cond.end405, !dbg !3835

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3835
  br label %cond.end407, !dbg !3835

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3835
  br label %cond.end409, !dbg !3835

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3835
  br label %cond.end411, !dbg !3835

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3835
  br label %cond.end413, !dbg !3835

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3835
  br label %cond.end415, !dbg !3835

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3835
  br label %cond.end417, !dbg !3835

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3835
  br label %cond.end419, !dbg !3835

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3835
  br label %cond.end421, !dbg !3835

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3835
  br label %cond.end423, !dbg !3835

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3835
  br label %cond.end425, !dbg !3835

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3835
  br label %cond.end427, !dbg !3835

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3835
  br label %cond.end429, !dbg !3835

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3835
  br label %cond.end431, !dbg !3835

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3835
  br label %cond.end433, !dbg !3835

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3835
  br label %cond.end435, !dbg !3835

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3835
  br label %cond.end437, !dbg !3835

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3835
  br label %cond.end440, !dbg !3835

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3835

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3835
  br label %cond.end444, !dbg !3835

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3835
  %sub443 = sub i64 %72, 1, !dbg !3835
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3835
  br label %cond.end444, !dbg !3835

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3835
  %sub446 = sub i32 %cond445, 12, !dbg !3836
  %add = add i32 %sub446, 1, !dbg !3837
  store i32 %add, i32* %retval, align 4, !dbg !3838
  br label %return, !dbg !3838

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3839
  %dec = add i64 %73, -1, !dbg !3839
  store i64 %dec, i64* %size.addr, align 8, !dbg !3839
  %74 = load i64, i64* %size.addr, align 8, !dbg !3840
  %shr = lshr i64 %74, 12, !dbg !3840
  store i64 %shr, i64* %size.addr, align 8, !dbg !3840
  %75 = load i64, i64* %size.addr, align 8, !dbg !3841
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3818
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3842
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3843
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !3842, !srcloc !3844
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3842
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3845
  %add.i = add i32 %79, 1, !dbg !3846
  store i32 %add.i, i32* %retval, align 4, !dbg !3847
  br label %return, !dbg !3847

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3848
  ret i32 %80, !dbg !3848
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3849 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3810, metadata !DIExpression()), !dbg !3853
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3817, metadata !DIExpression()), !dbg !3855
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3856, metadata !DIExpression()), !dbg !3857
  %0 = load i64, i64* %n.addr, align 8, !dbg !3858
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3855
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3859
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3860
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !3859, !srcloc !3844
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3859
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3861
  %add.i = add i32 %4, 1, !dbg !3862
  %sub = sub i32 %add.i, 1, !dbg !3863
  ret i32 %sub, !dbg !3864
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3865 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3869, metadata !DIExpression()), !dbg !3870
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3871, metadata !DIExpression()), !dbg !3872
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3877
  ret i8* %0, !dbg !3878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3879 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3882, metadata !DIExpression()), !dbg !3883
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3884
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3885
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3886
  ret %struct.mtd_info* %mtd, !dbg !3887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_memory_bbt(%struct.nand_chip* %this, %struct.nand_bbt_descr* %bd) #0 !dbg !3888 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %bd.addr = alloca %struct.nand_bbt_descr*, align 8
  %pagebuf = alloca i8*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3889, metadata !DIExpression()), !dbg !3890
  store %struct.nand_bbt_descr* %bd, %struct.nand_bbt_descr** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd.addr, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.declare(metadata i8** %pagebuf, metadata !3893, metadata !DIExpression()), !dbg !3894
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3895
  %call = call i8* @nand_get_data_buf(%struct.nand_chip* %0) #8, !dbg !3896
  store i8* %call, i8** %pagebuf, align 8, !dbg !3894
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3897
  %2 = load i8*, i8** %pagebuf, align 8, !dbg !3898
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3899
  %call1 = call i32 @create_bbt(%struct.nand_chip* %1, i8* %2, %struct.nand_bbt_descr* %3, i32 -1) #8, !dbg !3900
  ret i32 %call1, !dbg !3901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @verify_bbt_descr(%struct.nand_chip* %this, %struct.nand_bbt_descr* %bd) #0 !dbg !3902 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %bd.addr = alloca %struct.nand_bbt_descr*, align 8
  %targetsize = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %pattern_len = alloca i32, align 4
  %bits = alloca i32, align 4
  %table_size = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  store %struct.nand_bbt_descr* %bd, %struct.nand_bbt_descr** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd.addr, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !3909, metadata !DIExpression()), !dbg !3910
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3911
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3912
  %call = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !3913
  store i64 %call, i64* %targetsize, align 8, !dbg !3910
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3914, metadata !DIExpression()), !dbg !3915
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3916
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !3917
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !3915
  call void @llvm.dbg.declare(metadata i32* %pattern_len, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !3920, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.declare(metadata i32* %table_size, metadata !3922, metadata !DIExpression()), !dbg !3923
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3924
  %tobool = icmp ne %struct.nand_bbt_descr* %2, null, !dbg !3924
  br i1 %tobool, label %if.end, label %if.then, !dbg !3926

if.then:                                          ; preds = %entry
  br label %do.end198, !dbg !3927

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3928
  %len = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %3, i32 0, i32 5, !dbg !3929
  %4 = load i32, i32* %len, align 4, !dbg !3929
  store i32 %4, i32* %pattern_len, align 4, !dbg !3930
  %5 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3931
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %5, i32 0, i32 0, !dbg !3932
  %6 = load i32, i32* %options, align 8, !dbg !3932
  %and = and i32 %6, 15, !dbg !3933
  store i32 %and, i32* %bits, align 4, !dbg !3934
  br label %do.body, !dbg !3935

do.body:                                          ; preds = %if.end
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3936
  %bbt_options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 10, !dbg !3936
  %8 = load i32, i32* %bbt_options, align 4, !dbg !3936
  %and2 = and i32 %8, 262144, !dbg !3936
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3936
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !3936

land.rhs:                                         ; preds = %do.body
  %9 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3936
  %bbt_options4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 10, !dbg !3936
  %10 = load i32, i32* %bbt_options4, align 4, !dbg !3936
  %and5 = and i32 %10, 131072, !dbg !3936
  %tobool6 = icmp ne i32 %and5, 0, !dbg !3936
  %lnot = xor i1 %tobool6, true, !dbg !3936
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %11 = phi i1 [ false, %do.body ], [ %lnot, %land.rhs ], !dbg !3939
  %lnot7 = xor i1 %11, true, !dbg !3936
  %lnot8 = xor i1 %lnot7, true, !dbg !3936
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3936
  %conv = sext i32 %lnot.ext to i64, !dbg !3936
  %tobool9 = icmp ne i64 %conv, 0, !dbg !3936
  br i1 %tobool9, label %if.then10, label %if.end18, !dbg !3940

if.then10:                                        ; preds = %land.end
  br label %do.body11, !dbg !3936

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !3941

do.body12:                                        ; preds = %do.body11
  br label %do.end, !dbg !3943

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !3941

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1173, i32 0, i64 12) #10, !dbg !3945, !srcloc !3947
  br label %do.end14, !dbg !3945

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !3941

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 179) #10, !dbg !3948, !srcloc !3951
  unreachable, !dbg !3952

do.end16:                                         ; No predecessors!
  br label %do.end17, !dbg !3941

do.end17:                                         ; preds = %do.end16
  br label %if.end18, !dbg !3941

if.end18:                                         ; preds = %do.end17, %land.end
  br label %do.end19, !dbg !3940

do.end19:                                         ; preds = %if.end18
  br label %do.body20, !dbg !3953

do.body20:                                        ; preds = %do.end19
  %12 = load i32, i32* %bits, align 4, !dbg !3954
  %tobool21 = icmp ne i32 %12, 0, !dbg !3954
  %lnot22 = xor i1 %tobool21, true, !dbg !3954
  %lnot24 = xor i1 %lnot22, true, !dbg !3954
  %lnot26 = xor i1 %lnot24, true, !dbg !3954
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !3954
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !3954
  %tobool29 = icmp ne i64 %conv28, 0, !dbg !3954
  br i1 %tobool29, label %if.then30, label %if.end39, !dbg !3957

if.then30:                                        ; preds = %do.body20
  br label %do.body31, !dbg !3954

do.body31:                                        ; preds = %if.then30
  br label %do.body32, !dbg !3958

do.body32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !3960

do.end33:                                         ; preds = %do.body32
  br label %do.body34, !dbg !3958

do.body34:                                        ; preds = %do.end33
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1174, i32 0, i64 12) #10, !dbg !3962, !srcloc !3964
  br label %do.end35, !dbg !3962

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !3958

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 180) #10, !dbg !3965, !srcloc !3968
  unreachable, !dbg !3969

do.end37:                                         ; No predecessors!
  br label %do.end38, !dbg !3958

do.end38:                                         ; preds = %do.end37
  br label %if.end39, !dbg !3958

if.end39:                                         ; preds = %do.end38, %do.body20
  br label %do.end40, !dbg !3957

do.end40:                                         ; preds = %if.end39
  %13 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3970
  %options41 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %13, i32 0, i32 0, !dbg !3972
  %14 = load i32, i32* %options41, align 8, !dbg !3972
  %and42 = and i32 %14, 256, !dbg !3973
  %tobool43 = icmp ne i32 %and42, 0, !dbg !3973
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3974

if.then44:                                        ; preds = %do.end40
  %15 = load i32, i32* %pattern_len, align 4, !dbg !3975
  %inc = add i32 %15, 1, !dbg !3975
  store i32 %inc, i32* %pattern_len, align 4, !dbg !3975
  br label %if.end45, !dbg !3976

if.end45:                                         ; preds = %if.then44, %do.end40
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !3977
  %options46 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %16, i32 0, i32 0, !dbg !3979
  %17 = load i32, i32* %options46, align 8, !dbg !3979
  %and47 = and i32 %17, 262144, !dbg !3980
  %tobool48 = icmp ne i32 %and47, 0, !dbg !3980
  br i1 %tobool48, label %if.then49, label %if.end161, !dbg !3981

if.then49:                                        ; preds = %if.end45
  br label %do.body50, !dbg !3982

do.body50:                                        ; preds = %if.then49
  %18 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !3984
  %bbt_options51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 10, !dbg !3984
  %19 = load i32, i32* %bbt_options51, align 4, !dbg !3984
  %and52 = and i32 %19, 131072, !dbg !3984
  %tobool53 = icmp ne i32 %and52, 0, !dbg !3984
  %lnot54 = xor i1 %tobool53, true, !dbg !3984
  %lnot56 = xor i1 %lnot54, true, !dbg !3984
  %lnot58 = xor i1 %lnot56, true, !dbg !3984
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !3984
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !3984
  %tobool61 = icmp ne i64 %conv60, 0, !dbg !3984
  br i1 %tobool61, label %if.then62, label %if.end71, !dbg !3987

if.then62:                                        ; preds = %do.body50
  br label %do.body63, !dbg !3984

do.body63:                                        ; preds = %if.then62
  br label %do.body64, !dbg !3988

do.body64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !3990

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !3988

do.body66:                                        ; preds = %do.end65
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1180, i32 0, i64 12) #10, !dbg !3992, !srcloc !3994
  br label %do.end67, !dbg !3992

do.end67:                                         ; preds = %do.body66
  br label %do.body68, !dbg !3988

do.body68:                                        ; preds = %do.end67
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 181) #10, !dbg !3995, !srcloc !3998
  unreachable, !dbg !3999

do.end69:                                         ; No predecessors!
  br label %do.end70, !dbg !3988

do.end70:                                         ; preds = %do.end69
  br label %if.end71, !dbg !3988

if.end71:                                         ; preds = %do.end70, %do.body50
  br label %do.end72, !dbg !3987

do.end72:                                         ; preds = %if.end71
  br label %do.body73, !dbg !4000

do.body73:                                        ; preds = %do.end72
  %20 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4001
  %bbt_options74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 10, !dbg !4001
  %21 = load i32, i32* %bbt_options74, align 4, !dbg !4001
  %and75 = and i32 %21, 262144, !dbg !4001
  %tobool76 = icmp ne i32 %and75, 0, !dbg !4001
  %lnot77 = xor i1 %tobool76, true, !dbg !4001
  %lnot79 = xor i1 %lnot77, true, !dbg !4001
  %lnot81 = xor i1 %lnot79, true, !dbg !4001
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !4001
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !4001
  %tobool84 = icmp ne i64 %conv83, 0, !dbg !4001
  br i1 %tobool84, label %if.then85, label %if.end94, !dbg !4004

if.then85:                                        ; preds = %do.body73
  br label %do.body86, !dbg !4001

do.body86:                                        ; preds = %if.then85
  br label %do.body87, !dbg !4005

do.body87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !4007

do.end88:                                         ; preds = %do.body87
  br label %do.body89, !dbg !4005

do.body89:                                        ; preds = %do.end88
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1181, i32 0, i64 12) #10, !dbg !4009, !srcloc !4011
  br label %do.end90, !dbg !4009

do.end90:                                         ; preds = %do.body89
  br label %do.body91, !dbg !4005

do.body91:                                        ; preds = %do.end90
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 182) #10, !dbg !4012, !srcloc !4015
  unreachable, !dbg !4016

do.end92:                                         ; No predecessors!
  br label %do.end93, !dbg !4005

do.end93:                                         ; preds = %do.end92
  br label %if.end94, !dbg !4005

if.end94:                                         ; preds = %do.end93, %do.body73
  br label %do.end95, !dbg !4004

do.end95:                                         ; preds = %if.end94
  br label %do.body96, !dbg !4017

do.body96:                                        ; preds = %do.end95
  %22 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4018
  %offs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %22, i32 0, i32 2, !dbg !4018
  %23 = load i32, i32* %offs, align 4, !dbg !4018
  %tobool97 = icmp ne i32 %23, 0, !dbg !4018
  %lnot98 = xor i1 %tobool97, true, !dbg !4018
  %lnot100 = xor i1 %lnot98, true, !dbg !4018
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !4018
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !4018
  %tobool103 = icmp ne i64 %conv102, 0, !dbg !4018
  br i1 %tobool103, label %if.then104, label %if.end113, !dbg !4021

if.then104:                                       ; preds = %do.body96
  br label %do.body105, !dbg !4018

do.body105:                                       ; preds = %if.then104
  br label %do.body106, !dbg !4022

do.body106:                                       ; preds = %do.body105
  br label %do.end107, !dbg !4024

do.end107:                                        ; preds = %do.body106
  br label %do.body108, !dbg !4022

do.body108:                                       ; preds = %do.end107
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1182, i32 0, i64 12) #10, !dbg !4026, !srcloc !4028
  br label %do.end109, !dbg !4026

do.end109:                                        ; preds = %do.body108
  br label %do.body110, !dbg !4022

do.body110:                                       ; preds = %do.end109
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 183) #10, !dbg !4029, !srcloc !4032
  unreachable, !dbg !4033

do.end111:                                        ; No predecessors!
  br label %do.end112, !dbg !4022

do.end112:                                        ; preds = %do.end111
  br label %if.end113, !dbg !4022

if.end113:                                        ; preds = %do.end112, %do.body96
  br label %do.end114, !dbg !4021

do.end114:                                        ; preds = %if.end113
  %24 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4034
  %options115 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %24, i32 0, i32 0, !dbg !4036
  %25 = load i32, i32* %options115, align 8, !dbg !4036
  %and116 = and i32 %25, 256, !dbg !4037
  %tobool117 = icmp ne i32 %and116, 0, !dbg !4037
  br i1 %tobool117, label %if.then118, label %if.end139, !dbg !4038

if.then118:                                       ; preds = %do.end114
  br label %do.body119, !dbg !4039

do.body119:                                       ; preds = %if.then118
  %26 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4040
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %26, i32 0, i32 3, !dbg !4040
  %27 = load i32, i32* %veroffs, align 8, !dbg !4040
  %28 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4040
  %len120 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %28, i32 0, i32 5, !dbg !4040
  %29 = load i32, i32* %len120, align 4, !dbg !4040
  %cmp = icmp ne i32 %27, %29, !dbg !4040
  %lnot122 = xor i1 %cmp, true, !dbg !4040
  %lnot124 = xor i1 %lnot122, true, !dbg !4040
  %lnot.ext125 = zext i1 %lnot124 to i32, !dbg !4040
  %conv126 = sext i32 %lnot.ext125 to i64, !dbg !4040
  %tobool127 = icmp ne i64 %conv126, 0, !dbg !4040
  br i1 %tobool127, label %if.then128, label %if.end137, !dbg !4043

if.then128:                                       ; preds = %do.body119
  br label %do.body129, !dbg !4040

do.body129:                                       ; preds = %if.then128
  br label %do.body130, !dbg !4044

do.body130:                                       ; preds = %do.body129
  br label %do.end131, !dbg !4046

do.end131:                                        ; preds = %do.body130
  br label %do.body132, !dbg !4044

do.body132:                                       ; preds = %do.end131
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1184, i32 0, i64 12) #10, !dbg !4048, !srcloc !4050
  br label %do.end133, !dbg !4048

do.end133:                                        ; preds = %do.body132
  br label %do.body134, !dbg !4044

do.body134:                                       ; preds = %do.end133
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 184) #10, !dbg !4051, !srcloc !4054
  unreachable, !dbg !4055

do.end135:                                        ; No predecessors!
  br label %do.end136, !dbg !4044

do.end136:                                        ; preds = %do.end135
  br label %if.end137, !dbg !4044

if.end137:                                        ; preds = %do.end136, %do.body119
  br label %do.end138, !dbg !4043

do.end138:                                        ; preds = %if.end137
  br label %if.end139, !dbg !4043

if.end139:                                        ; preds = %do.end138, %do.end114
  br label %do.body140, !dbg !4056

do.body140:                                       ; preds = %if.end139
  %30 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4057
  %options141 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %30, i32 0, i32 0, !dbg !4057
  %31 = load i32, i32* %options141, align 8, !dbg !4057
  %and142 = and i32 %31, 16384, !dbg !4057
  %tobool143 = icmp ne i32 %and142, 0, !dbg !4057
  %lnot144 = xor i1 %tobool143, true, !dbg !4057
  %lnot146 = xor i1 %lnot144, true, !dbg !4057
  %lnot.ext147 = zext i1 %lnot146 to i32, !dbg !4057
  %conv148 = sext i32 %lnot.ext147 to i64, !dbg !4057
  %tobool149 = icmp ne i64 %conv148, 0, !dbg !4057
  br i1 %tobool149, label %if.then150, label %if.end159, !dbg !4060

if.then150:                                       ; preds = %do.body140
  br label %do.body151, !dbg !4057

do.body151:                                       ; preds = %if.then150
  br label %do.body152, !dbg !4061

do.body152:                                       ; preds = %do.body151
  br label %do.end153, !dbg !4063

do.end153:                                        ; preds = %do.body152
  br label %do.body154, !dbg !4061

do.body154:                                       ; preds = %do.end153
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1185, i32 0, i64 12) #10, !dbg !4065, !srcloc !4067
  br label %do.end155, !dbg !4065

do.end155:                                        ; preds = %do.body154
  br label %do.body156, !dbg !4061

do.body156:                                       ; preds = %do.end155
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 185) #10, !dbg !4068, !srcloc !4071
  unreachable, !dbg !4072

do.end157:                                        ; No predecessors!
  br label %do.end158, !dbg !4061

do.end158:                                        ; preds = %do.end157
  br label %if.end159, !dbg !4061

if.end159:                                        ; preds = %do.end158, %do.body140
  br label %do.end160, !dbg !4060

do.end160:                                        ; preds = %if.end159
  br label %if.end161, !dbg !4073

if.end161:                                        ; preds = %do.end160, %if.end45
  %32 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4074
  %options162 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %32, i32 0, i32 0, !dbg !4076
  %33 = load i32, i32* %options162, align 8, !dbg !4076
  %and163 = and i32 %33, 128, !dbg !4077
  %tobool164 = icmp ne i32 %and163, 0, !dbg !4077
  br i1 %tobool164, label %if.then165, label %if.else, !dbg !4078

if.then165:                                       ; preds = %if.end161
  %34 = load i64, i64* %targetsize, align 8, !dbg !4079
  %35 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4080
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 9, !dbg !4081
  %36 = load i32, i32* %bbt_erase_shift, align 8, !dbg !4081
  %sh_prom = zext i32 %36 to i64, !dbg !4082
  %shr = lshr i64 %34, %sh_prom, !dbg !4082
  %conv166 = trunc i64 %shr to i32, !dbg !4079
  store i32 %conv166, i32* %table_size, align 4, !dbg !4083
  br label %if.end171, !dbg !4084

if.else:                                          ; preds = %if.end161
  %37 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4085
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 2, !dbg !4086
  %38 = load i64, i64* %size, align 8, !dbg !4086
  %39 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4087
  %bbt_erase_shift167 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 9, !dbg !4088
  %40 = load i32, i32* %bbt_erase_shift167, align 8, !dbg !4088
  %sh_prom168 = zext i32 %40 to i64, !dbg !4089
  %shr169 = lshr i64 %38, %sh_prom168, !dbg !4089
  %conv170 = trunc i64 %shr169 to i32, !dbg !4085
  store i32 %conv170, i32* %table_size, align 4, !dbg !4090
  br label %if.end171

if.end171:                                        ; preds = %if.else, %if.then165
  %41 = load i32, i32* %table_size, align 4, !dbg !4091
  %shr172 = lshr i32 %41, 3, !dbg !4091
  store i32 %shr172, i32* %table_size, align 4, !dbg !4091
  %42 = load i32, i32* %bits, align 4, !dbg !4092
  %43 = load i32, i32* %table_size, align 4, !dbg !4093
  %mul = mul i32 %43, %42, !dbg !4093
  store i32 %mul, i32* %table_size, align 4, !dbg !4093
  %44 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4094
  %options173 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %44, i32 0, i32 0, !dbg !4096
  %45 = load i32, i32* %options173, align 8, !dbg !4096
  %and174 = and i32 %45, 262144, !dbg !4097
  %tobool175 = icmp ne i32 %and174, 0, !dbg !4097
  br i1 %tobool175, label %if.then176, label %if.end177, !dbg !4098

if.then176:                                       ; preds = %if.end171
  %46 = load i32, i32* %pattern_len, align 4, !dbg !4099
  %47 = load i32, i32* %table_size, align 4, !dbg !4100
  %add = add i32 %47, %46, !dbg !4100
  store i32 %add, i32* %table_size, align 4, !dbg !4100
  br label %if.end177, !dbg !4101

if.end177:                                        ; preds = %if.then176, %if.end171
  br label %do.body178, !dbg !4102

do.body178:                                       ; preds = %if.end177
  %48 = load i32, i32* %table_size, align 4, !dbg !4103
  %49 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4103
  %bbt_erase_shift179 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 9, !dbg !4103
  %50 = load i32, i32* %bbt_erase_shift179, align 8, !dbg !4103
  %shl = shl i32 1, %50, !dbg !4103
  %cmp180 = icmp ugt i32 %48, %shl, !dbg !4103
  %lnot182 = xor i1 %cmp180, true, !dbg !4103
  %lnot184 = xor i1 %lnot182, true, !dbg !4103
  %lnot.ext185 = zext i1 %lnot184 to i32, !dbg !4103
  %conv186 = sext i32 %lnot.ext185 to i64, !dbg !4103
  %tobool187 = icmp ne i64 %conv186, 0, !dbg !4103
  br i1 %tobool187, label %if.then188, label %if.end197, !dbg !4106

if.then188:                                       ; preds = %do.body178
  br label %do.body189, !dbg !4103

do.body189:                                       ; preds = %if.then188
  br label %do.body190, !dbg !4107

do.body190:                                       ; preds = %do.body189
  br label %do.end191, !dbg !4109

do.end191:                                        ; preds = %do.body190
  br label %do.body192, !dbg !4107

do.body192:                                       ; preds = %do.end191
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 1196, i32 0, i64 12) #10, !dbg !4111, !srcloc !4113
  br label %do.end193, !dbg !4111

do.end193:                                        ; preds = %do.body192
  br label %do.body194, !dbg !4107

do.body194:                                       ; preds = %do.end193
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 186) #10, !dbg !4114, !srcloc !4117
  unreachable, !dbg !4118

do.end195:                                        ; No predecessors!
  br label %do.end196, !dbg !4107

do.end196:                                        ; preds = %do.end195
  br label %if.end197, !dbg !4107

if.end197:                                        ; preds = %do.end196, %do.body178
  br label %do.end198, !dbg !4106

do.end198:                                        ; preds = %if.then, %if.end197
  ret void, !dbg !4119
}

; Function Attrs: noredzone
declare dso_local i8* @vmalloc(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_abs_bbts(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr* %md) #0 !dbg !4120 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %md.addr = alloca %struct.nand_bbt_descr*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !4123, metadata !DIExpression()), !dbg !4124
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4125, metadata !DIExpression()), !dbg !4126
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !4127, metadata !DIExpression()), !dbg !4128
  store %struct.nand_bbt_descr* %md, %struct.nand_bbt_descr** %md.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md.addr, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4131, metadata !DIExpression()), !dbg !4132
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4133
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !4134
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !4132
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4135
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 0, !dbg !4137
  %2 = load i32, i32* %options, align 8, !dbg !4137
  %and = and i32 %2, 256, !dbg !4138
  %tobool = icmp ne i32 %and, 0, !dbg !4138
  br i1 %tobool, label %if.then, label %if.end, !dbg !4139

if.then:                                          ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4140
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4142
  %5 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4143
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %5, i32 0, i32 1, !dbg !4144
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 0, !dbg !4143
  %6 = load i32, i32* %arrayidx, align 4, !dbg !4143
  %conv = sext i32 %6 to i64, !dbg !4145
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4146
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 17, !dbg !4147
  %8 = load i32, i32* %page_shift, align 8, !dbg !4147
  %sh_prom = zext i32 %8 to i64, !dbg !4148
  %shl = shl i64 %conv, %sh_prom, !dbg !4148
  %9 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4149
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 4, !dbg !4150
  %10 = load i32, i32* %writesize, align 4, !dbg !4150
  %conv1 = zext i32 %10 to i64, !dbg !4149
  %11 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4151
  %call2 = call i32 @scan_read(%struct.nand_chip* %3, i8* %4, i64 %shl, i64 %conv1, %struct.nand_bbt_descr* %11) #8, !dbg !4152
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !4153
  %13 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4154
  %14 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4155
  %call3 = call i32 @bbt_get_ver_offs(%struct.nand_chip* %13, %struct.nand_bbt_descr* %14) #8, !dbg !4156
  %idxprom = zext i32 %call3 to i64, !dbg !4153
  %arrayidx4 = getelementptr i8, i8* %12, i64 %idxprom, !dbg !4153
  %15 = load i8, i8* %arrayidx4, align 1, !dbg !4153
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4157
  %version = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %16, i32 0, i32 4, !dbg !4158
  %arrayidx5 = getelementptr [8 x i8], [8 x i8]* %version, i64 0, i64 0, !dbg !4157
  store i8 %15, i8* %arrayidx5, align 4, !dbg !4159
  %17 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4160
  %pages6 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %17, i32 0, i32 1, !dbg !4160
  %arrayidx7 = getelementptr [8 x i32], [8 x i32]* %pages6, i64 0, i64 0, !dbg !4160
  %18 = load i32, i32* %arrayidx7, align 4, !dbg !4160
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4160
  %version8 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %19, i32 0, i32 4, !dbg !4160
  %arrayidx9 = getelementptr [8 x i8], [8 x i8]* %version8, i64 0, i64 0, !dbg !4160
  %20 = load i8, i8* %arrayidx9, align 4, !dbg !4160
  %conv10 = zext i8 %20 to i32, !dbg !4160
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %18, i32 %conv10) #9, !dbg !4160
  br label %if.end, !dbg !4161

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4162
  %tobool12 = icmp ne %struct.nand_bbt_descr* %21, null, !dbg !4162
  br i1 %tobool12, label %land.lhs.true, label %if.end37, !dbg !4164

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4165
  %options13 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %22, i32 0, i32 0, !dbg !4166
  %23 = load i32, i32* %options13, align 8, !dbg !4166
  %and14 = and i32 %23, 256, !dbg !4167
  %tobool15 = icmp ne i32 %and14, 0, !dbg !4167
  br i1 %tobool15, label %if.then16, label %if.end37, !dbg !4168

if.then16:                                        ; preds = %land.lhs.true
  %24 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4169
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !4171
  %26 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4172
  %pages17 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %26, i32 0, i32 1, !dbg !4173
  %arrayidx18 = getelementptr [8 x i32], [8 x i32]* %pages17, i64 0, i64 0, !dbg !4172
  %27 = load i32, i32* %arrayidx18, align 4, !dbg !4172
  %conv19 = sext i32 %27 to i64, !dbg !4174
  %28 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4175
  %page_shift20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 17, !dbg !4176
  %29 = load i32, i32* %page_shift20, align 8, !dbg !4176
  %sh_prom21 = zext i32 %29 to i64, !dbg !4177
  %shl22 = shl i64 %conv19, %sh_prom21, !dbg !4177
  %30 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4178
  %writesize23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 4, !dbg !4179
  %31 = load i32, i32* %writesize23, align 4, !dbg !4179
  %conv24 = zext i32 %31 to i64, !dbg !4178
  %32 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4180
  %call25 = call i32 @scan_read(%struct.nand_chip* %24, i8* %25, i64 %shl22, i64 %conv24, %struct.nand_bbt_descr* %32) #8, !dbg !4181
  %33 = load i8*, i8** %buf.addr, align 8, !dbg !4182
  %34 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4183
  %35 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4184
  %call26 = call i32 @bbt_get_ver_offs(%struct.nand_chip* %34, %struct.nand_bbt_descr* %35) #8, !dbg !4185
  %idxprom27 = zext i32 %call26 to i64, !dbg !4182
  %arrayidx28 = getelementptr i8, i8* %33, i64 %idxprom27, !dbg !4182
  %36 = load i8, i8* %arrayidx28, align 1, !dbg !4182
  %37 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4186
  %version29 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %37, i32 0, i32 4, !dbg !4187
  %arrayidx30 = getelementptr [8 x i8], [8 x i8]* %version29, i64 0, i64 0, !dbg !4186
  store i8 %36, i8* %arrayidx30, align 4, !dbg !4188
  %38 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4189
  %pages31 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %38, i32 0, i32 1, !dbg !4189
  %arrayidx32 = getelementptr [8 x i32], [8 x i32]* %pages31, i64 0, i64 0, !dbg !4189
  %39 = load i32, i32* %arrayidx32, align 4, !dbg !4189
  %40 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4189
  %version33 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %40, i32 0, i32 4, !dbg !4189
  %arrayidx34 = getelementptr [8 x i8], [8 x i8]* %version33, i64 0, i64 0, !dbg !4189
  %41 = load i8, i8* %arrayidx34, align 4, !dbg !4189
  %conv35 = zext i8 %41 to i32, !dbg !4189
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %39, i32 %conv35) #9, !dbg !4189
  br label %if.end37, !dbg !4190

if.end37:                                         ; preds = %if.then16, %land.lhs.true, %if.end
  ret void, !dbg !4191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @search_read_bbts(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr* %md) #0 !dbg !4192 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %md.addr = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !4193, metadata !DIExpression()), !dbg !4194
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4195, metadata !DIExpression()), !dbg !4196
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  store %struct.nand_bbt_descr* %md, %struct.nand_bbt_descr** %md.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4201
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4202
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4203
  %call = call i32 @search_bbt(%struct.nand_chip* %0, i8* %1, %struct.nand_bbt_descr* %2) #8, !dbg !4204
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4205
  %tobool = icmp ne %struct.nand_bbt_descr* %3, null, !dbg !4205
  br i1 %tobool, label %if.then, label %if.end, !dbg !4207

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4208
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4209
  %6 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !4210
  %call1 = call i32 @search_bbt(%struct.nand_chip* %4, i8* %5, %struct.nand_bbt_descr* %6) #8, !dbg !4211
  br label %if.end, !dbg !4211

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_create(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %bd) #0 !dbg !4213 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %bd.addr = alloca %struct.nand_bbt_descr*, align 8
  %i = alloca i32, align 4
  %chips = alloca i32, align 4
  %writeops = alloca i32, align 4
  %create = alloca i32, align 4
  %chipsel = alloca i32, align 4
  %res = alloca i32, align 4
  %res2 = alloca i32, align 4
  %td = alloca %struct.nand_bbt_descr*, align 8
  %md = alloca %struct.nand_bbt_descr*, align 8
  %rd = alloca %struct.nand_bbt_descr*, align 8
  %rd2 = alloca %struct.nand_bbt_descr*, align 8
  %__UNIQUE_ID___x177 = alloca i8, align 1
  %__UNIQUE_ID___y178 = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  store %struct.nand_bbt_descr* %bd, %struct.nand_bbt_descr** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4222, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i32* %chips, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata i32* %writeops, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %create, metadata !4228, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.declare(metadata i32* %chipsel, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata i32* %res2, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td, metadata !4236, metadata !DIExpression()), !dbg !4237
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4238
  %bbt_td = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 13, !dbg !4239
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_td, align 8, !dbg !4239
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %td, align 8, !dbg !4237
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md, metadata !4240, metadata !DIExpression()), !dbg !4241
  %2 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4242
  %bbt_md = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 14, !dbg !4243
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bbt_md, align 8, !dbg !4243
  store %struct.nand_bbt_descr* %3, %struct.nand_bbt_descr** %md, align 8, !dbg !4241
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %rd, metadata !4244, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %rd2, metadata !4246, metadata !DIExpression()), !dbg !4247
  %4 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4248
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %4, i32 0, i32 0, !dbg !4250
  %5 = load i32, i32* %options, align 8, !dbg !4250
  %and = and i32 %5, 128, !dbg !4251
  %tobool = icmp ne i32 %and, 0, !dbg !4251
  br i1 %tobool, label %if.then, label %if.else, !dbg !4252

if.then:                                          ; preds = %entry
  %6 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4253
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 0, !dbg !4254
  %call = call i32 @nanddev_ntargets(%struct.nand_device* %base) #8, !dbg !4255
  store i32 %call, i32* %chips, align 4, !dbg !4256
  br label %if.end, !dbg !4257

if.else:                                          ; preds = %entry
  store i32 1, i32* %chips, align 4, !dbg !4258
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !dbg !4259
  br label %for.cond, !dbg !4261

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !4262
  %8 = load i32, i32* %chips, align 4, !dbg !4264
  %cmp = icmp slt i32 %7, %8, !dbg !4265
  br i1 %cmp, label %for.body, label %for.end, !dbg !4266

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %writeops, align 4, !dbg !4267
  store i32 0, i32* %create, align 4, !dbg !4269
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %rd, align 8, !dbg !4270
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %rd2, align 8, !dbg !4271
  store i32 0, i32* %res2, align 4, !dbg !4272
  store i32 0, i32* %res, align 4, !dbg !4273
  %9 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4274
  %options1 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %9, i32 0, i32 0, !dbg !4275
  %10 = load i32, i32* %options1, align 8, !dbg !4275
  %and2 = and i32 %10, 128, !dbg !4276
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4276
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !4277

cond.true:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !4278
  br label %cond.end, !dbg !4277

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !4277

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ -1, %cond.false ], !dbg !4277
  store i32 %cond, i32* %chipsel, align 4, !dbg !4279
  %12 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4280
  %tobool4 = icmp ne %struct.nand_bbt_descr* %12, null, !dbg !4280
  br i1 %tobool4, label %if.then5, label %if.else59, !dbg !4282

if.then5:                                         ; preds = %cond.end
  %13 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4283
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %13, i32 0, i32 1, !dbg !4286
  %14 = load i32, i32* %i, align 4, !dbg !4287
  %idxprom = sext i32 %14 to i64, !dbg !4283
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom, !dbg !4283
  %15 = load i32, i32* %arrayidx, align 4, !dbg !4283
  %cmp6 = icmp eq i32 %15, -1, !dbg !4288
  br i1 %cmp6, label %land.lhs.true, label %if.else12, !dbg !4289

land.lhs.true:                                    ; preds = %if.then5
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4290
  %pages7 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %16, i32 0, i32 1, !dbg !4291
  %17 = load i32, i32* %i, align 4, !dbg !4292
  %idxprom8 = sext i32 %17 to i64, !dbg !4290
  %arrayidx9 = getelementptr [8 x i32], [8 x i32]* %pages7, i64 0, i64 %idxprom8, !dbg !4290
  %18 = load i32, i32* %arrayidx9, align 4, !dbg !4290
  %cmp10 = icmp eq i32 %18, -1, !dbg !4293
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !4294

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, i32* %create, align 4, !dbg !4295
  store i32 3, i32* %writeops, align 4, !dbg !4297
  br label %if.end58, !dbg !4298

if.else12:                                        ; preds = %land.lhs.true, %if.then5
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4299
  %pages13 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %19, i32 0, i32 1, !dbg !4301
  %20 = load i32, i32* %i, align 4, !dbg !4302
  %idxprom14 = sext i32 %20 to i64, !dbg !4299
  %arrayidx15 = getelementptr [8 x i32], [8 x i32]* %pages13, i64 0, i64 %idxprom14, !dbg !4299
  %21 = load i32, i32* %arrayidx15, align 4, !dbg !4299
  %cmp16 = icmp eq i32 %21, -1, !dbg !4303
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !4304

if.then17:                                        ; preds = %if.else12
  %22 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4305
  store %struct.nand_bbt_descr* %22, %struct.nand_bbt_descr** %rd, align 8, !dbg !4307
  store i32 1, i32* %writeops, align 4, !dbg !4308
  br label %if.end57, !dbg !4309

if.else18:                                        ; preds = %if.else12
  %23 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4310
  %pages19 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %23, i32 0, i32 1, !dbg !4312
  %24 = load i32, i32* %i, align 4, !dbg !4313
  %idxprom20 = sext i32 %24 to i64, !dbg !4310
  %arrayidx21 = getelementptr [8 x i32], [8 x i32]* %pages19, i64 0, i64 %idxprom20, !dbg !4310
  %25 = load i32, i32* %arrayidx21, align 4, !dbg !4310
  %cmp22 = icmp eq i32 %25, -1, !dbg !4314
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !4315

if.then23:                                        ; preds = %if.else18
  %26 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4316
  store %struct.nand_bbt_descr* %26, %struct.nand_bbt_descr** %rd, align 8, !dbg !4318
  store i32 2, i32* %writeops, align 4, !dbg !4319
  br label %if.end56, !dbg !4320

if.else24:                                        ; preds = %if.else18
  %27 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4321
  %version = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %27, i32 0, i32 4, !dbg !4323
  %28 = load i32, i32* %i, align 4, !dbg !4324
  %idxprom25 = sext i32 %28 to i64, !dbg !4321
  %arrayidx26 = getelementptr [8 x i8], [8 x i8]* %version, i64 0, i64 %idxprom25, !dbg !4321
  %29 = load i8, i8* %arrayidx26, align 1, !dbg !4321
  %conv = zext i8 %29 to i32, !dbg !4321
  %30 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4325
  %version27 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %30, i32 0, i32 4, !dbg !4326
  %31 = load i32, i32* %i, align 4, !dbg !4327
  %idxprom28 = sext i32 %31 to i64, !dbg !4325
  %arrayidx29 = getelementptr [8 x i8], [8 x i8]* %version27, i64 0, i64 %idxprom28, !dbg !4325
  %32 = load i8, i8* %arrayidx29, align 1, !dbg !4325
  %conv30 = zext i8 %32 to i32, !dbg !4325
  %cmp31 = icmp eq i32 %conv, %conv30, !dbg !4328
  br i1 %cmp31, label %if.then33, label %if.else39, !dbg !4329

if.then33:                                        ; preds = %if.else24
  %33 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4330
  store %struct.nand_bbt_descr* %33, %struct.nand_bbt_descr** %rd, align 8, !dbg !4332
  %34 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4333
  %options34 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %34, i32 0, i32 0, !dbg !4335
  %35 = load i32, i32* %options34, align 8, !dbg !4335
  %and35 = and i32 %35, 256, !dbg !4336
  %tobool36 = icmp ne i32 %and35, 0, !dbg !4336
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !4337

if.then37:                                        ; preds = %if.then33
  %36 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4338
  store %struct.nand_bbt_descr* %36, %struct.nand_bbt_descr** %rd2, align 8, !dbg !4339
  br label %if.end38, !dbg !4340

if.end38:                                         ; preds = %if.then37, %if.then33
  br label %if.end55, !dbg !4341

if.else39:                                        ; preds = %if.else24
  %37 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4342
  %version40 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %37, i32 0, i32 4, !dbg !4344
  %38 = load i32, i32* %i, align 4, !dbg !4345
  %idxprom41 = sext i32 %38 to i64, !dbg !4342
  %arrayidx42 = getelementptr [8 x i8], [8 x i8]* %version40, i64 0, i64 %idxprom41, !dbg !4342
  %39 = load i8, i8* %arrayidx42, align 1, !dbg !4342
  %conv43 = zext i8 %39 to i32, !dbg !4342
  %40 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4346
  %version44 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %40, i32 0, i32 4, !dbg !4347
  %41 = load i32, i32* %i, align 4, !dbg !4348
  %idxprom45 = sext i32 %41 to i64, !dbg !4346
  %arrayidx46 = getelementptr [8 x i8], [8 x i8]* %version44, i64 0, i64 %idxprom45, !dbg !4346
  %42 = load i8, i8* %arrayidx46, align 1, !dbg !4346
  %conv47 = zext i8 %42 to i32, !dbg !4346
  %sub = sub i32 %conv43, %conv47, !dbg !4349
  %conv48 = trunc i32 %sub to i8, !dbg !4350
  %conv49 = sext i8 %conv48 to i32, !dbg !4351
  %cmp50 = icmp sgt i32 %conv49, 0, !dbg !4352
  br i1 %cmp50, label %if.then52, label %if.else53, !dbg !4353

if.then52:                                        ; preds = %if.else39
  %43 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4354
  store %struct.nand_bbt_descr* %43, %struct.nand_bbt_descr** %rd, align 8, !dbg !4356
  store i32 2, i32* %writeops, align 4, !dbg !4357
  br label %if.end54, !dbg !4358

if.else53:                                        ; preds = %if.else39
  %44 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4359
  store %struct.nand_bbt_descr* %44, %struct.nand_bbt_descr** %rd, align 8, !dbg !4361
  store i32 1, i32* %writeops, align 4, !dbg !4362
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end38
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then23
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then17
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then11
  br label %if.end68, !dbg !4363

if.else59:                                        ; preds = %cond.end
  %45 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4364
  %pages60 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %45, i32 0, i32 1, !dbg !4367
  %46 = load i32, i32* %i, align 4, !dbg !4368
  %idxprom61 = sext i32 %46 to i64, !dbg !4364
  %arrayidx62 = getelementptr [8 x i32], [8 x i32]* %pages60, i64 0, i64 %idxprom61, !dbg !4364
  %47 = load i32, i32* %arrayidx62, align 4, !dbg !4364
  %cmp63 = icmp eq i32 %47, -1, !dbg !4369
  br i1 %cmp63, label %if.then65, label %if.else66, !dbg !4370

if.then65:                                        ; preds = %if.else59
  store i32 1, i32* %create, align 4, !dbg !4371
  store i32 1, i32* %writeops, align 4, !dbg !4373
  br label %if.end67, !dbg !4374

if.else66:                                        ; preds = %if.else59
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4375
  store %struct.nand_bbt_descr* %48, %struct.nand_bbt_descr** %rd, align 8, !dbg !4377
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end58
  %49 = load i32, i32* %create, align 4, !dbg !4378
  %tobool69 = icmp ne i32 %49, 0, !dbg !4378
  br i1 %tobool69, label %if.then70, label %if.end90, !dbg !4380

if.then70:                                        ; preds = %if.end68
  %50 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4381
  %options71 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %50, i32 0, i32 0, !dbg !4384
  %51 = load i32, i32* %options71, align 8, !dbg !4384
  %and72 = and i32 %51, 512, !dbg !4385
  %tobool73 = icmp ne i32 %and72, 0, !dbg !4385
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !4386

if.then74:                                        ; preds = %if.then70
  br label %for.inc, !dbg !4387

if.end75:                                         ; preds = %if.then70
  %52 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4388
  %bbt_options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 10, !dbg !4390
  %53 = load i32, i32* %bbt_options, align 4, !dbg !4390
  %and76 = and i32 %53, 1024, !dbg !4391
  %tobool77 = icmp ne i32 %and76, 0, !dbg !4391
  br i1 %tobool77, label %if.end80, label %if.then78, !dbg !4392

if.then78:                                        ; preds = %if.end75
  %54 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4393
  %55 = load i8*, i8** %buf.addr, align 8, !dbg !4394
  %56 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4395
  %57 = load i32, i32* %chipsel, align 4, !dbg !4396
  %call79 = call i32 @create_bbt(%struct.nand_chip* %54, i8* %55, %struct.nand_bbt_descr* %56, i32 %57) #8, !dbg !4397
  br label %if.end80, !dbg !4397

if.end80:                                         ; preds = %if.then78, %if.end75
  %58 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4398
  %version81 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %58, i32 0, i32 4, !dbg !4399
  %59 = load i32, i32* %i, align 4, !dbg !4400
  %idxprom82 = sext i32 %59 to i64, !dbg !4398
  %arrayidx83 = getelementptr [8 x i8], [8 x i8]* %version81, i64 0, i64 %idxprom82, !dbg !4398
  store i8 1, i8* %arrayidx83, align 1, !dbg !4401
  %60 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4402
  %tobool84 = icmp ne %struct.nand_bbt_descr* %60, null, !dbg !4402
  br i1 %tobool84, label %if.then85, label %if.end89, !dbg !4404

if.then85:                                        ; preds = %if.end80
  %61 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4405
  %version86 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %61, i32 0, i32 4, !dbg !4406
  %62 = load i32, i32* %i, align 4, !dbg !4407
  %idxprom87 = sext i32 %62 to i64, !dbg !4405
  %arrayidx88 = getelementptr [8 x i8], [8 x i8]* %version86, i64 0, i64 %idxprom87, !dbg !4405
  store i8 1, i8* %arrayidx88, align 1, !dbg !4408
  br label %if.end89, !dbg !4405

if.end89:                                         ; preds = %if.then85, %if.end80
  br label %if.end90, !dbg !4409

if.end90:                                         ; preds = %if.end89, %if.end68
  %63 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd, align 8, !dbg !4410
  %tobool91 = icmp ne %struct.nand_bbt_descr* %63, null, !dbg !4410
  br i1 %tobool91, label %if.then92, label %if.end104, !dbg !4412

if.then92:                                        ; preds = %if.end90
  %64 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4413
  %65 = load i8*, i8** %buf.addr, align 8, !dbg !4415
  %66 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd, align 8, !dbg !4416
  %67 = load i32, i32* %chipsel, align 4, !dbg !4417
  %call93 = call i32 @read_abs_bbt(%struct.nand_chip* %64, i8* %65, %struct.nand_bbt_descr* %66, i32 %67) #8, !dbg !4418
  store i32 %call93, i32* %res, align 4, !dbg !4419
  %68 = load i32, i32* %res, align 4, !dbg !4420
  %call94 = call i32 @mtd_is_eccerr(i32 %68) #8, !dbg !4422
  %tobool95 = icmp ne i32 %call94, 0, !dbg !4422
  br i1 %tobool95, label %if.then96, label %if.end103, !dbg !4423

if.then96:                                        ; preds = %if.then92
  %69 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd, align 8, !dbg !4424
  %pages97 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %69, i32 0, i32 1, !dbg !4426
  %70 = load i32, i32* %i, align 4, !dbg !4427
  %idxprom98 = sext i32 %70 to i64, !dbg !4424
  %arrayidx99 = getelementptr [8 x i32], [8 x i32]* %pages97, i64 0, i64 %idxprom98, !dbg !4424
  store i32 -1, i32* %arrayidx99, align 4, !dbg !4428
  %71 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd, align 8, !dbg !4429
  %version100 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %71, i32 0, i32 4, !dbg !4430
  %72 = load i32, i32* %i, align 4, !dbg !4431
  %idxprom101 = sext i32 %72 to i64, !dbg !4429
  %arrayidx102 = getelementptr [8 x i8], [8 x i8]* %version100, i64 0, i64 %idxprom101, !dbg !4429
  store i8 0, i8* %arrayidx102, align 1, !dbg !4432
  %73 = load i32, i32* %i, align 4, !dbg !4433
  %dec = add i32 %73, -1, !dbg !4433
  store i32 %dec, i32* %i, align 4, !dbg !4433
  br label %for.inc, !dbg !4434

if.end103:                                        ; preds = %if.then92
  br label %if.end104, !dbg !4435

if.end104:                                        ; preds = %if.end103, %if.end90
  %74 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd2, align 8, !dbg !4436
  %tobool105 = icmp ne %struct.nand_bbt_descr* %74, null, !dbg !4436
  br i1 %tobool105, label %if.then106, label %if.end119, !dbg !4438

if.then106:                                       ; preds = %if.end104
  %75 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4439
  %76 = load i8*, i8** %buf.addr, align 8, !dbg !4441
  %77 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd2, align 8, !dbg !4442
  %78 = load i32, i32* %chipsel, align 4, !dbg !4443
  %call107 = call i32 @read_abs_bbt(%struct.nand_chip* %75, i8* %76, %struct.nand_bbt_descr* %77, i32 %78) #8, !dbg !4444
  store i32 %call107, i32* %res2, align 4, !dbg !4445
  %79 = load i32, i32* %res2, align 4, !dbg !4446
  %call108 = call i32 @mtd_is_eccerr(i32 %79) #8, !dbg !4448
  %tobool109 = icmp ne i32 %call108, 0, !dbg !4448
  br i1 %tobool109, label %if.then110, label %if.end118, !dbg !4449

if.then110:                                       ; preds = %if.then106
  %80 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd2, align 8, !dbg !4450
  %pages111 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %80, i32 0, i32 1, !dbg !4452
  %81 = load i32, i32* %i, align 4, !dbg !4453
  %idxprom112 = sext i32 %81 to i64, !dbg !4450
  %arrayidx113 = getelementptr [8 x i32], [8 x i32]* %pages111, i64 0, i64 %idxprom112, !dbg !4450
  store i32 -1, i32* %arrayidx113, align 4, !dbg !4454
  %82 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %rd2, align 8, !dbg !4455
  %version114 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %82, i32 0, i32 4, !dbg !4456
  %83 = load i32, i32* %i, align 4, !dbg !4457
  %idxprom115 = sext i32 %83 to i64, !dbg !4455
  %arrayidx116 = getelementptr [8 x i8], [8 x i8]* %version114, i64 0, i64 %idxprom115, !dbg !4455
  store i8 0, i8* %arrayidx116, align 1, !dbg !4458
  %84 = load i32, i32* %i, align 4, !dbg !4459
  %dec117 = add i32 %84, -1, !dbg !4459
  store i32 %dec117, i32* %i, align 4, !dbg !4459
  br label %for.inc, !dbg !4460

if.end118:                                        ; preds = %if.then106
  br label %if.end119, !dbg !4461

if.end119:                                        ; preds = %if.end118, %if.end104
  %85 = load i32, i32* %res, align 4, !dbg !4462
  %call120 = call i32 @mtd_is_bitflip(i32 %85) #8, !dbg !4464
  %tobool121 = icmp ne i32 %call120, 0, !dbg !4464
  br i1 %tobool121, label %if.then124, label %lor.lhs.false, !dbg !4465

lor.lhs.false:                                    ; preds = %if.end119
  %86 = load i32, i32* %res2, align 4, !dbg !4466
  %call122 = call i32 @mtd_is_bitflip(i32 %86) #8, !dbg !4467
  %tobool123 = icmp ne i32 %call122, 0, !dbg !4467
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !4468

if.then124:                                       ; preds = %lor.lhs.false, %if.end119
  store i32 3, i32* %writeops, align 4, !dbg !4469
  br label %if.end125, !dbg !4470

if.end125:                                        ; preds = %if.then124, %lor.lhs.false
  %87 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4471
  %tobool126 = icmp ne %struct.nand_bbt_descr* %87, null, !dbg !4471
  br i1 %tobool126, label %if.then127, label %if.end154, !dbg !4473

if.then127:                                       ; preds = %if.end125
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x177, metadata !4474, metadata !DIExpression()), !dbg !4477
  %88 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4477
  %version128 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %88, i32 0, i32 4, !dbg !4477
  %89 = load i32, i32* %i, align 4, !dbg !4477
  %idxprom129 = sext i32 %89 to i64, !dbg !4477
  %arrayidx130 = getelementptr [8 x i8], [8 x i8]* %version128, i64 0, i64 %idxprom129, !dbg !4477
  %90 = load i8, i8* %arrayidx130, align 1, !dbg !4477
  store i8 %90, i8* %__UNIQUE_ID___x177, align 1, !dbg !4477
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y178, metadata !4478, metadata !DIExpression()), !dbg !4477
  %91 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4477
  %version131 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %91, i32 0, i32 4, !dbg !4477
  %92 = load i32, i32* %i, align 4, !dbg !4477
  %idxprom132 = sext i32 %92 to i64, !dbg !4477
  %arrayidx133 = getelementptr [8 x i8], [8 x i8]* %version131, i64 0, i64 %idxprom132, !dbg !4477
  %93 = load i8, i8* %arrayidx133, align 1, !dbg !4477
  store i8 %93, i8* %__UNIQUE_ID___y178, align 1, !dbg !4477
  %94 = load i8, i8* %__UNIQUE_ID___x177, align 1, !dbg !4477
  %conv134 = zext i8 %94 to i32, !dbg !4477
  %95 = load i8, i8* %__UNIQUE_ID___y178, align 1, !dbg !4477
  %conv135 = zext i8 %95 to i32, !dbg !4477
  %cmp136 = icmp sgt i32 %conv134, %conv135, !dbg !4477
  br i1 %cmp136, label %cond.true138, label %cond.false140, !dbg !4477

cond.true138:                                     ; preds = %if.then127
  %96 = load i8, i8* %__UNIQUE_ID___x177, align 1, !dbg !4477
  %conv139 = zext i8 %96 to i32, !dbg !4477
  br label %cond.end142, !dbg !4477

cond.false140:                                    ; preds = %if.then127
  %97 = load i8, i8* %__UNIQUE_ID___y178, align 1, !dbg !4477
  %conv141 = zext i8 %97 to i32, !dbg !4477
  br label %cond.end142, !dbg !4477

cond.end142:                                      ; preds = %cond.false140, %cond.true138
  %cond143 = phi i32 [ %conv139, %cond.true138 ], [ %conv141, %cond.false140 ], !dbg !4477
  store i32 %cond143, i32* %tmp, align 4, !dbg !4477
  %98 = load i32, i32* %tmp, align 4, !dbg !4477
  %conv144 = trunc i32 %98 to i8, !dbg !4479
  %99 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4480
  %version145 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %99, i32 0, i32 4, !dbg !4481
  %100 = load i32, i32* %i, align 4, !dbg !4482
  %idxprom146 = sext i32 %100 to i64, !dbg !4480
  %arrayidx147 = getelementptr [8 x i8], [8 x i8]* %version145, i64 0, i64 %idxprom146, !dbg !4480
  store i8 %conv144, i8* %arrayidx147, align 1, !dbg !4483
  %101 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4484
  %version148 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %101, i32 0, i32 4, !dbg !4485
  %102 = load i32, i32* %i, align 4, !dbg !4486
  %idxprom149 = sext i32 %102 to i64, !dbg !4484
  %arrayidx150 = getelementptr [8 x i8], [8 x i8]* %version148, i64 0, i64 %idxprom149, !dbg !4484
  %103 = load i8, i8* %arrayidx150, align 1, !dbg !4484
  %104 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4487
  %version151 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %104, i32 0, i32 4, !dbg !4488
  %105 = load i32, i32* %i, align 4, !dbg !4489
  %idxprom152 = sext i32 %105 to i64, !dbg !4487
  %arrayidx153 = getelementptr [8 x i8], [8 x i8]* %version151, i64 0, i64 %idxprom152, !dbg !4487
  store i8 %103, i8* %arrayidx153, align 1, !dbg !4490
  br label %if.end154, !dbg !4491

if.end154:                                        ; preds = %cond.end142, %if.end125
  %106 = load i32, i32* %writeops, align 4, !dbg !4492
  %and155 = and i32 %106, 1, !dbg !4494
  %tobool156 = icmp ne i32 %and155, 0, !dbg !4494
  br i1 %tobool156, label %land.lhs.true157, label %if.end167, !dbg !4495

land.lhs.true157:                                 ; preds = %if.end154
  %107 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4496
  %options158 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %107, i32 0, i32 0, !dbg !4497
  %108 = load i32, i32* %options158, align 8, !dbg !4497
  %and159 = and i32 %108, 8192, !dbg !4498
  %tobool160 = icmp ne i32 %and159, 0, !dbg !4498
  br i1 %tobool160, label %if.then161, label %if.end167, !dbg !4499

if.then161:                                       ; preds = %land.lhs.true157
  %109 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4500
  %110 = load i8*, i8** %buf.addr, align 8, !dbg !4502
  %111 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4503
  %112 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4504
  %113 = load i32, i32* %chipsel, align 4, !dbg !4505
  %call162 = call i32 @write_bbt(%struct.nand_chip* %109, i8* %110, %struct.nand_bbt_descr* %111, %struct.nand_bbt_descr* %112, i32 %113) #8, !dbg !4506
  store i32 %call162, i32* %res, align 4, !dbg !4507
  %114 = load i32, i32* %res, align 4, !dbg !4508
  %cmp163 = icmp slt i32 %114, 0, !dbg !4510
  br i1 %cmp163, label %if.then165, label %if.end166, !dbg !4511

if.then165:                                       ; preds = %if.then161
  %115 = load i32, i32* %res, align 4, !dbg !4512
  store i32 %115, i32* %retval, align 4, !dbg !4513
  br label %return, !dbg !4513

if.end166:                                        ; preds = %if.then161
  br label %if.end167, !dbg !4514

if.end167:                                        ; preds = %if.end166, %land.lhs.true157, %if.end154
  %116 = load i32, i32* %writeops, align 4, !dbg !4515
  %and168 = and i32 %116, 2, !dbg !4517
  %tobool169 = icmp ne i32 %and168, 0, !dbg !4517
  br i1 %tobool169, label %land.lhs.true170, label %if.end182, !dbg !4518

land.lhs.true170:                                 ; preds = %if.end167
  %117 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4519
  %tobool171 = icmp ne %struct.nand_bbt_descr* %117, null, !dbg !4519
  br i1 %tobool171, label %land.lhs.true172, label %if.end182, !dbg !4520

land.lhs.true172:                                 ; preds = %land.lhs.true170
  %118 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4521
  %options173 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %118, i32 0, i32 0, !dbg !4522
  %119 = load i32, i32* %options173, align 8, !dbg !4522
  %and174 = and i32 %119, 8192, !dbg !4523
  %tobool175 = icmp ne i32 %and174, 0, !dbg !4523
  br i1 %tobool175, label %if.then176, label %if.end182, !dbg !4524

if.then176:                                       ; preds = %land.lhs.true172
  %120 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4525
  %121 = load i8*, i8** %buf.addr, align 8, !dbg !4527
  %122 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md, align 8, !dbg !4528
  %123 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td, align 8, !dbg !4529
  %124 = load i32, i32* %chipsel, align 4, !dbg !4530
  %call177 = call i32 @write_bbt(%struct.nand_chip* %120, i8* %121, %struct.nand_bbt_descr* %122, %struct.nand_bbt_descr* %123, i32 %124) #8, !dbg !4531
  store i32 %call177, i32* %res, align 4, !dbg !4532
  %125 = load i32, i32* %res, align 4, !dbg !4533
  %cmp178 = icmp slt i32 %125, 0, !dbg !4535
  br i1 %cmp178, label %if.then180, label %if.end181, !dbg !4536

if.then180:                                       ; preds = %if.then176
  %126 = load i32, i32* %res, align 4, !dbg !4537
  store i32 %126, i32* %retval, align 4, !dbg !4538
  br label %return, !dbg !4538

if.end181:                                        ; preds = %if.then176
  br label %if.end182, !dbg !4539

if.end182:                                        ; preds = %if.end181, %land.lhs.true172, %land.lhs.true170, %if.end167
  br label %for.inc, !dbg !4540

for.inc:                                          ; preds = %if.end182, %if.then110, %if.then96, %if.then74
  %127 = load i32, i32* %i, align 4, !dbg !4541
  %inc = add i32 %127, 1, !dbg !4541
  store i32 %inc, i32* %i, align 4, !dbg !4541
  br label %for.cond, !dbg !4542, !llvm.loop !4543

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4545
  br label %return, !dbg !4545

return:                                           ; preds = %for.end, %if.then180, %if.then165
  %128 = load i32, i32* %retval, align 4, !dbg !4546
  ret i32 %128, !dbg !4546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mark_bbt_region(%struct.nand_chip* %this, %struct.nand_bbt_descr* %td) #0 !dbg !4547 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %targetsize = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %chips = alloca i32, align 4
  %block = alloca i32, align 4
  %nrblocks = alloca i32, align 4
  %update = alloca i32, align 4
  %oldval = alloca i8, align 1
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !4552, metadata !DIExpression()), !dbg !4553
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4554
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !4555
  %call = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !4556
  store i64 %call, i64* %targetsize, align 8, !dbg !4553
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4557, metadata !DIExpression()), !dbg !4558
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4559
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !4560
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !4558
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata i32* %chips, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.declare(metadata i32* %block, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.declare(metadata i32* %nrblocks, metadata !4569, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.declare(metadata i32* %update, metadata !4571, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.declare(metadata i8* %oldval, metadata !4573, metadata !DIExpression()), !dbg !4574
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4575
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %2, i32 0, i32 0, !dbg !4577
  %3 = load i32, i32* %options, align 8, !dbg !4577
  %and = and i32 %3, 128, !dbg !4578
  %tobool = icmp ne i32 %and, 0, !dbg !4578
  br i1 %tobool, label %if.then, label %if.else, !dbg !4579

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4580
  %base2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 0, !dbg !4582
  %call3 = call i32 @nanddev_ntargets(%struct.nand_device* %base2) #8, !dbg !4583
  store i32 %call3, i32* %chips, align 4, !dbg !4584
  %5 = load i64, i64* %targetsize, align 8, !dbg !4585
  %6 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4586
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 9, !dbg !4587
  %7 = load i32, i32* %bbt_erase_shift, align 8, !dbg !4587
  %sh_prom = zext i32 %7 to i64, !dbg !4588
  %shr = lshr i64 %5, %sh_prom, !dbg !4588
  %conv = trunc i64 %shr to i32, !dbg !4589
  store i32 %conv, i32* %nrblocks, align 4, !dbg !4590
  br label %if.end, !dbg !4591

if.else:                                          ; preds = %entry
  store i32 1, i32* %chips, align 4, !dbg !4592
  %8 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4594
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 2, !dbg !4595
  %9 = load i64, i64* %size, align 8, !dbg !4595
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4596
  %bbt_erase_shift4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 9, !dbg !4597
  %11 = load i32, i32* %bbt_erase_shift4, align 8, !dbg !4597
  %sh_prom5 = zext i32 %11 to i64, !dbg !4598
  %shr6 = lshr i64 %9, %sh_prom5, !dbg !4598
  %conv7 = trunc i64 %shr6 to i32, !dbg !4599
  store i32 %conv7, i32* %nrblocks, align 4, !dbg !4600
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !dbg !4601
  br label %for.cond, !dbg !4603

for.cond:                                         ; preds = %for.inc69, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !4604
  %13 = load i32, i32* %chips, align 4, !dbg !4606
  %cmp = icmp slt i32 %12, %13, !dbg !4607
  br i1 %cmp, label %for.body, label %for.end71, !dbg !4608

for.body:                                         ; preds = %for.cond
  %14 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4609
  %options9 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %14, i32 0, i32 0, !dbg !4612
  %15 = load i32, i32* %options9, align 8, !dbg !4612
  %and10 = and i32 %15, 32, !dbg !4613
  %tobool11 = icmp ne i32 %and10, 0, !dbg !4613
  br i1 %tobool11, label %if.then15, label %lor.lhs.false, !dbg !4614

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4615
  %options12 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %16, i32 0, i32 0, !dbg !4616
  %17 = load i32, i32* %options12, align 8, !dbg !4616
  %and13 = and i32 %17, 8192, !dbg !4617
  %tobool14 = icmp ne i32 %and13, 0, !dbg !4617
  br i1 %tobool14, label %if.end36, label %if.then15, !dbg !4618

if.then15:                                        ; preds = %lor.lhs.false, %for.body
  %18 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4619
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %18, i32 0, i32 1, !dbg !4622
  %19 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom = sext i32 %19 to i64, !dbg !4619
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom, !dbg !4619
  %20 = load i32, i32* %arrayidx, align 4, !dbg !4619
  %cmp16 = icmp eq i32 %20, -1, !dbg !4624
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !4625

if.then18:                                        ; preds = %if.then15
  br label %for.inc69, !dbg !4626

if.end19:                                         ; preds = %if.then15
  %21 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4627
  %pages20 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %21, i32 0, i32 1, !dbg !4628
  %22 = load i32, i32* %i, align 4, !dbg !4629
  %idxprom21 = sext i32 %22 to i64, !dbg !4627
  %arrayidx22 = getelementptr [8 x i32], [8 x i32]* %pages20, i64 0, i64 %idxprom21, !dbg !4627
  %23 = load i32, i32* %arrayidx22, align 4, !dbg !4627
  %24 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4630
  %bbt_erase_shift23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 9, !dbg !4631
  %25 = load i32, i32* %bbt_erase_shift23, align 8, !dbg !4631
  %26 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4632
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 17, !dbg !4633
  %27 = load i32, i32* %page_shift, align 8, !dbg !4633
  %sub = sub i32 %25, %27, !dbg !4634
  %shr24 = ashr i32 %23, %sub, !dbg !4635
  store i32 %shr24, i32* %block, align 4, !dbg !4636
  %28 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4637
  %29 = load i32, i32* %block, align 4, !dbg !4638
  %call25 = call zeroext i8 @bbt_get_entry(%struct.nand_chip* %28, i32 %29) #8, !dbg !4639
  store i8 %call25, i8* %oldval, align 1, !dbg !4640
  %30 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4641
  %31 = load i32, i32* %block, align 4, !dbg !4642
  call void @bbt_mark_entry(%struct.nand_chip* %30, i32 %31, i8 zeroext 2) #8, !dbg !4643
  %32 = load i8, i8* %oldval, align 1, !dbg !4644
  %conv26 = zext i8 %32 to i32, !dbg !4644
  %cmp27 = icmp ne i32 %conv26, 2, !dbg !4646
  br i1 %cmp27, label %land.lhs.true, label %if.end35, !dbg !4647

land.lhs.true:                                    ; preds = %if.end19
  %33 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4648
  %reserved_block_code = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %33, i32 0, i32 7, !dbg !4649
  %34 = load i32, i32* %reserved_block_code, align 4, !dbg !4649
  %tobool29 = icmp ne i32 %34, 0, !dbg !4648
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !4650

if.then30:                                        ; preds = %land.lhs.true
  %35 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4651
  %36 = load i32, i32* %block, align 4, !dbg !4652
  %conv31 = sext i32 %36 to i64, !dbg !4653
  %37 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4654
  %bbt_erase_shift32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 9, !dbg !4655
  %38 = load i32, i32* %bbt_erase_shift32, align 8, !dbg !4655
  %sh_prom33 = zext i32 %38 to i64, !dbg !4656
  %shl = shl i64 %conv31, %sh_prom33, !dbg !4656
  %call34 = call i32 @nand_update_bbt(%struct.nand_chip* %35, i64 %shl) #8, !dbg !4657
  br label %if.end35, !dbg !4657

if.end35:                                         ; preds = %if.then30, %land.lhs.true, %if.end19
  br label %for.inc69, !dbg !4658

if.end36:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %update, align 4, !dbg !4659
  %39 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4660
  %options37 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %39, i32 0, i32 0, !dbg !4662
  %40 = load i32, i32* %options37, align 8, !dbg !4662
  %and38 = and i32 %40, 16, !dbg !4663
  %tobool39 = icmp ne i32 %and38, 0, !dbg !4663
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !4664

if.then40:                                        ; preds = %if.end36
  %41 = load i32, i32* %i, align 4, !dbg !4665
  %add = add i32 %41, 1, !dbg !4666
  %42 = load i32, i32* %nrblocks, align 4, !dbg !4667
  %mul = mul i32 %add, %42, !dbg !4668
  %43 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4669
  %maxblocks = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %43, i32 0, i32 6, !dbg !4670
  %44 = load i32, i32* %maxblocks, align 8, !dbg !4670
  %sub41 = sub i32 %mul, %44, !dbg !4671
  store i32 %sub41, i32* %block, align 4, !dbg !4672
  br label %if.end44, !dbg !4673

if.else42:                                        ; preds = %if.end36
  %45 = load i32, i32* %i, align 4, !dbg !4674
  %46 = load i32, i32* %nrblocks, align 4, !dbg !4675
  %mul43 = mul i32 %45, %46, !dbg !4676
  store i32 %mul43, i32* %block, align 4, !dbg !4677
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  store i32 0, i32* %j, align 4, !dbg !4678
  br label %for.cond45, !dbg !4680

for.cond45:                                       ; preds = %for.inc, %if.end44
  %47 = load i32, i32* %j, align 4, !dbg !4681
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4683
  %maxblocks46 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %48, i32 0, i32 6, !dbg !4684
  %49 = load i32, i32* %maxblocks46, align 8, !dbg !4684
  %cmp47 = icmp slt i32 %47, %49, !dbg !4685
  br i1 %cmp47, label %for.body49, label %for.end, !dbg !4686

for.body49:                                       ; preds = %for.cond45
  %50 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4687
  %51 = load i32, i32* %block, align 4, !dbg !4689
  %call50 = call zeroext i8 @bbt_get_entry(%struct.nand_chip* %50, i32 %51) #8, !dbg !4690
  store i8 %call50, i8* %oldval, align 1, !dbg !4691
  %52 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4692
  %53 = load i32, i32* %block, align 4, !dbg !4693
  call void @bbt_mark_entry(%struct.nand_chip* %52, i32 %53, i8 zeroext 2) #8, !dbg !4694
  %54 = load i8, i8* %oldval, align 1, !dbg !4695
  %conv51 = zext i8 %54 to i32, !dbg !4695
  %cmp52 = icmp ne i32 %conv51, 2, !dbg !4697
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !4698

if.then54:                                        ; preds = %for.body49
  store i32 1, i32* %update, align 4, !dbg !4699
  br label %if.end55, !dbg !4700

if.end55:                                         ; preds = %if.then54, %for.body49
  %55 = load i32, i32* %block, align 4, !dbg !4701
  %inc = add i32 %55, 1, !dbg !4701
  store i32 %inc, i32* %block, align 4, !dbg !4701
  br label %for.inc, !dbg !4702

for.inc:                                          ; preds = %if.end55
  %56 = load i32, i32* %j, align 4, !dbg !4703
  %inc56 = add i32 %56, 1, !dbg !4703
  store i32 %inc56, i32* %j, align 4, !dbg !4703
  br label %for.cond45, !dbg !4704, !llvm.loop !4705

for.end:                                          ; preds = %for.cond45
  %57 = load i32, i32* %update, align 4, !dbg !4707
  %tobool57 = icmp ne i32 %57, 0, !dbg !4707
  br i1 %tobool57, label %land.lhs.true58, label %if.end68, !dbg !4709

land.lhs.true58:                                  ; preds = %for.end
  %58 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !4710
  %reserved_block_code59 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %58, i32 0, i32 7, !dbg !4711
  %59 = load i32, i32* %reserved_block_code59, align 4, !dbg !4711
  %tobool60 = icmp ne i32 %59, 0, !dbg !4710
  br i1 %tobool60, label %if.then61, label %if.end68, !dbg !4712

if.then61:                                        ; preds = %land.lhs.true58
  %60 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4713
  %61 = load i32, i32* %block, align 4, !dbg !4714
  %sub62 = sub i32 %61, 1, !dbg !4715
  %conv63 = sext i32 %sub62 to i64, !dbg !4716
  %62 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4717
  %bbt_erase_shift64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 9, !dbg !4718
  %63 = load i32, i32* %bbt_erase_shift64, align 8, !dbg !4718
  %sh_prom65 = zext i32 %63 to i64, !dbg !4719
  %shl66 = shl i64 %conv63, %sh_prom65, !dbg !4719
  %call67 = call i32 @nand_update_bbt(%struct.nand_chip* %60, i64 %shl66) #8, !dbg !4720
  br label %if.end68, !dbg !4720

if.end68:                                         ; preds = %if.then61, %land.lhs.true58, %for.end
  br label %for.inc69, !dbg !4721

for.inc69:                                        ; preds = %if.end68, %if.end35, %if.then18
  %64 = load i32, i32* %i, align 4, !dbg !4722
  %inc70 = add i32 %64, 1, !dbg !4722
  store i32 %inc70, i32* %i, align 4, !dbg !4722
  br label %for.cond, !dbg !4723, !llvm.loop !4724

for.end71:                                        ; preds = %for.cond
  ret void, !dbg !4726
}

; Function Attrs: noredzone
declare dso_local void @vfree(i8*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @nand_get_data_buf(%struct.nand_chip* %chip) #0 !dbg !4727 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4732
  %pagecache = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 24, !dbg !4733
  %page = getelementptr inbounds %struct.anon.44, %struct.anon.44* %pagecache, i32 0, i32 1, !dbg !4734
  store i32 -1, i32* %page, align 4, !dbg !4735
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4736
  %data_buf = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 22, !dbg !4737
  %2 = load i8*, i8** %data_buf, align 8, !dbg !4737
  ret i8* %2, !dbg !4738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @create_bbt(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %bd, i32 %chip) #0 !dbg !4739 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %bd.addr = alloca %struct.nand_bbt_descr*, align 8
  %chip.addr = alloca i32, align 4
  %targetsize = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %i = alloca i32, align 4
  %numblocks = alloca i32, align 4
  %startblock = alloca i32, align 4
  %from = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  store %struct.nand_bbt_descr* %bd, %struct.nand_bbt_descr** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd.addr, metadata !4746, metadata !DIExpression()), !dbg !4747
  store i32 %chip, i32* %chip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip.addr, metadata !4748, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !4750, metadata !DIExpression()), !dbg !4751
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4752
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !4753
  %call = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !4754
  store i64 %call, i64* %targetsize, align 8, !dbg !4751
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4755, metadata !DIExpression()), !dbg !4756
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4757
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !4758
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !4756
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata i32* %numblocks, metadata !4761, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.declare(metadata i32* %startblock, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.declare(metadata i64* %from, metadata !4765, metadata !DIExpression()), !dbg !4766
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4767
  %2 = load i32, i32* %chip.addr, align 4, !dbg !4768
  %cmp = icmp eq i32 %2, -1, !dbg !4770
  br i1 %cmp, label %if.then, label %if.else, !dbg !4771

if.then:                                          ; preds = %entry
  %3 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4772
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 2, !dbg !4774
  %4 = load i64, i64* %size, align 8, !dbg !4774
  %5 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4775
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 9, !dbg !4776
  %6 = load i32, i32* %bbt_erase_shift, align 8, !dbg !4776
  %sh_prom = zext i32 %6 to i64, !dbg !4777
  %shr = lshr i64 %4, %sh_prom, !dbg !4777
  %conv = trunc i64 %shr to i32, !dbg !4772
  store i32 %conv, i32* %numblocks, align 4, !dbg !4778
  store i32 0, i32* %startblock, align 4, !dbg !4779
  store i64 0, i64* %from, align 8, !dbg !4780
  br label %if.end19, !dbg !4781

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %chip.addr, align 4, !dbg !4782
  %8 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4785
  %base3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0, !dbg !4786
  %call4 = call i32 @nanddev_ntargets(%struct.nand_device* %base3) #8, !dbg !4787
  %cmp5 = icmp uge i32 %7, %call4, !dbg !4788
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !4789

if.then7:                                         ; preds = %if.else
  %9 = load i32, i32* %chip.addr, align 4, !dbg !4790
  %add = add i32 %9, 1, !dbg !4790
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4790
  %base8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0, !dbg !4790
  %call9 = call i32 @nanddev_ntargets(%struct.nand_device* %base8) #8, !dbg !4790
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %add, i32 %call9) #9, !dbg !4790
  store i32 -22, i32* %retval, align 4, !dbg !4792
  br label %return, !dbg !4792

if.end:                                           ; preds = %if.else
  %11 = load i64, i64* %targetsize, align 8, !dbg !4793
  %12 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4794
  %bbt_erase_shift11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 9, !dbg !4795
  %13 = load i32, i32* %bbt_erase_shift11, align 8, !dbg !4795
  %sh_prom12 = zext i32 %13 to i64, !dbg !4796
  %shr13 = lshr i64 %11, %sh_prom12, !dbg !4796
  %conv14 = trunc i64 %shr13 to i32, !dbg !4793
  store i32 %conv14, i32* %numblocks, align 4, !dbg !4797
  %14 = load i32, i32* %chip.addr, align 4, !dbg !4798
  %15 = load i32, i32* %numblocks, align 4, !dbg !4799
  %mul = mul i32 %14, %15, !dbg !4800
  store i32 %mul, i32* %startblock, align 4, !dbg !4801
  %16 = load i32, i32* %startblock, align 4, !dbg !4802
  %17 = load i32, i32* %numblocks, align 4, !dbg !4803
  %add15 = add i32 %17, %16, !dbg !4803
  store i32 %add15, i32* %numblocks, align 4, !dbg !4803
  %18 = load i32, i32* %startblock, align 4, !dbg !4804
  %conv16 = sext i32 %18 to i64, !dbg !4805
  %19 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4806
  %bbt_erase_shift17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 9, !dbg !4807
  %20 = load i32, i32* %bbt_erase_shift17, align 8, !dbg !4807
  %sh_prom18 = zext i32 %20 to i64, !dbg !4808
  %shl = shl i64 %conv16, %sh_prom18, !dbg !4808
  store i64 %shl, i64* %from, align 8, !dbg !4809
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %21 = load i32, i32* %startblock, align 4, !dbg !4810
  store i32 %21, i32* %i, align 4, !dbg !4812
  br label %for.cond, !dbg !4813

for.cond:                                         ; preds = %for.inc, %if.end19
  %22 = load i32, i32* %i, align 4, !dbg !4814
  %23 = load i32, i32* %numblocks, align 4, !dbg !4816
  %cmp20 = icmp slt i32 %22, %23, !dbg !4817
  br i1 %cmp20, label %for.body, label %for.end, !dbg !4818

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4819, metadata !DIExpression()), !dbg !4821
  br label %do.body, !dbg !4822

do.body:                                          ; preds = %for.body
  %24 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4823
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %24, i32 0, i32 0, !dbg !4823
  %25 = load i32, i32* %options, align 8, !dbg !4823
  %and = and i32 %25, 262144, !dbg !4823
  %tobool = icmp ne i32 %and, 0, !dbg !4823
  %lnot = xor i1 %tobool, true, !dbg !4823
  %lnot22 = xor i1 %lnot, true, !dbg !4823
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !4823
  %conv23 = sext i32 %lnot.ext to i64, !dbg !4823
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !4823
  br i1 %tobool24, label %if.then25, label %if.end33, !dbg !4826

if.then25:                                        ; preds = %do.body
  br label %do.body26, !dbg !4823

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !4827

do.body27:                                        ; preds = %do.body26
  br label %do.end, !dbg !4829

do.end:                                           ; preds = %do.body27
  br label %do.body28, !dbg !4827

do.body28:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 490, i32 0, i64 12) #10, !dbg !4831, !srcloc !4833
  br label %do.end29, !dbg !4831

do.end29:                                         ; preds = %do.body28
  br label %do.body30, !dbg !4827

do.body30:                                        ; preds = %do.end29
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 176) #10, !dbg !4834, !srcloc !4837
  unreachable, !dbg !4838

do.end31:                                         ; No predecessors!
  br label %do.end32, !dbg !4827

do.end32:                                         ; preds = %do.end31
  br label %if.end33, !dbg !4827

if.end33:                                         ; preds = %do.end32, %do.body
  br label %do.end34, !dbg !4826

do.end34:                                         ; preds = %if.end33
  %26 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4839
  %27 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4840
  %28 = load i64, i64* %from, align 8, !dbg !4841
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !4842
  %call35 = call i32 @scan_block_fast(%struct.nand_chip* %26, %struct.nand_bbt_descr* %27, i64 %28, i8* %29) #8, !dbg !4843
  store i32 %call35, i32* %ret, align 4, !dbg !4844
  %30 = load i32, i32* %ret, align 4, !dbg !4845
  %cmp36 = icmp slt i32 %30, 0, !dbg !4847
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !4848

if.then38:                                        ; preds = %do.end34
  %31 = load i32, i32* %ret, align 4, !dbg !4849
  store i32 %31, i32* %retval, align 4, !dbg !4850
  br label %return, !dbg !4850

if.end39:                                         ; preds = %do.end34
  %32 = load i32, i32* %ret, align 4, !dbg !4851
  %tobool40 = icmp ne i32 %32, 0, !dbg !4851
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !4853

if.then41:                                        ; preds = %if.end39
  %33 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4854
  %34 = load i32, i32* %i, align 4, !dbg !4856
  call void @bbt_mark_entry(%struct.nand_chip* %33, i32 %34, i8 zeroext 3) #8, !dbg !4857
  %35 = load i32, i32* %i, align 4, !dbg !4858
  %36 = load i64, i64* %from, align 8, !dbg !4858
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %35, i64 %36) #9, !dbg !4858
  %37 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4859
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 51, !dbg !4860
  %badblocks = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 2, !dbg !4861
  %38 = load i32, i32* %badblocks, align 8, !dbg !4862
  %inc = add i32 %38, 1, !dbg !4862
  store i32 %inc, i32* %badblocks, align 8, !dbg !4862
  br label %if.end43, !dbg !4863

if.end43:                                         ; preds = %if.then41, %if.end39
  %39 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4864
  %bbt_erase_shift44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 9, !dbg !4865
  %40 = load i32, i32* %bbt_erase_shift44, align 8, !dbg !4865
  %shl45 = shl i32 1, %40, !dbg !4866
  %conv46 = sext i32 %shl45 to i64, !dbg !4867
  %41 = load i64, i64* %from, align 8, !dbg !4868
  %add47 = add i64 %41, %conv46, !dbg !4868
  store i64 %add47, i64* %from, align 8, !dbg !4868
  br label %for.inc, !dbg !4869

for.inc:                                          ; preds = %if.end43
  %42 = load i32, i32* %i, align 4, !dbg !4870
  %inc48 = add i32 %42, 1, !dbg !4870
  store i32 %inc48, i32* %i, align 4, !dbg !4870
  br label %for.cond, !dbg !4871, !llvm.loop !4872

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

return:                                           ; preds = %for.end, %if.then38, %if.then7
  %43 = load i32, i32* %retval, align 4, !dbg !4875
  ret i32 %43, !dbg !4875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @nanddev_target_size(%struct.nand_device* %nand) #0 !dbg !4876 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !4881, metadata !DIExpression()), !dbg !4882
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4883
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !4884
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 7, !dbg !4885
  %1 = load i32, i32* %luns_per_target, align 4, !dbg !4885
  %conv = zext i32 %1 to i64, !dbg !4886
  %2 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4887
  %memorg1 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %2, i32 0, i32 1, !dbg !4888
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg1, i32 0, i32 4, !dbg !4889
  %3 = load i32, i32* %eraseblocks_per_lun, align 8, !dbg !4889
  %conv2 = zext i32 %3 to i64, !dbg !4887
  %mul = mul i64 %conv, %conv2, !dbg !4890
  %4 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4891
  %memorg3 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %4, i32 0, i32 1, !dbg !4892
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg3, i32 0, i32 3, !dbg !4893
  %5 = load i32, i32* %pages_per_eraseblock, align 4, !dbg !4893
  %conv4 = zext i32 %5 to i64, !dbg !4891
  %mul5 = mul i64 %mul, %conv4, !dbg !4894
  %6 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4895
  %memorg6 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %6, i32 0, i32 1, !dbg !4896
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg6, i32 0, i32 1, !dbg !4897
  %7 = load i32, i32* %pagesize, align 4, !dbg !4897
  %conv7 = zext i32 %7 to i64, !dbg !4895
  %mul8 = mul i64 %mul5, %conv7, !dbg !4898
  ret i64 %mul8, !dbg !4899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_ntargets(%struct.nand_device* %nand) #0 !dbg !4900 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4905
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !4906
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 8, !dbg !4907
  %1 = load i32, i32* %ntargets, align 8, !dbg !4907
  ret i32 %1, !dbg !4908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @scan_block_fast(%struct.nand_chip* %this, %struct.nand_bbt_descr* %bd, i64 %offs, i8* %buf) #0 !dbg !4909 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %bd.addr = alloca %struct.nand_bbt_descr*, align 8
  %offs.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %ops = alloca %struct.mtd_oob_ops, align 8
  %ret = alloca i32, align 4
  %page_offset = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  store %struct.nand_bbt_descr* %bd, %struct.nand_bbt_descr** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %bd.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4920, metadata !DIExpression()), !dbg !4921
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4922
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !4923
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !4921
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_ops* %ops, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata i32* %page_offset, metadata !4928, metadata !DIExpression()), !dbg !4929
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4930
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 6, !dbg !4931
  %2 = load i32, i32* %oobsize, align 4, !dbg !4931
  %conv = zext i32 %2 to i64, !dbg !4930
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 3, !dbg !4932
  store i64 %conv, i64* %ooblen, align 8, !dbg !4933
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4934
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 7, !dbg !4935
  store i8* %3, i8** %oobbuf, align 8, !dbg !4936
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 5, !dbg !4937
  store i32 0, i32* %ooboffs, align 8, !dbg !4938
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 6, !dbg !4939
  store i8* null, i8** %datbuf, align 8, !dbg !4940
  %mode = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 0, !dbg !4941
  store i32 0, i32* %mode, align 8, !dbg !4942
  %4 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4943
  %call1 = call i32 @nand_bbm_get_next_page(%struct.nand_chip* %4, i32 0) #8, !dbg !4944
  store i32 %call1, i32* %page_offset, align 4, !dbg !4945
  br label %while.cond, !dbg !4946

while.cond:                                       ; preds = %if.end10, %entry
  %5 = load i32, i32* %page_offset, align 4, !dbg !4947
  %cmp = icmp sge i32 %5, 0, !dbg !4948
  br i1 %cmp, label %while.body, label %while.end, !dbg !4946

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4949
  %7 = load i64, i64* %offs.addr, align 8, !dbg !4951
  %8 = load i32, i32* %page_offset, align 4, !dbg !4952
  %9 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4953
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 4, !dbg !4954
  %10 = load i32, i32* %writesize, align 4, !dbg !4954
  %mul = mul i32 %8, %10, !dbg !4955
  %conv3 = zext i32 %mul to i64, !dbg !4956
  %add = add i64 %7, %conv3, !dbg !4957
  %call4 = call i32 @mtd_read_oob(%struct.mtd_info* %6, i64 %add, %struct.mtd_oob_ops* %ops) #8, !dbg !4958
  store i32 %call4, i32* %ret, align 4, !dbg !4959
  %11 = load i32, i32* %ret, align 4, !dbg !4960
  %tobool = icmp ne i32 %11, 0, !dbg !4960
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4962

land.lhs.true:                                    ; preds = %while.body
  %12 = load i32, i32* %ret, align 4, !dbg !4963
  %call5 = call i32 @mtd_is_bitflip_or_eccerr(i32 %12) #8, !dbg !4964
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4964
  br i1 %tobool6, label %if.end, label %if.then, !dbg !4965

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %ret, align 4, !dbg !4966
  store i32 %13, i32* %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !4968
  %15 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %bd.addr, align 8, !dbg !4970
  %call7 = call i32 @check_short_pattern(i8* %14, %struct.nand_bbt_descr* %15) #8, !dbg !4971
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4971
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4972

if.then9:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !4973
  br label %return, !dbg !4973

if.end10:                                         ; preds = %if.end
  %16 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !4974
  %17 = load i32, i32* %page_offset, align 4, !dbg !4975
  %add11 = add i32 %17, 1, !dbg !4976
  %call12 = call i32 @nand_bbm_get_next_page(%struct.nand_chip* %16, i32 %add11) #8, !dbg !4977
  store i32 %call12, i32* %page_offset, align 4, !dbg !4978
  br label %while.cond, !dbg !4946, !llvm.loop !4979

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !4981
  br label %return, !dbg !4981

return:                                           ; preds = %while.end, %if.then9, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4982
  ret i32 %18, !dbg !4982
}

; Function Attrs: noredzone
declare dso_local i32 @nand_bbm_get_next_page(%struct.nand_chip*, i32) #4

; Function Attrs: noredzone
declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i64, %struct.mtd_oob_ops*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtd_is_bitflip_or_eccerr(i32 %err) #0 !dbg !4983 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load i32, i32* %err.addr, align 4, !dbg !4988
  %call = call i32 @mtd_is_bitflip(i32 %0) #8, !dbg !4989
  %tobool = icmp ne i32 %call, 0, !dbg !4989
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4990

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %err.addr, align 4, !dbg !4991
  %call1 = call i32 @mtd_is_eccerr(i32 %1) #8, !dbg !4992
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4990
  br label %lor.end, !dbg !4990

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !4990
  ret i32 %lor.ext, !dbg !4993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_short_pattern(i8* %buf, %struct.nand_bbt_descr* %td) #0 !dbg !4994 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5001
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5003
  %offs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 2, !dbg !5004
  %2 = load i32, i32* %offs, align 4, !dbg !5004
  %idx.ext = sext i32 %2 to i64, !dbg !5005
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !5005
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5006
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %3, i32 0, i32 8, !dbg !5007
  %4 = load i8*, i8** %pattern, align 8, !dbg !5007
  %5 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5008
  %len = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %5, i32 0, i32 5, !dbg !5009
  %6 = load i32, i32* %len, align 4, !dbg !5009
  %conv = sext i32 %6 to i64, !dbg !5008
  %call = call i32 @memcmp(i8* %add.ptr, i8* %4, i64 %conv) #8, !dbg !5010
  %tobool = icmp ne i32 %call, 0, !dbg !5010
  br i1 %tobool, label %if.then, label %if.end, !dbg !5011

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !5012
  br label %return, !dbg !5012

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5013
  br label %return, !dbg !5013

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5014
  ret i32 %7, !dbg !5014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtd_is_bitflip(i32 %err) #0 !dbg !5015 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  %0 = load i32, i32* %err.addr, align 4, !dbg !5018
  %cmp = icmp eq i32 %0, -117, !dbg !5019
  %conv = zext i1 %cmp to i32, !dbg !5019
  ret i32 %conv, !dbg !5020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtd_is_eccerr(i32 %err) #0 !dbg !5021 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load i32, i32* %err.addr, align 4, !dbg !5024
  %cmp = icmp eq i32 %0, -74, !dbg !5025
  %conv = zext i1 %cmp to i32, !dbg !5025
  ret i32 %conv, !dbg !5026
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @scan_read(%struct.nand_chip* %this, i8* %buf, i64 %offs, i64 %len, %struct.nand_bbt_descr* %td) #0 !dbg !5027 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5040
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %0, i32 0, i32 0, !dbg !5042
  %1 = load i32, i32* %options, align 8, !dbg !5042
  %and = and i32 %1, 262144, !dbg !5043
  %tobool = icmp ne i32 %and, 0, !dbg !5043
  br i1 %tobool, label %if.then, label %if.else, !dbg !5044

if.then:                                          ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5045
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !5046
  %4 = load i64, i64* %offs.addr, align 8, !dbg !5047
  %5 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5048
  %call = call i32 @scan_read_data(%struct.nand_chip* %2, i8* %3, i64 %4, %struct.nand_bbt_descr* %5) #8, !dbg !5049
  store i32 %call, i32* %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

if.else:                                          ; preds = %entry
  %6 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5051
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5052
  %8 = load i64, i64* %offs.addr, align 8, !dbg !5053
  %9 = load i64, i64* %len.addr, align 8, !dbg !5054
  %call1 = call i32 @scan_read_oob(%struct.nand_chip* %6, i8* %7, i64 %8, i64 %9) #8, !dbg !5055
  store i32 %call1, i32* %retval, align 4, !dbg !5056
  br label %return, !dbg !5056

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5057
  ret i32 %10, !dbg !5057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bbt_get_ver_offs(%struct.nand_chip* %this, %struct.nand_bbt_descr* %td) #0 !dbg !5058 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %ver_offs = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !5065, metadata !DIExpression()), !dbg !5066
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5067
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !5068
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %ver_offs, metadata !5069, metadata !DIExpression()), !dbg !5070
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5071
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 3, !dbg !5072
  %2 = load i32, i32* %veroffs, align 8, !dbg !5072
  store i32 %2, i32* %ver_offs, align 4, !dbg !5070
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5073
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %3, i32 0, i32 0, !dbg !5075
  %4 = load i32, i32* %options, align 8, !dbg !5075
  %and = and i32 %4, 262144, !dbg !5076
  %tobool = icmp ne i32 %and, 0, !dbg !5076
  br i1 %tobool, label %if.end, label %if.then, !dbg !5077

if.then:                                          ; preds = %entry
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5078
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 4, !dbg !5079
  %6 = load i32, i32* %writesize, align 4, !dbg !5079
  %7 = load i32, i32* %ver_offs, align 4, !dbg !5080
  %add = add i32 %7, %6, !dbg !5080
  store i32 %add, i32* %ver_offs, align 4, !dbg !5080
  br label %if.end, !dbg !5081

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %ver_offs, align 4, !dbg !5082
  ret i32 %8, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @scan_read_data(%struct.nand_chip* %this, i8* %buf, i64 %offs, %struct.nand_bbt_descr* %td) #0 !dbg !5084 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %offs.addr = alloca i64, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %retlen = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !5095, metadata !DIExpression()), !dbg !5096
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5097
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !5098
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !5096
  call void @llvm.dbg.declare(metadata i64* %retlen, metadata !5099, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5101, metadata !DIExpression()), !dbg !5102
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5103
  %len1 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 5, !dbg !5104
  %2 = load i32, i32* %len1, align 4, !dbg !5104
  %conv = sext i32 %2 to i64, !dbg !5103
  store i64 %conv, i64* %len, align 8, !dbg !5105
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5106
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %3, i32 0, i32 0, !dbg !5108
  %4 = load i32, i32* %options, align 8, !dbg !5108
  %and = and i32 %4, 256, !dbg !5109
  %tobool = icmp ne i32 %and, 0, !dbg !5109
  br i1 %tobool, label %if.then, label %if.end, !dbg !5110

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %len, align 8, !dbg !5111
  %inc = add i64 %5, 1, !dbg !5111
  store i64 %inc, i64* %len, align 8, !dbg !5111
  br label %if.end, !dbg !5112

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5113
  %7 = load i64, i64* %offs.addr, align 8, !dbg !5114
  %8 = load i64, i64* %len, align 8, !dbg !5115
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5116
  %call2 = call i32 @mtd_read(%struct.mtd_info* %6, i64 %7, i64 %8, i64* %retlen, i8* %9) #8, !dbg !5117
  ret i32 %call2, !dbg !5118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @scan_read_oob(%struct.nand_chip* %this, i8* %buf, i64 %offs, i64 %len) #0 !dbg !5119 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %ops = alloca %struct.mtd_oob_ops, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x174 = alloca i64, align 8
  %__UNIQUE_ID___y175 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5128, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5132
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !5133
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !5131
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_ops* %ops, metadata !5134, metadata !DIExpression()), !dbg !5135
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5136, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5138, metadata !DIExpression()), !dbg !5139
  store i32 0, i32* %ret, align 4, !dbg !5139
  %mode = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 0, !dbg !5140
  store i32 0, i32* %mode, align 8, !dbg !5141
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 5, !dbg !5142
  store i32 0, i32* %ooboffs, align 8, !dbg !5143
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5144
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 6, !dbg !5145
  %2 = load i32, i32* %oobsize, align 4, !dbg !5145
  %conv = zext i32 %2 to i64, !dbg !5144
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 3, !dbg !5146
  store i64 %conv, i64* %ooblen, align 8, !dbg !5147
  br label %while.cond, !dbg !5148

while.cond:                                       ; preds = %if.end16, %entry
  %3 = load i64, i64* %len.addr, align 8, !dbg !5149
  %cmp = icmp ugt i64 %3, 0, !dbg !5150
  br i1 %cmp, label %while.body, label %while.end, !dbg !5148

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5151
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 6, !dbg !5153
  store i8* %4, i8** %datbuf, align 8, !dbg !5154
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x174, metadata !5155, metadata !DIExpression()), !dbg !5157
  %5 = load i64, i64* %len.addr, align 8, !dbg !5157
  store i64 %5, i64* %__UNIQUE_ID___x174, align 8, !dbg !5157
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y175, metadata !5158, metadata !DIExpression()), !dbg !5157
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5157
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 4, !dbg !5157
  %7 = load i32, i32* %writesize, align 4, !dbg !5157
  %conv2 = zext i32 %7 to i64, !dbg !5157
  store i64 %conv2, i64* %__UNIQUE_ID___y175, align 8, !dbg !5157
  %8 = load i64, i64* %__UNIQUE_ID___x174, align 8, !dbg !5157
  %9 = load i64, i64* %__UNIQUE_ID___y175, align 8, !dbg !5157
  %cmp3 = icmp ult i64 %8, %9, !dbg !5157
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5157

cond.true:                                        ; preds = %while.body
  %10 = load i64, i64* %__UNIQUE_ID___x174, align 8, !dbg !5157
  br label %cond.end, !dbg !5157

cond.false:                                       ; preds = %while.body
  %11 = load i64, i64* %__UNIQUE_ID___y175, align 8, !dbg !5157
  br label %cond.end, !dbg !5157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !5157
  store i64 %cond, i64* %tmp, align 8, !dbg !5157
  %12 = load i64, i64* %tmp, align 8, !dbg !5157
  %len5 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 1, !dbg !5159
  store i64 %12, i64* %len5, align 8, !dbg !5160
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !5161
  %len6 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 1, !dbg !5162
  %14 = load i64, i64* %len6, align 8, !dbg !5162
  %add.ptr = getelementptr i8, i8* %13, i64 %14, !dbg !5163
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 7, !dbg !5164
  store i8* %add.ptr, i8** %oobbuf, align 8, !dbg !5165
  %15 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5166
  %16 = load i64, i64* %offs.addr, align 8, !dbg !5167
  %call7 = call i32 @mtd_read_oob(%struct.mtd_info* %15, i64 %16, %struct.mtd_oob_ops* %ops) #8, !dbg !5168
  store i32 %call7, i32* %res, align 4, !dbg !5169
  %17 = load i32, i32* %res, align 4, !dbg !5170
  %tobool = icmp ne i32 %17, 0, !dbg !5170
  br i1 %tobool, label %if.then, label %if.end16, !dbg !5172

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %res, align 4, !dbg !5173
  %call8 = call i32 @mtd_is_bitflip_or_eccerr(i32 %18) #8, !dbg !5176
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5176
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !5177

if.then10:                                        ; preds = %if.then
  %19 = load i32, i32* %res, align 4, !dbg !5178
  store i32 %19, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

if.else:                                          ; preds = %if.then
  %20 = load i32, i32* %res, align 4, !dbg !5180
  %call11 = call i32 @mtd_is_eccerr(i32 %20) #8, !dbg !5182
  %tobool12 = icmp ne i32 %call11, 0, !dbg !5182
  br i1 %tobool12, label %if.then14, label %lor.lhs.false, !dbg !5183

lor.lhs.false:                                    ; preds = %if.else
  %21 = load i32, i32* %ret, align 4, !dbg !5184
  %tobool13 = icmp ne i32 %21, 0, !dbg !5184
  br i1 %tobool13, label %if.end, label %if.then14, !dbg !5185

if.then14:                                        ; preds = %lor.lhs.false, %if.else
  %22 = load i32, i32* %res, align 4, !dbg !5186
  store i32 %22, i32* %ret, align 4, !dbg !5187
  br label %if.end, !dbg !5188

if.end:                                           ; preds = %if.then14, %lor.lhs.false
  br label %if.end15

if.end15:                                         ; preds = %if.end
  br label %if.end16, !dbg !5189

if.end16:                                         ; preds = %if.end15, %cond.end
  %23 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5190
  %oobsize17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 6, !dbg !5191
  %24 = load i32, i32* %oobsize17, align 4, !dbg !5191
  %25 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5192
  %writesize18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 4, !dbg !5193
  %26 = load i32, i32* %writesize18, align 4, !dbg !5193
  %add = add i32 %24, %26, !dbg !5194
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !5195
  %idx.ext = zext i32 %add to i64, !dbg !5195
  %add.ptr19 = getelementptr i8, i8* %27, i64 %idx.ext, !dbg !5195
  store i8* %add.ptr19, i8** %buf.addr, align 8, !dbg !5195
  %28 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5196
  %writesize20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 4, !dbg !5197
  %29 = load i32, i32* %writesize20, align 4, !dbg !5197
  %conv21 = zext i32 %29 to i64, !dbg !5196
  %30 = load i64, i64* %len.addr, align 8, !dbg !5198
  %sub = sub i64 %30, %conv21, !dbg !5198
  store i64 %sub, i64* %len.addr, align 8, !dbg !5198
  %31 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5199
  %writesize22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 4, !dbg !5200
  %32 = load i32, i32* %writesize22, align 4, !dbg !5200
  %conv23 = zext i32 %32 to i64, !dbg !5199
  %33 = load i64, i64* %offs.addr, align 8, !dbg !5201
  %add24 = add i64 %33, %conv23, !dbg !5201
  store i64 %add24, i64* %offs.addr, align 8, !dbg !5201
  br label %while.cond, !dbg !5148, !llvm.loop !5202

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* %ret, align 4, !dbg !5204
  store i32 %34, i32* %retval, align 4, !dbg !5205
  br label %return, !dbg !5205

return:                                           ; preds = %while.end, %if.then10
  %35 = load i32, i32* %retval, align 4, !dbg !5206
  ret i32 %35, !dbg !5206
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i64, i64*, i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @search_bbt(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %td) #0 !dbg !5207 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %targetsize = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %i = alloca i32, align 4
  %chips = alloca i32, align 4
  %startblock = alloca i32, align 4
  %block = alloca i32, align 4
  %dir = alloca i32, align 4
  %scanlen = alloca i32, align 4
  %bbtblocks = alloca i32, align 4
  %blocktopage = alloca i32, align 4
  %actblock = alloca i32, align 4
  %offs = alloca i64, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !5214, metadata !DIExpression()), !dbg !5215
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5216
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !5217
  %call = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !5218
  store i64 %call, i64* %targetsize, align 8, !dbg !5215
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !5219, metadata !DIExpression()), !dbg !5220
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5221
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !5222
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !5220
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata i32* %chips, metadata !5225, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata i32* %startblock, metadata !5227, metadata !DIExpression()), !dbg !5228
  call void @llvm.dbg.declare(metadata i32* %block, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata i32* %dir, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata i32* %scanlen, metadata !5233, metadata !DIExpression()), !dbg !5234
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5235
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 4, !dbg !5236
  %3 = load i32, i32* %writesize, align 4, !dbg !5236
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5237
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 6, !dbg !5238
  %5 = load i32, i32* %oobsize, align 4, !dbg !5238
  %add = add i32 %3, %5, !dbg !5239
  store i32 %add, i32* %scanlen, align 4, !dbg !5234
  call void @llvm.dbg.declare(metadata i32* %bbtblocks, metadata !5240, metadata !DIExpression()), !dbg !5241
  call void @llvm.dbg.declare(metadata i32* %blocktopage, metadata !5242, metadata !DIExpression()), !dbg !5243
  %6 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5244
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 9, !dbg !5245
  %7 = load i32, i32* %bbt_erase_shift, align 8, !dbg !5245
  %8 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5246
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 17, !dbg !5247
  %9 = load i32, i32* %page_shift, align 8, !dbg !5247
  %sub = sub i32 %7, %9, !dbg !5248
  store i32 %sub, i32* %blocktopage, align 4, !dbg !5243
  %10 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5249
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %10, i32 0, i32 0, !dbg !5251
  %11 = load i32, i32* %options, align 8, !dbg !5251
  %and = and i32 %11, 16, !dbg !5252
  %tobool = icmp ne i32 %and, 0, !dbg !5252
  br i1 %tobool, label %if.then, label %if.else, !dbg !5253

if.then:                                          ; preds = %entry
  %12 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5254
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 2, !dbg !5256
  %13 = load i64, i64* %size, align 8, !dbg !5256
  %14 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5257
  %bbt_erase_shift2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 9, !dbg !5258
  %15 = load i32, i32* %bbt_erase_shift2, align 8, !dbg !5258
  %sh_prom = zext i32 %15 to i64, !dbg !5259
  %shr = lshr i64 %13, %sh_prom, !dbg !5259
  %sub3 = sub i64 %shr, 1, !dbg !5260
  %conv = trunc i64 %sub3 to i32, !dbg !5261
  store i32 %conv, i32* %startblock, align 4, !dbg !5262
  store i32 -1, i32* %dir, align 4, !dbg !5263
  br label %if.end, !dbg !5264

if.else:                                          ; preds = %entry
  store i32 0, i32* %startblock, align 4, !dbg !5265
  store i32 1, i32* %dir, align 4, !dbg !5267
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5268
  %options4 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %16, i32 0, i32 0, !dbg !5270
  %17 = load i32, i32* %options4, align 8, !dbg !5270
  %and5 = and i32 %17, 128, !dbg !5271
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5271
  br i1 %tobool6, label %if.then7, label %if.else16, !dbg !5272

if.then7:                                         ; preds = %if.end
  %18 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5273
  %base8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0, !dbg !5275
  %call9 = call i32 @nanddev_ntargets(%struct.nand_device* %base8) #8, !dbg !5276
  store i32 %call9, i32* %chips, align 4, !dbg !5277
  %19 = load i64, i64* %targetsize, align 8, !dbg !5278
  %20 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5279
  %bbt_erase_shift10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 9, !dbg !5280
  %21 = load i32, i32* %bbt_erase_shift10, align 8, !dbg !5280
  %sh_prom11 = zext i32 %21 to i64, !dbg !5281
  %shr12 = lshr i64 %19, %sh_prom11, !dbg !5281
  %conv13 = trunc i64 %shr12 to i32, !dbg !5278
  store i32 %conv13, i32* %bbtblocks, align 4, !dbg !5282
  %22 = load i32, i32* %bbtblocks, align 4, !dbg !5283
  %sub14 = sub i32 %22, 1, !dbg !5284
  %23 = load i32, i32* %startblock, align 4, !dbg !5285
  %and15 = and i32 %23, %sub14, !dbg !5285
  store i32 %and15, i32* %startblock, align 4, !dbg !5285
  br label %if.end22, !dbg !5286

if.else16:                                        ; preds = %if.end
  store i32 1, i32* %chips, align 4, !dbg !5287
  %24 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5289
  %size17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 2, !dbg !5290
  %25 = load i64, i64* %size17, align 8, !dbg !5290
  %26 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5291
  %bbt_erase_shift18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 9, !dbg !5292
  %27 = load i32, i32* %bbt_erase_shift18, align 8, !dbg !5292
  %sh_prom19 = zext i32 %27 to i64, !dbg !5293
  %shr20 = lshr i64 %25, %sh_prom19, !dbg !5293
  %conv21 = trunc i64 %shr20 to i32, !dbg !5289
  store i32 %conv21, i32* %bbtblocks, align 4, !dbg !5294
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %if.then7
  store i32 0, i32* %i, align 4, !dbg !5295
  br label %for.cond, !dbg !5297

for.cond:                                         ; preds = %for.inc63, %if.end22
  %28 = load i32, i32* %i, align 4, !dbg !5298
  %29 = load i32, i32* %chips, align 4, !dbg !5300
  %cmp = icmp slt i32 %28, %29, !dbg !5301
  br i1 %cmp, label %for.body, label %for.end65, !dbg !5302

for.body:                                         ; preds = %for.cond
  %30 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5303
  %version = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %30, i32 0, i32 4, !dbg !5305
  %31 = load i32, i32* %i, align 4, !dbg !5306
  %idxprom = sext i32 %31 to i64, !dbg !5303
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %version, i64 0, i64 %idxprom, !dbg !5303
  store i8 0, i8* %arrayidx, align 1, !dbg !5307
  %32 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5308
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %32, i32 0, i32 1, !dbg !5309
  %33 = load i32, i32* %i, align 4, !dbg !5310
  %idxprom24 = sext i32 %33 to i64, !dbg !5308
  %arrayidx25 = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom24, !dbg !5308
  store i32 -1, i32* %arrayidx25, align 4, !dbg !5311
  store i32 0, i32* %block, align 4, !dbg !5312
  br label %for.cond26, !dbg !5314

for.cond26:                                       ; preds = %for.inc, %for.body
  %34 = load i32, i32* %block, align 4, !dbg !5315
  %35 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5317
  %maxblocks = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %35, i32 0, i32 6, !dbg !5318
  %36 = load i32, i32* %maxblocks, align 8, !dbg !5318
  %cmp27 = icmp slt i32 %34, %36, !dbg !5319
  br i1 %cmp27, label %for.body29, label %for.end, !dbg !5320

for.body29:                                       ; preds = %for.cond26
  call void @llvm.dbg.declare(metadata i32* %actblock, metadata !5321, metadata !DIExpression()), !dbg !5323
  %37 = load i32, i32* %startblock, align 4, !dbg !5324
  %38 = load i32, i32* %dir, align 4, !dbg !5325
  %39 = load i32, i32* %block, align 4, !dbg !5326
  %mul = mul i32 %38, %39, !dbg !5327
  %add30 = add i32 %37, %mul, !dbg !5328
  store i32 %add30, i32* %actblock, align 4, !dbg !5323
  call void @llvm.dbg.declare(metadata i64* %offs, metadata !5329, metadata !DIExpression()), !dbg !5330
  %40 = load i32, i32* %actblock, align 4, !dbg !5331
  %conv31 = sext i32 %40 to i64, !dbg !5332
  %41 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5333
  %bbt_erase_shift32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 9, !dbg !5334
  %42 = load i32, i32* %bbt_erase_shift32, align 8, !dbg !5334
  %sh_prom33 = zext i32 %42 to i64, !dbg !5335
  %shl = shl i64 %conv31, %sh_prom33, !dbg !5335
  store i64 %shl, i64* %offs, align 8, !dbg !5330
  %43 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5336
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !5337
  %45 = load i64, i64* %offs, align 8, !dbg !5338
  %46 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5339
  %writesize34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 4, !dbg !5340
  %47 = load i32, i32* %writesize34, align 4, !dbg !5340
  %conv35 = zext i32 %47 to i64, !dbg !5339
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5341
  %call36 = call i32 @scan_read(%struct.nand_chip* %43, i8* %44, i64 %45, i64 %conv35, %struct.nand_bbt_descr* %48) #8, !dbg !5342
  %49 = load i8*, i8** %buf.addr, align 8, !dbg !5343
  %50 = load i32, i32* %scanlen, align 4, !dbg !5345
  %51 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5346
  %writesize37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 4, !dbg !5347
  %52 = load i32, i32* %writesize37, align 4, !dbg !5347
  %53 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5348
  %call38 = call i32 @check_pattern(i8* %49, i32 %50, i32 %52, %struct.nand_bbt_descr* %53) #8, !dbg !5349
  %tobool39 = icmp ne i32 %call38, 0, !dbg !5349
  br i1 %tobool39, label %if.end56, label %if.then40, !dbg !5350

if.then40:                                        ; preds = %for.body29
  %54 = load i32, i32* %actblock, align 4, !dbg !5351
  %55 = load i32, i32* %blocktopage, align 4, !dbg !5353
  %shl41 = shl i32 %54, %55, !dbg !5354
  %56 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5355
  %pages42 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %56, i32 0, i32 1, !dbg !5356
  %57 = load i32, i32* %i, align 4, !dbg !5357
  %idxprom43 = sext i32 %57 to i64, !dbg !5355
  %arrayidx44 = getelementptr [8 x i32], [8 x i32]* %pages42, i64 0, i64 %idxprom43, !dbg !5355
  store i32 %shl41, i32* %arrayidx44, align 4, !dbg !5358
  %58 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5359
  %options45 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %58, i32 0, i32 0, !dbg !5361
  %59 = load i32, i32* %options45, align 8, !dbg !5361
  %and46 = and i32 %59, 256, !dbg !5362
  %tobool47 = icmp ne i32 %and46, 0, !dbg !5362
  br i1 %tobool47, label %if.then48, label %if.end55, !dbg !5363

if.then48:                                        ; preds = %if.then40
  %60 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5364
  %61 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5366
  %call49 = call i32 @bbt_get_ver_offs(%struct.nand_chip* %60, %struct.nand_bbt_descr* %61) #8, !dbg !5367
  %conv50 = zext i32 %call49 to i64, !dbg !5367
  store i64 %conv50, i64* %offs, align 8, !dbg !5368
  %62 = load i8*, i8** %buf.addr, align 8, !dbg !5369
  %63 = load i64, i64* %offs, align 8, !dbg !5370
  %arrayidx51 = getelementptr i8, i8* %62, i64 %63, !dbg !5369
  %64 = load i8, i8* %arrayidx51, align 1, !dbg !5369
  %65 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5371
  %version52 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %65, i32 0, i32 4, !dbg !5372
  %66 = load i32, i32* %i, align 4, !dbg !5373
  %idxprom53 = sext i32 %66 to i64, !dbg !5371
  %arrayidx54 = getelementptr [8 x i8], [8 x i8]* %version52, i64 0, i64 %idxprom53, !dbg !5371
  store i8 %64, i8* %arrayidx54, align 1, !dbg !5374
  br label %if.end55, !dbg !5375

if.end55:                                         ; preds = %if.then48, %if.then40
  br label %for.end, !dbg !5376

if.end56:                                         ; preds = %for.body29
  br label %for.inc, !dbg !5377

for.inc:                                          ; preds = %if.end56
  %67 = load i32, i32* %block, align 4, !dbg !5378
  %inc = add i32 %67, 1, !dbg !5378
  store i32 %inc, i32* %block, align 4, !dbg !5378
  br label %for.cond26, !dbg !5379, !llvm.loop !5380

for.end:                                          ; preds = %if.end55, %for.cond26
  %68 = load i64, i64* %targetsize, align 8, !dbg !5382
  %69 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5383
  %bbt_erase_shift57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 9, !dbg !5384
  %70 = load i32, i32* %bbt_erase_shift57, align 8, !dbg !5384
  %sh_prom58 = zext i32 %70 to i64, !dbg !5385
  %shr59 = lshr i64 %68, %sh_prom58, !dbg !5385
  %71 = load i32, i32* %startblock, align 4, !dbg !5386
  %conv60 = sext i32 %71 to i64, !dbg !5386
  %add61 = add i64 %conv60, %shr59, !dbg !5386
  %conv62 = trunc i64 %add61 to i32, !dbg !5386
  store i32 %conv62, i32* %startblock, align 4, !dbg !5386
  br label %for.inc63, !dbg !5387

for.inc63:                                        ; preds = %for.end
  %72 = load i32, i32* %i, align 4, !dbg !5388
  %inc64 = add i32 %72, 1, !dbg !5388
  store i32 %inc64, i32* %i, align 4, !dbg !5388
  br label %for.cond, !dbg !5389, !llvm.loop !5390

for.end65:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5392
  br label %for.cond66, !dbg !5394

for.cond66:                                       ; preds = %for.inc87, %for.end65
  %73 = load i32, i32* %i, align 4, !dbg !5395
  %74 = load i32, i32* %chips, align 4, !dbg !5397
  %cmp67 = icmp slt i32 %73, %74, !dbg !5398
  br i1 %cmp67, label %for.body69, label %for.end89, !dbg !5399

for.body69:                                       ; preds = %for.cond66
  %75 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5400
  %pages70 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %75, i32 0, i32 1, !dbg !5403
  %76 = load i32, i32* %i, align 4, !dbg !5404
  %idxprom71 = sext i32 %76 to i64, !dbg !5400
  %arrayidx72 = getelementptr [8 x i32], [8 x i32]* %pages70, i64 0, i64 %idxprom71, !dbg !5400
  %77 = load i32, i32* %arrayidx72, align 4, !dbg !5400
  %cmp73 = icmp eq i32 %77, -1, !dbg !5405
  br i1 %cmp73, label %if.then75, label %if.else77, !dbg !5406

if.then75:                                        ; preds = %for.body69
  %78 = load i32, i32* %i, align 4, !dbg !5407
  %call76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %78) #9, !dbg !5407
  br label %if.end86, !dbg !5407

if.else77:                                        ; preds = %for.body69
  %79 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5408
  %pages78 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %79, i32 0, i32 1, !dbg !5408
  %80 = load i32, i32* %i, align 4, !dbg !5408
  %idxprom79 = sext i32 %80 to i64, !dbg !5408
  %arrayidx80 = getelementptr [8 x i32], [8 x i32]* %pages78, i64 0, i64 %idxprom79, !dbg !5408
  %81 = load i32, i32* %arrayidx80, align 4, !dbg !5408
  %82 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5408
  %version81 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %82, i32 0, i32 4, !dbg !5408
  %83 = load i32, i32* %i, align 4, !dbg !5408
  %idxprom82 = sext i32 %83 to i64, !dbg !5408
  %arrayidx83 = getelementptr [8 x i8], [8 x i8]* %version81, i64 0, i64 %idxprom82, !dbg !5408
  %84 = load i8, i8* %arrayidx83, align 1, !dbg !5408
  %conv84 = zext i8 %84 to i32, !dbg !5408
  %call85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %81, i32 %conv84) #9, !dbg !5408
  br label %if.end86

if.end86:                                         ; preds = %if.else77, %if.then75
  br label %for.inc87, !dbg !5409

for.inc87:                                        ; preds = %if.end86
  %85 = load i32, i32* %i, align 4, !dbg !5410
  %inc88 = add i32 %85, 1, !dbg !5410
  store i32 %inc88, i32* %i, align 4, !dbg !5410
  br label %for.cond66, !dbg !5411, !llvm.loop !5412

for.end89:                                        ; preds = %for.cond66
  ret i32 0, !dbg !5414
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_pattern(i8* %buf, i32 %len, i32 %paglen, %struct.nand_bbt_descr* %td) #0 !dbg !5415 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %paglen.addr = alloca i32, align 4
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  store i32 %paglen, i32* %paglen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %paglen.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  %0 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5426
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %0, i32 0, i32 0, !dbg !5428
  %1 = load i32, i32* %options, align 8, !dbg !5428
  %and = and i32 %1, 262144, !dbg !5429
  %tobool = icmp ne i32 %and, 0, !dbg !5429
  br i1 %tobool, label %if.then, label %if.end, !dbg !5430

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5431
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5432
  %call = call i32 @check_pattern_no_oob(i8* %2, %struct.nand_bbt_descr* %3) #8, !dbg !5433
  store i32 %call, i32* %retval, align 4, !dbg !5434
  br label %return, !dbg !5434

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5435
  %5 = load i32, i32* %paglen.addr, align 4, !dbg !5437
  %idx.ext = sext i32 %5 to i64, !dbg !5438
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !5438
  %6 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5439
  %offs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %6, i32 0, i32 2, !dbg !5440
  %7 = load i32, i32* %offs, align 4, !dbg !5440
  %idx.ext1 = sext i32 %7 to i64, !dbg !5441
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.ext1, !dbg !5441
  %8 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5442
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %8, i32 0, i32 8, !dbg !5443
  %9 = load i8*, i8** %pattern, align 8, !dbg !5443
  %10 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5444
  %len3 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %10, i32 0, i32 5, !dbg !5445
  %11 = load i32, i32* %len3, align 4, !dbg !5445
  %conv = sext i32 %11 to i64, !dbg !5444
  %call4 = call i32 @memcmp(i8* %add.ptr2, i8* %9, i64 %conv) #8, !dbg !5446
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5446
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5447

if.then6:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !5448
  br label %return, !dbg !5448

if.end7:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5449
  br label %return, !dbg !5449

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5450
  ret i32 %12, !dbg !5450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_pattern_no_oob(i8* %buf, %struct.nand_bbt_descr* %td) #0 !dbg !5451 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5456
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5458
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 8, !dbg !5459
  %2 = load i8*, i8** %pattern, align 8, !dbg !5459
  %3 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5460
  %len = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %3, i32 0, i32 5, !dbg !5461
  %4 = load i32, i32* %len, align 4, !dbg !5461
  %conv = sext i32 %4 to i64, !dbg !5460
  %call = call i32 @memcmp(i8* %0, i8* %2, i64 %conv) #8, !dbg !5462
  %tobool = icmp ne i32 %call, 0, !dbg !5462
  br i1 %tobool, label %if.then, label %if.end, !dbg !5463

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5466
  ret i32 %5, !dbg !5466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_abs_bbt(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %td, i32 %chip) #0 !dbg !5467 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %chip.addr = alloca i32, align 4
  %mtd = alloca %struct.mtd_info*, align 8
  %targetsize = alloca i64, align 8
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %offs = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5468, metadata !DIExpression()), !dbg !5469
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  store i32 %chip, i32* %chip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !5476, metadata !DIExpression()), !dbg !5477
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5478
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !5479
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !5477
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !5480, metadata !DIExpression()), !dbg !5481
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5482
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 0, !dbg !5483
  %call1 = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !5484
  store i64 %call1, i64* %targetsize, align 8, !dbg !5481
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5485, metadata !DIExpression()), !dbg !5486
  store i32 0, i32* %res, align 4, !dbg !5486
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5487, metadata !DIExpression()), !dbg !5488
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5489
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %2, i32 0, i32 0, !dbg !5491
  %3 = load i32, i32* %options, align 8, !dbg !5491
  %and = and i32 %3, 128, !dbg !5492
  %tobool = icmp ne i32 %and, 0, !dbg !5492
  br i1 %tobool, label %if.then, label %if.else, !dbg !5493

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %offs, metadata !5494, metadata !DIExpression()), !dbg !5496
  store i32 0, i32* %offs, align 4, !dbg !5496
  store i32 0, i32* %i, align 4, !dbg !5497
  br label %for.cond, !dbg !5499

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !5500
  %5 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5502
  %base2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 0, !dbg !5503
  %call3 = call i32 @nanddev_ntargets(%struct.nand_device* %base2) #8, !dbg !5504
  %cmp = icmp ult i32 %4, %call3, !dbg !5505
  br i1 %cmp, label %for.body, label %for.end, !dbg !5506

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %chip.addr, align 4, !dbg !5507
  %cmp4 = icmp eq i32 %6, -1, !dbg !5510
  br i1 %cmp4, label %if.then6, label %lor.lhs.false, !dbg !5511

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %chip.addr, align 4, !dbg !5512
  %8 = load i32, i32* %i, align 4, !dbg !5513
  %cmp5 = icmp eq i32 %7, %8, !dbg !5514
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !5515

if.then6:                                         ; preds = %lor.lhs.false, %for.body
  %9 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5516
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !5517
  %11 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5518
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %11, i32 0, i32 1, !dbg !5519
  %12 = load i32, i32* %i, align 4, !dbg !5520
  %idxprom = sext i32 %12 to i64, !dbg !5518
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom, !dbg !5518
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5518
  %14 = load i64, i64* %targetsize, align 8, !dbg !5521
  %15 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5522
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 9, !dbg !5523
  %16 = load i32, i32* %bbt_erase_shift, align 8, !dbg !5523
  %sh_prom = zext i32 %16 to i64, !dbg !5524
  %shr = lshr i64 %14, %sh_prom, !dbg !5524
  %conv = trunc i64 %shr to i32, !dbg !5521
  %17 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5525
  %18 = load i32, i32* %offs, align 4, !dbg !5526
  %call7 = call i32 @read_bbt(%struct.nand_chip* %9, i8* %10, i32 %13, i32 %conv, %struct.nand_bbt_descr* %17, i32 %18) #8, !dbg !5527
  store i32 %call7, i32* %res, align 4, !dbg !5528
  br label %if.end, !dbg !5529

if.end:                                           ; preds = %if.then6, %lor.lhs.false
  %19 = load i32, i32* %res, align 4, !dbg !5530
  %tobool8 = icmp ne i32 %19, 0, !dbg !5530
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5532

if.then9:                                         ; preds = %if.end
  %20 = load i32, i32* %res, align 4, !dbg !5533
  store i32 %20, i32* %retval, align 4, !dbg !5534
  br label %return, !dbg !5534

if.end10:                                         ; preds = %if.end
  %21 = load i64, i64* %targetsize, align 8, !dbg !5535
  %22 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5536
  %bbt_erase_shift11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 9, !dbg !5537
  %23 = load i32, i32* %bbt_erase_shift11, align 8, !dbg !5537
  %sh_prom12 = zext i32 %23 to i64, !dbg !5538
  %shr13 = lshr i64 %21, %sh_prom12, !dbg !5538
  %24 = load i32, i32* %offs, align 4, !dbg !5539
  %conv14 = sext i32 %24 to i64, !dbg !5539
  %add = add i64 %conv14, %shr13, !dbg !5539
  %conv15 = trunc i64 %add to i32, !dbg !5539
  store i32 %conv15, i32* %offs, align 4, !dbg !5539
  br label %for.inc, !dbg !5540

for.inc:                                          ; preds = %if.end10
  %25 = load i32, i32* %i, align 4, !dbg !5541
  %inc = add i32 %25, 1, !dbg !5541
  store i32 %inc, i32* %i, align 4, !dbg !5541
  br label %for.cond, !dbg !5542, !llvm.loop !5543

for.end:                                          ; preds = %for.cond
  br label %if.end26, !dbg !5545

if.else:                                          ; preds = %entry
  %26 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5546
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !5548
  %28 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5549
  %pages16 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %28, i32 0, i32 1, !dbg !5550
  %arrayidx17 = getelementptr [8 x i32], [8 x i32]* %pages16, i64 0, i64 0, !dbg !5549
  %29 = load i32, i32* %arrayidx17, align 4, !dbg !5549
  %30 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5551
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 2, !dbg !5552
  %31 = load i64, i64* %size, align 8, !dbg !5552
  %32 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5553
  %bbt_erase_shift18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 9, !dbg !5554
  %33 = load i32, i32* %bbt_erase_shift18, align 8, !dbg !5554
  %sh_prom19 = zext i32 %33 to i64, !dbg !5555
  %shr20 = lshr i64 %31, %sh_prom19, !dbg !5555
  %conv21 = trunc i64 %shr20 to i32, !dbg !5551
  %34 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5556
  %call22 = call i32 @read_bbt(%struct.nand_chip* %26, i8* %27, i32 %29, i32 %conv21, %struct.nand_bbt_descr* %34, i32 0) #8, !dbg !5557
  store i32 %call22, i32* %res, align 4, !dbg !5558
  %35 = load i32, i32* %res, align 4, !dbg !5559
  %tobool23 = icmp ne i32 %35, 0, !dbg !5559
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5561

if.then24:                                        ; preds = %if.else
  %36 = load i32, i32* %res, align 4, !dbg !5562
  store i32 %36, i32* %retval, align 4, !dbg !5563
  br label %return, !dbg !5563

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %for.end
  store i32 0, i32* %retval, align 4, !dbg !5564
  br label %return, !dbg !5564

return:                                           ; preds = %if.end26, %if.then24, %if.then9
  %37 = load i32, i32* %retval, align 4, !dbg !5565
  ret i32 %37, !dbg !5565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @write_bbt(%struct.nand_chip* %this, i8* %buf, %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr* %md, i32 %chipsel) #0 !dbg !5566 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %md.addr = alloca %struct.nand_bbt_descr*, align 8
  %chipsel.addr = alloca i32, align 4
  %targetsize = alloca i64, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %einfo = alloca %struct.erase_info, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %chip = alloca i32, align 4
  %bits = alloca i32, align 4
  %page = alloca i32, align 4
  %offs = alloca i32, align 4
  %numblocks = alloca i32, align 4
  %sft = alloca i32, align 4
  %sftmsk = alloca i32, align 4
  %nrchips = alloca i32, align 4
  %pageoffs = alloca i32, align 4
  %ooboffs = alloca i32, align 4
  %msk = alloca [4 x i8], align 1
  %rcode = alloca i8, align 1
  %retlen = alloca i64, align 8
  %len = alloca i64, align 8
  %to = alloca i64, align 8
  %ops = alloca %struct.mtd_oob_ops, align 8
  %block = alloca i32, align 4
  %dat = alloca i8, align 1
  %sftcnt = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !5569, metadata !DIExpression()), !dbg !5570
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5571, metadata !DIExpression()), !dbg !5572
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  store %struct.nand_bbt_descr* %md, %struct.nand_bbt_descr** %md.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  store i32 %chipsel, i32* %chipsel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipsel.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !5579, metadata !DIExpression()), !dbg !5580
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5581
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !5582
  %call = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !5583
  store i64 %call, i64* %targetsize, align 8, !dbg !5580
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !5584, metadata !DIExpression()), !dbg !5585
  %1 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5586
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !5587
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !5585
  call void @llvm.dbg.declare(metadata %struct.erase_info* %einfo, metadata !5588, metadata !DIExpression()), !dbg !5589
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5590, metadata !DIExpression()), !dbg !5591
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5592, metadata !DIExpression()), !dbg !5593
  call void @llvm.dbg.declare(metadata i32* %chip, metadata !5594, metadata !DIExpression()), !dbg !5595
  store i32 0, i32* %chip, align 4, !dbg !5595
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !5596, metadata !DIExpression()), !dbg !5597
  call void @llvm.dbg.declare(metadata i32* %page, metadata !5598, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.declare(metadata i32* %offs, metadata !5600, metadata !DIExpression()), !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %numblocks, metadata !5602, metadata !DIExpression()), !dbg !5603
  call void @llvm.dbg.declare(metadata i32* %sft, metadata !5604, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.declare(metadata i32* %sftmsk, metadata !5606, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.declare(metadata i32* %nrchips, metadata !5608, metadata !DIExpression()), !dbg !5609
  call void @llvm.dbg.declare(metadata i32* %pageoffs, metadata !5610, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.declare(metadata i32* %ooboffs, metadata !5612, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.declare(metadata [4 x i8]* %msk, metadata !5614, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata i8* %rcode, metadata !5616, metadata !DIExpression()), !dbg !5617
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5618
  %reserved_block_code = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %2, i32 0, i32 7, !dbg !5619
  %3 = load i32, i32* %reserved_block_code, align 4, !dbg !5619
  %conv = trunc i32 %3 to i8, !dbg !5618
  store i8 %conv, i8* %rcode, align 1, !dbg !5617
  call void @llvm.dbg.declare(metadata i64* %retlen, metadata !5620, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.declare(metadata i64* %len, metadata !5622, metadata !DIExpression()), !dbg !5623
  store i64 0, i64* %len, align 8, !dbg !5623
  call void @llvm.dbg.declare(metadata i64* %to, metadata !5624, metadata !DIExpression()), !dbg !5625
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_ops* %ops, metadata !5626, metadata !DIExpression()), !dbg !5627
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5628
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 6, !dbg !5629
  %5 = load i32, i32* %oobsize, align 4, !dbg !5629
  %conv2 = zext i32 %5 to i64, !dbg !5628
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 3, !dbg !5630
  store i64 %conv2, i64* %ooblen, align 8, !dbg !5631
  %ooboffs3 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 5, !dbg !5632
  store i32 0, i32* %ooboffs3, align 8, !dbg !5633
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 6, !dbg !5634
  store i8* null, i8** %datbuf, align 8, !dbg !5635
  %mode = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 0, !dbg !5636
  store i32 0, i32* %mode, align 8, !dbg !5637
  %6 = load i8, i8* %rcode, align 1, !dbg !5638
  %tobool = icmp ne i8 %6, 0, !dbg !5638
  br i1 %tobool, label %if.end, label %if.then, !dbg !5640

if.then:                                          ; preds = %entry
  store i8 -1, i8* %rcode, align 1, !dbg !5641
  br label %if.end, !dbg !5642

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5643
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %7, i32 0, i32 0, !dbg !5645
  %8 = load i32, i32* %options, align 8, !dbg !5645
  %and = and i32 %8, 128, !dbg !5646
  %tobool4 = icmp ne i32 %and, 0, !dbg !5646
  br i1 %tobool4, label %if.then5, label %if.else12, !dbg !5647

if.then5:                                         ; preds = %if.end
  %9 = load i64, i64* %targetsize, align 8, !dbg !5648
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5650
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 9, !dbg !5651
  %11 = load i32, i32* %bbt_erase_shift, align 8, !dbg !5651
  %sh_prom = zext i32 %11 to i64, !dbg !5652
  %shr = lshr i64 %9, %sh_prom, !dbg !5652
  %conv6 = trunc i64 %shr to i32, !dbg !5653
  store i32 %conv6, i32* %numblocks, align 4, !dbg !5654
  %12 = load i32, i32* %chipsel.addr, align 4, !dbg !5655
  %cmp = icmp eq i32 %12, -1, !dbg !5657
  br i1 %cmp, label %if.then8, label %if.else, !dbg !5658

if.then8:                                         ; preds = %if.then5
  %13 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5659
  %base9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0, !dbg !5661
  %call10 = call i32 @nanddev_ntargets(%struct.nand_device* %base9) #8, !dbg !5662
  store i32 %call10, i32* %nrchips, align 4, !dbg !5663
  br label %if.end11, !dbg !5664

if.else:                                          ; preds = %if.then5
  %14 = load i32, i32* %chipsel.addr, align 4, !dbg !5665
  %add = add i32 %14, 1, !dbg !5667
  store i32 %add, i32* %nrchips, align 4, !dbg !5668
  %15 = load i32, i32* %chipsel.addr, align 4, !dbg !5669
  store i32 %15, i32* %chip, align 4, !dbg !5670
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  br label %if.end17, !dbg !5671

if.else12:                                        ; preds = %if.end
  %16 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5672
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 2, !dbg !5674
  %17 = load i64, i64* %size, align 8, !dbg !5674
  %18 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5675
  %bbt_erase_shift13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 9, !dbg !5676
  %19 = load i32, i32* %bbt_erase_shift13, align 8, !dbg !5676
  %sh_prom14 = zext i32 %19 to i64, !dbg !5677
  %shr15 = lshr i64 %17, %sh_prom14, !dbg !5677
  %conv16 = trunc i64 %shr15 to i32, !dbg !5678
  store i32 %conv16, i32* %numblocks, align 4, !dbg !5679
  store i32 1, i32* %nrchips, align 4, !dbg !5680
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.end11
  br label %while.cond, !dbg !5681

while.cond:                                       ; preds = %if.end211, %if.then209, %if.then199, %if.end17
  %20 = load i32, i32* %chip, align 4, !dbg !5682
  %21 = load i32, i32* %nrchips, align 4, !dbg !5683
  %cmp18 = icmp slt i32 %20, %21, !dbg !5684
  br i1 %cmp18, label %while.body, label %while.end, !dbg !5681

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %block, metadata !5685, metadata !DIExpression()), !dbg !5687
  %22 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5688
  %23 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5689
  %24 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !5690
  %25 = load i32, i32* %chip, align 4, !dbg !5691
  %call20 = call i32 @get_bbt_block(%struct.nand_chip* %22, %struct.nand_bbt_descr* %23, %struct.nand_bbt_descr* %24, i32 %25) #8, !dbg !5692
  store i32 %call20, i32* %block, align 4, !dbg !5693
  %26 = load i32, i32* %block, align 4, !dbg !5694
  %cmp21 = icmp slt i32 %26, 0, !dbg !5696
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !5697

if.then23:                                        ; preds = %while.body
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !5698
  %27 = load i32, i32* %block, align 4, !dbg !5700
  store i32 %27, i32* %res, align 4, !dbg !5701
  br label %outerr, !dbg !5702

if.end25:                                         ; preds = %while.body
  %28 = load i32, i32* %block, align 4, !dbg !5703
  %29 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5704
  %bbt_erase_shift26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 9, !dbg !5705
  %30 = load i32, i32* %bbt_erase_shift26, align 8, !dbg !5705
  %31 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5706
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 17, !dbg !5707
  %32 = load i32, i32* %page_shift, align 8, !dbg !5707
  %sub = sub i32 %30, %32, !dbg !5708
  %shl = shl i32 %28, %sub, !dbg !5709
  store i32 %shl, i32* %page, align 4, !dbg !5710
  %33 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5711
  %options27 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %33, i32 0, i32 0, !dbg !5712
  %34 = load i32, i32* %options27, align 8, !dbg !5712
  %and28 = and i32 %34, 15, !dbg !5713
  store i32 %and28, i32* %bits, align 4, !dbg !5714
  %35 = load i8, i8* %rcode, align 1, !dbg !5715
  %conv29 = zext i8 %35 to i32, !dbg !5715
  %neg = xor i32 %conv29, -1, !dbg !5716
  %conv30 = trunc i32 %neg to i8, !dbg !5716
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 2, !dbg !5717
  store i8 %conv30, i8* %arrayidx, align 1, !dbg !5718
  %36 = load i32, i32* %bits, align 4, !dbg !5719
  switch i32 %36, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb34
    i32 4, label %sw.bb38
    i32 8, label %sw.bb42
  ], !dbg !5720

sw.bb:                                            ; preds = %if.end25
  store i32 3, i32* %sft, align 4, !dbg !5721
  store i32 7, i32* %sftmsk, align 4, !dbg !5723
  %arrayidx31 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 0, !dbg !5724
  store i8 0, i8* %arrayidx31, align 1, !dbg !5725
  %arrayidx32 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 1, !dbg !5726
  store i8 1, i8* %arrayidx32, align 1, !dbg !5727
  %arrayidx33 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 3, !dbg !5728
  store i8 1, i8* %arrayidx33, align 1, !dbg !5729
  br label %sw.epilog, !dbg !5730

sw.bb34:                                          ; preds = %if.end25
  store i32 2, i32* %sft, align 4, !dbg !5731
  store i32 6, i32* %sftmsk, align 4, !dbg !5732
  %arrayidx35 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 0, !dbg !5733
  store i8 0, i8* %arrayidx35, align 1, !dbg !5734
  %arrayidx36 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 1, !dbg !5735
  store i8 1, i8* %arrayidx36, align 1, !dbg !5736
  %arrayidx37 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 3, !dbg !5737
  store i8 3, i8* %arrayidx37, align 1, !dbg !5738
  br label %sw.epilog, !dbg !5739

sw.bb38:                                          ; preds = %if.end25
  store i32 1, i32* %sft, align 4, !dbg !5740
  store i32 4, i32* %sftmsk, align 4, !dbg !5741
  %arrayidx39 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 0, !dbg !5742
  store i8 0, i8* %arrayidx39, align 1, !dbg !5743
  %arrayidx40 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 1, !dbg !5744
  store i8 12, i8* %arrayidx40, align 1, !dbg !5745
  %arrayidx41 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 3, !dbg !5746
  store i8 15, i8* %arrayidx41, align 1, !dbg !5747
  br label %sw.epilog, !dbg !5748

sw.bb42:                                          ; preds = %if.end25
  store i32 0, i32* %sft, align 4, !dbg !5749
  store i32 0, i32* %sftmsk, align 4, !dbg !5750
  %arrayidx43 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 0, !dbg !5751
  store i8 0, i8* %arrayidx43, align 1, !dbg !5752
  %arrayidx44 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 1, !dbg !5753
  store i8 15, i8* %arrayidx44, align 1, !dbg !5754
  %arrayidx45 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 3, !dbg !5755
  store i8 -1, i8* %arrayidx45, align 1, !dbg !5756
  br label %sw.epilog, !dbg !5757

sw.default:                                       ; preds = %if.end25
  store i32 -22, i32* %retval, align 4, !dbg !5758
  br label %return, !dbg !5758

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb
  %37 = load i32, i32* %page, align 4, !dbg !5759
  %conv46 = sext i32 %37 to i64, !dbg !5760
  %38 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5761
  %page_shift47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 17, !dbg !5762
  %39 = load i32, i32* %page_shift47, align 8, !dbg !5762
  %sh_prom48 = zext i32 %39 to i64, !dbg !5763
  %shl49 = shl i64 %conv46, %sh_prom48, !dbg !5763
  store i64 %shl49, i64* %to, align 8, !dbg !5764
  %40 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5765
  %options50 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %40, i32 0, i32 0, !dbg !5767
  %41 = load i32, i32* %options50, align 8, !dbg !5767
  %and51 = and i32 %41, 16384, !dbg !5768
  %tobool52 = icmp ne i32 %and51, 0, !dbg !5768
  br i1 %tobool52, label %if.then53, label %if.else106, !dbg !5769

if.then53:                                        ; preds = %sw.epilog
  %42 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5770
  %bbt_erase_shift54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 9, !dbg !5772
  %43 = load i32, i32* %bbt_erase_shift54, align 8, !dbg !5772
  %sh_prom55 = zext i32 %43 to i64, !dbg !5773
  %shl56 = shl i64 1, %sh_prom55, !dbg !5773
  %sub57 = sub i64 %shl56, 1, !dbg !5774
  %neg58 = xor i64 %sub57, -1, !dbg !5775
  %44 = load i64, i64* %to, align 8, !dbg !5776
  %and59 = and i64 %44, %neg58, !dbg !5776
  store i64 %and59, i64* %to, align 8, !dbg !5776
  %45 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5777
  %bbt_erase_shift60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 9, !dbg !5778
  %46 = load i32, i32* %bbt_erase_shift60, align 8, !dbg !5778
  %shl61 = shl i32 1, %46, !dbg !5779
  %conv62 = sext i32 %shl61 to i64, !dbg !5780
  store i64 %conv62, i64* %len, align 8, !dbg !5781
  %47 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5782
  %48 = load i64, i64* %to, align 8, !dbg !5783
  %49 = load i64, i64* %len, align 8, !dbg !5784
  %50 = load i8*, i8** %buf.addr, align 8, !dbg !5785
  %call63 = call i32 @mtd_read(%struct.mtd_info* %47, i64 %48, i64 %49, i64* %retlen, i8* %50) #8, !dbg !5786
  store i32 %call63, i32* %res, align 4, !dbg !5787
  %51 = load i32, i32* %res, align 4, !dbg !5788
  %cmp64 = icmp slt i32 %51, 0, !dbg !5790
  br i1 %cmp64, label %if.then66, label %if.end73, !dbg !5791

if.then66:                                        ; preds = %if.then53
  %52 = load i64, i64* %retlen, align 8, !dbg !5792
  %53 = load i64, i64* %len, align 8, !dbg !5795
  %cmp67 = icmp ne i64 %52, %53, !dbg !5796
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !5797

if.then69:                                        ; preds = %if.then66
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !5798
  %54 = load i32, i32* %res, align 4, !dbg !5800
  store i32 %54, i32* %retval, align 4, !dbg !5801
  br label %return, !dbg !5801

if.end71:                                         ; preds = %if.then66
  %call72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !5802
  br label %if.end73, !dbg !5803

if.end73:                                         ; preds = %if.end71, %if.then53
  %55 = load i64, i64* %len, align 8, !dbg !5804
  %56 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5805
  %page_shift74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 17, !dbg !5806
  %57 = load i32, i32* %page_shift74, align 8, !dbg !5806
  %sh_prom75 = zext i32 %57 to i64, !dbg !5807
  %shr76 = lshr i64 %55, %sh_prom75, !dbg !5807
  %58 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5808
  %oobsize77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 6, !dbg !5809
  %59 = load i32, i32* %oobsize77, align 4, !dbg !5809
  %conv78 = zext i32 %59 to i64, !dbg !5808
  %mul = mul i64 %shr76, %conv78, !dbg !5810
  %ooblen79 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 3, !dbg !5811
  store i64 %mul, i64* %ooblen79, align 8, !dbg !5812
  %60 = load i8*, i8** %buf.addr, align 8, !dbg !5813
  %61 = load i64, i64* %len, align 8, !dbg !5814
  %arrayidx80 = getelementptr i8, i8* %60, i64 %61, !dbg !5813
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 7, !dbg !5815
  store i8* %arrayidx80, i8** %oobbuf, align 8, !dbg !5816
  %62 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5817
  %63 = load i64, i64* %to, align 8, !dbg !5818
  %64 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5819
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 4, !dbg !5820
  %65 = load i32, i32* %writesize, align 4, !dbg !5820
  %conv81 = zext i32 %65 to i64, !dbg !5819
  %add82 = add i64 %63, %conv81, !dbg !5821
  %call83 = call i32 @mtd_read_oob(%struct.mtd_info* %62, i64 %add82, %struct.mtd_oob_ops* %ops) #8, !dbg !5822
  store i32 %call83, i32* %res, align 4, !dbg !5823
  %66 = load i32, i32* %res, align 4, !dbg !5824
  %cmp84 = icmp slt i32 %66, 0, !dbg !5826
  br i1 %cmp84, label %if.then89, label %lor.lhs.false, !dbg !5827

lor.lhs.false:                                    ; preds = %if.end73
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 4, !dbg !5828
  %67 = load i64, i64* %oobretlen, align 8, !dbg !5828
  %ooblen86 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 3, !dbg !5829
  %68 = load i64, i64* %ooblen86, align 8, !dbg !5829
  %cmp87 = icmp ne i64 %67, %68, !dbg !5830
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5831

if.then89:                                        ; preds = %lor.lhs.false, %if.end73
  br label %outerr, !dbg !5832

if.end90:                                         ; preds = %lor.lhs.false
  %69 = load i32, i32* %page, align 4, !dbg !5833
  %70 = load i64, i64* %to, align 8, !dbg !5834
  %71 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5835
  %page_shift91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 17, !dbg !5836
  %72 = load i32, i32* %page_shift91, align 8, !dbg !5836
  %sh_prom92 = zext i32 %72 to i64, !dbg !5837
  %shr93 = ashr i64 %70, %sh_prom92, !dbg !5837
  %conv94 = trunc i64 %shr93 to i32, !dbg !5838
  %sub95 = sub i32 %69, %conv94, !dbg !5839
  store i32 %sub95, i32* %pageoffs, align 4, !dbg !5840
  %73 = load i32, i32* %pageoffs, align 4, !dbg !5841
  %74 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5842
  %page_shift96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 17, !dbg !5843
  %75 = load i32, i32* %page_shift96, align 8, !dbg !5843
  %shl97 = shl i32 %73, %75, !dbg !5844
  store i32 %shl97, i32* %offs, align 4, !dbg !5845
  %76 = load i8*, i8** %buf.addr, align 8, !dbg !5846
  %77 = load i32, i32* %offs, align 4, !dbg !5847
  %idxprom = sext i32 %77 to i64, !dbg !5846
  %arrayidx98 = getelementptr i8, i8* %76, i64 %idxprom, !dbg !5846
  %78 = load i32, i32* %numblocks, align 4, !dbg !5848
  %79 = load i32, i32* %sft, align 4, !dbg !5849
  %shr99 = ashr i32 %78, %79, !dbg !5850
  %conv100 = sext i32 %shr99 to i64, !dbg !5851
  call void @llvm.memset.p0i8.i64(i8* align 1 %arrayidx98, i8 -1, i64 %conv100, i1 false), !dbg !5852
  %80 = load i64, i64* %len, align 8, !dbg !5853
  %81 = load i32, i32* %pageoffs, align 4, !dbg !5854
  %82 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5855
  %oobsize101 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 6, !dbg !5856
  %83 = load i32, i32* %oobsize101, align 4, !dbg !5856
  %mul102 = mul i32 %81, %83, !dbg !5857
  %conv103 = zext i32 %mul102 to i64, !dbg !5858
  %add104 = add i64 %80, %conv103, !dbg !5859
  %conv105 = trunc i64 %add104 to i32, !dbg !5853
  store i32 %conv105, i32* %ooboffs, align 4, !dbg !5860
  br label %if.end160, !dbg !5861

if.else106:                                       ; preds = %sw.epilog
  %84 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5862
  %options107 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %84, i32 0, i32 0, !dbg !5864
  %85 = load i32, i32* %options107, align 8, !dbg !5864
  %and108 = and i32 %85, 262144, !dbg !5865
  %tobool109 = icmp ne i32 %and108, 0, !dbg !5865
  br i1 %tobool109, label %if.then110, label %if.else132, !dbg !5866

if.then110:                                       ; preds = %if.else106
  store i32 0, i32* %ooboffs, align 4, !dbg !5867
  %86 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5869
  %len111 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %86, i32 0, i32 5, !dbg !5870
  %87 = load i32, i32* %len111, align 4, !dbg !5870
  store i32 %87, i32* %offs, align 4, !dbg !5871
  %88 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5872
  %options112 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %88, i32 0, i32 0, !dbg !5874
  %89 = load i32, i32* %options112, align 8, !dbg !5874
  %and113 = and i32 %89, 256, !dbg !5875
  %tobool114 = icmp ne i32 %and113, 0, !dbg !5875
  br i1 %tobool114, label %if.then115, label %if.end116, !dbg !5876

if.then115:                                       ; preds = %if.then110
  %90 = load i32, i32* %offs, align 4, !dbg !5877
  %inc = add i32 %90, 1, !dbg !5877
  store i32 %inc, i32* %offs, align 4, !dbg !5877
  br label %if.end116, !dbg !5878

if.end116:                                        ; preds = %if.then115, %if.then110
  %91 = load i32, i32* %numblocks, align 4, !dbg !5879
  %92 = load i32, i32* %sft, align 4, !dbg !5880
  %shr117 = ashr i32 %91, %92, !dbg !5881
  %conv118 = sext i32 %shr117 to i64, !dbg !5882
  store i64 %conv118, i64* %len, align 8, !dbg !5883
  %93 = load i32, i32* %offs, align 4, !dbg !5884
  %conv119 = sext i32 %93 to i64, !dbg !5884
  %94 = load i64, i64* %len, align 8, !dbg !5885
  %add120 = add i64 %94, %conv119, !dbg !5885
  store i64 %add120, i64* %len, align 8, !dbg !5885
  %95 = load i64, i64* %len, align 8, !dbg !5886
  %96 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5886
  %writesize121 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %96, i32 0, i32 4, !dbg !5886
  %97 = load i32, i32* %writesize121, align 4, !dbg !5886
  %conv122 = zext i32 %97 to i64, !dbg !5886
  %sub123 = sub i64 %conv122, 1, !dbg !5886
  %add124 = add i64 %95, %sub123, !dbg !5886
  %98 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5886
  %writesize125 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %98, i32 0, i32 4, !dbg !5886
  %99 = load i32, i32* %writesize125, align 4, !dbg !5886
  %conv126 = zext i32 %99 to i64, !dbg !5886
  %sub127 = sub i64 %conv126, 1, !dbg !5886
  %neg128 = xor i64 %sub127, -1, !dbg !5886
  %and129 = and i64 %add124, %neg128, !dbg !5886
  store i64 %and129, i64* %len, align 8, !dbg !5887
  %100 = load i8*, i8** %buf.addr, align 8, !dbg !5888
  %101 = load i64, i64* %len, align 8, !dbg !5889
  call void @llvm.memset.p0i8.i64(i8* align 1 %100, i8 -1, i64 %101, i1 false), !dbg !5890
  %102 = load i8*, i8** %buf.addr, align 8, !dbg !5891
  %103 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5892
  %pattern = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %103, i32 0, i32 8, !dbg !5893
  %104 = load i8*, i8** %pattern, align 8, !dbg !5893
  %105 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5894
  %len130 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %105, i32 0, i32 5, !dbg !5895
  %106 = load i32, i32* %len130, align 4, !dbg !5895
  %conv131 = sext i32 %106 to i64, !dbg !5894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %102, i8* align 1 %104, i64 %conv131, i1 false), !dbg !5896
  br label %if.end159, !dbg !5897

if.else132:                                       ; preds = %if.else106
  %107 = load i32, i32* %numblocks, align 4, !dbg !5898
  %108 = load i32, i32* %sft, align 4, !dbg !5900
  %shr133 = ashr i32 %107, %108, !dbg !5901
  %conv134 = sext i32 %shr133 to i64, !dbg !5902
  store i64 %conv134, i64* %len, align 8, !dbg !5903
  %109 = load i64, i64* %len, align 8, !dbg !5904
  %110 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5904
  %writesize135 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %110, i32 0, i32 4, !dbg !5904
  %111 = load i32, i32* %writesize135, align 4, !dbg !5904
  %conv136 = zext i32 %111 to i64, !dbg !5904
  %sub137 = sub i64 %conv136, 1, !dbg !5904
  %add138 = add i64 %109, %sub137, !dbg !5904
  %112 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5904
  %writesize139 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %112, i32 0, i32 4, !dbg !5904
  %113 = load i32, i32* %writesize139, align 4, !dbg !5904
  %conv140 = zext i32 %113 to i64, !dbg !5904
  %sub141 = sub i64 %conv140, 1, !dbg !5904
  %neg142 = xor i64 %sub141, -1, !dbg !5904
  %and143 = and i64 %add138, %neg142, !dbg !5904
  store i64 %and143, i64* %len, align 8, !dbg !5905
  %114 = load i8*, i8** %buf.addr, align 8, !dbg !5906
  %115 = load i64, i64* %len, align 8, !dbg !5907
  %116 = load i64, i64* %len, align 8, !dbg !5908
  %117 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5909
  %page_shift144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %117, i32 0, i32 17, !dbg !5910
  %118 = load i32, i32* %page_shift144, align 8, !dbg !5910
  %sh_prom145 = zext i32 %118 to i64, !dbg !5911
  %shr146 = lshr i64 %116, %sh_prom145, !dbg !5911
  %119 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !5912
  %oobsize147 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %119, i32 0, i32 6, !dbg !5913
  %120 = load i32, i32* %oobsize147, align 4, !dbg !5913
  %conv148 = zext i32 %120 to i64, !dbg !5912
  %mul149 = mul i64 %shr146, %conv148, !dbg !5914
  %add150 = add i64 %115, %mul149, !dbg !5915
  call void @llvm.memset.p0i8.i64(i8* align 1 %114, i8 -1, i64 %add150, i1 false), !dbg !5916
  store i32 0, i32* %offs, align 4, !dbg !5917
  %121 = load i64, i64* %len, align 8, !dbg !5918
  %conv151 = trunc i64 %121 to i32, !dbg !5918
  store i32 %conv151, i32* %ooboffs, align 4, !dbg !5919
  %122 = load i8*, i8** %buf.addr, align 8, !dbg !5920
  %123 = load i32, i32* %ooboffs, align 4, !dbg !5921
  %124 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5922
  %offs152 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %124, i32 0, i32 2, !dbg !5923
  %125 = load i32, i32* %offs152, align 4, !dbg !5923
  %add153 = add i32 %123, %125, !dbg !5924
  %idxprom154 = sext i32 %add153 to i64, !dbg !5920
  %arrayidx155 = getelementptr i8, i8* %122, i64 %idxprom154, !dbg !5920
  %126 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5925
  %pattern156 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %126, i32 0, i32 8, !dbg !5926
  %127 = load i8*, i8** %pattern156, align 8, !dbg !5926
  %128 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5927
  %len157 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %128, i32 0, i32 5, !dbg !5928
  %129 = load i32, i32* %len157, align 4, !dbg !5928
  %conv158 = sext i32 %129 to i64, !dbg !5927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx155, i8* align 1 %127, i64 %conv158, i1 false), !dbg !5929
  br label %if.end159

if.end159:                                        ; preds = %if.else132, %if.end116
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.end90
  %130 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5930
  %options161 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %130, i32 0, i32 0, !dbg !5932
  %131 = load i32, i32* %options161, align 8, !dbg !5932
  %and162 = and i32 %131, 256, !dbg !5933
  %tobool163 = icmp ne i32 %and162, 0, !dbg !5933
  br i1 %tobool163, label %if.then164, label %if.end170, !dbg !5934

if.then164:                                       ; preds = %if.end160
  %132 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5935
  %version = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %132, i32 0, i32 4, !dbg !5936
  %133 = load i32, i32* %chip, align 4, !dbg !5937
  %idxprom165 = sext i32 %133 to i64, !dbg !5935
  %arrayidx166 = getelementptr [8 x i8], [8 x i8]* %version, i64 0, i64 %idxprom165, !dbg !5935
  %134 = load i8, i8* %arrayidx166, align 1, !dbg !5935
  %135 = load i8*, i8** %buf.addr, align 8, !dbg !5938
  %136 = load i32, i32* %ooboffs, align 4, !dbg !5939
  %137 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !5940
  %veroffs = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %137, i32 0, i32 3, !dbg !5941
  %138 = load i32, i32* %veroffs, align 8, !dbg !5941
  %add167 = add i32 %136, %138, !dbg !5942
  %idxprom168 = sext i32 %add167 to i64, !dbg !5938
  %arrayidx169 = getelementptr i8, i8* %135, i64 %idxprom168, !dbg !5938
  store i8 %134, i8* %arrayidx169, align 1, !dbg !5943
  br label %if.end170, !dbg !5938

if.end170:                                        ; preds = %if.then164, %if.end160
  store i32 0, i32* %i, align 4, !dbg !5944
  br label %for.cond, !dbg !5946

for.cond:                                         ; preds = %for.inc, %if.end170
  %139 = load i32, i32* %i, align 4, !dbg !5947
  %140 = load i32, i32* %numblocks, align 4, !dbg !5949
  %cmp171 = icmp slt i32 %139, %140, !dbg !5950
  br i1 %cmp171, label %for.body, label %for.end, !dbg !5951

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %dat, metadata !5952, metadata !DIExpression()), !dbg !5954
  call void @llvm.dbg.declare(metadata i32* %sftcnt, metadata !5955, metadata !DIExpression()), !dbg !5956
  %141 = load i32, i32* %i, align 4, !dbg !5957
  %142 = load i32, i32* %sft, align 4, !dbg !5958
  %sub173 = sub i32 3, %142, !dbg !5959
  %shl174 = shl i32 %141, %sub173, !dbg !5960
  %143 = load i32, i32* %sftmsk, align 4, !dbg !5961
  %and175 = and i32 %shl174, %143, !dbg !5962
  store i32 %and175, i32* %sftcnt, align 4, !dbg !5956
  %144 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5963
  %145 = load i32, i32* %chip, align 4, !dbg !5964
  %146 = load i32, i32* %numblocks, align 4, !dbg !5965
  %mul176 = mul i32 %145, %146, !dbg !5966
  %147 = load i32, i32* %i, align 4, !dbg !5967
  %add177 = add i32 %mul176, %147, !dbg !5968
  %call178 = call zeroext i8 @bbt_get_entry(%struct.nand_chip* %144, i32 %add177) #8, !dbg !5969
  store i8 %call178, i8* %dat, align 1, !dbg !5970
  %148 = load i8, i8* %dat, align 1, !dbg !5971
  %idxprom179 = zext i8 %148 to i64, !dbg !5972
  %arrayidx180 = getelementptr [4 x i8], [4 x i8]* %msk, i64 0, i64 %idxprom179, !dbg !5972
  %149 = load i8, i8* %arrayidx180, align 1, !dbg !5972
  %conv181 = zext i8 %149 to i32, !dbg !5972
  %150 = load i32, i32* %sftcnt, align 4, !dbg !5973
  %shl182 = shl i32 %conv181, %150, !dbg !5974
  %neg183 = xor i32 %shl182, -1, !dbg !5975
  %151 = load i8*, i8** %buf.addr, align 8, !dbg !5976
  %152 = load i32, i32* %offs, align 4, !dbg !5977
  %153 = load i32, i32* %i, align 4, !dbg !5978
  %154 = load i32, i32* %sft, align 4, !dbg !5979
  %shr184 = ashr i32 %153, %154, !dbg !5980
  %add185 = add i32 %152, %shr184, !dbg !5981
  %idxprom186 = sext i32 %add185 to i64, !dbg !5976
  %arrayidx187 = getelementptr i8, i8* %151, i64 %idxprom186, !dbg !5976
  %155 = load i8, i8* %arrayidx187, align 1, !dbg !5982
  %conv188 = zext i8 %155 to i32, !dbg !5982
  %and189 = and i32 %conv188, %neg183, !dbg !5982
  %conv190 = trunc i32 %and189 to i8, !dbg !5982
  store i8 %conv190, i8* %arrayidx187, align 1, !dbg !5982
  br label %for.inc, !dbg !5983

for.inc:                                          ; preds = %for.body
  %156 = load i32, i32* %i, align 4, !dbg !5984
  %inc191 = add i32 %156, 1, !dbg !5984
  store i32 %inc191, i32* %i, align 4, !dbg !5984
  br label %for.cond, !dbg !5985, !llvm.loop !5986

for.end:                                          ; preds = %for.cond
  %157 = bitcast %struct.erase_info* %einfo to i8*, !dbg !5988
  call void @llvm.memset.p0i8.i64(i8* align 8 %157, i8 0, i64 24, i1 false), !dbg !5988
  %158 = load i64, i64* %to, align 8, !dbg !5989
  %addr = getelementptr inbounds %struct.erase_info, %struct.erase_info* %einfo, i32 0, i32 0, !dbg !5990
  store i64 %158, i64* %addr, align 8, !dbg !5991
  %159 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5992
  %bbt_erase_shift192 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %159, i32 0, i32 9, !dbg !5993
  %160 = load i32, i32* %bbt_erase_shift192, align 8, !dbg !5993
  %shl193 = shl i32 1, %160, !dbg !5994
  %conv194 = sext i32 %shl193 to i64, !dbg !5995
  %len195 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %einfo, i32 0, i32 1, !dbg !5996
  store i64 %conv194, i64* %len195, align 8, !dbg !5997
  %161 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !5998
  %call196 = call i32 @nand_erase_nand(%struct.nand_chip* %161, %struct.erase_info* %einfo, i32 1) #8, !dbg !5999
  store i32 %call196, i32* %res, align 4, !dbg !6000
  %162 = load i32, i32* %res, align 4, !dbg !6001
  %cmp197 = icmp slt i32 %162, 0, !dbg !6003
  br i1 %cmp197, label %if.then199, label %if.end201, !dbg !6004

if.then199:                                       ; preds = %for.end
  %163 = load i32, i32* %res, align 4, !dbg !6005
  %call200 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %163) #9, !dbg !6005
  %164 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6007
  %165 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6008
  %166 = load i32, i32* %chip, align 4, !dbg !6009
  %167 = load i32, i32* %block, align 4, !dbg !6010
  call void @mark_bbt_block_bad(%struct.nand_chip* %164, %struct.nand_bbt_descr* %165, i32 %166, i32 %167) #8, !dbg !6011
  br label %while.cond, !dbg !6012, !llvm.loop !6013

if.end201:                                        ; preds = %for.end
  %168 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6015
  %169 = load i64, i64* %to, align 8, !dbg !6016
  %170 = load i64, i64* %len, align 8, !dbg !6017
  %171 = load i8*, i8** %buf.addr, align 8, !dbg !6018
  %172 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6019
  %options202 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %172, i32 0, i32 0, !dbg !6020
  %173 = load i32, i32* %options202, align 8, !dbg !6020
  %and203 = and i32 %173, 262144, !dbg !6021
  %tobool204 = icmp ne i32 %and203, 0, !dbg !6021
  br i1 %tobool204, label %cond.true, label %cond.false, !dbg !6019

cond.true:                                        ; preds = %if.end201
  br label %cond.end, !dbg !6019

cond.false:                                       ; preds = %if.end201
  %174 = load i8*, i8** %buf.addr, align 8, !dbg !6022
  %175 = load i64, i64* %len, align 8, !dbg !6023
  %arrayidx205 = getelementptr i8, i8* %174, i64 %175, !dbg !6022
  br label %cond.end, !dbg !6019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %arrayidx205, %cond.false ], !dbg !6019
  %call206 = call i32 @scan_write_bbt(%struct.nand_chip* %168, i64 %169, i64 %170, i8* %171, i8* %cond) #8, !dbg !6024
  store i32 %call206, i32* %res, align 4, !dbg !6025
  %176 = load i32, i32* %res, align 4, !dbg !6026
  %cmp207 = icmp slt i32 %176, 0, !dbg !6028
  br i1 %cmp207, label %if.then209, label %if.end211, !dbg !6029

if.then209:                                       ; preds = %cond.end
  %177 = load i32, i32* %res, align 4, !dbg !6030
  %call210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 %177) #9, !dbg !6030
  %178 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6032
  %179 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6033
  %180 = load i32, i32* %chip, align 4, !dbg !6034
  %181 = load i32, i32* %block, align 4, !dbg !6035
  call void @mark_bbt_block_bad(%struct.nand_chip* %178, %struct.nand_bbt_descr* %179, i32 %180, i32 %181) #8, !dbg !6036
  br label %while.cond, !dbg !6037, !llvm.loop !6013

if.end211:                                        ; preds = %cond.end
  %182 = load i64, i64* %to, align 8, !dbg !6038
  %183 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6038
  %version212 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %183, i32 0, i32 4, !dbg !6038
  %184 = load i32, i32* %chip, align 4, !dbg !6038
  %idxprom213 = sext i32 %184 to i64, !dbg !6038
  %arrayidx214 = getelementptr [8 x i8], [8 x i8]* %version212, i64 0, i64 %idxprom213, !dbg !6038
  %185 = load i8, i8* %arrayidx214, align 1, !dbg !6038
  %conv215 = zext i8 %185 to i32, !dbg !6038
  %call216 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i64 %182, i32 %conv215) #9, !dbg !6038
  %186 = load i32, i32* %page, align 4, !dbg !6039
  %187 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6040
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %187, i32 0, i32 1, !dbg !6041
  %188 = load i32, i32* %chip, align 4, !dbg !6042
  %inc217 = add i32 %188, 1, !dbg !6042
  store i32 %inc217, i32* %chip, align 4, !dbg !6042
  %idxprom218 = sext i32 %188 to i64, !dbg !6040
  %arrayidx219 = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom218, !dbg !6040
  store i32 %186, i32* %arrayidx219, align 4, !dbg !6043
  br label %while.cond, !dbg !5681, !llvm.loop !6013

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6044
  br label %return, !dbg !6044

outerr:                                           ; preds = %if.then89, %if.then23
  call void @llvm.dbg.label(metadata !6045), !dbg !6046
  %189 = load i32, i32* %res, align 4, !dbg !6047
  %call220 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0), i32 %189) #9, !dbg !6047
  %190 = load i32, i32* %res, align 4, !dbg !6048
  store i32 %190, i32* %retval, align 4, !dbg !6049
  br label %return, !dbg !6049

return:                                           ; preds = %outerr, %while.end, %if.then69, %sw.default
  %191 = load i32, i32* %retval, align 4, !dbg !6050
  ret i32 %191, !dbg !6050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_bbt(%struct.nand_chip* %this, i8* %buf, i32 %page, i32 %num, %struct.nand_bbt_descr* %td, i32 %offs) #0 !dbg !6051 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %page.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %offs.addr = alloca i32, align 4
  %mtd = alloca %struct.mtd_info*, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %act = alloca i32, align 4
  %retlen = alloca i64, align 8
  %len = alloca i64, align 8
  %totlen = alloca i64, align 8
  %from = alloca i64, align 8
  %bits = alloca i32, align 4
  %msk = alloca i8, align 1
  %marker_len = alloca i32, align 4
  %reserved_block_code = alloca i32, align 4
  %__UNIQUE_ID___x172 = alloca i64, align 8
  %__UNIQUE_ID___y173 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %dat = alloca i8, align 1
  %tmp43 = alloca i8, align 1
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  store i32 %page, i32* %page.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  store i32 %offs, i32* %offs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offs.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !6066, metadata !DIExpression()), !dbg !6067
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6068
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !6069
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !6067
  call void @llvm.dbg.declare(metadata i32* %res, metadata !6070, metadata !DIExpression()), !dbg !6071
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6072, metadata !DIExpression()), !dbg !6073
  store i32 0, i32* %ret, align 4, !dbg !6073
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6074, metadata !DIExpression()), !dbg !6075
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6076, metadata !DIExpression()), !dbg !6077
  call void @llvm.dbg.declare(metadata i32* %act, metadata !6078, metadata !DIExpression()), !dbg !6079
  store i32 0, i32* %act, align 4, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %retlen, metadata !6080, metadata !DIExpression()), !dbg !6081
  call void @llvm.dbg.declare(metadata i64* %len, metadata !6082, metadata !DIExpression()), !dbg !6083
  call void @llvm.dbg.declare(metadata i64* %totlen, metadata !6084, metadata !DIExpression()), !dbg !6085
  call void @llvm.dbg.declare(metadata i64* %from, metadata !6086, metadata !DIExpression()), !dbg !6087
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !6088, metadata !DIExpression()), !dbg !6089
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6090
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 0, !dbg !6091
  %2 = load i32, i32* %options, align 8, !dbg !6091
  %and = and i32 %2, 15, !dbg !6092
  store i32 %and, i32* %bits, align 4, !dbg !6089
  call void @llvm.dbg.declare(metadata i8* %msk, metadata !6093, metadata !DIExpression()), !dbg !6094
  %3 = load i32, i32* %bits, align 4, !dbg !6095
  %shl = shl i32 1, %3, !dbg !6096
  %sub = sub i32 %shl, 1, !dbg !6097
  %conv = trunc i32 %sub to i8, !dbg !6098
  store i8 %conv, i8* %msk, align 1, !dbg !6094
  call void @llvm.dbg.declare(metadata i32* %marker_len, metadata !6099, metadata !DIExpression()), !dbg !6100
  call void @llvm.dbg.declare(metadata i32* %reserved_block_code, metadata !6101, metadata !DIExpression()), !dbg !6102
  %4 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6103
  %reserved_block_code1 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %4, i32 0, i32 7, !dbg !6104
  %5 = load i32, i32* %reserved_block_code1, align 4, !dbg !6104
  store i32 %5, i32* %reserved_block_code, align 4, !dbg !6102
  %6 = load i32, i32* %num.addr, align 4, !dbg !6105
  %7 = load i32, i32* %bits, align 4, !dbg !6106
  %mul = mul i32 %6, %7, !dbg !6107
  %shr = ashr i32 %mul, 3, !dbg !6108
  %conv2 = sext i32 %shr to i64, !dbg !6109
  store i64 %conv2, i64* %totlen, align 8, !dbg !6110
  %8 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6111
  %call3 = call i32 @add_marker_len(%struct.nand_bbt_descr* %8) #8, !dbg !6112
  store i32 %call3, i32* %marker_len, align 4, !dbg !6113
  %9 = load i32, i32* %page.addr, align 4, !dbg !6114
  %conv4 = sext i32 %9 to i64, !dbg !6115
  %10 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6116
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 17, !dbg !6117
  %11 = load i32, i32* %page_shift, align 8, !dbg !6117
  %sh_prom = zext i32 %11 to i64, !dbg !6118
  %shl5 = shl i64 %conv4, %sh_prom, !dbg !6118
  store i64 %shl5, i64* %from, align 8, !dbg !6119
  br label %while.cond, !dbg !6120

while.cond:                                       ; preds = %for.end88, %entry
  %12 = load i64, i64* %totlen, align 8, !dbg !6121
  %tobool = icmp ne i64 %12, 0, !dbg !6120
  br i1 %tobool, label %while.body, label %while.end, !dbg !6120

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x172, metadata !6122, metadata !DIExpression()), !dbg !6125
  %13 = load i64, i64* %totlen, align 8, !dbg !6125
  store i64 %13, i64* %__UNIQUE_ID___x172, align 8, !dbg !6125
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y173, metadata !6126, metadata !DIExpression()), !dbg !6125
  %14 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6125
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 9, !dbg !6125
  %15 = load i32, i32* %bbt_erase_shift, align 8, !dbg !6125
  %shl6 = shl i32 1, %15, !dbg !6125
  %conv7 = sext i32 %shl6 to i64, !dbg !6125
  store i64 %conv7, i64* %__UNIQUE_ID___y173, align 8, !dbg !6125
  %16 = load i64, i64* %__UNIQUE_ID___x172, align 8, !dbg !6125
  %17 = load i64, i64* %__UNIQUE_ID___y173, align 8, !dbg !6125
  %cmp = icmp ult i64 %16, %17, !dbg !6125
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6125

cond.true:                                        ; preds = %while.body
  %18 = load i64, i64* %__UNIQUE_ID___x172, align 8, !dbg !6125
  br label %cond.end, !dbg !6125

cond.false:                                       ; preds = %while.body
  %19 = load i64, i64* %__UNIQUE_ID___y173, align 8, !dbg !6125
  br label %cond.end, !dbg !6125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !6125
  store i64 %cond, i64* %tmp, align 8, !dbg !6125
  %20 = load i64, i64* %tmp, align 8, !dbg !6125
  store i64 %20, i64* %len, align 8, !dbg !6127
  %21 = load i32, i32* %marker_len, align 4, !dbg !6128
  %tobool9 = icmp ne i32 %21, 0, !dbg !6128
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6130

if.then:                                          ; preds = %cond.end
  %22 = load i32, i32* %marker_len, align 4, !dbg !6131
  %conv10 = zext i32 %22 to i64, !dbg !6131
  %23 = load i64, i64* %len, align 8, !dbg !6133
  %sub11 = sub i64 %23, %conv10, !dbg !6133
  store i64 %sub11, i64* %len, align 8, !dbg !6133
  %24 = load i32, i32* %marker_len, align 4, !dbg !6134
  %conv12 = zext i32 %24 to i64, !dbg !6134
  %25 = load i64, i64* %from, align 8, !dbg !6135
  %add = add i64 %25, %conv12, !dbg !6135
  store i64 %add, i64* %from, align 8, !dbg !6135
  store i32 0, i32* %marker_len, align 4, !dbg !6136
  br label %if.end, !dbg !6137

if.end:                                           ; preds = %if.then, %cond.end
  %26 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6138
  %27 = load i64, i64* %from, align 8, !dbg !6139
  %28 = load i64, i64* %len, align 8, !dbg !6140
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !6141
  %call13 = call i32 @mtd_read(%struct.mtd_info* %26, i64 %27, i64 %28, i64* %retlen, i8* %29) #8, !dbg !6142
  store i32 %call13, i32* %res, align 4, !dbg !6143
  %30 = load i32, i32* %res, align 4, !dbg !6144
  %cmp14 = icmp slt i32 %30, 0, !dbg !6146
  br i1 %cmp14, label %if.then16, label %if.end35, !dbg !6147

if.then16:                                        ; preds = %if.end
  %31 = load i32, i32* %res, align 4, !dbg !6148
  %call17 = call i32 @mtd_is_eccerr(i32 %31) #8, !dbg !6151
  %tobool18 = icmp ne i32 %call17, 0, !dbg !6151
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !6152

if.then19:                                        ; preds = %if.then16
  %32 = load i64, i64* %from, align 8, !dbg !6153
  %33 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6153
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 4, !dbg !6153
  %34 = load i32, i32* %writesize, align 4, !dbg !6153
  %neg = xor i32 %34, -1, !dbg !6153
  %conv20 = zext i32 %neg to i64, !dbg !6153
  %and21 = and i64 %32, %conv20, !dbg !6153
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %and21) #9, !dbg !6153
  %35 = load i32, i32* %res, align 4, !dbg !6155
  store i32 %35, i32* %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.else:                                          ; preds = %if.then16
  %36 = load i32, i32* %res, align 4, !dbg !6157
  %call23 = call i32 @mtd_is_bitflip(i32 %36) #8, !dbg !6159
  %tobool24 = icmp ne i32 %call23, 0, !dbg !6159
  br i1 %tobool24, label %if.then25, label %if.else31, !dbg !6160

if.then25:                                        ; preds = %if.else
  %37 = load i64, i64* %from, align 8, !dbg !6161
  %38 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6161
  %writesize26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 4, !dbg !6161
  %39 = load i32, i32* %writesize26, align 4, !dbg !6161
  %neg27 = xor i32 %39, -1, !dbg !6161
  %conv28 = zext i32 %neg27 to i64, !dbg !6161
  %and29 = and i64 %37, %conv28, !dbg !6161
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 %and29) #9, !dbg !6161
  %40 = load i32, i32* %res, align 4, !dbg !6163
  store i32 %40, i32* %ret, align 4, !dbg !6164
  br label %if.end33, !dbg !6165

if.else31:                                        ; preds = %if.else
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !6166
  %41 = load i32, i32* %res, align 4, !dbg !6168
  store i32 %41, i32* %retval, align 4, !dbg !6169
  br label %return, !dbg !6169

if.end33:                                         ; preds = %if.then25
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  br label %if.end35, !dbg !6170

if.end35:                                         ; preds = %if.end34, %if.end
  store i32 0, i32* %i, align 4, !dbg !6171
  br label %for.cond, !dbg !6173

for.cond:                                         ; preds = %for.inc86, %if.end35
  %42 = load i32, i32* %i, align 4, !dbg !6174
  %conv36 = sext i32 %42 to i64, !dbg !6174
  %43 = load i64, i64* %len, align 8, !dbg !6176
  %cmp37 = icmp ult i64 %conv36, %43, !dbg !6177
  br i1 %cmp37, label %for.body, label %for.end88, !dbg !6178

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %dat, metadata !6179, metadata !DIExpression()), !dbg !6181
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !6182
  %45 = load i32, i32* %i, align 4, !dbg !6183
  %idxprom = sext i32 %45 to i64, !dbg !6182
  %arrayidx = getelementptr i8, i8* %44, i64 %idxprom, !dbg !6182
  %46 = load i8, i8* %arrayidx, align 1, !dbg !6182
  store i8 %46, i8* %dat, align 1, !dbg !6181
  store i32 0, i32* %j, align 4, !dbg !6184
  br label %for.cond39, !dbg !6186

for.cond39:                                       ; preds = %for.inc, %for.body
  %47 = load i32, i32* %j, align 4, !dbg !6187
  %cmp40 = icmp slt i32 %47, 8, !dbg !6189
  br i1 %cmp40, label %for.body42, label %for.end, !dbg !6190

for.body42:                                       ; preds = %for.cond39
  call void @llvm.dbg.declare(metadata i8* %tmp43, metadata !6191, metadata !DIExpression()), !dbg !6193
  %48 = load i8, i8* %dat, align 1, !dbg !6194
  %conv44 = zext i8 %48 to i32, !dbg !6194
  %49 = load i32, i32* %j, align 4, !dbg !6195
  %shr45 = ashr i32 %conv44, %49, !dbg !6196
  %50 = load i8, i8* %msk, align 1, !dbg !6197
  %conv46 = zext i8 %50 to i32, !dbg !6197
  %and47 = and i32 %shr45, %conv46, !dbg !6198
  %conv48 = trunc i32 %and47 to i8, !dbg !6199
  store i8 %conv48, i8* %tmp43, align 1, !dbg !6193
  %51 = load i8, i8* %tmp43, align 1, !dbg !6200
  %conv49 = zext i8 %51 to i32, !dbg !6200
  %52 = load i8, i8* %msk, align 1, !dbg !6202
  %conv50 = zext i8 %52 to i32, !dbg !6202
  %cmp51 = icmp eq i32 %conv49, %conv50, !dbg !6203
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !6204

if.then53:                                        ; preds = %for.body42
  br label %for.inc, !dbg !6205

if.end54:                                         ; preds = %for.body42
  %53 = load i32, i32* %reserved_block_code, align 4, !dbg !6206
  %tobool55 = icmp ne i32 %53, 0, !dbg !6206
  br i1 %tobool55, label %land.lhs.true, label %if.end67, !dbg !6208

land.lhs.true:                                    ; preds = %if.end54
  %54 = load i8, i8* %tmp43, align 1, !dbg !6209
  %conv56 = zext i8 %54 to i32, !dbg !6209
  %55 = load i32, i32* %reserved_block_code, align 4, !dbg !6210
  %cmp57 = icmp eq i32 %conv56, %55, !dbg !6211
  br i1 %cmp57, label %if.then59, label %if.end67, !dbg !6212

if.then59:                                        ; preds = %land.lhs.true
  %56 = load i32, i32* %offs.addr, align 4, !dbg !6213
  %57 = load i32, i32* %act, align 4, !dbg !6213
  %add60 = add i32 %56, %57, !dbg !6213
  %conv61 = sext i32 %add60 to i64, !dbg !6213
  %58 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6213
  %bbt_erase_shift62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 9, !dbg !6213
  %59 = load i32, i32* %bbt_erase_shift62, align 8, !dbg !6213
  %sh_prom63 = zext i32 %59 to i64, !dbg !6213
  %shl64 = shl i64 %conv61, %sh_prom63, !dbg !6213
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i64 %shl64) #9, !dbg !6213
  %60 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6215
  %61 = load i32, i32* %offs.addr, align 4, !dbg !6216
  %62 = load i32, i32* %act, align 4, !dbg !6217
  %add66 = add i32 %61, %62, !dbg !6218
  call void @bbt_mark_entry(%struct.nand_chip* %60, i32 %add66, i8 zeroext 2) #8, !dbg !6219
  %63 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6220
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 51, !dbg !6221
  %bbtblocks = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 3, !dbg !6222
  %64 = load i32, i32* %bbtblocks, align 4, !dbg !6223
  %inc = add i32 %64, 1, !dbg !6223
  store i32 %inc, i32* %bbtblocks, align 4, !dbg !6223
  br label %for.inc, !dbg !6224

if.end67:                                         ; preds = %land.lhs.true, %if.end54
  %65 = load i32, i32* %offs.addr, align 4, !dbg !6225
  %66 = load i32, i32* %act, align 4, !dbg !6225
  %add68 = add i32 %65, %66, !dbg !6225
  %conv69 = sext i32 %add68 to i64, !dbg !6225
  %67 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6225
  %bbt_erase_shift70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 9, !dbg !6225
  %68 = load i32, i32* %bbt_erase_shift70, align 8, !dbg !6225
  %sh_prom71 = zext i32 %68 to i64, !dbg !6225
  %shl72 = shl i64 %conv69, %sh_prom71, !dbg !6225
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i64 %shl72) #9, !dbg !6225
  %69 = load i8, i8* %tmp43, align 1, !dbg !6226
  %conv74 = zext i8 %69 to i32, !dbg !6226
  %cmp75 = icmp eq i32 %conv74, 0, !dbg !6228
  br i1 %cmp75, label %if.then77, label %if.else79, !dbg !6229

if.then77:                                        ; preds = %if.end67
  %70 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6230
  %71 = load i32, i32* %offs.addr, align 4, !dbg !6231
  %72 = load i32, i32* %act, align 4, !dbg !6232
  %add78 = add i32 %71, %72, !dbg !6233
  call void @bbt_mark_entry(%struct.nand_chip* %70, i32 %add78, i8 zeroext 3) #8, !dbg !6234
  br label %if.end81, !dbg !6234

if.else79:                                        ; preds = %if.end67
  %73 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6235
  %74 = load i32, i32* %offs.addr, align 4, !dbg !6236
  %75 = load i32, i32* %act, align 4, !dbg !6237
  %add80 = add i32 %74, %75, !dbg !6238
  call void @bbt_mark_entry(%struct.nand_chip* %73, i32 %add80, i8 zeroext 1) #8, !dbg !6239
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %76 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6240
  %ecc_stats82 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 51, !dbg !6241
  %badblocks = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats82, i32 0, i32 2, !dbg !6242
  %77 = load i32, i32* %badblocks, align 8, !dbg !6243
  %inc83 = add i32 %77, 1, !dbg !6243
  store i32 %inc83, i32* %badblocks, align 8, !dbg !6243
  br label %for.inc, !dbg !6244

for.inc:                                          ; preds = %if.end81, %if.then59, %if.then53
  %78 = load i32, i32* %bits, align 4, !dbg !6245
  %79 = load i32, i32* %j, align 4, !dbg !6246
  %add84 = add i32 %79, %78, !dbg !6246
  store i32 %add84, i32* %j, align 4, !dbg !6246
  %80 = load i32, i32* %act, align 4, !dbg !6247
  %inc85 = add i32 %80, 1, !dbg !6247
  store i32 %inc85, i32* %act, align 4, !dbg !6247
  br label %for.cond39, !dbg !6248, !llvm.loop !6249

for.end:                                          ; preds = %for.cond39
  br label %for.inc86, !dbg !6251

for.inc86:                                        ; preds = %for.end
  %81 = load i32, i32* %i, align 4, !dbg !6252
  %inc87 = add i32 %81, 1, !dbg !6252
  store i32 %inc87, i32* %i, align 4, !dbg !6252
  br label %for.cond, !dbg !6253, !llvm.loop !6254

for.end88:                                        ; preds = %for.cond
  %82 = load i64, i64* %len, align 8, !dbg !6256
  %83 = load i64, i64* %totlen, align 8, !dbg !6257
  %sub89 = sub i64 %83, %82, !dbg !6257
  store i64 %sub89, i64* %totlen, align 8, !dbg !6257
  %84 = load i64, i64* %len, align 8, !dbg !6258
  %85 = load i64, i64* %from, align 8, !dbg !6259
  %add90 = add i64 %85, %84, !dbg !6259
  store i64 %add90, i64* %from, align 8, !dbg !6259
  br label %while.cond, !dbg !6120, !llvm.loop !6260

while.end:                                        ; preds = %while.cond
  %86 = load i32, i32* %ret, align 4, !dbg !6262
  store i32 %86, i32* %retval, align 4, !dbg !6263
  br label %return, !dbg !6263

return:                                           ; preds = %while.end, %if.else31, %if.then19
  %87 = load i32, i32* %retval, align 4, !dbg !6264
  ret i32 %87, !dbg !6264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_marker_len(%struct.nand_bbt_descr* %td) #0 !dbg !6265 {
entry:
  %retval = alloca i32, align 4
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %len = alloca i32, align 4
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  call void @llvm.dbg.declare(metadata i32* %len, metadata !6270, metadata !DIExpression()), !dbg !6271
  %0 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6272
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %0, i32 0, i32 0, !dbg !6274
  %1 = load i32, i32* %options, align 8, !dbg !6274
  %and = and i32 %1, 262144, !dbg !6275
  %tobool = icmp ne i32 %and, 0, !dbg !6275
  br i1 %tobool, label %if.end, label %if.then, !dbg !6276

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6277
  br label %return, !dbg !6277

if.end:                                           ; preds = %entry
  %2 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6278
  %len1 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %2, i32 0, i32 5, !dbg !6279
  %3 = load i32, i32* %len1, align 4, !dbg !6279
  store i32 %3, i32* %len, align 4, !dbg !6280
  %4 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6281
  %options2 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %4, i32 0, i32 0, !dbg !6283
  %5 = load i32, i32* %options2, align 8, !dbg !6283
  %and3 = and i32 %5, 256, !dbg !6284
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6284
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6285

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %len, align 4, !dbg !6286
  %inc = add i32 %6, 1, !dbg !6286
  store i32 %inc, i32* %len, align 4, !dbg !6286
  br label %if.end6, !dbg !6287

if.end6:                                          ; preds = %if.then5, %if.end
  %7 = load i32, i32* %len, align 4, !dbg !6288
  store i32 %7, i32* %retval, align 4, !dbg !6289
  br label %return, !dbg !6289

return:                                           ; preds = %if.end6, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !6290
  ret i32 %8, !dbg !6290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_bbt_block(%struct.nand_chip* %this, %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr* %md, i32 %chip) #0 !dbg !6291 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.nand_chip*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %md.addr = alloca %struct.nand_bbt_descr*, align 8
  %chip.addr = alloca i32, align 4
  %targetsize = alloca i64, align 8
  %startblock = alloca i32, align 4
  %dir = alloca i32, align 4
  %page = alloca i32, align 4
  %numblocks = alloca i32, align 4
  %i = alloca i32, align 4
  %block = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !6294, metadata !DIExpression()), !dbg !6295
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  store %struct.nand_bbt_descr* %md, %struct.nand_bbt_descr** %md.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %md.addr, metadata !6298, metadata !DIExpression()), !dbg !6299
  store i32 %chip, i32* %chip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip.addr, metadata !6300, metadata !DIExpression()), !dbg !6301
  call void @llvm.dbg.declare(metadata i64* %targetsize, metadata !6302, metadata !DIExpression()), !dbg !6303
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6304
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !6305
  %call = call i64 @nanddev_target_size(%struct.nand_device* %base) #8, !dbg !6306
  store i64 %call, i64* %targetsize, align 8, !dbg !6303
  call void @llvm.dbg.declare(metadata i32* %startblock, metadata !6307, metadata !DIExpression()), !dbg !6308
  call void @llvm.dbg.declare(metadata i32* %dir, metadata !6309, metadata !DIExpression()), !dbg !6310
  call void @llvm.dbg.declare(metadata i32* %page, metadata !6311, metadata !DIExpression()), !dbg !6312
  call void @llvm.dbg.declare(metadata i32* %numblocks, metadata !6313, metadata !DIExpression()), !dbg !6314
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6315, metadata !DIExpression()), !dbg !6316
  %1 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6317
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %1, i32 0, i32 1, !dbg !6319
  %2 = load i32, i32* %chip.addr, align 4, !dbg !6320
  %idxprom = sext i32 %2 to i64, !dbg !6317
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom, !dbg !6317
  %3 = load i32, i32* %arrayidx, align 4, !dbg !6317
  %cmp = icmp ne i32 %3, -1, !dbg !6321
  br i1 %cmp, label %if.then, label %if.end, !dbg !6322

if.then:                                          ; preds = %entry
  %4 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6323
  %pages1 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %4, i32 0, i32 1, !dbg !6324
  %5 = load i32, i32* %chip.addr, align 4, !dbg !6325
  %idxprom2 = sext i32 %5 to i64, !dbg !6323
  %arrayidx3 = getelementptr [8 x i32], [8 x i32]* %pages1, i64 0, i64 %idxprom2, !dbg !6323
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !6323
  %7 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6326
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 9, !dbg !6327
  %8 = load i32, i32* %bbt_erase_shift, align 8, !dbg !6327
  %9 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6328
  %page_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 17, !dbg !6329
  %10 = load i32, i32* %page_shift, align 8, !dbg !6329
  %sub = sub i32 %8, %10, !dbg !6330
  %shr = ashr i32 %6, %sub, !dbg !6331
  store i32 %shr, i32* %retval, align 4, !dbg !6332
  br label %return, !dbg !6332

if.end:                                           ; preds = %entry
  %11 = load i64, i64* %targetsize, align 8, !dbg !6333
  %12 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6334
  %bbt_erase_shift4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 9, !dbg !6335
  %13 = load i32, i32* %bbt_erase_shift4, align 8, !dbg !6335
  %sh_prom = zext i32 %13 to i64, !dbg !6336
  %shr5 = lshr i64 %11, %sh_prom, !dbg !6336
  %conv = trunc i64 %shr5 to i32, !dbg !6337
  store i32 %conv, i32* %numblocks, align 4, !dbg !6338
  %14 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6339
  %options = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %14, i32 0, i32 0, !dbg !6341
  %15 = load i32, i32* %options, align 8, !dbg !6341
  %and = and i32 %15, 128, !dbg !6342
  %tobool = icmp ne i32 %and, 0, !dbg !6342
  br i1 %tobool, label %if.end9, label %if.then6, !dbg !6343

if.then6:                                         ; preds = %if.end
  %16 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6344
  %base7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0, !dbg !6345
  %call8 = call i32 @nanddev_ntargets(%struct.nand_device* %base7) #8, !dbg !6346
  %17 = load i32, i32* %numblocks, align 4, !dbg !6347
  %mul = mul i32 %17, %call8, !dbg !6347
  store i32 %mul, i32* %numblocks, align 4, !dbg !6347
  br label %if.end9, !dbg !6348

if.end9:                                          ; preds = %if.then6, %if.end
  %18 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6349
  %options10 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %18, i32 0, i32 0, !dbg !6351
  %19 = load i32, i32* %options10, align 8, !dbg !6351
  %and11 = and i32 %19, 16, !dbg !6352
  %tobool12 = icmp ne i32 %and11, 0, !dbg !6352
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !6353

if.then13:                                        ; preds = %if.end9
  %20 = load i32, i32* %numblocks, align 4, !dbg !6354
  %21 = load i32, i32* %chip.addr, align 4, !dbg !6356
  %add = add i32 %21, 1, !dbg !6357
  %mul14 = mul i32 %20, %add, !dbg !6358
  %sub15 = sub i32 %mul14, 1, !dbg !6359
  store i32 %sub15, i32* %startblock, align 4, !dbg !6360
  store i32 -1, i32* %dir, align 4, !dbg !6361
  br label %if.end17, !dbg !6362

if.else:                                          ; preds = %if.end9
  %22 = load i32, i32* %chip.addr, align 4, !dbg !6363
  %23 = load i32, i32* %numblocks, align 4, !dbg !6365
  %mul16 = mul i32 %22, %23, !dbg !6366
  store i32 %mul16, i32* %startblock, align 4, !dbg !6367
  store i32 1, i32* %dir, align 4, !dbg !6368
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  store i32 0, i32* %i, align 4, !dbg !6369
  br label %for.cond, !dbg !6371

for.cond:                                         ; preds = %for.inc, %if.end17
  %24 = load i32, i32* %i, align 4, !dbg !6372
  %25 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6374
  %maxblocks = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %25, i32 0, i32 6, !dbg !6375
  %26 = load i32, i32* %maxblocks, align 8, !dbg !6375
  %cmp18 = icmp slt i32 %24, %26, !dbg !6376
  br i1 %cmp18, label %for.body, label %for.end, !dbg !6377

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %block, metadata !6378, metadata !DIExpression()), !dbg !6380
  %27 = load i32, i32* %startblock, align 4, !dbg !6381
  %28 = load i32, i32* %dir, align 4, !dbg !6382
  %29 = load i32, i32* %i, align 4, !dbg !6383
  %mul20 = mul i32 %28, %29, !dbg !6384
  %add21 = add i32 %27, %mul20, !dbg !6385
  store i32 %add21, i32* %block, align 4, !dbg !6380
  %30 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6386
  %31 = load i32, i32* %block, align 4, !dbg !6387
  %call22 = call zeroext i8 @bbt_get_entry(%struct.nand_chip* %30, i32 %31) #8, !dbg !6388
  %conv23 = zext i8 %call22 to i32, !dbg !6388
  switch i32 %conv23, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
  ], !dbg !6389

sw.bb:                                            ; preds = %for.body, %for.body
  br label %for.inc, !dbg !6390

sw.epilog:                                        ; preds = %for.body
  %32 = load i32, i32* %block, align 4, !dbg !6392
  %33 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6393
  %bbt_erase_shift24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 9, !dbg !6394
  %34 = load i32, i32* %bbt_erase_shift24, align 8, !dbg !6394
  %35 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6395
  %page_shift25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 17, !dbg !6396
  %36 = load i32, i32* %page_shift25, align 8, !dbg !6396
  %sub26 = sub i32 %34, %36, !dbg !6397
  %shl = shl i32 %32, %sub26, !dbg !6398
  store i32 %shl, i32* %page, align 4, !dbg !6399
  %37 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !6400
  %tobool27 = icmp ne %struct.nand_bbt_descr* %37, null, !dbg !6400
  br i1 %tobool27, label %lor.lhs.false, label %if.then33, !dbg !6402

lor.lhs.false:                                    ; preds = %sw.epilog
  %38 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %md.addr, align 8, !dbg !6403
  %pages28 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %38, i32 0, i32 1, !dbg !6404
  %39 = load i32, i32* %chip.addr, align 4, !dbg !6405
  %idxprom29 = sext i32 %39 to i64, !dbg !6403
  %arrayidx30 = getelementptr [8 x i32], [8 x i32]* %pages28, i64 0, i64 %idxprom29, !dbg !6403
  %40 = load i32, i32* %arrayidx30, align 4, !dbg !6403
  %41 = load i32, i32* %page, align 4, !dbg !6406
  %cmp31 = icmp ne i32 %40, %41, !dbg !6407
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6408

if.then33:                                        ; preds = %lor.lhs.false, %sw.epilog
  %42 = load i32, i32* %block, align 4, !dbg !6409
  store i32 %42, i32* %retval, align 4, !dbg !6410
  br label %return, !dbg !6410

if.end34:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !6411

for.inc:                                          ; preds = %if.end34, %sw.bb
  %43 = load i32, i32* %i, align 4, !dbg !6412
  %inc = add i32 %43, 1, !dbg !6412
  store i32 %inc, i32* %i, align 4, !dbg !6412
  br label %for.cond, !dbg !6413, !llvm.loop !6414

for.end:                                          ; preds = %for.cond
  store i32 -28, i32* %retval, align 4, !dbg !6416
  br label %return, !dbg !6416

return:                                           ; preds = %for.end, %if.then33, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !6417
  ret i32 %44, !dbg !6417
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local i32 @nand_erase_nand(%struct.nand_chip*, %struct.erase_info*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mark_bbt_block_bad(%struct.nand_chip* %this, %struct.nand_bbt_descr* %td, i32 %chip, i32 %block) #0 !dbg !6418 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %td.addr = alloca %struct.nand_bbt_descr*, align 8
  %chip.addr = alloca i32, align 4
  %block.addr = alloca i32, align 4
  %to = alloca i64, align 8
  %res = alloca i32, align 4
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  store %struct.nand_bbt_descr* %td, %struct.nand_bbt_descr** %td.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_bbt_descr** %td.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  store i32 %chip, i32* %chip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  store i32 %block, i32* %block.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block.addr, metadata !6427, metadata !DIExpression()), !dbg !6428
  call void @llvm.dbg.declare(metadata i64* %to, metadata !6429, metadata !DIExpression()), !dbg !6430
  call void @llvm.dbg.declare(metadata i32* %res, metadata !6431, metadata !DIExpression()), !dbg !6432
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6433
  %1 = load i32, i32* %block.addr, align 4, !dbg !6434
  call void @bbt_mark_entry(%struct.nand_chip* %0, i32 %1, i8 zeroext 1) #8, !dbg !6435
  %2 = load i32, i32* %block.addr, align 4, !dbg !6436
  %conv = sext i32 %2 to i64, !dbg !6437
  %3 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6438
  %bbt_erase_shift = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 9, !dbg !6439
  %4 = load i32, i32* %bbt_erase_shift, align 8, !dbg !6439
  %sh_prom = zext i32 %4 to i64, !dbg !6440
  %shl = shl i64 %conv, %sh_prom, !dbg !6440
  store i64 %shl, i64* %to, align 8, !dbg !6441
  %5 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6442
  %6 = load i64, i64* %to, align 8, !dbg !6443
  %call = call i32 @nand_markbad_bbm(%struct.nand_chip* %5, i64 %6) #8, !dbg !6444
  store i32 %call, i32* %res, align 4, !dbg !6445
  %7 = load i32, i32* %res, align 4, !dbg !6446
  %tobool = icmp ne i32 %7, 0, !dbg !6446
  br i1 %tobool, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %res, align 4, !dbg !6449
  %9 = load i32, i32* %block.addr, align 4, !dbg !6449
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 %8, i32 %9) #9, !dbg !6449
  br label %if.end, !dbg !6449

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %td.addr, align 8, !dbg !6450
  %pages = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %10, i32 0, i32 1, !dbg !6451
  %11 = load i32, i32* %chip.addr, align 4, !dbg !6452
  %idxprom = sext i32 %11 to i64, !dbg !6450
  %arrayidx = getelementptr [8 x i32], [8 x i32]* %pages, i64 0, i64 %idxprom, !dbg !6450
  store i32 -1, i32* %arrayidx, align 4, !dbg !6453
  ret void, !dbg !6454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @scan_write_bbt(%struct.nand_chip* %this, i64 %offs, i64 %len, i8* %buf, i8* %oob) #0 !dbg !6455 {
entry:
  %this.addr = alloca %struct.nand_chip*, align 8
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %oob.addr = alloca i8*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %ops = alloca %struct.mtd_oob_ops, align 8
  store %struct.nand_chip* %this, %struct.nand_chip** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %this.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  store i64 %offs, i64* %offs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offs.addr, metadata !6460, metadata !DIExpression()), !dbg !6461
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !6462, metadata !DIExpression()), !dbg !6463
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6464, metadata !DIExpression()), !dbg !6465
  store i8* %oob, i8** %oob.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oob.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !6468, metadata !DIExpression()), !dbg !6469
  %0 = load %struct.nand_chip*, %struct.nand_chip** %this.addr, align 8, !dbg !6470
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !6471
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !6469
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_ops* %ops, metadata !6472, metadata !DIExpression()), !dbg !6473
  %mode = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 0, !dbg !6474
  store i32 0, i32* %mode, align 8, !dbg !6475
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 5, !dbg !6476
  store i32 0, i32* %ooboffs, align 8, !dbg !6477
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6478
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 6, !dbg !6479
  %2 = load i32, i32* %oobsize, align 4, !dbg !6479
  %conv = zext i32 %2 to i64, !dbg !6478
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 3, !dbg !6480
  store i64 %conv, i64* %ooblen, align 8, !dbg !6481
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !6482
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 6, !dbg !6483
  store i8* %3, i8** %datbuf, align 8, !dbg !6484
  %4 = load i8*, i8** %oob.addr, align 8, !dbg !6485
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 7, !dbg !6486
  store i8* %4, i8** %oobbuf, align 8, !dbg !6487
  %5 = load i64, i64* %len.addr, align 8, !dbg !6488
  %len1 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %ops, i32 0, i32 1, !dbg !6489
  store i64 %5, i64* %len1, align 8, !dbg !6490
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !6491
  %7 = load i64, i64* %offs.addr, align 8, !dbg !6492
  %call2 = call i32 @mtd_write_oob(%struct.mtd_info* %6, i64 %7, %struct.mtd_oob_ops* %ops) #8, !dbg !6493
  ret i32 %call2, !dbg !6494
}

; Function Attrs: noredzone
declare dso_local i32 @nand_markbad_bbm(%struct.nand_chip*, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @mtd_write_oob(%struct.mtd_info*, i64, %struct.mtd_oob_ops*) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bbt_main_no_oob_descr", scope: !2, file: !3, line: 1309, type: !131, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !97, globals: !123, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/nand_bbt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73, !77, !84, !91}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_interface_type", file: !74, line: 481, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/mtd/rawnand.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76}
!76 = !DIEnumerator(name: "NAND_SDR_IFACE", value: 0, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_op_instr_type", file: !74, line: 570, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "NAND_OP_CMD_INSTR", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "NAND_OP_ADDR_INSTR", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "NAND_OP_DATA_IN_INSTR", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "NAND_OP_DATA_OUT_INSTR", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "NAND_OP_WAITRDY_INSTR", value: 4, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !85, line: 305, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 62, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "MTD_OPS_PLACE_OOB", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "MTD_OPS_AUTO_OOB", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "MTD_OPS_RAW", value: 2, isUnsigned: true)
!97 = !{!98, !99, !101, !102, !106, !107, !111, !115, !119}
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !100, line: 148, baseType: !7)
!100 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !100, line: 46, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !104, line: 88, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !108, line: 23, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !110, line: 31, baseType: !106)
!110 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 55, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !104, line: 72, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !104, line: 16, baseType: !114)
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !100, line: 94, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !108, line: 16, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !110, line: 20, baseType: !118)
!118 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !100, line: 102, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !108, line: 17, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !110, line: 21, baseType: !122)
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !{!0, !124, !129, !148, !150, !152, !154}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "bbt_pattern", scope: !2, file: !3, line: 1286, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 32, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 4)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "bbt_mirror_no_oob_descr", scope: !2, file: !3, line: 1319, type: !131, isLocal: true, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !132, line: 41, size: 576, elements: !133)
!132 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !135, !139, !140, !141, !143, !144, !145, !146}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !131, file: !132, line: 42, baseType: !98, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !131, file: !132, line: 43, baseType: !136, size: 256, offset: 32)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !131, file: !132, line: 44, baseType: !98, size: 32, offset: 288)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !131, file: !132, line: 45, baseType: !98, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !132, line: 46, baseType: !142, size: 64, offset: 352)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !137)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !131, file: !132, line: 47, baseType: !98, size: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !131, file: !132, line: 48, baseType: !98, size: 32, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !131, file: !132, line: 49, baseType: !98, size: 32, offset: 480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !131, file: !132, line: 50, baseType: !147, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "mirror_pattern", scope: !2, file: !3, line: 1287, type: !126, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "bbt_main_descr", scope: !2, file: !3, line: 1289, type: !131, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "bbt_mirror_descr", scope: !2, file: !3, line: 1299, type: !131, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "scan_ff_pattern", scope: !2, file: !3, line: 1283, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 16, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 2)
!159 = !{i32 7, !"Dwarf Version", i32 4}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"Code Model", i32 2}
!163 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!164 = distinct !DISubprogram(name: "nand_create_bbt", scope: !3, file: !3, line: 1365, type: !165, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !415)
!165 = !DISubroutineType(types: !166)
!166 = !{!98, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !74, line: 1096, size: 16704, elements: !169)
!169 = !{!170, !2452, !2458, !2482, !2577, !2647, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2780, !2781, !2782, !2783, !2784, !2785, !2787, !2837}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !168, file: !74, line: 1097, baseType: !171, size: 11200)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !172)
!172 = !{!173, !2345, !2357, !2427, !2432, !2436}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !171, file: !51, line: 320, baseType: !174, size: 9664)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !175, line: 235, size: 9664, elements: !176)
!175 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !179, !183, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !199, !200, !216, !237, !238, !239, !240, !249, !259, !268, !272, !277, !283, !284, !299, !300, !310, !311, !312, !313, !314, !315, !326, !330, !334, !335, !336, !340, !341, !342, !343, !347, !348, !349, !350, !351, !354, !366, !373, !374, !375, !379, !2315, !2316, !2324, !2328, !2329, !2330}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !175, line: 236, baseType: !178, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !100, line: 79, baseType: !122)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !175, line: 237, baseType: !180, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 104, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !110, line: 27, baseType: !7)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !175, line: 238, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !100, line: 107, baseType: !107)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !174, file: !175, line: 244, baseType: !180, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !174, file: !175, line: 252, baseType: !180, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !174, file: !175, line: 263, baseType: !180, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !174, file: !175, line: 265, baseType: !180, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !174, file: !175, line: 266, baseType: !180, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !174, file: !175, line: 272, baseType: !7, size: 32, offset: 288)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !174, file: !175, line: 273, baseType: !7, size: 32, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !174, file: !175, line: 275, baseType: !7, size: 32, offset: 352)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !174, file: !175, line: 276, baseType: !7, size: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !174, file: !175, line: 285, baseType: !7, size: 32, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 288, baseType: !196, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !174, file: !175, line: 289, baseType: !98, size: 32, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !174, file: !175, line: 292, baseType: !201, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !175, line: 101, size: 128, elements: !204)
!204 = !{!205, !215}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !203, file: !175, line: 102, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!98, !209, !98, !210}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !175, line: 87, size: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !211, file: !175, line: 88, baseType: !181, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !211, file: !175, line: 89, baseType: !181, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !203, file: !175, line: 104, baseType: !206, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !174, file: !175, line: 295, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !175, line: 176, size: 192, elements: !220)
!220 = !{!221, !222, !231}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !219, file: !175, line: 177, baseType: !98, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !219, file: !175, line: 178, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!98, !209, !98, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !175, line: 138, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !227, file: !175, line: 139, baseType: !98, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !227, file: !175, line: 140, baseType: !98, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !219, file: !175, line: 180, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!98, !209, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !174, file: !175, line: 298, baseType: !7, size: 32, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !174, file: !175, line: 301, baseType: !7, size: 32, offset: 736)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !174, file: !175, line: 306, baseType: !98, size: 32, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !174, file: !175, line: 307, baseType: !241, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !175, line: 36, size: 192, elements: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !242, file: !175, line: 37, baseType: !184, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !242, file: !175, line: 38, baseType: !180, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !242, file: !175, line: 39, baseType: !180, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !242, file: !175, line: 40, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !174, file: !175, line: 313, baseType: !250, size: 64, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!98, !209, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !175, line: 30, size: 192, elements: !255)
!255 = !{!256, !257, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !254, file: !175, line: 31, baseType: !184, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !175, line: 32, baseType: !184, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !254, file: !175, line: 33, baseType: !184, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !174, file: !175, line: 314, baseType: !260, size: 64, offset: 960)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!98, !209, !102, !111, !263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !100, line: 158, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !100, line: 153, baseType: !107)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !174, file: !175, line: 316, baseType: !269, size: 64, offset: 1024)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!98, !209, !102, !111}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !174, file: !175, line: 317, baseType: !273, size: 64, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!98, !209, !102, !111, !263, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !174, file: !175, line: 319, baseType: !278, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!98, !209, !102, !111, !263, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !174, file: !175, line: 321, baseType: !278, size: 64, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !174, file: !175, line: 323, baseType: !285, size: 64, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!98, !209, !102, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !175, line: 64, size: 512, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !289, file: !175, line: 65, baseType: !7, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !289, file: !175, line: 66, baseType: !111, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !289, file: !175, line: 67, baseType: !111, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !289, file: !175, line: 68, baseType: !111, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !289, file: !175, line: 69, baseType: !111, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !289, file: !175, line: 70, baseType: !180, size: 32, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !289, file: !175, line: 71, baseType: !147, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !289, file: !175, line: 72, baseType: !147, size: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !174, file: !175, line: 325, baseType: !285, size: 64, offset: 1344)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !174, file: !175, line: 327, baseType: !301, size: 64, offset: 1408)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!98, !209, !111, !263, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !92, line: 146, size: 96, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !305, file: !92, line: 147, baseType: !182, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !305, file: !92, line: 148, baseType: !182, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !305, file: !92, line: 149, baseType: !182, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !174, file: !175, line: 329, baseType: !273, size: 64, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !174, file: !175, line: 331, baseType: !301, size: 64, offset: 1536)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !174, file: !175, line: 333, baseType: !273, size: 64, offset: 1600)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !174, file: !175, line: 335, baseType: !273, size: 64, offset: 1664)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !174, file: !175, line: 337, baseType: !269, size: 64, offset: 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !174, file: !175, line: 339, baseType: !316, size: 64, offset: 1792)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!98, !209, !319, !114, !102, !263}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !322, line: 15, size: 128, elements: !323)
!322 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !321, file: !322, line: 16, baseType: !101, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !321, file: !322, line: 17, baseType: !111, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !174, file: !175, line: 341, baseType: !327, size: 64, offset: 1856)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !209}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !174, file: !175, line: 342, baseType: !331, size: 64, offset: 1920)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!98, !209, !102, !184}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !174, file: !175, line: 343, baseType: !331, size: 64, offset: 1984)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !174, file: !175, line: 344, baseType: !331, size: 64, offset: 2048)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !174, file: !175, line: 345, baseType: !337, size: 64, offset: 2112)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!98, !209, !102}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !174, file: !175, line: 346, baseType: !337, size: 64, offset: 2176)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !174, file: !175, line: 347, baseType: !337, size: 64, offset: 2240)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !174, file: !175, line: 348, baseType: !269, size: 64, offset: 2304)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !174, file: !175, line: 349, baseType: !344, size: 64, offset: 2368)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!98, !209}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !174, file: !175, line: 350, baseType: !327, size: 64, offset: 2432)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !174, file: !175, line: 351, baseType: !327, size: 64, offset: 2496)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !174, file: !175, line: 356, baseType: !344, size: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !174, file: !175, line: 357, baseType: !327, size: 64, offset: 2624)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !174, file: !175, line: 363, baseType: !352, size: 8, offset: 2688)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !100, line: 30, baseType: !353)
!353 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !174, file: !175, line: 365, baseType: !355, size: 192, offset: 2752)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !356, line: 54, size: 192, elements: !357)
!356 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!357 = !{!358, !364, !365}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !355, file: !356, line: 55, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !356, line: 51, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!98, !363, !114, !101}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !356, line: 56, baseType: !363, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !355, file: !356, line: 57, baseType: !98, size: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !174, file: !175, line: 368, baseType: !367, size: 128, offset: 2944)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !92, line: 250, size: 128, elements: !368)
!368 = !{!369, !370, !371, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !367, file: !92, line: 251, baseType: !182, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !367, file: !92, line: 252, baseType: !182, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !367, file: !92, line: 253, baseType: !182, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !367, file: !92, line: 254, baseType: !182, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !174, file: !175, line: 370, baseType: !98, size: 32, offset: 3072)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !174, file: !175, line: 372, baseType: !101, size: 64, offset: 3136)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !174, file: !175, line: 374, baseType: !376, size: 64, offset: 3200)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !378, line: 76, flags: DIFlagFwdDecl)
!378 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !174, file: !175, line: 375, baseType: !380, size: 5568, offset: 3264)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !381)
!381 = !{!382, !1841, !1843, !1846, !1847, !1898, !1992, !1993, !1994, !1995, !1996, !2005, !2110, !2123, !2126, !2127, !2131, !2133, !2134, !2135, !2139, !2145, !2146, !2149, !2264, !2265, !2268, !2269, !2270, !2271, !2303, !2304, !2305, !2308, !2311, !2312, !2313, !2314}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !380, file: !30, line: 462, baseType: !383, size: 512)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !384, line: 64, size: 512, elements: !385)
!384 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !387, !393, !395, !455, !1678, !1831, !1836, !1837, !1838, !1839, !1840}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !384, line: 65, baseType: !196, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !383, file: !384, line: 66, baseType: !388, size: 128, offset: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !100, line: 178, size: 128, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !100, line: 179, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !388, file: !100, line: 179, baseType: !391, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !383, file: !384, line: 67, baseType: !394, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !383, file: !384, line: 68, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !384, line: 192, size: 704, elements: !398)
!398 = !{!399, !400, !416, !417}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !397, file: !384, line: 193, baseType: !388, size: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !397, file: !384, line: 194, baseType: !401, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !402, line: 83, baseType: !403)
!402 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !402, line: 71, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !402, line: 72, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !402, line: 72, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !406, file: !402, line: 73, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !402, line: 20, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !409, file: !402, line: 21, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !413, line: 25, baseType: !414)
!413 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 25, elements: !415)
!415 = !{}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !397, file: !384, line: 195, baseType: !383, size: 512, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !397, file: !384, line: 196, baseType: !418, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !384, line: 156, size: 192, elements: !421)
!421 = !{!422, !427, !432}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !420, file: !384, line: 157, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!98, !396, !394}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !384, line: 158, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!196, !396, !394}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !420, file: !384, line: 159, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!98, !396, !394, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !384, line: 148, size: 20736, elements: !439)
!439 = !{!440, !445, !449, !450, !454}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !438, file: !384, line: 149, baseType: !441, size: 192)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !443)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!443 = !{!444}
!444 = !DISubrange(count: 3)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !438, file: !384, line: 150, baseType: !446, size: 4096, offset: 192)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 4096, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !438, file: !384, line: 151, baseType: !98, size: 32, offset: 4288)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !438, file: !384, line: 152, baseType: !451, size: 16384, offset: 4320)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 16384, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 2048)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !438, file: !384, line: 153, baseType: !98, size: 32, offset: 20704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !383, file: !384, line: 69, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !384, line: 138, size: 448, elements: !458)
!458 = !{!459, !463, !488, !490, !1625, !1656, !1660}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !457, file: !384, line: 139, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !394}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !457, file: !384, line: 140, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !467, line: 230, size: 128, elements: !468)
!467 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!468 = !{!469, !484}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !466, file: !467, line: 231, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !394, !477, !442}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !100, line: 60, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !104, line: 73, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !104, line: 15, baseType: !476)
!476 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !467, line: 30, size: 128, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !467, line: 31, baseType: !196, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !478, file: !467, line: 32, baseType: !482, size: 16, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !100, line: 19, baseType: !483)
!483 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !466, file: !467, line: 232, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!473, !394, !477, !196, !111}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !457, file: !384, line: 141, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !457, file: !384, line: 142, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !467, line: 84, size: 320, elements: !495)
!495 = !{!496, !497, !501, !1622, !1623}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !467, line: 85, baseType: !196, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !494, file: !467, line: 86, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!482, !394, !477, !98}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !494, file: !467, line: 88, baseType: !502, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!482, !394, !505, !98}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !467, line: 168, size: 448, elements: !507)
!507 = !{!508, !509, !510, !511, !518, !519}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !506, file: !467, line: 169, baseType: !478, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !467, line: 170, baseType: !111, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !506, file: !467, line: 171, baseType: !101, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !506, file: !467, line: 172, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!473, !515, !394, !505, !442, !102, !111}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !517, line: 526, flags: DIFlagFwdDecl)
!517 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!518 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !506, file: !467, line: 174, baseType: !512, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !506, file: !467, line: 176, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!98, !515, !394, !505, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !525, line: 305, size: 1472, elements: !526)
!525 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !528, !529, !530, !531, !539, !540, !1596, !1602, !1603, !1608, !1609, !1612, !1616, !1617, !1618, !1619, !1620}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !524, file: !525, line: 308, baseType: !114, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !524, file: !525, line: 309, baseType: !114, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !524, file: !525, line: 313, baseType: !523, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !524, file: !525, line: 313, baseType: !523, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !524, file: !525, line: 315, baseType: !532, size: 192, align: 64, offset: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !533, line: 24, size: 192, align: 64, elements: !534)
!533 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !536, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !532, file: !533, line: 25, baseType: !114, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !532, file: !533, line: 26, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !532, file: !533, line: 27, baseType: !537, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !524, file: !525, line: 323, baseType: !114, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !524, file: !525, line: 327, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !525, line: 388, size: 7296, elements: !543)
!543 = !{!544, !1592}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !525, line: 389, baseType: !545, size: 7296)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !525, line: 389, size: 7296, elements: !546)
!546 = !{!547, !548, !552, !553, !557, !558, !559, !560, !561, !569, !574, !575, !576, !577, !586, !587, !588, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !623, !629, !632, !664, !665, !1563, !1564, !1567, !1570, !1571, !1574, !1575, !1576, !1579, !1591}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !545, file: !525, line: 390, baseType: !523, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !545, file: !525, line: 391, baseType: !549, size: 64, offset: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !533, line: 31, size: 64, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !549, file: !533, line: 32, baseType: !537, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !545, file: !525, line: 392, baseType: !107, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !545, file: !525, line: 394, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!114, !515, !114, !114, !114, !114}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !545, file: !525, line: 398, baseType: !114, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !545, file: !525, line: 399, baseType: !114, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !545, file: !525, line: 405, baseType: !114, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !545, file: !525, line: 406, baseType: !114, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !545, file: !525, line: 407, baseType: !562, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !517, line: 286, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 286, size: 64, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !564, file: !517, line: 286, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !568, line: 18, baseType: !114)
!568 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !545, file: !525, line: 416, baseType: !570, size: 32, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !100, line: 168, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 166, size: 32, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !571, file: !100, line: 167, baseType: !98, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !545, file: !525, line: 428, baseType: !570, size: 32, offset: 608)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !545, file: !525, line: 437, baseType: !570, size: 32, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !545, file: !525, line: 447, baseType: !570, size: 32, offset: 672)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !545, file: !525, line: 450, baseType: !578, size: 64, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !579, line: 13, baseType: !580)
!579 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !100, line: 175, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 173, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !581, file: !100, line: 174, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !108, line: 22, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !110, line: 30, baseType: !105)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !545, file: !525, line: 452, baseType: !98, size: 32, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !545, file: !525, line: 454, baseType: !401, offset: 800)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !545, file: !525, line: 457, baseType: !589, size: 256, offset: 832)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !590, line: 35, size: 256, elements: !591)
!590 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !593, !594, !596}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !589, file: !590, line: 36, baseType: !578, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !589, file: !590, line: 42, baseType: !578, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !589, file: !590, line: 46, baseType: !595, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !402, line: 29, baseType: !409)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !589, file: !590, line: 47, baseType: !388, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !545, file: !525, line: 459, baseType: !388, size: 128, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !545, file: !525, line: 466, baseType: !114, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !545, file: !525, line: 467, baseType: !114, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !545, file: !525, line: 469, baseType: !114, size: 64, offset: 1344)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !545, file: !525, line: 470, baseType: !114, size: 64, offset: 1408)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !545, file: !525, line: 471, baseType: !580, size: 64, offset: 1472)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !545, file: !525, line: 472, baseType: !114, size: 64, offset: 1536)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !545, file: !525, line: 473, baseType: !114, size: 64, offset: 1600)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !545, file: !525, line: 474, baseType: !114, size: 64, offset: 1664)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !545, file: !525, line: 475, baseType: !114, size: 64, offset: 1728)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !545, file: !525, line: 477, baseType: !401, offset: 1792)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !545, file: !525, line: 478, baseType: !114, size: 64, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !545, file: !525, line: 478, baseType: !114, size: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !545, file: !525, line: 478, baseType: !114, size: 64, offset: 1920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !545, file: !525, line: 478, baseType: !114, size: 64, offset: 1984)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !545, file: !525, line: 479, baseType: !114, size: 64, offset: 2048)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !545, file: !525, line: 479, baseType: !114, size: 64, offset: 2112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !545, file: !525, line: 479, baseType: !114, size: 64, offset: 2176)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !545, file: !525, line: 480, baseType: !114, size: 64, offset: 2240)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !545, file: !525, line: 480, baseType: !114, size: 64, offset: 2304)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !545, file: !525, line: 480, baseType: !114, size: 64, offset: 2368)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !545, file: !525, line: 480, baseType: !114, size: 64, offset: 2432)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !545, file: !525, line: 482, baseType: !620, size: 2816, offset: 2496)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2816, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 44)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !545, file: !525, line: 488, baseType: !624, size: 256, offset: 5312)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !625, line: 60, size: 256, elements: !626)
!625 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !624, file: !625, line: 61, baseType: !628, size: 256)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 256, elements: !127)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !545, file: !525, line: 490, baseType: !630, size: 64, offset: 5568)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !525, line: 490, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !545, file: !525, line: 493, baseType: !633, size: 896, offset: 5632)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !634, line: 53, baseType: !635)
!634 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 13, size: 896, elements: !636)
!636 = !{!637, !638, !639, !640, !643, !644, !651, !652, !656, !657, !660}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !635, file: !634, line: 18, baseType: !107, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !635, file: !634, line: 28, baseType: !580, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !635, file: !634, line: 31, baseType: !589, size: 256, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !635, file: !634, line: 32, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !634, line: 32, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !635, file: !634, line: 37, baseType: !483, size: 16, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !635, file: !634, line: 40, baseType: !645, size: 192, offset: 512)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !646, line: 53, size: 192, elements: !647)
!646 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!647 = !{!648, !649, !650}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !645, file: !646, line: 54, baseType: !578, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !645, file: !646, line: 55, baseType: !401, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !645, file: !646, line: 59, baseType: !388, size: 128, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !635, file: !634, line: 41, baseType: !101, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !635, file: !634, line: 42, baseType: !653, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !634, line: 42, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !635, file: !634, line: 44, baseType: !570, size: 32, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !635, file: !634, line: 50, baseType: !658, size: 16, offset: 864)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !108, line: 19, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !110, line: 24, baseType: !483)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !635, file: !634, line: 51, baseType: !661, size: 16, offset: 880)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !108, line: 18, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !110, line: 23, baseType: !663)
!663 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !525, line: 495, baseType: !114, size: 64, offset: 6528)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !545, file: !525, line: 497, baseType: !666, size: 64, offset: 6592)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !525, line: 381, size: 384, elements: !668)
!668 = !{!669, !670, !1562}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !667, file: !525, line: 382, baseType: !570, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !667, file: !525, line: 383, baseType: !671, size: 128, offset: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !525, line: 376, size: 128, elements: !672)
!672 = !{!673, !1560}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !671, file: !525, line: 377, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !676, line: 640, size: 48640, elements: !677)
!676 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!677 = !{!678, !684, !686, !687, !693, !694, !695, !696, !697, !698, !699, !700, !704, !722, !733, !823, !824, !825, !836, !837, !839, !840, !841, !842, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !921, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !977, !979, !980, !981, !993, !995, !996, !997, !998, !999, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1023, !1028, !1032, !1033, !1034, !1037, !1041, !1044, !1047, !1050, !1053, !1056, !1059, !1062, !1068, !1069, !1070, !1076, !1077, !1078, !1079, !1080, !1089, !1090, !1091, !1092, !1093, !1098, !1099, !1100, !1103, !1104, !1107, !1110, !1113, !1116, !1119, !1122, !1123, !1203, !1206, !1209, !1210, !1213, !1214, !1215, !1219, !1220, !1221, !1234, !1235, !1236, !1246, !1251, !1254, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !675, file: !676, line: 646, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !680, line: 56, size: 128, elements: !681)
!680 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !680, line: 57, baseType: !114, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !679, file: !680, line: 58, baseType: !181, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !675, file: !676, line: 649, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !476)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !675, file: !676, line: 657, baseType: !101, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !675, file: !676, line: 658, baseType: !688, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !689, line: 113, baseType: !690)
!689 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !689, line: 111, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !690, file: !689, line: 112, baseType: !570, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !676, line: 660, baseType: !7, size: 32, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !675, file: !676, line: 661, baseType: !7, size: 32, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !675, file: !676, line: 684, baseType: !98, size: 32, offset: 352)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !675, file: !676, line: 686, baseType: !98, size: 32, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !675, file: !676, line: 687, baseType: !98, size: 32, offset: 416)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !675, file: !676, line: 688, baseType: !98, size: 32, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !675, file: !676, line: 689, baseType: !7, size: 32, offset: 480)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !675, file: !676, line: 691, baseType: !701, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !676, line: 691, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !675, file: !676, line: 692, baseType: !705, size: 832, offset: 576)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !676, line: 451, size: 832, elements: !706)
!706 = !{!707, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !705, file: !676, line: 453, baseType: !708, size: 128)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !676, line: 325, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !708, file: !676, line: 326, baseType: !114, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !708, file: !676, line: 327, baseType: !181, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !705, file: !676, line: 454, baseType: !532, size: 192, align: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !705, file: !676, line: 455, baseType: !388, size: 128, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !705, file: !676, line: 456, baseType: !7, size: 32, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !705, file: !676, line: 458, baseType: !107, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !705, file: !676, line: 459, baseType: !107, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !705, file: !676, line: 460, baseType: !107, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !705, file: !676, line: 461, baseType: !107, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !705, file: !676, line: 463, baseType: !107, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !705, file: !676, line: 465, baseType: !721, offset: 832)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !676, line: 415, elements: !415)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !675, file: !676, line: 693, baseType: !723, size: 384, offset: 1408)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !676, line: 489, size: 384, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !723, file: !676, line: 490, baseType: !388, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !723, file: !676, line: 491, baseType: !114, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !723, file: !676, line: 492, baseType: !114, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !723, file: !676, line: 493, baseType: !7, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !723, file: !676, line: 494, baseType: !483, size: 16, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !723, file: !676, line: 495, baseType: !483, size: 16, offset: 304)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !723, file: !676, line: 497, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !675, file: !676, line: 697, baseType: !734, size: 1792, offset: 1792)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !676, line: 507, size: 1792, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !820, !821}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !734, file: !676, line: 508, baseType: !532, size: 192, align: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !734, file: !676, line: 515, baseType: !107, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !734, file: !676, line: 516, baseType: !107, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !734, file: !676, line: 517, baseType: !107, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !734, file: !676, line: 518, baseType: !107, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !734, file: !676, line: 519, baseType: !107, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !734, file: !676, line: 526, baseType: !584, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !734, file: !676, line: 527, baseType: !107, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !676, line: 528, baseType: !7, size: 32, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !734, file: !676, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !734, file: !676, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !734, file: !676, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !734, file: !676, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !734, file: !676, line: 563, baseType: !750, size: 512, offset: 704)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !751)
!751 = !{!752, !760, !761, !766, !816, !817, !818, !819}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !6, line: 119, baseType: !753, size: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !754, line: 9, size: 256, elements: !755)
!754 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !754, line: 10, baseType: !532, size: 192, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !753, file: !754, line: 11, baseType: !758, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !759, line: 29, baseType: !584)
!759 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !750, file: !6, line: 120, baseType: !758, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !750, file: !6, line: 121, baseType: !762, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!5, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !750, file: !6, line: 122, baseType: !767, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !769)
!769 = !{!770, !788, !789, !792, !802, !803, !811, !815}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !768, file: !6, line: 160, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !6, line: 215, baseType: !595)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !772, file: !6, line: 216, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !772, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !772, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !772, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !772, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !772, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !772, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !772, file: !6, line: 233, baseType: !758, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !772, file: !6, line: 234, baseType: !765, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !772, file: !6, line: 235, baseType: !758, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !772, file: !6, line: 236, baseType: !765, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !772, file: !6, line: 237, baseType: !787, size: 4096, offset: 512)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 4096, elements: !137)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !768, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !768, file: !6, line: 162, baseType: !790, size: 32, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !100, line: 27, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !104, line: 96, baseType: !98)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !768, file: !6, line: 163, baseType: !793, size: 32, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !794, line: 276, baseType: !795)
!794 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !794, line: 276, size: 32, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !795, file: !794, line: 276, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !794, line: 70, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !794, line: 65, size: 32, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !799, file: !794, line: 66, baseType: !7, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !768, file: !6, line: 164, baseType: !765, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !768, file: !6, line: 165, baseType: !804, size: 128, offset: 256)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !754, line: 14, size: 128, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !804, file: !754, line: 15, baseType: !807, size: 128)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !533, line: 125, size: 128, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !807, file: !533, line: 126, baseType: !549, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !807, file: !533, line: 127, baseType: !537, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !768, file: !6, line: 166, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!758}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !768, file: !6, line: 167, baseType: !758, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !750, file: !6, line: 123, baseType: !120, size: 8, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !750, file: !6, line: 124, baseType: !120, size: 8, offset: 456)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !750, file: !6, line: 125, baseType: !120, size: 8, offset: 464)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !750, file: !6, line: 126, baseType: !120, size: 8, offset: 472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !734, file: !676, line: 572, baseType: !750, size: 512, offset: 1216)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !734, file: !676, line: 580, baseType: !822, size: 64, offset: 1728)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !675, file: !676, line: 721, baseType: !7, size: 32, offset: 3584)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !675, file: !676, line: 722, baseType: !98, size: 32, offset: 3616)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !675, file: !676, line: 723, baseType: !826, size: 64, offset: 3648)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !829, line: 17, baseType: !830)
!829 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !829, line: 17, size: 64, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !830, file: !829, line: 17, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 1)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !675, file: !676, line: 724, baseType: !828, size: 64, offset: 3712)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !675, file: !676, line: 749, baseType: !838, offset: 3776)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !676, line: 290, elements: !415)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !675, file: !676, line: 751, baseType: !388, size: 128, offset: 3776)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !675, file: !676, line: 757, baseType: !541, size: 64, offset: 3904)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !675, file: !676, line: 758, baseType: !541, size: 64, offset: 3968)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !675, file: !676, line: 761, baseType: !843, size: 320, offset: 4032)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !625, line: 34, size: 320, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !843, file: !625, line: 35, baseType: !107, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !843, file: !625, line: 36, baseType: !847, size: 256, offset: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 256, elements: !127)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !675, file: !676, line: 766, baseType: !98, size: 32, offset: 4352)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !675, file: !676, line: 767, baseType: !98, size: 32, offset: 4384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !675, file: !676, line: 768, baseType: !98, size: 32, offset: 4416)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !675, file: !676, line: 770, baseType: !98, size: 32, offset: 4448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !675, file: !676, line: 772, baseType: !114, size: 64, offset: 4480)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !675, file: !676, line: 775, baseType: !7, size: 32, offset: 4544)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !675, file: !676, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !675, file: !676, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !675, file: !676, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !675, file: !676, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !675, file: !676, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !675, file: !676, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !675, file: !676, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !675, file: !676, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !675, file: !676, line: 831, baseType: !114, size: 64, offset: 4672)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !675, file: !676, line: 833, baseType: !864, size: 384, offset: 4736)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !865)
!865 = !{!866, !871}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !864, file: !12, line: 26, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!476, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !12, line: 27, baseType: !872, size: 320, offset: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !12, line: 27, size: 320, elements: !873)
!873 = !{!874, !884, !911}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !872, file: !12, line: 36, baseType: !875, size: 320)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !12, line: 29, size: 320, elements: !876)
!876 = !{!877, !879, !880, !881, !882, !883}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !875, file: !12, line: 30, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !875, file: !12, line: 31, baseType: !181, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !12, line: 32, baseType: !181, size: 32, offset: 96)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !875, file: !12, line: 33, baseType: !181, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !875, file: !12, line: 34, baseType: !107, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !875, file: !12, line: 35, baseType: !878, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !872, file: !12, line: 46, baseType: !885, size: 192)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !12, line: 38, size: 192, elements: !886)
!886 = !{!887, !888, !889, !910}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !885, file: !12, line: 39, baseType: !790, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !12, line: 41, baseType: !890, size: 64, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !12, line: 41, size: 64, elements: !891)
!891 = !{!892, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !890, file: !12, line: 42, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !895, line: 7, size: 128, elements: !896)
!895 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !894, file: !895, line: 8, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !104, line: 93, baseType: !105)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !894, file: !895, line: 9, baseType: !105, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !890, file: !12, line: 43, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !903, line: 7, size: 64, elements: !904)
!903 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !909}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !902, file: !903, line: 8, baseType: !906, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !903, line: 5, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !108, line: 20, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !110, line: 26, baseType: !98)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !902, file: !903, line: 9, baseType: !907, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !885, file: !12, line: 45, baseType: !107, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !872, file: !12, line: 54, baseType: !912, size: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !12, line: 48, size: 256, elements: !913)
!913 = !{!914, !917, !918, !919, !920}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !912, file: !12, line: 49, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !912, file: !12, line: 50, baseType: !98, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !912, file: !12, line: 51, baseType: !98, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !912, file: !12, line: 52, baseType: !114, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !912, file: !12, line: 53, baseType: !114, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !675, file: !676, line: 835, baseType: !922, size: 32, offset: 5120)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !100, line: 22, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !104, line: 28, baseType: !98)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !675, file: !676, line: 836, baseType: !922, size: 32, offset: 5152)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !675, file: !676, line: 840, baseType: !114, size: 64, offset: 5184)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !675, file: !676, line: 849, baseType: !674, size: 64, offset: 5248)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !675, file: !676, line: 852, baseType: !674, size: 64, offset: 5312)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !675, file: !676, line: 857, baseType: !388, size: 128, offset: 5376)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !675, file: !676, line: 858, baseType: !388, size: 128, offset: 5504)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !675, file: !676, line: 859, baseType: !674, size: 64, offset: 5632)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !675, file: !676, line: 867, baseType: !388, size: 128, offset: 5696)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !675, file: !676, line: 868, baseType: !388, size: 128, offset: 5824)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !675, file: !676, line: 871, baseType: !934, size: 64, offset: 5952)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !936, line: 59, size: 768, elements: !937)
!936 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!937 = !{!938, !939, !940, !941, !952, !953, !960, !969}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !935, file: !936, line: 61, baseType: !688, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !935, file: !936, line: 62, baseType: !7, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !935, file: !936, line: 63, baseType: !401, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !935, file: !936, line: 65, baseType: !942, size: 256, offset: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 256, elements: !127)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !100, line: 182, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !943, file: !100, line: 183, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !100, line: 186, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !100, line: 187, baseType: !946, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !947, file: !100, line: 187, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !935, file: !936, line: 66, baseType: !943, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !935, file: !936, line: 68, baseType: !954, size: 128, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !955, line: 40, baseType: !956)
!955 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !955, line: 36, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !956, file: !955, line: 37, baseType: !401)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !956, file: !955, line: 38, baseType: !388, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !935, file: !936, line: 69, baseType: !961, size: 128, align: 64, offset: 512)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !100, line: 216, size: 128, align: 64, elements: !962)
!962 = !{!963, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !961, file: !100, line: 217, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !961, file: !100, line: 218, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !964}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !935, file: !936, line: 70, baseType: !970, size: 128, offset: 640)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 128, elements: !834)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !936, line: 54, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !971, file: !936, line: 55, baseType: !98, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !971, file: !936, line: 56, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !936, line: 56, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !675, file: !676, line: 872, baseType: !978, size: 512, offset: 6016)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 512, elements: !127)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !675, file: !676, line: 873, baseType: !388, size: 128, offset: 6528)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !675, file: !676, line: 874, baseType: !388, size: 128, offset: 6656)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !675, file: !676, line: 876, baseType: !982, size: 64, offset: 6784)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !984, line: 26, size: 192, elements: !985)
!984 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !983, file: !984, line: 27, baseType: !7, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !983, file: !984, line: 28, baseType: !988, size: 128, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !989, line: 43, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !988, file: !989, line: 44, baseType: !595)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !988, file: !989, line: 45, baseType: !388, size: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !675, file: !676, line: 879, baseType: !994, size: 64, offset: 6848)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !675, file: !676, line: 882, baseType: !994, size: 64, offset: 6912)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !675, file: !676, line: 884, baseType: !107, size: 64, offset: 6976)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !675, file: !676, line: 885, baseType: !107, size: 64, offset: 7040)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !675, file: !676, line: 890, baseType: !107, size: 64, offset: 7104)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !675, file: !676, line: 891, baseType: !1000, size: 128, offset: 7168)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !676, line: 242, size: 128, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1000, file: !676, line: 244, baseType: !107, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1000, file: !676, line: 245, baseType: !107, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1000, file: !676, line: 246, baseType: !595, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !675, file: !676, line: 900, baseType: !114, size: 64, offset: 7296)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !675, file: !676, line: 901, baseType: !114, size: 64, offset: 7360)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !675, file: !676, line: 904, baseType: !107, size: 64, offset: 7424)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !675, file: !676, line: 907, baseType: !107, size: 64, offset: 7488)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !675, file: !676, line: 910, baseType: !114, size: 64, offset: 7552)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !675, file: !676, line: 911, baseType: !114, size: 64, offset: 7616)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !675, file: !676, line: 914, baseType: !1012, size: 640, offset: 7680)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1013, line: 123, size: 640, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !{!1015, !1021, !1022}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1012, file: !1013, line: 124, baseType: !1016, size: 576)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 576, elements: !443)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1013, line: 108, size: 192, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1017, file: !1013, line: 109, baseType: !107, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1017, file: !1013, line: 110, baseType: !804, size: 128, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1012, file: !1013, line: 125, baseType: !7, size: 32, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1012, file: !1013, line: 126, baseType: !7, size: 32, offset: 608)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !675, file: !676, line: 917, baseType: !1024, size: 192, offset: 8320)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1013, line: 134, size: 192, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1024, file: !1013, line: 135, baseType: !961, size: 128, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1024, file: !1013, line: 136, baseType: !7, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !675, file: !676, line: 923, baseType: !1029, size: 64, offset: 8512)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1031)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !676, line: 923, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !675, file: !676, line: 926, baseType: !1029, size: 64, offset: 8576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !675, file: !676, line: 929, baseType: !1029, size: 64, offset: 8640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !675, file: !676, line: 933, baseType: !1035, size: 64, offset: 8704)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !676, line: 933, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !675, file: !676, line: 943, baseType: !1038, size: 128, offset: 8768)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !1039)
!1039 = !{!1040}
!1040 = !DISubrange(count: 16)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !675, file: !676, line: 945, baseType: !1042, size: 64, offset: 8896)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !676, line: 49, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !675, file: !676, line: 956, baseType: !1045, size: 64, offset: 8960)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !676, line: 45, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !675, file: !676, line: 959, baseType: !1048, size: 64, offset: 9024)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !676, line: 959, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !675, file: !676, line: 962, baseType: !1051, size: 64, offset: 9088)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !676, line: 66, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !675, file: !676, line: 966, baseType: !1054, size: 64, offset: 9152)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !676, line: 50, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !675, file: !676, line: 969, baseType: !1057, size: 64, offset: 9216)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1013, line: 223, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !675, file: !676, line: 970, baseType: !1060, size: 64, offset: 9280)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !676, line: 62, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !675, file: !676, line: 971, baseType: !1063, size: 64, offset: 9344)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1064, line: 25, baseType: !1065)
!1064 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1064, line: 23, size: 64, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1065, file: !1064, line: 24, baseType: !833, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !675, file: !676, line: 972, baseType: !1063, size: 64, offset: 9408)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !675, file: !676, line: 974, baseType: !1063, size: 64, offset: 9472)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !675, file: !676, line: 975, baseType: !1071, size: 192, offset: 9536)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1072, line: 30, size: 192, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1071, file: !1072, line: 31, baseType: !388, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1071, file: !1072, line: 32, baseType: !1063, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !675, file: !676, line: 976, baseType: !114, size: 64, offset: 9728)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !675, file: !676, line: 977, baseType: !111, size: 64, offset: 9792)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !675, file: !676, line: 978, baseType: !7, size: 32, offset: 9856)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !675, file: !676, line: 980, baseType: !964, size: 64, offset: 9920)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !675, file: !676, line: 989, baseType: !1081, size: 128, offset: 9984)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1082, line: 35, size: 128, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1081, file: !1082, line: 36, baseType: !98, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1081, file: !1082, line: 37, baseType: !570, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1081, file: !1082, line: 38, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1082, line: 23, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !675, file: !676, line: 992, baseType: !107, size: 64, offset: 10112)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !675, file: !676, line: 993, baseType: !107, size: 64, offset: 10176)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !675, file: !676, line: 996, baseType: !401, offset: 10240)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !675, file: !676, line: 999, baseType: !595, offset: 10240)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !675, file: !676, line: 1001, baseType: !1094, size: 64, offset: 10240)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !676, line: 636, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !676, line: 637, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !675, file: !676, line: 1005, baseType: !807, size: 128, offset: 10304)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !675, file: !676, line: 1007, baseType: !674, size: 64, offset: 10432)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !675, file: !676, line: 1009, baseType: !1101, size: 64, offset: 10496)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !676, line: 1009, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !675, file: !676, line: 1043, baseType: !101, size: 64, offset: 10560)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !675, file: !676, line: 1046, baseType: !1105, size: 64, offset: 10624)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !676, line: 41, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !675, file: !676, line: 1050, baseType: !1108, size: 64, offset: 10688)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !676, line: 42, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !675, file: !676, line: 1054, baseType: !1111, size: 64, offset: 10752)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !676, line: 55, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !675, file: !676, line: 1056, baseType: !1114, size: 64, offset: 10816)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !676, line: 40, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !675, file: !676, line: 1058, baseType: !1117, size: 64, offset: 10880)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !676, line: 47, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !675, file: !676, line: 1061, baseType: !1120, size: 64, offset: 10944)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !676, line: 43, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !675, file: !676, line: 1064, baseType: !114, size: 64, offset: 11008)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !675, file: !676, line: 1065, baseType: !1124, size: 64, offset: 11072)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1072, line: 14, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1072, line: 12, size: 384, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1072, line: 13, baseType: !1129, size: 384)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !1072, line: 13, size: 384, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1129, file: !1072, line: 13, baseType: !98, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1129, file: !1072, line: 13, baseType: !98, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1129, file: !1072, line: 13, baseType: !98, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1129, file: !1072, line: 13, baseType: !1135, size: 256, offset: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1136, line: 32, size: 256, elements: !1137)
!1136 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1137 = !{!1138, !1144, !1157, !1163, !1172, !1192, !1197}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1135, file: !1136, line: 37, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 34, size: 64, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1139, file: !1136, line: 35, baseType: !923, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1139, file: !1136, line: 36, baseType: !1143, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !104, line: 49, baseType: !7)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1135, file: !1136, line: 45, baseType: !1145, size: 192)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 40, size: 192, elements: !1146)
!1146 = !{!1147, !1149, !1150, !1156}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1145, file: !1136, line: 41, baseType: !1148, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !104, line: 95, baseType: !98)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1145, file: !1136, line: 42, baseType: !98, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1145, file: !1136, line: 43, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1136, line: 11, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1136, line: 8, size: 64, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1152, file: !1136, line: 9, baseType: !98, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1152, file: !1136, line: 10, baseType: !101, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1145, file: !1136, line: 44, baseType: !98, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1135, file: !1136, line: 52, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 48, size: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1158, file: !1136, line: 49, baseType: !923, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1158, file: !1136, line: 50, baseType: !1143, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1158, file: !1136, line: 51, baseType: !1151, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1135, file: !1136, line: 61, baseType: !1164, size: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 55, size: 256, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1171}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1164, file: !1136, line: 56, baseType: !923, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1164, file: !1136, line: 57, baseType: !1143, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1164, file: !1136, line: 58, baseType: !98, size: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1164, file: !1136, line: 59, baseType: !1170, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !104, line: 94, baseType: !475)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1164, file: !1136, line: 60, baseType: !1170, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1135, file: !1136, line: 95, baseType: !1173, size: 256)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 64, size: 256, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1173, file: !1136, line: 65, baseType: !101, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1136, line: 77, baseType: !1177, size: 192, offset: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1136, line: 77, size: 192, elements: !1178)
!1178 = !{!1179, !1180, !1187}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1177, file: !1136, line: 82, baseType: !663, size: 16)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1177, file: !1136, line: 88, baseType: !1181, size: 192)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !1136, line: 84, size: 192, elements: !1182)
!1182 = !{!1183, !1185, !1186}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1181, file: !1136, line: 85, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !137)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1181, file: !1136, line: 86, baseType: !101, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1181, file: !1136, line: 87, baseType: !101, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1177, file: !1136, line: 93, baseType: !1188, size: 96)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !1136, line: 90, size: 96, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1188, file: !1136, line: 91, baseType: !1184, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1188, file: !1136, line: 92, baseType: !182, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1135, file: !1136, line: 101, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 98, size: 128, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1193, file: !1136, line: 99, baseType: !476, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1193, file: !1136, line: 100, baseType: !98, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1135, file: !1136, line: 108, baseType: !1198, size: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1136, line: 104, size: 128, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1198, file: !1136, line: 105, baseType: !101, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1198, file: !1136, line: 106, baseType: !98, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1198, file: !1136, line: 107, baseType: !7, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !675, file: !676, line: 1067, baseType: !1204, offset: 11136)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1205, line: 12, elements: !415)
!1205 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !675, file: !676, line: 1099, baseType: !1207, size: 64, offset: 11136)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !676, line: 56, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !675, file: !676, line: 1103, baseType: !388, size: 128, offset: 11200)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !675, file: !676, line: 1104, baseType: !1211, size: 64, offset: 11328)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !676, line: 46, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !675, file: !676, line: 1105, baseType: !645, size: 192, offset: 11392)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !675, file: !676, line: 1106, baseType: !7, size: 32, offset: 11584)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !675, file: !676, line: 1109, baseType: !1216, size: 128, offset: 11648)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1217, size: 128, elements: !157)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !676, line: 51, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !675, file: !676, line: 1110, baseType: !645, size: 192, offset: 11776)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !675, file: !676, line: 1111, baseType: !388, size: 128, offset: 11968)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !675, file: !676, line: 1173, baseType: !1222, size: 64, offset: 12096)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1224, line: 62, size: 256, align: 256, elements: !1225)
!1224 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226, !1227, !1228, !1233}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1223, file: !1224, line: 75, baseType: !182, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1223, file: !1224, line: 90, baseType: !182, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1223, file: !1224, line: 124, baseType: !1229, size: 64, offset: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1224, line: 109, size: 64, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1229, file: !1224, line: 110, baseType: !109, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1229, file: !1224, line: 112, baseType: !109, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !1224, line: 144, baseType: !182, size: 32, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !675, file: !676, line: 1174, baseType: !181, size: 32, offset: 12160)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !675, file: !676, line: 1179, baseType: !114, size: 64, offset: 12224)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !675, file: !676, line: 1182, baseType: !1237, size: 128, offset: 12288)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !625, line: 76, size: 128, elements: !1238)
!1238 = !{!1239, !1244, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1237, file: !625, line: 85, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1241, line: 7, size: 64, elements: !1242)
!1241 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1240, file: !1241, line: 12, baseType: !830, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1237, file: !625, line: 88, baseType: !352, size: 8, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1237, file: !625, line: 95, baseType: !352, size: 8, offset: 72)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !676, line: 1184, baseType: !1247, size: 128, offset: 12416)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !676, line: 1184, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1247, file: !676, line: 1185, baseType: !688, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1247, file: !676, line: 1186, baseType: !961, size: 128, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !675, file: !676, line: 1190, baseType: !1252, size: 64, offset: 12544)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !322, line: 13, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !675, file: !676, line: 1192, baseType: !1255, size: 128, offset: 12608)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !625, line: 64, size: 128, elements: !1256)
!1256 = !{!1257, !1350, !1351}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1255, file: !625, line: 65, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !525, line: 68, size: 512, align: 128, elements: !1260)
!1260 = !{!1261, !1262, !1342, !1349}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !525, line: 69, baseType: !114, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !525, line: 77, baseType: !1263, size: 320, offset: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !525, line: 77, size: 320, elements: !1264)
!1264 = !{!1265, !1274, !1279, !1307, !1315, !1321, !1334, !1341}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 78, baseType: !1266, size: 320)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 78, size: 320, elements: !1267)
!1267 = !{!1268, !1269, !1272, !1273}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1266, file: !525, line: 84, baseType: !388, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1266, file: !525, line: 86, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !525, line: 26, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1266, file: !525, line: 87, baseType: !114, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1266, file: !525, line: 94, baseType: !114, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 96, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 96, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1275, file: !525, line: 101, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !100, line: 143, baseType: !107)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 103, baseType: !1280, size: 320)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 103, size: 320, elements: !1281)
!1281 = !{!1282, !1292, !1295, !1296}
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !525, line: 104, baseType: !1283, size: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !525, line: 104, size: 128, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1283, file: !525, line: 105, baseType: !388, size: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !525, line: 106, baseType: !1287, size: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !525, line: 106, size: 128, elements: !1288)
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1287, file: !525, line: 107, baseType: !1258, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1287, file: !525, line: 109, baseType: !98, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1287, file: !525, line: 110, baseType: !98, size: 32, offset: 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1280, file: !525, line: 117, baseType: !1293, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !525, line: 117, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1280, file: !525, line: 119, baseType: !101, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !525, line: 120, baseType: !1297, size: 64, offset: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !525, line: 120, size: 64, elements: !1298)
!1298 = !{!1299, !1300, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1297, file: !525, line: 121, baseType: !101, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1297, file: !525, line: 122, baseType: !114, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !525, line: 123, baseType: !1302, size: 32)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1297, file: !525, line: 123, size: 32, elements: !1303)
!1303 = !{!1304, !1305, !1306}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1302, file: !525, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1302, file: !525, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1302, file: !525, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 130, baseType: !1308, size: 192)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 130, size: 192, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1308, file: !525, line: 131, baseType: !114, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1308, file: !525, line: 134, baseType: !122, size: 8, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1308, file: !525, line: 135, baseType: !122, size: 8, offset: 72)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1308, file: !525, line: 136, baseType: !570, size: 32, offset: 96)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1308, file: !525, line: 137, baseType: !7, size: 32, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 139, baseType: !1316, size: 256)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 139, size: 256, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1316, file: !525, line: 140, baseType: !114, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1316, file: !525, line: 141, baseType: !570, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1316, file: !525, line: 143, baseType: !388, size: 128, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 145, baseType: !1322, size: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 145, size: 256, elements: !1323)
!1323 = !{!1324, !1325, !1327, !1328, !1333}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1322, file: !525, line: 146, baseType: !114, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1322, file: !525, line: 147, baseType: !1326, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !517, line: 509, baseType: !1258)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1322, file: !525, line: 148, baseType: !114, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !525, line: 149, baseType: !1329, size: 64, offset: 192)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !525, line: 149, size: 64, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1329, file: !525, line: 150, baseType: !541, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1329, file: !525, line: 151, baseType: !570, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1322, file: !525, line: 156, baseType: !401, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !525, line: 159, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !525, line: 159, size: 128, elements: !1336)
!1336 = !{!1337, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1335, file: !525, line: 161, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !525, line: 161, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1335, file: !525, line: 162, baseType: !101, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1263, file: !525, line: 176, baseType: !961, size: 128, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !525, line: 179, baseType: !1343, size: 32, offset: 384)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !525, line: 179, size: 32, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1343, file: !525, line: 184, baseType: !570, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1343, file: !525, line: 192, baseType: !7, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1343, file: !525, line: 194, baseType: !7, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1343, file: !525, line: 195, baseType: !98, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1259, file: !525, line: 199, baseType: !570, size: 32, offset: 416)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1255, file: !625, line: 67, baseType: !182, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1255, file: !625, line: 68, baseType: !182, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !675, file: !676, line: 1206, baseType: !98, size: 32, offset: 12736)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !675, file: !676, line: 1207, baseType: !98, size: 32, offset: 12768)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !675, file: !676, line: 1209, baseType: !114, size: 64, offset: 12800)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !675, file: !676, line: 1219, baseType: !107, size: 64, offset: 12864)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !675, file: !676, line: 1220, baseType: !107, size: 64, offset: 12928)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !675, file: !676, line: 1317, baseType: !98, size: 32, offset: 12992)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !675, file: !676, line: 1319, baseType: !674, size: 64, offset: 13056)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !675, file: !676, line: 1322, baseType: !1360, size: 64, offset: 13120)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1362, line: 56, size: 512, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1370, !1371, !1372}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1361, file: !1362, line: 57, baseType: !1360, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1361, file: !1362, line: 58, baseType: !101, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1361, file: !1362, line: 59, baseType: !114, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1362, line: 60, baseType: !114, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1361, file: !1362, line: 61, baseType: !1369, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1361, file: !1362, line: 62, baseType: !7, size: 32, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1361, file: !1362, line: 63, baseType: !267, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1361, file: !1362, line: 64, baseType: !1373, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !675, file: !676, line: 1326, baseType: !688, size: 32, offset: 13184)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !675, file: !676, line: 1342, baseType: !101, size: 64, offset: 13248)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !675, file: !676, line: 1343, baseType: !109, size: 64, offset: 13312)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !675, file: !676, line: 1344, baseType: !107, size: 64, offset: 13376)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !675, file: !676, line: 1345, baseType: !109, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !675, file: !676, line: 1346, baseType: !109, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !675, file: !676, line: 1347, baseType: !109, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !675, file: !676, line: 1348, baseType: !961, size: 128, align: 64, offset: 13504)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !675, file: !676, line: 1358, baseType: !1384, size: 34816, offset: 13824)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1385, line: 485, size: 34816, elements: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1416, !1417, !1418, !1419, !1420, !1421, !1424, !1425, !1426}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1384, file: !1385, line: 487, baseType: !1388, size: 192)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1389, size: 192, elements: !443)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1390, line: 16, size: 64, elements: !1391)
!1390 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1389, file: !1390, line: 17, baseType: !658, size: 16)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1389, file: !1390, line: 18, baseType: !658, size: 16, offset: 16)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1389, file: !1390, line: 19, baseType: !658, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1389, file: !1390, line: 19, baseType: !658, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1389, file: !1390, line: 19, baseType: !658, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1389, file: !1390, line: 19, baseType: !658, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1389, file: !1390, line: 19, baseType: !658, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1389, file: !1390, line: 20, baseType: !658, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1389, file: !1390, line: 20, baseType: !658, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1389, file: !1390, line: 20, baseType: !658, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1389, file: !1390, line: 20, baseType: !658, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1389, file: !1390, line: 20, baseType: !658, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1389, file: !1390, line: 20, baseType: !658, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1384, file: !1385, line: 491, baseType: !114, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1384, file: !1385, line: 495, baseType: !483, size: 16, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1384, file: !1385, line: 496, baseType: !483, size: 16, offset: 272)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1384, file: !1385, line: 497, baseType: !483, size: 16, offset: 288)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1384, file: !1385, line: 498, baseType: !483, size: 16, offset: 304)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1384, file: !1385, line: 502, baseType: !114, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1384, file: !1385, line: 503, baseType: !114, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1384, file: !1385, line: 514, baseType: !1413, size: 256, offset: 448)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1414, size: 256, elements: !127)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1385, line: 483, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1384, file: !1385, line: 516, baseType: !114, size: 64, offset: 704)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1384, file: !1385, line: 518, baseType: !114, size: 64, offset: 768)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1384, file: !1385, line: 520, baseType: !114, size: 64, offset: 832)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1384, file: !1385, line: 521, baseType: !114, size: 64, offset: 896)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1384, file: !1385, line: 522, baseType: !114, size: 64, offset: 960)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1384, file: !1385, line: 528, baseType: !1422, size: 64, offset: 1024)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1385, line: 10, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1384, file: !1385, line: 535, baseType: !114, size: 64, offset: 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1384, file: !1385, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1384, file: !1385, line: 540, baseType: !1427, size: 33280, offset: 1536)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1428, line: 317, size: 33280, elements: !1429)
!1428 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1427, file: !1428, line: 330, baseType: !7, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1427, file: !1428, line: 337, baseType: !114, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1427, file: !1428, line: 348, baseType: !1433, size: 32768, offset: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1428, line: 304, size: 32768, elements: !1434)
!1434 = !{!1435, !1450, !1489, !1539, !1556}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1433, file: !1428, line: 305, baseType: !1436, size: 896)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1428, line: 12, size: 896, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1449}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1436, file: !1428, line: 13, baseType: !181, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1436, file: !1428, line: 14, baseType: !181, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1436, file: !1428, line: 15, baseType: !181, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1436, file: !1428, line: 16, baseType: !181, size: 32, offset: 96)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1436, file: !1428, line: 17, baseType: !181, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1436, file: !1428, line: 18, baseType: !181, size: 32, offset: 160)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1436, file: !1428, line: 19, baseType: !181, size: 32, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1436, file: !1428, line: 22, baseType: !1446, size: 640, offset: 224)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 640, elements: !1447)
!1447 = !{!1448}
!1448 = !DISubrange(count: 20)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1436, file: !1428, line: 25, baseType: !181, size: 32, offset: 864)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1433, file: !1428, line: 306, baseType: !1451, size: 4096, align: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1428, line: 34, size: 4096, align: 128, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1472, !1473, !1474, !1478, !1480, !1484}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1451, file: !1428, line: 35, baseType: !658, size: 16)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1451, file: !1428, line: 36, baseType: !658, size: 16, offset: 16)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1451, file: !1428, line: 37, baseType: !658, size: 16, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1451, file: !1428, line: 38, baseType: !658, size: 16, offset: 48)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1428, line: 39, baseType: !1458, size: 128, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !1428, line: 39, size: 128, elements: !1459)
!1459 = !{!1460, !1465}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1428, line: 40, baseType: !1461, size: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !1428, line: 40, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1461, file: !1428, line: 41, baseType: !107, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1461, file: !1428, line: 42, baseType: !107, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1428, line: 44, baseType: !1466, size: 128)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !1428, line: 44, size: 128, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1466, file: !1428, line: 45, baseType: !181, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1466, file: !1428, line: 46, baseType: !181, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1466, file: !1428, line: 47, baseType: !181, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1466, file: !1428, line: 48, baseType: !181, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1451, file: !1428, line: 51, baseType: !181, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1451, file: !1428, line: 52, baseType: !181, size: 32, offset: 224)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1451, file: !1428, line: 55, baseType: !1475, size: 1024, offset: 256)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1024, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1451, file: !1428, line: 58, baseType: !1479, size: 2048, offset: 1280)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 2048, elements: !447)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1451, file: !1428, line: 60, baseType: !1481, size: 384, offset: 3328)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 384, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 12)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !1428, line: 62, baseType: !1485, size: 384, offset: 3712)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !1428, line: 62, size: 384, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1485, file: !1428, line: 63, baseType: !1481, size: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1485, file: !1428, line: 64, baseType: !1481, size: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1433, file: !1428, line: 307, baseType: !1490, size: 1088)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1428, line: 79, size: 1088, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1538}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1490, file: !1428, line: 80, baseType: !181, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1490, file: !1428, line: 81, baseType: !181, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1490, file: !1428, line: 82, baseType: !181, size: 32, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1490, file: !1428, line: 83, baseType: !181, size: 32, offset: 96)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1490, file: !1428, line: 84, baseType: !181, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1490, file: !1428, line: 85, baseType: !181, size: 32, offset: 160)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1490, file: !1428, line: 86, baseType: !181, size: 32, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1490, file: !1428, line: 88, baseType: !1446, size: 640, offset: 224)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1490, file: !1428, line: 89, baseType: !120, size: 8, offset: 864)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1490, file: !1428, line: 90, baseType: !120, size: 8, offset: 872)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1490, file: !1428, line: 91, baseType: !120, size: 8, offset: 880)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1490, file: !1428, line: 92, baseType: !120, size: 8, offset: 888)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1490, file: !1428, line: 93, baseType: !120, size: 8, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1490, file: !1428, line: 94, baseType: !120, size: 8, offset: 904)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1490, file: !1428, line: 95, baseType: !1507, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1509, line: 11, size: 128, elements: !1510)
!1509 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1508, file: !1509, line: 12, baseType: !476, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1508, file: !1509, line: 13, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1515, line: 56, size: 1344, elements: !1516)
!1515 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1514, file: !1515, line: 61, baseType: !114, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1514, file: !1515, line: 62, baseType: !114, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1514, file: !1515, line: 63, baseType: !114, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1514, file: !1515, line: 64, baseType: !114, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1514, file: !1515, line: 65, baseType: !114, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1514, file: !1515, line: 66, baseType: !114, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1514, file: !1515, line: 68, baseType: !114, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1514, file: !1515, line: 69, baseType: !114, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1514, file: !1515, line: 70, baseType: !114, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1514, file: !1515, line: 71, baseType: !114, size: 64, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1514, file: !1515, line: 72, baseType: !114, size: 64, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1514, file: !1515, line: 73, baseType: !114, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1514, file: !1515, line: 74, baseType: !114, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1514, file: !1515, line: 75, baseType: !114, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1514, file: !1515, line: 76, baseType: !114, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1514, file: !1515, line: 81, baseType: !114, size: 64, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1514, file: !1515, line: 83, baseType: !114, size: 64, offset: 1024)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1514, file: !1515, line: 84, baseType: !114, size: 64, offset: 1088)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1515, line: 85, baseType: !114, size: 64, offset: 1152)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1514, file: !1515, line: 86, baseType: !114, size: 64, offset: 1216)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1514, file: !1515, line: 87, baseType: !114, size: 64, offset: 1280)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1490, file: !1428, line: 96, baseType: !181, size: 32, offset: 1024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1433, file: !1428, line: 308, baseType: !1540, size: 4608, align: 512)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1428, line: 289, size: 4608, align: 512, elements: !1541)
!1541 = !{!1542, !1543, !1552}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1540, file: !1428, line: 290, baseType: !1451, size: 4096, align: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1540, file: !1428, line: 291, baseType: !1544, size: 512, offset: 4096)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1428, line: 268, size: 512, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1544, file: !1428, line: 269, baseType: !107, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1544, file: !1428, line: 270, baseType: !107, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1544, file: !1428, line: 271, baseType: !1549, size: 384, offset: 128)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 384, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 6)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1540, file: !1428, line: 292, baseType: !1553, offset: 4608)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 0)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1433, file: !1428, line: 309, baseType: !1557, size: 32768)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32768, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 4096)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !525, line: 378, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !667, file: !525, line: 384, baseType: !983, size: 192, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !545, file: !525, line: 500, baseType: !401, offset: 6656)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !545, file: !525, line: 501, baseType: !1565, size: 64, offset: 6656)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !525, line: 387, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !545, file: !525, line: 516, baseType: !1568, size: 64, offset: 6720)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !525, line: 516, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !545, file: !525, line: 519, baseType: !515, size: 64, offset: 6784)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !545, file: !525, line: 521, baseType: !1572, size: 64, offset: 6848)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !525, line: 521, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !545, file: !525, line: 545, baseType: !570, size: 32, offset: 6912)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !545, file: !525, line: 548, baseType: !352, size: 8, offset: 6944)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !545, file: !525, line: 550, baseType: !1577, offset: 6952)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1578, line: 142, elements: !415)
!1578 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !545, file: !525, line: 554, baseType: !1580, size: 256, offset: 6976)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1581, line: 102, size: 256, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1580, file: !1581, line: 103, baseType: !578, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1580, file: !1581, line: 104, baseType: !388, size: 128, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1580, file: !1581, line: 105, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1581, line: 21, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !545, file: !525, line: 557, baseType: !181, size: 32, offset: 7232)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !542, file: !525, line: 565, baseType: !1593, offset: 7296)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: -1)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !524, file: !525, line: 333, baseType: !1597, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !517, line: 284, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !517, line: 284, size: 64, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1598, file: !517, line: 284, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !568, line: 19, baseType: !114)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !524, file: !525, line: 334, baseType: !114, size: 64, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !524, file: !525, line: 343, baseType: !1604, size: 256, offset: 704)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !525, line: 340, size: 256, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1604, file: !525, line: 341, baseType: !532, size: 192, align: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1604, file: !525, line: 342, baseType: !114, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !524, file: !525, line: 351, baseType: !388, size: 128, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !524, file: !525, line: 353, baseType: !1610, size: 64, offset: 1088)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !525, line: 353, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !524, file: !525, line: 356, baseType: !1613, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !525, line: 356, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !524, file: !525, line: 359, baseType: !114, size: 64, offset: 1216)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !524, file: !525, line: 361, baseType: !515, size: 64, offset: 1280)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !524, file: !525, line: 362, baseType: !101, size: 64, offset: 1344)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !524, file: !525, line: 365, baseType: !578, size: 64, offset: 1408)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !524, file: !525, line: 373, baseType: !1621, offset: 1472)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !525, line: 296, elements: !415)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !494, file: !467, line: 90, baseType: !489, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !494, file: !467, line: 91, baseType: !1624, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !457, file: !384, line: 143, baseType: !1626, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1629, !394}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1632)
!1632 = !{!1633, !1634, !1638, !1642, !1648, !1652}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1631, file: !18, line: 40, baseType: !17, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1631, file: !18, line: 41, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!352}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1631, file: !18, line: 42, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!101}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1631, file: !18, line: 43, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1373, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1631, file: !18, line: 44, baseType: !1649, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1373}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1631, file: !18, line: 45, baseType: !1653, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !101}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !457, file: !384, line: 144, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1373, !394}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !457, file: !384, line: 145, baseType: !1661, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !394, !1664, !1671}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1666, line: 23, baseType: !1667)
!1666 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1666, line: 21, size: 32, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1667, file: !1666, line: 22, baseType: !1670, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !100, line: 32, baseType: !1143)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1666, line: 28, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1666, line: 26, size: 32, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1673, file: !1666, line: 27, baseType: !1676, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !100, line: 33, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !104, line: 50, baseType: !7)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !383, file: !384, line: 70, baseType: !1679, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1681, line: 123, size: 1024, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1824, !1825, !1826, !1827, !1828}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1680, file: !1681, line: 124, baseType: !570, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1680, file: !1681, line: 125, baseType: !570, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1680, file: !1681, line: 135, baseType: !1679, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1680, file: !1681, line: 136, baseType: !196, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1680, file: !1681, line: 138, baseType: !532, size: 192, align: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1680, file: !1681, line: 140, baseType: !1373, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1680, file: !1681, line: 141, baseType: !7, size: 32, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1681, line: 142, baseType: !1691, size: 256, offset: 512)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !1681, line: 142, size: 256, elements: !1692)
!1692 = !{!1693, !1747, !1751}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1691, file: !1681, line: 143, baseType: !1694, size: 192)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1681, line: 91, size: 192, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1694, file: !1681, line: 92, baseType: !114, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1694, file: !1681, line: 94, baseType: !549, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1694, file: !1681, line: 100, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1681, line: 180, size: 704, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1717, !1718, !1719, !1745, !1746}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1700, file: !1681, line: 182, baseType: !1679, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !1681, line: 183, baseType: !7, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1700, file: !1681, line: 186, baseType: !1705, size: 192, offset: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1706, line: 19, size: 192, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1715, !1716}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1705, file: !1706, line: 20, baseType: !1709, size: 128)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1710, line: 292, size: 128, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1709, file: !1710, line: 293, baseType: !401)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1709, file: !1710, line: 295, baseType: !99, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1709, file: !1710, line: 296, baseType: !101, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1705, file: !1706, line: 21, baseType: !7, size: 32, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1705, file: !1706, line: 22, baseType: !7, size: 32, offset: 160)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1700, file: !1681, line: 187, baseType: !181, size: 32, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1700, file: !1681, line: 188, baseType: !181, size: 32, offset: 352)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1700, file: !1681, line: 189, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1681, line: 168, size: 320, elements: !1722)
!1722 = !{!1723, !1729, !1733, !1737, !1741}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1721, file: !1681, line: 169, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!98, !1727, !1699}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !517, line: 539, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1721, file: !1681, line: 171, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!98, !1679, !196, !482}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1721, file: !1681, line: 173, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!98, !1679}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1721, file: !1681, line: 174, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!98, !1679, !1679, !196}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1721, file: !1681, line: 176, baseType: !1742, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!98, !1727, !1679, !1699}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1700, file: !1681, line: 192, baseType: !388, size: 128, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1700, file: !1681, line: 194, baseType: !954, size: 128, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1691, file: !1681, line: 144, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1681, line: 103, size: 64, elements: !1749)
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1748, file: !1681, line: 104, baseType: !1679, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1691, file: !1681, line: 145, baseType: !1752, size: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1681, line: 107, size: 256, elements: !1753)
!1753 = !{!1754, !1819, !1822, !1823}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1752, file: !1681, line: 108, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1681, line: 217, size: 768, elements: !1758)
!1758 = !{!1759, !1779, !1783, !1787, !1792, !1796, !1800, !1804, !1805, !1806, !1807, !1815}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1757, file: !1681, line: 222, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!98, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1681, line: 197, size: 1088, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1764, file: !1681, line: 199, baseType: !1679, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1764, file: !1681, line: 200, baseType: !515, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1764, file: !1681, line: 201, baseType: !1727, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1764, file: !1681, line: 202, baseType: !101, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1764, file: !1681, line: 205, baseType: !645, size: 192, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1764, file: !1681, line: 206, baseType: !645, size: 192, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1764, file: !1681, line: 207, baseType: !98, size: 32, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1764, file: !1681, line: 208, baseType: !388, size: 128, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1764, file: !1681, line: 209, baseType: !442, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1764, file: !1681, line: 211, baseType: !111, size: 64, offset: 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1764, file: !1681, line: 212, baseType: !352, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1764, file: !1681, line: 213, baseType: !352, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1764, file: !1681, line: 214, baseType: !1613, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1757, file: !1681, line: 223, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !1763}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1757, file: !1681, line: 236, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!98, !1727, !101}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1757, file: !1681, line: 238, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!101, !1727, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1757, file: !1681, line: 239, baseType: !1793, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!101, !1727, !101, !1791}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1757, file: !1681, line: 240, baseType: !1797, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1727, !101}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1757, file: !1681, line: 242, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!473, !1763, !442, !111, !102}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1757, file: !1681, line: 252, baseType: !111, size: 64, offset: 448)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1757, file: !1681, line: 259, baseType: !352, size: 8, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1757, file: !1681, line: 260, baseType: !1801, size: 64, offset: 576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1757, file: !1681, line: 263, baseType: !1808, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1811, !1763, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1812, line: 52, baseType: !7)
!1812 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1681, line: 27, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1757, file: !1681, line: 266, baseType: !1816, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!98, !1763, !523}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1752, file: !1681, line: 109, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1681, line: 31, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1752, file: !1681, line: 110, baseType: !102, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1752, file: !1681, line: 111, baseType: !1679, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1680, file: !1681, line: 148, baseType: !101, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1680, file: !1681, line: 154, baseType: !107, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1680, file: !1681, line: 156, baseType: !483, size: 16, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1680, file: !1681, line: 157, baseType: !482, size: 16, offset: 912)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1680, file: !1681, line: 158, baseType: !1829, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1681, line: 32, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !383, file: !384, line: 71, baseType: !1832, size: 32, offset: 448)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1833, line: 19, size: 32, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1832, file: !1833, line: 20, baseType: !688, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !383, file: !384, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !383, file: !384, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !383, file: !384, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !383, file: !384, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !383, file: !384, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !380, file: !30, line: 463, baseType: !1842, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !380, file: !30, line: 465, baseType: !1844, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !380, file: !30, line: 467, baseType: !196, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !30, line: 468, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1858, !1863, !1867}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1850, file: !30, line: 88, baseType: !196, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1850, file: !30, line: 89, baseType: !491, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1850, file: !30, line: 90, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!98, !1842, !437}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1850, file: !30, line: 91, baseType: !1859, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!442, !1842, !1862, !1664, !1671}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1850, file: !30, line: 93, baseType: !1864, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1842}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1850, file: !30, line: 95, baseType: !1868, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1871)
!1871 = !{!1872, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1870, file: !37, line: 279, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!98, !1842}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1870, file: !37, line: 280, baseType: !1864, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1870, file: !37, line: 281, baseType: !1873, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1870, file: !37, line: 282, baseType: !1873, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1870, file: !37, line: 283, baseType: !1873, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1870, file: !37, line: 284, baseType: !1873, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1870, file: !37, line: 285, baseType: !1873, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1870, file: !37, line: 286, baseType: !1873, size: 64, offset: 448)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1870, file: !37, line: 287, baseType: !1873, size: 64, offset: 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1870, file: !37, line: 288, baseType: !1873, size: 64, offset: 576)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1870, file: !37, line: 289, baseType: !1873, size: 64, offset: 640)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1870, file: !37, line: 290, baseType: !1873, size: 64, offset: 704)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1870, file: !37, line: 291, baseType: !1873, size: 64, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1870, file: !37, line: 292, baseType: !1873, size: 64, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1870, file: !37, line: 293, baseType: !1873, size: 64, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1870, file: !37, line: 294, baseType: !1873, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1870, file: !37, line: 295, baseType: !1873, size: 64, offset: 1024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1870, file: !37, line: 296, baseType: !1873, size: 64, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1870, file: !37, line: 297, baseType: !1873, size: 64, offset: 1152)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1870, file: !37, line: 298, baseType: !1873, size: 64, offset: 1216)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1870, file: !37, line: 299, baseType: !1873, size: 64, offset: 1280)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1870, file: !37, line: 300, baseType: !1873, size: 64, offset: 1344)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1870, file: !37, line: 301, baseType: !1873, size: 64, offset: 1408)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !380, file: !30, line: 470, baseType: !1899, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1901, line: 82, size: 1408, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1985, !1988, !1991}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1900, file: !1901, line: 83, baseType: !196, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1900, file: !1901, line: 84, baseType: !196, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1900, file: !1901, line: 85, baseType: !1842, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1900, file: !1901, line: 86, baseType: !491, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1900, file: !1901, line: 87, baseType: !491, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1900, file: !1901, line: 88, baseType: !491, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1900, file: !1901, line: 90, baseType: !1910, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!98, !1842, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1936, !1949, !1950, !1951, !1952, !1953, !1961, !1962, !1963, !1964, !1965, !1966}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1914, file: !24, line: 96, baseType: !196, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1914, file: !24, line: 97, baseType: !1899, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1914, file: !24, line: 99, baseType: !376, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1914, file: !24, line: 100, baseType: !196, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1914, file: !24, line: 102, baseType: !352, size: 8, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1914, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1914, file: !24, line: 105, baseType: !1923, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1925)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1926, line: 262, size: 1600, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !{!1928, !1930, !1931, !1935}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1925, file: !1926, line: 263, baseType: !1929, size: 256)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !1476)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1925, file: !1926, line: 264, baseType: !1929, size: 256, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1925, file: !1926, line: 265, baseType: !1932, size: 1024, offset: 512)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 1024, elements: !1933)
!1933 = !{!1934}
!1934 = !DISubrange(count: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1925, file: !1926, line: 266, baseType: !1373, size: 64, offset: 1536)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1914, file: !24, line: 106, baseType: !1937, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1926, line: 210, size: 256, elements: !1940)
!1940 = !{!1941, !1945, !1947, !1948}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1939, file: !1926, line: 211, baseType: !1942, size: 72)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 72, elements: !1943)
!1943 = !{!1944}
!1944 = !DISubrange(count: 9)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1939, file: !1926, line: 212, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1926, line: 14, baseType: !114)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1939, file: !1926, line: 213, baseType: !182, size: 32, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1939, file: !1926, line: 214, baseType: !182, size: 32, offset: 224)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1914, file: !24, line: 108, baseType: !1873, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1914, file: !24, line: 109, baseType: !1864, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1914, file: !24, line: 110, baseType: !1873, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1914, file: !24, line: 111, baseType: !1864, size: 64, offset: 640)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1914, file: !24, line: 112, baseType: !1954, size: 64, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!98, !1842, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1958, file: !37, line: 51, baseType: !98, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1914, file: !24, line: 113, baseType: !1873, size: 64, offset: 768)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1914, file: !24, line: 114, baseType: !491, size: 64, offset: 832)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1914, file: !24, line: 115, baseType: !491, size: 64, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1914, file: !24, line: 117, baseType: !1868, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1914, file: !24, line: 118, baseType: !1864, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1914, file: !24, line: 120, baseType: !1967, size: 64, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1900, file: !1901, line: 91, baseType: !1855, size: 64, offset: 448)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1900, file: !1901, line: 92, baseType: !1873, size: 64, offset: 512)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1900, file: !1901, line: 93, baseType: !1864, size: 64, offset: 576)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1900, file: !1901, line: 94, baseType: !1873, size: 64, offset: 640)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1900, file: !1901, line: 95, baseType: !1864, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1900, file: !1901, line: 97, baseType: !1873, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1900, file: !1901, line: 98, baseType: !1873, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1900, file: !1901, line: 100, baseType: !1954, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1900, file: !1901, line: 101, baseType: !1873, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1900, file: !1901, line: 103, baseType: !1873, size: 64, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1900, file: !1901, line: 105, baseType: !1873, size: 64, offset: 1088)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1900, file: !1901, line: 107, baseType: !1868, size: 64, offset: 1152)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1900, file: !1901, line: 109, baseType: !1982, size: 64, offset: 1216)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1901, line: 109, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1900, file: !1901, line: 111, baseType: !1986, size: 64, offset: 1280)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1901, line: 111, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1900, file: !1901, line: 112, baseType: !1989, offset: 1344)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1990, line: 187, elements: !415)
!1990 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1900, file: !1901, line: 114, baseType: !352, size: 8, offset: 1344)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !380, file: !30, line: 471, baseType: !1913, size: 64, offset: 832)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !380, file: !30, line: 473, baseType: !101, size: 64, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !380, file: !30, line: 475, baseType: !101, size: 64, offset: 960)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !380, file: !30, line: 480, baseType: !645, size: 192, offset: 1024)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !380, file: !30, line: 484, baseType: !1997, size: 576, offset: 1216)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1997, file: !30, line: 362, baseType: !388, size: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1997, file: !30, line: 363, baseType: !388, size: 128, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1997, file: !30, line: 364, baseType: !388, size: 128, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1997, file: !30, line: 365, baseType: !388, size: 128, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1997, file: !30, line: 366, baseType: !352, size: 8, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1997, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !380, file: !30, line: 485, baseType: !2006, size: 2304, offset: 1792)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2103, !2107}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2006, file: !37, line: 566, baseType: !1957, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2006, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2006, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2006, file: !37, line: 569, baseType: !352, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2006, file: !37, line: 570, baseType: !352, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2006, file: !37, line: 571, baseType: !352, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2006, file: !37, line: 572, baseType: !352, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2006, file: !37, line: 573, baseType: !352, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2006, file: !37, line: 574, baseType: !352, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2006, file: !37, line: 575, baseType: !352, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2006, file: !37, line: 576, baseType: !352, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2006, file: !37, line: 577, baseType: !181, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2006, file: !37, line: 578, baseType: !401, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2006, file: !37, line: 580, baseType: !388, size: 128, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2006, file: !37, line: 581, baseType: !983, size: 192, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2006, file: !37, line: 582, baseType: !2024, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2026, line: 43, size: 1472, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2035, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2025, file: !2026, line: 44, baseType: !196, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2025, file: !2026, line: 45, baseType: !98, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2025, file: !2026, line: 46, baseType: !388, size: 128, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2025, file: !2026, line: 47, baseType: !401, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2025, file: !2026, line: 48, baseType: !2033, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2025, file: !2026, line: 49, baseType: !2036, size: 320, offset: 320)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2037, line: 11, size: 320, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2046}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2036, file: !2037, line: 16, baseType: !947, size: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2036, file: !2037, line: 17, baseType: !114, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2036, file: !2037, line: 18, baseType: !2042, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 19, baseType: !181, size: 32, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2025, file: !2026, line: 50, baseType: !114, size: 64, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2025, file: !2026, line: 51, baseType: !758, size: 64, offset: 704)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2025, file: !2026, line: 52, baseType: !758, size: 64, offset: 768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2025, file: !2026, line: 53, baseType: !758, size: 64, offset: 832)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2025, file: !2026, line: 54, baseType: !758, size: 64, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2025, file: !2026, line: 55, baseType: !758, size: 64, offset: 960)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2025, file: !2026, line: 56, baseType: !114, size: 64, offset: 1024)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2025, file: !2026, line: 57, baseType: !114, size: 64, offset: 1088)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2025, file: !2026, line: 58, baseType: !114, size: 64, offset: 1152)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2025, file: !2026, line: 59, baseType: !114, size: 64, offset: 1216)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2025, file: !2026, line: 60, baseType: !114, size: 64, offset: 1280)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2025, file: !2026, line: 61, baseType: !1842, size: 64, offset: 1344)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2025, file: !2026, line: 62, baseType: !352, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2025, file: !2026, line: 63, baseType: !352, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2006, file: !37, line: 583, baseType: !352, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2006, file: !37, line: 584, baseType: !352, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2006, file: !37, line: 585, baseType: !352, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2006, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2006, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2006, file: !37, line: 592, baseType: !750, size: 512, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2006, file: !37, line: 593, baseType: !107, size: 64, offset: 1088)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2006, file: !37, line: 594, baseType: !1580, size: 256, offset: 1152)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2006, file: !37, line: 595, baseType: !954, size: 128, offset: 1408)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2006, file: !37, line: 596, baseType: !2033, size: 64, offset: 1536)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2006, file: !37, line: 597, baseType: !570, size: 32, offset: 1600)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2006, file: !37, line: 598, baseType: !570, size: 32, offset: 1632)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2006, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2006, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2006, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2006, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2006, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2006, file: !37, line: 604, baseType: !352, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2006, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2006, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2006, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2006, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2006, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2006, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2006, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2006, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2006, file: !37, line: 613, baseType: !98, size: 32, offset: 1792)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2006, file: !37, line: 614, baseType: !98, size: 32, offset: 1824)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2006, file: !37, line: 615, baseType: !107, size: 64, offset: 1856)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2006, file: !37, line: 616, baseType: !107, size: 64, offset: 1920)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2006, file: !37, line: 617, baseType: !107, size: 64, offset: 1984)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2006, file: !37, line: 618, baseType: !107, size: 64, offset: 2048)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2006, file: !37, line: 620, baseType: !2094, size: 64, offset: 2112)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2096)
!2096 = !{!2097, !2098, !2099, !2100}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !37, line: 537, baseType: !401)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2095, file: !37, line: 538, baseType: !7, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2095, file: !37, line: 540, baseType: !388, size: 128, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2095, file: !37, line: 543, baseType: !2101, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2006, file: !37, line: 621, baseType: !2104, size: 64, offset: 2176)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !1842, !907}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2006, file: !37, line: 622, baseType: !2108, size: 64, offset: 2240)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !380, file: !30, line: 486, baseType: !2111, size: 64, offset: 4096)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2120, !2121, !2122}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2112, file: !37, line: 643, baseType: !1870, size: 1472)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2112, file: !37, line: 644, baseType: !1873, size: 64, offset: 1472)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2112, file: !37, line: 645, baseType: !2117, size: 64, offset: 1536)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !1842, !352}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2112, file: !37, line: 646, baseType: !1873, size: 64, offset: 1600)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2112, file: !37, line: 647, baseType: !1864, size: 64, offset: 1664)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2112, file: !37, line: 648, baseType: !1864, size: 64, offset: 1728)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !380, file: !30, line: 493, baseType: !2124, size: 64, offset: 4160)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !380, file: !30, line: 499, baseType: !388, size: 128, offset: 4224)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !380, file: !30, line: 502, baseType: !2128, size: 64, offset: 4352)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !380, file: !30, line: 504, baseType: !2132, size: 64, offset: 4416)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !380, file: !30, line: 505, baseType: !107, size: 64, offset: 4480)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !380, file: !30, line: 510, baseType: !107, size: 64, offset: 4544)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !380, file: !30, line: 511, baseType: !2136, size: 64, offset: 4608)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !380, file: !30, line: 513, baseType: !2140, size: 64, offset: 4672)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2141, file: !30, line: 293, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2141, file: !30, line: 294, baseType: !114, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !380, file: !30, line: 515, baseType: !388, size: 128, offset: 4736)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !380, file: !30, line: 526, baseType: !2147, offset: 4864)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2148, line: 5, elements: !415)
!2148 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !380, file: !30, line: 528, baseType: !2150, size: 64, offset: 4864)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2152, line: 51, size: 1344, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2157, !2158, !2248, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2151, file: !2152, line: 52, baseType: !196, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2151, file: !2152, line: 53, baseType: !2156, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2152, line: 28, baseType: !181)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2151, file: !2152, line: 54, baseType: !196, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2151, file: !2152, line: 55, baseType: !2159, size: 192, offset: 192)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2160, line: 17, size: 192, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2164, !2247}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2159, file: !2160, line: 18, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2159, file: !2160, line: 19, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2167)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2160, line: 110, size: 1152, elements: !2168)
!2168 = !{!2169, !2173, !2177, !2183, !2189, !2193, !2197, !2202, !2206, !2207, !2211, !2215, !2219, !2230, !2231, !2232, !2233, !2243}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2167, file: !2160, line: 111, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!2163, !2163}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2167, file: !2160, line: 112, baseType: !2174, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2163}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2167, file: !2160, line: 113, baseType: !2178, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!352, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2167, file: !2160, line: 114, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!1373, !2181, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2167, file: !2160, line: 116, baseType: !2190, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!352, !2181, !196}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2167, file: !2160, line: 118, baseType: !2194, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!98, !2181, !196, !7, !101, !111}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2167, file: !2160, line: 123, baseType: !2198, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!98, !2181, !196, !2201, !111}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2167, file: !2160, line: 126, baseType: !2203, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!196, !2181}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2167, file: !2160, line: 127, baseType: !2203, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2167, file: !2160, line: 128, baseType: !2208, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2163, !2181}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2167, file: !2160, line: 130, baseType: !2212, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!2163, !2181, !2163}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2167, file: !2160, line: 133, baseType: !2216, size: 64, offset: 704)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!2163, !2181, !196}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2167, file: !2160, line: 135, baseType: !2220, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!98, !2181, !196, !196, !7, !7, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2160, line: 43, size: 640, elements: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2224, file: !2160, line: 44, baseType: !2163, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2224, file: !2160, line: 45, baseType: !7, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2224, file: !2160, line: 46, baseType: !2229, size: 512, offset: 128)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 512, elements: !137)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2167, file: !2160, line: 140, baseType: !2212, size: 64, offset: 832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2167, file: !2160, line: 143, baseType: !2208, size: 64, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2167, file: !2160, line: 145, baseType: !2170, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2167, file: !2160, line: 146, baseType: !2234, size: 64, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!98, !2181, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2160, line: 29, size: 128, elements: !2239)
!2239 = !{!2240, !2241, !2242}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2238, file: !2160, line: 30, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2238, file: !2160, line: 31, baseType: !7, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2238, file: !2160, line: 32, baseType: !2181, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2167, file: !2160, line: 148, baseType: !2244, size: 64, offset: 1088)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!98, !2181, !1842}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2159, file: !2160, line: 20, baseType: !1842, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2151, file: !2152, line: 57, baseType: !2249, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2152, line: 31, size: 704, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2250, file: !2152, line: 32, baseType: !442, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2250, file: !2152, line: 33, baseType: !98, size: 32, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2250, file: !2152, line: 34, baseType: !101, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2250, file: !2152, line: 35, baseType: !2249, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2250, file: !2152, line: 43, baseType: !506, size: 448, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2151, file: !2152, line: 58, baseType: !2249, size: 64, offset: 448)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2151, file: !2152, line: 59, baseType: !2150, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2151, file: !2152, line: 60, baseType: !2150, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2151, file: !2152, line: 61, baseType: !2150, size: 64, offset: 640)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2151, file: !2152, line: 63, baseType: !383, size: 512, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2151, file: !2152, line: 65, baseType: !114, size: 64, offset: 1216)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2151, file: !2152, line: 66, baseType: !101, size: 64, offset: 1280)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !380, file: !30, line: 529, baseType: !2163, size: 64, offset: 4928)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !380, file: !30, line: 534, baseType: !2266, size: 32, offset: 4992)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !100, line: 16, baseType: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !100, line: 13, baseType: !181)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !380, file: !30, line: 535, baseType: !181, size: 32, offset: 5024)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !380, file: !30, line: 537, baseType: !401, offset: 5056)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !380, file: !30, line: 538, baseType: !388, size: 128, offset: 5056)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !380, file: !30, line: 540, baseType: !2272, size: 64, offset: 5184)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2274, line: 54, size: 960, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2286, !2290, !2291, !2292, !2293, !2297, !2301, !2302}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2273, file: !2274, line: 55, baseType: !196, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2273, file: !2274, line: 56, baseType: !376, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2273, file: !2274, line: 58, baseType: !491, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2273, file: !2274, line: 59, baseType: !491, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2273, file: !2274, line: 60, baseType: !394, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2273, file: !2274, line: 62, baseType: !1855, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2273, file: !2274, line: 63, baseType: !2283, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!442, !1842, !1862}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2273, file: !2274, line: 65, baseType: !2287, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2272}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2273, file: !2274, line: 66, baseType: !1864, size: 64, offset: 512)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2273, file: !2274, line: 68, baseType: !1873, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2273, file: !2274, line: 70, baseType: !1629, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2273, file: !2274, line: 71, baseType: !2294, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!1373, !1842}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2273, file: !2274, line: 73, baseType: !2298, size: 64, offset: 768)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !1842, !1664, !1671}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2273, file: !2274, line: 75, baseType: !1868, size: 64, offset: 832)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2273, file: !2274, line: 77, baseType: !1986, size: 64, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !380, file: !30, line: 541, baseType: !491, size: 64, offset: 5248)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !380, file: !30, line: 543, baseType: !1864, size: 64, offset: 5312)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !380, file: !30, line: 544, baseType: !2306, size: 64, offset: 5376)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !380, file: !30, line: 545, baseType: !2309, size: 64, offset: 5440)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !380, file: !30, line: 547, baseType: !352, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !380, file: !30, line: 548, baseType: !352, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !380, file: !30, line: 549, baseType: !352, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !380, file: !30, line: 550, baseType: !352, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !174, file: !175, line: 376, baseType: !98, size: 32, offset: 8832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !174, file: !175, line: 377, baseType: !2317, size: 192, offset: 8896)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !175, line: 191, size: 192, elements: !2318)
!2318 = !{!2319, !2322, !2323}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2317, file: !175, line: 192, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1681, line: 21, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2317, file: !175, line: 194, baseType: !196, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2317, file: !175, line: 195, baseType: !196, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !174, file: !175, line: 378, baseType: !2325, size: 64, offset: 9088)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2327, line: 16, flags: DIFlagFwdDecl)
!2327 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !175, line: 386, baseType: !209, size: 64, offset: 9152)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !174, file: !175, line: 389, baseType: !388, size: 128, offset: 9216)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !175, line: 391, baseType: !2331, size: 320, offset: 9344)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !175, line: 391, size: 320, elements: !2332)
!2332 = !{!2333, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2331, file: !175, line: 392, baseType: !2334, size: 320)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !175, line: 211, size: 320, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2334, file: !175, line: 212, baseType: !388, size: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2334, file: !175, line: 213, baseType: !107, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2334, file: !175, line: 214, baseType: !107, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !175, line: 215, baseType: !181, size: 32, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2331, file: !175, line: 393, baseType: !2341, size: 256)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !175, line: 230, size: 256, elements: !2342)
!2342 = !{!2343, !2344}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2341, file: !175, line: 231, baseType: !645, size: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2341, file: !175, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !171, file: !51, line: 321, baseType: !2346, size: 288, offset: 9664)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2346, file: !51, line: 30, baseType: !7, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2346, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2346, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2346, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2346, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2346, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2346, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2346, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2346, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !171, file: !51, line: 322, baseType: !2358, size: 1024, offset: 9984)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2359)
!2359 = !{!2360, !2369, !2370, !2371, !2377, !2426}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2358, file: !51, line: 292, baseType: !2361, size: 192)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2361, file: !51, line: 188, baseType: !50, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2361, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2361, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2361, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2361, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2358, file: !51, line: 293, baseType: !2361, size: 192, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2358, file: !51, line: 294, baseType: !2361, size: 192, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2358, file: !51, line: 295, baseType: !2372, size: 320, offset: 576)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2373)
!2373 = !{!2374, !2375, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2372, file: !51, line: 239, baseType: !2361, size: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2372, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2372, file: !51, line: 241, baseType: !101, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2358, file: !51, line: 296, baseType: !2378, size: 64, offset: 896)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2380)
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2379, file: !51, line: 269, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2384)
!2384 = !{!2385, !2390, !2394, !2425}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2383, file: !51, line: 256, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!98, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2383, file: !51, line: 257, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2389}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2383, file: !51, line: 258, baseType: !2395, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!98, !2389, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2400)
!2400 = !{!2401, !2402, !2410, !2411, !2412, !2417, !2418, !2419, !2424}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2399, file: !51, line: 113, baseType: !69, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2399, file: !51, line: 114, baseType: !2403, size: 160, offset: 32)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2409}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2403, file: !51, line: 78, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2403, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2403, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2403, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2403, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2399, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2399, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2399, file: !51, line: 120, baseType: !2413, size: 64, offset: 256)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2399, file: !51, line: 117, size: 64, elements: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2413, file: !51, line: 118, baseType: !1373, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2413, file: !51, line: 119, baseType: !101, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2399, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2399, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2399, file: !51, line: 126, baseType: !2420, size: 64, offset: 384)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2399, file: !51, line: 123, size: 64, elements: !2421)
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2420, file: !51, line: 124, baseType: !1373, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2420, file: !51, line: 125, baseType: !101, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2399, file: !51, line: 127, baseType: !98, size: 32, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2383, file: !51, line: 260, baseType: !2395, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2358, file: !51, line: 297, baseType: !2378, size: 64, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !171, file: !51, line: 323, baseType: !2428, size: 64, offset: 11008)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2428, file: !51, line: 62, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2428, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !171, file: !51, line: 324, baseType: !2433, size: 64, offset: 11072)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2434)
!2434 = !{!2435}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2433, file: !51, line: 206, baseType: !248, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !171, file: !51, line: 325, baseType: !2437, size: 64, offset: 11136)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2440)
!2440 = !{!2441, !2447, !2448}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2439, file: !51, line: 226, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!98, !2389, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2439, file: !51, line: 227, baseType: !2442, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2439, file: !51, line: 228, baseType: !2449, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!352, !2389, !2445}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !168, file: !74, line: 1098, baseType: !2453, size: 96, offset: 11200)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !74, line: 249, size: 96, elements: !2454)
!2454 = !{!2455, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2453, file: !74, line: 250, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !137)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2453, file: !74, line: 251, baseType: !98, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !168, file: !74, line: 1099, baseType: !2459, size: 704, offset: 11328)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !74, line: 230, size: 704, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2465, !2466}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2459, file: !74, line: 232, baseType: !196, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2459, file: !74, line: 233, baseType: !352, size: 8, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2459, file: !74, line: 234, baseType: !2464, size: 256, offset: 128)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !127)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2459, file: !74, line: 235, baseType: !2464, size: 256, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2459, file: !74, line: 238, baseType: !2467, size: 64, offset: 640)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2469, line: 167, size: 832, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2468, file: !2469, line: 168, baseType: !98, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2468, file: !2469, line: 169, baseType: !658, size: 16, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2468, file: !2469, line: 170, baseType: !658, size: 16, offset: 48)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2468, file: !2469, line: 171, baseType: !658, size: 16, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2468, file: !2469, line: 172, baseType: !658, size: 16, offset: 80)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2468, file: !2469, line: 173, baseType: !658, size: 16, offset: 96)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2468, file: !2469, line: 174, baseType: !658, size: 16, offset: 112)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2468, file: !2469, line: 175, baseType: !2479, size: 704, offset: 128)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 704, elements: !2480)
!2480 = !{!2481}
!2481 = !DISubrange(count: 88)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !168, file: !74, line: 1100, baseType: !2483, size: 128, offset: 12032)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !74, line: 1036, size: 128, elements: !2484)
!2484 = !{!2485, !2576}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2483, file: !74, line: 1037, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !2489, line: 61, size: 192, elements: !2490)
!2489 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!2490 = !{!2491, !2492, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2488, file: !2489, line: 62, baseType: !98, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2488, file: !2489, line: 63, baseType: !442, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2488, file: !2489, line: 64, baseType: !2494, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !2489, line: 47, size: 256, elements: !2497)
!2497 = !{!2498, !2502, !2504, !2505}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2496, file: !2489, line: 48, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{null, !167}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2496, file: !2489, line: 49, baseType: !2503, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2496, file: !2489, line: 50, baseType: !2499, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !2496, file: !2489, line: 51, baseType: !2506, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !167, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2469, line: 54, size: 2048, elements: !2511)
!2511 = !{!2512, !2514, !2516, !2517, !2518, !2520, !2521, !2522, !2526, !2528, !2530, !2531, !2532, !2536, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2510, file: !2469, line: 57, baseType: !2513, size: 32)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !127)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2510, file: !2469, line: 58, baseType: !2515, size: 16, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1812, line: 29, baseType: !659)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2510, file: !2469, line: 59, baseType: !2515, size: 16, offset: 48)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2510, file: !2469, line: 60, baseType: !2515, size: 16, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2510, file: !2469, line: 61, baseType: !2519, size: 16, offset: 80)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16, elements: !157)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2510, file: !2469, line: 62, baseType: !2515, size: 16, offset: 96)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2510, file: !2469, line: 63, baseType: !120, size: 8, offset: 112)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2510, file: !2469, line: 64, baseType: !2523, size: 136, offset: 120)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 136, elements: !2524)
!2524 = !{!2525}
!2525 = !DISubrange(count: 17)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2510, file: !2469, line: 67, baseType: !2527, size: 96, offset: 256)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 96, elements: !1482)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2510, file: !2469, line: 68, baseType: !2529, size: 160, offset: 352)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 160, elements: !1447)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2510, file: !2469, line: 69, baseType: !120, size: 8, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2510, file: !2469, line: 70, baseType: !2515, size: 16, offset: 520)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2510, file: !2469, line: 71, baseType: !2533, size: 104, offset: 536)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 104, elements: !2534)
!2534 = !{!2535}
!2535 = !DISubrange(count: 13)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2510, file: !2469, line: 74, baseType: !2537, size: 32, offset: 640)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1812, line: 31, baseType: !182)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2510, file: !2469, line: 75, baseType: !2515, size: 16, offset: 672)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2510, file: !2469, line: 76, baseType: !2537, size: 32, offset: 688)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2510, file: !2469, line: 77, baseType: !2515, size: 16, offset: 720)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2510, file: !2469, line: 78, baseType: !2537, size: 32, offset: 736)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2510, file: !2469, line: 79, baseType: !2537, size: 32, offset: 768)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2510, file: !2469, line: 80, baseType: !120, size: 8, offset: 800)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2510, file: !2469, line: 81, baseType: !120, size: 8, offset: 808)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2510, file: !2469, line: 82, baseType: !120, size: 8, offset: 816)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2510, file: !2469, line: 83, baseType: !2515, size: 16, offset: 824)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2510, file: !2469, line: 84, baseType: !2515, size: 16, offset: 840)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2510, file: !2469, line: 85, baseType: !120, size: 8, offset: 856)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2510, file: !2469, line: 86, baseType: !2515, size: 16, offset: 864)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2510, file: !2469, line: 87, baseType: !120, size: 8, offset: 880)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2510, file: !2469, line: 88, baseType: !120, size: 8, offset: 888)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2510, file: !2469, line: 89, baseType: !120, size: 8, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2510, file: !2469, line: 90, baseType: !120, size: 8, offset: 904)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2510, file: !2469, line: 91, baseType: !120, size: 8, offset: 912)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2510, file: !2469, line: 92, baseType: !2533, size: 104, offset: 920)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2510, file: !2469, line: 95, baseType: !120, size: 8, offset: 1024)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2510, file: !2469, line: 96, baseType: !2515, size: 16, offset: 1032)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2510, file: !2469, line: 97, baseType: !2515, size: 16, offset: 1048)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2510, file: !2469, line: 98, baseType: !2515, size: 16, offset: 1064)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2510, file: !2469, line: 99, baseType: !2515, size: 16, offset: 1080)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2510, file: !2469, line: 100, baseType: !2515, size: 16, offset: 1096)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2510, file: !2469, line: 101, baseType: !2515, size: 16, offset: 1112)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2510, file: !2469, line: 102, baseType: !2515, size: 16, offset: 1128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2510, file: !2469, line: 103, baseType: !120, size: 8, offset: 1144)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2510, file: !2469, line: 104, baseType: !2515, size: 16, offset: 1152)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2510, file: !2469, line: 105, baseType: !2515, size: 16, offset: 1168)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2510, file: !2469, line: 106, baseType: !2515, size: 16, offset: 1184)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2510, file: !2469, line: 107, baseType: !120, size: 8, offset: 1200)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2510, file: !2469, line: 108, baseType: !120, size: 8, offset: 1208)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2510, file: !2469, line: 109, baseType: !2515, size: 16, offset: 1216)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2510, file: !2469, line: 110, baseType: !2515, size: 16, offset: 1232)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2510, file: !2469, line: 111, baseType: !2456, size: 64, offset: 1248)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2510, file: !2469, line: 114, baseType: !2515, size: 16, offset: 1312)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2510, file: !2469, line: 115, baseType: !2479, size: 704, offset: 1328)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2510, file: !2469, line: 117, baseType: !2515, size: 16, offset: 2032)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2483, file: !74, line: 1038, baseType: !101, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !168, file: !74, line: 1101, baseType: !2578, size: 384, offset: 12160)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !74, line: 1021, size: 384, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2586, !2587, !2591}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2578, file: !74, line: 1022, baseType: !2503, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2578, file: !74, line: 1023, baseType: !2499, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2578, file: !74, line: 1024, baseType: !2583, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!98, !167, !102, !184}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2578, file: !74, line: 1025, baseType: !2583, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2578, file: !74, line: 1026, baseType: !2588, size: 64, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!98, !167, !98}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2578, file: !74, line: 1027, baseType: !2592, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!98, !167, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !74, line: 492, size: 1536, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2596, file: !74, line: 493, baseType: !73, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2596, file: !74, line: 499, baseType: !2600, size: 1472, offset: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !74, line: 494, size: 1472, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2600, file: !74, line: 495, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2600, file: !74, line: 496, baseType: !2604, size: 1408, offset: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !74, line: 496, size: 1408, elements: !2605)
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2604, file: !74, line: 497, baseType: !2607, size: 1408)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !74, line: 436, size: 1408, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2607, file: !74, line: 437, baseType: !107, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2607, file: !74, line: 438, baseType: !181, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2607, file: !74, line: 439, baseType: !107, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2607, file: !74, line: 440, baseType: !107, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2607, file: !74, line: 441, baseType: !181, size: 32, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2607, file: !74, line: 442, baseType: !181, size: 32, offset: 288)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2607, file: !74, line: 443, baseType: !181, size: 32, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2607, file: !74, line: 444, baseType: !181, size: 32, offset: 352)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2607, file: !74, line: 445, baseType: !181, size: 32, offset: 384)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2607, file: !74, line: 446, baseType: !181, size: 32, offset: 416)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2607, file: !74, line: 447, baseType: !181, size: 32, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2607, file: !74, line: 448, baseType: !181, size: 32, offset: 480)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2607, file: !74, line: 449, baseType: !181, size: 32, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2607, file: !74, line: 450, baseType: !181, size: 32, offset: 544)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2607, file: !74, line: 451, baseType: !181, size: 32, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2607, file: !74, line: 452, baseType: !181, size: 32, offset: 608)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2607, file: !74, line: 453, baseType: !181, size: 32, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2607, file: !74, line: 454, baseType: !181, size: 32, offset: 672)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2607, file: !74, line: 455, baseType: !181, size: 32, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2607, file: !74, line: 456, baseType: !181, size: 32, offset: 736)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2607, file: !74, line: 457, baseType: !181, size: 32, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2607, file: !74, line: 458, baseType: !181, size: 32, offset: 800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2607, file: !74, line: 459, baseType: !181, size: 32, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2607, file: !74, line: 460, baseType: !181, size: 32, offset: 864)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2607, file: !74, line: 461, baseType: !181, size: 32, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2607, file: !74, line: 462, baseType: !181, size: 32, offset: 928)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2607, file: !74, line: 463, baseType: !181, size: 32, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2607, file: !74, line: 464, baseType: !181, size: 32, offset: 992)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2607, file: !74, line: 465, baseType: !181, size: 32, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2607, file: !74, line: 466, baseType: !181, size: 32, offset: 1056)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2607, file: !74, line: 467, baseType: !181, size: 32, offset: 1088)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2607, file: !74, line: 468, baseType: !107, size: 64, offset: 1152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2607, file: !74, line: 469, baseType: !181, size: 32, offset: 1216)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2607, file: !74, line: 470, baseType: !181, size: 32, offset: 1248)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2607, file: !74, line: 471, baseType: !181, size: 32, offset: 1280)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2607, file: !74, line: 472, baseType: !181, size: 32, offset: 1312)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2607, file: !74, line: 473, baseType: !181, size: 32, offset: 1344)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2607, file: !74, line: 474, baseType: !181, size: 32, offset: 1376)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !168, file: !74, line: 1102, baseType: !2648, size: 1280, offset: 12544)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !74, line: 989, size: 1280, elements: !2649)
!2649 = !{!2650, !2651, !2652, !2656, !2660, !2664, !2670, !2675, !2679, !2683, !2684, !2685, !2689, !2690, !2694, !2695, !2696}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2648, file: !74, line: 990, baseType: !101, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2648, file: !74, line: 991, baseType: !101, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2648, file: !74, line: 992, baseType: !2653, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !167, !98}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2648, file: !74, line: 993, baseType: !2657, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!120, !167}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2648, file: !74, line: 994, baseType: !2661, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !167, !120}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2648, file: !74, line: 995, baseType: !2665, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{null, !167, !2668, !98}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2648, file: !74, line: 996, baseType: !2671, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !167, !2674, !98}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2648, file: !74, line: 997, baseType: !2676, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !167, !98, !7}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2648, file: !74, line: 998, baseType: !2680, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !167, !7, !98, !98}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2648, file: !74, line: 1000, baseType: !2503, size: 64, offset: 576)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2648, file: !74, line: 1001, baseType: !2503, size: 64, offset: 640)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2648, file: !74, line: 1002, baseType: !2686, size: 64, offset: 704)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!98, !167, !102}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2648, file: !74, line: 1003, baseType: !2686, size: 64, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2648, file: !74, line: 1004, baseType: !2691, size: 64, offset: 832)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!98, !167, !98, !2674}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2648, file: !74, line: 1006, baseType: !2691, size: 64, offset: 896)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2648, file: !74, line: 1008, baseType: !98, size: 32, offset: 960)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2648, file: !74, line: 1009, baseType: !2697, size: 256, offset: 1024)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !74, line: 951, size: 256, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2697, file: !74, line: 952, baseType: !645, size: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2697, file: !74, line: 953, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !74, line: 935, size: 256, elements: !2704)
!2704 = !{!2705, !2706, !2707, !2750}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2703, file: !74, line: 936, baseType: !2503, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2703, file: !74, line: 937, baseType: !2499, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2703, file: !74, line: 938, baseType: !2708, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!98, !167, !2711, !352}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !74, line: 860, size: 192, elements: !2714)
!2714 = !{!2715, !2716, !2749}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2713, file: !74, line: 861, baseType: !7, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2713, file: !74, line: 862, baseType: !2717, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !74, line: 593, size: 320, elements: !2720)
!2720 = !{!2721, !2722, !2748}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2719, file: !74, line: 594, baseType: !77, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2719, file: !74, line: 600, baseType: !2723, size: 192, offset: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2719, file: !74, line: 595, size: 192, elements: !2724)
!2724 = !{!2725, !2729, !2734, !2744}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2723, file: !74, line: 596, baseType: !2726, size: 8)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !74, line: 519, size: 8, elements: !2727)
!2727 = !{!2728}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2726, file: !74, line: 520, baseType: !120, size: 8)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2723, file: !74, line: 597, baseType: !2730, size: 128)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !74, line: 528, size: 128, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2730, file: !74, line: 529, baseType: !7, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2730, file: !74, line: 530, baseType: !2668, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2723, file: !74, line: 598, baseType: !2735, size: 192)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !74, line: 545, size: 192, elements: !2736)
!2736 = !{!2737, !2738, !2743}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2735, file: !74, line: 546, baseType: !7, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2735, file: !74, line: 550, baseType: !2739, size: 64, offset: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2735, file: !74, line: 547, size: 64, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2739, file: !74, line: 548, baseType: !101, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2739, file: !74, line: 549, baseType: !1373, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2735, file: !74, line: 551, baseType: !352, size: 8, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2723, file: !74, line: 599, baseType: !2745, size: 32)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !74, line: 558, size: 32, elements: !2746)
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2745, file: !74, line: 559, baseType: !7, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2719, file: !74, line: 601, baseType: !7, size: 32, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2713, file: !74, line: 863, baseType: !7, size: 32, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2703, file: !74, line: 941, baseType: !2751, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!98, !167, !98, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !168, file: !74, line: 1103, baseType: !7, size: 32, offset: 13824)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !168, file: !74, line: 1106, baseType: !2754, size: 64, offset: 13888)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !168, file: !74, line: 1107, baseType: !2595, size: 64, offset: 13952)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !168, file: !74, line: 1110, baseType: !7, size: 32, offset: 14016)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !168, file: !74, line: 1111, baseType: !7, size: 32, offset: 14048)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !168, file: !74, line: 1112, baseType: !7, size: 32, offset: 14080)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !168, file: !74, line: 1113, baseType: !7, size: 32, offset: 14112)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !168, file: !74, line: 1114, baseType: !2764, size: 64, offset: 14144)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !168, file: !74, line: 1115, baseType: !2764, size: 64, offset: 14208)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !168, file: !74, line: 1116, baseType: !2764, size: 64, offset: 14272)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !168, file: !74, line: 1117, baseType: !2674, size: 64, offset: 14336)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !168, file: !74, line: 1120, baseType: !7, size: 32, offset: 14400)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !168, file: !74, line: 1121, baseType: !7, size: 32, offset: 14432)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !168, file: !74, line: 1122, baseType: !7, size: 32, offset: 14464)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !168, file: !74, line: 1123, baseType: !7, size: 32, offset: 14496)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !168, file: !74, line: 1124, baseType: !7, size: 32, offset: 14528)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !168, file: !74, line: 1127, baseType: !2674, size: 64, offset: 14592)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !168, file: !74, line: 1128, baseType: !2674, size: 64, offset: 14656)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !168, file: !74, line: 1132, baseType: !2776, size: 64, offset: 14720)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !168, file: !74, line: 1129, size: 64, elements: !2777)
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2776, file: !74, line: 1130, baseType: !7, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2776, file: !74, line: 1131, baseType: !98, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !168, file: !74, line: 1133, baseType: !114, size: 64, offset: 14784)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !168, file: !74, line: 1136, baseType: !645, size: 192, offset: 14848)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !168, file: !74, line: 1137, baseType: !7, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !168, file: !74, line: 1138, baseType: !98, size: 32, offset: 15072)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !168, file: !74, line: 1139, baseType: !98, size: 32, offset: 15104)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !168, file: !74, line: 1142, baseType: !2786, size: 64, offset: 15168)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !168, file: !74, line: 1143, baseType: !2788, size: 1408, offset: 15232)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !74, line: 346, size: 1408, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2811, !2815, !2819, !2823, !2824, !2828, !2832, !2833, !2834, !2835, !2836}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2788, file: !74, line: 347, baseType: !50, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2788, file: !74, line: 348, baseType: !58, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2788, file: !74, line: 349, baseType: !63, size: 32, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2788, file: !74, line: 350, baseType: !98, size: 32, offset: 96)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2788, file: !74, line: 351, baseType: !98, size: 32, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2788, file: !74, line: 352, baseType: !98, size: 32, offset: 160)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2788, file: !74, line: 353, baseType: !98, size: 32, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2788, file: !74, line: 354, baseType: !98, size: 32, offset: 224)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2788, file: !74, line: 355, baseType: !98, size: 32, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2788, file: !74, line: 356, baseType: !98, size: 32, offset: 288)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2788, file: !74, line: 357, baseType: !7, size: 32, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2788, file: !74, line: 358, baseType: !101, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2788, file: !74, line: 359, baseType: !2674, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2788, file: !74, line: 360, baseType: !2674, size: 64, offset: 512)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2788, file: !74, line: 361, baseType: !2653, size: 64, offset: 576)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2788, file: !74, line: 362, baseType: !2806, size: 64, offset: 640)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!98, !167, !2809, !147}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2788, file: !74, line: 364, baseType: !2812, size: 64, offset: 704)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!98, !167, !147, !147, !147}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2788, file: !74, line: 366, baseType: !2816, size: 64, offset: 768)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!98, !167, !147, !98, !98}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2788, file: !74, line: 368, baseType: !2820, size: 64, offset: 832)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!98, !167, !2809, !98, !98}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2788, file: !74, line: 370, baseType: !2816, size: 64, offset: 896)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2788, file: !74, line: 372, baseType: !2825, size: 64, offset: 960)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!98, !167, !180, !180, !147, !98}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2788, file: !74, line: 374, baseType: !2829, size: 64, offset: 1024)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!98, !167, !180, !180, !2809, !98, !98}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2788, file: !74, line: 377, baseType: !2820, size: 64, offset: 1088)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2788, file: !74, line: 379, baseType: !2588, size: 64, offset: 1152)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2788, file: !74, line: 380, baseType: !2588, size: 64, offset: 1216)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2788, file: !74, line: 381, baseType: !2588, size: 64, offset: 1280)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2788, file: !74, line: 382, baseType: !2588, size: 64, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !168, file: !74, line: 1144, baseType: !101, size: 64, offset: 16640)
!2838 = !DILocalVariable(name: "this", arg: 1, scope: !164, file: !3, line: 1365, type: !167)
!2839 = !DILocation(line: 1365, column: 39, scope: !164)
!2840 = !DILocalVariable(name: "ret", scope: !164, file: !3, line: 1367, type: !98)
!2841 = !DILocation(line: 1367, column: 6, scope: !164)
!2842 = !DILocation(line: 1370, column: 6, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !164, file: !3, line: 1370, column: 6)
!2844 = !DILocation(line: 1370, column: 12, scope: !2843)
!2845 = !DILocation(line: 1370, column: 24, scope: !2843)
!2846 = !DILocation(line: 1370, column: 6, scope: !164)
!2847 = !DILocation(line: 1372, column: 8, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1372, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 1370, column: 46)
!2850 = !DILocation(line: 1372, column: 14, scope: !2848)
!2851 = !DILocation(line: 1372, column: 7, scope: !2849)
!2852 = !DILocation(line: 1373, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1373, column: 8)
!2854 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1372, column: 22)
!2855 = !DILocation(line: 1373, column: 14, scope: !2853)
!2856 = !DILocation(line: 1373, column: 26, scope: !2853)
!2857 = !DILocation(line: 1373, column: 8, scope: !2854)
!2858 = !DILocation(line: 1374, column: 5, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 1373, column: 45)
!2860 = !DILocation(line: 1374, column: 11, scope: !2859)
!2861 = !DILocation(line: 1374, column: 18, scope: !2859)
!2862 = !DILocation(line: 1375, column: 5, scope: !2859)
!2863 = !DILocation(line: 1375, column: 11, scope: !2859)
!2864 = !DILocation(line: 1375, column: 18, scope: !2859)
!2865 = !DILocation(line: 1376, column: 4, scope: !2859)
!2866 = !DILocation(line: 1377, column: 5, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 1376, column: 11)
!2868 = !DILocation(line: 1377, column: 11, scope: !2867)
!2869 = !DILocation(line: 1377, column: 18, scope: !2867)
!2870 = !DILocation(line: 1378, column: 5, scope: !2867)
!2871 = !DILocation(line: 1378, column: 11, scope: !2867)
!2872 = !DILocation(line: 1378, column: 18, scope: !2867)
!2873 = !DILocation(line: 1380, column: 3, scope: !2854)
!2874 = !DILocation(line: 1381, column: 2, scope: !2849)
!2875 = !DILocation(line: 1382, column: 3, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 1381, column: 9)
!2877 = !DILocation(line: 1382, column: 9, scope: !2876)
!2878 = !DILocation(line: 1382, column: 16, scope: !2876)
!2879 = !DILocation(line: 1383, column: 3, scope: !2876)
!2880 = !DILocation(line: 1383, column: 9, scope: !2876)
!2881 = !DILocation(line: 1383, column: 16, scope: !2876)
!2882 = !DILocation(line: 1386, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !164, file: !3, line: 1386, column: 6)
!2884 = !DILocation(line: 1386, column: 13, scope: !2883)
!2885 = !DILocation(line: 1386, column: 6, scope: !164)
!2886 = !DILocation(line: 1387, column: 38, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1386, column: 31)
!2888 = !DILocation(line: 1387, column: 9, scope: !2887)
!2889 = !DILocation(line: 1387, column: 7, scope: !2887)
!2890 = !DILocation(line: 1388, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1388, column: 7)
!2892 = !DILocation(line: 1388, column: 7, scope: !2887)
!2893 = !DILocation(line: 1389, column: 11, scope: !2891)
!2894 = !DILocation(line: 1389, column: 4, scope: !2891)
!2895 = !DILocation(line: 1390, column: 2, scope: !2887)
!2896 = !DILocation(line: 1392, column: 23, scope: !164)
!2897 = !DILocation(line: 1392, column: 29, scope: !164)
!2898 = !DILocation(line: 1392, column: 35, scope: !164)
!2899 = !DILocation(line: 1392, column: 9, scope: !164)
!2900 = !DILocation(line: 1392, column: 2, scope: !164)
!2901 = !DILocation(line: 1393, column: 1, scope: !164)
!2902 = distinct !DISubprogram(name: "nand_create_badblock_pattern", scope: !3, file: !3, line: 1339, type: !165, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!2903 = !DILocalVariable(name: "this", arg: 1, scope: !2902, file: !3, line: 1339, type: !167)
!2904 = !DILocation(line: 1339, column: 59, scope: !2902)
!2905 = !DILocalVariable(name: "bd", scope: !2902, file: !3, line: 1341, type: !2764)
!2906 = !DILocation(line: 1341, column: 25, scope: !2902)
!2907 = !DILocation(line: 1342, column: 6, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1342, column: 6)
!2909 = !DILocation(line: 1342, column: 12, scope: !2908)
!2910 = !DILocation(line: 1342, column: 6, scope: !2902)
!2911 = !DILocation(line: 1343, column: 3, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1342, column: 30)
!2913 = !DILocation(line: 1344, column: 3, scope: !2912)
!2914 = !DILocation(line: 1346, column: 7, scope: !2902)
!2915 = !DILocation(line: 1346, column: 5, scope: !2902)
!2916 = !DILocation(line: 1347, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1347, column: 6)
!2918 = !DILocation(line: 1347, column: 6, scope: !2902)
!2919 = !DILocation(line: 1348, column: 3, scope: !2917)
!2920 = !DILocation(line: 1349, column: 16, scope: !2902)
!2921 = !DILocation(line: 1349, column: 22, scope: !2902)
!2922 = !DILocation(line: 1349, column: 34, scope: !2902)
!2923 = !DILocation(line: 1349, column: 2, scope: !2902)
!2924 = !DILocation(line: 1349, column: 6, scope: !2902)
!2925 = !DILocation(line: 1349, column: 14, scope: !2902)
!2926 = !DILocation(line: 1350, column: 13, scope: !2902)
!2927 = !DILocation(line: 1350, column: 19, scope: !2902)
!2928 = !DILocation(line: 1350, column: 2, scope: !2902)
!2929 = !DILocation(line: 1350, column: 6, scope: !2902)
!2930 = !DILocation(line: 1350, column: 11, scope: !2902)
!2931 = !DILocation(line: 1351, column: 13, scope: !2902)
!2932 = !DILocation(line: 1351, column: 19, scope: !2902)
!2933 = !DILocation(line: 1351, column: 27, scope: !2902)
!2934 = !DILocation(line: 1351, column: 12, scope: !2902)
!2935 = !DILocation(line: 1351, column: 2, scope: !2902)
!2936 = !DILocation(line: 1351, column: 6, scope: !2902)
!2937 = !DILocation(line: 1351, column: 10, scope: !2902)
!2938 = !DILocation(line: 1352, column: 2, scope: !2902)
!2939 = !DILocation(line: 1352, column: 6, scope: !2902)
!2940 = !DILocation(line: 1352, column: 14, scope: !2902)
!2941 = !DILocation(line: 1353, column: 2, scope: !2902)
!2942 = !DILocation(line: 1353, column: 6, scope: !2902)
!2943 = !DILocation(line: 1353, column: 14, scope: !2902)
!2944 = !DILocation(line: 1354, column: 27, scope: !2902)
!2945 = !DILocation(line: 1354, column: 2, scope: !2902)
!2946 = !DILocation(line: 1354, column: 8, scope: !2902)
!2947 = !DILocation(line: 1354, column: 25, scope: !2902)
!2948 = !DILocation(line: 1355, column: 2, scope: !2902)
!2949 = !DILocation(line: 1356, column: 1, scope: !2902)
!2950 = distinct !DISubprogram(name: "nand_scan_bbt", scope: !3, file: !3, line: 1211, type: !2951, scopeLine: 1212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!98, !167, !2764}
!2953 = !DILocalVariable(name: "this", arg: 1, scope: !2950, file: !3, line: 1211, type: !167)
!2954 = !DILocation(line: 1211, column: 44, scope: !2950)
!2955 = !DILocalVariable(name: "bd", arg: 2, scope: !2950, file: !3, line: 1211, type: !2764)
!2956 = !DILocation(line: 1211, column: 73, scope: !2950)
!2957 = !DILocalVariable(name: "mtd", scope: !2950, file: !3, line: 1213, type: !209)
!2958 = !DILocation(line: 1213, column: 19, scope: !2950)
!2959 = !DILocation(line: 1213, column: 37, scope: !2950)
!2960 = !DILocation(line: 1213, column: 25, scope: !2950)
!2961 = !DILocalVariable(name: "len", scope: !2950, file: !3, line: 1214, type: !98)
!2962 = !DILocation(line: 1214, column: 6, scope: !2950)
!2963 = !DILocalVariable(name: "res", scope: !2950, file: !3, line: 1214, type: !98)
!2964 = !DILocation(line: 1214, column: 11, scope: !2950)
!2965 = !DILocalVariable(name: "buf", scope: !2950, file: !3, line: 1215, type: !147)
!2966 = !DILocation(line: 1215, column: 11, scope: !2950)
!2967 = !DILocalVariable(name: "td", scope: !2950, file: !3, line: 1216, type: !2764)
!2968 = !DILocation(line: 1216, column: 25, scope: !2950)
!2969 = !DILocation(line: 1216, column: 30, scope: !2950)
!2970 = !DILocation(line: 1216, column: 36, scope: !2950)
!2971 = !DILocalVariable(name: "md", scope: !2950, file: !3, line: 1217, type: !2764)
!2972 = !DILocation(line: 1217, column: 25, scope: !2950)
!2973 = !DILocation(line: 1217, column: 30, scope: !2950)
!2974 = !DILocation(line: 1217, column: 36, scope: !2950)
!2975 = !DILocation(line: 1219, column: 9, scope: !2950)
!2976 = !DILocation(line: 1219, column: 14, scope: !2950)
!2977 = !DILocation(line: 1219, column: 23, scope: !2950)
!2978 = !DILocation(line: 1219, column: 29, scope: !2950)
!2979 = !DILocation(line: 1219, column: 45, scope: !2950)
!2980 = !DILocation(line: 1219, column: 19, scope: !2950)
!2981 = !DILocation(line: 1219, column: 8, scope: !2950)
!2982 = !DILocation(line: 1219, column: 6, scope: !2950)
!2983 = !DILocation(line: 1224, column: 22, scope: !2950)
!2984 = !DILocation(line: 1224, column: 14, scope: !2950)
!2985 = !DILocation(line: 1224, column: 2, scope: !2950)
!2986 = !DILocation(line: 1224, column: 8, scope: !2950)
!2987 = !DILocation(line: 1224, column: 12, scope: !2950)
!2988 = !DILocation(line: 1225, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1225, column: 6)
!2990 = !DILocation(line: 1225, column: 13, scope: !2989)
!2991 = !DILocation(line: 1225, column: 6, scope: !2950)
!2992 = !DILocation(line: 1226, column: 3, scope: !2989)
!2993 = !DILocation(line: 1232, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1232, column: 6)
!2995 = !DILocation(line: 1232, column: 6, scope: !2950)
!2996 = !DILocation(line: 1233, column: 30, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1233, column: 7)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1232, column: 11)
!2999 = !DILocation(line: 1233, column: 36, scope: !2997)
!3000 = !DILocation(line: 1233, column: 14, scope: !2997)
!3001 = !DILocation(line: 1233, column: 12, scope: !2997)
!3002 = !DILocation(line: 1233, column: 7, scope: !2998)
!3003 = !DILocation(line: 1234, column: 4, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1233, column: 42)
!3005 = !DILocation(line: 1235, column: 4, scope: !3004)
!3006 = !DILocation(line: 1237, column: 3, scope: !2998)
!3007 = !DILocation(line: 1239, column: 19, scope: !2950)
!3008 = !DILocation(line: 1239, column: 25, scope: !2950)
!3009 = !DILocation(line: 1239, column: 2, scope: !2950)
!3010 = !DILocation(line: 1240, column: 19, scope: !2950)
!3011 = !DILocation(line: 1240, column: 25, scope: !2950)
!3012 = !DILocation(line: 1240, column: 2, scope: !2950)
!3013 = !DILocation(line: 1243, column: 14, scope: !2950)
!3014 = !DILocation(line: 1243, column: 20, scope: !2950)
!3015 = !DILocation(line: 1243, column: 11, scope: !2950)
!3016 = !DILocation(line: 1243, column: 6, scope: !2950)
!3017 = !DILocation(line: 1244, column: 10, scope: !2950)
!3018 = !DILocation(line: 1244, column: 17, scope: !2950)
!3019 = !DILocation(line: 1244, column: 23, scope: !2950)
!3020 = !DILocation(line: 1244, column: 14, scope: !2950)
!3021 = !DILocation(line: 1244, column: 37, scope: !2950)
!3022 = !DILocation(line: 1244, column: 42, scope: !2950)
!3023 = !DILocation(line: 1244, column: 35, scope: !2950)
!3024 = !DILocation(line: 1244, column: 6, scope: !2950)
!3025 = !DILocation(line: 1245, column: 16, scope: !2950)
!3026 = !DILocation(line: 1245, column: 8, scope: !2950)
!3027 = !DILocation(line: 1245, column: 6, scope: !2950)
!3028 = !DILocation(line: 1246, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1246, column: 6)
!3030 = !DILocation(line: 1246, column: 6, scope: !2950)
!3031 = !DILocation(line: 1247, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1246, column: 12)
!3033 = !DILocation(line: 1248, column: 3, scope: !3032)
!3034 = !DILocation(line: 1252, column: 6, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1252, column: 6)
!3036 = !DILocation(line: 1252, column: 10, scope: !3035)
!3037 = !DILocation(line: 1252, column: 18, scope: !3035)
!3038 = !DILocation(line: 1252, column: 6, scope: !2950)
!3039 = !DILocation(line: 1253, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1252, column: 38)
!3041 = !DILocation(line: 1253, column: 23, scope: !3040)
!3042 = !DILocation(line: 1253, column: 28, scope: !3040)
!3043 = !DILocation(line: 1253, column: 32, scope: !3040)
!3044 = !DILocation(line: 1253, column: 3, scope: !3040)
!3045 = !DILocation(line: 1254, column: 2, scope: !3040)
!3046 = !DILocation(line: 1256, column: 20, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1254, column: 9)
!3048 = !DILocation(line: 1256, column: 26, scope: !3047)
!3049 = !DILocation(line: 1256, column: 31, scope: !3047)
!3050 = !DILocation(line: 1256, column: 35, scope: !3047)
!3051 = !DILocation(line: 1256, column: 3, scope: !3047)
!3052 = !DILocation(line: 1259, column: 21, scope: !2950)
!3053 = !DILocation(line: 1259, column: 27, scope: !2950)
!3054 = !DILocation(line: 1259, column: 32, scope: !2950)
!3055 = !DILocation(line: 1259, column: 8, scope: !2950)
!3056 = !DILocation(line: 1259, column: 6, scope: !2950)
!3057 = !DILocation(line: 1260, column: 6, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1260, column: 6)
!3059 = !DILocation(line: 1260, column: 6, scope: !2950)
!3060 = !DILocation(line: 1261, column: 3, scope: !3058)
!3061 = !DILocation(line: 1264, column: 18, scope: !2950)
!3062 = !DILocation(line: 1264, column: 24, scope: !2950)
!3063 = !DILocation(line: 1264, column: 2, scope: !2950)
!3064 = !DILocation(line: 1265, column: 6, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1265, column: 6)
!3066 = !DILocation(line: 1265, column: 6, scope: !2950)
!3067 = !DILocation(line: 1266, column: 19, scope: !3065)
!3068 = !DILocation(line: 1266, column: 25, scope: !3065)
!3069 = !DILocation(line: 1266, column: 3, scope: !3065)
!3070 = !DILocation(line: 1268, column: 8, scope: !2950)
!3071 = !DILocation(line: 1268, column: 2, scope: !2950)
!3072 = !DILocation(line: 1269, column: 2, scope: !2950)
!3073 = !DILabel(scope: !2950, name: "err_free_buf", file: !3, line: 1271)
!3074 = !DILocation(line: 1271, column: 1, scope: !2950)
!3075 = !DILocation(line: 1272, column: 8, scope: !2950)
!3076 = !DILocation(line: 1272, column: 2, scope: !2950)
!3077 = !DILabel(scope: !2950, name: "err_free_bbt", file: !3, line: 1273)
!3078 = !DILocation(line: 1273, column: 1, scope: !2950)
!3079 = !DILocation(line: 1274, column: 8, scope: !2950)
!3080 = !DILocation(line: 1274, column: 14, scope: !2950)
!3081 = !DILocation(line: 1274, column: 2, scope: !2950)
!3082 = !DILocation(line: 1275, column: 2, scope: !2950)
!3083 = !DILocation(line: 1275, column: 8, scope: !2950)
!3084 = !DILocation(line: 1275, column: 12, scope: !2950)
!3085 = !DILocation(line: 1276, column: 9, scope: !2950)
!3086 = !DILocation(line: 1276, column: 2, scope: !2950)
!3087 = !DILocation(line: 1277, column: 1, scope: !2950)
!3088 = distinct !DISubprogram(name: "nand_isreserved_bbt", scope: !3, file: !3, line: 1401, type: !2687, scopeLine: 1402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3089 = !DILocalVariable(name: "this", arg: 1, scope: !3088, file: !3, line: 1401, type: !167)
!3090 = !DILocation(line: 1401, column: 43, scope: !3088)
!3091 = !DILocalVariable(name: "offs", arg: 2, scope: !3088, file: !3, line: 1401, type: !102)
!3092 = !DILocation(line: 1401, column: 56, scope: !3088)
!3093 = !DILocalVariable(name: "block", scope: !3088, file: !3, line: 1403, type: !98)
!3094 = !DILocation(line: 1403, column: 6, scope: !3088)
!3095 = !DILocation(line: 1405, column: 16, scope: !3088)
!3096 = !DILocation(line: 1405, column: 24, scope: !3088)
!3097 = !DILocation(line: 1405, column: 30, scope: !3088)
!3098 = !DILocation(line: 1405, column: 21, scope: !3088)
!3099 = !DILocation(line: 1405, column: 10, scope: !3088)
!3100 = !DILocation(line: 1405, column: 8, scope: !3088)
!3101 = !DILocation(line: 1406, column: 23, scope: !3088)
!3102 = !DILocation(line: 1406, column: 29, scope: !3088)
!3103 = !DILocation(line: 1406, column: 9, scope: !3088)
!3104 = !DILocation(line: 1406, column: 36, scope: !3088)
!3105 = !DILocation(line: 1406, column: 2, scope: !3088)
!3106 = distinct !DISubprogram(name: "bbt_get_entry", scope: !3, file: !3, line: 76, type: !3107, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!119, !167, !98}
!3109 = !DILocalVariable(name: "chip", arg: 1, scope: !3106, file: !3, line: 76, type: !167)
!3110 = !DILocation(line: 76, column: 55, scope: !3106)
!3111 = !DILocalVariable(name: "block", arg: 2, scope: !3106, file: !3, line: 76, type: !98)
!3112 = !DILocation(line: 76, column: 65, scope: !3106)
!3113 = !DILocalVariable(name: "entry", scope: !3106, file: !3, line: 78, type: !119)
!3114 = !DILocation(line: 78, column: 10, scope: !3106)
!3115 = !DILocation(line: 78, column: 18, scope: !3106)
!3116 = !DILocation(line: 78, column: 24, scope: !3106)
!3117 = !DILocation(line: 78, column: 28, scope: !3106)
!3118 = !DILocation(line: 78, column: 34, scope: !3106)
!3119 = !DILocation(line: 79, column: 13, scope: !3106)
!3120 = !DILocation(line: 79, column: 19, scope: !3106)
!3121 = !DILocation(line: 79, column: 37, scope: !3106)
!3122 = !DILocation(line: 79, column: 8, scope: !3106)
!3123 = !DILocation(line: 80, column: 9, scope: !3106)
!3124 = !DILocation(line: 80, column: 15, scope: !3106)
!3125 = !DILocation(line: 80, column: 2, scope: !3106)
!3126 = distinct !DISubprogram(name: "nand_isbad_bbt", scope: !3, file: !3, line: 1415, type: !3127, scopeLine: 1416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!98, !167, !102, !98}
!3129 = !DILocalVariable(name: "this", arg: 1, scope: !3126, file: !3, line: 1415, type: !167)
!3130 = !DILocation(line: 1415, column: 38, scope: !3126)
!3131 = !DILocalVariable(name: "offs", arg: 2, scope: !3126, file: !3, line: 1415, type: !102)
!3132 = !DILocation(line: 1415, column: 51, scope: !3126)
!3133 = !DILocalVariable(name: "allowbbt", arg: 3, scope: !3126, file: !3, line: 1415, type: !98)
!3134 = !DILocation(line: 1415, column: 61, scope: !3126)
!3135 = !DILocalVariable(name: "block", scope: !3126, file: !3, line: 1417, type: !98)
!3136 = !DILocation(line: 1417, column: 6, scope: !3126)
!3137 = !DILocalVariable(name: "res", scope: !3126, file: !3, line: 1417, type: !98)
!3138 = !DILocation(line: 1417, column: 13, scope: !3126)
!3139 = !DILocation(line: 1419, column: 16, scope: !3126)
!3140 = !DILocation(line: 1419, column: 24, scope: !3126)
!3141 = !DILocation(line: 1419, column: 30, scope: !3126)
!3142 = !DILocation(line: 1419, column: 21, scope: !3126)
!3143 = !DILocation(line: 1419, column: 10, scope: !3126)
!3144 = !DILocation(line: 1419, column: 8, scope: !3126)
!3145 = !DILocation(line: 1420, column: 22, scope: !3126)
!3146 = !DILocation(line: 1420, column: 28, scope: !3126)
!3147 = !DILocation(line: 1420, column: 8, scope: !3126)
!3148 = !DILocation(line: 1420, column: 6, scope: !3126)
!3149 = !DILocation(line: 1422, column: 2, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1422, column: 2)
!3151 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1422, column: 2)
!3152 = !DILocation(line: 1422, column: 2, scope: !3151)
!3153 = !DILocation(line: 1425, column: 10, scope: !3126)
!3154 = !DILocation(line: 1425, column: 2, scope: !3126)
!3155 = !DILocation(line: 1427, column: 3, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1425, column: 15)
!3157 = !DILocation(line: 1429, column: 3, scope: !3156)
!3158 = !DILocation(line: 1431, column: 10, scope: !3156)
!3159 = !DILocation(line: 1431, column: 3, scope: !3156)
!3160 = !DILocation(line: 1433, column: 2, scope: !3126)
!3161 = !DILocation(line: 1434, column: 1, scope: !3126)
!3162 = distinct !DISubprogram(name: "nand_markbad_bbt", scope: !3, file: !3, line: 1441, type: !2687, scopeLine: 1442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3163 = !DILocalVariable(name: "this", arg: 1, scope: !3162, file: !3, line: 1441, type: !167)
!3164 = !DILocation(line: 1441, column: 40, scope: !3162)
!3165 = !DILocalVariable(name: "offs", arg: 2, scope: !3162, file: !3, line: 1441, type: !102)
!3166 = !DILocation(line: 1441, column: 53, scope: !3162)
!3167 = !DILocalVariable(name: "block", scope: !3162, file: !3, line: 1443, type: !98)
!3168 = !DILocation(line: 1443, column: 6, scope: !3162)
!3169 = !DILocalVariable(name: "ret", scope: !3162, file: !3, line: 1443, type: !98)
!3170 = !DILocation(line: 1443, column: 13, scope: !3162)
!3171 = !DILocation(line: 1445, column: 16, scope: !3162)
!3172 = !DILocation(line: 1445, column: 24, scope: !3162)
!3173 = !DILocation(line: 1445, column: 30, scope: !3162)
!3174 = !DILocation(line: 1445, column: 21, scope: !3162)
!3175 = !DILocation(line: 1445, column: 10, scope: !3162)
!3176 = !DILocation(line: 1445, column: 8, scope: !3162)
!3177 = !DILocation(line: 1448, column: 17, scope: !3162)
!3178 = !DILocation(line: 1448, column: 23, scope: !3162)
!3179 = !DILocation(line: 1448, column: 2, scope: !3162)
!3180 = !DILocation(line: 1451, column: 6, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1451, column: 6)
!3182 = !DILocation(line: 1451, column: 12, scope: !3181)
!3183 = !DILocation(line: 1451, column: 24, scope: !3181)
!3184 = !DILocation(line: 1451, column: 6, scope: !3162)
!3185 = !DILocation(line: 1452, column: 25, scope: !3181)
!3186 = !DILocation(line: 1452, column: 31, scope: !3181)
!3187 = !DILocation(line: 1452, column: 9, scope: !3181)
!3188 = !DILocation(line: 1452, column: 7, scope: !3181)
!3189 = !DILocation(line: 1452, column: 3, scope: !3181)
!3190 = !DILocation(line: 1454, column: 9, scope: !3162)
!3191 = !DILocation(line: 1454, column: 2, scope: !3162)
!3192 = distinct !DISubprogram(name: "bbt_mark_entry", scope: !3, file: !3, line: 83, type: !3193, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !167, !98, !119}
!3195 = !DILocalVariable(name: "chip", arg: 1, scope: !3192, file: !3, line: 83, type: !167)
!3196 = !DILocation(line: 83, column: 53, scope: !3192)
!3197 = !DILocalVariable(name: "block", arg: 2, scope: !3192, file: !3, line: 83, type: !98)
!3198 = !DILocation(line: 83, column: 63, scope: !3192)
!3199 = !DILocalVariable(name: "mark", arg: 3, scope: !3192, file: !3, line: 84, type: !119)
!3200 = !DILocation(line: 84, column: 11, scope: !3192)
!3201 = !DILocalVariable(name: "msk", scope: !3192, file: !3, line: 86, type: !119)
!3202 = !DILocation(line: 86, column: 10, scope: !3192)
!3203 = !DILocation(line: 86, column: 17, scope: !3192)
!3204 = !DILocation(line: 86, column: 22, scope: !3192)
!3205 = !DILocation(line: 86, column: 45, scope: !3192)
!3206 = !DILocation(line: 86, column: 51, scope: !3192)
!3207 = !DILocation(line: 86, column: 69, scope: !3192)
!3208 = !DILocation(line: 86, column: 40, scope: !3192)
!3209 = !DILocation(line: 86, column: 16, scope: !3192)
!3210 = !DILocation(line: 87, column: 41, scope: !3192)
!3211 = !DILocation(line: 87, column: 2, scope: !3192)
!3212 = !DILocation(line: 87, column: 8, scope: !3192)
!3213 = !DILocation(line: 87, column: 12, scope: !3192)
!3214 = !DILocation(line: 87, column: 18, scope: !3192)
!3215 = !DILocation(line: 87, column: 38, scope: !3192)
!3216 = !DILocation(line: 88, column: 1, scope: !3192)
!3217 = distinct !DISubprogram(name: "nand_update_bbt", scope: !3, file: !3, line: 1041, type: !2687, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3218 = !DILocalVariable(name: "s", arg: 1, scope: !3219, file: !85, line: 445, type: !1293)
!3219 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !85, file: !85, line: 445, type: !3220, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!101, !1293, !99, !111}
!3222 = !DILocation(line: 445, column: 72, scope: !3219, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 552, column: 10, scope: !3224, inlinedAt: !3229)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !85, line: 540, column: 34)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !85, line: 540, column: 6)
!3226 = distinct !DISubprogram(name: "kmalloc", scope: !85, file: !85, line: 538, type: !3227, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!101, !111, !99}
!3229 = distinct !DILocation(line: 1056, column: 8, scope: !3217)
!3230 = !DILocalVariable(name: "flags", arg: 2, scope: !3219, file: !85, line: 446, type: !99)
!3231 = !DILocation(line: 446, column: 9, scope: !3219, inlinedAt: !3223)
!3232 = !DILocalVariable(name: "size", arg: 3, scope: !3219, file: !85, line: 446, type: !111)
!3233 = !DILocation(line: 446, column: 23, scope: !3219, inlinedAt: !3223)
!3234 = !DILocalVariable(name: "ret", scope: !3219, file: !85, line: 448, type: !101)
!3235 = !DILocation(line: 448, column: 8, scope: !3219, inlinedAt: !3223)
!3236 = !DILocalVariable(name: "flags", arg: 1, scope: !3237, file: !85, line: 318, type: !99)
!3237 = distinct !DISubprogram(name: "kmalloc_type", scope: !85, file: !85, line: 318, type: !3238, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!84, !99}
!3240 = !DILocation(line: 318, column: 67, scope: !3237, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 553, column: 20, scope: !3224, inlinedAt: !3229)
!3242 = !DILocalVariable(name: "size", arg: 1, scope: !3243, file: !85, line: 346, type: !111)
!3243 = distinct !DISubprogram(name: "kmalloc_index", scope: !85, file: !85, line: 346, type: !3244, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!7, !111}
!3246 = !DILocation(line: 346, column: 58, scope: !3243, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 547, column: 11, scope: !3224, inlinedAt: !3229)
!3248 = !DILocalVariable(name: "size", arg: 1, scope: !3249, file: !85, line: 472, type: !111)
!3249 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !85, file: !85, line: 472, type: !3250, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!101, !111, !99, !7}
!3252 = !DILocation(line: 472, column: 28, scope: !3249, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 481, column: 9, scope: !3254, inlinedAt: !3255)
!3254 = distinct !DISubprogram(name: "kmalloc_large", scope: !85, file: !85, line: 478, type: !3227, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3255 = distinct !DILocation(line: 545, column: 11, scope: !3256, inlinedAt: !3229)
!3256 = distinct !DILexicalBlock(scope: !3224, file: !85, line: 544, column: 7)
!3257 = !DILocalVariable(name: "flags", arg: 2, scope: !3249, file: !85, line: 472, type: !99)
!3258 = !DILocation(line: 472, column: 40, scope: !3249, inlinedAt: !3253)
!3259 = !DILocalVariable(name: "order", arg: 3, scope: !3249, file: !85, line: 472, type: !7)
!3260 = !DILocation(line: 472, column: 60, scope: !3249, inlinedAt: !3253)
!3261 = !DILocalVariable(name: "size", arg: 1, scope: !3254, file: !85, line: 478, type: !111)
!3262 = !DILocation(line: 478, column: 51, scope: !3254, inlinedAt: !3255)
!3263 = !DILocalVariable(name: "flags", arg: 2, scope: !3254, file: !85, line: 478, type: !99)
!3264 = !DILocation(line: 478, column: 63, scope: !3254, inlinedAt: !3255)
!3265 = !DILocalVariable(name: "order", scope: !3254, file: !85, line: 480, type: !7)
!3266 = !DILocation(line: 480, column: 15, scope: !3254, inlinedAt: !3255)
!3267 = !DILocalVariable(name: "size", arg: 1, scope: !3226, file: !85, line: 538, type: !111)
!3268 = !DILocation(line: 538, column: 45, scope: !3226, inlinedAt: !3229)
!3269 = !DILocalVariable(name: "flags", arg: 2, scope: !3226, file: !85, line: 538, type: !99)
!3270 = !DILocation(line: 538, column: 57, scope: !3226, inlinedAt: !3229)
!3271 = !DILocalVariable(name: "index", scope: !3224, file: !85, line: 542, type: !7)
!3272 = !DILocation(line: 542, column: 16, scope: !3224, inlinedAt: !3229)
!3273 = !DILocalVariable(name: "this", arg: 1, scope: !3217, file: !3, line: 1041, type: !167)
!3274 = !DILocation(line: 1041, column: 46, scope: !3217)
!3275 = !DILocalVariable(name: "offs", arg: 2, scope: !3217, file: !3, line: 1041, type: !102)
!3276 = !DILocation(line: 1041, column: 59, scope: !3217)
!3277 = !DILocalVariable(name: "mtd", scope: !3217, file: !3, line: 1043, type: !209)
!3278 = !DILocation(line: 1043, column: 19, scope: !3217)
!3279 = !DILocation(line: 1043, column: 37, scope: !3217)
!3280 = !DILocation(line: 1043, column: 25, scope: !3217)
!3281 = !DILocalVariable(name: "len", scope: !3217, file: !3, line: 1044, type: !98)
!3282 = !DILocation(line: 1044, column: 6, scope: !3217)
!3283 = !DILocalVariable(name: "res", scope: !3217, file: !3, line: 1044, type: !98)
!3284 = !DILocation(line: 1044, column: 11, scope: !3217)
!3285 = !DILocalVariable(name: "chip", scope: !3217, file: !3, line: 1045, type: !98)
!3286 = !DILocation(line: 1045, column: 6, scope: !3217)
!3287 = !DILocalVariable(name: "chipsel", scope: !3217, file: !3, line: 1045, type: !98)
!3288 = !DILocation(line: 1045, column: 12, scope: !3217)
!3289 = !DILocalVariable(name: "buf", scope: !3217, file: !3, line: 1046, type: !147)
!3290 = !DILocation(line: 1046, column: 11, scope: !3217)
!3291 = !DILocalVariable(name: "td", scope: !3217, file: !3, line: 1047, type: !2764)
!3292 = !DILocation(line: 1047, column: 25, scope: !3217)
!3293 = !DILocation(line: 1047, column: 30, scope: !3217)
!3294 = !DILocation(line: 1047, column: 36, scope: !3217)
!3295 = !DILocalVariable(name: "md", scope: !3217, file: !3, line: 1048, type: !2764)
!3296 = !DILocation(line: 1048, column: 25, scope: !3217)
!3297 = !DILocation(line: 1048, column: 30, scope: !3217)
!3298 = !DILocation(line: 1048, column: 36, scope: !3217)
!3299 = !DILocation(line: 1050, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1050, column: 6)
!3301 = !DILocation(line: 1050, column: 13, scope: !3300)
!3302 = !DILocation(line: 1050, column: 17, scope: !3300)
!3303 = !DILocation(line: 1050, column: 21, scope: !3300)
!3304 = !DILocation(line: 1050, column: 6, scope: !3217)
!3305 = !DILocation(line: 1051, column: 3, scope: !3300)
!3306 = !DILocation(line: 1054, column: 14, scope: !3217)
!3307 = !DILocation(line: 1054, column: 20, scope: !3217)
!3308 = !DILocation(line: 1054, column: 11, scope: !3217)
!3309 = !DILocation(line: 1054, column: 6, scope: !3217)
!3310 = !DILocation(line: 1055, column: 10, scope: !3217)
!3311 = !DILocation(line: 1055, column: 17, scope: !3217)
!3312 = !DILocation(line: 1055, column: 23, scope: !3217)
!3313 = !DILocation(line: 1055, column: 14, scope: !3217)
!3314 = !DILocation(line: 1055, column: 37, scope: !3217)
!3315 = !DILocation(line: 1055, column: 42, scope: !3217)
!3316 = !DILocation(line: 1055, column: 35, scope: !3217)
!3317 = !DILocation(line: 1055, column: 6, scope: !3217)
!3318 = !DILocation(line: 1056, column: 16, scope: !3217)
!3319 = !DILocation(line: 540, column: 27, scope: !3225, inlinedAt: !3229)
!3320 = !DILocation(line: 540, column: 6, scope: !3225, inlinedAt: !3229)
!3321 = !DILocation(line: 540, column: 6, scope: !3226, inlinedAt: !3229)
!3322 = !DILocation(line: 544, column: 7, scope: !3256, inlinedAt: !3229)
!3323 = !DILocation(line: 544, column: 12, scope: !3256, inlinedAt: !3229)
!3324 = !DILocation(line: 544, column: 7, scope: !3224, inlinedAt: !3229)
!3325 = !DILocation(line: 545, column: 25, scope: !3256, inlinedAt: !3229)
!3326 = !DILocation(line: 545, column: 31, scope: !3256, inlinedAt: !3229)
!3327 = !DILocation(line: 480, column: 33, scope: !3254, inlinedAt: !3255)
!3328 = !DILocation(line: 480, column: 23, scope: !3254, inlinedAt: !3255)
!3329 = !DILocation(line: 481, column: 29, scope: !3254, inlinedAt: !3255)
!3330 = !DILocation(line: 481, column: 35, scope: !3254, inlinedAt: !3255)
!3331 = !DILocation(line: 481, column: 42, scope: !3254, inlinedAt: !3255)
!3332 = !DILocation(line: 474, column: 23, scope: !3249, inlinedAt: !3253)
!3333 = !DILocation(line: 474, column: 29, scope: !3249, inlinedAt: !3253)
!3334 = !DILocation(line: 474, column: 36, scope: !3249, inlinedAt: !3253)
!3335 = !DILocation(line: 474, column: 9, scope: !3249, inlinedAt: !3253)
!3336 = !DILocation(line: 545, column: 4, scope: !3256, inlinedAt: !3229)
!3337 = !DILocation(line: 547, column: 25, scope: !3224, inlinedAt: !3229)
!3338 = !DILocation(line: 348, column: 7, scope: !3339, inlinedAt: !3247)
!3339 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 348, column: 6)
!3340 = !DILocation(line: 348, column: 6, scope: !3243, inlinedAt: !3247)
!3341 = !DILocation(line: 349, column: 3, scope: !3339, inlinedAt: !3247)
!3342 = !DILocation(line: 351, column: 6, scope: !3343, inlinedAt: !3247)
!3343 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 351, column: 6)
!3344 = !DILocation(line: 351, column: 11, scope: !3343, inlinedAt: !3247)
!3345 = !DILocation(line: 351, column: 6, scope: !3243, inlinedAt: !3247)
!3346 = !DILocation(line: 352, column: 3, scope: !3343, inlinedAt: !3247)
!3347 = !DILocation(line: 354, column: 32, scope: !3348, inlinedAt: !3247)
!3348 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 354, column: 6)
!3349 = !DILocation(line: 354, column: 37, scope: !3348, inlinedAt: !3247)
!3350 = !DILocation(line: 354, column: 42, scope: !3348, inlinedAt: !3247)
!3351 = !DILocation(line: 354, column: 45, scope: !3348, inlinedAt: !3247)
!3352 = !DILocation(line: 354, column: 50, scope: !3348, inlinedAt: !3247)
!3353 = !DILocation(line: 354, column: 6, scope: !3243, inlinedAt: !3247)
!3354 = !DILocation(line: 355, column: 3, scope: !3348, inlinedAt: !3247)
!3355 = !DILocation(line: 356, column: 32, scope: !3356, inlinedAt: !3247)
!3356 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 356, column: 6)
!3357 = !DILocation(line: 356, column: 37, scope: !3356, inlinedAt: !3247)
!3358 = !DILocation(line: 356, column: 43, scope: !3356, inlinedAt: !3247)
!3359 = !DILocation(line: 356, column: 46, scope: !3356, inlinedAt: !3247)
!3360 = !DILocation(line: 356, column: 51, scope: !3356, inlinedAt: !3247)
!3361 = !DILocation(line: 356, column: 6, scope: !3243, inlinedAt: !3247)
!3362 = !DILocation(line: 357, column: 3, scope: !3356, inlinedAt: !3247)
!3363 = !DILocation(line: 358, column: 6, scope: !3364, inlinedAt: !3247)
!3364 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 358, column: 6)
!3365 = !DILocation(line: 358, column: 11, scope: !3364, inlinedAt: !3247)
!3366 = !DILocation(line: 358, column: 6, scope: !3243, inlinedAt: !3247)
!3367 = !DILocation(line: 358, column: 26, scope: !3364, inlinedAt: !3247)
!3368 = !DILocation(line: 359, column: 6, scope: !3369, inlinedAt: !3247)
!3369 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 359, column: 6)
!3370 = !DILocation(line: 359, column: 11, scope: !3369, inlinedAt: !3247)
!3371 = !DILocation(line: 359, column: 6, scope: !3243, inlinedAt: !3247)
!3372 = !DILocation(line: 359, column: 26, scope: !3369, inlinedAt: !3247)
!3373 = !DILocation(line: 360, column: 6, scope: !3374, inlinedAt: !3247)
!3374 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 360, column: 6)
!3375 = !DILocation(line: 360, column: 11, scope: !3374, inlinedAt: !3247)
!3376 = !DILocation(line: 360, column: 6, scope: !3243, inlinedAt: !3247)
!3377 = !DILocation(line: 360, column: 26, scope: !3374, inlinedAt: !3247)
!3378 = !DILocation(line: 361, column: 6, scope: !3379, inlinedAt: !3247)
!3379 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 361, column: 6)
!3380 = !DILocation(line: 361, column: 11, scope: !3379, inlinedAt: !3247)
!3381 = !DILocation(line: 361, column: 6, scope: !3243, inlinedAt: !3247)
!3382 = !DILocation(line: 361, column: 26, scope: !3379, inlinedAt: !3247)
!3383 = !DILocation(line: 362, column: 6, scope: !3384, inlinedAt: !3247)
!3384 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 362, column: 6)
!3385 = !DILocation(line: 362, column: 11, scope: !3384, inlinedAt: !3247)
!3386 = !DILocation(line: 362, column: 6, scope: !3243, inlinedAt: !3247)
!3387 = !DILocation(line: 362, column: 26, scope: !3384, inlinedAt: !3247)
!3388 = !DILocation(line: 363, column: 6, scope: !3389, inlinedAt: !3247)
!3389 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 363, column: 6)
!3390 = !DILocation(line: 363, column: 11, scope: !3389, inlinedAt: !3247)
!3391 = !DILocation(line: 363, column: 6, scope: !3243, inlinedAt: !3247)
!3392 = !DILocation(line: 363, column: 26, scope: !3389, inlinedAt: !3247)
!3393 = !DILocation(line: 364, column: 6, scope: !3394, inlinedAt: !3247)
!3394 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 364, column: 6)
!3395 = !DILocation(line: 364, column: 11, scope: !3394, inlinedAt: !3247)
!3396 = !DILocation(line: 364, column: 6, scope: !3243, inlinedAt: !3247)
!3397 = !DILocation(line: 364, column: 26, scope: !3394, inlinedAt: !3247)
!3398 = !DILocation(line: 365, column: 6, scope: !3399, inlinedAt: !3247)
!3399 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 365, column: 6)
!3400 = !DILocation(line: 365, column: 11, scope: !3399, inlinedAt: !3247)
!3401 = !DILocation(line: 365, column: 6, scope: !3243, inlinedAt: !3247)
!3402 = !DILocation(line: 365, column: 26, scope: !3399, inlinedAt: !3247)
!3403 = !DILocation(line: 366, column: 6, scope: !3404, inlinedAt: !3247)
!3404 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 366, column: 6)
!3405 = !DILocation(line: 366, column: 11, scope: !3404, inlinedAt: !3247)
!3406 = !DILocation(line: 366, column: 6, scope: !3243, inlinedAt: !3247)
!3407 = !DILocation(line: 366, column: 26, scope: !3404, inlinedAt: !3247)
!3408 = !DILocation(line: 367, column: 6, scope: !3409, inlinedAt: !3247)
!3409 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 367, column: 6)
!3410 = !DILocation(line: 367, column: 11, scope: !3409, inlinedAt: !3247)
!3411 = !DILocation(line: 367, column: 6, scope: !3243, inlinedAt: !3247)
!3412 = !DILocation(line: 367, column: 26, scope: !3409, inlinedAt: !3247)
!3413 = !DILocation(line: 368, column: 6, scope: !3414, inlinedAt: !3247)
!3414 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 368, column: 6)
!3415 = !DILocation(line: 368, column: 11, scope: !3414, inlinedAt: !3247)
!3416 = !DILocation(line: 368, column: 6, scope: !3243, inlinedAt: !3247)
!3417 = !DILocation(line: 368, column: 26, scope: !3414, inlinedAt: !3247)
!3418 = !DILocation(line: 369, column: 6, scope: !3419, inlinedAt: !3247)
!3419 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 369, column: 6)
!3420 = !DILocation(line: 369, column: 11, scope: !3419, inlinedAt: !3247)
!3421 = !DILocation(line: 369, column: 6, scope: !3243, inlinedAt: !3247)
!3422 = !DILocation(line: 369, column: 26, scope: !3419, inlinedAt: !3247)
!3423 = !DILocation(line: 370, column: 6, scope: !3424, inlinedAt: !3247)
!3424 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 370, column: 6)
!3425 = !DILocation(line: 370, column: 11, scope: !3424, inlinedAt: !3247)
!3426 = !DILocation(line: 370, column: 6, scope: !3243, inlinedAt: !3247)
!3427 = !DILocation(line: 370, column: 26, scope: !3424, inlinedAt: !3247)
!3428 = !DILocation(line: 371, column: 6, scope: !3429, inlinedAt: !3247)
!3429 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 371, column: 6)
!3430 = !DILocation(line: 371, column: 11, scope: !3429, inlinedAt: !3247)
!3431 = !DILocation(line: 371, column: 6, scope: !3243, inlinedAt: !3247)
!3432 = !DILocation(line: 371, column: 26, scope: !3429, inlinedAt: !3247)
!3433 = !DILocation(line: 372, column: 6, scope: !3434, inlinedAt: !3247)
!3434 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 372, column: 6)
!3435 = !DILocation(line: 372, column: 11, scope: !3434, inlinedAt: !3247)
!3436 = !DILocation(line: 372, column: 6, scope: !3243, inlinedAt: !3247)
!3437 = !DILocation(line: 372, column: 26, scope: !3434, inlinedAt: !3247)
!3438 = !DILocation(line: 373, column: 6, scope: !3439, inlinedAt: !3247)
!3439 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 373, column: 6)
!3440 = !DILocation(line: 373, column: 11, scope: !3439, inlinedAt: !3247)
!3441 = !DILocation(line: 373, column: 6, scope: !3243, inlinedAt: !3247)
!3442 = !DILocation(line: 373, column: 26, scope: !3439, inlinedAt: !3247)
!3443 = !DILocation(line: 374, column: 6, scope: !3444, inlinedAt: !3247)
!3444 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 374, column: 6)
!3445 = !DILocation(line: 374, column: 11, scope: !3444, inlinedAt: !3247)
!3446 = !DILocation(line: 374, column: 6, scope: !3243, inlinedAt: !3247)
!3447 = !DILocation(line: 374, column: 26, scope: !3444, inlinedAt: !3247)
!3448 = !DILocation(line: 375, column: 6, scope: !3449, inlinedAt: !3247)
!3449 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 375, column: 6)
!3450 = !DILocation(line: 375, column: 11, scope: !3449, inlinedAt: !3247)
!3451 = !DILocation(line: 375, column: 6, scope: !3243, inlinedAt: !3247)
!3452 = !DILocation(line: 375, column: 27, scope: !3449, inlinedAt: !3247)
!3453 = !DILocation(line: 376, column: 6, scope: !3454, inlinedAt: !3247)
!3454 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 376, column: 6)
!3455 = !DILocation(line: 376, column: 11, scope: !3454, inlinedAt: !3247)
!3456 = !DILocation(line: 376, column: 6, scope: !3243, inlinedAt: !3247)
!3457 = !DILocation(line: 376, column: 32, scope: !3454, inlinedAt: !3247)
!3458 = !DILocation(line: 377, column: 6, scope: !3459, inlinedAt: !3247)
!3459 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 377, column: 6)
!3460 = !DILocation(line: 377, column: 11, scope: !3459, inlinedAt: !3247)
!3461 = !DILocation(line: 377, column: 6, scope: !3243, inlinedAt: !3247)
!3462 = !DILocation(line: 377, column: 32, scope: !3459, inlinedAt: !3247)
!3463 = !DILocation(line: 378, column: 6, scope: !3464, inlinedAt: !3247)
!3464 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 378, column: 6)
!3465 = !DILocation(line: 378, column: 11, scope: !3464, inlinedAt: !3247)
!3466 = !DILocation(line: 378, column: 6, scope: !3243, inlinedAt: !3247)
!3467 = !DILocation(line: 378, column: 32, scope: !3464, inlinedAt: !3247)
!3468 = !DILocation(line: 379, column: 6, scope: !3469, inlinedAt: !3247)
!3469 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 379, column: 6)
!3470 = !DILocation(line: 379, column: 11, scope: !3469, inlinedAt: !3247)
!3471 = !DILocation(line: 379, column: 6, scope: !3243, inlinedAt: !3247)
!3472 = !DILocation(line: 379, column: 33, scope: !3469, inlinedAt: !3247)
!3473 = !DILocation(line: 380, column: 6, scope: !3474, inlinedAt: !3247)
!3474 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 380, column: 6)
!3475 = !DILocation(line: 380, column: 11, scope: !3474, inlinedAt: !3247)
!3476 = !DILocation(line: 380, column: 6, scope: !3243, inlinedAt: !3247)
!3477 = !DILocation(line: 380, column: 33, scope: !3474, inlinedAt: !3247)
!3478 = !DILocation(line: 381, column: 6, scope: !3479, inlinedAt: !3247)
!3479 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 381, column: 6)
!3480 = !DILocation(line: 381, column: 11, scope: !3479, inlinedAt: !3247)
!3481 = !DILocation(line: 381, column: 6, scope: !3243, inlinedAt: !3247)
!3482 = !DILocation(line: 381, column: 33, scope: !3479, inlinedAt: !3247)
!3483 = !DILocation(line: 382, column: 2, scope: !3484, inlinedAt: !3247)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !85, line: 382, column: 2)
!3485 = distinct !DILexicalBlock(scope: !3243, file: !85, line: 382, column: 2)
!3486 = !{i32 -2144614505, i32 -2144614476, i32 -2144614430, i32 -2144614372, i32 -2144614318, i32 -2144614264, i32 -2144614209, i32 -2144614178}
!3487 = !DILocation(line: 382, column: 2, scope: !3488, inlinedAt: !3247)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !85, line: 382, column: 2)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !85, line: 382, column: 2)
!3490 = !{i32 -2144613735, i32 -2144613728, i32 -2144613674, i32 -2144613643, i32 -2144613613}
!3491 = !DILocation(line: 382, column: 2, scope: !3489, inlinedAt: !3247)
!3492 = !DILocation(line: 386, column: 1, scope: !3243, inlinedAt: !3247)
!3493 = !DILocation(line: 547, column: 9, scope: !3224, inlinedAt: !3229)
!3494 = !DILocation(line: 549, column: 8, scope: !3495, inlinedAt: !3229)
!3495 = distinct !DILexicalBlock(scope: !3224, file: !85, line: 549, column: 7)
!3496 = !DILocation(line: 549, column: 7, scope: !3224, inlinedAt: !3229)
!3497 = !DILocation(line: 550, column: 4, scope: !3495, inlinedAt: !3229)
!3498 = !DILocation(line: 553, column: 33, scope: !3224, inlinedAt: !3229)
!3499 = !DILocation(line: 325, column: 6, scope: !3500, inlinedAt: !3241)
!3500 = distinct !DILexicalBlock(scope: !3237, file: !85, line: 325, column: 6)
!3501 = !DILocation(line: 325, column: 6, scope: !3237, inlinedAt: !3241)
!3502 = !DILocation(line: 326, column: 3, scope: !3500, inlinedAt: !3241)
!3503 = !DILocation(line: 332, column: 9, scope: !3237, inlinedAt: !3241)
!3504 = !DILocation(line: 332, column: 15, scope: !3237, inlinedAt: !3241)
!3505 = !DILocation(line: 332, column: 2, scope: !3237, inlinedAt: !3241)
!3506 = !DILocation(line: 336, column: 1, scope: !3237, inlinedAt: !3241)
!3507 = !DILocation(line: 553, column: 5, scope: !3224, inlinedAt: !3229)
!3508 = !DILocation(line: 553, column: 41, scope: !3224, inlinedAt: !3229)
!3509 = !DILocation(line: 554, column: 5, scope: !3224, inlinedAt: !3229)
!3510 = !DILocation(line: 554, column: 12, scope: !3224, inlinedAt: !3229)
!3511 = !DILocation(line: 448, column: 31, scope: !3219, inlinedAt: !3223)
!3512 = !DILocation(line: 448, column: 34, scope: !3219, inlinedAt: !3223)
!3513 = !DILocation(line: 448, column: 14, scope: !3219, inlinedAt: !3223)
!3514 = !DILocation(line: 450, column: 22, scope: !3219, inlinedAt: !3223)
!3515 = !DILocation(line: 450, column: 25, scope: !3219, inlinedAt: !3223)
!3516 = !DILocation(line: 450, column: 30, scope: !3219, inlinedAt: !3223)
!3517 = !DILocation(line: 450, column: 36, scope: !3219, inlinedAt: !3223)
!3518 = !DILocation(line: 450, column: 8, scope: !3219, inlinedAt: !3223)
!3519 = !DILocation(line: 450, column: 6, scope: !3219, inlinedAt: !3223)
!3520 = !DILocation(line: 451, column: 9, scope: !3219, inlinedAt: !3223)
!3521 = !DILocation(line: 552, column: 3, scope: !3224, inlinedAt: !3229)
!3522 = !DILocation(line: 557, column: 19, scope: !3226, inlinedAt: !3229)
!3523 = !DILocation(line: 557, column: 25, scope: !3226, inlinedAt: !3229)
!3524 = !DILocation(line: 557, column: 9, scope: !3226, inlinedAt: !3229)
!3525 = !DILocation(line: 557, column: 2, scope: !3226, inlinedAt: !3229)
!3526 = !DILocation(line: 558, column: 1, scope: !3226, inlinedAt: !3229)
!3527 = !DILocation(line: 1056, column: 6, scope: !3217)
!3528 = !DILocation(line: 1057, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1057, column: 6)
!3530 = !DILocation(line: 1057, column: 6, scope: !3217)
!3531 = !DILocation(line: 1058, column: 3, scope: !3529)
!3532 = !DILocation(line: 1061, column: 6, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1061, column: 6)
!3534 = !DILocation(line: 1061, column: 10, scope: !3533)
!3535 = !DILocation(line: 1061, column: 18, scope: !3533)
!3536 = !DILocation(line: 1061, column: 6, scope: !3217)
!3537 = !DILocation(line: 1062, column: 16, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1061, column: 38)
!3539 = !DILocation(line: 1062, column: 24, scope: !3538)
!3540 = !DILocation(line: 1062, column: 30, scope: !3538)
!3541 = !DILocation(line: 1062, column: 21, scope: !3538)
!3542 = !DILocation(line: 1062, column: 10, scope: !3538)
!3543 = !DILocation(line: 1062, column: 8, scope: !3538)
!3544 = !DILocation(line: 1063, column: 13, scope: !3538)
!3545 = !DILocation(line: 1063, column: 11, scope: !3538)
!3546 = !DILocation(line: 1064, column: 2, scope: !3538)
!3547 = !DILocation(line: 1065, column: 8, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1064, column: 9)
!3549 = !DILocation(line: 1066, column: 11, scope: !3548)
!3550 = !DILocation(line: 1069, column: 2, scope: !3217)
!3551 = !DILocation(line: 1069, column: 6, scope: !3217)
!3552 = !DILocation(line: 1069, column: 14, scope: !3217)
!3553 = !DILocation(line: 1069, column: 19, scope: !3217)
!3554 = !DILocation(line: 1070, column: 6, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1070, column: 6)
!3556 = !DILocation(line: 1070, column: 6, scope: !3217)
!3557 = !DILocation(line: 1071, column: 3, scope: !3555)
!3558 = !DILocation(line: 1071, column: 7, scope: !3555)
!3559 = !DILocation(line: 1071, column: 15, scope: !3555)
!3560 = !DILocation(line: 1071, column: 20, scope: !3555)
!3561 = !DILocation(line: 1074, column: 6, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1074, column: 6)
!3563 = !DILocation(line: 1074, column: 10, scope: !3562)
!3564 = !DILocation(line: 1074, column: 18, scope: !3562)
!3565 = !DILocation(line: 1074, column: 6, scope: !3217)
!3566 = !DILocation(line: 1075, column: 19, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 1074, column: 36)
!3568 = !DILocation(line: 1075, column: 25, scope: !3567)
!3569 = !DILocation(line: 1075, column: 30, scope: !3567)
!3570 = !DILocation(line: 1075, column: 34, scope: !3567)
!3571 = !DILocation(line: 1075, column: 38, scope: !3567)
!3572 = !DILocation(line: 1075, column: 9, scope: !3567)
!3573 = !DILocation(line: 1075, column: 7, scope: !3567)
!3574 = !DILocation(line: 1076, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1076, column: 7)
!3576 = !DILocation(line: 1076, column: 11, scope: !3575)
!3577 = !DILocation(line: 1076, column: 7, scope: !3567)
!3578 = !DILocation(line: 1077, column: 4, scope: !3575)
!3579 = !DILocation(line: 1078, column: 2, scope: !3567)
!3580 = !DILocation(line: 1080, column: 6, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1080, column: 6)
!3582 = !DILocation(line: 1080, column: 9, scope: !3581)
!3583 = !DILocation(line: 1080, column: 13, scope: !3581)
!3584 = !DILocation(line: 1080, column: 17, scope: !3581)
!3585 = !DILocation(line: 1080, column: 25, scope: !3581)
!3586 = !DILocation(line: 1080, column: 6, scope: !3217)
!3587 = !DILocation(line: 1081, column: 19, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 1080, column: 44)
!3589 = !DILocation(line: 1081, column: 25, scope: !3588)
!3590 = !DILocation(line: 1081, column: 30, scope: !3588)
!3591 = !DILocation(line: 1081, column: 34, scope: !3588)
!3592 = !DILocation(line: 1081, column: 38, scope: !3588)
!3593 = !DILocation(line: 1081, column: 9, scope: !3588)
!3594 = !DILocation(line: 1081, column: 7, scope: !3588)
!3595 = !DILocation(line: 1082, column: 2, scope: !3588)
!3596 = !DILocation(line: 1080, column: 41, scope: !3581)
!3597 = !DILabel(scope: !3217, name: "out", file: !3, line: 1084)
!3598 = !DILocation(line: 1084, column: 2, scope: !3217)
!3599 = !DILocation(line: 1085, column: 8, scope: !3217)
!3600 = !DILocation(line: 1085, column: 2, scope: !3217)
!3601 = !DILocation(line: 1086, column: 9, scope: !3217)
!3602 = !DILocation(line: 1086, column: 2, scope: !3217)
!3603 = !DILocation(line: 1087, column: 1, scope: !3217)
!3604 = distinct !DISubprogram(name: "kzalloc", scope: !85, file: !85, line: 662, type: !3227, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3605 = !DILocation(line: 445, column: 72, scope: !3219, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 552, column: 10, scope: !3224, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 664, column: 9, scope: !3604)
!3608 = !DILocation(line: 446, column: 9, scope: !3219, inlinedAt: !3606)
!3609 = !DILocation(line: 446, column: 23, scope: !3219, inlinedAt: !3606)
!3610 = !DILocation(line: 448, column: 8, scope: !3219, inlinedAt: !3606)
!3611 = !DILocation(line: 318, column: 67, scope: !3237, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 553, column: 20, scope: !3224, inlinedAt: !3607)
!3613 = !DILocation(line: 346, column: 58, scope: !3243, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 547, column: 11, scope: !3224, inlinedAt: !3607)
!3615 = !DILocation(line: 472, column: 28, scope: !3249, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 481, column: 9, scope: !3254, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 545, column: 11, scope: !3256, inlinedAt: !3607)
!3618 = !DILocation(line: 472, column: 40, scope: !3249, inlinedAt: !3616)
!3619 = !DILocation(line: 472, column: 60, scope: !3249, inlinedAt: !3616)
!3620 = !DILocation(line: 478, column: 51, scope: !3254, inlinedAt: !3617)
!3621 = !DILocation(line: 478, column: 63, scope: !3254, inlinedAt: !3617)
!3622 = !DILocation(line: 480, column: 15, scope: !3254, inlinedAt: !3617)
!3623 = !DILocation(line: 538, column: 45, scope: !3226, inlinedAt: !3607)
!3624 = !DILocation(line: 538, column: 57, scope: !3226, inlinedAt: !3607)
!3625 = !DILocation(line: 542, column: 16, scope: !3224, inlinedAt: !3607)
!3626 = !DILocalVariable(name: "size", arg: 1, scope: !3604, file: !85, line: 662, type: !111)
!3627 = !DILocation(line: 662, column: 36, scope: !3604)
!3628 = !DILocalVariable(name: "flags", arg: 2, scope: !3604, file: !85, line: 662, type: !99)
!3629 = !DILocation(line: 662, column: 48, scope: !3604)
!3630 = !DILocation(line: 664, column: 17, scope: !3604)
!3631 = !DILocation(line: 664, column: 23, scope: !3604)
!3632 = !DILocation(line: 664, column: 29, scope: !3604)
!3633 = !DILocation(line: 540, column: 27, scope: !3225, inlinedAt: !3607)
!3634 = !DILocation(line: 540, column: 6, scope: !3225, inlinedAt: !3607)
!3635 = !DILocation(line: 540, column: 6, scope: !3226, inlinedAt: !3607)
!3636 = !DILocation(line: 544, column: 7, scope: !3256, inlinedAt: !3607)
!3637 = !DILocation(line: 544, column: 12, scope: !3256, inlinedAt: !3607)
!3638 = !DILocation(line: 544, column: 7, scope: !3224, inlinedAt: !3607)
!3639 = !DILocation(line: 545, column: 25, scope: !3256, inlinedAt: !3607)
!3640 = !DILocation(line: 545, column: 31, scope: !3256, inlinedAt: !3607)
!3641 = !DILocation(line: 480, column: 33, scope: !3254, inlinedAt: !3617)
!3642 = !DILocation(line: 480, column: 23, scope: !3254, inlinedAt: !3617)
!3643 = !DILocation(line: 481, column: 29, scope: !3254, inlinedAt: !3617)
!3644 = !DILocation(line: 481, column: 35, scope: !3254, inlinedAt: !3617)
!3645 = !DILocation(line: 481, column: 42, scope: !3254, inlinedAt: !3617)
!3646 = !DILocation(line: 474, column: 23, scope: !3249, inlinedAt: !3616)
!3647 = !DILocation(line: 474, column: 29, scope: !3249, inlinedAt: !3616)
!3648 = !DILocation(line: 474, column: 36, scope: !3249, inlinedAt: !3616)
!3649 = !DILocation(line: 474, column: 9, scope: !3249, inlinedAt: !3616)
!3650 = !DILocation(line: 545, column: 4, scope: !3256, inlinedAt: !3607)
!3651 = !DILocation(line: 547, column: 25, scope: !3224, inlinedAt: !3607)
!3652 = !DILocation(line: 348, column: 7, scope: !3339, inlinedAt: !3614)
!3653 = !DILocation(line: 348, column: 6, scope: !3243, inlinedAt: !3614)
!3654 = !DILocation(line: 349, column: 3, scope: !3339, inlinedAt: !3614)
!3655 = !DILocation(line: 351, column: 6, scope: !3343, inlinedAt: !3614)
!3656 = !DILocation(line: 351, column: 11, scope: !3343, inlinedAt: !3614)
!3657 = !DILocation(line: 351, column: 6, scope: !3243, inlinedAt: !3614)
!3658 = !DILocation(line: 352, column: 3, scope: !3343, inlinedAt: !3614)
!3659 = !DILocation(line: 354, column: 32, scope: !3348, inlinedAt: !3614)
!3660 = !DILocation(line: 354, column: 37, scope: !3348, inlinedAt: !3614)
!3661 = !DILocation(line: 354, column: 42, scope: !3348, inlinedAt: !3614)
!3662 = !DILocation(line: 354, column: 45, scope: !3348, inlinedAt: !3614)
!3663 = !DILocation(line: 354, column: 50, scope: !3348, inlinedAt: !3614)
!3664 = !DILocation(line: 354, column: 6, scope: !3243, inlinedAt: !3614)
!3665 = !DILocation(line: 355, column: 3, scope: !3348, inlinedAt: !3614)
!3666 = !DILocation(line: 356, column: 32, scope: !3356, inlinedAt: !3614)
!3667 = !DILocation(line: 356, column: 37, scope: !3356, inlinedAt: !3614)
!3668 = !DILocation(line: 356, column: 43, scope: !3356, inlinedAt: !3614)
!3669 = !DILocation(line: 356, column: 46, scope: !3356, inlinedAt: !3614)
!3670 = !DILocation(line: 356, column: 51, scope: !3356, inlinedAt: !3614)
!3671 = !DILocation(line: 356, column: 6, scope: !3243, inlinedAt: !3614)
!3672 = !DILocation(line: 357, column: 3, scope: !3356, inlinedAt: !3614)
!3673 = !DILocation(line: 358, column: 6, scope: !3364, inlinedAt: !3614)
!3674 = !DILocation(line: 358, column: 11, scope: !3364, inlinedAt: !3614)
!3675 = !DILocation(line: 358, column: 6, scope: !3243, inlinedAt: !3614)
!3676 = !DILocation(line: 358, column: 26, scope: !3364, inlinedAt: !3614)
!3677 = !DILocation(line: 359, column: 6, scope: !3369, inlinedAt: !3614)
!3678 = !DILocation(line: 359, column: 11, scope: !3369, inlinedAt: !3614)
!3679 = !DILocation(line: 359, column: 6, scope: !3243, inlinedAt: !3614)
!3680 = !DILocation(line: 359, column: 26, scope: !3369, inlinedAt: !3614)
!3681 = !DILocation(line: 360, column: 6, scope: !3374, inlinedAt: !3614)
!3682 = !DILocation(line: 360, column: 11, scope: !3374, inlinedAt: !3614)
!3683 = !DILocation(line: 360, column: 6, scope: !3243, inlinedAt: !3614)
!3684 = !DILocation(line: 360, column: 26, scope: !3374, inlinedAt: !3614)
!3685 = !DILocation(line: 361, column: 6, scope: !3379, inlinedAt: !3614)
!3686 = !DILocation(line: 361, column: 11, scope: !3379, inlinedAt: !3614)
!3687 = !DILocation(line: 361, column: 6, scope: !3243, inlinedAt: !3614)
!3688 = !DILocation(line: 361, column: 26, scope: !3379, inlinedAt: !3614)
!3689 = !DILocation(line: 362, column: 6, scope: !3384, inlinedAt: !3614)
!3690 = !DILocation(line: 362, column: 11, scope: !3384, inlinedAt: !3614)
!3691 = !DILocation(line: 362, column: 6, scope: !3243, inlinedAt: !3614)
!3692 = !DILocation(line: 362, column: 26, scope: !3384, inlinedAt: !3614)
!3693 = !DILocation(line: 363, column: 6, scope: !3389, inlinedAt: !3614)
!3694 = !DILocation(line: 363, column: 11, scope: !3389, inlinedAt: !3614)
!3695 = !DILocation(line: 363, column: 6, scope: !3243, inlinedAt: !3614)
!3696 = !DILocation(line: 363, column: 26, scope: !3389, inlinedAt: !3614)
!3697 = !DILocation(line: 364, column: 6, scope: !3394, inlinedAt: !3614)
!3698 = !DILocation(line: 364, column: 11, scope: !3394, inlinedAt: !3614)
!3699 = !DILocation(line: 364, column: 6, scope: !3243, inlinedAt: !3614)
!3700 = !DILocation(line: 364, column: 26, scope: !3394, inlinedAt: !3614)
!3701 = !DILocation(line: 365, column: 6, scope: !3399, inlinedAt: !3614)
!3702 = !DILocation(line: 365, column: 11, scope: !3399, inlinedAt: !3614)
!3703 = !DILocation(line: 365, column: 6, scope: !3243, inlinedAt: !3614)
!3704 = !DILocation(line: 365, column: 26, scope: !3399, inlinedAt: !3614)
!3705 = !DILocation(line: 366, column: 6, scope: !3404, inlinedAt: !3614)
!3706 = !DILocation(line: 366, column: 11, scope: !3404, inlinedAt: !3614)
!3707 = !DILocation(line: 366, column: 6, scope: !3243, inlinedAt: !3614)
!3708 = !DILocation(line: 366, column: 26, scope: !3404, inlinedAt: !3614)
!3709 = !DILocation(line: 367, column: 6, scope: !3409, inlinedAt: !3614)
!3710 = !DILocation(line: 367, column: 11, scope: !3409, inlinedAt: !3614)
!3711 = !DILocation(line: 367, column: 6, scope: !3243, inlinedAt: !3614)
!3712 = !DILocation(line: 367, column: 26, scope: !3409, inlinedAt: !3614)
!3713 = !DILocation(line: 368, column: 6, scope: !3414, inlinedAt: !3614)
!3714 = !DILocation(line: 368, column: 11, scope: !3414, inlinedAt: !3614)
!3715 = !DILocation(line: 368, column: 6, scope: !3243, inlinedAt: !3614)
!3716 = !DILocation(line: 368, column: 26, scope: !3414, inlinedAt: !3614)
!3717 = !DILocation(line: 369, column: 6, scope: !3419, inlinedAt: !3614)
!3718 = !DILocation(line: 369, column: 11, scope: !3419, inlinedAt: !3614)
!3719 = !DILocation(line: 369, column: 6, scope: !3243, inlinedAt: !3614)
!3720 = !DILocation(line: 369, column: 26, scope: !3419, inlinedAt: !3614)
!3721 = !DILocation(line: 370, column: 6, scope: !3424, inlinedAt: !3614)
!3722 = !DILocation(line: 370, column: 11, scope: !3424, inlinedAt: !3614)
!3723 = !DILocation(line: 370, column: 6, scope: !3243, inlinedAt: !3614)
!3724 = !DILocation(line: 370, column: 26, scope: !3424, inlinedAt: !3614)
!3725 = !DILocation(line: 371, column: 6, scope: !3429, inlinedAt: !3614)
!3726 = !DILocation(line: 371, column: 11, scope: !3429, inlinedAt: !3614)
!3727 = !DILocation(line: 371, column: 6, scope: !3243, inlinedAt: !3614)
!3728 = !DILocation(line: 371, column: 26, scope: !3429, inlinedAt: !3614)
!3729 = !DILocation(line: 372, column: 6, scope: !3434, inlinedAt: !3614)
!3730 = !DILocation(line: 372, column: 11, scope: !3434, inlinedAt: !3614)
!3731 = !DILocation(line: 372, column: 6, scope: !3243, inlinedAt: !3614)
!3732 = !DILocation(line: 372, column: 26, scope: !3434, inlinedAt: !3614)
!3733 = !DILocation(line: 373, column: 6, scope: !3439, inlinedAt: !3614)
!3734 = !DILocation(line: 373, column: 11, scope: !3439, inlinedAt: !3614)
!3735 = !DILocation(line: 373, column: 6, scope: !3243, inlinedAt: !3614)
!3736 = !DILocation(line: 373, column: 26, scope: !3439, inlinedAt: !3614)
!3737 = !DILocation(line: 374, column: 6, scope: !3444, inlinedAt: !3614)
!3738 = !DILocation(line: 374, column: 11, scope: !3444, inlinedAt: !3614)
!3739 = !DILocation(line: 374, column: 6, scope: !3243, inlinedAt: !3614)
!3740 = !DILocation(line: 374, column: 26, scope: !3444, inlinedAt: !3614)
!3741 = !DILocation(line: 375, column: 6, scope: !3449, inlinedAt: !3614)
!3742 = !DILocation(line: 375, column: 11, scope: !3449, inlinedAt: !3614)
!3743 = !DILocation(line: 375, column: 6, scope: !3243, inlinedAt: !3614)
!3744 = !DILocation(line: 375, column: 27, scope: !3449, inlinedAt: !3614)
!3745 = !DILocation(line: 376, column: 6, scope: !3454, inlinedAt: !3614)
!3746 = !DILocation(line: 376, column: 11, scope: !3454, inlinedAt: !3614)
!3747 = !DILocation(line: 376, column: 6, scope: !3243, inlinedAt: !3614)
!3748 = !DILocation(line: 376, column: 32, scope: !3454, inlinedAt: !3614)
!3749 = !DILocation(line: 377, column: 6, scope: !3459, inlinedAt: !3614)
!3750 = !DILocation(line: 377, column: 11, scope: !3459, inlinedAt: !3614)
!3751 = !DILocation(line: 377, column: 6, scope: !3243, inlinedAt: !3614)
!3752 = !DILocation(line: 377, column: 32, scope: !3459, inlinedAt: !3614)
!3753 = !DILocation(line: 378, column: 6, scope: !3464, inlinedAt: !3614)
!3754 = !DILocation(line: 378, column: 11, scope: !3464, inlinedAt: !3614)
!3755 = !DILocation(line: 378, column: 6, scope: !3243, inlinedAt: !3614)
!3756 = !DILocation(line: 378, column: 32, scope: !3464, inlinedAt: !3614)
!3757 = !DILocation(line: 379, column: 6, scope: !3469, inlinedAt: !3614)
!3758 = !DILocation(line: 379, column: 11, scope: !3469, inlinedAt: !3614)
!3759 = !DILocation(line: 379, column: 6, scope: !3243, inlinedAt: !3614)
!3760 = !DILocation(line: 379, column: 33, scope: !3469, inlinedAt: !3614)
!3761 = !DILocation(line: 380, column: 6, scope: !3474, inlinedAt: !3614)
!3762 = !DILocation(line: 380, column: 11, scope: !3474, inlinedAt: !3614)
!3763 = !DILocation(line: 380, column: 6, scope: !3243, inlinedAt: !3614)
!3764 = !DILocation(line: 380, column: 33, scope: !3474, inlinedAt: !3614)
!3765 = !DILocation(line: 381, column: 6, scope: !3479, inlinedAt: !3614)
!3766 = !DILocation(line: 381, column: 11, scope: !3479, inlinedAt: !3614)
!3767 = !DILocation(line: 381, column: 6, scope: !3243, inlinedAt: !3614)
!3768 = !DILocation(line: 381, column: 33, scope: !3479, inlinedAt: !3614)
!3769 = !DILocation(line: 382, column: 2, scope: !3484, inlinedAt: !3614)
!3770 = !DILocation(line: 382, column: 2, scope: !3488, inlinedAt: !3614)
!3771 = !DILocation(line: 382, column: 2, scope: !3489, inlinedAt: !3614)
!3772 = !DILocation(line: 386, column: 1, scope: !3243, inlinedAt: !3614)
!3773 = !DILocation(line: 547, column: 9, scope: !3224, inlinedAt: !3607)
!3774 = !DILocation(line: 549, column: 8, scope: !3495, inlinedAt: !3607)
!3775 = !DILocation(line: 549, column: 7, scope: !3224, inlinedAt: !3607)
!3776 = !DILocation(line: 550, column: 4, scope: !3495, inlinedAt: !3607)
!3777 = !DILocation(line: 553, column: 33, scope: !3224, inlinedAt: !3607)
!3778 = !DILocation(line: 325, column: 6, scope: !3500, inlinedAt: !3612)
!3779 = !DILocation(line: 325, column: 6, scope: !3237, inlinedAt: !3612)
!3780 = !DILocation(line: 326, column: 3, scope: !3500, inlinedAt: !3612)
!3781 = !DILocation(line: 332, column: 9, scope: !3237, inlinedAt: !3612)
!3782 = !DILocation(line: 332, column: 15, scope: !3237, inlinedAt: !3612)
!3783 = !DILocation(line: 332, column: 2, scope: !3237, inlinedAt: !3612)
!3784 = !DILocation(line: 336, column: 1, scope: !3237, inlinedAt: !3612)
!3785 = !DILocation(line: 553, column: 5, scope: !3224, inlinedAt: !3607)
!3786 = !DILocation(line: 553, column: 41, scope: !3224, inlinedAt: !3607)
!3787 = !DILocation(line: 554, column: 5, scope: !3224, inlinedAt: !3607)
!3788 = !DILocation(line: 554, column: 12, scope: !3224, inlinedAt: !3607)
!3789 = !DILocation(line: 448, column: 31, scope: !3219, inlinedAt: !3606)
!3790 = !DILocation(line: 448, column: 34, scope: !3219, inlinedAt: !3606)
!3791 = !DILocation(line: 448, column: 14, scope: !3219, inlinedAt: !3606)
!3792 = !DILocation(line: 450, column: 22, scope: !3219, inlinedAt: !3606)
!3793 = !DILocation(line: 450, column: 25, scope: !3219, inlinedAt: !3606)
!3794 = !DILocation(line: 450, column: 30, scope: !3219, inlinedAt: !3606)
!3795 = !DILocation(line: 450, column: 36, scope: !3219, inlinedAt: !3606)
!3796 = !DILocation(line: 450, column: 8, scope: !3219, inlinedAt: !3606)
!3797 = !DILocation(line: 450, column: 6, scope: !3219, inlinedAt: !3606)
!3798 = !DILocation(line: 451, column: 9, scope: !3219, inlinedAt: !3606)
!3799 = !DILocation(line: 552, column: 3, scope: !3224, inlinedAt: !3607)
!3800 = !DILocation(line: 557, column: 19, scope: !3226, inlinedAt: !3607)
!3801 = !DILocation(line: 557, column: 25, scope: !3226, inlinedAt: !3607)
!3802 = !DILocation(line: 557, column: 9, scope: !3226, inlinedAt: !3607)
!3803 = !DILocation(line: 557, column: 2, scope: !3226, inlinedAt: !3607)
!3804 = !DILocation(line: 558, column: 1, scope: !3226, inlinedAt: !3607)
!3805 = !DILocation(line: 664, column: 2, scope: !3604)
!3806 = distinct !DISubprogram(name: "get_order", scope: !3807, file: !3807, line: 29, type: !3808, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3807 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!98, !114}
!3810 = !DILocalVariable(name: "x", arg: 1, scope: !3811, file: !3812, line: 366, type: !109)
!3811 = distinct !DISubprogram(name: "fls64", scope: !3812, file: !3812, line: 366, type: !3813, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3812 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!98, !109}
!3815 = !DILocation(line: 366, column: 40, scope: !3811, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 46, column: 9, scope: !3806)
!3817 = !DILocalVariable(name: "bitpos", scope: !3811, file: !3812, line: 368, type: !98)
!3818 = !DILocation(line: 368, column: 6, scope: !3811, inlinedAt: !3816)
!3819 = !DILocalVariable(name: "size", arg: 1, scope: !3806, file: !3807, line: 29, type: !114)
!3820 = !DILocation(line: 29, column: 63, scope: !3806)
!3821 = !DILocation(line: 31, column: 27, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3806, file: !3807, line: 31, column: 6)
!3823 = !DILocation(line: 31, column: 6, scope: !3822)
!3824 = !DILocation(line: 31, column: 6, scope: !3806)
!3825 = !DILocation(line: 32, column: 8, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3807, line: 32, column: 7)
!3827 = distinct !DILexicalBlock(scope: !3822, file: !3807, line: 31, column: 34)
!3828 = !DILocation(line: 32, column: 7, scope: !3827)
!3829 = !DILocation(line: 33, column: 4, scope: !3826)
!3830 = !DILocation(line: 35, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3827, file: !3807, line: 35, column: 7)
!3832 = !DILocation(line: 35, column: 12, scope: !3831)
!3833 = !DILocation(line: 35, column: 7, scope: !3827)
!3834 = !DILocation(line: 36, column: 4, scope: !3831)
!3835 = !DILocation(line: 38, column: 10, scope: !3827)
!3836 = !DILocation(line: 38, column: 28, scope: !3827)
!3837 = !DILocation(line: 38, column: 41, scope: !3827)
!3838 = !DILocation(line: 38, column: 3, scope: !3827)
!3839 = !DILocation(line: 41, column: 6, scope: !3806)
!3840 = !DILocation(line: 42, column: 7, scope: !3806)
!3841 = !DILocation(line: 46, column: 15, scope: !3806)
!3842 = !DILocation(line: 374, column: 2, scope: !3811, inlinedAt: !3816)
!3843 = !DILocation(line: 376, column: 14, scope: !3811, inlinedAt: !3816)
!3844 = !{i32 340807}
!3845 = !DILocation(line: 377, column: 9, scope: !3811, inlinedAt: !3816)
!3846 = !DILocation(line: 377, column: 16, scope: !3811, inlinedAt: !3816)
!3847 = !DILocation(line: 46, column: 2, scope: !3806)
!3848 = !DILocation(line: 48, column: 1, scope: !3806)
!3849 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3850, file: !3850, line: 30, type: !3851, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3850 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!98, !107}
!3853 = !DILocation(line: 366, column: 40, scope: !3811, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 32, column: 9, scope: !3849)
!3855 = !DILocation(line: 368, column: 6, scope: !3811, inlinedAt: !3854)
!3856 = !DILocalVariable(name: "n", arg: 1, scope: !3849, file: !3850, line: 30, type: !107)
!3857 = !DILocation(line: 30, column: 21, scope: !3849)
!3858 = !DILocation(line: 32, column: 15, scope: !3849)
!3859 = !DILocation(line: 374, column: 2, scope: !3811, inlinedAt: !3854)
!3860 = !DILocation(line: 376, column: 14, scope: !3811, inlinedAt: !3854)
!3861 = !DILocation(line: 377, column: 9, scope: !3811, inlinedAt: !3854)
!3862 = !DILocation(line: 377, column: 16, scope: !3811, inlinedAt: !3854)
!3863 = !DILocation(line: 32, column: 18, scope: !3849)
!3864 = !DILocation(line: 32, column: 2, scope: !3849)
!3865 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3866, file: !3866, line: 137, type: !3867, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3866 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!101, !1293, !1373, !111, !99}
!3869 = !DILocalVariable(name: "s", arg: 1, scope: !3865, file: !3866, line: 137, type: !1293)
!3870 = !DILocation(line: 137, column: 54, scope: !3865)
!3871 = !DILocalVariable(name: "object", arg: 2, scope: !3865, file: !3866, line: 137, type: !1373)
!3872 = !DILocation(line: 137, column: 69, scope: !3865)
!3873 = !DILocalVariable(name: "size", arg: 3, scope: !3865, file: !3866, line: 138, type: !111)
!3874 = !DILocation(line: 138, column: 12, scope: !3865)
!3875 = !DILocalVariable(name: "flags", arg: 4, scope: !3865, file: !3866, line: 138, type: !99)
!3876 = !DILocation(line: 138, column: 24, scope: !3865)
!3877 = !DILocation(line: 140, column: 17, scope: !3865)
!3878 = !DILocation(line: 140, column: 2, scope: !3865)
!3879 = distinct !DISubprogram(name: "nand_to_mtd", scope: !74, file: !74, line: 1152, type: !3880, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!209, !167}
!3882 = !DILocalVariable(name: "chip", arg: 1, scope: !3879, file: !74, line: 1152, type: !167)
!3883 = !DILocation(line: 1152, column: 62, scope: !3879)
!3884 = !DILocation(line: 1154, column: 10, scope: !3879)
!3885 = !DILocation(line: 1154, column: 16, scope: !3879)
!3886 = !DILocation(line: 1154, column: 21, scope: !3879)
!3887 = !DILocation(line: 1154, column: 2, scope: !3879)
!3888 = distinct !DISubprogram(name: "nand_memory_bbt", scope: !3, file: !3, line: 898, type: !2951, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3889 = !DILocalVariable(name: "this", arg: 1, scope: !3888, file: !3, line: 898, type: !167)
!3890 = !DILocation(line: 898, column: 53, scope: !3888)
!3891 = !DILocalVariable(name: "bd", arg: 2, scope: !3888, file: !3, line: 899, type: !2764)
!3892 = !DILocation(line: 899, column: 30, scope: !3888)
!3893 = !DILocalVariable(name: "pagebuf", scope: !3888, file: !3, line: 901, type: !2674)
!3894 = !DILocation(line: 901, column: 6, scope: !3888)
!3895 = !DILocation(line: 901, column: 34, scope: !3888)
!3896 = !DILocation(line: 901, column: 16, scope: !3888)
!3897 = !DILocation(line: 903, column: 20, scope: !3888)
!3898 = !DILocation(line: 903, column: 26, scope: !3888)
!3899 = !DILocation(line: 903, column: 35, scope: !3888)
!3900 = !DILocation(line: 903, column: 9, scope: !3888)
!3901 = !DILocation(line: 903, column: 2, scope: !3888)
!3902 = distinct !DISubprogram(name: "verify_bbt_descr", scope: !3, file: !3, line: 1158, type: !3903, scopeLine: 1159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !167, !2764}
!3905 = !DILocalVariable(name: "this", arg: 1, scope: !3902, file: !3, line: 1158, type: !167)
!3906 = !DILocation(line: 1158, column: 48, scope: !3902)
!3907 = !DILocalVariable(name: "bd", arg: 2, scope: !3902, file: !3, line: 1158, type: !2764)
!3908 = !DILocation(line: 1158, column: 77, scope: !3902)
!3909 = !DILocalVariable(name: "targetsize", scope: !3902, file: !3, line: 1160, type: !107)
!3910 = !DILocation(line: 1160, column: 6, scope: !3902)
!3911 = !DILocation(line: 1160, column: 40, scope: !3902)
!3912 = !DILocation(line: 1160, column: 46, scope: !3902)
!3913 = !DILocation(line: 1160, column: 19, scope: !3902)
!3914 = !DILocalVariable(name: "mtd", scope: !3902, file: !3, line: 1161, type: !209)
!3915 = !DILocation(line: 1161, column: 19, scope: !3902)
!3916 = !DILocation(line: 1161, column: 37, scope: !3902)
!3917 = !DILocation(line: 1161, column: 25, scope: !3902)
!3918 = !DILocalVariable(name: "pattern_len", scope: !3902, file: !3, line: 1162, type: !181)
!3919 = !DILocation(line: 1162, column: 6, scope: !3902)
!3920 = !DILocalVariable(name: "bits", scope: !3902, file: !3, line: 1163, type: !181)
!3921 = !DILocation(line: 1163, column: 6, scope: !3902)
!3922 = !DILocalVariable(name: "table_size", scope: !3902, file: !3, line: 1164, type: !181)
!3923 = !DILocation(line: 1164, column: 6, scope: !3902)
!3924 = !DILocation(line: 1166, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1166, column: 6)
!3926 = !DILocation(line: 1166, column: 6, scope: !3902)
!3927 = !DILocation(line: 1167, column: 3, scope: !3925)
!3928 = !DILocation(line: 1169, column: 16, scope: !3902)
!3929 = !DILocation(line: 1169, column: 20, scope: !3902)
!3930 = !DILocation(line: 1169, column: 14, scope: !3902)
!3931 = !DILocation(line: 1170, column: 9, scope: !3902)
!3932 = !DILocation(line: 1170, column: 13, scope: !3902)
!3933 = !DILocation(line: 1170, column: 21, scope: !3902)
!3934 = !DILocation(line: 1170, column: 7, scope: !3902)
!3935 = !DILocation(line: 1172, column: 2, scope: !3902)
!3936 = !DILocation(line: 1172, column: 2, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 1172, column: 2)
!3938 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1172, column: 2)
!3939 = !DILocation(line: 0, scope: !3937)
!3940 = !DILocation(line: 1172, column: 2, scope: !3938)
!3941 = !DILocation(line: 1172, column: 2, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1172, column: 2)
!3943 = !DILocation(line: 1172, column: 2, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1172, column: 2)
!3945 = !DILocation(line: 1172, column: 2, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1172, column: 2)
!3947 = !{i32 -2143350003, i32 -2143349974, i32 -2143349928, i32 -2143349870, i32 -2143349816, i32 -2143349762, i32 -2143349707, i32 -2143349676}
!3948 = !DILocation(line: 1172, column: 2, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 1172, column: 2)
!3950 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1172, column: 2)
!3951 = !{i32 -2143345160, i32 -2143345153, i32 -2143345099, i32 -2143345068, i32 -2143345038}
!3952 = !DILocation(line: 1172, column: 2, scope: !3950)
!3953 = !DILocation(line: 1174, column: 2, scope: !3902)
!3954 = !DILocation(line: 1174, column: 2, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 1174, column: 2)
!3956 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1174, column: 2)
!3957 = !DILocation(line: 1174, column: 2, scope: !3956)
!3958 = !DILocation(line: 1174, column: 2, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 1174, column: 2)
!3960 = !DILocation(line: 1174, column: 2, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1174, column: 2)
!3962 = !DILocation(line: 1174, column: 2, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1174, column: 2)
!3964 = !{i32 -2143344745, i32 -2143344716, i32 -2143344670, i32 -2143344612, i32 -2143344558, i32 -2143344504, i32 -2143344449, i32 -2143344418}
!3965 = !DILocation(line: 1174, column: 2, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 1174, column: 2)
!3967 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1174, column: 2)
!3968 = !{i32 -2143343963, i32 -2143343956, i32 -2143343902, i32 -2143343871, i32 -2143343841}
!3969 = !DILocation(line: 1174, column: 2, scope: !3967)
!3970 = !DILocation(line: 1176, column: 6, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1176, column: 6)
!3972 = !DILocation(line: 1176, column: 10, scope: !3971)
!3973 = !DILocation(line: 1176, column: 18, scope: !3971)
!3974 = !DILocation(line: 1176, column: 6, scope: !3902)
!3975 = !DILocation(line: 1177, column: 14, scope: !3971)
!3976 = !DILocation(line: 1177, column: 3, scope: !3971)
!3977 = !DILocation(line: 1179, column: 6, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1179, column: 6)
!3979 = !DILocation(line: 1179, column: 10, scope: !3978)
!3980 = !DILocation(line: 1179, column: 18, scope: !3978)
!3981 = !DILocation(line: 1179, column: 6, scope: !3902)
!3982 = !DILocation(line: 1180, column: 3, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 1179, column: 37)
!3984 = !DILocation(line: 1180, column: 3, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1180, column: 3)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1180, column: 3)
!3987 = !DILocation(line: 1180, column: 3, scope: !3986)
!3988 = !DILocation(line: 1180, column: 3, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 1180, column: 3)
!3990 = !DILocation(line: 1180, column: 3, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 1180, column: 3)
!3992 = !DILocation(line: 1180, column: 3, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 1180, column: 3)
!3994 = !{i32 -2143343457, i32 -2143343428, i32 -2143343382, i32 -2143343324, i32 -2143343270, i32 -2143343216, i32 -2143343161, i32 -2143343130}
!3995 = !DILocation(line: 1180, column: 3, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 1180, column: 3)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 1180, column: 3)
!3998 = !{i32 -2143342675, i32 -2143342668, i32 -2143342614, i32 -2143342583, i32 -2143342553}
!3999 = !DILocation(line: 1180, column: 3, scope: !3997)
!4000 = !DILocation(line: 1181, column: 3, scope: !3983)
!4001 = !DILocation(line: 1181, column: 3, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1181, column: 3)
!4003 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1181, column: 3)
!4004 = !DILocation(line: 1181, column: 3, scope: !4003)
!4005 = !DILocation(line: 1181, column: 3, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 1181, column: 3)
!4007 = !DILocation(line: 1181, column: 3, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1181, column: 3)
!4009 = !DILocation(line: 1181, column: 3, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1181, column: 3)
!4011 = !{i32 -2143342191, i32 -2143342162, i32 -2143342116, i32 -2143342058, i32 -2143342004, i32 -2143341950, i32 -2143341895, i32 -2143341864}
!4012 = !DILocation(line: 1181, column: 3, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 1181, column: 3)
!4014 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1181, column: 3)
!4015 = !{i32 -2143341409, i32 -2143341402, i32 -2143341348, i32 -2143341317, i32 -2143341287}
!4016 = !DILocation(line: 1181, column: 3, scope: !4014)
!4017 = !DILocation(line: 1182, column: 3, scope: !3983)
!4018 = !DILocation(line: 1182, column: 3, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 1182, column: 3)
!4020 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1182, column: 3)
!4021 = !DILocation(line: 1182, column: 3, scope: !4020)
!4022 = !DILocation(line: 1182, column: 3, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4019, file: !3, line: 1182, column: 3)
!4024 = !DILocation(line: 1182, column: 3, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1182, column: 3)
!4026 = !DILocation(line: 1182, column: 3, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1182, column: 3)
!4028 = !{i32 -2143340988, i32 -2143340959, i32 -2143340913, i32 -2143340855, i32 -2143340801, i32 -2143340747, i32 -2143340692, i32 -2143340661}
!4029 = !DILocation(line: 1182, column: 3, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1182, column: 3)
!4031 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1182, column: 3)
!4032 = !{i32 -2143340206, i32 -2143340199, i32 -2143340145, i32 -2143340114, i32 -2143340084}
!4033 = !DILocation(line: 1182, column: 3, scope: !4031)
!4034 = !DILocation(line: 1183, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1183, column: 7)
!4036 = !DILocation(line: 1183, column: 11, scope: !4035)
!4037 = !DILocation(line: 1183, column: 19, scope: !4035)
!4038 = !DILocation(line: 1183, column: 7, scope: !3983)
!4039 = !DILocation(line: 1184, column: 4, scope: !4035)
!4040 = !DILocation(line: 1184, column: 4, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1184, column: 4)
!4042 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1184, column: 4)
!4043 = !DILocation(line: 1184, column: 4, scope: !4042)
!4044 = !DILocation(line: 1184, column: 4, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1184, column: 4)
!4046 = !DILocation(line: 1184, column: 4, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1184, column: 4)
!4048 = !DILocation(line: 1184, column: 4, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1184, column: 4)
!4050 = !{i32 -2143339746, i32 -2143339717, i32 -2143339671, i32 -2143339613, i32 -2143339559, i32 -2143339505, i32 -2143339450, i32 -2143339419}
!4051 = !DILocation(line: 1184, column: 4, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1184, column: 4)
!4053 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1184, column: 4)
!4054 = !{i32 -2143338964, i32 -2143338957, i32 -2143338903, i32 -2143338872, i32 -2143338842}
!4055 = !DILocation(line: 1184, column: 4, scope: !4053)
!4056 = !DILocation(line: 1185, column: 3, scope: !3983)
!4057 = !DILocation(line: 1185, column: 3, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1185, column: 3)
!4059 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1185, column: 3)
!4060 = !DILocation(line: 1185, column: 3, scope: !4059)
!4061 = !DILocation(line: 1185, column: 3, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1185, column: 3)
!4063 = !DILocation(line: 1185, column: 3, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1185, column: 3)
!4065 = !DILocation(line: 1185, column: 3, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1185, column: 3)
!4067 = !{i32 -2143338500, i32 -2143338471, i32 -2143338425, i32 -2143338367, i32 -2143338313, i32 -2143338259, i32 -2143338204, i32 -2143338173}
!4068 = !DILocation(line: 1185, column: 3, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1185, column: 3)
!4070 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1185, column: 3)
!4071 = !{i32 -2143337718, i32 -2143337711, i32 -2143337657, i32 -2143337626, i32 -2143337596}
!4072 = !DILocation(line: 1185, column: 3, scope: !4070)
!4073 = !DILocation(line: 1186, column: 2, scope: !3983)
!4074 = !DILocation(line: 1188, column: 6, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1188, column: 6)
!4076 = !DILocation(line: 1188, column: 10, scope: !4075)
!4077 = !DILocation(line: 1188, column: 18, scope: !4075)
!4078 = !DILocation(line: 1188, column: 6, scope: !3902)
!4079 = !DILocation(line: 1189, column: 16, scope: !4075)
!4080 = !DILocation(line: 1189, column: 30, scope: !4075)
!4081 = !DILocation(line: 1189, column: 36, scope: !4075)
!4082 = !DILocation(line: 1189, column: 27, scope: !4075)
!4083 = !DILocation(line: 1189, column: 14, scope: !4075)
!4084 = !DILocation(line: 1189, column: 3, scope: !4075)
!4085 = !DILocation(line: 1191, column: 16, scope: !4075)
!4086 = !DILocation(line: 1191, column: 21, scope: !4075)
!4087 = !DILocation(line: 1191, column: 29, scope: !4075)
!4088 = !DILocation(line: 1191, column: 35, scope: !4075)
!4089 = !DILocation(line: 1191, column: 26, scope: !4075)
!4090 = !DILocation(line: 1191, column: 14, scope: !4075)
!4091 = !DILocation(line: 1192, column: 13, scope: !3902)
!4092 = !DILocation(line: 1193, column: 16, scope: !3902)
!4093 = !DILocation(line: 1193, column: 13, scope: !3902)
!4094 = !DILocation(line: 1194, column: 6, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1194, column: 6)
!4096 = !DILocation(line: 1194, column: 10, scope: !4095)
!4097 = !DILocation(line: 1194, column: 18, scope: !4095)
!4098 = !DILocation(line: 1194, column: 6, scope: !3902)
!4099 = !DILocation(line: 1195, column: 17, scope: !4095)
!4100 = !DILocation(line: 1195, column: 14, scope: !4095)
!4101 = !DILocation(line: 1195, column: 3, scope: !4095)
!4102 = !DILocation(line: 1196, column: 2, scope: !3902)
!4103 = !DILocation(line: 1196, column: 2, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1196, column: 2)
!4105 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 1196, column: 2)
!4106 = !DILocation(line: 1196, column: 2, scope: !4105)
!4107 = !DILocation(line: 1196, column: 2, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1196, column: 2)
!4109 = !DILocation(line: 1196, column: 2, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1196, column: 2)
!4111 = !DILocation(line: 1196, column: 2, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1196, column: 2)
!4113 = !{i32 -2143337209, i32 -2143337180, i32 -2143337134, i32 -2143337076, i32 -2143337022, i32 -2143336968, i32 -2143336913, i32 -2143336882}
!4114 = !DILocation(line: 1196, column: 2, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 1196, column: 2)
!4116 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1196, column: 2)
!4117 = !{i32 -2143336427, i32 -2143336420, i32 -2143336366, i32 -2143336335, i32 -2143336305}
!4118 = !DILocation(line: 1196, column: 2, scope: !4116)
!4119 = !DILocation(line: 1197, column: 1, scope: !3902)
!4120 = distinct !DISubprogram(name: "read_abs_bbts", scope: !3, file: !3, line: 389, type: !4121, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !167, !147, !2764, !2764}
!4123 = !DILocalVariable(name: "this", arg: 1, scope: !4120, file: !3, line: 389, type: !167)
!4124 = !DILocation(line: 389, column: 45, scope: !4120)
!4125 = !DILocalVariable(name: "buf", arg: 2, scope: !4120, file: !3, line: 389, type: !147)
!4126 = !DILocation(line: 389, column: 60, scope: !4120)
!4127 = !DILocalVariable(name: "td", arg: 3, scope: !4120, file: !3, line: 390, type: !2764)
!4128 = !DILocation(line: 390, column: 29, scope: !4120)
!4129 = !DILocalVariable(name: "md", arg: 4, scope: !4120, file: !3, line: 390, type: !2764)
!4130 = !DILocation(line: 390, column: 56, scope: !4120)
!4131 = !DILocalVariable(name: "mtd", scope: !4120, file: !3, line: 392, type: !209)
!4132 = !DILocation(line: 392, column: 19, scope: !4120)
!4133 = !DILocation(line: 392, column: 37, scope: !4120)
!4134 = !DILocation(line: 392, column: 25, scope: !4120)
!4135 = !DILocation(line: 395, column: 6, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 395, column: 6)
!4137 = !DILocation(line: 395, column: 10, scope: !4136)
!4138 = !DILocation(line: 395, column: 18, scope: !4136)
!4139 = !DILocation(line: 395, column: 6, scope: !4120)
!4140 = !DILocation(line: 396, column: 13, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 395, column: 38)
!4142 = !DILocation(line: 396, column: 19, scope: !4141)
!4143 = !DILocation(line: 396, column: 32, scope: !4141)
!4144 = !DILocation(line: 396, column: 36, scope: !4141)
!4145 = !DILocation(line: 396, column: 24, scope: !4141)
!4146 = !DILocation(line: 396, column: 48, scope: !4141)
!4147 = !DILocation(line: 396, column: 54, scope: !4141)
!4148 = !DILocation(line: 396, column: 45, scope: !4141)
!4149 = !DILocation(line: 397, column: 6, scope: !4141)
!4150 = !DILocation(line: 397, column: 11, scope: !4141)
!4151 = !DILocation(line: 397, column: 22, scope: !4141)
!4152 = !DILocation(line: 396, column: 3, scope: !4141)
!4153 = !DILocation(line: 398, column: 20, scope: !4141)
!4154 = !DILocation(line: 398, column: 41, scope: !4141)
!4155 = !DILocation(line: 398, column: 47, scope: !4141)
!4156 = !DILocation(line: 398, column: 24, scope: !4141)
!4157 = !DILocation(line: 398, column: 3, scope: !4141)
!4158 = !DILocation(line: 398, column: 7, scope: !4141)
!4159 = !DILocation(line: 398, column: 18, scope: !4141)
!4160 = !DILocation(line: 399, column: 3, scope: !4141)
!4161 = !DILocation(line: 401, column: 2, scope: !4141)
!4162 = !DILocation(line: 404, column: 6, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 404, column: 6)
!4164 = !DILocation(line: 404, column: 9, scope: !4163)
!4165 = !DILocation(line: 404, column: 13, scope: !4163)
!4166 = !DILocation(line: 404, column: 17, scope: !4163)
!4167 = !DILocation(line: 404, column: 25, scope: !4163)
!4168 = !DILocation(line: 404, column: 6, scope: !4120)
!4169 = !DILocation(line: 405, column: 13, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 404, column: 46)
!4171 = !DILocation(line: 405, column: 19, scope: !4170)
!4172 = !DILocation(line: 405, column: 32, scope: !4170)
!4173 = !DILocation(line: 405, column: 36, scope: !4170)
!4174 = !DILocation(line: 405, column: 24, scope: !4170)
!4175 = !DILocation(line: 405, column: 48, scope: !4170)
!4176 = !DILocation(line: 405, column: 54, scope: !4170)
!4177 = !DILocation(line: 405, column: 45, scope: !4170)
!4178 = !DILocation(line: 406, column: 6, scope: !4170)
!4179 = !DILocation(line: 406, column: 11, scope: !4170)
!4180 = !DILocation(line: 406, column: 22, scope: !4170)
!4181 = !DILocation(line: 405, column: 3, scope: !4170)
!4182 = !DILocation(line: 407, column: 20, scope: !4170)
!4183 = !DILocation(line: 407, column: 41, scope: !4170)
!4184 = !DILocation(line: 407, column: 47, scope: !4170)
!4185 = !DILocation(line: 407, column: 24, scope: !4170)
!4186 = !DILocation(line: 407, column: 3, scope: !4170)
!4187 = !DILocation(line: 407, column: 7, scope: !4170)
!4188 = !DILocation(line: 407, column: 18, scope: !4170)
!4189 = !DILocation(line: 408, column: 3, scope: !4170)
!4190 = !DILocation(line: 410, column: 2, scope: !4170)
!4191 = !DILocation(line: 411, column: 1, scope: !4120)
!4192 = distinct !DISubprogram(name: "search_read_bbts", scope: !3, file: !3, line: 596, type: !4121, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4193 = !DILocalVariable(name: "this", arg: 1, scope: !4192, file: !3, line: 596, type: !167)
!4194 = !DILocation(line: 596, column: 48, scope: !4192)
!4195 = !DILocalVariable(name: "buf", arg: 2, scope: !4192, file: !3, line: 596, type: !147)
!4196 = !DILocation(line: 596, column: 63, scope: !4192)
!4197 = !DILocalVariable(name: "td", arg: 3, scope: !4192, file: !3, line: 597, type: !2764)
!4198 = !DILocation(line: 597, column: 32, scope: !4192)
!4199 = !DILocalVariable(name: "md", arg: 4, scope: !4192, file: !3, line: 598, type: !2764)
!4200 = !DILocation(line: 598, column: 32, scope: !4192)
!4201 = !DILocation(line: 601, column: 13, scope: !4192)
!4202 = !DILocation(line: 601, column: 19, scope: !4192)
!4203 = !DILocation(line: 601, column: 24, scope: !4192)
!4204 = !DILocation(line: 601, column: 2, scope: !4192)
!4205 = !DILocation(line: 604, column: 6, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 604, column: 6)
!4207 = !DILocation(line: 604, column: 6, scope: !4192)
!4208 = !DILocation(line: 605, column: 14, scope: !4206)
!4209 = !DILocation(line: 605, column: 20, scope: !4206)
!4210 = !DILocation(line: 605, column: 25, scope: !4206)
!4211 = !DILocation(line: 605, column: 3, scope: !4206)
!4212 = !DILocation(line: 606, column: 1, scope: !4192)
!4213 = distinct !DISubprogram(name: "check_create", scope: !3, file: !3, line: 917, type: !4214, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!98, !167, !147, !2764}
!4216 = !DILocalVariable(name: "this", arg: 1, scope: !4213, file: !3, line: 917, type: !167)
!4217 = !DILocation(line: 917, column: 43, scope: !4213)
!4218 = !DILocalVariable(name: "buf", arg: 2, scope: !4213, file: !3, line: 917, type: !147)
!4219 = !DILocation(line: 917, column: 58, scope: !4213)
!4220 = !DILocalVariable(name: "bd", arg: 3, scope: !4213, file: !3, line: 918, type: !2764)
!4221 = !DILocation(line: 918, column: 27, scope: !4213)
!4222 = !DILocalVariable(name: "i", scope: !4213, file: !3, line: 920, type: !98)
!4223 = !DILocation(line: 920, column: 6, scope: !4213)
!4224 = !DILocalVariable(name: "chips", scope: !4213, file: !3, line: 920, type: !98)
!4225 = !DILocation(line: 920, column: 9, scope: !4213)
!4226 = !DILocalVariable(name: "writeops", scope: !4213, file: !3, line: 920, type: !98)
!4227 = !DILocation(line: 920, column: 16, scope: !4213)
!4228 = !DILocalVariable(name: "create", scope: !4213, file: !3, line: 920, type: !98)
!4229 = !DILocation(line: 920, column: 26, scope: !4213)
!4230 = !DILocalVariable(name: "chipsel", scope: !4213, file: !3, line: 920, type: !98)
!4231 = !DILocation(line: 920, column: 34, scope: !4213)
!4232 = !DILocalVariable(name: "res", scope: !4213, file: !3, line: 920, type: !98)
!4233 = !DILocation(line: 920, column: 43, scope: !4213)
!4234 = !DILocalVariable(name: "res2", scope: !4213, file: !3, line: 920, type: !98)
!4235 = !DILocation(line: 920, column: 48, scope: !4213)
!4236 = !DILocalVariable(name: "td", scope: !4213, file: !3, line: 921, type: !2764)
!4237 = !DILocation(line: 921, column: 25, scope: !4213)
!4238 = !DILocation(line: 921, column: 30, scope: !4213)
!4239 = !DILocation(line: 921, column: 36, scope: !4213)
!4240 = !DILocalVariable(name: "md", scope: !4213, file: !3, line: 922, type: !2764)
!4241 = !DILocation(line: 922, column: 25, scope: !4213)
!4242 = !DILocation(line: 922, column: 30, scope: !4213)
!4243 = !DILocation(line: 922, column: 36, scope: !4213)
!4244 = !DILocalVariable(name: "rd", scope: !4213, file: !3, line: 923, type: !2764)
!4245 = !DILocation(line: 923, column: 25, scope: !4213)
!4246 = !DILocalVariable(name: "rd2", scope: !4213, file: !3, line: 923, type: !2764)
!4247 = !DILocation(line: 923, column: 30, scope: !4213)
!4248 = !DILocation(line: 926, column: 6, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 926, column: 6)
!4250 = !DILocation(line: 926, column: 10, scope: !4249)
!4251 = !DILocation(line: 926, column: 18, scope: !4249)
!4252 = !DILocation(line: 926, column: 6, scope: !4213)
!4253 = !DILocation(line: 927, column: 29, scope: !4249)
!4254 = !DILocation(line: 927, column: 35, scope: !4249)
!4255 = !DILocation(line: 927, column: 11, scope: !4249)
!4256 = !DILocation(line: 927, column: 9, scope: !4249)
!4257 = !DILocation(line: 927, column: 3, scope: !4249)
!4258 = !DILocation(line: 929, column: 9, scope: !4249)
!4259 = !DILocation(line: 931, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 931, column: 2)
!4261 = !DILocation(line: 931, column: 7, scope: !4260)
!4262 = !DILocation(line: 931, column: 14, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 931, column: 2)
!4264 = !DILocation(line: 931, column: 18, scope: !4263)
!4265 = !DILocation(line: 931, column: 16, scope: !4263)
!4266 = !DILocation(line: 931, column: 2, scope: !4260)
!4267 = !DILocation(line: 932, column: 12, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 931, column: 30)
!4269 = !DILocation(line: 933, column: 10, scope: !4268)
!4270 = !DILocation(line: 934, column: 6, scope: !4268)
!4271 = !DILocation(line: 935, column: 7, scope: !4268)
!4272 = !DILocation(line: 936, column: 14, scope: !4268)
!4273 = !DILocation(line: 936, column: 7, scope: !4268)
!4274 = !DILocation(line: 938, column: 14, scope: !4268)
!4275 = !DILocation(line: 938, column: 18, scope: !4268)
!4276 = !DILocation(line: 938, column: 26, scope: !4268)
!4277 = !DILocation(line: 938, column: 13, scope: !4268)
!4278 = !DILocation(line: 938, column: 48, scope: !4268)
!4279 = !DILocation(line: 938, column: 11, scope: !4268)
!4280 = !DILocation(line: 940, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 940, column: 7)
!4282 = !DILocation(line: 940, column: 7, scope: !4268)
!4283 = !DILocation(line: 941, column: 8, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 941, column: 8)
!4285 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 940, column: 11)
!4286 = !DILocation(line: 941, column: 12, scope: !4284)
!4287 = !DILocation(line: 941, column: 18, scope: !4284)
!4288 = !DILocation(line: 941, column: 21, scope: !4284)
!4289 = !DILocation(line: 941, column: 27, scope: !4284)
!4290 = !DILocation(line: 941, column: 30, scope: !4284)
!4291 = !DILocation(line: 941, column: 34, scope: !4284)
!4292 = !DILocation(line: 941, column: 40, scope: !4284)
!4293 = !DILocation(line: 941, column: 43, scope: !4284)
!4294 = !DILocation(line: 941, column: 8, scope: !4285)
!4295 = !DILocation(line: 942, column: 12, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 941, column: 50)
!4297 = !DILocation(line: 943, column: 14, scope: !4296)
!4298 = !DILocation(line: 944, column: 4, scope: !4296)
!4299 = !DILocation(line: 944, column: 15, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 944, column: 15)
!4301 = !DILocation(line: 944, column: 19, scope: !4300)
!4302 = !DILocation(line: 944, column: 25, scope: !4300)
!4303 = !DILocation(line: 944, column: 28, scope: !4300)
!4304 = !DILocation(line: 944, column: 15, scope: !4284)
!4305 = !DILocation(line: 945, column: 10, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 944, column: 35)
!4307 = !DILocation(line: 945, column: 8, scope: !4306)
!4308 = !DILocation(line: 946, column: 14, scope: !4306)
!4309 = !DILocation(line: 947, column: 4, scope: !4306)
!4310 = !DILocation(line: 947, column: 15, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 947, column: 15)
!4312 = !DILocation(line: 947, column: 19, scope: !4311)
!4313 = !DILocation(line: 947, column: 25, scope: !4311)
!4314 = !DILocation(line: 947, column: 28, scope: !4311)
!4315 = !DILocation(line: 947, column: 15, scope: !4300)
!4316 = !DILocation(line: 948, column: 10, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 947, column: 35)
!4318 = !DILocation(line: 948, column: 8, scope: !4317)
!4319 = !DILocation(line: 949, column: 14, scope: !4317)
!4320 = !DILocation(line: 950, column: 4, scope: !4317)
!4321 = !DILocation(line: 950, column: 15, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 950, column: 15)
!4323 = !DILocation(line: 950, column: 19, scope: !4322)
!4324 = !DILocation(line: 950, column: 27, scope: !4322)
!4325 = !DILocation(line: 950, column: 33, scope: !4322)
!4326 = !DILocation(line: 950, column: 37, scope: !4322)
!4327 = !DILocation(line: 950, column: 45, scope: !4322)
!4328 = !DILocation(line: 950, column: 30, scope: !4322)
!4329 = !DILocation(line: 950, column: 15, scope: !4311)
!4330 = !DILocation(line: 951, column: 10, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 950, column: 49)
!4332 = !DILocation(line: 951, column: 8, scope: !4331)
!4333 = !DILocation(line: 952, column: 11, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 952, column: 9)
!4335 = !DILocation(line: 952, column: 15, scope: !4334)
!4336 = !DILocation(line: 952, column: 23, scope: !4334)
!4337 = !DILocation(line: 952, column: 9, scope: !4331)
!4338 = !DILocation(line: 953, column: 12, scope: !4334)
!4339 = !DILocation(line: 953, column: 10, scope: !4334)
!4340 = !DILocation(line: 953, column: 6, scope: !4334)
!4341 = !DILocation(line: 954, column: 4, scope: !4331)
!4342 = !DILocation(line: 954, column: 25, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 954, column: 15)
!4344 = !DILocation(line: 954, column: 29, scope: !4343)
!4345 = !DILocation(line: 954, column: 37, scope: !4343)
!4346 = !DILocation(line: 954, column: 42, scope: !4343)
!4347 = !DILocation(line: 954, column: 46, scope: !4343)
!4348 = !DILocation(line: 954, column: 54, scope: !4343)
!4349 = !DILocation(line: 954, column: 40, scope: !4343)
!4350 = !DILocation(line: 954, column: 16, scope: !4343)
!4351 = !DILocation(line: 954, column: 15, scope: !4343)
!4352 = !DILocation(line: 954, column: 59, scope: !4343)
!4353 = !DILocation(line: 954, column: 15, scope: !4322)
!4354 = !DILocation(line: 955, column: 10, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 954, column: 64)
!4356 = !DILocation(line: 955, column: 8, scope: !4355)
!4357 = !DILocation(line: 956, column: 14, scope: !4355)
!4358 = !DILocation(line: 957, column: 4, scope: !4355)
!4359 = !DILocation(line: 958, column: 10, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 957, column: 11)
!4361 = !DILocation(line: 958, column: 8, scope: !4360)
!4362 = !DILocation(line: 959, column: 14, scope: !4360)
!4363 = !DILocation(line: 961, column: 3, scope: !4285)
!4364 = !DILocation(line: 962, column: 8, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 962, column: 8)
!4366 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 961, column: 10)
!4367 = !DILocation(line: 962, column: 12, scope: !4365)
!4368 = !DILocation(line: 962, column: 18, scope: !4365)
!4369 = !DILocation(line: 962, column: 21, scope: !4365)
!4370 = !DILocation(line: 962, column: 8, scope: !4366)
!4371 = !DILocation(line: 963, column: 12, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 962, column: 28)
!4373 = !DILocation(line: 964, column: 14, scope: !4372)
!4374 = !DILocation(line: 965, column: 4, scope: !4372)
!4375 = !DILocation(line: 966, column: 10, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 965, column: 11)
!4377 = !DILocation(line: 966, column: 8, scope: !4376)
!4378 = !DILocation(line: 970, column: 7, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 970, column: 7)
!4380 = !DILocation(line: 970, column: 7, scope: !4268)
!4381 = !DILocation(line: 972, column: 10, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 972, column: 8)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 970, column: 15)
!4384 = !DILocation(line: 972, column: 14, scope: !4382)
!4385 = !DILocation(line: 972, column: 22, scope: !4382)
!4386 = !DILocation(line: 972, column: 8, scope: !4383)
!4387 = !DILocation(line: 973, column: 5, scope: !4382)
!4388 = !DILocation(line: 976, column: 10, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 976, column: 8)
!4390 = !DILocation(line: 976, column: 16, scope: !4389)
!4391 = !DILocation(line: 976, column: 28, scope: !4389)
!4392 = !DILocation(line: 976, column: 8, scope: !4383)
!4393 = !DILocation(line: 977, column: 16, scope: !4389)
!4394 = !DILocation(line: 977, column: 22, scope: !4389)
!4395 = !DILocation(line: 977, column: 27, scope: !4389)
!4396 = !DILocation(line: 977, column: 31, scope: !4389)
!4397 = !DILocation(line: 977, column: 5, scope: !4389)
!4398 = !DILocation(line: 979, column: 4, scope: !4383)
!4399 = !DILocation(line: 979, column: 8, scope: !4383)
!4400 = !DILocation(line: 979, column: 16, scope: !4383)
!4401 = !DILocation(line: 979, column: 19, scope: !4383)
!4402 = !DILocation(line: 980, column: 8, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 980, column: 8)
!4404 = !DILocation(line: 980, column: 8, scope: !4383)
!4405 = !DILocation(line: 981, column: 5, scope: !4403)
!4406 = !DILocation(line: 981, column: 9, scope: !4403)
!4407 = !DILocation(line: 981, column: 17, scope: !4403)
!4408 = !DILocation(line: 981, column: 20, scope: !4403)
!4409 = !DILocation(line: 982, column: 3, scope: !4383)
!4410 = !DILocation(line: 985, column: 7, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 985, column: 7)
!4412 = !DILocation(line: 985, column: 7, scope: !4268)
!4413 = !DILocation(line: 986, column: 23, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 985, column: 11)
!4415 = !DILocation(line: 986, column: 29, scope: !4414)
!4416 = !DILocation(line: 986, column: 34, scope: !4414)
!4417 = !DILocation(line: 986, column: 38, scope: !4414)
!4418 = !DILocation(line: 986, column: 10, scope: !4414)
!4419 = !DILocation(line: 986, column: 8, scope: !4414)
!4420 = !DILocation(line: 987, column: 22, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 987, column: 8)
!4422 = !DILocation(line: 987, column: 8, scope: !4421)
!4423 = !DILocation(line: 987, column: 8, scope: !4414)
!4424 = !DILocation(line: 989, column: 5, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 987, column: 28)
!4426 = !DILocation(line: 989, column: 9, scope: !4425)
!4427 = !DILocation(line: 989, column: 15, scope: !4425)
!4428 = !DILocation(line: 989, column: 18, scope: !4425)
!4429 = !DILocation(line: 990, column: 5, scope: !4425)
!4430 = !DILocation(line: 990, column: 9, scope: !4425)
!4431 = !DILocation(line: 990, column: 17, scope: !4425)
!4432 = !DILocation(line: 990, column: 20, scope: !4425)
!4433 = !DILocation(line: 991, column: 6, scope: !4425)
!4434 = !DILocation(line: 992, column: 5, scope: !4425)
!4435 = !DILocation(line: 994, column: 3, scope: !4414)
!4436 = !DILocation(line: 996, column: 7, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 996, column: 7)
!4438 = !DILocation(line: 996, column: 7, scope: !4268)
!4439 = !DILocation(line: 997, column: 24, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 996, column: 12)
!4441 = !DILocation(line: 997, column: 30, scope: !4440)
!4442 = !DILocation(line: 997, column: 35, scope: !4440)
!4443 = !DILocation(line: 997, column: 40, scope: !4440)
!4444 = !DILocation(line: 997, column: 11, scope: !4440)
!4445 = !DILocation(line: 997, column: 9, scope: !4440)
!4446 = !DILocation(line: 998, column: 22, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 998, column: 8)
!4448 = !DILocation(line: 998, column: 8, scope: !4447)
!4449 = !DILocation(line: 998, column: 8, scope: !4440)
!4450 = !DILocation(line: 1000, column: 5, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 998, column: 29)
!4452 = !DILocation(line: 1000, column: 10, scope: !4451)
!4453 = !DILocation(line: 1000, column: 16, scope: !4451)
!4454 = !DILocation(line: 1000, column: 19, scope: !4451)
!4455 = !DILocation(line: 1001, column: 5, scope: !4451)
!4456 = !DILocation(line: 1001, column: 10, scope: !4451)
!4457 = !DILocation(line: 1001, column: 18, scope: !4451)
!4458 = !DILocation(line: 1001, column: 21, scope: !4451)
!4459 = !DILocation(line: 1002, column: 6, scope: !4451)
!4460 = !DILocation(line: 1003, column: 5, scope: !4451)
!4461 = !DILocation(line: 1005, column: 3, scope: !4440)
!4462 = !DILocation(line: 1008, column: 22, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1008, column: 7)
!4464 = !DILocation(line: 1008, column: 7, scope: !4463)
!4465 = !DILocation(line: 1008, column: 27, scope: !4463)
!4466 = !DILocation(line: 1008, column: 45, scope: !4463)
!4467 = !DILocation(line: 1008, column: 30, scope: !4463)
!4468 = !DILocation(line: 1008, column: 7, scope: !4268)
!4469 = !DILocation(line: 1009, column: 13, scope: !4463)
!4470 = !DILocation(line: 1009, column: 4, scope: !4463)
!4471 = !DILocation(line: 1012, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1012, column: 7)
!4473 = !DILocation(line: 1012, column: 7, scope: !4268)
!4474 = !DILocalVariable(name: "__UNIQUE_ID___x177", scope: !4475, file: !3, line: 1013, type: !119)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1013, column: 21)
!4476 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1012, column: 11)
!4477 = !DILocation(line: 1013, column: 21, scope: !4475)
!4478 = !DILocalVariable(name: "__UNIQUE_ID___y178", scope: !4475, file: !3, line: 1013, type: !119)
!4479 = !DILocation(line: 1013, column: 21, scope: !4476)
!4480 = !DILocation(line: 1013, column: 4, scope: !4476)
!4481 = !DILocation(line: 1013, column: 8, scope: !4476)
!4482 = !DILocation(line: 1013, column: 16, scope: !4476)
!4483 = !DILocation(line: 1013, column: 19, scope: !4476)
!4484 = !DILocation(line: 1014, column: 21, scope: !4476)
!4485 = !DILocation(line: 1014, column: 25, scope: !4476)
!4486 = !DILocation(line: 1014, column: 33, scope: !4476)
!4487 = !DILocation(line: 1014, column: 4, scope: !4476)
!4488 = !DILocation(line: 1014, column: 8, scope: !4476)
!4489 = !DILocation(line: 1014, column: 16, scope: !4476)
!4490 = !DILocation(line: 1014, column: 19, scope: !4476)
!4491 = !DILocation(line: 1015, column: 3, scope: !4476)
!4492 = !DILocation(line: 1018, column: 8, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1018, column: 7)
!4494 = !DILocation(line: 1018, column: 17, scope: !4493)
!4495 = !DILocation(line: 1018, column: 25, scope: !4493)
!4496 = !DILocation(line: 1018, column: 29, scope: !4493)
!4497 = !DILocation(line: 1018, column: 33, scope: !4493)
!4498 = !DILocation(line: 1018, column: 41, scope: !4493)
!4499 = !DILocation(line: 1018, column: 7, scope: !4268)
!4500 = !DILocation(line: 1019, column: 20, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 1018, column: 60)
!4502 = !DILocation(line: 1019, column: 26, scope: !4501)
!4503 = !DILocation(line: 1019, column: 31, scope: !4501)
!4504 = !DILocation(line: 1019, column: 35, scope: !4501)
!4505 = !DILocation(line: 1019, column: 39, scope: !4501)
!4506 = !DILocation(line: 1019, column: 10, scope: !4501)
!4507 = !DILocation(line: 1019, column: 8, scope: !4501)
!4508 = !DILocation(line: 1020, column: 8, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 1020, column: 8)
!4510 = !DILocation(line: 1020, column: 12, scope: !4509)
!4511 = !DILocation(line: 1020, column: 8, scope: !4501)
!4512 = !DILocation(line: 1021, column: 12, scope: !4509)
!4513 = !DILocation(line: 1021, column: 5, scope: !4509)
!4514 = !DILocation(line: 1022, column: 3, scope: !4501)
!4515 = !DILocation(line: 1025, column: 8, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1025, column: 7)
!4517 = !DILocation(line: 1025, column: 17, scope: !4516)
!4518 = !DILocation(line: 1025, column: 25, scope: !4516)
!4519 = !DILocation(line: 1025, column: 28, scope: !4516)
!4520 = !DILocation(line: 1025, column: 31, scope: !4516)
!4521 = !DILocation(line: 1025, column: 35, scope: !4516)
!4522 = !DILocation(line: 1025, column: 39, scope: !4516)
!4523 = !DILocation(line: 1025, column: 47, scope: !4516)
!4524 = !DILocation(line: 1025, column: 7, scope: !4268)
!4525 = !DILocation(line: 1026, column: 20, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 1025, column: 66)
!4527 = !DILocation(line: 1026, column: 26, scope: !4526)
!4528 = !DILocation(line: 1026, column: 31, scope: !4526)
!4529 = !DILocation(line: 1026, column: 35, scope: !4526)
!4530 = !DILocation(line: 1026, column: 39, scope: !4526)
!4531 = !DILocation(line: 1026, column: 10, scope: !4526)
!4532 = !DILocation(line: 1026, column: 8, scope: !4526)
!4533 = !DILocation(line: 1027, column: 8, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1027, column: 8)
!4535 = !DILocation(line: 1027, column: 12, scope: !4534)
!4536 = !DILocation(line: 1027, column: 8, scope: !4526)
!4537 = !DILocation(line: 1028, column: 12, scope: !4534)
!4538 = !DILocation(line: 1028, column: 5, scope: !4534)
!4539 = !DILocation(line: 1029, column: 3, scope: !4526)
!4540 = !DILocation(line: 1030, column: 2, scope: !4268)
!4541 = !DILocation(line: 931, column: 26, scope: !4263)
!4542 = !DILocation(line: 931, column: 2, scope: !4263)
!4543 = distinct !{!4543, !4266, !4544}
!4544 = !DILocation(line: 1030, column: 2, scope: !4260)
!4545 = !DILocation(line: 1031, column: 2, scope: !4213)
!4546 = !DILocation(line: 1032, column: 1, scope: !4213)
!4547 = distinct !DISubprogram(name: "mark_bbt_region", scope: !3, file: !3, line: 1097, type: !3903, scopeLine: 1098, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4548 = !DILocalVariable(name: "this", arg: 1, scope: !4547, file: !3, line: 1097, type: !167)
!4549 = !DILocation(line: 1097, column: 47, scope: !4547)
!4550 = !DILocalVariable(name: "td", arg: 2, scope: !4547, file: !3, line: 1097, type: !2764)
!4551 = !DILocation(line: 1097, column: 76, scope: !4547)
!4552 = !DILocalVariable(name: "targetsize", scope: !4547, file: !3, line: 1099, type: !107)
!4553 = !DILocation(line: 1099, column: 6, scope: !4547)
!4554 = !DILocation(line: 1099, column: 40, scope: !4547)
!4555 = !DILocation(line: 1099, column: 46, scope: !4547)
!4556 = !DILocation(line: 1099, column: 19, scope: !4547)
!4557 = !DILocalVariable(name: "mtd", scope: !4547, file: !3, line: 1100, type: !209)
!4558 = !DILocation(line: 1100, column: 19, scope: !4547)
!4559 = !DILocation(line: 1100, column: 37, scope: !4547)
!4560 = !DILocation(line: 1100, column: 25, scope: !4547)
!4561 = !DILocalVariable(name: "i", scope: !4547, file: !3, line: 1101, type: !98)
!4562 = !DILocation(line: 1101, column: 6, scope: !4547)
!4563 = !DILocalVariable(name: "j", scope: !4547, file: !3, line: 1101, type: !98)
!4564 = !DILocation(line: 1101, column: 9, scope: !4547)
!4565 = !DILocalVariable(name: "chips", scope: !4547, file: !3, line: 1101, type: !98)
!4566 = !DILocation(line: 1101, column: 12, scope: !4547)
!4567 = !DILocalVariable(name: "block", scope: !4547, file: !3, line: 1101, type: !98)
!4568 = !DILocation(line: 1101, column: 19, scope: !4547)
!4569 = !DILocalVariable(name: "nrblocks", scope: !4547, file: !3, line: 1101, type: !98)
!4570 = !DILocation(line: 1101, column: 26, scope: !4547)
!4571 = !DILocalVariable(name: "update", scope: !4547, file: !3, line: 1101, type: !98)
!4572 = !DILocation(line: 1101, column: 36, scope: !4547)
!4573 = !DILocalVariable(name: "oldval", scope: !4547, file: !3, line: 1102, type: !119)
!4574 = !DILocation(line: 1102, column: 10, scope: !4547)
!4575 = !DILocation(line: 1105, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 1105, column: 6)
!4577 = !DILocation(line: 1105, column: 10, scope: !4576)
!4578 = !DILocation(line: 1105, column: 18, scope: !4576)
!4579 = !DILocation(line: 1105, column: 6, scope: !4547)
!4580 = !DILocation(line: 1106, column: 29, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 1105, column: 38)
!4582 = !DILocation(line: 1106, column: 35, scope: !4581)
!4583 = !DILocation(line: 1106, column: 11, scope: !4581)
!4584 = !DILocation(line: 1106, column: 9, scope: !4581)
!4585 = !DILocation(line: 1107, column: 20, scope: !4581)
!4586 = !DILocation(line: 1107, column: 34, scope: !4581)
!4587 = !DILocation(line: 1107, column: 40, scope: !4581)
!4588 = !DILocation(line: 1107, column: 31, scope: !4581)
!4589 = !DILocation(line: 1107, column: 14, scope: !4581)
!4590 = !DILocation(line: 1107, column: 12, scope: !4581)
!4591 = !DILocation(line: 1108, column: 2, scope: !4581)
!4592 = !DILocation(line: 1109, column: 9, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 1108, column: 9)
!4594 = !DILocation(line: 1110, column: 20, scope: !4593)
!4595 = !DILocation(line: 1110, column: 25, scope: !4593)
!4596 = !DILocation(line: 1110, column: 33, scope: !4593)
!4597 = !DILocation(line: 1110, column: 39, scope: !4593)
!4598 = !DILocation(line: 1110, column: 30, scope: !4593)
!4599 = !DILocation(line: 1110, column: 14, scope: !4593)
!4600 = !DILocation(line: 1110, column: 12, scope: !4593)
!4601 = !DILocation(line: 1113, column: 9, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 1113, column: 2)
!4603 = !DILocation(line: 1113, column: 7, scope: !4602)
!4604 = !DILocation(line: 1113, column: 14, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1113, column: 2)
!4606 = !DILocation(line: 1113, column: 18, scope: !4605)
!4607 = !DILocation(line: 1113, column: 16, scope: !4605)
!4608 = !DILocation(line: 1113, column: 2, scope: !4602)
!4609 = !DILocation(line: 1114, column: 8, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1114, column: 7)
!4611 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 1113, column: 30)
!4612 = !DILocation(line: 1114, column: 12, scope: !4610)
!4613 = !DILocation(line: 1114, column: 20, scope: !4610)
!4614 = !DILocation(line: 1114, column: 40, scope: !4610)
!4615 = !DILocation(line: 1115, column: 9, scope: !4610)
!4616 = !DILocation(line: 1115, column: 13, scope: !4610)
!4617 = !DILocation(line: 1115, column: 21, scope: !4610)
!4618 = !DILocation(line: 1114, column: 7, scope: !4611)
!4619 = !DILocation(line: 1116, column: 8, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 1116, column: 8)
!4621 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 1115, column: 40)
!4622 = !DILocation(line: 1116, column: 12, scope: !4620)
!4623 = !DILocation(line: 1116, column: 18, scope: !4620)
!4624 = !DILocation(line: 1116, column: 21, scope: !4620)
!4625 = !DILocation(line: 1116, column: 8, scope: !4621)
!4626 = !DILocation(line: 1117, column: 5, scope: !4620)
!4627 = !DILocation(line: 1118, column: 12, scope: !4621)
!4628 = !DILocation(line: 1118, column: 16, scope: !4621)
!4629 = !DILocation(line: 1118, column: 22, scope: !4621)
!4630 = !DILocation(line: 1118, column: 29, scope: !4621)
!4631 = !DILocation(line: 1118, column: 35, scope: !4621)
!4632 = !DILocation(line: 1118, column: 53, scope: !4621)
!4633 = !DILocation(line: 1118, column: 59, scope: !4621)
!4634 = !DILocation(line: 1118, column: 51, scope: !4621)
!4635 = !DILocation(line: 1118, column: 25, scope: !4621)
!4636 = !DILocation(line: 1118, column: 10, scope: !4621)
!4637 = !DILocation(line: 1119, column: 27, scope: !4621)
!4638 = !DILocation(line: 1119, column: 33, scope: !4621)
!4639 = !DILocation(line: 1119, column: 13, scope: !4621)
!4640 = !DILocation(line: 1119, column: 11, scope: !4621)
!4641 = !DILocation(line: 1120, column: 19, scope: !4621)
!4642 = !DILocation(line: 1120, column: 25, scope: !4621)
!4643 = !DILocation(line: 1120, column: 4, scope: !4621)
!4644 = !DILocation(line: 1121, column: 9, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 1121, column: 8)
!4646 = !DILocation(line: 1121, column: 16, scope: !4645)
!4647 = !DILocation(line: 1121, column: 39, scope: !4645)
!4648 = !DILocation(line: 1122, column: 6, scope: !4645)
!4649 = !DILocation(line: 1122, column: 10, scope: !4645)
!4650 = !DILocation(line: 1121, column: 8, scope: !4621)
!4651 = !DILocation(line: 1123, column: 21, scope: !4645)
!4652 = !DILocation(line: 1123, column: 35, scope: !4645)
!4653 = !DILocation(line: 1123, column: 27, scope: !4645)
!4654 = !DILocation(line: 1124, column: 7, scope: !4645)
!4655 = !DILocation(line: 1124, column: 13, scope: !4645)
!4656 = !DILocation(line: 1123, column: 41, scope: !4645)
!4657 = !DILocation(line: 1123, column: 5, scope: !4645)
!4658 = !DILocation(line: 1125, column: 4, scope: !4621)
!4659 = !DILocation(line: 1127, column: 10, scope: !4611)
!4660 = !DILocation(line: 1128, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1128, column: 7)
!4662 = !DILocation(line: 1128, column: 11, scope: !4661)
!4663 = !DILocation(line: 1128, column: 19, scope: !4661)
!4664 = !DILocation(line: 1128, column: 7, scope: !4611)
!4665 = !DILocation(line: 1129, column: 14, scope: !4661)
!4666 = !DILocation(line: 1129, column: 16, scope: !4661)
!4667 = !DILocation(line: 1129, column: 23, scope: !4661)
!4668 = !DILocation(line: 1129, column: 21, scope: !4661)
!4669 = !DILocation(line: 1129, column: 35, scope: !4661)
!4670 = !DILocation(line: 1129, column: 39, scope: !4661)
!4671 = !DILocation(line: 1129, column: 33, scope: !4661)
!4672 = !DILocation(line: 1129, column: 10, scope: !4661)
!4673 = !DILocation(line: 1129, column: 4, scope: !4661)
!4674 = !DILocation(line: 1131, column: 12, scope: !4661)
!4675 = !DILocation(line: 1131, column: 16, scope: !4661)
!4676 = !DILocation(line: 1131, column: 14, scope: !4661)
!4677 = !DILocation(line: 1131, column: 10, scope: !4661)
!4678 = !DILocation(line: 1132, column: 10, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1132, column: 3)
!4680 = !DILocation(line: 1132, column: 8, scope: !4679)
!4681 = !DILocation(line: 1132, column: 15, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 1132, column: 3)
!4683 = !DILocation(line: 1132, column: 19, scope: !4682)
!4684 = !DILocation(line: 1132, column: 23, scope: !4682)
!4685 = !DILocation(line: 1132, column: 17, scope: !4682)
!4686 = !DILocation(line: 1132, column: 3, scope: !4679)
!4687 = !DILocation(line: 1133, column: 27, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 1132, column: 39)
!4689 = !DILocation(line: 1133, column: 33, scope: !4688)
!4690 = !DILocation(line: 1133, column: 13, scope: !4688)
!4691 = !DILocation(line: 1133, column: 11, scope: !4688)
!4692 = !DILocation(line: 1134, column: 19, scope: !4688)
!4693 = !DILocation(line: 1134, column: 25, scope: !4688)
!4694 = !DILocation(line: 1134, column: 4, scope: !4688)
!4695 = !DILocation(line: 1135, column: 8, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 1135, column: 8)
!4697 = !DILocation(line: 1135, column: 15, scope: !4696)
!4698 = !DILocation(line: 1135, column: 8, scope: !4688)
!4699 = !DILocation(line: 1136, column: 12, scope: !4696)
!4700 = !DILocation(line: 1136, column: 5, scope: !4696)
!4701 = !DILocation(line: 1137, column: 9, scope: !4688)
!4702 = !DILocation(line: 1138, column: 3, scope: !4688)
!4703 = !DILocation(line: 1132, column: 35, scope: !4682)
!4704 = !DILocation(line: 1132, column: 3, scope: !4682)
!4705 = distinct !{!4705, !4686, !4706}
!4706 = !DILocation(line: 1138, column: 3, scope: !4679)
!4707 = !DILocation(line: 1144, column: 7, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1144, column: 7)
!4709 = !DILocation(line: 1144, column: 14, scope: !4708)
!4710 = !DILocation(line: 1144, column: 17, scope: !4708)
!4711 = !DILocation(line: 1144, column: 21, scope: !4708)
!4712 = !DILocation(line: 1144, column: 7, scope: !4611)
!4713 = !DILocation(line: 1145, column: 20, scope: !4708)
!4714 = !DILocation(line: 1145, column: 35, scope: !4708)
!4715 = !DILocation(line: 1145, column: 41, scope: !4708)
!4716 = !DILocation(line: 1145, column: 26, scope: !4708)
!4717 = !DILocation(line: 1146, column: 6, scope: !4708)
!4718 = !DILocation(line: 1146, column: 12, scope: !4708)
!4719 = !DILocation(line: 1145, column: 46, scope: !4708)
!4720 = !DILocation(line: 1145, column: 4, scope: !4708)
!4721 = !DILocation(line: 1147, column: 2, scope: !4611)
!4722 = !DILocation(line: 1113, column: 26, scope: !4605)
!4723 = !DILocation(line: 1113, column: 2, scope: !4605)
!4724 = distinct !{!4724, !4608, !4725}
!4725 = !DILocation(line: 1147, column: 2, scope: !4602)
!4726 = !DILocation(line: 1148, column: 1, scope: !4547)
!4727 = distinct !DISubprogram(name: "nand_get_data_buf", scope: !74, file: !74, line: 1416, type: !4728, scopeLine: 1417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!101, !167}
!4730 = !DILocalVariable(name: "chip", arg: 1, scope: !4727, file: !74, line: 1416, type: !167)
!4731 = !DILocation(line: 1416, column: 57, scope: !4727)
!4732 = !DILocation(line: 1418, column: 2, scope: !4727)
!4733 = !DILocation(line: 1418, column: 8, scope: !4727)
!4734 = !DILocation(line: 1418, column: 18, scope: !4727)
!4735 = !DILocation(line: 1418, column: 23, scope: !4727)
!4736 = !DILocation(line: 1420, column: 9, scope: !4727)
!4737 = !DILocation(line: 1420, column: 15, scope: !4727)
!4738 = !DILocation(line: 1420, column: 2, scope: !4727)
!4739 = distinct !DISubprogram(name: "create_bbt", scope: !3, file: !3, line: 461, type: !4740, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!98, !167, !147, !2764, !98}
!4742 = !DILocalVariable(name: "this", arg: 1, scope: !4739, file: !3, line: 461, type: !167)
!4743 = !DILocation(line: 461, column: 41, scope: !4739)
!4744 = !DILocalVariable(name: "buf", arg: 2, scope: !4739, file: !3, line: 461, type: !147)
!4745 = !DILocation(line: 461, column: 56, scope: !4739)
!4746 = !DILocalVariable(name: "bd", arg: 3, scope: !4739, file: !3, line: 462, type: !2764)
!4747 = !DILocation(line: 462, column: 32, scope: !4739)
!4748 = !DILocalVariable(name: "chip", arg: 4, scope: !4739, file: !3, line: 462, type: !98)
!4749 = !DILocation(line: 462, column: 40, scope: !4739)
!4750 = !DILocalVariable(name: "targetsize", scope: !4739, file: !3, line: 464, type: !107)
!4751 = !DILocation(line: 464, column: 6, scope: !4739)
!4752 = !DILocation(line: 464, column: 40, scope: !4739)
!4753 = !DILocation(line: 464, column: 46, scope: !4739)
!4754 = !DILocation(line: 464, column: 19, scope: !4739)
!4755 = !DILocalVariable(name: "mtd", scope: !4739, file: !3, line: 465, type: !209)
!4756 = !DILocation(line: 465, column: 19, scope: !4739)
!4757 = !DILocation(line: 465, column: 37, scope: !4739)
!4758 = !DILocation(line: 465, column: 25, scope: !4739)
!4759 = !DILocalVariable(name: "i", scope: !4739, file: !3, line: 466, type: !98)
!4760 = !DILocation(line: 466, column: 6, scope: !4739)
!4761 = !DILocalVariable(name: "numblocks", scope: !4739, file: !3, line: 466, type: !98)
!4762 = !DILocation(line: 466, column: 9, scope: !4739)
!4763 = !DILocalVariable(name: "startblock", scope: !4739, file: !3, line: 466, type: !98)
!4764 = !DILocation(line: 466, column: 20, scope: !4739)
!4765 = !DILocalVariable(name: "from", scope: !4739, file: !3, line: 467, type: !102)
!4766 = !DILocation(line: 467, column: 9, scope: !4739)
!4767 = !DILocation(line: 469, column: 2, scope: !4739)
!4768 = !DILocation(line: 471, column: 6, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 471, column: 6)
!4770 = !DILocation(line: 471, column: 11, scope: !4769)
!4771 = !DILocation(line: 471, column: 6, scope: !4739)
!4772 = !DILocation(line: 472, column: 15, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 471, column: 18)
!4774 = !DILocation(line: 472, column: 20, scope: !4773)
!4775 = !DILocation(line: 472, column: 28, scope: !4773)
!4776 = !DILocation(line: 472, column: 34, scope: !4773)
!4777 = !DILocation(line: 472, column: 25, scope: !4773)
!4778 = !DILocation(line: 472, column: 13, scope: !4773)
!4779 = !DILocation(line: 473, column: 14, scope: !4773)
!4780 = !DILocation(line: 474, column: 8, scope: !4773)
!4781 = !DILocation(line: 475, column: 2, scope: !4773)
!4782 = !DILocation(line: 476, column: 7, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 476, column: 7)
!4784 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 475, column: 9)
!4785 = !DILocation(line: 476, column: 33, scope: !4783)
!4786 = !DILocation(line: 476, column: 39, scope: !4783)
!4787 = !DILocation(line: 476, column: 15, scope: !4783)
!4788 = !DILocation(line: 476, column: 12, scope: !4783)
!4789 = !DILocation(line: 476, column: 7, scope: !4784)
!4790 = !DILocation(line: 477, column: 4, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 476, column: 46)
!4792 = !DILocation(line: 479, column: 4, scope: !4791)
!4793 = !DILocation(line: 481, column: 15, scope: !4784)
!4794 = !DILocation(line: 481, column: 29, scope: !4784)
!4795 = !DILocation(line: 481, column: 35, scope: !4784)
!4796 = !DILocation(line: 481, column: 26, scope: !4784)
!4797 = !DILocation(line: 481, column: 13, scope: !4784)
!4798 = !DILocation(line: 482, column: 16, scope: !4784)
!4799 = !DILocation(line: 482, column: 23, scope: !4784)
!4800 = !DILocation(line: 482, column: 21, scope: !4784)
!4801 = !DILocation(line: 482, column: 14, scope: !4784)
!4802 = !DILocation(line: 483, column: 16, scope: !4784)
!4803 = !DILocation(line: 483, column: 13, scope: !4784)
!4804 = !DILocation(line: 484, column: 18, scope: !4784)
!4805 = !DILocation(line: 484, column: 10, scope: !4784)
!4806 = !DILocation(line: 484, column: 32, scope: !4784)
!4807 = !DILocation(line: 484, column: 38, scope: !4784)
!4808 = !DILocation(line: 484, column: 29, scope: !4784)
!4809 = !DILocation(line: 484, column: 8, scope: !4784)
!4810 = !DILocation(line: 487, column: 11, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 487, column: 2)
!4812 = !DILocation(line: 487, column: 9, scope: !4811)
!4813 = !DILocation(line: 487, column: 7, scope: !4811)
!4814 = !DILocation(line: 487, column: 23, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 487, column: 2)
!4816 = !DILocation(line: 487, column: 27, scope: !4815)
!4817 = !DILocation(line: 487, column: 25, scope: !4815)
!4818 = !DILocation(line: 487, column: 2, scope: !4811)
!4819 = !DILocalVariable(name: "ret", scope: !4820, file: !3, line: 488, type: !98)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 487, column: 43)
!4821 = !DILocation(line: 488, column: 7, scope: !4820)
!4822 = !DILocation(line: 490, column: 3, scope: !4820)
!4823 = !DILocation(line: 490, column: 3, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 490, column: 3)
!4825 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 490, column: 3)
!4826 = !DILocation(line: 490, column: 3, scope: !4825)
!4827 = !DILocation(line: 490, column: 3, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 490, column: 3)
!4829 = !DILocation(line: 490, column: 3, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 490, column: 3)
!4831 = !DILocation(line: 490, column: 3, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 490, column: 3)
!4833 = !{i32 -2143356173, i32 -2143356144, i32 -2143356098, i32 -2143356040, i32 -2143355986, i32 -2143355932, i32 -2143355877, i32 -2143355846}
!4834 = !DILocation(line: 490, column: 3, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 490, column: 3)
!4836 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 490, column: 3)
!4837 = !{i32 -2143355392, i32 -2143355385, i32 -2143355331, i32 -2143355300, i32 -2143355270}
!4838 = !DILocation(line: 490, column: 3, scope: !4836)
!4839 = !DILocation(line: 492, column: 25, scope: !4820)
!4840 = !DILocation(line: 492, column: 31, scope: !4820)
!4841 = !DILocation(line: 492, column: 35, scope: !4820)
!4842 = !DILocation(line: 492, column: 41, scope: !4820)
!4843 = !DILocation(line: 492, column: 9, scope: !4820)
!4844 = !DILocation(line: 492, column: 7, scope: !4820)
!4845 = !DILocation(line: 493, column: 7, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 493, column: 7)
!4847 = !DILocation(line: 493, column: 11, scope: !4846)
!4848 = !DILocation(line: 493, column: 7, scope: !4820)
!4849 = !DILocation(line: 494, column: 11, scope: !4846)
!4850 = !DILocation(line: 494, column: 4, scope: !4846)
!4851 = !DILocation(line: 496, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 496, column: 7)
!4853 = !DILocation(line: 496, column: 7, scope: !4820)
!4854 = !DILocation(line: 497, column: 19, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 496, column: 12)
!4856 = !DILocation(line: 497, column: 25, scope: !4855)
!4857 = !DILocation(line: 497, column: 4, scope: !4855)
!4858 = !DILocation(line: 498, column: 4, scope: !4855)
!4859 = !DILocation(line: 500, column: 4, scope: !4855)
!4860 = !DILocation(line: 500, column: 9, scope: !4855)
!4861 = !DILocation(line: 500, column: 19, scope: !4855)
!4862 = !DILocation(line: 500, column: 28, scope: !4855)
!4863 = !DILocation(line: 501, column: 3, scope: !4855)
!4864 = !DILocation(line: 503, column: 17, scope: !4820)
!4865 = !DILocation(line: 503, column: 23, scope: !4820)
!4866 = !DILocation(line: 503, column: 14, scope: !4820)
!4867 = !DILocation(line: 503, column: 11, scope: !4820)
!4868 = !DILocation(line: 503, column: 8, scope: !4820)
!4869 = !DILocation(line: 504, column: 2, scope: !4820)
!4870 = !DILocation(line: 487, column: 39, scope: !4815)
!4871 = !DILocation(line: 487, column: 2, scope: !4815)
!4872 = distinct !{!4872, !4818, !4873}
!4873 = !DILocation(line: 504, column: 2, scope: !4811)
!4874 = !DILocation(line: 505, column: 2, scope: !4739)
!4875 = !DILocation(line: 506, column: 1, scope: !4739)
!4876 = distinct !DISubprogram(name: "nanddev_target_size", scope: !51, file: !51, line: 469, type: !4877, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!107, !4879}
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!4881 = !DILocalVariable(name: "nand", arg: 1, scope: !4876, file: !51, line: 469, type: !4879)
!4882 = !DILocation(line: 469, column: 65, scope: !4876)
!4883 = !DILocation(line: 471, column: 14, scope: !4876)
!4884 = !DILocation(line: 471, column: 20, scope: !4876)
!4885 = !DILocation(line: 471, column: 27, scope: !4876)
!4886 = !DILocation(line: 471, column: 9, scope: !4876)
!4887 = !DILocation(line: 472, column: 9, scope: !4876)
!4888 = !DILocation(line: 472, column: 15, scope: !4876)
!4889 = !DILocation(line: 472, column: 22, scope: !4876)
!4890 = !DILocation(line: 471, column: 43, scope: !4876)
!4891 = !DILocation(line: 473, column: 9, scope: !4876)
!4892 = !DILocation(line: 473, column: 15, scope: !4876)
!4893 = !DILocation(line: 473, column: 22, scope: !4876)
!4894 = !DILocation(line: 472, column: 42, scope: !4876)
!4895 = !DILocation(line: 474, column: 9, scope: !4876)
!4896 = !DILocation(line: 474, column: 15, scope: !4876)
!4897 = !DILocation(line: 474, column: 22, scope: !4876)
!4898 = !DILocation(line: 473, column: 43, scope: !4876)
!4899 = !DILocation(line: 471, column: 2, scope: !4876)
!4900 = distinct !DISubprogram(name: "nanddev_ntargets", scope: !51, file: !51, line: 483, type: !4901, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!7, !4879}
!4903 = !DILocalVariable(name: "nand", arg: 1, scope: !4900, file: !51, line: 483, type: !4879)
!4904 = !DILocation(line: 483, column: 71, scope: !4900)
!4905 = !DILocation(line: 485, column: 9, scope: !4900)
!4906 = !DILocation(line: 485, column: 15, scope: !4900)
!4907 = !DILocation(line: 485, column: 22, scope: !4900)
!4908 = !DILocation(line: 485, column: 2, scope: !4900)
!4909 = distinct !DISubprogram(name: "scan_block_fast", scope: !3, file: !3, line: 414, type: !4910, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!98, !167, !2764, !102, !147}
!4912 = !DILocalVariable(name: "this", arg: 1, scope: !4909, file: !3, line: 414, type: !167)
!4913 = !DILocation(line: 414, column: 46, scope: !4909)
!4914 = !DILocalVariable(name: "bd", arg: 2, scope: !4909, file: !3, line: 414, type: !2764)
!4915 = !DILocation(line: 414, column: 75, scope: !4909)
!4916 = !DILocalVariable(name: "offs", arg: 3, scope: !4909, file: !3, line: 415, type: !102)
!4917 = !DILocation(line: 415, column: 14, scope: !4909)
!4918 = !DILocalVariable(name: "buf", arg: 4, scope: !4909, file: !3, line: 415, type: !147)
!4919 = !DILocation(line: 415, column: 29, scope: !4909)
!4920 = !DILocalVariable(name: "mtd", scope: !4909, file: !3, line: 417, type: !209)
!4921 = !DILocation(line: 417, column: 19, scope: !4909)
!4922 = !DILocation(line: 417, column: 37, scope: !4909)
!4923 = !DILocation(line: 417, column: 25, scope: !4909)
!4924 = !DILocalVariable(name: "ops", scope: !4909, file: !3, line: 419, type: !289)
!4925 = !DILocation(line: 419, column: 21, scope: !4909)
!4926 = !DILocalVariable(name: "ret", scope: !4909, file: !3, line: 420, type: !98)
!4927 = !DILocation(line: 420, column: 6, scope: !4909)
!4928 = !DILocalVariable(name: "page_offset", scope: !4909, file: !3, line: 420, type: !98)
!4929 = !DILocation(line: 420, column: 11, scope: !4909)
!4930 = !DILocation(line: 422, column: 15, scope: !4909)
!4931 = !DILocation(line: 422, column: 20, scope: !4909)
!4932 = !DILocation(line: 422, column: 6, scope: !4909)
!4933 = !DILocation(line: 422, column: 13, scope: !4909)
!4934 = !DILocation(line: 423, column: 15, scope: !4909)
!4935 = !DILocation(line: 423, column: 6, scope: !4909)
!4936 = !DILocation(line: 423, column: 13, scope: !4909)
!4937 = !DILocation(line: 424, column: 6, scope: !4909)
!4938 = !DILocation(line: 424, column: 14, scope: !4909)
!4939 = !DILocation(line: 425, column: 6, scope: !4909)
!4940 = !DILocation(line: 425, column: 13, scope: !4909)
!4941 = !DILocation(line: 426, column: 6, scope: !4909)
!4942 = !DILocation(line: 426, column: 11, scope: !4909)
!4943 = !DILocation(line: 428, column: 39, scope: !4909)
!4944 = !DILocation(line: 428, column: 16, scope: !4909)
!4945 = !DILocation(line: 428, column: 14, scope: !4909)
!4946 = !DILocation(line: 430, column: 2, scope: !4909)
!4947 = !DILocation(line: 430, column: 9, scope: !4909)
!4948 = !DILocation(line: 430, column: 21, scope: !4909)
!4949 = !DILocation(line: 435, column: 22, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 430, column: 27)
!4951 = !DILocation(line: 435, column: 27, scope: !4950)
!4952 = !DILocation(line: 435, column: 35, scope: !4950)
!4953 = !DILocation(line: 435, column: 49, scope: !4950)
!4954 = !DILocation(line: 435, column: 54, scope: !4950)
!4955 = !DILocation(line: 435, column: 47, scope: !4950)
!4956 = !DILocation(line: 435, column: 34, scope: !4950)
!4957 = !DILocation(line: 435, column: 32, scope: !4950)
!4958 = !DILocation(line: 435, column: 9, scope: !4950)
!4959 = !DILocation(line: 435, column: 7, scope: !4950)
!4960 = !DILocation(line: 438, column: 7, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 438, column: 7)
!4962 = !DILocation(line: 438, column: 11, scope: !4961)
!4963 = !DILocation(line: 438, column: 40, scope: !4961)
!4964 = !DILocation(line: 438, column: 15, scope: !4961)
!4965 = !DILocation(line: 438, column: 7, scope: !4950)
!4966 = !DILocation(line: 439, column: 11, scope: !4961)
!4967 = !DILocation(line: 439, column: 4, scope: !4961)
!4968 = !DILocation(line: 441, column: 27, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 441, column: 7)
!4970 = !DILocation(line: 441, column: 32, scope: !4969)
!4971 = !DILocation(line: 441, column: 7, scope: !4969)
!4972 = !DILocation(line: 441, column: 7, scope: !4950)
!4973 = !DILocation(line: 442, column: 4, scope: !4969)
!4974 = !DILocation(line: 444, column: 40, scope: !4950)
!4975 = !DILocation(line: 444, column: 46, scope: !4950)
!4976 = !DILocation(line: 444, column: 58, scope: !4950)
!4977 = !DILocation(line: 444, column: 17, scope: !4950)
!4978 = !DILocation(line: 444, column: 15, scope: !4950)
!4979 = distinct !{!4979, !4946, !4980}
!4980 = !DILocation(line: 445, column: 2, scope: !4909)
!4981 = !DILocation(line: 447, column: 2, scope: !4909)
!4982 = !DILocation(line: 448, column: 1, scope: !4909)
!4983 = distinct !DISubprogram(name: "mtd_is_bitflip_or_eccerr", scope: !175, file: !175, line: 703, type: !4984, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!98, !98}
!4986 = !DILocalVariable(name: "err", arg: 1, scope: !4983, file: !175, line: 703, type: !98)
!4987 = !DILocation(line: 703, column: 48, scope: !4983)
!4988 = !DILocation(line: 704, column: 24, scope: !4983)
!4989 = !DILocation(line: 704, column: 9, scope: !4983)
!4990 = !DILocation(line: 704, column: 29, scope: !4983)
!4991 = !DILocation(line: 704, column: 46, scope: !4983)
!4992 = !DILocation(line: 704, column: 32, scope: !4983)
!4993 = !DILocation(line: 704, column: 2, scope: !4983)
!4994 = distinct !DISubprogram(name: "check_short_pattern", scope: !3, file: !3, line: 128, type: !4995, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!98, !147, !2764}
!4997 = !DILocalVariable(name: "buf", arg: 1, scope: !4994, file: !3, line: 128, type: !147)
!4998 = !DILocation(line: 128, column: 41, scope: !4994)
!4999 = !DILocalVariable(name: "td", arg: 2, scope: !4994, file: !3, line: 128, type: !2764)
!5000 = !DILocation(line: 128, column: 69, scope: !4994)
!5001 = !DILocation(line: 131, column: 13, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 131, column: 6)
!5003 = !DILocation(line: 131, column: 19, scope: !5002)
!5004 = !DILocation(line: 131, column: 23, scope: !5002)
!5005 = !DILocation(line: 131, column: 17, scope: !5002)
!5006 = !DILocation(line: 131, column: 29, scope: !5002)
!5007 = !DILocation(line: 131, column: 33, scope: !5002)
!5008 = !DILocation(line: 131, column: 42, scope: !5002)
!5009 = !DILocation(line: 131, column: 46, scope: !5002)
!5010 = !DILocation(line: 131, column: 6, scope: !5002)
!5011 = !DILocation(line: 131, column: 6, scope: !4994)
!5012 = !DILocation(line: 132, column: 3, scope: !5002)
!5013 = !DILocation(line: 133, column: 2, scope: !4994)
!5014 = !DILocation(line: 134, column: 1, scope: !4994)
!5015 = distinct !DISubprogram(name: "mtd_is_bitflip", scope: !175, file: !175, line: 695, type: !4984, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5016 = !DILocalVariable(name: "err", arg: 1, scope: !5015, file: !175, line: 695, type: !98)
!5017 = !DILocation(line: 695, column: 38, scope: !5015)
!5018 = !DILocation(line: 696, column: 9, scope: !5015)
!5019 = !DILocation(line: 696, column: 13, scope: !5015)
!5020 = !DILocation(line: 696, column: 2, scope: !5015)
!5021 = distinct !DISubprogram(name: "mtd_is_eccerr", scope: !175, file: !175, line: 699, type: !4984, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5022 = !DILocalVariable(name: "err", arg: 1, scope: !5021, file: !175, line: 699, type: !98)
!5023 = !DILocation(line: 699, column: 37, scope: !5021)
!5024 = !DILocation(line: 700, column: 9, scope: !5021)
!5025 = !DILocation(line: 700, column: 13, scope: !5021)
!5026 = !DILocation(line: 700, column: 2, scope: !5021)
!5027 = distinct !DISubprogram(name: "scan_read", scope: !3, file: !3, line: 343, type: !5028, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!98, !167, !147, !102, !111, !2764}
!5030 = !DILocalVariable(name: "this", arg: 1, scope: !5027, file: !3, line: 343, type: !167)
!5031 = !DILocation(line: 343, column: 40, scope: !5027)
!5032 = !DILocalVariable(name: "buf", arg: 2, scope: !5027, file: !3, line: 343, type: !147)
!5033 = !DILocation(line: 343, column: 55, scope: !5027)
!5034 = !DILocalVariable(name: "offs", arg: 3, scope: !5027, file: !3, line: 343, type: !102)
!5035 = !DILocation(line: 343, column: 67, scope: !5027)
!5036 = !DILocalVariable(name: "len", arg: 4, scope: !5027, file: !3, line: 344, type: !111)
!5037 = !DILocation(line: 344, column: 15, scope: !5027)
!5038 = !DILocalVariable(name: "td", arg: 5, scope: !5027, file: !3, line: 344, type: !2764)
!5039 = !DILocation(line: 344, column: 43, scope: !5027)
!5040 = !DILocation(line: 346, column: 6, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 346, column: 6)
!5042 = !DILocation(line: 346, column: 10, scope: !5041)
!5043 = !DILocation(line: 346, column: 18, scope: !5041)
!5044 = !DILocation(line: 346, column: 6, scope: !5027)
!5045 = !DILocation(line: 347, column: 25, scope: !5041)
!5046 = !DILocation(line: 347, column: 31, scope: !5041)
!5047 = !DILocation(line: 347, column: 36, scope: !5041)
!5048 = !DILocation(line: 347, column: 42, scope: !5041)
!5049 = !DILocation(line: 347, column: 10, scope: !5041)
!5050 = !DILocation(line: 347, column: 3, scope: !5041)
!5051 = !DILocation(line: 349, column: 24, scope: !5041)
!5052 = !DILocation(line: 349, column: 30, scope: !5041)
!5053 = !DILocation(line: 349, column: 35, scope: !5041)
!5054 = !DILocation(line: 349, column: 41, scope: !5041)
!5055 = !DILocation(line: 349, column: 10, scope: !5041)
!5056 = !DILocation(line: 349, column: 3, scope: !5041)
!5057 = !DILocation(line: 350, column: 1, scope: !5027)
!5058 = distinct !DISubprogram(name: "bbt_get_ver_offs", scope: !3, file: !3, line: 369, type: !5059, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!181, !167, !2764}
!5061 = !DILocalVariable(name: "this", arg: 1, scope: !5058, file: !3, line: 369, type: !167)
!5062 = !DILocation(line: 369, column: 47, scope: !5058)
!5063 = !DILocalVariable(name: "td", arg: 2, scope: !5058, file: !3, line: 369, type: !2764)
!5064 = !DILocation(line: 369, column: 76, scope: !5058)
!5065 = !DILocalVariable(name: "mtd", scope: !5058, file: !3, line: 371, type: !209)
!5066 = !DILocation(line: 371, column: 19, scope: !5058)
!5067 = !DILocation(line: 371, column: 37, scope: !5058)
!5068 = !DILocation(line: 371, column: 25, scope: !5058)
!5069 = !DILocalVariable(name: "ver_offs", scope: !5058, file: !3, line: 372, type: !181)
!5070 = !DILocation(line: 372, column: 6, scope: !5058)
!5071 = !DILocation(line: 372, column: 17, scope: !5058)
!5072 = !DILocation(line: 372, column: 21, scope: !5058)
!5073 = !DILocation(line: 374, column: 8, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 374, column: 6)
!5075 = !DILocation(line: 374, column: 12, scope: !5074)
!5076 = !DILocation(line: 374, column: 20, scope: !5074)
!5077 = !DILocation(line: 374, column: 6, scope: !5058)
!5078 = !DILocation(line: 375, column: 15, scope: !5074)
!5079 = !DILocation(line: 375, column: 20, scope: !5074)
!5080 = !DILocation(line: 375, column: 12, scope: !5074)
!5081 = !DILocation(line: 375, column: 3, scope: !5074)
!5082 = !DILocation(line: 376, column: 9, scope: !5058)
!5083 = !DILocation(line: 376, column: 2, scope: !5058)
!5084 = distinct !DISubprogram(name: "scan_read_data", scope: !3, file: !3, line: 287, type: !5085, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!98, !167, !147, !102, !2764}
!5087 = !DILocalVariable(name: "this", arg: 1, scope: !5084, file: !3, line: 287, type: !167)
!5088 = !DILocation(line: 287, column: 45, scope: !5084)
!5089 = !DILocalVariable(name: "buf", arg: 2, scope: !5084, file: !3, line: 287, type: !147)
!5090 = !DILocation(line: 287, column: 60, scope: !5084)
!5091 = !DILocalVariable(name: "offs", arg: 3, scope: !5084, file: !3, line: 287, type: !102)
!5092 = !DILocation(line: 287, column: 72, scope: !5084)
!5093 = !DILocalVariable(name: "td", arg: 4, scope: !5084, file: !3, line: 288, type: !2764)
!5094 = !DILocation(line: 288, column: 29, scope: !5084)
!5095 = !DILocalVariable(name: "mtd", scope: !5084, file: !3, line: 290, type: !209)
!5096 = !DILocation(line: 290, column: 19, scope: !5084)
!5097 = !DILocation(line: 290, column: 37, scope: !5084)
!5098 = !DILocation(line: 290, column: 25, scope: !5084)
!5099 = !DILocalVariable(name: "retlen", scope: !5084, file: !3, line: 291, type: !111)
!5100 = !DILocation(line: 291, column: 9, scope: !5084)
!5101 = !DILocalVariable(name: "len", scope: !5084, file: !3, line: 292, type: !111)
!5102 = !DILocation(line: 292, column: 9, scope: !5084)
!5103 = !DILocation(line: 294, column: 8, scope: !5084)
!5104 = !DILocation(line: 294, column: 12, scope: !5084)
!5105 = !DILocation(line: 294, column: 6, scope: !5084)
!5106 = !DILocation(line: 295, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 295, column: 6)
!5108 = !DILocation(line: 295, column: 10, scope: !5107)
!5109 = !DILocation(line: 295, column: 18, scope: !5107)
!5110 = !DILocation(line: 295, column: 6, scope: !5084)
!5111 = !DILocation(line: 296, column: 6, scope: !5107)
!5112 = !DILocation(line: 296, column: 3, scope: !5107)
!5113 = !DILocation(line: 298, column: 18, scope: !5084)
!5114 = !DILocation(line: 298, column: 23, scope: !5084)
!5115 = !DILocation(line: 298, column: 29, scope: !5084)
!5116 = !DILocation(line: 298, column: 43, scope: !5084)
!5117 = !DILocation(line: 298, column: 9, scope: !5084)
!5118 = !DILocation(line: 298, column: 2, scope: !5084)
!5119 = distinct !DISubprogram(name: "scan_read_oob", scope: !3, file: !3, line: 312, type: !5120, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!98, !167, !147, !102, !111}
!5122 = !DILocalVariable(name: "this", arg: 1, scope: !5119, file: !3, line: 312, type: !167)
!5123 = !DILocation(line: 312, column: 44, scope: !5119)
!5124 = !DILocalVariable(name: "buf", arg: 2, scope: !5119, file: !3, line: 312, type: !147)
!5125 = !DILocation(line: 312, column: 59, scope: !5119)
!5126 = !DILocalVariable(name: "offs", arg: 3, scope: !5119, file: !3, line: 312, type: !102)
!5127 = !DILocation(line: 312, column: 71, scope: !5119)
!5128 = !DILocalVariable(name: "len", arg: 4, scope: !5119, file: !3, line: 313, type: !111)
!5129 = !DILocation(line: 313, column: 12, scope: !5119)
!5130 = !DILocalVariable(name: "mtd", scope: !5119, file: !3, line: 315, type: !209)
!5131 = !DILocation(line: 315, column: 19, scope: !5119)
!5132 = !DILocation(line: 315, column: 37, scope: !5119)
!5133 = !DILocation(line: 315, column: 25, scope: !5119)
!5134 = !DILocalVariable(name: "ops", scope: !5119, file: !3, line: 316, type: !289)
!5135 = !DILocation(line: 316, column: 21, scope: !5119)
!5136 = !DILocalVariable(name: "res", scope: !5119, file: !3, line: 317, type: !98)
!5137 = !DILocation(line: 317, column: 6, scope: !5119)
!5138 = !DILocalVariable(name: "ret", scope: !5119, file: !3, line: 317, type: !98)
!5139 = !DILocation(line: 317, column: 11, scope: !5119)
!5140 = !DILocation(line: 319, column: 6, scope: !5119)
!5141 = !DILocation(line: 319, column: 11, scope: !5119)
!5142 = !DILocation(line: 320, column: 6, scope: !5119)
!5143 = !DILocation(line: 320, column: 14, scope: !5119)
!5144 = !DILocation(line: 321, column: 15, scope: !5119)
!5145 = !DILocation(line: 321, column: 20, scope: !5119)
!5146 = !DILocation(line: 321, column: 6, scope: !5119)
!5147 = !DILocation(line: 321, column: 13, scope: !5119)
!5148 = !DILocation(line: 323, column: 2, scope: !5119)
!5149 = !DILocation(line: 323, column: 9, scope: !5119)
!5150 = !DILocation(line: 323, column: 13, scope: !5119)
!5151 = !DILocation(line: 324, column: 16, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 323, column: 18)
!5153 = !DILocation(line: 324, column: 7, scope: !5152)
!5154 = !DILocation(line: 324, column: 14, scope: !5152)
!5155 = !DILocalVariable(name: "__UNIQUE_ID___x174", scope: !5156, file: !3, line: 325, type: !111)
!5156 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 325, column: 13)
!5157 = !DILocation(line: 325, column: 13, scope: !5156)
!5158 = !DILocalVariable(name: "__UNIQUE_ID___y175", scope: !5156, file: !3, line: 325, type: !111)
!5159 = !DILocation(line: 325, column: 7, scope: !5152)
!5160 = !DILocation(line: 325, column: 11, scope: !5152)
!5161 = !DILocation(line: 326, column: 16, scope: !5152)
!5162 = !DILocation(line: 326, column: 26, scope: !5152)
!5163 = !DILocation(line: 326, column: 20, scope: !5152)
!5164 = !DILocation(line: 326, column: 7, scope: !5152)
!5165 = !DILocation(line: 326, column: 14, scope: !5152)
!5166 = !DILocation(line: 328, column: 22, scope: !5152)
!5167 = !DILocation(line: 328, column: 27, scope: !5152)
!5168 = !DILocation(line: 328, column: 9, scope: !5152)
!5169 = !DILocation(line: 328, column: 7, scope: !5152)
!5170 = !DILocation(line: 329, column: 7, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 329, column: 7)
!5172 = !DILocation(line: 329, column: 7, scope: !5152)
!5173 = !DILocation(line: 330, column: 34, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 330, column: 8)
!5175 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 329, column: 12)
!5176 = !DILocation(line: 330, column: 9, scope: !5174)
!5177 = !DILocation(line: 330, column: 8, scope: !5175)
!5178 = !DILocation(line: 331, column: 12, scope: !5174)
!5179 = !DILocation(line: 331, column: 5, scope: !5174)
!5180 = !DILocation(line: 332, column: 27, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 332, column: 13)
!5182 = !DILocation(line: 332, column: 13, scope: !5181)
!5183 = !DILocation(line: 332, column: 32, scope: !5181)
!5184 = !DILocation(line: 332, column: 36, scope: !5181)
!5185 = !DILocation(line: 332, column: 13, scope: !5174)
!5186 = !DILocation(line: 333, column: 11, scope: !5181)
!5187 = !DILocation(line: 333, column: 9, scope: !5181)
!5188 = !DILocation(line: 333, column: 5, scope: !5181)
!5189 = !DILocation(line: 334, column: 3, scope: !5175)
!5190 = !DILocation(line: 336, column: 10, scope: !5152)
!5191 = !DILocation(line: 336, column: 15, scope: !5152)
!5192 = !DILocation(line: 336, column: 25, scope: !5152)
!5193 = !DILocation(line: 336, column: 30, scope: !5152)
!5194 = !DILocation(line: 336, column: 23, scope: !5152)
!5195 = !DILocation(line: 336, column: 7, scope: !5152)
!5196 = !DILocation(line: 337, column: 10, scope: !5152)
!5197 = !DILocation(line: 337, column: 15, scope: !5152)
!5198 = !DILocation(line: 337, column: 7, scope: !5152)
!5199 = !DILocation(line: 338, column: 11, scope: !5152)
!5200 = !DILocation(line: 338, column: 16, scope: !5152)
!5201 = !DILocation(line: 338, column: 8, scope: !5152)
!5202 = distinct !{!5202, !5148, !5203}
!5203 = !DILocation(line: 339, column: 2, scope: !5119)
!5204 = !DILocation(line: 340, column: 9, scope: !5119)
!5205 = !DILocation(line: 340, column: 2, scope: !5119)
!5206 = !DILocation(line: 341, column: 1, scope: !5119)
!5207 = distinct !DISubprogram(name: "search_bbt", scope: !3, file: !3, line: 523, type: !4214, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5208 = !DILocalVariable(name: "this", arg: 1, scope: !5207, file: !3, line: 523, type: !167)
!5209 = !DILocation(line: 523, column: 41, scope: !5207)
!5210 = !DILocalVariable(name: "buf", arg: 2, scope: !5207, file: !3, line: 523, type: !147)
!5211 = !DILocation(line: 523, column: 56, scope: !5207)
!5212 = !DILocalVariable(name: "td", arg: 3, scope: !5207, file: !3, line: 524, type: !2764)
!5213 = !DILocation(line: 524, column: 32, scope: !5207)
!5214 = !DILocalVariable(name: "targetsize", scope: !5207, file: !3, line: 526, type: !107)
!5215 = !DILocation(line: 526, column: 6, scope: !5207)
!5216 = !DILocation(line: 526, column: 40, scope: !5207)
!5217 = !DILocation(line: 526, column: 46, scope: !5207)
!5218 = !DILocation(line: 526, column: 19, scope: !5207)
!5219 = !DILocalVariable(name: "mtd", scope: !5207, file: !3, line: 527, type: !209)
!5220 = !DILocation(line: 527, column: 19, scope: !5207)
!5221 = !DILocation(line: 527, column: 37, scope: !5207)
!5222 = !DILocation(line: 527, column: 25, scope: !5207)
!5223 = !DILocalVariable(name: "i", scope: !5207, file: !3, line: 528, type: !98)
!5224 = !DILocation(line: 528, column: 6, scope: !5207)
!5225 = !DILocalVariable(name: "chips", scope: !5207, file: !3, line: 528, type: !98)
!5226 = !DILocation(line: 528, column: 9, scope: !5207)
!5227 = !DILocalVariable(name: "startblock", scope: !5207, file: !3, line: 529, type: !98)
!5228 = !DILocation(line: 529, column: 6, scope: !5207)
!5229 = !DILocalVariable(name: "block", scope: !5207, file: !3, line: 529, type: !98)
!5230 = !DILocation(line: 529, column: 18, scope: !5207)
!5231 = !DILocalVariable(name: "dir", scope: !5207, file: !3, line: 529, type: !98)
!5232 = !DILocation(line: 529, column: 25, scope: !5207)
!5233 = !DILocalVariable(name: "scanlen", scope: !5207, file: !3, line: 530, type: !98)
!5234 = !DILocation(line: 530, column: 6, scope: !5207)
!5235 = !DILocation(line: 530, column: 16, scope: !5207)
!5236 = !DILocation(line: 530, column: 21, scope: !5207)
!5237 = !DILocation(line: 530, column: 33, scope: !5207)
!5238 = !DILocation(line: 530, column: 38, scope: !5207)
!5239 = !DILocation(line: 530, column: 31, scope: !5207)
!5240 = !DILocalVariable(name: "bbtblocks", scope: !5207, file: !3, line: 531, type: !98)
!5241 = !DILocation(line: 531, column: 6, scope: !5207)
!5242 = !DILocalVariable(name: "blocktopage", scope: !5207, file: !3, line: 532, type: !98)
!5243 = !DILocation(line: 532, column: 6, scope: !5207)
!5244 = !DILocation(line: 532, column: 20, scope: !5207)
!5245 = !DILocation(line: 532, column: 26, scope: !5207)
!5246 = !DILocation(line: 532, column: 44, scope: !5207)
!5247 = !DILocation(line: 532, column: 50, scope: !5207)
!5248 = !DILocation(line: 532, column: 42, scope: !5207)
!5249 = !DILocation(line: 535, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 535, column: 6)
!5251 = !DILocation(line: 535, column: 10, scope: !5250)
!5252 = !DILocation(line: 535, column: 18, scope: !5250)
!5253 = !DILocation(line: 535, column: 6, scope: !5207)
!5254 = !DILocation(line: 536, column: 17, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 535, column: 40)
!5256 = !DILocation(line: 536, column: 22, scope: !5255)
!5257 = !DILocation(line: 536, column: 30, scope: !5255)
!5258 = !DILocation(line: 536, column: 36, scope: !5255)
!5259 = !DILocation(line: 536, column: 27, scope: !5255)
!5260 = !DILocation(line: 536, column: 53, scope: !5255)
!5261 = !DILocation(line: 536, column: 16, scope: !5255)
!5262 = !DILocation(line: 536, column: 14, scope: !5255)
!5263 = !DILocation(line: 537, column: 7, scope: !5255)
!5264 = !DILocation(line: 538, column: 2, scope: !5255)
!5265 = !DILocation(line: 539, column: 14, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 538, column: 9)
!5267 = !DILocation(line: 540, column: 7, scope: !5266)
!5268 = !DILocation(line: 544, column: 6, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 544, column: 6)
!5270 = !DILocation(line: 544, column: 10, scope: !5269)
!5271 = !DILocation(line: 544, column: 18, scope: !5269)
!5272 = !DILocation(line: 544, column: 6, scope: !5207)
!5273 = !DILocation(line: 545, column: 29, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 544, column: 38)
!5275 = !DILocation(line: 545, column: 35, scope: !5274)
!5276 = !DILocation(line: 545, column: 11, scope: !5274)
!5277 = !DILocation(line: 545, column: 9, scope: !5274)
!5278 = !DILocation(line: 546, column: 15, scope: !5274)
!5279 = !DILocation(line: 546, column: 29, scope: !5274)
!5280 = !DILocation(line: 546, column: 35, scope: !5274)
!5281 = !DILocation(line: 546, column: 26, scope: !5274)
!5282 = !DILocation(line: 546, column: 13, scope: !5274)
!5283 = !DILocation(line: 547, column: 17, scope: !5274)
!5284 = !DILocation(line: 547, column: 27, scope: !5274)
!5285 = !DILocation(line: 547, column: 14, scope: !5274)
!5286 = !DILocation(line: 548, column: 2, scope: !5274)
!5287 = !DILocation(line: 549, column: 9, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 548, column: 9)
!5289 = !DILocation(line: 550, column: 15, scope: !5288)
!5290 = !DILocation(line: 550, column: 20, scope: !5288)
!5291 = !DILocation(line: 550, column: 28, scope: !5288)
!5292 = !DILocation(line: 550, column: 34, scope: !5288)
!5293 = !DILocation(line: 550, column: 25, scope: !5288)
!5294 = !DILocation(line: 550, column: 13, scope: !5288)
!5295 = !DILocation(line: 553, column: 9, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 553, column: 2)
!5297 = !DILocation(line: 553, column: 7, scope: !5296)
!5298 = !DILocation(line: 553, column: 14, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 553, column: 2)
!5300 = !DILocation(line: 553, column: 18, scope: !5299)
!5301 = !DILocation(line: 553, column: 16, scope: !5299)
!5302 = !DILocation(line: 553, column: 2, scope: !5296)
!5303 = !DILocation(line: 555, column: 3, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 553, column: 30)
!5305 = !DILocation(line: 555, column: 7, scope: !5304)
!5306 = !DILocation(line: 555, column: 15, scope: !5304)
!5307 = !DILocation(line: 555, column: 18, scope: !5304)
!5308 = !DILocation(line: 556, column: 3, scope: !5304)
!5309 = !DILocation(line: 556, column: 7, scope: !5304)
!5310 = !DILocation(line: 556, column: 13, scope: !5304)
!5311 = !DILocation(line: 556, column: 16, scope: !5304)
!5312 = !DILocation(line: 558, column: 14, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 558, column: 3)
!5314 = !DILocation(line: 558, column: 8, scope: !5313)
!5315 = !DILocation(line: 558, column: 19, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 558, column: 3)
!5317 = !DILocation(line: 558, column: 27, scope: !5316)
!5318 = !DILocation(line: 558, column: 31, scope: !5316)
!5319 = !DILocation(line: 558, column: 25, scope: !5316)
!5320 = !DILocation(line: 558, column: 3, scope: !5313)
!5321 = !DILocalVariable(name: "actblock", scope: !5322, file: !3, line: 560, type: !98)
!5322 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 558, column: 51)
!5323 = !DILocation(line: 560, column: 8, scope: !5322)
!5324 = !DILocation(line: 560, column: 19, scope: !5322)
!5325 = !DILocation(line: 560, column: 32, scope: !5322)
!5326 = !DILocation(line: 560, column: 38, scope: !5322)
!5327 = !DILocation(line: 560, column: 36, scope: !5322)
!5328 = !DILocation(line: 560, column: 30, scope: !5322)
!5329 = !DILocalVariable(name: "offs", scope: !5322, file: !3, line: 561, type: !102)
!5330 = !DILocation(line: 561, column: 11, scope: !5322)
!5331 = !DILocation(line: 561, column: 26, scope: !5322)
!5332 = !DILocation(line: 561, column: 18, scope: !5322)
!5333 = !DILocation(line: 561, column: 38, scope: !5322)
!5334 = !DILocation(line: 561, column: 44, scope: !5322)
!5335 = !DILocation(line: 561, column: 35, scope: !5322)
!5336 = !DILocation(line: 564, column: 14, scope: !5322)
!5337 = !DILocation(line: 564, column: 20, scope: !5322)
!5338 = !DILocation(line: 564, column: 25, scope: !5322)
!5339 = !DILocation(line: 564, column: 31, scope: !5322)
!5340 = !DILocation(line: 564, column: 36, scope: !5322)
!5341 = !DILocation(line: 564, column: 47, scope: !5322)
!5342 = !DILocation(line: 564, column: 4, scope: !5322)
!5343 = !DILocation(line: 565, column: 23, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 565, column: 8)
!5345 = !DILocation(line: 565, column: 28, scope: !5344)
!5346 = !DILocation(line: 565, column: 37, scope: !5344)
!5347 = !DILocation(line: 565, column: 42, scope: !5344)
!5348 = !DILocation(line: 565, column: 53, scope: !5344)
!5349 = !DILocation(line: 565, column: 9, scope: !5344)
!5350 = !DILocation(line: 565, column: 8, scope: !5322)
!5351 = !DILocation(line: 566, column: 20, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 565, column: 58)
!5353 = !DILocation(line: 566, column: 32, scope: !5352)
!5354 = !DILocation(line: 566, column: 29, scope: !5352)
!5355 = !DILocation(line: 566, column: 5, scope: !5352)
!5356 = !DILocation(line: 566, column: 9, scope: !5352)
!5357 = !DILocation(line: 566, column: 15, scope: !5352)
!5358 = !DILocation(line: 566, column: 18, scope: !5352)
!5359 = !DILocation(line: 567, column: 9, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 567, column: 9)
!5361 = !DILocation(line: 567, column: 13, scope: !5360)
!5362 = !DILocation(line: 567, column: 21, scope: !5360)
!5363 = !DILocation(line: 567, column: 9, scope: !5352)
!5364 = !DILocation(line: 568, column: 30, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 567, column: 41)
!5366 = !DILocation(line: 568, column: 36, scope: !5365)
!5367 = !DILocation(line: 568, column: 13, scope: !5365)
!5368 = !DILocation(line: 568, column: 11, scope: !5365)
!5369 = !DILocation(line: 569, column: 23, scope: !5365)
!5370 = !DILocation(line: 569, column: 27, scope: !5365)
!5371 = !DILocation(line: 569, column: 6, scope: !5365)
!5372 = !DILocation(line: 569, column: 10, scope: !5365)
!5373 = !DILocation(line: 569, column: 18, scope: !5365)
!5374 = !DILocation(line: 569, column: 21, scope: !5365)
!5375 = !DILocation(line: 570, column: 5, scope: !5365)
!5376 = !DILocation(line: 571, column: 5, scope: !5352)
!5377 = !DILocation(line: 573, column: 3, scope: !5322)
!5378 = !DILocation(line: 558, column: 47, scope: !5316)
!5379 = !DILocation(line: 558, column: 3, scope: !5316)
!5380 = distinct !{!5380, !5320, !5381}
!5381 = !DILocation(line: 573, column: 3, scope: !5313)
!5382 = !DILocation(line: 574, column: 17, scope: !5304)
!5383 = !DILocation(line: 574, column: 31, scope: !5304)
!5384 = !DILocation(line: 574, column: 37, scope: !5304)
!5385 = !DILocation(line: 574, column: 28, scope: !5304)
!5386 = !DILocation(line: 574, column: 14, scope: !5304)
!5387 = !DILocation(line: 575, column: 2, scope: !5304)
!5388 = !DILocation(line: 553, column: 26, scope: !5299)
!5389 = !DILocation(line: 553, column: 2, scope: !5299)
!5390 = distinct !{!5390, !5302, !5391}
!5391 = !DILocation(line: 575, column: 2, scope: !5296)
!5392 = !DILocation(line: 577, column: 9, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 577, column: 2)
!5394 = !DILocation(line: 577, column: 7, scope: !5393)
!5395 = !DILocation(line: 577, column: 14, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 577, column: 2)
!5397 = !DILocation(line: 577, column: 18, scope: !5396)
!5398 = !DILocation(line: 577, column: 16, scope: !5396)
!5399 = !DILocation(line: 577, column: 2, scope: !5393)
!5400 = !DILocation(line: 578, column: 7, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 578, column: 7)
!5402 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 577, column: 30)
!5403 = !DILocation(line: 578, column: 11, scope: !5401)
!5404 = !DILocation(line: 578, column: 17, scope: !5401)
!5405 = !DILocation(line: 578, column: 20, scope: !5401)
!5406 = !DILocation(line: 578, column: 7, scope: !5402)
!5407 = !DILocation(line: 579, column: 4, scope: !5401)
!5408 = !DILocation(line: 581, column: 4, scope: !5401)
!5409 = !DILocation(line: 583, column: 2, scope: !5402)
!5410 = !DILocation(line: 577, column: 26, scope: !5396)
!5411 = !DILocation(line: 577, column: 2, scope: !5396)
!5412 = distinct !{!5412, !5399, !5413}
!5413 = !DILocation(line: 583, column: 2, scope: !5393)
!5414 = !DILocation(line: 584, column: 2, scope: !5207)
!5415 = distinct !DISubprogram(name: "check_pattern", scope: !3, file: !3, line: 107, type: !5416, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!98, !147, !98, !98, !2764}
!5418 = !DILocalVariable(name: "buf", arg: 1, scope: !5415, file: !3, line: 107, type: !147)
!5419 = !DILocation(line: 107, column: 35, scope: !5415)
!5420 = !DILocalVariable(name: "len", arg: 2, scope: !5415, file: !3, line: 107, type: !98)
!5421 = !DILocation(line: 107, column: 44, scope: !5415)
!5422 = !DILocalVariable(name: "paglen", arg: 3, scope: !5415, file: !3, line: 107, type: !98)
!5423 = !DILocation(line: 107, column: 53, scope: !5415)
!5424 = !DILocalVariable(name: "td", arg: 4, scope: !5415, file: !3, line: 107, type: !2764)
!5425 = !DILocation(line: 107, column: 84, scope: !5415)
!5426 = !DILocation(line: 109, column: 6, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 109, column: 6)
!5428 = !DILocation(line: 109, column: 10, scope: !5427)
!5429 = !DILocation(line: 109, column: 18, scope: !5427)
!5430 = !DILocation(line: 109, column: 6, scope: !5415)
!5431 = !DILocation(line: 110, column: 31, scope: !5427)
!5432 = !DILocation(line: 110, column: 36, scope: !5427)
!5433 = !DILocation(line: 110, column: 10, scope: !5427)
!5434 = !DILocation(line: 110, column: 3, scope: !5427)
!5435 = !DILocation(line: 113, column: 13, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 113, column: 6)
!5437 = !DILocation(line: 113, column: 19, scope: !5436)
!5438 = !DILocation(line: 113, column: 17, scope: !5436)
!5439 = !DILocation(line: 113, column: 28, scope: !5436)
!5440 = !DILocation(line: 113, column: 32, scope: !5436)
!5441 = !DILocation(line: 113, column: 26, scope: !5436)
!5442 = !DILocation(line: 113, column: 38, scope: !5436)
!5443 = !DILocation(line: 113, column: 42, scope: !5436)
!5444 = !DILocation(line: 113, column: 51, scope: !5436)
!5445 = !DILocation(line: 113, column: 55, scope: !5436)
!5446 = !DILocation(line: 113, column: 6, scope: !5436)
!5447 = !DILocation(line: 113, column: 6, scope: !5415)
!5448 = !DILocation(line: 114, column: 3, scope: !5436)
!5449 = !DILocation(line: 116, column: 2, scope: !5415)
!5450 = !DILocation(line: 117, column: 1, scope: !5415)
!5451 = distinct !DISubprogram(name: "check_pattern_no_oob", scope: !3, file: !3, line: 90, type: !4995, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5452 = !DILocalVariable(name: "buf", arg: 1, scope: !5451, file: !3, line: 90, type: !147)
!5453 = !DILocation(line: 90, column: 42, scope: !5451)
!5454 = !DILocalVariable(name: "td", arg: 2, scope: !5451, file: !3, line: 90, type: !2764)
!5455 = !DILocation(line: 90, column: 70, scope: !5451)
!5456 = !DILocation(line: 92, column: 13, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 92, column: 6)
!5458 = !DILocation(line: 92, column: 18, scope: !5457)
!5459 = !DILocation(line: 92, column: 22, scope: !5457)
!5460 = !DILocation(line: 92, column: 31, scope: !5457)
!5461 = !DILocation(line: 92, column: 35, scope: !5457)
!5462 = !DILocation(line: 92, column: 6, scope: !5457)
!5463 = !DILocation(line: 92, column: 6, scope: !5451)
!5464 = !DILocation(line: 93, column: 3, scope: !5457)
!5465 = !DILocation(line: 94, column: 2, scope: !5451)
!5466 = !DILocation(line: 95, column: 1, scope: !5451)
!5467 = distinct !DISubprogram(name: "read_abs_bbt", scope: !3, file: !3, line: 259, type: !4740, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5468 = !DILocalVariable(name: "this", arg: 1, scope: !5467, file: !3, line: 259, type: !167)
!5469 = !DILocation(line: 259, column: 43, scope: !5467)
!5470 = !DILocalVariable(name: "buf", arg: 2, scope: !5467, file: !3, line: 259, type: !147)
!5471 = !DILocation(line: 259, column: 58, scope: !5467)
!5472 = !DILocalVariable(name: "td", arg: 3, scope: !5467, file: !3, line: 260, type: !2764)
!5473 = !DILocation(line: 260, column: 27, scope: !5467)
!5474 = !DILocalVariable(name: "chip", arg: 4, scope: !5467, file: !3, line: 260, type: !98)
!5475 = !DILocation(line: 260, column: 35, scope: !5467)
!5476 = !DILocalVariable(name: "mtd", scope: !5467, file: !3, line: 262, type: !209)
!5477 = !DILocation(line: 262, column: 19, scope: !5467)
!5478 = !DILocation(line: 262, column: 37, scope: !5467)
!5479 = !DILocation(line: 262, column: 25, scope: !5467)
!5480 = !DILocalVariable(name: "targetsize", scope: !5467, file: !3, line: 263, type: !107)
!5481 = !DILocation(line: 263, column: 6, scope: !5467)
!5482 = !DILocation(line: 263, column: 40, scope: !5467)
!5483 = !DILocation(line: 263, column: 46, scope: !5467)
!5484 = !DILocation(line: 263, column: 19, scope: !5467)
!5485 = !DILocalVariable(name: "res", scope: !5467, file: !3, line: 264, type: !98)
!5486 = !DILocation(line: 264, column: 6, scope: !5467)
!5487 = !DILocalVariable(name: "i", scope: !5467, file: !3, line: 264, type: !98)
!5488 = !DILocation(line: 264, column: 15, scope: !5467)
!5489 = !DILocation(line: 266, column: 6, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 266, column: 6)
!5491 = !DILocation(line: 266, column: 10, scope: !5490)
!5492 = !DILocation(line: 266, column: 18, scope: !5490)
!5493 = !DILocation(line: 266, column: 6, scope: !5467)
!5494 = !DILocalVariable(name: "offs", scope: !5495, file: !3, line: 267, type: !98)
!5495 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 266, column: 38)
!5496 = !DILocation(line: 267, column: 7, scope: !5495)
!5497 = !DILocation(line: 268, column: 10, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 268, column: 3)
!5499 = !DILocation(line: 268, column: 8, scope: !5498)
!5500 = !DILocation(line: 268, column: 15, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 268, column: 3)
!5502 = !DILocation(line: 268, column: 37, scope: !5501)
!5503 = !DILocation(line: 268, column: 43, scope: !5501)
!5504 = !DILocation(line: 268, column: 19, scope: !5501)
!5505 = !DILocation(line: 268, column: 17, scope: !5501)
!5506 = !DILocation(line: 268, column: 3, scope: !5498)
!5507 = !DILocation(line: 269, column: 8, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 269, column: 8)
!5509 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 268, column: 55)
!5510 = !DILocation(line: 269, column: 13, scope: !5508)
!5511 = !DILocation(line: 269, column: 19, scope: !5508)
!5512 = !DILocation(line: 269, column: 22, scope: !5508)
!5513 = !DILocation(line: 269, column: 30, scope: !5508)
!5514 = !DILocation(line: 269, column: 27, scope: !5508)
!5515 = !DILocation(line: 269, column: 8, scope: !5509)
!5516 = !DILocation(line: 270, column: 20, scope: !5508)
!5517 = !DILocation(line: 270, column: 26, scope: !5508)
!5518 = !DILocation(line: 270, column: 31, scope: !5508)
!5519 = !DILocation(line: 270, column: 35, scope: !5508)
!5520 = !DILocation(line: 270, column: 41, scope: !5508)
!5521 = !DILocation(line: 271, column: 6, scope: !5508)
!5522 = !DILocation(line: 271, column: 20, scope: !5508)
!5523 = !DILocation(line: 271, column: 26, scope: !5508)
!5524 = !DILocation(line: 271, column: 17, scope: !5508)
!5525 = !DILocation(line: 272, column: 6, scope: !5508)
!5526 = !DILocation(line: 272, column: 10, scope: !5508)
!5527 = !DILocation(line: 270, column: 11, scope: !5508)
!5528 = !DILocation(line: 270, column: 9, scope: !5508)
!5529 = !DILocation(line: 270, column: 5, scope: !5508)
!5530 = !DILocation(line: 273, column: 8, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 273, column: 8)
!5532 = !DILocation(line: 273, column: 8, scope: !5509)
!5533 = !DILocation(line: 274, column: 12, scope: !5531)
!5534 = !DILocation(line: 274, column: 5, scope: !5531)
!5535 = !DILocation(line: 275, column: 12, scope: !5509)
!5536 = !DILocation(line: 275, column: 26, scope: !5509)
!5537 = !DILocation(line: 275, column: 32, scope: !5509)
!5538 = !DILocation(line: 275, column: 23, scope: !5509)
!5539 = !DILocation(line: 275, column: 9, scope: !5509)
!5540 = !DILocation(line: 276, column: 3, scope: !5509)
!5541 = !DILocation(line: 268, column: 51, scope: !5501)
!5542 = !DILocation(line: 268, column: 3, scope: !5501)
!5543 = distinct !{!5543, !5506, !5544}
!5544 = !DILocation(line: 276, column: 3, scope: !5498)
!5545 = !DILocation(line: 277, column: 2, scope: !5495)
!5546 = !DILocation(line: 278, column: 18, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 277, column: 9)
!5548 = !DILocation(line: 278, column: 24, scope: !5547)
!5549 = !DILocation(line: 278, column: 29, scope: !5547)
!5550 = !DILocation(line: 278, column: 33, scope: !5547)
!5551 = !DILocation(line: 279, column: 5, scope: !5547)
!5552 = !DILocation(line: 279, column: 10, scope: !5547)
!5553 = !DILocation(line: 279, column: 18, scope: !5547)
!5554 = !DILocation(line: 279, column: 24, scope: !5547)
!5555 = !DILocation(line: 279, column: 15, scope: !5547)
!5556 = !DILocation(line: 279, column: 41, scope: !5547)
!5557 = !DILocation(line: 278, column: 9, scope: !5547)
!5558 = !DILocation(line: 278, column: 7, scope: !5547)
!5559 = !DILocation(line: 280, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 280, column: 7)
!5561 = !DILocation(line: 280, column: 7, scope: !5547)
!5562 = !DILocation(line: 281, column: 11, scope: !5560)
!5563 = !DILocation(line: 281, column: 4, scope: !5560)
!5564 = !DILocation(line: 283, column: 2, scope: !5467)
!5565 = !DILocation(line: 284, column: 1, scope: !5467)
!5566 = distinct !DISubprogram(name: "write_bbt", scope: !3, file: !3, line: 712, type: !5567, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!98, !167, !147, !2764, !2764, !98}
!5569 = !DILocalVariable(name: "this", arg: 1, scope: !5566, file: !3, line: 712, type: !167)
!5570 = !DILocation(line: 712, column: 40, scope: !5566)
!5571 = !DILocalVariable(name: "buf", arg: 2, scope: !5566, file: !3, line: 712, type: !147)
!5572 = !DILocation(line: 712, column: 55, scope: !5566)
!5573 = !DILocalVariable(name: "td", arg: 3, scope: !5566, file: !3, line: 713, type: !2764)
!5574 = !DILocation(line: 713, column: 31, scope: !5566)
!5575 = !DILocalVariable(name: "md", arg: 4, scope: !5566, file: !3, line: 713, type: !2764)
!5576 = !DILocation(line: 713, column: 58, scope: !5566)
!5577 = !DILocalVariable(name: "chipsel", arg: 5, scope: !5566, file: !3, line: 714, type: !98)
!5578 = !DILocation(line: 714, column: 12, scope: !5566)
!5579 = !DILocalVariable(name: "targetsize", scope: !5566, file: !3, line: 716, type: !107)
!5580 = !DILocation(line: 716, column: 6, scope: !5566)
!5581 = !DILocation(line: 716, column: 40, scope: !5566)
!5582 = !DILocation(line: 716, column: 46, scope: !5566)
!5583 = !DILocation(line: 716, column: 19, scope: !5566)
!5584 = !DILocalVariable(name: "mtd", scope: !5566, file: !3, line: 717, type: !209)
!5585 = !DILocation(line: 717, column: 19, scope: !5566)
!5586 = !DILocation(line: 717, column: 37, scope: !5566)
!5587 = !DILocation(line: 717, column: 25, scope: !5566)
!5588 = !DILocalVariable(name: "einfo", scope: !5566, file: !3, line: 718, type: !254)
!5589 = !DILocation(line: 718, column: 20, scope: !5566)
!5590 = !DILocalVariable(name: "i", scope: !5566, file: !3, line: 719, type: !98)
!5591 = !DILocation(line: 719, column: 6, scope: !5566)
!5592 = !DILocalVariable(name: "res", scope: !5566, file: !3, line: 719, type: !98)
!5593 = !DILocation(line: 719, column: 9, scope: !5566)
!5594 = !DILocalVariable(name: "chip", scope: !5566, file: !3, line: 719, type: !98)
!5595 = !DILocation(line: 719, column: 14, scope: !5566)
!5596 = !DILocalVariable(name: "bits", scope: !5566, file: !3, line: 720, type: !98)
!5597 = !DILocation(line: 720, column: 6, scope: !5566)
!5598 = !DILocalVariable(name: "page", scope: !5566, file: !3, line: 720, type: !98)
!5599 = !DILocation(line: 720, column: 12, scope: !5566)
!5600 = !DILocalVariable(name: "offs", scope: !5566, file: !3, line: 720, type: !98)
!5601 = !DILocation(line: 720, column: 18, scope: !5566)
!5602 = !DILocalVariable(name: "numblocks", scope: !5566, file: !3, line: 720, type: !98)
!5603 = !DILocation(line: 720, column: 24, scope: !5566)
!5604 = !DILocalVariable(name: "sft", scope: !5566, file: !3, line: 720, type: !98)
!5605 = !DILocation(line: 720, column: 35, scope: !5566)
!5606 = !DILocalVariable(name: "sftmsk", scope: !5566, file: !3, line: 720, type: !98)
!5607 = !DILocation(line: 720, column: 40, scope: !5566)
!5608 = !DILocalVariable(name: "nrchips", scope: !5566, file: !3, line: 721, type: !98)
!5609 = !DILocation(line: 721, column: 6, scope: !5566)
!5610 = !DILocalVariable(name: "pageoffs", scope: !5566, file: !3, line: 721, type: !98)
!5611 = !DILocation(line: 721, column: 15, scope: !5566)
!5612 = !DILocalVariable(name: "ooboffs", scope: !5566, file: !3, line: 721, type: !98)
!5613 = !DILocation(line: 721, column: 25, scope: !5566)
!5614 = !DILocalVariable(name: "msk", scope: !5566, file: !3, line: 722, type: !126)
!5615 = !DILocation(line: 722, column: 10, scope: !5566)
!5616 = !DILocalVariable(name: "rcode", scope: !5566, file: !3, line: 723, type: !119)
!5617 = !DILocation(line: 723, column: 10, scope: !5566)
!5618 = !DILocation(line: 723, column: 18, scope: !5566)
!5619 = !DILocation(line: 723, column: 22, scope: !5566)
!5620 = !DILocalVariable(name: "retlen", scope: !5566, file: !3, line: 724, type: !111)
!5621 = !DILocation(line: 724, column: 9, scope: !5566)
!5622 = !DILocalVariable(name: "len", scope: !5566, file: !3, line: 724, type: !111)
!5623 = !DILocation(line: 724, column: 17, scope: !5566)
!5624 = !DILocalVariable(name: "to", scope: !5566, file: !3, line: 725, type: !102)
!5625 = !DILocation(line: 725, column: 9, scope: !5566)
!5626 = !DILocalVariable(name: "ops", scope: !5566, file: !3, line: 726, type: !289)
!5627 = !DILocation(line: 726, column: 21, scope: !5566)
!5628 = !DILocation(line: 728, column: 15, scope: !5566)
!5629 = !DILocation(line: 728, column: 20, scope: !5566)
!5630 = !DILocation(line: 728, column: 6, scope: !5566)
!5631 = !DILocation(line: 728, column: 13, scope: !5566)
!5632 = !DILocation(line: 729, column: 6, scope: !5566)
!5633 = !DILocation(line: 729, column: 14, scope: !5566)
!5634 = !DILocation(line: 730, column: 6, scope: !5566)
!5635 = !DILocation(line: 730, column: 13, scope: !5566)
!5636 = !DILocation(line: 731, column: 6, scope: !5566)
!5637 = !DILocation(line: 731, column: 11, scope: !5566)
!5638 = !DILocation(line: 733, column: 7, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 733, column: 6)
!5640 = !DILocation(line: 733, column: 6, scope: !5566)
!5641 = !DILocation(line: 734, column: 9, scope: !5639)
!5642 = !DILocation(line: 734, column: 3, scope: !5639)
!5643 = !DILocation(line: 736, column: 6, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 736, column: 6)
!5645 = !DILocation(line: 736, column: 10, scope: !5644)
!5646 = !DILocation(line: 736, column: 18, scope: !5644)
!5647 = !DILocation(line: 736, column: 6, scope: !5566)
!5648 = !DILocation(line: 737, column: 21, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 736, column: 38)
!5650 = !DILocation(line: 737, column: 35, scope: !5649)
!5651 = !DILocation(line: 737, column: 41, scope: !5649)
!5652 = !DILocation(line: 737, column: 32, scope: !5649)
!5653 = !DILocation(line: 737, column: 15, scope: !5649)
!5654 = !DILocation(line: 737, column: 13, scope: !5649)
!5655 = !DILocation(line: 739, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 739, column: 7)
!5657 = !DILocation(line: 739, column: 15, scope: !5656)
!5658 = !DILocation(line: 739, column: 7, scope: !5649)
!5659 = !DILocation(line: 740, column: 32, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 739, column: 22)
!5661 = !DILocation(line: 740, column: 38, scope: !5660)
!5662 = !DILocation(line: 740, column: 14, scope: !5660)
!5663 = !DILocation(line: 740, column: 12, scope: !5660)
!5664 = !DILocation(line: 741, column: 3, scope: !5660)
!5665 = !DILocation(line: 742, column: 14, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 741, column: 10)
!5667 = !DILocation(line: 742, column: 22, scope: !5666)
!5668 = !DILocation(line: 742, column: 12, scope: !5666)
!5669 = !DILocation(line: 743, column: 11, scope: !5666)
!5670 = !DILocation(line: 743, column: 9, scope: !5666)
!5671 = !DILocation(line: 745, column: 2, scope: !5649)
!5672 = !DILocation(line: 746, column: 21, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 745, column: 9)
!5674 = !DILocation(line: 746, column: 26, scope: !5673)
!5675 = !DILocation(line: 746, column: 34, scope: !5673)
!5676 = !DILocation(line: 746, column: 40, scope: !5673)
!5677 = !DILocation(line: 746, column: 31, scope: !5673)
!5678 = !DILocation(line: 746, column: 15, scope: !5673)
!5679 = !DILocation(line: 746, column: 13, scope: !5673)
!5680 = !DILocation(line: 747, column: 11, scope: !5673)
!5681 = !DILocation(line: 751, column: 2, scope: !5566)
!5682 = !DILocation(line: 751, column: 9, scope: !5566)
!5683 = !DILocation(line: 751, column: 16, scope: !5566)
!5684 = !DILocation(line: 751, column: 14, scope: !5566)
!5685 = !DILocalVariable(name: "block", scope: !5686, file: !3, line: 752, type: !98)
!5686 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 751, column: 25)
!5687 = !DILocation(line: 752, column: 7, scope: !5686)
!5688 = !DILocation(line: 754, column: 25, scope: !5686)
!5689 = !DILocation(line: 754, column: 31, scope: !5686)
!5690 = !DILocation(line: 754, column: 35, scope: !5686)
!5691 = !DILocation(line: 754, column: 39, scope: !5686)
!5692 = !DILocation(line: 754, column: 11, scope: !5686)
!5693 = !DILocation(line: 754, column: 9, scope: !5686)
!5694 = !DILocation(line: 755, column: 7, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 755, column: 7)
!5696 = !DILocation(line: 755, column: 13, scope: !5695)
!5697 = !DILocation(line: 755, column: 7, scope: !5686)
!5698 = !DILocation(line: 756, column: 4, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 755, column: 18)
!5700 = !DILocation(line: 757, column: 10, scope: !5699)
!5701 = !DILocation(line: 757, column: 8, scope: !5699)
!5702 = !DILocation(line: 758, column: 4, scope: !5699)
!5703 = !DILocation(line: 765, column: 10, scope: !5686)
!5704 = !DILocation(line: 765, column: 20, scope: !5686)
!5705 = !DILocation(line: 765, column: 26, scope: !5686)
!5706 = !DILocation(line: 765, column: 44, scope: !5686)
!5707 = !DILocation(line: 765, column: 50, scope: !5686)
!5708 = !DILocation(line: 765, column: 42, scope: !5686)
!5709 = !DILocation(line: 765, column: 16, scope: !5686)
!5710 = !DILocation(line: 765, column: 8, scope: !5686)
!5711 = !DILocation(line: 768, column: 10, scope: !5686)
!5712 = !DILocation(line: 768, column: 14, scope: !5686)
!5713 = !DILocation(line: 768, column: 22, scope: !5686)
!5714 = !DILocation(line: 768, column: 8, scope: !5686)
!5715 = !DILocation(line: 769, column: 13, scope: !5686)
!5716 = !DILocation(line: 769, column: 12, scope: !5686)
!5717 = !DILocation(line: 769, column: 3, scope: !5686)
!5718 = !DILocation(line: 769, column: 10, scope: !5686)
!5719 = !DILocation(line: 770, column: 11, scope: !5686)
!5720 = !DILocation(line: 770, column: 3, scope: !5686)
!5721 = !DILocation(line: 771, column: 15, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 770, column: 17)
!5723 = !DILocation(line: 771, column: 27, scope: !5722)
!5724 = !DILocation(line: 771, column: 35, scope: !5722)
!5725 = !DILocation(line: 771, column: 42, scope: !5722)
!5726 = !DILocation(line: 771, column: 50, scope: !5722)
!5727 = !DILocation(line: 771, column: 57, scope: !5722)
!5728 = !DILocation(line: 772, column: 4, scope: !5722)
!5729 = !DILocation(line: 772, column: 11, scope: !5722)
!5730 = !DILocation(line: 773, column: 4, scope: !5722)
!5731 = !DILocation(line: 774, column: 15, scope: !5722)
!5732 = !DILocation(line: 774, column: 27, scope: !5722)
!5733 = !DILocation(line: 774, column: 35, scope: !5722)
!5734 = !DILocation(line: 774, column: 42, scope: !5722)
!5735 = !DILocation(line: 774, column: 50, scope: !5722)
!5736 = !DILocation(line: 774, column: 57, scope: !5722)
!5737 = !DILocation(line: 775, column: 4, scope: !5722)
!5738 = !DILocation(line: 775, column: 11, scope: !5722)
!5739 = !DILocation(line: 776, column: 4, scope: !5722)
!5740 = !DILocation(line: 777, column: 15, scope: !5722)
!5741 = !DILocation(line: 777, column: 27, scope: !5722)
!5742 = !DILocation(line: 777, column: 35, scope: !5722)
!5743 = !DILocation(line: 777, column: 42, scope: !5722)
!5744 = !DILocation(line: 777, column: 50, scope: !5722)
!5745 = !DILocation(line: 777, column: 57, scope: !5722)
!5746 = !DILocation(line: 778, column: 4, scope: !5722)
!5747 = !DILocation(line: 778, column: 11, scope: !5722)
!5748 = !DILocation(line: 779, column: 4, scope: !5722)
!5749 = !DILocation(line: 780, column: 15, scope: !5722)
!5750 = !DILocation(line: 780, column: 27, scope: !5722)
!5751 = !DILocation(line: 780, column: 35, scope: !5722)
!5752 = !DILocation(line: 780, column: 42, scope: !5722)
!5753 = !DILocation(line: 780, column: 50, scope: !5722)
!5754 = !DILocation(line: 780, column: 57, scope: !5722)
!5755 = !DILocation(line: 781, column: 4, scope: !5722)
!5756 = !DILocation(line: 781, column: 11, scope: !5722)
!5757 = !DILocation(line: 782, column: 4, scope: !5722)
!5758 = !DILocation(line: 783, column: 12, scope: !5722)
!5759 = !DILocation(line: 786, column: 17, scope: !5686)
!5760 = !DILocation(line: 786, column: 9, scope: !5686)
!5761 = !DILocation(line: 786, column: 26, scope: !5686)
!5762 = !DILocation(line: 786, column: 32, scope: !5686)
!5763 = !DILocation(line: 786, column: 23, scope: !5686)
!5764 = !DILocation(line: 786, column: 6, scope: !5686)
!5765 = !DILocation(line: 789, column: 7, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 789, column: 7)
!5767 = !DILocation(line: 789, column: 11, scope: !5766)
!5768 = !DILocation(line: 789, column: 19, scope: !5766)
!5769 = !DILocation(line: 789, column: 7, scope: !5686)
!5770 = !DILocation(line: 791, column: 26, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 789, column: 43)
!5772 = !DILocation(line: 791, column: 32, scope: !5771)
!5773 = !DILocation(line: 791, column: 23, scope: !5771)
!5774 = !DILocation(line: 791, column: 49, scope: !5771)
!5775 = !DILocation(line: 791, column: 10, scope: !5771)
!5776 = !DILocation(line: 791, column: 7, scope: !5771)
!5777 = !DILocation(line: 792, column: 15, scope: !5771)
!5778 = !DILocation(line: 792, column: 21, scope: !5771)
!5779 = !DILocation(line: 792, column: 12, scope: !5771)
!5780 = !DILocation(line: 792, column: 10, scope: !5771)
!5781 = !DILocation(line: 792, column: 8, scope: !5771)
!5782 = !DILocation(line: 793, column: 19, scope: !5771)
!5783 = !DILocation(line: 793, column: 24, scope: !5771)
!5784 = !DILocation(line: 793, column: 28, scope: !5771)
!5785 = !DILocation(line: 793, column: 42, scope: !5771)
!5786 = !DILocation(line: 793, column: 10, scope: !5771)
!5787 = !DILocation(line: 793, column: 8, scope: !5771)
!5788 = !DILocation(line: 794, column: 8, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 794, column: 8)
!5790 = !DILocation(line: 794, column: 12, scope: !5789)
!5791 = !DILocation(line: 794, column: 8, scope: !5771)
!5792 = !DILocation(line: 795, column: 9, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 795, column: 9)
!5794 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 794, column: 17)
!5795 = !DILocation(line: 795, column: 19, scope: !5793)
!5796 = !DILocation(line: 795, column: 16, scope: !5793)
!5797 = !DILocation(line: 795, column: 9, scope: !5794)
!5798 = !DILocation(line: 796, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 795, column: 24)
!5800 = !DILocation(line: 797, column: 13, scope: !5799)
!5801 = !DILocation(line: 797, column: 6, scope: !5799)
!5802 = !DILocation(line: 799, column: 5, scope: !5794)
!5803 = !DILocation(line: 800, column: 4, scope: !5794)
!5804 = !DILocation(line: 802, column: 18, scope: !5771)
!5805 = !DILocation(line: 802, column: 25, scope: !5771)
!5806 = !DILocation(line: 802, column: 31, scope: !5771)
!5807 = !DILocation(line: 802, column: 22, scope: !5771)
!5808 = !DILocation(line: 802, column: 45, scope: !5771)
!5809 = !DILocation(line: 802, column: 50, scope: !5771)
!5810 = !DILocation(line: 802, column: 43, scope: !5771)
!5811 = !DILocation(line: 802, column: 8, scope: !5771)
!5812 = !DILocation(line: 802, column: 15, scope: !5771)
!5813 = !DILocation(line: 803, column: 18, scope: !5771)
!5814 = !DILocation(line: 803, column: 22, scope: !5771)
!5815 = !DILocation(line: 803, column: 8, scope: !5771)
!5816 = !DILocation(line: 803, column: 15, scope: !5771)
!5817 = !DILocation(line: 804, column: 23, scope: !5771)
!5818 = !DILocation(line: 804, column: 28, scope: !5771)
!5819 = !DILocation(line: 804, column: 33, scope: !5771)
!5820 = !DILocation(line: 804, column: 38, scope: !5771)
!5821 = !DILocation(line: 804, column: 31, scope: !5771)
!5822 = !DILocation(line: 804, column: 10, scope: !5771)
!5823 = !DILocation(line: 804, column: 8, scope: !5771)
!5824 = !DILocation(line: 805, column: 8, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 805, column: 8)
!5826 = !DILocation(line: 805, column: 12, scope: !5825)
!5827 = !DILocation(line: 805, column: 16, scope: !5825)
!5828 = !DILocation(line: 805, column: 23, scope: !5825)
!5829 = !DILocation(line: 805, column: 40, scope: !5825)
!5830 = !DILocation(line: 805, column: 33, scope: !5825)
!5831 = !DILocation(line: 805, column: 8, scope: !5771)
!5832 = !DILocation(line: 806, column: 5, scope: !5825)
!5833 = !DILocation(line: 809, column: 15, scope: !5771)
!5834 = !DILocation(line: 809, column: 28, scope: !5771)
!5835 = !DILocation(line: 809, column: 34, scope: !5771)
!5836 = !DILocation(line: 809, column: 40, scope: !5771)
!5837 = !DILocation(line: 809, column: 31, scope: !5771)
!5838 = !DILocation(line: 809, column: 22, scope: !5771)
!5839 = !DILocation(line: 809, column: 20, scope: !5771)
!5840 = !DILocation(line: 809, column: 13, scope: !5771)
!5841 = !DILocation(line: 810, column: 11, scope: !5771)
!5842 = !DILocation(line: 810, column: 23, scope: !5771)
!5843 = !DILocation(line: 810, column: 29, scope: !5771)
!5844 = !DILocation(line: 810, column: 20, scope: !5771)
!5845 = !DILocation(line: 810, column: 9, scope: !5771)
!5846 = !DILocation(line: 812, column: 12, scope: !5771)
!5847 = !DILocation(line: 812, column: 16, scope: !5771)
!5848 = !DILocation(line: 812, column: 38, scope: !5771)
!5849 = !DILocation(line: 812, column: 51, scope: !5771)
!5850 = !DILocation(line: 812, column: 48, scope: !5771)
!5851 = !DILocation(line: 812, column: 29, scope: !5771)
!5852 = !DILocation(line: 812, column: 4, scope: !5771)
!5853 = !DILocation(line: 813, column: 14, scope: !5771)
!5854 = !DILocation(line: 813, column: 21, scope: !5771)
!5855 = !DILocation(line: 813, column: 32, scope: !5771)
!5856 = !DILocation(line: 813, column: 37, scope: !5771)
!5857 = !DILocation(line: 813, column: 30, scope: !5771)
!5858 = !DILocation(line: 813, column: 20, scope: !5771)
!5859 = !DILocation(line: 813, column: 18, scope: !5771)
!5860 = !DILocation(line: 813, column: 12, scope: !5771)
!5861 = !DILocation(line: 815, column: 3, scope: !5771)
!5862 = !DILocation(line: 815, column: 14, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 815, column: 14)
!5864 = !DILocation(line: 815, column: 18, scope: !5863)
!5865 = !DILocation(line: 815, column: 26, scope: !5863)
!5866 = !DILocation(line: 815, column: 14, scope: !5766)
!5867 = !DILocation(line: 816, column: 12, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 815, column: 45)
!5869 = !DILocation(line: 817, column: 11, scope: !5868)
!5870 = !DILocation(line: 817, column: 15, scope: !5868)
!5871 = !DILocation(line: 817, column: 9, scope: !5868)
!5872 = !DILocation(line: 819, column: 8, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 819, column: 8)
!5874 = !DILocation(line: 819, column: 12, scope: !5873)
!5875 = !DILocation(line: 819, column: 20, scope: !5873)
!5876 = !DILocation(line: 819, column: 8, scope: !5868)
!5877 = !DILocation(line: 820, column: 9, scope: !5873)
!5878 = !DILocation(line: 820, column: 5, scope: !5873)
!5879 = !DILocation(line: 822, column: 19, scope: !5868)
!5880 = !DILocation(line: 822, column: 32, scope: !5868)
!5881 = !DILocation(line: 822, column: 29, scope: !5868)
!5882 = !DILocation(line: 822, column: 10, scope: !5868)
!5883 = !DILocation(line: 822, column: 8, scope: !5868)
!5884 = !DILocation(line: 823, column: 11, scope: !5868)
!5885 = !DILocation(line: 823, column: 8, scope: !5868)
!5886 = !DILocation(line: 825, column: 10, scope: !5868)
!5887 = !DILocation(line: 825, column: 8, scope: !5868)
!5888 = !DILocation(line: 827, column: 11, scope: !5868)
!5889 = !DILocation(line: 827, column: 22, scope: !5868)
!5890 = !DILocation(line: 827, column: 4, scope: !5868)
!5891 = !DILocation(line: 829, column: 11, scope: !5868)
!5892 = !DILocation(line: 829, column: 16, scope: !5868)
!5893 = !DILocation(line: 829, column: 20, scope: !5868)
!5894 = !DILocation(line: 829, column: 29, scope: !5868)
!5895 = !DILocation(line: 829, column: 33, scope: !5868)
!5896 = !DILocation(line: 829, column: 4, scope: !5868)
!5897 = !DILocation(line: 830, column: 3, scope: !5868)
!5898 = !DILocation(line: 832, column: 19, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 830, column: 10)
!5900 = !DILocation(line: 832, column: 32, scope: !5899)
!5901 = !DILocation(line: 832, column: 29, scope: !5899)
!5902 = !DILocation(line: 832, column: 10, scope: !5899)
!5903 = !DILocation(line: 832, column: 8, scope: !5899)
!5904 = !DILocation(line: 834, column: 10, scope: !5899)
!5905 = !DILocation(line: 834, column: 8, scope: !5899)
!5906 = !DILocation(line: 836, column: 11, scope: !5899)
!5907 = !DILocation(line: 836, column: 22, scope: !5899)
!5908 = !DILocation(line: 837, column: 12, scope: !5899)
!5909 = !DILocation(line: 837, column: 19, scope: !5899)
!5910 = !DILocation(line: 837, column: 25, scope: !5899)
!5911 = !DILocation(line: 837, column: 16, scope: !5899)
!5912 = !DILocation(line: 837, column: 38, scope: !5899)
!5913 = !DILocation(line: 837, column: 43, scope: !5899)
!5914 = !DILocation(line: 837, column: 36, scope: !5899)
!5915 = !DILocation(line: 836, column: 26, scope: !5899)
!5916 = !DILocation(line: 836, column: 4, scope: !5899)
!5917 = !DILocation(line: 838, column: 9, scope: !5899)
!5918 = !DILocation(line: 839, column: 14, scope: !5899)
!5919 = !DILocation(line: 839, column: 12, scope: !5899)
!5920 = !DILocation(line: 841, column: 12, scope: !5899)
!5921 = !DILocation(line: 841, column: 16, scope: !5899)
!5922 = !DILocation(line: 841, column: 26, scope: !5899)
!5923 = !DILocation(line: 841, column: 30, scope: !5899)
!5924 = !DILocation(line: 841, column: 24, scope: !5899)
!5925 = !DILocation(line: 841, column: 37, scope: !5899)
!5926 = !DILocation(line: 841, column: 41, scope: !5899)
!5927 = !DILocation(line: 841, column: 50, scope: !5899)
!5928 = !DILocation(line: 841, column: 54, scope: !5899)
!5929 = !DILocation(line: 841, column: 4, scope: !5899)
!5930 = !DILocation(line: 844, column: 7, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 844, column: 7)
!5932 = !DILocation(line: 844, column: 11, scope: !5931)
!5933 = !DILocation(line: 844, column: 19, scope: !5931)
!5934 = !DILocation(line: 844, column: 7, scope: !5686)
!5935 = !DILocation(line: 845, column: 33, scope: !5931)
!5936 = !DILocation(line: 845, column: 37, scope: !5931)
!5937 = !DILocation(line: 845, column: 45, scope: !5931)
!5938 = !DILocation(line: 845, column: 4, scope: !5931)
!5939 = !DILocation(line: 845, column: 8, scope: !5931)
!5940 = !DILocation(line: 845, column: 18, scope: !5931)
!5941 = !DILocation(line: 845, column: 22, scope: !5931)
!5942 = !DILocation(line: 845, column: 16, scope: !5931)
!5943 = !DILocation(line: 845, column: 31, scope: !5931)
!5944 = !DILocation(line: 848, column: 10, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 848, column: 3)
!5946 = !DILocation(line: 848, column: 8, scope: !5945)
!5947 = !DILocation(line: 848, column: 15, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 848, column: 3)
!5949 = !DILocation(line: 848, column: 19, scope: !5948)
!5950 = !DILocation(line: 848, column: 17, scope: !5948)
!5951 = !DILocation(line: 848, column: 3, scope: !5945)
!5952 = !DILocalVariable(name: "dat", scope: !5953, file: !3, line: 849, type: !119)
!5953 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 848, column: 35)
!5954 = !DILocation(line: 849, column: 12, scope: !5953)
!5955 = !DILocalVariable(name: "sftcnt", scope: !5953, file: !3, line: 850, type: !98)
!5956 = !DILocation(line: 850, column: 8, scope: !5953)
!5957 = !DILocation(line: 850, column: 18, scope: !5953)
!5958 = !DILocation(line: 850, column: 28, scope: !5953)
!5959 = !DILocation(line: 850, column: 26, scope: !5953)
!5960 = !DILocation(line: 850, column: 20, scope: !5953)
!5961 = !DILocation(line: 850, column: 36, scope: !5953)
!5962 = !DILocation(line: 850, column: 34, scope: !5953)
!5963 = !DILocation(line: 851, column: 24, scope: !5953)
!5964 = !DILocation(line: 851, column: 30, scope: !5953)
!5965 = !DILocation(line: 851, column: 37, scope: !5953)
!5966 = !DILocation(line: 851, column: 35, scope: !5953)
!5967 = !DILocation(line: 851, column: 49, scope: !5953)
!5968 = !DILocation(line: 851, column: 47, scope: !5953)
!5969 = !DILocation(line: 851, column: 10, scope: !5953)
!5970 = !DILocation(line: 851, column: 8, scope: !5953)
!5971 = !DILocation(line: 853, column: 36, scope: !5953)
!5972 = !DILocation(line: 853, column: 32, scope: !5953)
!5973 = !DILocation(line: 853, column: 44, scope: !5953)
!5974 = !DILocation(line: 853, column: 41, scope: !5953)
!5975 = !DILocation(line: 853, column: 30, scope: !5953)
!5976 = !DILocation(line: 853, column: 4, scope: !5953)
!5977 = !DILocation(line: 853, column: 8, scope: !5953)
!5978 = !DILocation(line: 853, column: 16, scope: !5953)
!5979 = !DILocation(line: 853, column: 21, scope: !5953)
!5980 = !DILocation(line: 853, column: 18, scope: !5953)
!5981 = !DILocation(line: 853, column: 13, scope: !5953)
!5982 = !DILocation(line: 853, column: 27, scope: !5953)
!5983 = !DILocation(line: 854, column: 3, scope: !5953)
!5984 = !DILocation(line: 848, column: 31, scope: !5948)
!5985 = !DILocation(line: 848, column: 3, scope: !5948)
!5986 = distinct !{!5986, !5951, !5987}
!5987 = !DILocation(line: 854, column: 3, scope: !5945)
!5988 = !DILocation(line: 856, column: 3, scope: !5686)
!5989 = !DILocation(line: 857, column: 16, scope: !5686)
!5990 = !DILocation(line: 857, column: 9, scope: !5686)
!5991 = !DILocation(line: 857, column: 14, scope: !5686)
!5992 = !DILocation(line: 858, column: 20, scope: !5686)
!5993 = !DILocation(line: 858, column: 26, scope: !5686)
!5994 = !DILocation(line: 858, column: 17, scope: !5686)
!5995 = !DILocation(line: 858, column: 15, scope: !5686)
!5996 = !DILocation(line: 858, column: 9, scope: !5686)
!5997 = !DILocation(line: 858, column: 13, scope: !5686)
!5998 = !DILocation(line: 859, column: 25, scope: !5686)
!5999 = !DILocation(line: 859, column: 9, scope: !5686)
!6000 = !DILocation(line: 859, column: 7, scope: !5686)
!6001 = !DILocation(line: 860, column: 7, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 860, column: 7)
!6003 = !DILocation(line: 860, column: 11, scope: !6002)
!6004 = !DILocation(line: 860, column: 7, scope: !5686)
!6005 = !DILocation(line: 861, column: 4, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 860, column: 16)
!6007 = !DILocation(line: 863, column: 23, scope: !6006)
!6008 = !DILocation(line: 863, column: 29, scope: !6006)
!6009 = !DILocation(line: 863, column: 33, scope: !6006)
!6010 = !DILocation(line: 863, column: 39, scope: !6006)
!6011 = !DILocation(line: 863, column: 4, scope: !6006)
!6012 = !DILocation(line: 864, column: 4, scope: !6006)
!6013 = distinct !{!6013, !5681, !6014}
!6014 = !DILocation(line: 882, column: 2, scope: !5566)
!6015 = !DILocation(line: 867, column: 24, scope: !5686)
!6016 = !DILocation(line: 867, column: 30, scope: !5686)
!6017 = !DILocation(line: 867, column: 34, scope: !5686)
!6018 = !DILocation(line: 867, column: 39, scope: !5686)
!6019 = !DILocation(line: 868, column: 10, scope: !5686)
!6020 = !DILocation(line: 868, column: 14, scope: !5686)
!6021 = !DILocation(line: 868, column: 22, scope: !5686)
!6022 = !DILocation(line: 869, column: 18, scope: !5686)
!6023 = !DILocation(line: 869, column: 22, scope: !5686)
!6024 = !DILocation(line: 867, column: 9, scope: !5686)
!6025 = !DILocation(line: 867, column: 7, scope: !5686)
!6026 = !DILocation(line: 870, column: 7, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 870, column: 7)
!6028 = !DILocation(line: 870, column: 11, scope: !6027)
!6029 = !DILocation(line: 870, column: 7, scope: !5686)
!6030 = !DILocation(line: 871, column: 4, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 870, column: 16)
!6032 = !DILocation(line: 873, column: 23, scope: !6031)
!6033 = !DILocation(line: 873, column: 29, scope: !6031)
!6034 = !DILocation(line: 873, column: 33, scope: !6031)
!6035 = !DILocation(line: 873, column: 39, scope: !6031)
!6036 = !DILocation(line: 873, column: 4, scope: !6031)
!6037 = !DILocation(line: 874, column: 4, scope: !6031)
!6038 = !DILocation(line: 877, column: 3, scope: !5686)
!6039 = !DILocation(line: 881, column: 23, scope: !5686)
!6040 = !DILocation(line: 881, column: 3, scope: !5686)
!6041 = !DILocation(line: 881, column: 7, scope: !5686)
!6042 = !DILocation(line: 881, column: 17, scope: !5686)
!6043 = !DILocation(line: 881, column: 21, scope: !5686)
!6044 = !DILocation(line: 883, column: 2, scope: !5566)
!6045 = !DILabel(scope: !5566, name: "outerr", file: !3, line: 885)
!6046 = !DILocation(line: 885, column: 2, scope: !5566)
!6047 = !DILocation(line: 886, column: 2, scope: !5566)
!6048 = !DILocation(line: 887, column: 9, scope: !5566)
!6049 = !DILocation(line: 887, column: 2, scope: !5566)
!6050 = !DILocation(line: 888, column: 1, scope: !5566)
!6051 = distinct !DISubprogram(name: "read_bbt", scope: !3, file: !3, line: 166, type: !6052, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!98, !167, !147, !98, !98, !2764, !98}
!6054 = !DILocalVariable(name: "this", arg: 1, scope: !6051, file: !3, line: 166, type: !167)
!6055 = !DILocation(line: 166, column: 39, scope: !6051)
!6056 = !DILocalVariable(name: "buf", arg: 2, scope: !6051, file: !3, line: 166, type: !147)
!6057 = !DILocation(line: 166, column: 54, scope: !6051)
!6058 = !DILocalVariable(name: "page", arg: 3, scope: !6051, file: !3, line: 166, type: !98)
!6059 = !DILocation(line: 166, column: 63, scope: !6051)
!6060 = !DILocalVariable(name: "num", arg: 4, scope: !6051, file: !3, line: 166, type: !98)
!6061 = !DILocation(line: 166, column: 73, scope: !6051)
!6062 = !DILocalVariable(name: "td", arg: 5, scope: !6051, file: !3, line: 167, type: !2764)
!6063 = !DILocation(line: 167, column: 30, scope: !6051)
!6064 = !DILocalVariable(name: "offs", arg: 6, scope: !6051, file: !3, line: 167, type: !98)
!6065 = !DILocation(line: 167, column: 38, scope: !6051)
!6066 = !DILocalVariable(name: "mtd", scope: !6051, file: !3, line: 169, type: !209)
!6067 = !DILocation(line: 169, column: 19, scope: !6051)
!6068 = !DILocation(line: 169, column: 37, scope: !6051)
!6069 = !DILocation(line: 169, column: 25, scope: !6051)
!6070 = !DILocalVariable(name: "res", scope: !6051, file: !3, line: 170, type: !98)
!6071 = !DILocation(line: 170, column: 6, scope: !6051)
!6072 = !DILocalVariable(name: "ret", scope: !6051, file: !3, line: 170, type: !98)
!6073 = !DILocation(line: 170, column: 11, scope: !6051)
!6074 = !DILocalVariable(name: "i", scope: !6051, file: !3, line: 170, type: !98)
!6075 = !DILocation(line: 170, column: 20, scope: !6051)
!6076 = !DILocalVariable(name: "j", scope: !6051, file: !3, line: 170, type: !98)
!6077 = !DILocation(line: 170, column: 23, scope: !6051)
!6078 = !DILocalVariable(name: "act", scope: !6051, file: !3, line: 170, type: !98)
!6079 = !DILocation(line: 170, column: 26, scope: !6051)
!6080 = !DILocalVariable(name: "retlen", scope: !6051, file: !3, line: 171, type: !111)
!6081 = !DILocation(line: 171, column: 9, scope: !6051)
!6082 = !DILocalVariable(name: "len", scope: !6051, file: !3, line: 171, type: !111)
!6083 = !DILocation(line: 171, column: 17, scope: !6051)
!6084 = !DILocalVariable(name: "totlen", scope: !6051, file: !3, line: 171, type: !111)
!6085 = !DILocation(line: 171, column: 22, scope: !6051)
!6086 = !DILocalVariable(name: "from", scope: !6051, file: !3, line: 172, type: !102)
!6087 = !DILocation(line: 172, column: 9, scope: !6051)
!6088 = !DILocalVariable(name: "bits", scope: !6051, file: !3, line: 173, type: !98)
!6089 = !DILocation(line: 173, column: 6, scope: !6051)
!6090 = !DILocation(line: 173, column: 13, scope: !6051)
!6091 = !DILocation(line: 173, column: 17, scope: !6051)
!6092 = !DILocation(line: 173, column: 25, scope: !6051)
!6093 = !DILocalVariable(name: "msk", scope: !6051, file: !3, line: 174, type: !119)
!6094 = !DILocation(line: 174, column: 10, scope: !6051)
!6095 = !DILocation(line: 174, column: 32, scope: !6051)
!6096 = !DILocation(line: 174, column: 29, scope: !6051)
!6097 = !DILocation(line: 174, column: 38, scope: !6051)
!6098 = !DILocation(line: 174, column: 16, scope: !6051)
!6099 = !DILocalVariable(name: "marker_len", scope: !6051, file: !3, line: 175, type: !181)
!6100 = !DILocation(line: 175, column: 6, scope: !6051)
!6101 = !DILocalVariable(name: "reserved_block_code", scope: !6051, file: !3, line: 176, type: !98)
!6102 = !DILocation(line: 176, column: 6, scope: !6051)
!6103 = !DILocation(line: 176, column: 28, scope: !6051)
!6104 = !DILocation(line: 176, column: 32, scope: !6051)
!6105 = !DILocation(line: 178, column: 12, scope: !6051)
!6106 = !DILocation(line: 178, column: 18, scope: !6051)
!6107 = !DILocation(line: 178, column: 16, scope: !6051)
!6108 = !DILocation(line: 178, column: 24, scope: !6051)
!6109 = !DILocation(line: 178, column: 11, scope: !6051)
!6110 = !DILocation(line: 178, column: 9, scope: !6051)
!6111 = !DILocation(line: 179, column: 30, scope: !6051)
!6112 = !DILocation(line: 179, column: 15, scope: !6051)
!6113 = !DILocation(line: 179, column: 13, scope: !6051)
!6114 = !DILocation(line: 180, column: 18, scope: !6051)
!6115 = !DILocation(line: 180, column: 10, scope: !6051)
!6116 = !DILocation(line: 180, column: 27, scope: !6051)
!6117 = !DILocation(line: 180, column: 33, scope: !6051)
!6118 = !DILocation(line: 180, column: 24, scope: !6051)
!6119 = !DILocation(line: 180, column: 7, scope: !6051)
!6120 = !DILocation(line: 182, column: 2, scope: !6051)
!6121 = !DILocation(line: 182, column: 9, scope: !6051)
!6122 = !DILocalVariable(name: "__UNIQUE_ID___x172", scope: !6123, file: !3, line: 183, type: !111)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 183, column: 9)
!6124 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 182, column: 17)
!6125 = !DILocation(line: 183, column: 9, scope: !6123)
!6126 = !DILocalVariable(name: "__UNIQUE_ID___y173", scope: !6123, file: !3, line: 183, type: !111)
!6127 = !DILocation(line: 183, column: 7, scope: !6124)
!6128 = !DILocation(line: 184, column: 7, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 184, column: 7)
!6130 = !DILocation(line: 184, column: 7, scope: !6124)
!6131 = !DILocation(line: 189, column: 11, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 184, column: 19)
!6133 = !DILocation(line: 189, column: 8, scope: !6132)
!6134 = !DILocation(line: 190, column: 12, scope: !6132)
!6135 = !DILocation(line: 190, column: 9, scope: !6132)
!6136 = !DILocation(line: 191, column: 15, scope: !6132)
!6137 = !DILocation(line: 192, column: 3, scope: !6132)
!6138 = !DILocation(line: 193, column: 18, scope: !6124)
!6139 = !DILocation(line: 193, column: 23, scope: !6124)
!6140 = !DILocation(line: 193, column: 29, scope: !6124)
!6141 = !DILocation(line: 193, column: 43, scope: !6124)
!6142 = !DILocation(line: 193, column: 9, scope: !6124)
!6143 = !DILocation(line: 193, column: 7, scope: !6124)
!6144 = !DILocation(line: 194, column: 7, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 194, column: 7)
!6146 = !DILocation(line: 194, column: 11, scope: !6145)
!6147 = !DILocation(line: 194, column: 7, scope: !6124)
!6148 = !DILocation(line: 195, column: 22, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 195, column: 8)
!6150 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 194, column: 16)
!6151 = !DILocation(line: 195, column: 8, scope: !6149)
!6152 = !DILocation(line: 195, column: 8, scope: !6150)
!6153 = !DILocation(line: 196, column: 5, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 195, column: 28)
!6155 = !DILocation(line: 198, column: 12, scope: !6154)
!6156 = !DILocation(line: 198, column: 5, scope: !6154)
!6157 = !DILocation(line: 199, column: 30, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 199, column: 15)
!6159 = !DILocation(line: 199, column: 15, scope: !6158)
!6160 = !DILocation(line: 199, column: 15, scope: !6149)
!6161 = !DILocation(line: 200, column: 5, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 199, column: 36)
!6163 = !DILocation(line: 202, column: 11, scope: !6162)
!6164 = !DILocation(line: 202, column: 9, scope: !6162)
!6165 = !DILocation(line: 203, column: 4, scope: !6162)
!6166 = !DILocation(line: 204, column: 5, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 203, column: 11)
!6168 = !DILocation(line: 205, column: 12, scope: !6167)
!6169 = !DILocation(line: 205, column: 5, scope: !6167)
!6170 = !DILocation(line: 207, column: 3, scope: !6150)
!6171 = !DILocation(line: 210, column: 10, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 210, column: 3)
!6173 = !DILocation(line: 210, column: 8, scope: !6172)
!6174 = !DILocation(line: 210, column: 15, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 210, column: 3)
!6176 = !DILocation(line: 210, column: 19, scope: !6175)
!6177 = !DILocation(line: 210, column: 17, scope: !6175)
!6178 = !DILocation(line: 210, column: 3, scope: !6172)
!6179 = !DILocalVariable(name: "dat", scope: !6180, file: !3, line: 211, type: !119)
!6180 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 210, column: 29)
!6181 = !DILocation(line: 211, column: 12, scope: !6180)
!6182 = !DILocation(line: 211, column: 18, scope: !6180)
!6183 = !DILocation(line: 211, column: 22, scope: !6180)
!6184 = !DILocation(line: 212, column: 11, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 212, column: 4)
!6186 = !DILocation(line: 212, column: 9, scope: !6185)
!6187 = !DILocation(line: 212, column: 16, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 212, column: 4)
!6189 = !DILocation(line: 212, column: 18, scope: !6188)
!6190 = !DILocation(line: 212, column: 4, scope: !6185)
!6191 = !DILocalVariable(name: "tmp", scope: !6192, file: !3, line: 213, type: !119)
!6192 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 212, column: 41)
!6193 = !DILocation(line: 213, column: 13, scope: !6192)
!6194 = !DILocation(line: 213, column: 20, scope: !6192)
!6195 = !DILocation(line: 213, column: 27, scope: !6192)
!6196 = !DILocation(line: 213, column: 24, scope: !6192)
!6197 = !DILocation(line: 213, column: 32, scope: !6192)
!6198 = !DILocation(line: 213, column: 30, scope: !6192)
!6199 = !DILocation(line: 213, column: 19, scope: !6192)
!6200 = !DILocation(line: 214, column: 9, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 214, column: 9)
!6202 = !DILocation(line: 214, column: 16, scope: !6201)
!6203 = !DILocation(line: 214, column: 13, scope: !6201)
!6204 = !DILocation(line: 214, column: 9, scope: !6192)
!6205 = !DILocation(line: 215, column: 6, scope: !6201)
!6206 = !DILocation(line: 216, column: 9, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 216, column: 9)
!6208 = !DILocation(line: 216, column: 29, scope: !6207)
!6209 = !DILocation(line: 216, column: 33, scope: !6207)
!6210 = !DILocation(line: 216, column: 40, scope: !6207)
!6211 = !DILocation(line: 216, column: 37, scope: !6207)
!6212 = !DILocation(line: 216, column: 9, scope: !6192)
!6213 = !DILocation(line: 217, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 216, column: 62)
!6215 = !DILocation(line: 220, column: 21, scope: !6214)
!6216 = !DILocation(line: 220, column: 27, scope: !6214)
!6217 = !DILocation(line: 220, column: 34, scope: !6214)
!6218 = !DILocation(line: 220, column: 32, scope: !6214)
!6219 = !DILocation(line: 220, column: 6, scope: !6214)
!6220 = !DILocation(line: 222, column: 6, scope: !6214)
!6221 = !DILocation(line: 222, column: 11, scope: !6214)
!6222 = !DILocation(line: 222, column: 21, scope: !6214)
!6223 = !DILocation(line: 222, column: 30, scope: !6214)
!6224 = !DILocation(line: 223, column: 6, scope: !6214)
!6225 = !DILocation(line: 229, column: 5, scope: !6192)
!6226 = !DILocation(line: 233, column: 9, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 233, column: 9)
!6228 = !DILocation(line: 233, column: 13, scope: !6227)
!6229 = !DILocation(line: 233, column: 9, scope: !6192)
!6230 = !DILocation(line: 234, column: 21, scope: !6227)
!6231 = !DILocation(line: 234, column: 27, scope: !6227)
!6232 = !DILocation(line: 234, column: 34, scope: !6227)
!6233 = !DILocation(line: 234, column: 32, scope: !6227)
!6234 = !DILocation(line: 234, column: 6, scope: !6227)
!6235 = !DILocation(line: 237, column: 21, scope: !6227)
!6236 = !DILocation(line: 237, column: 27, scope: !6227)
!6237 = !DILocation(line: 237, column: 34, scope: !6227)
!6238 = !DILocation(line: 237, column: 32, scope: !6227)
!6239 = !DILocation(line: 237, column: 6, scope: !6227)
!6240 = !DILocation(line: 239, column: 5, scope: !6192)
!6241 = !DILocation(line: 239, column: 10, scope: !6192)
!6242 = !DILocation(line: 239, column: 20, scope: !6192)
!6243 = !DILocation(line: 239, column: 29, scope: !6192)
!6244 = !DILocation(line: 240, column: 4, scope: !6192)
!6245 = !DILocation(line: 212, column: 28, scope: !6188)
!6246 = !DILocation(line: 212, column: 25, scope: !6188)
!6247 = !DILocation(line: 212, column: 37, scope: !6188)
!6248 = !DILocation(line: 212, column: 4, scope: !6188)
!6249 = distinct !{!6249, !6190, !6250}
!6250 = !DILocation(line: 240, column: 4, scope: !6185)
!6251 = !DILocation(line: 241, column: 3, scope: !6180)
!6252 = !DILocation(line: 210, column: 25, scope: !6175)
!6253 = !DILocation(line: 210, column: 3, scope: !6175)
!6254 = distinct !{!6254, !6178, !6255}
!6255 = !DILocation(line: 241, column: 3, scope: !6172)
!6256 = !DILocation(line: 242, column: 13, scope: !6124)
!6257 = !DILocation(line: 242, column: 10, scope: !6124)
!6258 = !DILocation(line: 243, column: 11, scope: !6124)
!6259 = !DILocation(line: 243, column: 8, scope: !6124)
!6260 = distinct !{!6260, !6120, !6261}
!6261 = !DILocation(line: 244, column: 2, scope: !6051)
!6262 = !DILocation(line: 245, column: 9, scope: !6051)
!6263 = !DILocation(line: 245, column: 2, scope: !6051)
!6264 = !DILocation(line: 246, column: 1, scope: !6051)
!6265 = distinct !DISubprogram(name: "add_marker_len", scope: !3, file: !3, line: 142, type: !6266, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!6266 = !DISubroutineType(types: !6267)
!6267 = !{!181, !2764}
!6268 = !DILocalVariable(name: "td", arg: 1, scope: !6265, file: !3, line: 142, type: !2764)
!6269 = !DILocation(line: 142, column: 50, scope: !6265)
!6270 = !DILocalVariable(name: "len", scope: !6265, file: !3, line: 144, type: !181)
!6271 = !DILocation(line: 144, column: 6, scope: !6265)
!6272 = !DILocation(line: 146, column: 8, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 146, column: 6)
!6274 = !DILocation(line: 146, column: 12, scope: !6273)
!6275 = !DILocation(line: 146, column: 20, scope: !6273)
!6276 = !DILocation(line: 146, column: 6, scope: !6265)
!6277 = !DILocation(line: 147, column: 3, scope: !6273)
!6278 = !DILocation(line: 149, column: 8, scope: !6265)
!6279 = !DILocation(line: 149, column: 12, scope: !6265)
!6280 = !DILocation(line: 149, column: 6, scope: !6265)
!6281 = !DILocation(line: 150, column: 6, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 150, column: 6)
!6283 = !DILocation(line: 150, column: 10, scope: !6282)
!6284 = !DILocation(line: 150, column: 18, scope: !6282)
!6285 = !DILocation(line: 150, column: 6, scope: !6265)
!6286 = !DILocation(line: 151, column: 6, scope: !6282)
!6287 = !DILocation(line: 151, column: 3, scope: !6282)
!6288 = !DILocation(line: 152, column: 9, scope: !6265)
!6289 = !DILocation(line: 152, column: 2, scope: !6265)
!6290 = !DILocation(line: 153, column: 1, scope: !6265)
!6291 = distinct !DISubprogram(name: "get_bbt_block", scope: !3, file: !3, line: 621, type: !6292, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!98, !167, !2764, !2764, !98}
!6294 = !DILocalVariable(name: "this", arg: 1, scope: !6291, file: !3, line: 621, type: !167)
!6295 = !DILocation(line: 621, column: 44, scope: !6291)
!6296 = !DILocalVariable(name: "td", arg: 2, scope: !6291, file: !3, line: 621, type: !2764)
!6297 = !DILocation(line: 621, column: 73, scope: !6291)
!6298 = !DILocalVariable(name: "md", arg: 3, scope: !6291, file: !3, line: 622, type: !2764)
!6299 = !DILocation(line: 622, column: 28, scope: !6291)
!6300 = !DILocalVariable(name: "chip", arg: 4, scope: !6291, file: !3, line: 622, type: !98)
!6301 = !DILocation(line: 622, column: 36, scope: !6291)
!6302 = !DILocalVariable(name: "targetsize", scope: !6291, file: !3, line: 624, type: !107)
!6303 = !DILocation(line: 624, column: 6, scope: !6291)
!6304 = !DILocation(line: 624, column: 40, scope: !6291)
!6305 = !DILocation(line: 624, column: 46, scope: !6291)
!6306 = !DILocation(line: 624, column: 19, scope: !6291)
!6307 = !DILocalVariable(name: "startblock", scope: !6291, file: !3, line: 625, type: !98)
!6308 = !DILocation(line: 625, column: 6, scope: !6291)
!6309 = !DILocalVariable(name: "dir", scope: !6291, file: !3, line: 625, type: !98)
!6310 = !DILocation(line: 625, column: 18, scope: !6291)
!6311 = !DILocalVariable(name: "page", scope: !6291, file: !3, line: 625, type: !98)
!6312 = !DILocation(line: 625, column: 23, scope: !6291)
!6313 = !DILocalVariable(name: "numblocks", scope: !6291, file: !3, line: 625, type: !98)
!6314 = !DILocation(line: 625, column: 29, scope: !6291)
!6315 = !DILocalVariable(name: "i", scope: !6291, file: !3, line: 625, type: !98)
!6316 = !DILocation(line: 625, column: 40, scope: !6291)
!6317 = !DILocation(line: 632, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 632, column: 6)
!6319 = !DILocation(line: 632, column: 10, scope: !6318)
!6320 = !DILocation(line: 632, column: 16, scope: !6318)
!6321 = !DILocation(line: 632, column: 22, scope: !6318)
!6322 = !DILocation(line: 632, column: 6, scope: !6291)
!6323 = !DILocation(line: 633, column: 10, scope: !6318)
!6324 = !DILocation(line: 633, column: 14, scope: !6318)
!6325 = !DILocation(line: 633, column: 20, scope: !6318)
!6326 = !DILocation(line: 634, column: 6, scope: !6318)
!6327 = !DILocation(line: 634, column: 12, scope: !6318)
!6328 = !DILocation(line: 634, column: 30, scope: !6318)
!6329 = !DILocation(line: 634, column: 36, scope: !6318)
!6330 = !DILocation(line: 634, column: 28, scope: !6318)
!6331 = !DILocation(line: 633, column: 26, scope: !6318)
!6332 = !DILocation(line: 633, column: 3, scope: !6318)
!6333 = !DILocation(line: 636, column: 20, scope: !6291)
!6334 = !DILocation(line: 636, column: 34, scope: !6291)
!6335 = !DILocation(line: 636, column: 40, scope: !6291)
!6336 = !DILocation(line: 636, column: 31, scope: !6291)
!6337 = !DILocation(line: 636, column: 14, scope: !6291)
!6338 = !DILocation(line: 636, column: 12, scope: !6291)
!6339 = !DILocation(line: 637, column: 8, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 637, column: 6)
!6341 = !DILocation(line: 637, column: 12, scope: !6340)
!6342 = !DILocation(line: 637, column: 20, scope: !6340)
!6343 = !DILocation(line: 637, column: 6, scope: !6291)
!6344 = !DILocation(line: 638, column: 34, scope: !6340)
!6345 = !DILocation(line: 638, column: 40, scope: !6340)
!6346 = !DILocation(line: 638, column: 16, scope: !6340)
!6347 = !DILocation(line: 638, column: 13, scope: !6340)
!6348 = !DILocation(line: 638, column: 3, scope: !6340)
!6349 = !DILocation(line: 644, column: 6, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 644, column: 6)
!6351 = !DILocation(line: 644, column: 10, scope: !6350)
!6352 = !DILocation(line: 644, column: 18, scope: !6350)
!6353 = !DILocation(line: 644, column: 6, scope: !6291)
!6354 = !DILocation(line: 645, column: 16, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 644, column: 40)
!6356 = !DILocation(line: 645, column: 29, scope: !6355)
!6357 = !DILocation(line: 645, column: 34, scope: !6355)
!6358 = !DILocation(line: 645, column: 26, scope: !6355)
!6359 = !DILocation(line: 645, column: 39, scope: !6355)
!6360 = !DILocation(line: 645, column: 14, scope: !6355)
!6361 = !DILocation(line: 646, column: 7, scope: !6355)
!6362 = !DILocation(line: 647, column: 2, scope: !6355)
!6363 = !DILocation(line: 648, column: 16, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 647, column: 9)
!6365 = !DILocation(line: 648, column: 23, scope: !6364)
!6366 = !DILocation(line: 648, column: 21, scope: !6364)
!6367 = !DILocation(line: 648, column: 14, scope: !6364)
!6368 = !DILocation(line: 649, column: 7, scope: !6364)
!6369 = !DILocation(line: 652, column: 9, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 652, column: 2)
!6371 = !DILocation(line: 652, column: 7, scope: !6370)
!6372 = !DILocation(line: 652, column: 14, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 652, column: 2)
!6374 = !DILocation(line: 652, column: 18, scope: !6373)
!6375 = !DILocation(line: 652, column: 22, scope: !6373)
!6376 = !DILocation(line: 652, column: 16, scope: !6373)
!6377 = !DILocation(line: 652, column: 2, scope: !6370)
!6378 = !DILocalVariable(name: "block", scope: !6379, file: !3, line: 653, type: !98)
!6379 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 652, column: 38)
!6380 = !DILocation(line: 653, column: 7, scope: !6379)
!6381 = !DILocation(line: 653, column: 15, scope: !6379)
!6382 = !DILocation(line: 653, column: 28, scope: !6379)
!6383 = !DILocation(line: 653, column: 34, scope: !6379)
!6384 = !DILocation(line: 653, column: 32, scope: !6379)
!6385 = !DILocation(line: 653, column: 26, scope: !6379)
!6386 = !DILocation(line: 656, column: 25, scope: !6379)
!6387 = !DILocation(line: 656, column: 31, scope: !6379)
!6388 = !DILocation(line: 656, column: 11, scope: !6379)
!6389 = !DILocation(line: 656, column: 3, scope: !6379)
!6390 = !DILocation(line: 659, column: 4, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 656, column: 39)
!6392 = !DILocation(line: 662, column: 10, scope: !6379)
!6393 = !DILocation(line: 662, column: 20, scope: !6379)
!6394 = !DILocation(line: 662, column: 26, scope: !6379)
!6395 = !DILocation(line: 662, column: 44, scope: !6379)
!6396 = !DILocation(line: 662, column: 50, scope: !6379)
!6397 = !DILocation(line: 662, column: 42, scope: !6379)
!6398 = !DILocation(line: 662, column: 16, scope: !6379)
!6399 = !DILocation(line: 662, column: 8, scope: !6379)
!6400 = !DILocation(line: 665, column: 8, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 665, column: 7)
!6402 = !DILocation(line: 665, column: 11, scope: !6401)
!6403 = !DILocation(line: 665, column: 14, scope: !6401)
!6404 = !DILocation(line: 665, column: 18, scope: !6401)
!6405 = !DILocation(line: 665, column: 24, scope: !6401)
!6406 = !DILocation(line: 665, column: 33, scope: !6401)
!6407 = !DILocation(line: 665, column: 30, scope: !6401)
!6408 = !DILocation(line: 665, column: 7, scope: !6379)
!6409 = !DILocation(line: 666, column: 11, scope: !6401)
!6410 = !DILocation(line: 666, column: 4, scope: !6401)
!6411 = !DILocation(line: 667, column: 2, scope: !6379)
!6412 = !DILocation(line: 652, column: 34, scope: !6373)
!6413 = !DILocation(line: 652, column: 2, scope: !6373)
!6414 = distinct !{!6414, !6377, !6415}
!6415 = !DILocation(line: 667, column: 2, scope: !6370)
!6416 = !DILocation(line: 669, column: 2, scope: !6291)
!6417 = !DILocation(line: 670, column: 1, scope: !6291)
!6418 = distinct !DISubprogram(name: "mark_bbt_block_bad", scope: !3, file: !3, line: 684, type: !6419, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!6419 = !DISubroutineType(types: !6420)
!6420 = !{null, !167, !2764, !98, !98}
!6421 = !DILocalVariable(name: "this", arg: 1, scope: !6418, file: !3, line: 684, type: !167)
!6422 = !DILocation(line: 684, column: 50, scope: !6418)
!6423 = !DILocalVariable(name: "td", arg: 2, scope: !6418, file: !3, line: 685, type: !2764)
!6424 = !DILocation(line: 685, column: 34, scope: !6418)
!6425 = !DILocalVariable(name: "chip", arg: 3, scope: !6418, file: !3, line: 686, type: !98)
!6426 = !DILocation(line: 686, column: 15, scope: !6418)
!6427 = !DILocalVariable(name: "block", arg: 4, scope: !6418, file: !3, line: 686, type: !98)
!6428 = !DILocation(line: 686, column: 25, scope: !6418)
!6429 = !DILocalVariable(name: "to", scope: !6418, file: !3, line: 688, type: !102)
!6430 = !DILocation(line: 688, column: 9, scope: !6418)
!6431 = !DILocalVariable(name: "res", scope: !6418, file: !3, line: 689, type: !98)
!6432 = !DILocation(line: 689, column: 6, scope: !6418)
!6433 = !DILocation(line: 691, column: 17, scope: !6418)
!6434 = !DILocation(line: 691, column: 23, scope: !6418)
!6435 = !DILocation(line: 691, column: 2, scope: !6418)
!6436 = !DILocation(line: 693, column: 15, scope: !6418)
!6437 = !DILocation(line: 693, column: 7, scope: !6418)
!6438 = !DILocation(line: 693, column: 24, scope: !6418)
!6439 = !DILocation(line: 693, column: 30, scope: !6418)
!6440 = !DILocation(line: 693, column: 21, scope: !6418)
!6441 = !DILocation(line: 693, column: 5, scope: !6418)
!6442 = !DILocation(line: 694, column: 25, scope: !6418)
!6443 = !DILocation(line: 694, column: 31, scope: !6418)
!6444 = !DILocation(line: 694, column: 8, scope: !6418)
!6445 = !DILocation(line: 694, column: 6, scope: !6418)
!6446 = !DILocation(line: 695, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 695, column: 6)
!6448 = !DILocation(line: 695, column: 6, scope: !6418)
!6449 = !DILocation(line: 696, column: 3, scope: !6447)
!6450 = !DILocation(line: 699, column: 2, scope: !6418)
!6451 = !DILocation(line: 699, column: 6, scope: !6418)
!6452 = !DILocation(line: 699, column: 12, scope: !6418)
!6453 = !DILocation(line: 699, column: 18, scope: !6418)
!6454 = !DILocation(line: 700, column: 1, scope: !6418)
!6455 = distinct !DISubprogram(name: "scan_write_bbt", scope: !3, file: !3, line: 353, type: !6456, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !415)
!6456 = !DISubroutineType(types: !6457)
!6457 = !{!98, !167, !102, !111, !147, !147}
!6458 = !DILocalVariable(name: "this", arg: 1, scope: !6455, file: !3, line: 353, type: !167)
!6459 = !DILocation(line: 353, column: 45, scope: !6455)
!6460 = !DILocalVariable(name: "offs", arg: 2, scope: !6455, file: !3, line: 353, type: !102)
!6461 = !DILocation(line: 353, column: 58, scope: !6455)
!6462 = !DILocalVariable(name: "len", arg: 3, scope: !6455, file: !3, line: 353, type: !111)
!6463 = !DILocation(line: 353, column: 71, scope: !6455)
!6464 = !DILocalVariable(name: "buf", arg: 4, scope: !6455, file: !3, line: 354, type: !147)
!6465 = !DILocation(line: 354, column: 15, scope: !6455)
!6466 = !DILocalVariable(name: "oob", arg: 5, scope: !6455, file: !3, line: 354, type: !147)
!6467 = !DILocation(line: 354, column: 29, scope: !6455)
!6468 = !DILocalVariable(name: "mtd", scope: !6455, file: !3, line: 356, type: !209)
!6469 = !DILocation(line: 356, column: 19, scope: !6455)
!6470 = !DILocation(line: 356, column: 37, scope: !6455)
!6471 = !DILocation(line: 356, column: 25, scope: !6455)
!6472 = !DILocalVariable(name: "ops", scope: !6455, file: !3, line: 357, type: !289)
!6473 = !DILocation(line: 357, column: 21, scope: !6455)
!6474 = !DILocation(line: 359, column: 6, scope: !6455)
!6475 = !DILocation(line: 359, column: 11, scope: !6455)
!6476 = !DILocation(line: 360, column: 6, scope: !6455)
!6477 = !DILocation(line: 360, column: 14, scope: !6455)
!6478 = !DILocation(line: 361, column: 15, scope: !6455)
!6479 = !DILocation(line: 361, column: 20, scope: !6455)
!6480 = !DILocation(line: 361, column: 6, scope: !6455)
!6481 = !DILocation(line: 361, column: 13, scope: !6455)
!6482 = !DILocation(line: 362, column: 15, scope: !6455)
!6483 = !DILocation(line: 362, column: 6, scope: !6455)
!6484 = !DILocation(line: 362, column: 13, scope: !6455)
!6485 = !DILocation(line: 363, column: 15, scope: !6455)
!6486 = !DILocation(line: 363, column: 6, scope: !6455)
!6487 = !DILocation(line: 363, column: 13, scope: !6455)
!6488 = !DILocation(line: 364, column: 12, scope: !6455)
!6489 = !DILocation(line: 364, column: 6, scope: !6455)
!6490 = !DILocation(line: 364, column: 10, scope: !6455)
!6491 = !DILocation(line: 366, column: 23, scope: !6455)
!6492 = !DILocation(line: 366, column: 28, scope: !6455)
!6493 = !DILocation(line: 366, column: 9, scope: !6455)
!6494 = !DILocation(line: 366, column: 2, scope: !6455)
