; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_onfi.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_onfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, i8* }
%struct.anon.44 = type { i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, void (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i8*, i8*)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32)*, i32 (%struct.nand_chip*, i32, i32, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)* }
%struct.onfi_ext_param_page = type { i16, [4 x i8], [10 x i8], [8 x %struct.onfi_ext_section] }
%struct.onfi_ext_section = type { i8, i8 }
%struct.onfi_ext_ecc_info = type { i8, i8, i16, i16, [2 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"ONFI\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"\014Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013ONFI parameter recovery failed, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\016unsupported ONFI version: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\014Failed to detect ONFI extended param page\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\014Could not retrieve ONFI ECC requirements\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"EPPS\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @onfi_crc16(i16 zeroext %crc, i8* %p, i64 %len) #0 !dbg !134 {
entry:
  %crc.addr = alloca i16, align 2
  %p.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i16 %crc, i16* %crc.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %crc.addr, metadata !146, metadata !DIExpression()), !dbg !147
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %i, metadata !152, metadata !DIExpression()), !dbg !154
  br label %while.cond, !dbg !155

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, i64* %len.addr, align 8, !dbg !156
  %dec = add i64 %0, -1, !dbg !156
  store i64 %dec, i64* %len.addr, align 8, !dbg !156
  %tobool = icmp ne i64 %0, 0, !dbg !155
  br i1 %tobool, label %while.body, label %while.end, !dbg !155

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %p.addr, align 8, !dbg !157
  %incdec.ptr = getelementptr i8, i8* %1, i32 1, !dbg !157
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !157
  %2 = load i8, i8* %1, align 1, !dbg !159
  %conv = zext i8 %2 to i32, !dbg !159
  %shl = shl i32 %conv, 8, !dbg !160
  %3 = load i16, i16* %crc.addr, align 2, !dbg !161
  %conv1 = zext i16 %3 to i32, !dbg !161
  %xor = xor i32 %conv1, %shl, !dbg !161
  %conv2 = trunc i32 %xor to i16, !dbg !161
  store i16 %conv2, i16* %crc.addr, align 2, !dbg !161
  store i32 0, i32* %i, align 4, !dbg !162
  br label %for.cond, !dbg !164

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i32, i32* %i, align 4, !dbg !165
  %cmp = icmp slt i32 %4, 8, !dbg !167
  br i1 %cmp, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %5 = load i16, i16* %crc.addr, align 2, !dbg !169
  %conv4 = zext i16 %5 to i32, !dbg !169
  %shl5 = shl i32 %conv4, 1, !dbg !170
  %6 = load i16, i16* %crc.addr, align 2, !dbg !171
  %conv6 = zext i16 %6 to i32, !dbg !171
  %and = and i32 %conv6, 32768, !dbg !172
  %tobool7 = icmp ne i32 %and, 0, !dbg !173
  %7 = zext i1 %tobool7 to i64, !dbg !173
  %cond = select i1 %tobool7, i32 32773, i32 0, !dbg !173
  %xor8 = xor i32 %shl5, %cond, !dbg !174
  %conv9 = trunc i32 %xor8 to i16, !dbg !175
  store i16 %conv9, i16* %crc.addr, align 2, !dbg !176
  br label %for.inc, !dbg !177

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !178
  %inc = add i32 %8, 1, !dbg !178
  store i32 %inc, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !179, !llvm.loop !180

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !155, !llvm.loop !182

while.end:                                        ; preds = %while.cond
  %9 = load i16, i16* %crc.addr, align 2, !dbg !184
  ret i16 %9, !dbg !185
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_onfi_detect(%struct.nand_chip* %chip) #0 !dbg !186 {
entry:
  %map.addr.i209 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i209, metadata !2858, metadata !DIExpression()), !dbg !2863
  %start.addr.i210 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i210, metadata !2867, metadata !DIExpression()), !dbg !2868
  %nbits.addr.i211 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i211, metadata !2869, metadata !DIExpression()), !dbg !2870
  %map.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i, metadata !2858, metadata !DIExpression()), !dbg !2871
  %start.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i, metadata !2867, metadata !DIExpression()), !dbg !2873
  %nbits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i, metadata !2869, metadata !DIExpression()), !dbg !2874
  %x.addr.i206 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i206, metadata !2875, metadata !DIExpression()), !dbg !2880
  %r.i207 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i207, metadata !2882, metadata !DIExpression()), !dbg !2883
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !2875, metadata !DIExpression()), !dbg !2884
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !2882, metadata !DIExpression()), !dbg !2886
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %base = alloca %struct.nand_device*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %memorg = alloca %struct.nand_memory_organization*, align 8
  %p = alloca %struct.nand_onfi_params*, align 8
  %pbuf = alloca %struct.nand_onfi_params*, align 8
  %onfi = alloca %struct.onfi_params*, align 8
  %use_datain = alloca i8, align 1
  %onfi_version = alloca i32, align 4
  %id = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  %crc = alloca i16, align 2
  %srcbufs = alloca [3 x i8*], align 16
  %j = alloca i32, align 4
  %requirements = alloca %struct.nand_ecc_props, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.declare(metadata %struct.nand_device** %base, metadata !2889, metadata !DIExpression()), !dbg !2890
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2891
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2892
  store %struct.nand_device* %base1, %struct.nand_device** %base, align 8, !dbg !2890
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2893, metadata !DIExpression()), !dbg !2894
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2895
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !2896
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.nand_memory_organization** %memorg, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.nand_onfi_params** %p, metadata !2900, metadata !DIExpression()), !dbg !2901
  store %struct.nand_onfi_params* null, %struct.nand_onfi_params** %p, align 8, !dbg !2901
  call void @llvm.dbg.declare(metadata %struct.nand_onfi_params** %pbuf, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata %struct.onfi_params** %onfi, metadata !2904, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.declare(metadata i8* %use_datain, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i8 0, i8* %use_datain, align 1, !dbg !2907
  call void @llvm.dbg.declare(metadata i32* %onfi_version, metadata !2908, metadata !DIExpression()), !dbg !2909
  store i32 0, i32* %onfi_version, align 4, !dbg !2909
  call void @llvm.dbg.declare(metadata [4 x i8]* %id, metadata !2910, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2913, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !2919, metadata !DIExpression()), !dbg !2920
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2921
  %base2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 0, !dbg !2922
  %call3 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %base2) #8, !dbg !2923
  store %struct.nand_memory_organization* %call3, %struct.nand_memory_organization** %memorg, align 8, !dbg !2924
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2925
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %id, i64 0, i64 0, !dbg !2926
  %call4 = call i32 @nand_readid_op(%struct.nand_chip* %3, i8 zeroext 32, i8* %arraydecay, i32 4) #8, !dbg !2927
  store i32 %call4, i32* %ret, align 4, !dbg !2928
  %4 = load i32, i32* %ret, align 4, !dbg !2929
  %tobool = icmp ne i32 %4, 0, !dbg !2929
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2931

lor.lhs.false:                                    ; preds = %entry
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %id, i64 0, i64 0, !dbg !2932
  %call6 = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #8, !dbg !2933
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2933
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2934

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2935
  br label %return, !dbg !2935

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call i8* @kzalloc(i64 768, i32 3264) #8, !dbg !2936
  %5 = bitcast i8* %call8 to %struct.nand_onfi_params*, !dbg !2936
  store %struct.nand_onfi_params* %5, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2937
  %6 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2938
  %tobool9 = icmp ne %struct.nand_onfi_params* %6, null, !dbg !2938
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2940

if.then10:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2941
  br label %return, !dbg !2941

if.end11:                                         ; preds = %if.end
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2942
  %call12 = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %7) #8, !dbg !2944
  br i1 %call12, label %lor.lhs.false13, label %if.then16, !dbg !2945

lor.lhs.false13:                                  ; preds = %if.end11
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2946
  %9 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2947
  %arrayidx = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %9, i64 0, !dbg !2947
  %10 = bitcast %struct.nand_onfi_params* %arrayidx to i8*, !dbg !2948
  %call14 = call i32 @nand_read_data_op(%struct.nand_chip* %8, i8* %10, i32 256, i1 zeroext true, i1 zeroext true) #8, !dbg !2949
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2949
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2950

if.then16:                                        ; preds = %lor.lhs.false13, %if.end11
  store i8 1, i8* %use_datain, align 1, !dbg !2951
  br label %if.end17, !dbg !2952

if.end17:                                         ; preds = %if.then16, %lor.lhs.false13
  store i32 0, i32* %i, align 4, !dbg !2953
  br label %for.cond, !dbg !2955

for.cond:                                         ; preds = %for.inc, %if.end17
  %11 = load i32, i32* %i, align 4, !dbg !2956
  %cmp = icmp slt i32 %11, 3, !dbg !2958
  br i1 %cmp, label %for.body, label %for.end, !dbg !2959

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !2960
  %tobool18 = icmp ne i32 %12, 0, !dbg !2960
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !2963

if.then19:                                        ; preds = %for.body
  %13 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2964
  %14 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2965
  %15 = load i32, i32* %i, align 4, !dbg !2966
  %idxprom = sext i32 %15 to i64, !dbg !2965
  %arrayidx20 = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %14, i64 %idxprom, !dbg !2965
  %16 = bitcast %struct.nand_onfi_params* %arrayidx20 to i8*, !dbg !2967
  %call21 = call i32 @nand_read_param_page_op(%struct.nand_chip* %13, i8 zeroext 0, i8* %16, i32 256) #8, !dbg !2968
  store i32 %call21, i32* %ret, align 4, !dbg !2969
  br label %if.end33, !dbg !2970

if.else:                                          ; preds = %for.body
  %17 = load i8, i8* %use_datain, align 1, !dbg !2971
  %tobool22 = trunc i8 %17 to i1, !dbg !2971
  br i1 %tobool22, label %if.then23, label %if.else27, !dbg !2973

if.then23:                                        ; preds = %if.else
  %18 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2974
  %19 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2975
  %20 = load i32, i32* %i, align 4, !dbg !2976
  %idxprom24 = sext i32 %20 to i64, !dbg !2975
  %arrayidx25 = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %19, i64 %idxprom24, !dbg !2975
  %21 = bitcast %struct.nand_onfi_params* %arrayidx25 to i8*, !dbg !2977
  %call26 = call i32 @nand_read_data_op(%struct.nand_chip* %18, i8* %21, i32 256, i1 zeroext true, i1 zeroext false) #8, !dbg !2978
  store i32 %call26, i32* %ret, align 4, !dbg !2979
  br label %if.end32, !dbg !2980

if.else27:                                        ; preds = %if.else
  %22 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2981
  %23 = load i32, i32* %i, align 4, !dbg !2982
  %conv = sext i32 %23 to i64, !dbg !2982
  %mul = mul i64 256, %conv, !dbg !2983
  %conv28 = trunc i64 %mul to i32, !dbg !2984
  %24 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2985
  %25 = load i32, i32* %i, align 4, !dbg !2986
  %idxprom29 = sext i32 %25 to i64, !dbg !2985
  %arrayidx30 = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %24, i64 %idxprom29, !dbg !2985
  %26 = bitcast %struct.nand_onfi_params* %arrayidx30 to i8*, !dbg !2987
  %call31 = call i32 @nand_change_read_column_op(%struct.nand_chip* %22, i32 %conv28, i8* %26, i32 256, i1 zeroext true) #8, !dbg !2988
  store i32 %call31, i32* %ret, align 4, !dbg !2989
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then19
  %27 = load i32, i32* %ret, align 4, !dbg !2990
  %tobool34 = icmp ne i32 %27, 0, !dbg !2990
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2992

if.then35:                                        ; preds = %if.end33
  store i32 0, i32* %ret, align 4, !dbg !2993
  br label %free_onfi_param_page, !dbg !2995

if.end36:                                         ; preds = %if.end33
  %28 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !2996
  %29 = load i32, i32* %i, align 4, !dbg !2997
  %idxprom37 = sext i32 %29 to i64, !dbg !2996
  %arrayidx38 = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %28, i64 %idxprom37, !dbg !2996
  %30 = bitcast %struct.nand_onfi_params* %arrayidx38 to i8*, !dbg !2998
  %call39 = call zeroext i16 @onfi_crc16(i16 zeroext 20302, i8* %30, i64 254) #8, !dbg !2999
  store i16 %call39, i16* %crc, align 2, !dbg !3000
  %31 = load i16, i16* %crc, align 2, !dbg !3001
  %conv40 = zext i16 %31 to i32, !dbg !3001
  %32 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3003
  %33 = load i32, i32* %i, align 4, !dbg !3003
  %idxprom41 = sext i32 %33 to i64, !dbg !3003
  %arrayidx42 = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %32, i64 %idxprom41, !dbg !3003
  %crc43 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %arrayidx42, i32 0, i32 51, !dbg !3003
  %34 = load i16, i16* %crc43, align 1, !dbg !3003
  %conv44 = zext i16 %34 to i32, !dbg !3003
  %cmp45 = icmp eq i32 %conv40, %conv44, !dbg !3004
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !3005

if.then47:                                        ; preds = %if.end36
  %35 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3006
  %36 = load i32, i32* %i, align 4, !dbg !3008
  %idxprom48 = sext i32 %36 to i64, !dbg !3006
  %arrayidx49 = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %35, i64 %idxprom48, !dbg !3006
  store %struct.nand_onfi_params* %arrayidx49, %struct.nand_onfi_params** %p, align 8, !dbg !3009
  br label %for.end, !dbg !3010

if.end50:                                         ; preds = %if.end36
  br label %for.inc, !dbg !3011

for.inc:                                          ; preds = %if.end50
  %37 = load i32, i32* %i, align 4, !dbg !3012
  %inc = add i32 %37, 1, !dbg !3012
  store i32 %inc, i32* %i, align 4, !dbg !3012
  br label %for.cond, !dbg !3013, !llvm.loop !3014

for.end:                                          ; preds = %if.then47, %for.cond
  %38 = load i32, i32* %i, align 4, !dbg !3016
  %cmp51 = icmp eq i32 %38, 3, !dbg !3018
  br i1 %cmp51, label %if.then53, label %if.end74, !dbg !3019

if.then53:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata [3 x i8*]* %srcbufs, metadata !3020, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3024, metadata !DIExpression()), !dbg !3025
  store i32 0, i32* %j, align 4, !dbg !3026
  br label %for.cond54, !dbg !3028

for.cond54:                                       ; preds = %for.inc60, %if.then53
  %39 = load i32, i32* %j, align 4, !dbg !3029
  %cmp55 = icmp ult i32 %39, 3, !dbg !3031
  br i1 %cmp55, label %for.body57, label %for.end62, !dbg !3032

for.body57:                                       ; preds = %for.cond54
  %40 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3033
  %41 = load i32, i32* %j, align 4, !dbg !3034
  %idx.ext = zext i32 %41 to i64, !dbg !3035
  %add.ptr = getelementptr %struct.nand_onfi_params, %struct.nand_onfi_params* %40, i64 %idx.ext, !dbg !3035
  %42 = bitcast %struct.nand_onfi_params* %add.ptr to i8*, !dbg !3033
  %43 = load i32, i32* %j, align 4, !dbg !3036
  %idxprom58 = zext i32 %43 to i64, !dbg !3037
  %arrayidx59 = getelementptr [3 x i8*], [3 x i8*]* %srcbufs, i64 0, i64 %idxprom58, !dbg !3037
  store i8* %42, i8** %arrayidx59, align 8, !dbg !3038
  br label %for.inc60, !dbg !3037

for.inc60:                                        ; preds = %for.body57
  %44 = load i32, i32* %j, align 4, !dbg !3039
  %inc61 = add i32 %44, 1, !dbg !3039
  store i32 %inc61, i32* %j, align 4, !dbg !3039
  br label %for.cond54, !dbg !3040, !llvm.loop !3041

for.end62:                                        ; preds = %for.cond54
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !3043
  %arraydecay64 = getelementptr inbounds [3 x i8*], [3 x i8*]* %srcbufs, i64 0, i64 0, !dbg !3044
  %45 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3045
  %46 = bitcast %struct.nand_onfi_params* %45 to i8*, !dbg !3045
  call void @nand_bit_wise_majority(i8** %arraydecay64, i32 3, i8* %46, i32 256) #8, !dbg !3046
  %47 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3047
  %48 = bitcast %struct.nand_onfi_params* %47 to i8*, !dbg !3048
  %call65 = call zeroext i16 @onfi_crc16(i16 zeroext 20302, i8* %48, i64 254) #8, !dbg !3049
  store i16 %call65, i16* %crc, align 2, !dbg !3050
  %49 = load i16, i16* %crc, align 2, !dbg !3051
  %conv66 = zext i16 %49 to i32, !dbg !3051
  %50 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3053
  %crc67 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %50, i32 0, i32 51, !dbg !3053
  %51 = load i16, i16* %crc67, align 1, !dbg !3053
  %conv68 = zext i16 %51 to i32, !dbg !3053
  %cmp69 = icmp ne i32 %conv66, %conv68, !dbg !3054
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !3055

if.then71:                                        ; preds = %for.end62
  %call72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3056
  br label %free_onfi_param_page, !dbg !3058

if.end73:                                         ; preds = %for.end62
  %52 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3059
  store %struct.nand_onfi_params* %52, %struct.nand_onfi_params** %p, align 8, !dbg !3060
  br label %if.end74, !dbg !3061

if.end74:                                         ; preds = %if.end73, %for.end
  %53 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3062
  %manufacturer = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 3, !dbg !3064
  %desc = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer, i32 0, i32 0, !dbg !3065
  %54 = load %struct.nand_manufacturer_desc*, %struct.nand_manufacturer_desc** %desc, align 8, !dbg !3065
  %tobool75 = icmp ne %struct.nand_manufacturer_desc* %54, null, !dbg !3062
  br i1 %tobool75, label %land.lhs.true, label %if.end89, !dbg !3066

land.lhs.true:                                    ; preds = %if.end74
  %55 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3067
  %manufacturer76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 3, !dbg !3068
  %desc77 = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer76, i32 0, i32 0, !dbg !3069
  %56 = load %struct.nand_manufacturer_desc*, %struct.nand_manufacturer_desc** %desc77, align 8, !dbg !3069
  %ops = getelementptr inbounds %struct.nand_manufacturer_desc, %struct.nand_manufacturer_desc* %56, i32 0, i32 2, !dbg !3070
  %57 = load %struct.nand_manufacturer_ops*, %struct.nand_manufacturer_ops** %ops, align 8, !dbg !3070
  %tobool78 = icmp ne %struct.nand_manufacturer_ops* %57, null, !dbg !3067
  br i1 %tobool78, label %land.lhs.true79, label %if.end89, !dbg !3071

land.lhs.true79:                                  ; preds = %land.lhs.true
  %58 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3072
  %manufacturer80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 3, !dbg !3073
  %desc81 = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer80, i32 0, i32 0, !dbg !3074
  %59 = load %struct.nand_manufacturer_desc*, %struct.nand_manufacturer_desc** %desc81, align 8, !dbg !3074
  %ops82 = getelementptr inbounds %struct.nand_manufacturer_desc, %struct.nand_manufacturer_desc* %59, i32 0, i32 2, !dbg !3075
  %60 = load %struct.nand_manufacturer_ops*, %struct.nand_manufacturer_ops** %ops82, align 8, !dbg !3075
  %fixup_onfi_param_page = getelementptr inbounds %struct.nand_manufacturer_ops, %struct.nand_manufacturer_ops* %60, i32 0, i32 3, !dbg !3076
  %61 = load void (%struct.nand_chip*, %struct.nand_onfi_params*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)** %fixup_onfi_param_page, align 8, !dbg !3076
  %tobool83 = icmp ne void (%struct.nand_chip*, %struct.nand_onfi_params*)* %61, null, !dbg !3072
  br i1 %tobool83, label %if.then84, label %if.end89, !dbg !3077

if.then84:                                        ; preds = %land.lhs.true79
  %62 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3078
  %manufacturer85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 3, !dbg !3079
  %desc86 = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer85, i32 0, i32 0, !dbg !3080
  %63 = load %struct.nand_manufacturer_desc*, %struct.nand_manufacturer_desc** %desc86, align 8, !dbg !3080
  %ops87 = getelementptr inbounds %struct.nand_manufacturer_desc, %struct.nand_manufacturer_desc* %63, i32 0, i32 2, !dbg !3081
  %64 = load %struct.nand_manufacturer_ops*, %struct.nand_manufacturer_ops** %ops87, align 8, !dbg !3081
  %fixup_onfi_param_page88 = getelementptr inbounds %struct.nand_manufacturer_ops, %struct.nand_manufacturer_ops* %64, i32 0, i32 3, !dbg !3082
  %65 = load void (%struct.nand_chip*, %struct.nand_onfi_params*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)** %fixup_onfi_param_page88, align 8, !dbg !3082
  %66 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3083
  %67 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3084
  call void %65(%struct.nand_chip* %66, %struct.nand_onfi_params* %67) #8, !dbg !3078
  br label %if.end89, !dbg !3078

if.end89:                                         ; preds = %if.then84, %land.lhs.true79, %land.lhs.true, %if.end74
  %68 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3085
  %revision = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %68, i32 0, i32 1, !dbg !3085
  %69 = load i16, i16* %revision, align 1, !dbg !3085
  %conv90 = zext i16 %69 to i32, !dbg !3085
  store i32 %conv90, i32* %val, align 4, !dbg !3086
  %70 = load i32, i32* %val, align 4, !dbg !3087
  %conv91 = sext i32 %70 to i64, !dbg !3087
  %and = and i64 %conv91, 32, !dbg !3089
  %tobool92 = icmp ne i64 %and, 0, !dbg !3089
  br i1 %tobool92, label %if.then93, label %if.else94, !dbg !3090

if.then93:                                        ; preds = %if.end89
  store i32 23, i32* %onfi_version, align 4, !dbg !3091
  br label %if.end118, !dbg !3092

if.else94:                                        ; preds = %if.end89
  %71 = load i32, i32* %val, align 4, !dbg !3093
  %conv95 = sext i32 %71 to i64, !dbg !3093
  %and96 = and i64 %conv95, 16, !dbg !3095
  %tobool97 = icmp ne i64 %and96, 0, !dbg !3095
  br i1 %tobool97, label %if.then98, label %if.else99, !dbg !3096

if.then98:                                        ; preds = %if.else94
  store i32 22, i32* %onfi_version, align 4, !dbg !3097
  br label %if.end117, !dbg !3098

if.else99:                                        ; preds = %if.else94
  %72 = load i32, i32* %val, align 4, !dbg !3099
  %conv100 = sext i32 %72 to i64, !dbg !3099
  %and101 = and i64 %conv100, 8, !dbg !3101
  %tobool102 = icmp ne i64 %and101, 0, !dbg !3101
  br i1 %tobool102, label %if.then103, label %if.else104, !dbg !3102

if.then103:                                       ; preds = %if.else99
  store i32 21, i32* %onfi_version, align 4, !dbg !3103
  br label %if.end116, !dbg !3104

if.else104:                                       ; preds = %if.else99
  %73 = load i32, i32* %val, align 4, !dbg !3105
  %conv105 = sext i32 %73 to i64, !dbg !3105
  %and106 = and i64 %conv105, 4, !dbg !3107
  %tobool107 = icmp ne i64 %and106, 0, !dbg !3107
  br i1 %tobool107, label %if.then108, label %if.else109, !dbg !3108

if.then108:                                       ; preds = %if.else104
  store i32 20, i32* %onfi_version, align 4, !dbg !3109
  br label %if.end115, !dbg !3110

if.else109:                                       ; preds = %if.else104
  %74 = load i32, i32* %val, align 4, !dbg !3111
  %conv110 = sext i32 %74 to i64, !dbg !3111
  %and111 = and i64 %conv110, 2, !dbg !3113
  %tobool112 = icmp ne i64 %and111, 0, !dbg !3113
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !3114

if.then113:                                       ; preds = %if.else109
  store i32 10, i32* %onfi_version, align 4, !dbg !3115
  br label %if.end114, !dbg !3116

if.end114:                                        ; preds = %if.then113, %if.else109
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then108
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then103
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then98
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then93
  %75 = load i32, i32* %onfi_version, align 4, !dbg !3117
  %tobool119 = icmp ne i32 %75, 0, !dbg !3117
  br i1 %tobool119, label %if.end122, label %if.then120, !dbg !3119

if.then120:                                       ; preds = %if.end118
  %76 = load i32, i32* %val, align 4, !dbg !3120
  %call121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %76) #9, !dbg !3120
  br label %free_onfi_param_page, !dbg !3122

if.end122:                                        ; preds = %if.end118
  %77 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3123
  %manufacturer123 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %77, i32 0, i32 8, !dbg !3124
  %arraydecay124 = getelementptr inbounds [12 x i8], [12 x i8]* %manufacturer123, i64 0, i64 0, !dbg !3123
  call void @sanitize_string(i8* %arraydecay124, i64 12) #8, !dbg !3125
  %78 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3126
  %model = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %78, i32 0, i32 9, !dbg !3127
  %arraydecay125 = getelementptr inbounds [20 x i8], [20 x i8]* %model, i64 0, i64 0, !dbg !3126
  call void @sanitize_string(i8* %arraydecay125, i64 20) #8, !dbg !3128
  %79 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3129
  %model126 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %79, i32 0, i32 9, !dbg !3130
  %arraydecay127 = getelementptr inbounds [20 x i8], [20 x i8]* %model126, i64 0, i64 0, !dbg !3129
  %call128 = call noalias i8* @kstrdup(i8* %arraydecay127, i32 3264) #8, !dbg !3131
  %80 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3132
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 2, !dbg !3133
  %model129 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 0, !dbg !3134
  store i8* %call128, i8** %model129, align 8, !dbg !3135
  %81 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3136
  %parameters130 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 2, !dbg !3138
  %model131 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters130, i32 0, i32 0, !dbg !3139
  %82 = load i8*, i8** %model131, align 8, !dbg !3139
  %tobool132 = icmp ne i8* %82, null, !dbg !3136
  br i1 %tobool132, label %if.end134, label %if.then133, !dbg !3140

if.then133:                                       ; preds = %if.end122
  store i32 -12, i32* %ret, align 4, !dbg !3141
  br label %free_onfi_param_page, !dbg !3143

if.end134:                                        ; preds = %if.end122
  %83 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3144
  %byte_per_page = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %83, i32 0, i32 13, !dbg !3144
  %84 = load i32, i32* %byte_per_page, align 1, !dbg !3144
  %85 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3145
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %85, i32 0, i32 1, !dbg !3146
  store i32 %84, i32* %pagesize, align 4, !dbg !3147
  %86 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3148
  %pagesize135 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %86, i32 0, i32 1, !dbg !3149
  %87 = load i32, i32* %pagesize135, align 4, !dbg !3149
  %88 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3150
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 4, !dbg !3151
  store i32 %87, i32* %writesize, align 4, !dbg !3152
  %89 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3153
  %pages_per_block = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %89, i32 0, i32 17, !dbg !3153
  %90 = load i32, i32* %pages_per_block, align 1, !dbg !3153
  store i32 %90, i32* %x.addr.i, align 4
  %91 = load i32, i32* %x.addr.i, align 4, !dbg !3154
  %92 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %91, i32 -1) #10, !dbg !3155, !srcloc !3156
  store i32 %92, i32* %r.i, align 4, !dbg !3155
  %93 = load i32, i32* %r.i, align 4, !dbg !3157
  %add.i = add i32 %93, 1, !dbg !3158
  %sub = sub i32 %add.i, 1, !dbg !3159
  %shl = shl i32 1, %sub, !dbg !3160
  %94 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3161
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %94, i32 0, i32 3, !dbg !3162
  store i32 %shl, i32* %pages_per_eraseblock, align 4, !dbg !3163
  %95 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3164
  %pages_per_eraseblock137 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %95, i32 0, i32 3, !dbg !3165
  %96 = load i32, i32* %pages_per_eraseblock137, align 4, !dbg !3165
  %97 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3166
  %pagesize138 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %97, i32 0, i32 1, !dbg !3167
  %98 = load i32, i32* %pagesize138, align 4, !dbg !3167
  %mul139 = mul i32 %96, %98, !dbg !3168
  %99 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3169
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %99, i32 0, i32 3, !dbg !3170
  store i32 %mul139, i32* %erasesize, align 8, !dbg !3171
  %100 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3172
  %spare_bytes_per_page = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %100, i32 0, i32 14, !dbg !3172
  %101 = load i16, i16* %spare_bytes_per_page, align 1, !dbg !3172
  %conv140 = zext i16 %101 to i32, !dbg !3172
  %102 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3173
  %oobsize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %102, i32 0, i32 2, !dbg !3174
  store i32 %conv140, i32* %oobsize, align 4, !dbg !3175
  %103 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3176
  %oobsize141 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %103, i32 0, i32 2, !dbg !3177
  %104 = load i32, i32* %oobsize141, align 4, !dbg !3177
  %105 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3178
  %oobsize142 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %105, i32 0, i32 6, !dbg !3179
  store i32 %104, i32* %oobsize142, align 4, !dbg !3180
  %106 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3181
  %lun_count = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %106, i32 0, i32 19, !dbg !3182
  %107 = load i8, i8* %lun_count, align 1, !dbg !3182
  %conv143 = zext i8 %107 to i32, !dbg !3181
  %108 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3183
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %108, i32 0, i32 7, !dbg !3184
  store i32 %conv143, i32* %luns_per_target, align 4, !dbg !3185
  %109 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3186
  %interleaved_bits = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %109, i32 0, i32 29, !dbg !3187
  %110 = load i8, i8* %interleaved_bits, align 1, !dbg !3187
  %conv144 = zext i8 %110 to i32, !dbg !3186
  %shl145 = shl i32 1, %conv144, !dbg !3188
  %111 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3189
  %planes_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %111, i32 0, i32 6, !dbg !3190
  store i32 %shl145, i32* %planes_per_lun, align 4, !dbg !3191
  %112 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3192
  %blocks_per_lun = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %112, i32 0, i32 18, !dbg !3192
  %113 = load i32, i32* %blocks_per_lun, align 1, !dbg !3192
  store i32 %113, i32* %x.addr.i206, align 4
  %114 = load i32, i32* %x.addr.i206, align 4, !dbg !3193
  %115 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %114, i32 -1) #10, !dbg !3194, !srcloc !3156
  store i32 %115, i32* %r.i207, align 4, !dbg !3194
  %116 = load i32, i32* %r.i207, align 4, !dbg !3195
  %add.i208 = add i32 %116, 1, !dbg !3196
  %sub147 = sub i32 %add.i208, 1, !dbg !3197
  %shl148 = shl i32 1, %sub147, !dbg !3198
  %117 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3199
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %117, i32 0, i32 4, !dbg !3200
  store i32 %shl148, i32* %eraseblocks_per_lun, align 4, !dbg !3201
  %118 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3202
  %blocks_per_lun149 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %118, i32 0, i32 18, !dbg !3202
  %119 = load i32, i32* %blocks_per_lun149, align 1, !dbg !3202
  %120 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3203
  %max_bad_eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %120, i32 0, i32 5, !dbg !3204
  store i32 %119, i32* %max_bad_eraseblocks_per_lun, align 4, !dbg !3205
  %121 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3206
  %bits_per_cell = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %121, i32 0, i32 21, !dbg !3207
  %122 = load i8, i8* %bits_per_cell, align 1, !dbg !3207
  %conv150 = zext i8 %122 to i32, !dbg !3206
  %123 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3208
  %bits_per_cell151 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %123, i32 0, i32 0, !dbg !3209
  store i32 %conv150, i32* %bits_per_cell151, align 4, !dbg !3210
  %124 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3211
  %features = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %124, i32 0, i32 2, !dbg !3211
  %125 = load i16, i16* %features, align 1, !dbg !3211
  %conv152 = zext i16 %125 to i32, !dbg !3211
  %and153 = and i32 %conv152, 1, !dbg !3213
  %tobool154 = icmp ne i32 %and153, 0, !dbg !3213
  br i1 %tobool154, label %if.then155, label %if.end158, !dbg !3214

if.then155:                                       ; preds = %if.end134
  %126 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3215
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 6, !dbg !3216
  %127 = load i32, i32* %options, align 8, !dbg !3217
  %conv156 = zext i32 %127 to i64, !dbg !3217
  %or = or i64 %conv156, 2, !dbg !3217
  %conv157 = trunc i64 %or to i32, !dbg !3217
  store i32 %conv157, i32* %options, align 8, !dbg !3217
  br label %if.end158, !dbg !3215

if.end158:                                        ; preds = %if.then155, %if.end134
  %128 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3218
  %ecc_bits = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %128, i32 0, i32 28, !dbg !3220
  %129 = load i8, i8* %ecc_bits, align 1, !dbg !3220
  %conv159 = zext i8 %129 to i32, !dbg !3218
  %cmp160 = icmp ne i32 %conv159, 255, !dbg !3221
  br i1 %cmp160, label %if.then162, label %if.else165, !dbg !3222

if.then162:                                       ; preds = %if.end158
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props* %requirements, metadata !3223, metadata !DIExpression()), !dbg !3225
  %engine_type = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 0, !dbg !3226
  store i32 0, i32* %engine_type, align 4, !dbg !3226
  %placement = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 1, !dbg !3226
  store i32 0, i32* %placement, align 4, !dbg !3226
  %algo = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 2, !dbg !3226
  store i32 0, i32* %algo, align 4, !dbg !3226
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3226
  %130 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3227
  %ecc_bits163 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %130, i32 0, i32 28, !dbg !3228
  %131 = load i8, i8* %ecc_bits163, align 1, !dbg !3228
  %conv164 = zext i8 %131 to i32, !dbg !3227
  store i32 %conv164, i32* %strength, align 4, !dbg !3226
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3226
  store i32 512, i32* %step_size, align 4, !dbg !3226
  %flags = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 5, !dbg !3226
  store i32 0, i32* %flags, align 4, !dbg !3226
  %132 = load %struct.nand_device*, %struct.nand_device** %base, align 8, !dbg !3229
  call void @nanddev_set_ecc_requirements(%struct.nand_device* %132, %struct.nand_ecc_props* %requirements) #8, !dbg !3230
  br label %if.end182, !dbg !3231

if.else165:                                       ; preds = %if.end158
  %133 = load i32, i32* %onfi_version, align 4, !dbg !3232
  %cmp166 = icmp sge i32 %133, 21, !dbg !3234
  br i1 %cmp166, label %land.lhs.true168, label %if.else179, !dbg !3235

land.lhs.true168:                                 ; preds = %if.else165
  %134 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3236
  %features169 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %134, i32 0, i32 2, !dbg !3236
  %135 = load i16, i16* %features169, align 1, !dbg !3236
  %conv170 = zext i16 %135 to i32, !dbg !3236
  %and171 = and i32 %conv170, 128, !dbg !3237
  %tobool172 = icmp ne i32 %and171, 0, !dbg !3237
  br i1 %tobool172, label %if.then173, label %if.else179, !dbg !3238

if.then173:                                       ; preds = %land.lhs.true168
  %136 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3239
  call void @nand_legacy_adjust_cmdfunc(%struct.nand_chip* %136) #8, !dbg !3241
  %137 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3242
  %138 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3244
  %call174 = call i32 @nand_flash_detect_ext_param_page(%struct.nand_chip* %137, %struct.nand_onfi_params* %138) #8, !dbg !3245
  %tobool175 = icmp ne i32 %call174, 0, !dbg !3245
  br i1 %tobool175, label %if.then176, label %if.end178, !dbg !3246

if.then176:                                       ; preds = %if.then173
  %call177 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !3247
  br label %if.end178, !dbg !3247

if.end178:                                        ; preds = %if.then176, %if.then173
  br label %if.end181, !dbg !3248

if.else179:                                       ; preds = %land.lhs.true168, %if.else165
  %call180 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !3249
  br label %if.end181

if.end181:                                        ; preds = %if.else179, %if.end178
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.then162
  %139 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3251
  %opt_cmd = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %139, i32 0, i32 3, !dbg !3251
  %140 = load i16, i16* %opt_cmd, align 1, !dbg !3251
  %conv183 = zext i16 %140 to i32, !dbg !3251
  %and184 = and i32 %conv183, 4, !dbg !3252
  %tobool185 = icmp ne i32 %and184, 0, !dbg !3252
  br i1 %tobool185, label %if.then186, label %if.end192, !dbg !3253

if.then186:                                       ; preds = %if.end182
  %141 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3254
  %parameters187 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %141, i32 0, i32 2, !dbg !3255
  %supports_set_get_features = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters187, i32 0, i32 1, !dbg !3256
  store i8 1, i8* %supports_set_get_features, align 8, !dbg !3257
  %142 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3258
  %parameters188 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %142, i32 0, i32 2, !dbg !3259
  %get_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters188, i32 0, i32 3, !dbg !3260
  %arraydecay189 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list, i64 0, i64 0, !dbg !3258
  store i64* %arraydecay189, i64** %map.addr.i, align 8
  store i32 1, i32* %start.addr.i, align 4
  store i32 1, i32* %nbits.addr.i, align 4
  %143 = load i32, i32* %nbits.addr.i, align 4, !dbg !3261
  %144 = call i1 @llvm.is.constant.i32(i32 %143) #11, !dbg !3263
  br i1 %144, label %land.lhs.true.i, label %if.else.i, !dbg !3264

land.lhs.true.i:                                  ; preds = %if.then186
  %145 = load i32, i32* %nbits.addr.i, align 4, !dbg !3265
  %cmp.i = icmp eq i32 %145, 1, !dbg !3266
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !3267

if.then.i:                                        ; preds = %land.lhs.true.i
  %146 = load i32, i32* %start.addr.i, align 4, !dbg !3268
  %conv.i = zext i32 %146 to i64, !dbg !3268
  %147 = load i64*, i64** %map.addr.i, align 8, !dbg !3269
  call void @__set_bit(i64 %conv.i, i64* %147) #12, !dbg !3270
  br label %bitmap_set.exit, !dbg !3270

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then186
  %148 = load i32, i32* %start.addr.i, align 4, !dbg !3271
  %and.i = and i32 %148, 7, !dbg !3273
  %149 = call i1 @llvm.is.constant.i32(i32 %and.i) #11, !dbg !3274
  br i1 %149, label %land.lhs.true1.i, label %if.else14.i, !dbg !3275

land.lhs.true1.i:                                 ; preds = %if.else.i
  %150 = load i32, i32* %start.addr.i, align 4, !dbg !3276
  %and2.i = and i32 %150, 7, !dbg !3276
  %cmp3.i = icmp eq i32 %and2.i, 0, !dbg !3276
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.else14.i, !dbg !3277

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %151 = load i32, i32* %nbits.addr.i, align 4, !dbg !3278
  %and6.i = and i32 %151, 7, !dbg !3279
  %152 = call i1 @llvm.is.constant.i32(i32 %and6.i) #11, !dbg !3280
  br i1 %152, label %land.lhs.true7.i, label %if.else14.i, !dbg !3281

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %153 = load i32, i32* %nbits.addr.i, align 4, !dbg !3282
  %and8.i = and i32 %153, 7, !dbg !3282
  %cmp9.i = icmp eq i32 %and8.i, 0, !dbg !3282
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i, !dbg !3283

if.then11.i:                                      ; preds = %land.lhs.true7.i
  %154 = load i64*, i64** %map.addr.i, align 8, !dbg !3284
  %155 = bitcast i64* %154 to i8*, !dbg !3285
  %156 = load i32, i32* %start.addr.i, align 4, !dbg !3286
  %div.i = udiv i32 %156, 8, !dbg !3287
  %idx.ext.i = zext i32 %div.i to i64, !dbg !3288
  %add.ptr.i = getelementptr i8, i8* %155, i64 %idx.ext.i, !dbg !3288
  %157 = load i32, i32* %nbits.addr.i, align 4, !dbg !3289
  %div12.i = udiv i32 %157, 8, !dbg !3290
  %conv13.i = zext i32 %div12.i to i64, !dbg !3289
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i, i8 -1, i64 %conv13.i, i1 false) #11, !dbg !3291
  br label %if.end.i, !dbg !3291

if.else14.i:                                      ; preds = %land.lhs.true7.i, %land.lhs.true5.i, %land.lhs.true1.i, %if.else.i
  %158 = load i64*, i64** %map.addr.i, align 8, !dbg !3292
  %159 = load i32, i32* %start.addr.i, align 4, !dbg !3293
  %160 = load i32, i32* %nbits.addr.i, align 4, !dbg !3294
  call void @__bitmap_set(i64* %158, i32 %159, i32 %160) #12, !dbg !3295
  br label %if.end.i

if.end.i:                                         ; preds = %if.else14.i, %if.then11.i
  br label %bitmap_set.exit

bitmap_set.exit:                                  ; preds = %if.then.i, %if.end.i
  %161 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3296
  %parameters190 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %161, i32 0, i32 2, !dbg !3297
  %set_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters190, i32 0, i32 2, !dbg !3298
  %arraydecay191 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list, i64 0, i64 0, !dbg !3296
  store i64* %arraydecay191, i64** %map.addr.i209, align 8
  store i32 1, i32* %start.addr.i210, align 4
  store i32 1, i32* %nbits.addr.i211, align 4
  %162 = load i32, i32* %nbits.addr.i211, align 4, !dbg !3299
  %163 = call i1 @llvm.is.constant.i32(i32 %162) #11, !dbg !3300
  br i1 %163, label %land.lhs.true.i213, label %if.else.i217, !dbg !3301

land.lhs.true.i213:                               ; preds = %bitmap_set.exit
  %164 = load i32, i32* %nbits.addr.i211, align 4, !dbg !3302
  %cmp.i212 = icmp eq i32 %164, 1, !dbg !3303
  br i1 %cmp.i212, label %if.then.i215, label %if.else.i217, !dbg !3304

if.then.i215:                                     ; preds = %land.lhs.true.i213
  %165 = load i32, i32* %start.addr.i210, align 4, !dbg !3305
  %conv.i214 = zext i32 %165 to i64, !dbg !3305
  %166 = load i64*, i64** %map.addr.i209, align 8, !dbg !3306
  call void @__set_bit(i64 %conv.i214, i64* %166) #12, !dbg !3307
  br label %bitmap_set.exit234, !dbg !3307

if.else.i217:                                     ; preds = %land.lhs.true.i213, %bitmap_set.exit
  %167 = load i32, i32* %start.addr.i210, align 4, !dbg !3308
  %and.i216 = and i32 %167, 7, !dbg !3309
  %168 = call i1 @llvm.is.constant.i32(i32 %and.i216) #11, !dbg !3310
  br i1 %168, label %land.lhs.true1.i220, label %if.else14.i232, !dbg !3311

land.lhs.true1.i220:                              ; preds = %if.else.i217
  %169 = load i32, i32* %start.addr.i210, align 4, !dbg !3312
  %and2.i218 = and i32 %169, 7, !dbg !3312
  %cmp3.i219 = icmp eq i32 %and2.i218, 0, !dbg !3312
  br i1 %cmp3.i219, label %land.lhs.true5.i222, label %if.else14.i232, !dbg !3313

land.lhs.true5.i222:                              ; preds = %land.lhs.true1.i220
  %170 = load i32, i32* %nbits.addr.i211, align 4, !dbg !3314
  %and6.i221 = and i32 %170, 7, !dbg !3315
  %171 = call i1 @llvm.is.constant.i32(i32 %and6.i221) #11, !dbg !3316
  br i1 %171, label %land.lhs.true7.i225, label %if.else14.i232, !dbg !3317

land.lhs.true7.i225:                              ; preds = %land.lhs.true5.i222
  %172 = load i32, i32* %nbits.addr.i211, align 4, !dbg !3318
  %and8.i223 = and i32 %172, 7, !dbg !3318
  %cmp9.i224 = icmp eq i32 %and8.i223, 0, !dbg !3318
  br i1 %cmp9.i224, label %if.then11.i231, label %if.else14.i232, !dbg !3319

if.then11.i231:                                   ; preds = %land.lhs.true7.i225
  %173 = load i64*, i64** %map.addr.i209, align 8, !dbg !3320
  %174 = bitcast i64* %173 to i8*, !dbg !3321
  %175 = load i32, i32* %start.addr.i210, align 4, !dbg !3322
  %div.i226 = udiv i32 %175, 8, !dbg !3323
  %idx.ext.i227 = zext i32 %div.i226 to i64, !dbg !3324
  %add.ptr.i228 = getelementptr i8, i8* %174, i64 %idx.ext.i227, !dbg !3324
  %176 = load i32, i32* %nbits.addr.i211, align 4, !dbg !3325
  %div12.i229 = udiv i32 %176, 8, !dbg !3326
  %conv13.i230 = zext i32 %div12.i229 to i64, !dbg !3325
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i228, i8 -1, i64 %conv13.i230, i1 false) #11, !dbg !3327
  br label %if.end.i233, !dbg !3327

if.else14.i232:                                   ; preds = %land.lhs.true7.i225, %land.lhs.true5.i222, %land.lhs.true1.i220, %if.else.i217
  %177 = load i64*, i64** %map.addr.i209, align 8, !dbg !3328
  %178 = load i32, i32* %start.addr.i210, align 4, !dbg !3329
  %179 = load i32, i32* %nbits.addr.i211, align 4, !dbg !3330
  call void @__bitmap_set(i64* %177, i32 %178, i32 %179) #12, !dbg !3331
  br label %if.end.i233

if.end.i233:                                      ; preds = %if.else14.i232, %if.then11.i231
  br label %bitmap_set.exit234

bitmap_set.exit234:                               ; preds = %if.then.i215, %if.end.i233
  br label %if.end192, !dbg !3332

if.end192:                                        ; preds = %bitmap_set.exit234, %if.end182
  %call193 = call i8* @kzalloc(i64 104, i32 3264) #8, !dbg !3333
  %180 = bitcast i8* %call193 to %struct.onfi_params*, !dbg !3333
  store %struct.onfi_params* %180, %struct.onfi_params** %onfi, align 8, !dbg !3334
  %181 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3335
  %tobool194 = icmp ne %struct.onfi_params* %181, null, !dbg !3335
  br i1 %tobool194, label %if.end196, label %if.then195, !dbg !3337

if.then195:                                       ; preds = %if.end192
  store i32 -12, i32* %ret, align 4, !dbg !3338
  br label %free_model, !dbg !3340

if.end196:                                        ; preds = %if.end192
  %182 = load i32, i32* %onfi_version, align 4, !dbg !3341
  %183 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3342
  %version = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %183, i32 0, i32 0, !dbg !3343
  store i32 %182, i32* %version, align 4, !dbg !3344
  %184 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3345
  %t_prog = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %184, i32 0, i32 35, !dbg !3345
  %185 = load i16, i16* %t_prog, align 1, !dbg !3345
  %186 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3346
  %tPROG = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %186, i32 0, i32 1, !dbg !3347
  store i16 %185, i16* %tPROG, align 4, !dbg !3348
  %187 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3349
  %t_bers = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %187, i32 0, i32 36, !dbg !3349
  %188 = load i16, i16* %t_bers, align 1, !dbg !3349
  %189 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3350
  %tBERS = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %189, i32 0, i32 2, !dbg !3351
  store i16 %188, i16* %tBERS, align 2, !dbg !3352
  %190 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3353
  %t_r = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %190, i32 0, i32 37, !dbg !3353
  %191 = load i16, i16* %t_r, align 1, !dbg !3353
  %192 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3354
  %tR = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %192, i32 0, i32 3, !dbg !3355
  store i16 %191, i16* %tR, align 4, !dbg !3356
  %193 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3357
  %t_ccs = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %193, i32 0, i32 38, !dbg !3357
  %194 = load i16, i16* %t_ccs, align 1, !dbg !3357
  %195 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3358
  %tCCS = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %195, i32 0, i32 4, !dbg !3359
  store i16 %194, i16* %tCCS, align 2, !dbg !3360
  %196 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3361
  %async_timing_mode = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %196, i32 0, i32 33, !dbg !3361
  %197 = load i16, i16* %async_timing_mode, align 1, !dbg !3361
  %198 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3362
  %async_timing_mode197 = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %198, i32 0, i32 5, !dbg !3363
  store i16 %197, i16* %async_timing_mode197, align 4, !dbg !3364
  %199 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3365
  %vendor_revision = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %199, i32 0, i32 49, !dbg !3365
  %200 = load i16, i16* %vendor_revision, align 1, !dbg !3365
  %201 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3366
  %vendor_revision198 = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %201, i32 0, i32 6, !dbg !3367
  store i16 %200, i16* %vendor_revision198, align 2, !dbg !3368
  %202 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3369
  %vendor = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %202, i32 0, i32 7, !dbg !3370
  %arraydecay199 = getelementptr inbounds [88 x i8], [88 x i8]* %vendor, i64 0, i64 0, !dbg !3371
  %203 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p, align 8, !dbg !3372
  %vendor200 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %203, i32 0, i32 50, !dbg !3373
  %arraydecay201 = getelementptr inbounds [88 x i8], [88 x i8]* %vendor200, i64 0, i64 0, !dbg !3371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay199, i8* align 1 %arraydecay201, i64 88, i1 false), !dbg !3371
  %204 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3374
  %205 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3375
  %parameters202 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %205, i32 0, i32 2, !dbg !3376
  %onfi203 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters202, i32 0, i32 4, !dbg !3377
  store %struct.onfi_params* %204, %struct.onfi_params** %onfi203, align 8, !dbg !3378
  %206 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3379
  %207 = bitcast %struct.nand_onfi_params* %206 to i8*, !dbg !3379
  call void @kfree(i8* %207) #8, !dbg !3380
  store i32 1, i32* %retval, align 4, !dbg !3381
  br label %return, !dbg !3381

free_model:                                       ; preds = %if.then195
  call void @llvm.dbg.label(metadata !3382), !dbg !3383
  %208 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3384
  %parameters204 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %208, i32 0, i32 2, !dbg !3385
  %model205 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters204, i32 0, i32 0, !dbg !3386
  %209 = load i8*, i8** %model205, align 8, !dbg !3386
  call void @kfree(i8* %209) #8, !dbg !3387
  br label %free_onfi_param_page, !dbg !3387

free_onfi_param_page:                             ; preds = %free_model, %if.then133, %if.then120, %if.then71, %if.then35
  call void @llvm.dbg.label(metadata !3388), !dbg !3389
  %210 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %pbuf, align 8, !dbg !3390
  %211 = bitcast %struct.nand_onfi_params* %210 to i8*, !dbg !3390
  call void @kfree(i8* %211) #8, !dbg !3391
  %212 = load i32, i32* %ret, align 4, !dbg !3392
  store i32 %212, i32* %retval, align 4, !dbg !3393
  br label %return, !dbg !3393

return:                                           ; preds = %free_onfi_param_page, %if.end196, %if.then10, %if.then
  %213 = load i32, i32* %retval, align 4, !dbg !3394
  ret i32 %213, !dbg !3394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3395 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3398, metadata !DIExpression()), !dbg !3399
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3400
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3401
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3402
  ret %struct.mtd_info* %mtd, !dbg !3403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %nand) #0 !dbg !3404 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3407, metadata !DIExpression()), !dbg !3408
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3409
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3410
  ret %struct.nand_memory_organization* %memorg, !dbg !3411
}

; Function Attrs: noredzone
declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i8 zeroext, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3412 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3415, metadata !DIExpression()), !dbg !3419
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3425, metadata !DIExpression()), !dbg !3426
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3427, metadata !DIExpression()), !dbg !3428
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3429, metadata !DIExpression()), !dbg !3430
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3431, metadata !DIExpression()), !dbg !3435
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3437, metadata !DIExpression()), !dbg !3441
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3443, metadata !DIExpression()), !dbg !3447
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3452, metadata !DIExpression()), !dbg !3453
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3454, metadata !DIExpression()), !dbg !3455
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3456, metadata !DIExpression()), !dbg !3457
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3458, metadata !DIExpression()), !dbg !3459
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3460, metadata !DIExpression()), !dbg !3461
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3462, metadata !DIExpression()), !dbg !3463
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3464, metadata !DIExpression()), !dbg !3465
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3466, metadata !DIExpression()), !dbg !3467
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  %0 = load i64, i64* %size.addr, align 8, !dbg !3472
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3473
  %or = or i32 %1, 256, !dbg !3474
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3475
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !3476
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3477

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3478
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3479
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3480

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3481
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3482
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3483
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !3484
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3461
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3485
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3486
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3487
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3488
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3489
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3490
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3491
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3491
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3491
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3491
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3491
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3492
  br label %kmalloc.exit, !dbg !3492

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3493
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3494
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3494
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3496

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3497
  br label %kmalloc_index.exit.i, !dbg !3497

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3498
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3500
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3501

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3502
  br label %kmalloc_index.exit.i, !dbg !3502

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3503
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3505
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3506

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3507
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3508
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3509

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3510
  br label %kmalloc_index.exit.i, !dbg !3510

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3511
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3513
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3514

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3515
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3516
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3517

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3518
  br label %kmalloc_index.exit.i, !dbg !3518

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3519
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3521
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3522

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3523
  br label %kmalloc_index.exit.i, !dbg !3523

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3524
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3526
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3527

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3528
  br label %kmalloc_index.exit.i, !dbg !3528

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3529
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3531
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3532

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3533
  br label %kmalloc_index.exit.i, !dbg !3533

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3534
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3536
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3537

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3538
  br label %kmalloc_index.exit.i, !dbg !3538

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3539
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3541
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3542

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3543
  br label %kmalloc_index.exit.i, !dbg !3543

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3544
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3546
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3547

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3548
  br label %kmalloc_index.exit.i, !dbg !3548

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3549
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3551
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3552

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3553
  br label %kmalloc_index.exit.i, !dbg !3553

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3554
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3556
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3557

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3558
  br label %kmalloc_index.exit.i, !dbg !3558

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3559
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3561
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3562

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3563
  br label %kmalloc_index.exit.i, !dbg !3563

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3564
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3566
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3567

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3568
  br label %kmalloc_index.exit.i, !dbg !3568

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3569
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3571
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3572

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3573
  br label %kmalloc_index.exit.i, !dbg !3573

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3574
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3576
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3577

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3578
  br label %kmalloc_index.exit.i, !dbg !3578

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3579
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3581
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3582

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3583
  br label %kmalloc_index.exit.i, !dbg !3583

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3584
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3586
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3587

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3588
  br label %kmalloc_index.exit.i, !dbg !3588

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3589
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3591
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3592

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3593
  br label %kmalloc_index.exit.i, !dbg !3593

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3594
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3596
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3597

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3598
  br label %kmalloc_index.exit.i, !dbg !3598

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3599
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3601
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3602

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3603
  br label %kmalloc_index.exit.i, !dbg !3603

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3604
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3606
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3607

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3608
  br label %kmalloc_index.exit.i, !dbg !3608

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3609
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3611
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3612

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3613
  br label %kmalloc_index.exit.i, !dbg !3613

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3614
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3616
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3617

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3618
  br label %kmalloc_index.exit.i, !dbg !3618

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3619
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3621
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3622

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3623
  br label %kmalloc_index.exit.i, !dbg !3623

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3624
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3626
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3627

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3628
  br label %kmalloc_index.exit.i, !dbg !3628

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3629
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3631
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3632

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3633
  br label %kmalloc_index.exit.i, !dbg !3633

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3634
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3636
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3637

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3638
  br label %kmalloc_index.exit.i, !dbg !3638

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3639, !srcloc !3642
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #11, !dbg !3643, !srcloc !3646
  unreachable, !dbg !3647

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3648
  store i32 %45, i32* %index.i, align 4, !dbg !3649
  %46 = load i32, i32* %index.i, align 4, !dbg !3650
  %tobool.i = icmp ne i32 %46, 0, !dbg !3650
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3652

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3653
  br label %kmalloc.exit, !dbg !3653

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3654
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3655
  %and.i.i = and i32 %48, 17, !dbg !3655
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3655
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3655
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3655
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3655
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3657

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3658
  br label %kmalloc_type.exit.i, !dbg !3658

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3659
  %and2.i.i = and i32 %49, 1, !dbg !3660
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3659
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3659
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3659
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3661
  br label %kmalloc_type.exit.i, !dbg !3661

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3662
  %idxprom.i = zext i32 %51 to i64, !dbg !3663
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3663
  %52 = load i32, i32* %index.i, align 4, !dbg !3664
  %idxprom6.i = zext i32 %52 to i64, !dbg !3663
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3663
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3663
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3665
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3666
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3667
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3668
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3669
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3669
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3669
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3669
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3669
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3430
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3670
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3671
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3672
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3673
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3674
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3675
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3676
  store i8* %62, i8** %retval.i, align 8, !dbg !3677
  br label %kmalloc.exit, !dbg !3677

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3678
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3679
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3680
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3680
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3680
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3680
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3680
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3681
  br label %kmalloc.exit, !dbg !3681

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3682
  ret i8* %65, !dbg !3683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !3684 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3687, metadata !DIExpression()), !dbg !3688
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3689
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !3691
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3691
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !3689
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3692

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3693
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !3694
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !3694
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !3695
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3695
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !3693
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3696

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3697
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !3698
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !3698
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !3699
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !3699
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !3700
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3700
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !3697
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3701

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !3702
  br label %return, !dbg !3702

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !3703
  br label %return, !dbg !3703

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3704
  ret i1 %9, !dbg !3704
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i8*, i32, i1 zeroext, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_read_param_page_op(%struct.nand_chip*, i8 zeroext, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i8*, i32, i1 zeroext) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_bit_wise_majority(i8** %srcbufs, i32 %nsrcbufs, i8* %dstbuf, i32 %bufsize) #0 !dbg !3705 {
entry:
  %srcbufs.addr = alloca i8**, align 8
  %nsrcbufs.addr = alloca i32, align 4
  %dstbuf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %val = alloca i8, align 1
  %cnt = alloca i32, align 4
  %srcbuf = alloca i8*, align 8
  store i8** %srcbufs, i8*** %srcbufs.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %srcbufs.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  store i32 %nsrcbufs, i32* %nsrcbufs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsrcbufs.addr, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i8* %dstbuf, i8** %dstbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dstbuf.addr, metadata !3713, metadata !DIExpression()), !dbg !3714
  store i32 %bufsize, i32* %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bufsize.addr, metadata !3715, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata i32* %k, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i32 0, i32* %i, align 4, !dbg !3723
  br label %for.cond, !dbg !3725

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3726
  %1 = load i32, i32* %bufsize.addr, align 4, !dbg !3728
  %cmp = icmp ult i32 %0, %1, !dbg !3729
  br i1 %cmp, label %for.body, label %for.end25, !dbg !3730

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %val, metadata !3731, metadata !DIExpression()), !dbg !3733
  store i8 0, i8* %val, align 1, !dbg !3733
  store i32 0, i32* %j, align 4, !dbg !3734
  br label %for.cond1, !dbg !3736

for.cond1:                                        ; preds = %for.inc18, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !3737
  %cmp2 = icmp slt i32 %2, 8, !dbg !3739
  br i1 %cmp2, label %for.body3, label %for.end20, !dbg !3740

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !3741, metadata !DIExpression()), !dbg !3743
  store i32 0, i32* %cnt, align 4, !dbg !3743
  store i32 0, i32* %k, align 4, !dbg !3744
  br label %for.cond4, !dbg !3746

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, i32* %k, align 4, !dbg !3747
  %4 = load i32, i32* %nsrcbufs.addr, align 4, !dbg !3749
  %cmp5 = icmp ult i32 %3, %4, !dbg !3750
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3751

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.declare(metadata i8** %srcbuf, metadata !3752, metadata !DIExpression()), !dbg !3754
  %5 = load i8**, i8*** %srcbufs.addr, align 8, !dbg !3755
  %6 = load i32, i32* %k, align 4, !dbg !3756
  %idxprom = sext i32 %6 to i64, !dbg !3755
  %arrayidx = getelementptr i8*, i8** %5, i64 %idxprom, !dbg !3755
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !3755
  store i8* %7, i8** %srcbuf, align 8, !dbg !3754
  %8 = load i8*, i8** %srcbuf, align 8, !dbg !3757
  %9 = load i32, i32* %i, align 4, !dbg !3759
  %idxprom7 = sext i32 %9 to i64, !dbg !3757
  %arrayidx8 = getelementptr i8, i8* %8, i64 %idxprom7, !dbg !3757
  %10 = load i8, i8* %arrayidx8, align 1, !dbg !3757
  %conv = zext i8 %10 to i64, !dbg !3757
  %11 = load i32, i32* %j, align 4, !dbg !3760
  %sh_prom = zext i32 %11 to i64, !dbg !3760
  %shl = shl i64 1, %sh_prom, !dbg !3760
  %and = and i64 %conv, %shl, !dbg !3761
  %tobool = icmp ne i64 %and, 0, !dbg !3761
  br i1 %tobool, label %if.then, label %if.end, !dbg !3762

if.then:                                          ; preds = %for.body6
  %12 = load i32, i32* %cnt, align 4, !dbg !3763
  %inc = add i32 %12, 1, !dbg !3763
  store i32 %inc, i32* %cnt, align 4, !dbg !3763
  br label %if.end, !dbg !3764

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc, !dbg !3765

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %k, align 4, !dbg !3766
  %inc9 = add i32 %13, 1, !dbg !3766
  store i32 %inc9, i32* %k, align 4, !dbg !3766
  br label %for.cond4, !dbg !3767, !llvm.loop !3768

for.end:                                          ; preds = %for.cond4
  %14 = load i32, i32* %cnt, align 4, !dbg !3770
  %15 = load i32, i32* %nsrcbufs.addr, align 4, !dbg !3772
  %div = udiv i32 %15, 2, !dbg !3773
  %cmp10 = icmp ugt i32 %14, %div, !dbg !3774
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !3775

if.then12:                                        ; preds = %for.end
  %16 = load i32, i32* %j, align 4, !dbg !3776
  %sh_prom13 = zext i32 %16 to i64, !dbg !3776
  %shl14 = shl i64 1, %sh_prom13, !dbg !3776
  %17 = load i8, i8* %val, align 1, !dbg !3777
  %conv15 = zext i8 %17 to i64, !dbg !3777
  %or = or i64 %conv15, %shl14, !dbg !3777
  %conv16 = trunc i64 %or to i8, !dbg !3777
  store i8 %conv16, i8* %val, align 1, !dbg !3777
  br label %if.end17, !dbg !3778

if.end17:                                         ; preds = %if.then12, %for.end
  br label %for.inc18, !dbg !3779

for.inc18:                                        ; preds = %if.end17
  %18 = load i32, i32* %j, align 4, !dbg !3780
  %inc19 = add i32 %18, 1, !dbg !3780
  store i32 %inc19, i32* %j, align 4, !dbg !3780
  br label %for.cond1, !dbg !3781, !llvm.loop !3782

for.end20:                                        ; preds = %for.cond1
  %19 = load i8, i8* %val, align 1, !dbg !3784
  %20 = load i8*, i8** %dstbuf.addr, align 8, !dbg !3785
  %21 = load i32, i32* %i, align 4, !dbg !3786
  %idxprom21 = sext i32 %21 to i64, !dbg !3787
  %arrayidx22 = getelementptr i8, i8* %20, i64 %idxprom21, !dbg !3787
  store i8 %19, i8* %arrayidx22, align 1, !dbg !3788
  br label %for.inc23, !dbg !3789

for.inc23:                                        ; preds = %for.end20
  %22 = load i32, i32* %i, align 4, !dbg !3790
  %inc24 = add i32 %22, 1, !dbg !3790
  store i32 %inc24, i32* %i, align 4, !dbg !3790
  br label %for.cond, !dbg !3791, !llvm.loop !3792

for.end25:                                        ; preds = %for.cond
  ret void, !dbg !3794
}

; Function Attrs: noredzone
declare dso_local void @sanitize_string(i8*, i64) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_set_ecc_requirements(%struct.nand_device* %nand, %struct.nand_ecc_props* %reqs) #0 !dbg !3795 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %reqs.addr = alloca %struct.nand_ecc_props*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3800, metadata !DIExpression()), !dbg !3801
  store %struct.nand_ecc_props* %reqs, %struct.nand_ecc_props** %reqs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %reqs.addr, metadata !3802, metadata !DIExpression()), !dbg !3803
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3804
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !3805
  %requirements = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 1, !dbg !3806
  %1 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs.addr, align 8, !dbg !3807
  %2 = bitcast %struct.nand_ecc_props* %requirements to i8*, !dbg !3808
  %3 = bitcast %struct.nand_ecc_props* %1 to i8*, !dbg !3808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 24, i1 false), !dbg !3808
  ret void, !dbg !3809
}

; Function Attrs: noredzone
declare dso_local void @nand_legacy_adjust_cmdfunc(%struct.nand_chip*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_flash_detect_ext_param_page(%struct.nand_chip* %chip, %struct.nand_onfi_params* %p) #0 !dbg !3810 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3415, metadata !DIExpression()), !dbg !3813
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3425, metadata !DIExpression()), !dbg !3816
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3427, metadata !DIExpression()), !dbg !3817
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3429, metadata !DIExpression()), !dbg !3818
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3431, metadata !DIExpression()), !dbg !3819
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3437, metadata !DIExpression()), !dbg !3821
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3443, metadata !DIExpression()), !dbg !3823
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3452, metadata !DIExpression()), !dbg !3826
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3454, metadata !DIExpression()), !dbg !3827
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3456, metadata !DIExpression()), !dbg !3828
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3458, metadata !DIExpression()), !dbg !3829
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3460, metadata !DIExpression()), !dbg !3830
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3462, metadata !DIExpression()), !dbg !3831
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3464, metadata !DIExpression()), !dbg !3832
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3466, metadata !DIExpression()), !dbg !3833
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %p.addr = alloca %struct.nand_onfi_params*, align 8
  %base = alloca %struct.nand_device*, align 8
  %requirements = alloca %struct.nand_ecc_props, align 4
  %ep = alloca %struct.onfi_ext_param_page*, align 8
  %s = alloca %struct.onfi_ext_section*, align 8
  %ecc = alloca %struct.onfi_ext_ecc_info*, align 8
  %cursor = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3834, metadata !DIExpression()), !dbg !3835
  store %struct.nand_onfi_params* %p, %struct.nand_onfi_params** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_onfi_params** %p.addr, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata %struct.nand_device** %base, metadata !3838, metadata !DIExpression()), !dbg !3839
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3840
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3841
  store %struct.nand_device* %base1, %struct.nand_device** %base, align 8, !dbg !3839
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props* %requirements, metadata !3842, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.declare(metadata %struct.onfi_ext_param_page** %ep, metadata !3844, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.declare(metadata %struct.onfi_ext_section** %s, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.declare(metadata %struct.onfi_ext_ecc_info** %ecc, metadata !3864, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.declare(metadata i8** %cursor, metadata !3866, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3868, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3870, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3872, metadata !DIExpression()), !dbg !3873
  %1 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p.addr, align 8, !dbg !3874
  %ext_param_page_length = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %1, i32 0, i32 5, !dbg !3874
  %2 = load i16, i16* %ext_param_page_length, align 1, !dbg !3874
  %conv = zext i16 %2 to i32, !dbg !3874
  %mul = mul i32 %conv, 16, !dbg !3875
  store i32 %mul, i32* %len, align 4, !dbg !3876
  %3 = load i32, i32* %len, align 4, !dbg !3877
  %conv2 = sext i32 %3 to i64, !dbg !3877
  store i64 %conv2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3878
  %5 = call i1 @llvm.is.constant.i64(i64 %4) #11, !dbg !3879
  br i1 %5, label %if.then.i, label %if.end9.i, !dbg !3880

if.then.i:                                        ; preds = %entry
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3881
  %cmp.i = icmp ugt i64 %6, 8192, !dbg !3882
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3883

if.then1.i:                                       ; preds = %if.then.i
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !3884
  %8 = load i32, i32* %flags.addr.i, align 4, !dbg !3885
  store i64 %7, i64* %size.addr.i.i, align 8
  store i32 %8, i32* %flags.addr.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !3886
  %call.i.i = call i32 @get_order(i64 %9) #13, !dbg !3887
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3830
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !3888
  %11 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3889
  %12 = load i32, i32* %order.i.i, align 4, !dbg !3890
  store i64 %10, i64* %size.addr.i.i.i, align 8
  store i32 %11, i32* %flags.addr.i.i.i, align 4
  store i32 %12, i32* %order.addr.i.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3891
  %14 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3892
  %15 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3893
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %13, i32 %14, i32 %15) #12, !dbg !3894
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3894
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3894
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3894
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3894
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3895
  br label %kmalloc.exit, !dbg !3895

if.end.i:                                         ; preds = %if.then.i
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3896
  store i64 %16, i64* %size.addr.i11.i, align 8
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3897
  %tobool.i.i = icmp ne i64 %17, 0, !dbg !3897
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3898

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3899
  br label %kmalloc_index.exit.i, !dbg !3899

if.end.i.i:                                       ; preds = %if.end.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3900
  %cmp.i.i = icmp ule i64 %18, 8, !dbg !3901
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3902

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3903
  br label %kmalloc_index.exit.i, !dbg !3903

if.end2.i.i:                                      ; preds = %if.end.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3904
  %cmp3.i.i = icmp ugt i64 %19, 64, !dbg !3905
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3906

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3907
  %cmp4.i.i = icmp ule i64 %20, 96, !dbg !3908
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3909

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3910
  br label %kmalloc_index.exit.i, !dbg !3910

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3911
  %cmp7.i.i = icmp ugt i64 %21, 128, !dbg !3912
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3913

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3914
  %cmp9.i.i = icmp ule i64 %22, 192, !dbg !3915
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3916

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3917
  br label %kmalloc_index.exit.i, !dbg !3917

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3918
  %cmp12.i.i = icmp ule i64 %23, 8, !dbg !3919
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3920

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3921
  br label %kmalloc_index.exit.i, !dbg !3921

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3922
  %cmp15.i.i = icmp ule i64 %24, 16, !dbg !3923
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3924

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3925
  br label %kmalloc_index.exit.i, !dbg !3925

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3926
  %cmp18.i.i = icmp ule i64 %25, 32, !dbg !3927
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3928

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3929
  br label %kmalloc_index.exit.i, !dbg !3929

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3930
  %cmp21.i.i = icmp ule i64 %26, 64, !dbg !3931
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3932

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3933
  br label %kmalloc_index.exit.i, !dbg !3933

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3934
  %cmp24.i.i = icmp ule i64 %27, 128, !dbg !3935
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3936

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3937
  br label %kmalloc_index.exit.i, !dbg !3937

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3938
  %cmp27.i.i = icmp ule i64 %28, 256, !dbg !3939
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3940

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3941
  br label %kmalloc_index.exit.i, !dbg !3941

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3942
  %cmp30.i.i = icmp ule i64 %29, 512, !dbg !3943
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3944

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3945
  br label %kmalloc_index.exit.i, !dbg !3945

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3946
  %cmp33.i.i = icmp ule i64 %30, 1024, !dbg !3947
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3948

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3949
  br label %kmalloc_index.exit.i, !dbg !3949

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3950
  %cmp36.i.i = icmp ule i64 %31, 2048, !dbg !3951
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3952

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3953
  br label %kmalloc_index.exit.i, !dbg !3953

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3954
  %cmp39.i.i = icmp ule i64 %32, 4096, !dbg !3955
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3956

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3957
  br label %kmalloc_index.exit.i, !dbg !3957

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3958
  %cmp42.i.i = icmp ule i64 %33, 8192, !dbg !3959
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3960

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3961
  br label %kmalloc_index.exit.i, !dbg !3961

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3962
  %cmp45.i.i = icmp ule i64 %34, 16384, !dbg !3963
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3964

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3965
  br label %kmalloc_index.exit.i, !dbg !3965

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3966
  %cmp48.i.i = icmp ule i64 %35, 32768, !dbg !3967
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3968

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3969
  br label %kmalloc_index.exit.i, !dbg !3969

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3970
  %cmp51.i.i = icmp ule i64 %36, 65536, !dbg !3971
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3972

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3973
  br label %kmalloc_index.exit.i, !dbg !3973

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3974
  %cmp54.i.i = icmp ule i64 %37, 131072, !dbg !3975
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3976

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3977
  br label %kmalloc_index.exit.i, !dbg !3977

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3978
  %cmp57.i.i = icmp ule i64 %38, 262144, !dbg !3979
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3980

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3981
  br label %kmalloc_index.exit.i, !dbg !3981

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3982
  %cmp60.i.i = icmp ule i64 %39, 524288, !dbg !3983
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3984

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3985
  br label %kmalloc_index.exit.i, !dbg !3985

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3986
  %cmp63.i.i = icmp ule i64 %40, 1048576, !dbg !3987
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3988

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3989
  br label %kmalloc_index.exit.i, !dbg !3989

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3990
  %cmp66.i.i = icmp ule i64 %41, 2097152, !dbg !3991
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3992

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3993
  br label %kmalloc_index.exit.i, !dbg !3993

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3994
  %cmp69.i.i = icmp ule i64 %42, 4194304, !dbg !3995
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3996

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3997
  br label %kmalloc_index.exit.i, !dbg !3997

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3998
  %cmp72.i.i = icmp ule i64 %43, 8388608, !dbg !3999
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4000

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4001
  br label %kmalloc_index.exit.i, !dbg !4001

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4002
  %cmp75.i.i = icmp ule i64 %44, 16777216, !dbg !4003
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4004

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4005
  br label %kmalloc_index.exit.i, !dbg !4005

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4006
  %cmp78.i.i = icmp ule i64 %45, 33554432, !dbg !4007
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4008

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4009
  br label %kmalloc_index.exit.i, !dbg !4009

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4010
  %cmp81.i.i = icmp ule i64 %46, 67108864, !dbg !4011
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4012

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4013
  br label %kmalloc_index.exit.i, !dbg !4013

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4014, !srcloc !3642
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #11, !dbg !4015, !srcloc !3646
  unreachable, !dbg !4016

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %47 = load i32, i32* %retval.i.i, align 4, !dbg !4017
  store i32 %47, i32* %index.i, align 4, !dbg !4018
  %48 = load i32, i32* %index.i, align 4, !dbg !4019
  %tobool.i = icmp ne i32 %48, 0, !dbg !4019
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4020

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4021
  br label %kmalloc.exit, !dbg !4021

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %49 = load i32, i32* %flags.addr.i, align 4, !dbg !4022
  store i32 %49, i32* %flags.addr.i13.i, align 4
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4023
  %and.i.i = and i32 %50, 17, !dbg !4023
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4023
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4023
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4023
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4023
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4024

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4025
  br label %kmalloc_type.exit.i, !dbg !4025

if.end.i16.i:                                     ; preds = %if.end4.i
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4026
  %and2.i.i = and i32 %51, 1, !dbg !4027
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4026
  %52 = zext i1 %tobool3.i.i to i64, !dbg !4026
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4026
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4028
  br label %kmalloc_type.exit.i, !dbg !4028

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %53 = load i32, i32* %retval.i12.i, align 4, !dbg !4029
  %idxprom.i = zext i32 %53 to i64, !dbg !4030
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4030
  %54 = load i32, i32* %index.i, align 4, !dbg !4031
  %idxprom6.i = zext i32 %54 to i64, !dbg !4030
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4030
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4030
  %56 = load i32, i32* %flags.addr.i, align 4, !dbg !4032
  %57 = load i64, i64* %size.addr.i, align 8, !dbg !4033
  store %struct.kmem_cache* %55, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %56, i32* %flags.addr.i17.i, align 4
  store i64 %57, i64* %size.addr.i18.i, align 8
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4034
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4035
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %58, i32 %59) #12, !dbg !4036
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4036
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4036
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4036
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4036
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3818
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4037
  %61 = load i8*, i8** %ret.i.i, align 8, !dbg !4038
  %62 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4039
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4040
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %60, i8* %61, i64 %62, i32 %63) #12, !dbg !4041
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4042
  %64 = load i8*, i8** %ret.i.i, align 8, !dbg !4043
  store i8* %64, i8** %retval.i, align 8, !dbg !4044
  br label %kmalloc.exit, !dbg !4044

if.end9.i:                                        ; preds = %entry
  %65 = load i64, i64* %size.addr.i, align 8, !dbg !4045
  %66 = load i32, i32* %flags.addr.i, align 4, !dbg !4046
  %call10.i = call noalias i8* @__kmalloc(i64 %65, i32 %66) #12, !dbg !4047
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4047
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4047
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4047
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4047
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4048
  br label %kmalloc.exit, !dbg !4048

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %67 = load i8*, i8** %retval.i, align 8, !dbg !4049
  %68 = bitcast i8* %67 to %struct.onfi_ext_param_page*, !dbg !4050
  store %struct.onfi_ext_param_page* %68, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4051
  %69 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4052
  %tobool = icmp ne %struct.onfi_ext_param_page* %69, null, !dbg !4052
  br i1 %tobool, label %if.end, label %if.then, !dbg !4054

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

if.end:                                           ; preds = %kmalloc.exit
  %70 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4056
  %71 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p.addr, align 8, !dbg !4057
  %num_of_param_pages = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %71, i32 0, i32 6, !dbg !4058
  %72 = load i8, i8* %num_of_param_pages, align 1, !dbg !4058
  %conv3 = zext i8 %72 to i64, !dbg !4057
  %mul4 = mul i64 256, %conv3, !dbg !4059
  %conv5 = trunc i64 %mul4 to i32, !dbg !4060
  %73 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4061
  %74 = bitcast %struct.onfi_ext_param_page* %73 to i8*, !dbg !4061
  %75 = load i32, i32* %len, align 4, !dbg !4062
  %call6 = call i32 @nand_change_read_column_op(%struct.nand_chip* %70, i32 %conv5, i8* %74, i32 %75, i1 zeroext true) #8, !dbg !4063
  store i32 %call6, i32* %ret, align 4, !dbg !4064
  %76 = load i32, i32* %ret, align 4, !dbg !4065
  %tobool7 = icmp ne i32 %76, 0, !dbg !4065
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4067

if.then8:                                         ; preds = %if.end
  br label %ext_out, !dbg !4068

if.end9:                                          ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !4069
  %77 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4070
  %78 = bitcast %struct.onfi_ext_param_page* %77 to i8*, !dbg !4072
  %add.ptr = getelementptr i8, i8* %78, i64 2, !dbg !4073
  %79 = load i32, i32* %len, align 4, !dbg !4074
  %sub = sub i32 %79, 2, !dbg !4075
  %conv10 = sext i32 %sub to i64, !dbg !4074
  %call11 = call zeroext i16 @onfi_crc16(i16 zeroext 20302, i8* %add.ptr, i64 %conv10) #8, !dbg !4076
  %conv12 = zext i16 %call11 to i32, !dbg !4076
  %80 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4077
  %crc = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %80, i32 0, i32 0, !dbg !4077
  %81 = load i16, i16* %crc, align 1, !dbg !4077
  %conv13 = zext i16 %81 to i32, !dbg !4077
  %cmp = icmp ne i32 %conv12, %conv13, !dbg !4078
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !4079

if.then15:                                        ; preds = %if.end9
  store i32 0, i32* %tmp, align 4, !dbg !4080
  %82 = load i32, i32* %tmp, align 4, !dbg !4084
  br label %ext_out, !dbg !4085

if.end16:                                         ; preds = %if.end9
  %83 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4086
  %sig = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %83, i32 0, i32 1, !dbg !4088
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %sig, i64 0, i64 0, !dbg !4086
  %call17 = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4) #8, !dbg !4089
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4089
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4090

if.then19:                                        ; preds = %if.end16
  store i32 0, i32* %tmp20, align 4, !dbg !4091
  %84 = load i32, i32* %tmp20, align 4, !dbg !4095
  br label %ext_out, !dbg !4096

if.end21:                                         ; preds = %if.end16
  %85 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4097
  %add.ptr22 = getelementptr %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %85, i64 1, !dbg !4098
  %86 = bitcast %struct.onfi_ext_param_page* %add.ptr22 to i8*, !dbg !4099
  store i8* %86, i8** %cursor, align 8, !dbg !4100
  store i32 0, i32* %i, align 4, !dbg !4101
  br label %for.cond, !dbg !4103

for.cond:                                         ; preds = %for.inc, %if.end21
  %87 = load i32, i32* %i, align 4, !dbg !4104
  %cmp23 = icmp slt i32 %87, 8, !dbg !4106
  br i1 %cmp23, label %for.body, label %for.end, !dbg !4107

for.body:                                         ; preds = %for.cond
  %88 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4108
  %sections = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %88, i32 0, i32 3, !dbg !4110
  %arraydecay25 = getelementptr inbounds [8 x %struct.onfi_ext_section], [8 x %struct.onfi_ext_section]* %sections, i64 0, i64 0, !dbg !4108
  %89 = load i32, i32* %i, align 4, !dbg !4111
  %idx.ext = sext i32 %89 to i64, !dbg !4112
  %add.ptr26 = getelementptr %struct.onfi_ext_section, %struct.onfi_ext_section* %arraydecay25, i64 %idx.ext, !dbg !4112
  store %struct.onfi_ext_section* %add.ptr26, %struct.onfi_ext_section** %s, align 8, !dbg !4113
  %90 = load %struct.onfi_ext_section*, %struct.onfi_ext_section** %s, align 8, !dbg !4114
  %type = getelementptr inbounds %struct.onfi_ext_section, %struct.onfi_ext_section* %90, i32 0, i32 0, !dbg !4116
  %91 = load i8, i8* %type, align 1, !dbg !4116
  %conv27 = zext i8 %91 to i32, !dbg !4114
  %cmp28 = icmp eq i32 %conv27, 2, !dbg !4117
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !4118

if.then30:                                        ; preds = %for.body
  br label %for.end, !dbg !4119

if.end31:                                         ; preds = %for.body
  %92 = load %struct.onfi_ext_section*, %struct.onfi_ext_section** %s, align 8, !dbg !4120
  %length = getelementptr inbounds %struct.onfi_ext_section, %struct.onfi_ext_section* %92, i32 0, i32 1, !dbg !4121
  %93 = load i8, i8* %length, align 1, !dbg !4121
  %conv32 = zext i8 %93 to i32, !dbg !4120
  %mul33 = mul i32 %conv32, 16, !dbg !4122
  %94 = load i8*, i8** %cursor, align 8, !dbg !4123
  %idx.ext34 = sext i32 %mul33 to i64, !dbg !4123
  %add.ptr35 = getelementptr i8, i8* %94, i64 %idx.ext34, !dbg !4123
  store i8* %add.ptr35, i8** %cursor, align 8, !dbg !4123
  br label %for.inc, !dbg !4124

for.inc:                                          ; preds = %if.end31
  %95 = load i32, i32* %i, align 4, !dbg !4125
  %inc = add i32 %95, 1, !dbg !4125
  store i32 %inc, i32* %i, align 4, !dbg !4125
  br label %for.cond, !dbg !4126, !llvm.loop !4127

for.end:                                          ; preds = %if.then30, %for.cond
  %96 = load i32, i32* %i, align 4, !dbg !4129
  %cmp36 = icmp eq i32 %96, 8, !dbg !4131
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !4132

if.then38:                                        ; preds = %for.end
  store i32 0, i32* %tmp39, align 4, !dbg !4133
  %97 = load i32, i32* %tmp39, align 4, !dbg !4137
  br label %ext_out, !dbg !4138

if.end40:                                         ; preds = %for.end
  %98 = load i8*, i8** %cursor, align 8, !dbg !4139
  %99 = bitcast i8* %98 to %struct.onfi_ext_ecc_info*, !dbg !4140
  store %struct.onfi_ext_ecc_info* %99, %struct.onfi_ext_ecc_info** %ecc, align 8, !dbg !4141
  %100 = load %struct.onfi_ext_ecc_info*, %struct.onfi_ext_ecc_info** %ecc, align 8, !dbg !4142
  %codeword_size = getelementptr inbounds %struct.onfi_ext_ecc_info, %struct.onfi_ext_ecc_info* %100, i32 0, i32 1, !dbg !4144
  %101 = load i8, i8* %codeword_size, align 1, !dbg !4144
  %tobool41 = icmp ne i8 %101, 0, !dbg !4142
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !4145

if.then42:                                        ; preds = %if.end40
  store i32 0, i32* %tmp43, align 4, !dbg !4146
  %102 = load i32, i32* %tmp43, align 4, !dbg !4150
  br label %ext_out, !dbg !4151

if.end44:                                         ; preds = %if.end40
  %103 = load %struct.onfi_ext_ecc_info*, %struct.onfi_ext_ecc_info** %ecc, align 8, !dbg !4152
  %ecc_bits = getelementptr inbounds %struct.onfi_ext_ecc_info, %struct.onfi_ext_ecc_info* %103, i32 0, i32 0, !dbg !4153
  %104 = load i8, i8* %ecc_bits, align 1, !dbg !4153
  %conv45 = zext i8 %104 to i32, !dbg !4152
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !4154
  store i32 %conv45, i32* %strength, align 4, !dbg !4155
  %105 = load %struct.onfi_ext_ecc_info*, %struct.onfi_ext_ecc_info** %ecc, align 8, !dbg !4156
  %codeword_size46 = getelementptr inbounds %struct.onfi_ext_ecc_info, %struct.onfi_ext_ecc_info* %105, i32 0, i32 1, !dbg !4157
  %106 = load i8, i8* %codeword_size46, align 1, !dbg !4157
  %conv47 = zext i8 %106 to i32, !dbg !4156
  %shl = shl i32 1, %conv47, !dbg !4158
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !4159
  store i32 %shl, i32* %step_size, align 4, !dbg !4160
  %107 = load %struct.nand_device*, %struct.nand_device** %base, align 8, !dbg !4161
  call void @nanddev_set_ecc_requirements(%struct.nand_device* %107, %struct.nand_ecc_props* %requirements) #8, !dbg !4162
  store i32 0, i32* %ret, align 4, !dbg !4163
  br label %ext_out, !dbg !4164

ext_out:                                          ; preds = %if.end44, %if.then42, %if.then38, %if.then19, %if.then15, %if.then8
  call void @llvm.dbg.label(metadata !4165), !dbg !4166
  %108 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %ep, align 8, !dbg !4167
  %109 = bitcast %struct.onfi_ext_param_page* %108 to i8*, !dbg !4167
  call void @kfree(i8* %109) #8, !dbg !4168
  %110 = load i32, i32* %ret, align 4, !dbg !4169
  store i32 %110, i32* %retval, align 4, !dbg !4170
  br label %return, !dbg !4170

return:                                           ; preds = %ext_out, %if.then
  %111 = load i32, i32* %retval, align 4, !dbg !4171
  ret i32 %111, !dbg !4171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4172 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4176, metadata !DIExpression()), !dbg !4180
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4182, metadata !DIExpression()), !dbg !4183
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  %0 = load i64, i64* %size.addr, align 8, !dbg !4186
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4188
  br i1 %1, label %if.then, label %if.end447, !dbg !4189

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4190
  %tobool = icmp ne i64 %2, 0, !dbg !4190
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4193

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4194
  br label %return, !dbg !4194

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4195
  %cmp = icmp ult i64 %3, 4096, !dbg !4197
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4198

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4199
  br label %return, !dbg !4199

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub = sub i64 %4, 1, !dbg !4200
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4200
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4200

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub4 = sub i64 %6, 1, !dbg !4200
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4200
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4200

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub6 = sub i64 %8, 1, !dbg !4200
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4200
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4200

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4200

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub9 = sub i64 %9, 1, !dbg !4200
  %and = and i64 %sub9, -9223372036854775808, !dbg !4200
  %tobool10 = icmp ne i64 %and, 0, !dbg !4200
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4200

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4200

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub13 = sub i64 %10, 1, !dbg !4200
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4200
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4200
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4200

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4200

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub18 = sub i64 %11, 1, !dbg !4200
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4200
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4200
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4200

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4200

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub23 = sub i64 %12, 1, !dbg !4200
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4200
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4200
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4200

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4200

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub28 = sub i64 %13, 1, !dbg !4200
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4200
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4200
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4200

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4200

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub33 = sub i64 %14, 1, !dbg !4200
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4200
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4200
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4200

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4200

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub38 = sub i64 %15, 1, !dbg !4200
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4200
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4200
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4200

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4200

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub43 = sub i64 %16, 1, !dbg !4200
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4200
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4200
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4200

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4200

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub48 = sub i64 %17, 1, !dbg !4200
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4200
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4200
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4200

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4200

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub53 = sub i64 %18, 1, !dbg !4200
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4200
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4200
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4200

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4200

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub58 = sub i64 %19, 1, !dbg !4200
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4200
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4200
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4200

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4200

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub63 = sub i64 %20, 1, !dbg !4200
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4200
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4200
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4200

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4200

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub68 = sub i64 %21, 1, !dbg !4200
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4200
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4200
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4200

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4200

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub73 = sub i64 %22, 1, !dbg !4200
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4200
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4200
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4200

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4200

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub78 = sub i64 %23, 1, !dbg !4200
  %and79 = and i64 %sub78, 562949953421312, !dbg !4200
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4200
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4200

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4200

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub83 = sub i64 %24, 1, !dbg !4200
  %and84 = and i64 %sub83, 281474976710656, !dbg !4200
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4200
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4200

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4200

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub88 = sub i64 %25, 1, !dbg !4200
  %and89 = and i64 %sub88, 140737488355328, !dbg !4200
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4200
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4200

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4200

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub93 = sub i64 %26, 1, !dbg !4200
  %and94 = and i64 %sub93, 70368744177664, !dbg !4200
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4200
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4200

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4200

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub98 = sub i64 %27, 1, !dbg !4200
  %and99 = and i64 %sub98, 35184372088832, !dbg !4200
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4200
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4200

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4200

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub103 = sub i64 %28, 1, !dbg !4200
  %and104 = and i64 %sub103, 17592186044416, !dbg !4200
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4200
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4200

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4200

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub108 = sub i64 %29, 1, !dbg !4200
  %and109 = and i64 %sub108, 8796093022208, !dbg !4200
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4200
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4200

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4200

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub113 = sub i64 %30, 1, !dbg !4200
  %and114 = and i64 %sub113, 4398046511104, !dbg !4200
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4200
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4200

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4200

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub118 = sub i64 %31, 1, !dbg !4200
  %and119 = and i64 %sub118, 2199023255552, !dbg !4200
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4200
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4200

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4200

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub123 = sub i64 %32, 1, !dbg !4200
  %and124 = and i64 %sub123, 1099511627776, !dbg !4200
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4200
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4200

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4200

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub128 = sub i64 %33, 1, !dbg !4200
  %and129 = and i64 %sub128, 549755813888, !dbg !4200
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4200
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4200

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4200

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub133 = sub i64 %34, 1, !dbg !4200
  %and134 = and i64 %sub133, 274877906944, !dbg !4200
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4200
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4200

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4200

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub138 = sub i64 %35, 1, !dbg !4200
  %and139 = and i64 %sub138, 137438953472, !dbg !4200
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4200
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4200

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4200

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub143 = sub i64 %36, 1, !dbg !4200
  %and144 = and i64 %sub143, 68719476736, !dbg !4200
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4200
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4200

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4200

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub148 = sub i64 %37, 1, !dbg !4200
  %and149 = and i64 %sub148, 34359738368, !dbg !4200
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4200
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4200

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4200

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub153 = sub i64 %38, 1, !dbg !4200
  %and154 = and i64 %sub153, 17179869184, !dbg !4200
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4200
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4200

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4200

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub158 = sub i64 %39, 1, !dbg !4200
  %and159 = and i64 %sub158, 8589934592, !dbg !4200
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4200
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4200

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4200

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub163 = sub i64 %40, 1, !dbg !4200
  %and164 = and i64 %sub163, 4294967296, !dbg !4200
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4200
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4200

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4200

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub168 = sub i64 %41, 1, !dbg !4200
  %and169 = and i64 %sub168, 2147483648, !dbg !4200
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4200
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4200

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4200

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub173 = sub i64 %42, 1, !dbg !4200
  %and174 = and i64 %sub173, 1073741824, !dbg !4200
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4200
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4200

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4200

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub178 = sub i64 %43, 1, !dbg !4200
  %and179 = and i64 %sub178, 536870912, !dbg !4200
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4200
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4200

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4200

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub183 = sub i64 %44, 1, !dbg !4200
  %and184 = and i64 %sub183, 268435456, !dbg !4200
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4200
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4200

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4200

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub188 = sub i64 %45, 1, !dbg !4200
  %and189 = and i64 %sub188, 134217728, !dbg !4200
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4200
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4200

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4200

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub193 = sub i64 %46, 1, !dbg !4200
  %and194 = and i64 %sub193, 67108864, !dbg !4200
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4200
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4200

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4200

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub198 = sub i64 %47, 1, !dbg !4200
  %and199 = and i64 %sub198, 33554432, !dbg !4200
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4200
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4200

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4200

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub203 = sub i64 %48, 1, !dbg !4200
  %and204 = and i64 %sub203, 16777216, !dbg !4200
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4200
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4200

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4200

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub208 = sub i64 %49, 1, !dbg !4200
  %and209 = and i64 %sub208, 8388608, !dbg !4200
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4200
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4200

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4200

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub213 = sub i64 %50, 1, !dbg !4200
  %and214 = and i64 %sub213, 4194304, !dbg !4200
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4200
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4200

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4200

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub218 = sub i64 %51, 1, !dbg !4200
  %and219 = and i64 %sub218, 2097152, !dbg !4200
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4200
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4200

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4200

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub223 = sub i64 %52, 1, !dbg !4200
  %and224 = and i64 %sub223, 1048576, !dbg !4200
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4200
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4200

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4200

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub228 = sub i64 %53, 1, !dbg !4200
  %and229 = and i64 %sub228, 524288, !dbg !4200
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4200
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4200

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4200

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub233 = sub i64 %54, 1, !dbg !4200
  %and234 = and i64 %sub233, 262144, !dbg !4200
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4200
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4200

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4200

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub238 = sub i64 %55, 1, !dbg !4200
  %and239 = and i64 %sub238, 131072, !dbg !4200
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4200
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4200

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4200

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub243 = sub i64 %56, 1, !dbg !4200
  %and244 = and i64 %sub243, 65536, !dbg !4200
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4200
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4200

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4200

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub248 = sub i64 %57, 1, !dbg !4200
  %and249 = and i64 %sub248, 32768, !dbg !4200
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4200
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4200

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4200

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub253 = sub i64 %58, 1, !dbg !4200
  %and254 = and i64 %sub253, 16384, !dbg !4200
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4200
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4200

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4200

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub258 = sub i64 %59, 1, !dbg !4200
  %and259 = and i64 %sub258, 8192, !dbg !4200
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4200
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4200

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4200

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub263 = sub i64 %60, 1, !dbg !4200
  %and264 = and i64 %sub263, 4096, !dbg !4200
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4200
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4200

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4200

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub268 = sub i64 %61, 1, !dbg !4200
  %and269 = and i64 %sub268, 2048, !dbg !4200
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4200
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4200

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4200

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub273 = sub i64 %62, 1, !dbg !4200
  %and274 = and i64 %sub273, 1024, !dbg !4200
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4200
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4200

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4200

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub278 = sub i64 %63, 1, !dbg !4200
  %and279 = and i64 %sub278, 512, !dbg !4200
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4200
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4200

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4200

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub283 = sub i64 %64, 1, !dbg !4200
  %and284 = and i64 %sub283, 256, !dbg !4200
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4200
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4200

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4200

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub288 = sub i64 %65, 1, !dbg !4200
  %and289 = and i64 %sub288, 128, !dbg !4200
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4200
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4200

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4200

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub293 = sub i64 %66, 1, !dbg !4200
  %and294 = and i64 %sub293, 64, !dbg !4200
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4200
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4200

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4200

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub298 = sub i64 %67, 1, !dbg !4200
  %and299 = and i64 %sub298, 32, !dbg !4200
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4200
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4200

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4200

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub303 = sub i64 %68, 1, !dbg !4200
  %and304 = and i64 %sub303, 16, !dbg !4200
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4200
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4200

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4200

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub308 = sub i64 %69, 1, !dbg !4200
  %and309 = and i64 %sub308, 8, !dbg !4200
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4200
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4200

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4200

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub313 = sub i64 %70, 1, !dbg !4200
  %and314 = and i64 %sub313, 4, !dbg !4200
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4200
  %71 = zext i1 %tobool315 to i64, !dbg !4200
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4200
  br label %cond.end, !dbg !4200

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4200
  br label %cond.end317, !dbg !4200

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4200
  br label %cond.end319, !dbg !4200

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4200
  br label %cond.end321, !dbg !4200

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4200
  br label %cond.end323, !dbg !4200

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4200
  br label %cond.end325, !dbg !4200

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4200
  br label %cond.end327, !dbg !4200

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4200
  br label %cond.end329, !dbg !4200

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4200
  br label %cond.end331, !dbg !4200

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4200
  br label %cond.end333, !dbg !4200

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4200
  br label %cond.end335, !dbg !4200

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4200
  br label %cond.end337, !dbg !4200

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4200
  br label %cond.end339, !dbg !4200

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4200
  br label %cond.end341, !dbg !4200

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4200
  br label %cond.end343, !dbg !4200

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4200
  br label %cond.end345, !dbg !4200

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4200
  br label %cond.end347, !dbg !4200

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4200
  br label %cond.end349, !dbg !4200

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4200
  br label %cond.end351, !dbg !4200

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4200
  br label %cond.end353, !dbg !4200

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4200
  br label %cond.end355, !dbg !4200

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4200
  br label %cond.end357, !dbg !4200

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4200
  br label %cond.end359, !dbg !4200

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4200
  br label %cond.end361, !dbg !4200

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4200
  br label %cond.end363, !dbg !4200

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4200
  br label %cond.end365, !dbg !4200

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4200
  br label %cond.end367, !dbg !4200

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4200
  br label %cond.end369, !dbg !4200

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4200
  br label %cond.end371, !dbg !4200

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4200
  br label %cond.end373, !dbg !4200

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4200
  br label %cond.end375, !dbg !4200

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4200
  br label %cond.end377, !dbg !4200

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4200
  br label %cond.end379, !dbg !4200

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4200
  br label %cond.end381, !dbg !4200

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4200
  br label %cond.end383, !dbg !4200

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4200
  br label %cond.end385, !dbg !4200

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4200
  br label %cond.end387, !dbg !4200

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4200
  br label %cond.end389, !dbg !4200

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4200
  br label %cond.end391, !dbg !4200

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4200
  br label %cond.end393, !dbg !4200

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4200
  br label %cond.end395, !dbg !4200

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4200
  br label %cond.end397, !dbg !4200

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4200
  br label %cond.end399, !dbg !4200

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4200
  br label %cond.end401, !dbg !4200

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4200
  br label %cond.end403, !dbg !4200

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4200
  br label %cond.end405, !dbg !4200

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4200
  br label %cond.end407, !dbg !4200

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4200
  br label %cond.end409, !dbg !4200

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4200
  br label %cond.end411, !dbg !4200

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4200
  br label %cond.end413, !dbg !4200

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4200
  br label %cond.end415, !dbg !4200

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4200
  br label %cond.end417, !dbg !4200

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4200
  br label %cond.end419, !dbg !4200

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4200
  br label %cond.end421, !dbg !4200

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4200
  br label %cond.end423, !dbg !4200

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4200
  br label %cond.end425, !dbg !4200

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4200
  br label %cond.end427, !dbg !4200

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4200
  br label %cond.end429, !dbg !4200

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4200
  br label %cond.end431, !dbg !4200

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4200
  br label %cond.end433, !dbg !4200

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4200
  br label %cond.end435, !dbg !4200

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4200
  br label %cond.end437, !dbg !4200

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4200
  br label %cond.end440, !dbg !4200

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4200

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4200
  br label %cond.end444, !dbg !4200

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4200
  %sub443 = sub i64 %72, 1, !dbg !4200
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4200
  br label %cond.end444, !dbg !4200

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4200
  %sub446 = sub i32 %cond445, 12, !dbg !4201
  %add = add i32 %sub446, 1, !dbg !4202
  store i32 %add, i32* %retval, align 4, !dbg !4203
  br label %return, !dbg !4203

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4204
  %dec = add i64 %73, -1, !dbg !4204
  store i64 %dec, i64* %size.addr, align 8, !dbg !4204
  %74 = load i64, i64* %size.addr, align 8, !dbg !4205
  %shr = lshr i64 %74, 12, !dbg !4205
  store i64 %shr, i64* %size.addr, align 8, !dbg !4205
  %75 = load i64, i64* %size.addr, align 8, !dbg !4206
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4183
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4207
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4208
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !4207, !srcloc !4209
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4207
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4210
  %add.i = add i32 %79, 1, !dbg !4211
  store i32 %add.i, i32* %retval, align 4, !dbg !4212
  br label %return, !dbg !4212

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4213
  ret i32 %80, !dbg !4213
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4214 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4176, metadata !DIExpression()), !dbg !4218
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4182, metadata !DIExpression()), !dbg !4220
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  %0 = load i64, i64* %n.addr, align 8, !dbg !4223
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4220
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4224
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4225
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !4224, !srcloc !4209
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4224
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4226
  %add.i = add i32 %4, 1, !dbg !4227
  %sub = sub i32 %add.i, 1, !dbg !4228
  ret i32 %sub, !dbg !4229
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4230 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4233, metadata !DIExpression()), !dbg !4234
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4235, metadata !DIExpression()), !dbg !4236
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4241
  ret i8* %0, !dbg !4242
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !4243 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4249, metadata !DIExpression()), !dbg !4251
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4253, metadata !DIExpression()), !dbg !4254
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4255, metadata !DIExpression()), !dbg !4263
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4265, metadata !DIExpression()), !dbg !4266
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4267, metadata !DIExpression()), !dbg !4268
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4269, metadata !DIExpression()), !dbg !4270
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4271
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4272
  %div = sdiv i64 %1, 64, !dbg !4272
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4273
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4271
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4274
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4275
  %conv.i = trunc i64 %4 to i32, !dbg !4275
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4276
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4277
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4277
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !4277
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4278
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4279
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4280
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4281
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #11, !dbg !4282, !srcloc !4283
  ret void, !dbg !4284
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @__bitmap_set(i64*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4285 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  ret i1 true, !dbg !4293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4294 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4302, metadata !DIExpression()), !dbg !4303
  ret void, !dbg !4304
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/mtd/nand/raw/nand_onfi.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !56, !61, !67, !71, !75, !82, !87}
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
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_interface_type", file: !72, line: 481, baseType: !5, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/mtd/rawnand.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74}
!74 = !DIEnumerator(name: "NAND_SDR_IFACE", value: 0, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nand_op_instr_type", file: !72, line: 570, baseType: !5, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIEnumerator(name: "NAND_OP_CMD_INSTR", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "NAND_OP_ADDR_INSTR", value: 1, isUnsigned: true)
!79 = !DIEnumerator(name: "NAND_OP_DATA_IN_INSTR", value: 2, isUnsigned: true)
!80 = !DIEnumerator(name: "NAND_OP_DATA_OUT_INSTR", value: 3, isUnsigned: true)
!81 = !DIEnumerator(name: "NAND_OP_WAITRDY_INSTR", value: 4, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 10, baseType: !5, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !88, line: 305, baseType: !5, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!94 = !{!95, !97, !103, !105, !107, !108, !109, !110, !112, !5, !124, !126}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !96, line: 148, baseType: !5)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !99, line: 17, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !104)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !106, line: 29, baseType: !103)
!106 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !106, line: 31, baseType: !107)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 102, baseType: !98)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_ext_ecc_info", file: !114, line: 123, size: 64, elements: !115)
!114 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !113, file: !114, line: 124, baseType: !98, size: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "codeword_size", scope: !113, file: !114, line: 125, baseType: !98, size: 8, offset: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !113, file: !114, line: 126, baseType: !105, size: 16, offset: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !113, file: !114, line: 127, baseType: !105, size: 16, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !113, file: !114, line: 128, baseType: !121, size: 16, offset: 48)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 2)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!128 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!129 = !{i32 7, !"Dwarf Version", i32 4}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"Code Model", i32 2}
!133 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!134 = distinct !DISubprogram(name: "onfi_crc16", scope: !1, file: !1, line: 21, type: !135, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !145)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !137, !138, !140}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !103)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 55, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !142, line: 72, baseType: !143)
!142 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !142, line: 16, baseType: !144)
!144 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !{}
!146 = !DILocalVariable(name: "crc", arg: 1, scope: !134, file: !1, line: 21, type: !137)
!147 = !DILocation(line: 21, column: 20, scope: !134)
!148 = !DILocalVariable(name: "p", arg: 2, scope: !134, file: !1, line: 21, type: !138)
!149 = !DILocation(line: 21, column: 35, scope: !134)
!150 = !DILocalVariable(name: "len", arg: 3, scope: !134, file: !1, line: 21, type: !140)
!151 = !DILocation(line: 21, column: 45, scope: !134)
!152 = !DILocalVariable(name: "i", scope: !134, file: !1, line: 23, type: !153)
!153 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!154 = !DILocation(line: 23, column: 6, scope: !134)
!155 = !DILocation(line: 24, column: 2, scope: !134)
!156 = !DILocation(line: 24, column: 12, scope: !134)
!157 = !DILocation(line: 25, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !134, file: !1, line: 24, column: 16)
!159 = !DILocation(line: 25, column: 10, scope: !158)
!160 = !DILocation(line: 25, column: 15, scope: !158)
!161 = !DILocation(line: 25, column: 7, scope: !158)
!162 = !DILocation(line: 26, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 26, column: 3)
!164 = !DILocation(line: 26, column: 8, scope: !163)
!165 = !DILocation(line: 26, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 26, column: 3)
!167 = !DILocation(line: 26, column: 17, scope: !166)
!168 = !DILocation(line: 26, column: 3, scope: !163)
!169 = !DILocation(line: 27, column: 11, scope: !166)
!170 = !DILocation(line: 27, column: 15, scope: !166)
!171 = !DILocation(line: 27, column: 25, scope: !166)
!172 = !DILocation(line: 27, column: 29, scope: !166)
!173 = !DILocation(line: 27, column: 24, scope: !166)
!174 = !DILocation(line: 27, column: 21, scope: !166)
!175 = !DILocation(line: 27, column: 10, scope: !166)
!176 = !DILocation(line: 27, column: 8, scope: !166)
!177 = !DILocation(line: 27, column: 4, scope: !166)
!178 = !DILocation(line: 26, column: 23, scope: !166)
!179 = !DILocation(line: 26, column: 3, scope: !166)
!180 = distinct !{!180, !168, !181}
!181 = !DILocation(line: 27, column: 51, scope: !163)
!182 = distinct !{!182, !155, !183}
!183 = !DILocation(line: 28, column: 2, scope: !134)
!184 = !DILocation(line: 30, column: 9, scope: !134)
!185 = !DILocation(line: 30, column: 2, scope: !134)
!186 = distinct !DISubprogram(name: "nand_onfi_detect", scope: !1, file: !1, line: 144, type: !187, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !145)
!187 = !DISubroutineType(types: !188)
!188 = !{!153, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !72, line: 1096, size: 16704, elements: !191)
!191 = !{!192, !2465, !2471, !2494, !2586, !2656, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2800, !2801, !2802, !2803, !2804, !2805, !2807, !2857}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !190, file: !72, line: 1097, baseType: !193, size: 11200)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !49, line: 319, size: 11200, elements: !194)
!194 = !{!195, !2358, !2370, !2440, !2445, !2449}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !193, file: !49, line: 320, baseType: !196, size: 9664)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !197, line: 235, size: 9664, elements: !198)
!197 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !201, !204, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !222, !223, !239, !260, !261, !262, !263, !272, !282, !294, !298, !303, !309, !310, !325, !326, !337, !338, !339, !340, !341, !342, !353, !357, !361, !362, !363, !367, !368, !369, !370, !374, !375, !376, !377, !378, !381, !393, !400, !401, !402, !406, !2328, !2329, !2337, !2341, !2342, !2343}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !196, file: !197, line: 236, baseType: !200, size: 8)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !96, line: 79, baseType: !102)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !197, line: 237, baseType: !202, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 104, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !107)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !197, line: 238, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !96, line: 107, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !208)
!208 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !196, file: !197, line: 244, baseType: !202, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !196, file: !197, line: 252, baseType: !202, size: 32, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !196, file: !197, line: 263, baseType: !202, size: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !196, file: !197, line: 265, baseType: !202, size: 32, offset: 224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !196, file: !197, line: 266, baseType: !202, size: 32, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !196, file: !197, line: 272, baseType: !5, size: 32, offset: 288)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !196, file: !197, line: 273, baseType: !5, size: 32, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !196, file: !197, line: 275, baseType: !5, size: 32, offset: 352)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !196, file: !197, line: 276, baseType: !5, size: 32, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !196, file: !197, line: 285, baseType: !5, size: 32, offset: 416)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 288, baseType: !220, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !196, file: !197, line: 289, baseType: !153, size: 32, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !196, file: !197, line: 292, baseType: !224, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !197, line: 101, size: 128, elements: !227)
!227 = !{!228, !238}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !226, file: !197, line: 102, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!153, !232, !153, !233}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !197, line: 87, size: 64, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !234, file: !197, line: 88, baseType: !203, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !234, file: !197, line: 89, baseType: !203, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !226, file: !197, line: 104, baseType: !229, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !196, file: !197, line: 295, baseType: !240, size: 64, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !197, line: 176, size: 192, elements: !243)
!243 = !{!244, !245, !254}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !242, file: !197, line: 177, baseType: !153, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !242, file: !197, line: 178, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!153, !232, !153, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !197, line: 138, size: 64, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !250, file: !197, line: 139, baseType: !153, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !250, file: !197, line: 140, baseType: !153, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !242, file: !197, line: 180, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!153, !232, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !196, file: !197, line: 298, baseType: !5, size: 32, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !196, file: !197, line: 301, baseType: !5, size: 32, offset: 736)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !196, file: !197, line: 306, baseType: !153, size: 32, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !196, file: !197, line: 307, baseType: !264, size: 64, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !197, line: 36, size: 192, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !265, file: !197, line: 37, baseType: !205, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !265, file: !197, line: 38, baseType: !202, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !265, file: !197, line: 39, baseType: !202, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !265, file: !197, line: 40, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !196, file: !197, line: 313, baseType: !273, size: 64, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!153, !232, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !197, line: 30, size: 192, elements: !278)
!278 = !{!279, !280, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !277, file: !197, line: 31, baseType: !205, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !277, file: !197, line: 32, baseType: !205, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !277, file: !197, line: 33, baseType: !205, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !196, file: !197, line: 314, baseType: !283, size: 64, offset: 960)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!153, !232, !286, !140, !289, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !96, line: 46, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !142, line: 88, baseType: !288)
!288 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !96, line: 158, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !96, line: 153, baseType: !206)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !196, file: !197, line: 316, baseType: !295, size: 64, offset: 1024)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!153, !232, !286, !140}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !196, file: !197, line: 317, baseType: !299, size: 64, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!153, !232, !286, !140, !289, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !196, file: !197, line: 319, baseType: !304, size: 64, offset: 1152)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!153, !232, !286, !140, !289, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !196, file: !197, line: 321, baseType: !304, size: 64, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !196, file: !197, line: 323, baseType: !311, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!153, !232, !286, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !197, line: 64, size: 512, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !315, file: !197, line: 65, baseType: !5, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !197, line: 66, baseType: !140, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !315, file: !197, line: 67, baseType: !140, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !315, file: !197, line: 68, baseType: !140, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !315, file: !197, line: 69, baseType: !140, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !315, file: !197, line: 70, baseType: !202, size: 32, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !315, file: !197, line: 71, baseType: !110, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !315, file: !197, line: 72, baseType: !110, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !196, file: !197, line: 325, baseType: !311, size: 64, offset: 1344)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !196, file: !197, line: 327, baseType: !327, size: 64, offset: 1408)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!153, !232, !140, !289, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !332, line: 146, size: 96, elements: !333)
!332 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !331, file: !332, line: 147, baseType: !107, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !331, file: !332, line: 148, baseType: !107, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !331, file: !332, line: 149, baseType: !107, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !196, file: !197, line: 329, baseType: !299, size: 64, offset: 1472)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !196, file: !197, line: 331, baseType: !327, size: 64, offset: 1536)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !196, file: !197, line: 333, baseType: !299, size: 64, offset: 1600)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !196, file: !197, line: 335, baseType: !299, size: 64, offset: 1664)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !196, file: !197, line: 337, baseType: !295, size: 64, offset: 1728)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !196, file: !197, line: 339, baseType: !343, size: 64, offset: 1792)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!153, !232, !346, !144, !286, !289}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !349, line: 15, size: 128, elements: !350)
!349 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !348, file: !349, line: 16, baseType: !109, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !348, file: !349, line: 17, baseType: !140, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !196, file: !197, line: 341, baseType: !354, size: 64, offset: 1856)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !232}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !196, file: !197, line: 342, baseType: !358, size: 64, offset: 1920)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!153, !232, !286, !205}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !196, file: !197, line: 343, baseType: !358, size: 64, offset: 1984)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !196, file: !197, line: 344, baseType: !358, size: 64, offset: 2048)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !196, file: !197, line: 345, baseType: !364, size: 64, offset: 2112)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!153, !232, !286}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !196, file: !197, line: 346, baseType: !364, size: 64, offset: 2176)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !196, file: !197, line: 347, baseType: !364, size: 64, offset: 2240)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !196, file: !197, line: 348, baseType: !295, size: 64, offset: 2304)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !196, file: !197, line: 349, baseType: !371, size: 64, offset: 2368)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!153, !232}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !196, file: !197, line: 350, baseType: !354, size: 64, offset: 2432)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !196, file: !197, line: 351, baseType: !354, size: 64, offset: 2496)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !196, file: !197, line: 356, baseType: !371, size: 64, offset: 2560)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !196, file: !197, line: 357, baseType: !354, size: 64, offset: 2624)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !196, file: !197, line: 363, baseType: !379, size: 8, offset: 2688)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 30, baseType: !380)
!380 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !196, file: !197, line: 365, baseType: !382, size: 192, offset: 2752)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !383, line: 54, size: 192, elements: !384)
!383 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!384 = !{!385, !391, !392}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !382, file: !383, line: 55, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !383, line: 51, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!153, !390, !144, !109}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !383, line: 56, baseType: !390, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !382, file: !383, line: 57, baseType: !153, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !196, file: !197, line: 368, baseType: !394, size: 128, offset: 2944)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !332, line: 250, size: 128, elements: !395)
!395 = !{!396, !397, !398, !399}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !394, file: !332, line: 251, baseType: !107, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !394, file: !332, line: 252, baseType: !107, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !394, file: !332, line: 253, baseType: !107, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !394, file: !332, line: 254, baseType: !107, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !196, file: !197, line: 370, baseType: !153, size: 32, offset: 3072)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !196, file: !197, line: 372, baseType: !109, size: 64, offset: 3136)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !196, file: !197, line: 374, baseType: !403, size: 64, offset: 3200)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !405, line: 76, flags: DIFlagFwdDecl)
!405 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !196, file: !197, line: 375, baseType: !407, size: 5568, offset: 3264)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !408)
!408 = !{!409, !1854, !1856, !1859, !1860, !1911, !2005, !2006, !2007, !2008, !2009, !2018, !2123, !2136, !2139, !2140, !2144, !2146, !2147, !2148, !2152, !2158, !2159, !2162, !2277, !2278, !2281, !2282, !2283, !2284, !2316, !2317, !2318, !2321, !2324, !2325, !2326, !2327}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !407, file: !28, line: 462, baseType: !410, size: 512)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !411, line: 64, size: 512, elements: !412)
!411 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!412 = !{!413, !414, !420, !422, !480, !1692, !1844, !1849, !1850, !1851, !1852, !1853}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !410, file: !411, line: 65, baseType: !220, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !410, file: !411, line: 66, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 178, size: 128, elements: !416)
!416 = !{!417, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !96, line: 179, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !415, file: !96, line: 179, baseType: !418, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !410, file: !411, line: 67, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !410, file: !411, line: 68, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !411, line: 192, size: 704, elements: !425)
!425 = !{!426, !427, !442, !443}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !424, file: !411, line: 193, baseType: !415, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !424, file: !411, line: 194, baseType: !428, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !429, line: 83, baseType: !430)
!429 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !429, line: 71, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !429, line: 72, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !429, line: 72, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !433, file: !429, line: 73, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !429, line: 20, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !436, file: !429, line: 21, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !440, line: 25, baseType: !441)
!440 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 25, elements: !145)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !424, file: !411, line: 195, baseType: !410, size: 512, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !424, file: !411, line: 196, baseType: !444, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !411, line: 156, size: 192, elements: !447)
!447 = !{!448, !453, !458}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !446, file: !411, line: 157, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!153, !423, !421}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !446, file: !411, line: 158, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!220, !423, !421}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !446, file: !411, line: 159, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!153, !423, !421, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !411, line: 148, size: 20736, elements: !465)
!465 = !{!466, !470, !474, !475, !479}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !464, file: !411, line: 149, baseType: !467, size: 192)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 192, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 3)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !464, file: !411, line: 150, baseType: !471, size: 4096, offset: 192)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 4096, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !464, file: !411, line: 151, baseType: !153, size: 32, offset: 4288)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !464, file: !411, line: 152, baseType: !476, size: 16384, offset: 4320)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 16384, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 2048)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !464, file: !411, line: 153, baseType: !153, size: 32, offset: 20704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !410, file: !411, line: 69, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !411, line: 138, size: 448, elements: !483)
!483 = !{!484, !488, !511, !513, !1637, !1670, !1674}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !482, file: !411, line: 139, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !421}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !482, file: !411, line: 140, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !492, line: 230, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !507}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !491, file: !492, line: 231, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !421, !501, !124}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !96, line: 60, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !142, line: 73, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !142, line: 15, baseType: !128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !492, line: 30, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !502, file: !492, line: 31, baseType: !220, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !502, file: !492, line: 32, baseType: !506, size: 16, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !96, line: 19, baseType: !104)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !491, file: !492, line: 232, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!498, !421, !501, !220, !140}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !482, file: !411, line: 141, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !482, file: !411, line: 142, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !492, line: 84, size: 320, elements: !518)
!518 = !{!519, !520, !524, !1634, !1635}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !517, file: !492, line: 85, baseType: !220, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !517, file: !492, line: 86, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!506, !421, !501, !153}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !517, file: !492, line: 88, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!506, !421, !528, !153}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !492, line: 168, size: 448, elements: !530)
!530 = !{!531, !532, !533, !534, !541, !542}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !529, file: !492, line: 169, baseType: !502, size: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !529, file: !492, line: 170, baseType: !140, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !529, file: !492, line: 171, baseType: !109, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !529, file: !492, line: 172, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!498, !538, !421, !528, !124, !286, !140}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !540, line: 526, flags: DIFlagFwdDecl)
!540 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !529, file: !492, line: 174, baseType: !535, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !529, file: !492, line: 176, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!153, !538, !421, !528, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !548, line: 305, size: 1472, elements: !549)
!548 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !551, !552, !553, !554, !562, !563, !1608, !1614, !1615, !1620, !1621, !1624, !1628, !1629, !1630, !1631, !1632}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !547, file: !548, line: 308, baseType: !144, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !547, file: !548, line: 309, baseType: !144, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !547, file: !548, line: 313, baseType: !546, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !547, file: !548, line: 313, baseType: !546, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !547, file: !548, line: 315, baseType: !555, size: 192, align: 64, offset: 256)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !556, line: 24, size: 192, align: 64, elements: !557)
!556 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558, !559, !561}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !555, file: !556, line: 25, baseType: !144, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !555, file: !556, line: 26, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !555, file: !556, line: 27, baseType: !560, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !547, file: !548, line: 323, baseType: !144, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !547, file: !548, line: 327, baseType: !564, size: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !548, line: 388, size: 7296, elements: !566)
!566 = !{!567, !1604}
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !548, line: 389, baseType: !568, size: 7296)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !548, line: 389, size: 7296, elements: !569)
!569 = !{!570, !571, !575, !576, !580, !581, !582, !583, !584, !592, !597, !598, !599, !600, !609, !610, !611, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !646, !654, !657, !687, !688, !1575, !1576, !1579, !1582, !1583, !1586, !1587, !1588, !1591, !1603}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !568, file: !548, line: 390, baseType: !546, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !568, file: !548, line: 391, baseType: !572, size: 64, offset: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !556, line: 31, size: 64, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !572, file: !556, line: 32, baseType: !560, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !568, file: !548, line: 392, baseType: !206, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !568, file: !548, line: 394, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!144, !538, !144, !144, !144, !144}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !568, file: !548, line: 398, baseType: !144, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !568, file: !548, line: 399, baseType: !144, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !568, file: !548, line: 405, baseType: !144, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !568, file: !548, line: 406, baseType: !144, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !568, file: !548, line: 407, baseType: !585, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !540, line: 286, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 286, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !587, file: !540, line: 286, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !591, line: 18, baseType: !144)
!591 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !568, file: !548, line: 416, baseType: !593, size: 32, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !96, line: 168, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 166, size: 32, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !594, file: !96, line: 167, baseType: !153, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !568, file: !548, line: 428, baseType: !593, size: 32, offset: 608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !568, file: !548, line: 437, baseType: !593, size: 32, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !568, file: !548, line: 447, baseType: !593, size: 32, offset: 672)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !568, file: !548, line: 450, baseType: !601, size: 64, offset: 704)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !602, line: 13, baseType: !603)
!602 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !96, line: 175, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 173, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !604, file: !96, line: 174, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !568, file: !548, line: 452, baseType: !153, size: 32, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !568, file: !548, line: 454, baseType: !428, offset: 800)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !568, file: !548, line: 457, baseType: !612, size: 256, offset: 832)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !613, line: 35, size: 256, elements: !614)
!613 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!614 = !{!615, !616, !617, !619}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !612, file: !613, line: 36, baseType: !601, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !612, file: !613, line: 42, baseType: !601, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !612, file: !613, line: 46, baseType: !618, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !429, line: 29, baseType: !436)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !612, file: !613, line: 47, baseType: !415, size: 128, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !568, file: !548, line: 459, baseType: !415, size: 128, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !568, file: !548, line: 466, baseType: !144, size: 64, offset: 1216)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !568, file: !548, line: 467, baseType: !144, size: 64, offset: 1280)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !568, file: !548, line: 469, baseType: !144, size: 64, offset: 1344)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !568, file: !548, line: 470, baseType: !144, size: 64, offset: 1408)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !568, file: !548, line: 471, baseType: !603, size: 64, offset: 1472)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !568, file: !548, line: 472, baseType: !144, size: 64, offset: 1536)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !568, file: !548, line: 473, baseType: !144, size: 64, offset: 1600)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !568, file: !548, line: 474, baseType: !144, size: 64, offset: 1664)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !568, file: !548, line: 475, baseType: !144, size: 64, offset: 1728)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !568, file: !548, line: 477, baseType: !428, offset: 1792)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !568, file: !548, line: 478, baseType: !144, size: 64, offset: 1792)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !568, file: !548, line: 478, baseType: !144, size: 64, offset: 1856)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !568, file: !548, line: 478, baseType: !144, size: 64, offset: 1920)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !568, file: !548, line: 478, baseType: !144, size: 64, offset: 1984)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !568, file: !548, line: 479, baseType: !144, size: 64, offset: 2048)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !568, file: !548, line: 479, baseType: !144, size: 64, offset: 2112)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !568, file: !548, line: 479, baseType: !144, size: 64, offset: 2176)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !568, file: !548, line: 480, baseType: !144, size: 64, offset: 2240)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !568, file: !548, line: 480, baseType: !144, size: 64, offset: 2304)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !568, file: !548, line: 480, baseType: !144, size: 64, offset: 2368)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !568, file: !548, line: 480, baseType: !144, size: 64, offset: 2432)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !568, file: !548, line: 482, baseType: !643, size: 2816, offset: 2496)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 2816, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 44)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !568, file: !548, line: 488, baseType: !647, size: 256, offset: 5312)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !648, line: 60, size: 256, elements: !649)
!648 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !647, file: !648, line: 61, baseType: !651, size: 256)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 4)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !568, file: !548, line: 490, baseType: !655, size: 64, offset: 5568)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !548, line: 490, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !568, file: !548, line: 493, baseType: !658, size: 896, offset: 5632)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !659, line: 53, baseType: !660)
!659 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 13, size: 896, elements: !661)
!661 = !{!662, !663, !664, !665, !668, !669, !676, !677, !681, !682, !683}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !660, file: !659, line: 18, baseType: !206, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !660, file: !659, line: 28, baseType: !603, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !660, file: !659, line: 31, baseType: !612, size: 256, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !660, file: !659, line: 32, baseType: !666, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !659, line: 32, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !660, file: !659, line: 37, baseType: !104, size: 16, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !660, file: !659, line: 40, baseType: !670, size: 192, offset: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !671, line: 53, size: 192, elements: !672)
!671 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!672 = !{!673, !674, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !670, file: !671, line: 54, baseType: !601, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !670, file: !671, line: 55, baseType: !428, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !670, file: !671, line: 59, baseType: !415, size: 128, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !660, file: !659, line: 41, baseType: !109, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !660, file: !659, line: 42, baseType: !678, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !659, line: 42, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !660, file: !659, line: 44, baseType: !593, size: 32, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !660, file: !659, line: 50, baseType: !137, size: 16, offset: 864)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !660, file: !659, line: 51, baseType: !684, size: 16, offset: 880)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !686)
!686 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !548, line: 495, baseType: !144, size: 64, offset: 6528)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !568, file: !548, line: 497, baseType: !689, size: 64, offset: 6592)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !548, line: 381, size: 384, elements: !691)
!691 = !{!692, !693, !1574}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !690, file: !548, line: 382, baseType: !593, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !690, file: !548, line: 383, baseType: !694, size: 128, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !548, line: 376, size: 128, elements: !695)
!695 = !{!696, !1572}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !694, file: !548, line: 377, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !699, line: 640, size: 48640, elements: !700)
!699 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !707, !708, !709, !715, !716, !717, !718, !719, !720, !721, !722, !726, !744, !755, !847, !848, !849, !860, !861, !863, !864, !865, !866, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !945, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !1001, !1003, !1004, !1005, !1017, !1019, !1020, !1021, !1022, !1023, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1047, !1052, !1056, !1057, !1058, !1061, !1065, !1068, !1071, !1074, !1077, !1080, !1083, !1086, !1092, !1093, !1094, !1100, !1101, !1102, !1103, !1104, !1113, !1114, !1115, !1116, !1117, !1122, !1123, !1124, !1127, !1128, !1131, !1134, !1137, !1140, !1143, !1146, !1147, !1227, !1230, !1233, !1234, !1237, !1238, !1239, !1243, !1244, !1245, !1258, !1259, !1260, !1270, !1275, !1278, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !698, file: !699, line: 646, baseType: !702, size: 128)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !703, line: 56, size: 128, elements: !704)
!703 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !703, line: 57, baseType: !144, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !702, file: !703, line: 58, baseType: !203, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !698, file: !699, line: 649, baseType: !127, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !698, file: !699, line: 657, baseType: !109, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !698, file: !699, line: 658, baseType: !710, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !711, line: 113, baseType: !712)
!711 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !711, line: 111, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !712, file: !711, line: 112, baseType: !593, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !699, line: 660, baseType: !5, size: 32, offset: 288)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !698, file: !699, line: 661, baseType: !5, size: 32, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !698, file: !699, line: 684, baseType: !153, size: 32, offset: 352)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !698, file: !699, line: 686, baseType: !153, size: 32, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !698, file: !699, line: 687, baseType: !153, size: 32, offset: 416)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !698, file: !699, line: 688, baseType: !153, size: 32, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !698, file: !699, line: 689, baseType: !5, size: 32, offset: 480)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !698, file: !699, line: 691, baseType: !723, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !699, line: 691, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !698, file: !699, line: 692, baseType: !727, size: 832, offset: 576)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !699, line: 451, size: 832, elements: !728)
!728 = !{!729, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !727, file: !699, line: 453, baseType: !730, size: 128)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !699, line: 325, size: 128, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !730, file: !699, line: 326, baseType: !144, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !730, file: !699, line: 327, baseType: !203, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !727, file: !699, line: 454, baseType: !555, size: 192, align: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !727, file: !699, line: 455, baseType: !415, size: 128, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !727, file: !699, line: 456, baseType: !5, size: 32, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !727, file: !699, line: 458, baseType: !206, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !727, file: !699, line: 459, baseType: !206, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !727, file: !699, line: 460, baseType: !206, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !727, file: !699, line: 461, baseType: !206, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !727, file: !699, line: 463, baseType: !206, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !727, file: !699, line: 465, baseType: !743, offset: 832)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !699, line: 415, elements: !145)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !698, file: !699, line: 693, baseType: !745, size: 384, offset: 1408)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !699, line: 489, size: 384, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !745, file: !699, line: 490, baseType: !415, size: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !745, file: !699, line: 491, baseType: !144, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !745, file: !699, line: 492, baseType: !144, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !745, file: !699, line: 493, baseType: !5, size: 32, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !745, file: !699, line: 494, baseType: !104, size: 16, offset: 288)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !745, file: !699, line: 495, baseType: !104, size: 16, offset: 304)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !745, file: !699, line: 497, baseType: !754, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !698, file: !699, line: 697, baseType: !756, size: 1792, offset: 1792)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !699, line: 507, size: 1792, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !844, !845}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !756, file: !699, line: 508, baseType: !555, size: 192, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !756, file: !699, line: 515, baseType: !206, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !756, file: !699, line: 516, baseType: !206, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !756, file: !699, line: 517, baseType: !206, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !756, file: !699, line: 518, baseType: !206, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !756, file: !699, line: 519, baseType: !206, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !756, file: !699, line: 526, baseType: !607, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !756, file: !699, line: 527, baseType: !206, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !699, line: 528, baseType: !5, size: 32, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !756, file: !699, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !756, file: !699, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !756, file: !699, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !756, file: !699, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !756, file: !699, line: 563, baseType: !772, size: 512, offset: 704)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !773)
!773 = !{!774, !782, !783, !788, !840, !841, !842, !843}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !772, file: !4, line: 119, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !776, line: 9, size: 256, elements: !777)
!776 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !775, file: !776, line: 10, baseType: !555, size: 192, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !775, file: !776, line: 11, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !781, line: 29, baseType: !607)
!781 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !772, file: !4, line: 120, baseType: !780, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !772, file: !4, line: 121, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!3, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !772, file: !4, line: 122, baseType: !789, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !791)
!791 = !{!792, !812, !813, !816, !826, !827, !835, !839}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !790, file: !4, line: 160, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !794, file: !4, line: 215, baseType: !618)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !794, file: !4, line: 216, baseType: !5, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !794, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !794, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !794, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !794, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !794, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !794, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !794, file: !4, line: 233, baseType: !780, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !794, file: !4, line: 234, baseType: !787, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !794, file: !4, line: 235, baseType: !780, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !794, file: !4, line: 236, baseType: !787, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !794, file: !4, line: 237, baseType: !809, size: 4096, offset: 512)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 4096, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 8)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !790, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !790, file: !4, line: 162, baseType: !814, size: 32, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 27, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !142, line: 96, baseType: !153)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !790, file: !4, line: 163, baseType: !817, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !818, line: 276, baseType: !819)
!818 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !818, line: 276, size: 32, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !819, file: !818, line: 276, baseType: !822, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !818, line: 70, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !818, line: 65, size: 32, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !823, file: !818, line: 66, baseType: !5, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !790, file: !4, line: 164, baseType: !787, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !790, file: !4, line: 165, baseType: !828, size: 128, offset: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !776, line: 14, size: 128, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !828, file: !776, line: 15, baseType: !831, size: 128)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !556, line: 125, size: 128, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !831, file: !556, line: 126, baseType: !572, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !831, file: !556, line: 127, baseType: !560, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !790, file: !4, line: 166, baseType: !836, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!780}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !790, file: !4, line: 167, baseType: !780, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !772, file: !4, line: 123, baseType: !98, size: 8, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !772, file: !4, line: 124, baseType: !98, size: 8, offset: 456)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !772, file: !4, line: 125, baseType: !98, size: 8, offset: 464)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !772, file: !4, line: 126, baseType: !98, size: 8, offset: 472)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !756, file: !699, line: 572, baseType: !772, size: 512, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !756, file: !699, line: 580, baseType: !846, size: 64, offset: 1728)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !698, file: !699, line: 721, baseType: !5, size: 32, offset: 3584)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !698, file: !699, line: 722, baseType: !153, size: 32, offset: 3616)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !698, file: !699, line: 723, baseType: !850, size: 64, offset: 3648)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !853, line: 17, baseType: !854)
!853 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !853, line: 17, size: 64, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !854, file: !853, line: 17, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 1)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !698, file: !699, line: 724, baseType: !852, size: 64, offset: 3712)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !698, file: !699, line: 749, baseType: !862, offset: 3776)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !699, line: 290, elements: !145)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !698, file: !699, line: 751, baseType: !415, size: 128, offset: 3776)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !698, file: !699, line: 757, baseType: !564, size: 64, offset: 3904)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !698, file: !699, line: 758, baseType: !564, size: 64, offset: 3968)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !698, file: !699, line: 761, baseType: !867, size: 320, offset: 4032)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !648, line: 34, size: 320, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !867, file: !648, line: 35, baseType: !206, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !867, file: !648, line: 36, baseType: !871, size: 256, offset: 64)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 256, elements: !652)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !698, file: !699, line: 766, baseType: !153, size: 32, offset: 4352)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !698, file: !699, line: 767, baseType: !153, size: 32, offset: 4384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !698, file: !699, line: 768, baseType: !153, size: 32, offset: 4416)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !698, file: !699, line: 770, baseType: !153, size: 32, offset: 4448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !698, file: !699, line: 772, baseType: !144, size: 64, offset: 4480)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !698, file: !699, line: 775, baseType: !5, size: 32, offset: 4544)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !698, file: !699, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !698, file: !699, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !698, file: !699, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !698, file: !699, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !698, file: !699, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !698, file: !699, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !698, file: !699, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !698, file: !699, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !698, file: !699, line: 831, baseType: !144, size: 64, offset: 4672)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !698, file: !699, line: 833, baseType: !888, size: 384, offset: 4736)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !889)
!889 = !{!890, !895}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !888, file: !10, line: 26, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!128, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !10, line: 27, baseType: !896, size: 320, offset: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !888, file: !10, line: 27, size: 320, elements: !897)
!897 = !{!898, !908, !935}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !896, file: !10, line: 36, baseType: !899, size: 320)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !10, line: 29, size: 320, elements: !900)
!900 = !{!901, !903, !904, !905, !906, !907}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !899, file: !10, line: 30, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !899, file: !10, line: 31, baseType: !203, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !899, file: !10, line: 32, baseType: !203, size: 32, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !899, file: !10, line: 33, baseType: !203, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !899, file: !10, line: 34, baseType: !206, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !899, file: !10, line: 35, baseType: !902, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !896, file: !10, line: 46, baseType: !909, size: 192)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !10, line: 38, size: 192, elements: !910)
!910 = !{!911, !912, !913, !934}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !909, file: !10, line: 39, baseType: !814, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !909, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !10, line: 41, baseType: !914, size: 64, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !10, line: 41, size: 64, elements: !915)
!915 = !{!916, !924}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !914, file: !10, line: 42, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !919, line: 7, size: 128, elements: !920)
!919 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !918, file: !919, line: 8, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !142, line: 93, baseType: !288)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !918, file: !919, line: 9, baseType: !288, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !914, file: !10, line: 43, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !927, line: 7, size: 64, elements: !928)
!927 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!928 = !{!929, !933}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !926, file: !927, line: 8, baseType: !930, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !927, line: 5, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !153)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !926, file: !927, line: 9, baseType: !931, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !909, file: !10, line: 45, baseType: !206, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !896, file: !10, line: 54, baseType: !936, size: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !10, line: 48, size: 256, elements: !937)
!937 = !{!938, !941, !942, !943, !944}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !936, file: !10, line: 49, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !936, file: !10, line: 50, baseType: !153, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !936, file: !10, line: 51, baseType: !153, size: 32, offset: 96)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !936, file: !10, line: 52, baseType: !144, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !936, file: !10, line: 53, baseType: !144, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !698, file: !699, line: 835, baseType: !946, size: 32, offset: 5120)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !96, line: 22, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !142, line: 28, baseType: !153)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !698, file: !699, line: 836, baseType: !946, size: 32, offset: 5152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !698, file: !699, line: 840, baseType: !144, size: 64, offset: 5184)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !698, file: !699, line: 849, baseType: !697, size: 64, offset: 5248)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !698, file: !699, line: 852, baseType: !697, size: 64, offset: 5312)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !698, file: !699, line: 857, baseType: !415, size: 128, offset: 5376)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !698, file: !699, line: 858, baseType: !415, size: 128, offset: 5504)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !698, file: !699, line: 859, baseType: !697, size: 64, offset: 5632)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !698, file: !699, line: 867, baseType: !415, size: 128, offset: 5696)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !698, file: !699, line: 868, baseType: !415, size: 128, offset: 5824)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !698, file: !699, line: 871, baseType: !958, size: 64, offset: 5952)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !960, line: 59, size: 768, elements: !961)
!960 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!961 = !{!962, !963, !964, !965, !976, !977, !984, !993}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !959, file: !960, line: 61, baseType: !710, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !959, file: !960, line: 62, baseType: !5, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !959, file: !960, line: 63, baseType: !428, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !959, file: !960, line: 65, baseType: !966, size: 256, offset: 64)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 256, elements: !652)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !96, line: 182, size: 64, elements: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !967, file: !96, line: 183, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !96, line: 186, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !96, line: 187, baseType: !970, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !971, file: !96, line: 187, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !959, file: !960, line: 66, baseType: !967, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !959, file: !960, line: 68, baseType: !978, size: 128, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !979, line: 40, baseType: !980)
!979 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !979, line: 36, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !980, file: !979, line: 37, baseType: !428)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !980, file: !979, line: 38, baseType: !415, size: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !959, file: !960, line: 69, baseType: !985, size: 128, align: 64, offset: 512)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !96, line: 216, size: 128, align: 64, elements: !986)
!986 = !{!987, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !985, file: !96, line: 217, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !985, file: !96, line: 218, baseType: !990, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !988}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !959, file: !960, line: 70, baseType: !994, size: 128, offset: 640)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, size: 128, elements: !858)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !960, line: 54, size: 128, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !995, file: !960, line: 55, baseType: !153, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !995, file: !960, line: 56, baseType: !999, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !960, line: 56, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !698, file: !699, line: 872, baseType: !1002, size: 512, offset: 6016)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 512, elements: !652)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !698, file: !699, line: 873, baseType: !415, size: 128, offset: 6528)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !698, file: !699, line: 874, baseType: !415, size: 128, offset: 6656)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !698, file: !699, line: 876, baseType: !1006, size: 64, offset: 6784)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1008, line: 26, size: 192, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1007, file: !1008, line: 27, baseType: !5, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1007, file: !1008, line: 28, baseType: !1012, size: 128, offset: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1013, line: 43, size: 128, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1012, file: !1013, line: 44, baseType: !618)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1012, file: !1013, line: 45, baseType: !415, size: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !698, file: !699, line: 879, baseType: !1018, size: 64, offset: 6848)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !698, file: !699, line: 882, baseType: !1018, size: 64, offset: 6912)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !698, file: !699, line: 884, baseType: !206, size: 64, offset: 6976)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !698, file: !699, line: 885, baseType: !206, size: 64, offset: 7040)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !698, file: !699, line: 890, baseType: !206, size: 64, offset: 7104)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !698, file: !699, line: 891, baseType: !1024, size: 128, offset: 7168)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !699, line: 242, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1024, file: !699, line: 244, baseType: !206, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1024, file: !699, line: 245, baseType: !206, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1024, file: !699, line: 246, baseType: !618, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !698, file: !699, line: 900, baseType: !144, size: 64, offset: 7296)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !698, file: !699, line: 901, baseType: !144, size: 64, offset: 7360)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !698, file: !699, line: 904, baseType: !206, size: 64, offset: 7424)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !698, file: !699, line: 907, baseType: !206, size: 64, offset: 7488)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !698, file: !699, line: 910, baseType: !144, size: 64, offset: 7552)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !698, file: !699, line: 911, baseType: !144, size: 64, offset: 7616)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !698, file: !699, line: 914, baseType: !1036, size: 640, offset: 7680)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1037, line: 123, size: 640, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039, !1045, !1046}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1036, file: !1037, line: 124, baseType: !1040, size: 576)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 576, elements: !468)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1037, line: 108, size: 192, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1041, file: !1037, line: 109, baseType: !206, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1041, file: !1037, line: 110, baseType: !828, size: 128, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1036, file: !1037, line: 125, baseType: !5, size: 32, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1036, file: !1037, line: 126, baseType: !5, size: 32, offset: 608)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !698, file: !699, line: 917, baseType: !1048, size: 192, offset: 8320)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1037, line: 134, size: 192, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1048, file: !1037, line: 135, baseType: !985, size: 128, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1048, file: !1037, line: 136, baseType: !5, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !698, file: !699, line: 923, baseType: !1053, size: 64, offset: 8512)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !699, line: 923, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !698, file: !699, line: 926, baseType: !1053, size: 64, offset: 8576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !698, file: !699, line: 929, baseType: !1053, size: 64, offset: 8640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !698, file: !699, line: 933, baseType: !1059, size: 64, offset: 8704)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !699, line: 933, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !698, file: !699, line: 943, baseType: !1062, size: 128, offset: 8768)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !698, file: !699, line: 945, baseType: !1066, size: 64, offset: 8896)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !699, line: 49, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !698, file: !699, line: 956, baseType: !1069, size: 64, offset: 8960)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !699, line: 45, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !698, file: !699, line: 959, baseType: !1072, size: 64, offset: 9024)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !699, line: 959, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !698, file: !699, line: 962, baseType: !1075, size: 64, offset: 9088)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !699, line: 66, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !698, file: !699, line: 966, baseType: !1078, size: 64, offset: 9152)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !699, line: 50, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !698, file: !699, line: 969, baseType: !1081, size: 64, offset: 9216)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1037, line: 223, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !698, file: !699, line: 970, baseType: !1084, size: 64, offset: 9280)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !699, line: 62, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !698, file: !699, line: 971, baseType: !1087, size: 64, offset: 9344)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1088, line: 25, baseType: !1089)
!1088 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1088, line: 23, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1089, file: !1088, line: 24, baseType: !857, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !698, file: !699, line: 972, baseType: !1087, size: 64, offset: 9408)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !698, file: !699, line: 974, baseType: !1087, size: 64, offset: 9472)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !698, file: !699, line: 975, baseType: !1095, size: 192, offset: 9536)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1096, line: 30, size: 192, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1095, file: !1096, line: 31, baseType: !415, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1095, file: !1096, line: 32, baseType: !1087, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !698, file: !699, line: 976, baseType: !144, size: 64, offset: 9728)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !698, file: !699, line: 977, baseType: !140, size: 64, offset: 9792)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !698, file: !699, line: 978, baseType: !5, size: 32, offset: 9856)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !698, file: !699, line: 980, baseType: !988, size: 64, offset: 9920)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !698, file: !699, line: 989, baseType: !1105, size: 128, offset: 9984)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1106, line: 35, size: 128, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1105, file: !1106, line: 36, baseType: !153, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1105, file: !1106, line: 37, baseType: !593, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1105, file: !1106, line: 38, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1106, line: 23, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !698, file: !699, line: 992, baseType: !206, size: 64, offset: 10112)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !698, file: !699, line: 993, baseType: !206, size: 64, offset: 10176)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !698, file: !699, line: 996, baseType: !428, offset: 10240)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !698, file: !699, line: 999, baseType: !618, offset: 10240)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !698, file: !699, line: 1001, baseType: !1118, size: 64, offset: 10240)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !699, line: 636, size: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !699, line: 637, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !698, file: !699, line: 1005, baseType: !831, size: 128, offset: 10304)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !698, file: !699, line: 1007, baseType: !697, size: 64, offset: 10432)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !698, file: !699, line: 1009, baseType: !1125, size: 64, offset: 10496)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !699, line: 1009, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !698, file: !699, line: 1043, baseType: !109, size: 64, offset: 10560)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !698, file: !699, line: 1046, baseType: !1129, size: 64, offset: 10624)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !699, line: 41, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !698, file: !699, line: 1050, baseType: !1132, size: 64, offset: 10688)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !699, line: 42, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !698, file: !699, line: 1054, baseType: !1135, size: 64, offset: 10752)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !699, line: 55, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !698, file: !699, line: 1056, baseType: !1138, size: 64, offset: 10816)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !699, line: 40, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !698, file: !699, line: 1058, baseType: !1141, size: 64, offset: 10880)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !699, line: 47, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !698, file: !699, line: 1061, baseType: !1144, size: 64, offset: 10944)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !699, line: 43, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !698, file: !699, line: 1064, baseType: !144, size: 64, offset: 11008)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !698, file: !699, line: 1065, baseType: !1148, size: 64, offset: 11072)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1096, line: 14, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1096, line: 12, size: 384, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1096, line: 13, baseType: !1153, size: 384)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !1096, line: 13, size: 384, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1153, file: !1096, line: 13, baseType: !153, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1153, file: !1096, line: 13, baseType: !153, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1153, file: !1096, line: 13, baseType: !153, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1153, file: !1096, line: 13, baseType: !1159, size: 256, offset: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1160, line: 32, size: 256, elements: !1161)
!1160 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !{!1162, !1168, !1181, !1187, !1196, !1216, !1221}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1159, file: !1160, line: 37, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 34, size: 64, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1163, file: !1160, line: 35, baseType: !947, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1163, file: !1160, line: 36, baseType: !1167, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !142, line: 49, baseType: !5)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1159, file: !1160, line: 45, baseType: !1169, size: 192)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 40, size: 192, elements: !1170)
!1170 = !{!1171, !1173, !1174, !1180}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1169, file: !1160, line: 41, baseType: !1172, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !142, line: 95, baseType: !153)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1169, file: !1160, line: 42, baseType: !153, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1169, file: !1160, line: 43, baseType: !1175, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1160, line: 11, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1160, line: 8, size: 64, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1176, file: !1160, line: 9, baseType: !153, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1176, file: !1160, line: 10, baseType: !109, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1169, file: !1160, line: 44, baseType: !153, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1159, file: !1160, line: 52, baseType: !1182, size: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 48, size: 128, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1182, file: !1160, line: 49, baseType: !947, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1182, file: !1160, line: 50, baseType: !1167, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1182, file: !1160, line: 51, baseType: !1175, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1159, file: !1160, line: 61, baseType: !1188, size: 256)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 55, size: 256, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1195}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1188, file: !1160, line: 56, baseType: !947, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1188, file: !1160, line: 57, baseType: !1167, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1188, file: !1160, line: 58, baseType: !153, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1188, file: !1160, line: 59, baseType: !1194, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !142, line: 94, baseType: !500)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1188, file: !1160, line: 60, baseType: !1194, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1159, file: !1160, line: 95, baseType: !1197, size: 256)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 64, size: 256, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1197, file: !1160, line: 65, baseType: !109, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1160, line: 77, baseType: !1201, size: 192, offset: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1160, line: 77, size: 192, elements: !1202)
!1202 = !{!1203, !1204, !1211}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1201, file: !1160, line: 82, baseType: !686, size: 16)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1201, file: !1160, line: 88, baseType: !1205, size: 192)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !1160, line: 84, size: 192, elements: !1206)
!1206 = !{!1207, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1205, file: !1160, line: 85, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !810)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1205, file: !1160, line: 86, baseType: !109, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1205, file: !1160, line: 87, baseType: !109, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1201, file: !1160, line: 93, baseType: !1212, size: 96)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !1160, line: 90, size: 96, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1212, file: !1160, line: 91, baseType: !1208, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1212, file: !1160, line: 92, baseType: !107, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1159, file: !1160, line: 101, baseType: !1217, size: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 98, size: 128, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1217, file: !1160, line: 99, baseType: !128, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1217, file: !1160, line: 100, baseType: !153, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1159, file: !1160, line: 108, baseType: !1222, size: 128)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1159, file: !1160, line: 104, size: 128, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1222, file: !1160, line: 105, baseType: !109, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1222, file: !1160, line: 106, baseType: !153, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1222, file: !1160, line: 107, baseType: !5, size: 32, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !698, file: !699, line: 1067, baseType: !1228, offset: 11136)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1229, line: 12, elements: !145)
!1229 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !698, file: !699, line: 1099, baseType: !1231, size: 64, offset: 11136)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !699, line: 56, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !698, file: !699, line: 1103, baseType: !415, size: 128, offset: 11200)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !698, file: !699, line: 1104, baseType: !1235, size: 64, offset: 11328)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !699, line: 46, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !698, file: !699, line: 1105, baseType: !670, size: 192, offset: 11392)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !698, file: !699, line: 1106, baseType: !5, size: 32, offset: 11584)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !698, file: !699, line: 1109, baseType: !1240, size: 128, offset: 11648)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 128, elements: !122)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !699, line: 51, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !698, file: !699, line: 1110, baseType: !670, size: 192, offset: 11776)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !698, file: !699, line: 1111, baseType: !415, size: 128, offset: 11968)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !698, file: !699, line: 1173, baseType: !1246, size: 64, offset: 12096)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1248, line: 62, size: 256, align: 256, elements: !1249)
!1248 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251, !1252, !1257}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1247, file: !1248, line: 75, baseType: !107, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1247, file: !1248, line: 90, baseType: !107, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1247, file: !1248, line: 124, baseType: !1253, size: 64, offset: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !1248, line: 109, size: 64, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1253, file: !1248, line: 110, baseType: !207, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1253, file: !1248, line: 112, baseType: !207, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !1248, line: 144, baseType: !107, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !698, file: !699, line: 1174, baseType: !203, size: 32, offset: 12160)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !698, file: !699, line: 1179, baseType: !144, size: 64, offset: 12224)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !698, file: !699, line: 1182, baseType: !1261, size: 128, offset: 12288)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !648, line: 76, size: 128, elements: !1262)
!1262 = !{!1263, !1268, !1269}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1261, file: !648, line: 85, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1265, line: 7, size: 64, elements: !1266)
!1265 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1264, file: !1265, line: 12, baseType: !854, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1261, file: !648, line: 88, baseType: !379, size: 8, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1261, file: !648, line: 95, baseType: !379, size: 8, offset: 72)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !699, line: 1184, baseType: !1271, size: 128, offset: 12416)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !699, line: 1184, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1271, file: !699, line: 1185, baseType: !710, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1271, file: !699, line: 1186, baseType: !985, size: 128, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !698, file: !699, line: 1190, baseType: !1276, size: 64, offset: 12544)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !349, line: 13, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !698, file: !699, line: 1192, baseType: !1279, size: 128, offset: 12608)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !648, line: 64, size: 128, elements: !1280)
!1280 = !{!1281, !1374, !1375}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1279, file: !648, line: 65, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !548, line: 68, size: 512, align: 128, elements: !1284)
!1284 = !{!1285, !1286, !1366, !1373}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1283, file: !548, line: 69, baseType: !144, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !548, line: 77, baseType: !1287, size: 320, offset: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !548, line: 77, size: 320, elements: !1288)
!1288 = !{!1289, !1298, !1303, !1331, !1339, !1345, !1358, !1365}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 78, baseType: !1290, size: 320)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 78, size: 320, elements: !1291)
!1291 = !{!1292, !1293, !1296, !1297}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1290, file: !548, line: 84, baseType: !415, size: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1290, file: !548, line: 86, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !548, line: 26, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1290, file: !548, line: 87, baseType: !144, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1290, file: !548, line: 94, baseType: !144, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 96, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 96, size: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1299, file: !548, line: 101, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !96, line: 143, baseType: !206)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 103, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 103, size: 320, elements: !1305)
!1305 = !{!1306, !1316, !1319, !1320}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !548, line: 104, baseType: !1307, size: 128)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !548, line: 104, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1307, file: !548, line: 105, baseType: !415, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !548, line: 106, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1307, file: !548, line: 106, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1311, file: !548, line: 107, baseType: !1282, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1311, file: !548, line: 109, baseType: !153, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1311, file: !548, line: 110, baseType: !153, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1304, file: !548, line: 117, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !548, line: 117, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1304, file: !548, line: 119, baseType: !109, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !548, line: 120, baseType: !1321, size: 64, offset: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !548, line: 120, size: 64, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1321, file: !548, line: 121, baseType: !109, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1321, file: !548, line: 122, baseType: !144, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !548, line: 123, baseType: !1326, size: 32)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !548, line: 123, size: 32, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1326, file: !548, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1326, file: !548, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1326, file: !548, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 130, baseType: !1332, size: 192)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 130, size: 192, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1332, file: !548, line: 131, baseType: !144, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1332, file: !548, line: 134, baseType: !102, size: 8, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1332, file: !548, line: 135, baseType: !102, size: 8, offset: 72)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1332, file: !548, line: 136, baseType: !593, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1332, file: !548, line: 137, baseType: !5, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 139, baseType: !1340, size: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 139, size: 256, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1340, file: !548, line: 140, baseType: !144, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1340, file: !548, line: 141, baseType: !593, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1340, file: !548, line: 143, baseType: !415, size: 128, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 145, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 145, size: 256, elements: !1347)
!1347 = !{!1348, !1349, !1351, !1352, !1357}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1346, file: !548, line: 146, baseType: !144, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1346, file: !548, line: 147, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !540, line: 509, baseType: !1282)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1346, file: !548, line: 148, baseType: !144, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !548, line: 149, baseType: !1353, size: 64, offset: 192)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !548, line: 149, size: 64, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1353, file: !548, line: 150, baseType: !564, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1353, file: !548, line: 151, baseType: !593, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1346, file: !548, line: 156, baseType: !428, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !548, line: 159, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !548, line: 159, size: 128, elements: !1360)
!1360 = !{!1361, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1359, file: !548, line: 161, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !548, line: 161, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1359, file: !548, line: 162, baseType: !109, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1287, file: !548, line: 176, baseType: !985, size: 128, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !548, line: 179, baseType: !1367, size: 32, offset: 384)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !548, line: 179, size: 32, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1367, file: !548, line: 184, baseType: !593, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1367, file: !548, line: 192, baseType: !5, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1367, file: !548, line: 194, baseType: !5, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1367, file: !548, line: 195, baseType: !153, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1283, file: !548, line: 199, baseType: !593, size: 32, offset: 416)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1279, file: !648, line: 67, baseType: !107, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1279, file: !648, line: 68, baseType: !107, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !698, file: !699, line: 1206, baseType: !153, size: 32, offset: 12736)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !698, file: !699, line: 1207, baseType: !153, size: 32, offset: 12768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !698, file: !699, line: 1209, baseType: !144, size: 64, offset: 12800)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !698, file: !699, line: 1219, baseType: !206, size: 64, offset: 12864)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !698, file: !699, line: 1220, baseType: !206, size: 64, offset: 12928)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !698, file: !699, line: 1317, baseType: !153, size: 32, offset: 12992)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !698, file: !699, line: 1319, baseType: !697, size: 64, offset: 13056)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !698, file: !699, line: 1322, baseType: !1384, size: 64, offset: 13120)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1386, line: 9, flags: DIFlagFwdDecl)
!1386 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !698, file: !699, line: 1326, baseType: !710, size: 32, offset: 13184)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !698, file: !699, line: 1342, baseType: !109, size: 64, offset: 13248)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !698, file: !699, line: 1343, baseType: !207, size: 64, offset: 13312)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !698, file: !699, line: 1344, baseType: !206, size: 64, offset: 13376)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !698, file: !699, line: 1345, baseType: !207, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !698, file: !699, line: 1346, baseType: !207, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !698, file: !699, line: 1347, baseType: !207, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !698, file: !699, line: 1348, baseType: !985, size: 128, align: 64, offset: 13504)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !698, file: !699, line: 1358, baseType: !1396, size: 34816, offset: 13824)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1397, line: 485, size: 34816, elements: !1398)
!1397 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1428, !1429, !1430, !1431, !1432, !1433, !1436, !1437, !1438}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1396, file: !1397, line: 487, baseType: !1400, size: 192)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 192, elements: !468)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1402, line: 16, size: 64, elements: !1403)
!1402 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1401, file: !1402, line: 17, baseType: !137, size: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1401, file: !1402, line: 18, baseType: !137, size: 16, offset: 16)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1401, file: !1402, line: 19, baseType: !137, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1401, file: !1402, line: 19, baseType: !137, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1401, file: !1402, line: 19, baseType: !137, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1401, file: !1402, line: 19, baseType: !137, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1401, file: !1402, line: 19, baseType: !137, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1401, file: !1402, line: 20, baseType: !137, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1401, file: !1402, line: 20, baseType: !137, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1401, file: !1402, line: 20, baseType: !137, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1401, file: !1402, line: 20, baseType: !137, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1401, file: !1402, line: 20, baseType: !137, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1401, file: !1402, line: 20, baseType: !137, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1396, file: !1397, line: 491, baseType: !144, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1396, file: !1397, line: 495, baseType: !104, size: 16, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1396, file: !1397, line: 496, baseType: !104, size: 16, offset: 272)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1396, file: !1397, line: 497, baseType: !104, size: 16, offset: 288)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1396, file: !1397, line: 498, baseType: !104, size: 16, offset: 304)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1396, file: !1397, line: 502, baseType: !144, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1396, file: !1397, line: 503, baseType: !144, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1396, file: !1397, line: 514, baseType: !1425, size: 256, offset: 448)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 256, elements: !652)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1397, line: 483, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1396, file: !1397, line: 516, baseType: !144, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1396, file: !1397, line: 518, baseType: !144, size: 64, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1396, file: !1397, line: 520, baseType: !144, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1396, file: !1397, line: 521, baseType: !144, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1396, file: !1397, line: 522, baseType: !144, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1396, file: !1397, line: 528, baseType: !1434, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1397, line: 10, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1396, file: !1397, line: 535, baseType: !144, size: 64, offset: 1088)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1396, file: !1397, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1396, file: !1397, line: 540, baseType: !1439, size: 33280, offset: 1536)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1440, line: 317, size: 33280, elements: !1441)
!1440 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1439, file: !1440, line: 330, baseType: !5, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1439, file: !1440, line: 337, baseType: !144, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1439, file: !1440, line: 348, baseType: !1445, size: 32768, offset: 512)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1440, line: 304, size: 32768, elements: !1446)
!1446 = !{!1447, !1462, !1501, !1551, !1568}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1445, file: !1440, line: 305, baseType: !1448, size: 896)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1440, line: 12, size: 896, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1461}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1448, file: !1440, line: 13, baseType: !203, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1448, file: !1440, line: 14, baseType: !203, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1448, file: !1440, line: 15, baseType: !203, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1448, file: !1440, line: 16, baseType: !203, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1448, file: !1440, line: 17, baseType: !203, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1448, file: !1440, line: 18, baseType: !203, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1448, file: !1440, line: 19, baseType: !203, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1448, file: !1440, line: 22, baseType: !1458, size: 640, offset: 224)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 640, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 20)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1448, file: !1440, line: 25, baseType: !203, size: 32, offset: 864)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1445, file: !1440, line: 306, baseType: !1463, size: 4096, align: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1440, line: 34, size: 4096, align: 128, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1484, !1485, !1486, !1490, !1492, !1496}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1463, file: !1440, line: 35, baseType: !137, size: 16)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1463, file: !1440, line: 36, baseType: !137, size: 16, offset: 16)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1463, file: !1440, line: 37, baseType: !137, size: 16, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1463, file: !1440, line: 38, baseType: !137, size: 16, offset: 48)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1440, line: 39, baseType: !1470, size: 128, offset: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1440, line: 39, size: 128, elements: !1471)
!1471 = !{!1472, !1477}
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1440, line: 40, baseType: !1473, size: 128)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1470, file: !1440, line: 40, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1473, file: !1440, line: 41, baseType: !206, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1473, file: !1440, line: 42, baseType: !206, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1440, line: 44, baseType: !1478, size: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1470, file: !1440, line: 44, size: 128, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1478, file: !1440, line: 45, baseType: !203, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1478, file: !1440, line: 46, baseType: !203, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1478, file: !1440, line: 47, baseType: !203, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1478, file: !1440, line: 48, baseType: !203, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1463, file: !1440, line: 51, baseType: !203, size: 32, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1463, file: !1440, line: 52, baseType: !203, size: 32, offset: 224)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1463, file: !1440, line: 55, baseType: !1487, size: 1024, offset: 256)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 1024, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1463, file: !1440, line: 58, baseType: !1491, size: 2048, offset: 1280)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2048, elements: !472)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1463, file: !1440, line: 60, baseType: !1493, size: 384, offset: 3328)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 384, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 12)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1440, line: 62, baseType: !1497, size: 384, offset: 3712)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1440, line: 62, size: 384, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1497, file: !1440, line: 63, baseType: !1493, size: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1497, file: !1440, line: 64, baseType: !1493, size: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1445, file: !1440, line: 307, baseType: !1502, size: 1088)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1440, line: 79, size: 1088, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1550}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1502, file: !1440, line: 80, baseType: !203, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1502, file: !1440, line: 81, baseType: !203, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1502, file: !1440, line: 82, baseType: !203, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1502, file: !1440, line: 83, baseType: !203, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1502, file: !1440, line: 84, baseType: !203, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1502, file: !1440, line: 85, baseType: !203, size: 32, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1502, file: !1440, line: 86, baseType: !203, size: 32, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1502, file: !1440, line: 88, baseType: !1458, size: 640, offset: 224)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1502, file: !1440, line: 89, baseType: !98, size: 8, offset: 864)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1502, file: !1440, line: 90, baseType: !98, size: 8, offset: 872)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1502, file: !1440, line: 91, baseType: !98, size: 8, offset: 880)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1502, file: !1440, line: 92, baseType: !98, size: 8, offset: 888)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1502, file: !1440, line: 93, baseType: !98, size: 8, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1502, file: !1440, line: 94, baseType: !98, size: 8, offset: 904)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1502, file: !1440, line: 95, baseType: !1519, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1521, line: 11, size: 128, elements: !1522)
!1521 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1520, file: !1521, line: 12, baseType: !128, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1520, file: !1521, line: 13, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1527, line: 56, size: 1344, elements: !1528)
!1527 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1526, file: !1527, line: 61, baseType: !144, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1526, file: !1527, line: 62, baseType: !144, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1526, file: !1527, line: 63, baseType: !144, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1526, file: !1527, line: 64, baseType: !144, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1526, file: !1527, line: 65, baseType: !144, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1526, file: !1527, line: 66, baseType: !144, size: 64, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1526, file: !1527, line: 68, baseType: !144, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1526, file: !1527, line: 69, baseType: !144, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1526, file: !1527, line: 70, baseType: !144, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1526, file: !1527, line: 71, baseType: !144, size: 64, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1526, file: !1527, line: 72, baseType: !144, size: 64, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1526, file: !1527, line: 73, baseType: !144, size: 64, offset: 704)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1526, file: !1527, line: 74, baseType: !144, size: 64, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1526, file: !1527, line: 75, baseType: !144, size: 64, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1526, file: !1527, line: 76, baseType: !144, size: 64, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1526, file: !1527, line: 81, baseType: !144, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1526, file: !1527, line: 83, baseType: !144, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1526, file: !1527, line: 84, baseType: !144, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1526, file: !1527, line: 85, baseType: !144, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1526, file: !1527, line: 86, baseType: !144, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1526, file: !1527, line: 87, baseType: !144, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1502, file: !1440, line: 96, baseType: !203, size: 32, offset: 1024)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1445, file: !1440, line: 308, baseType: !1552, size: 4608, align: 512)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1440, line: 289, size: 4608, align: 512, elements: !1553)
!1553 = !{!1554, !1555, !1564}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1552, file: !1440, line: 290, baseType: !1463, size: 4096, align: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1552, file: !1440, line: 291, baseType: !1556, size: 512, offset: 4096)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1440, line: 268, size: 512, elements: !1557)
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1556, file: !1440, line: 269, baseType: !206, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1556, file: !1440, line: 270, baseType: !206, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1556, file: !1440, line: 271, baseType: !1561, size: 384, offset: 128)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 6)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1552, file: !1440, line: 292, baseType: !1565, offset: 4608)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !1566)
!1566 = !{!1567}
!1567 = !DISubrange(count: 0)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1445, file: !1440, line: 309, baseType: !1569, size: 32768)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32768, elements: !1570)
!1570 = !{!1571}
!1571 = !DISubrange(count: 4096)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !548, line: 378, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !690, file: !548, line: 384, baseType: !1007, size: 192, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !568, file: !548, line: 500, baseType: !428, offset: 6656)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !568, file: !548, line: 501, baseType: !1577, size: 64, offset: 6656)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !548, line: 387, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !568, file: !548, line: 516, baseType: !1580, size: 64, offset: 6720)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !548, line: 516, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !568, file: !548, line: 519, baseType: !538, size: 64, offset: 6784)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !568, file: !548, line: 521, baseType: !1584, size: 64, offset: 6848)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !548, line: 521, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !568, file: !548, line: 545, baseType: !593, size: 32, offset: 6912)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !568, file: !548, line: 548, baseType: !379, size: 8, offset: 6944)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !568, file: !548, line: 550, baseType: !1589, offset: 6952)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1590, line: 142, elements: !145)
!1590 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !568, file: !548, line: 554, baseType: !1592, size: 256, offset: 6976)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1593, line: 102, size: 256, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1592, file: !1593, line: 103, baseType: !601, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1592, file: !1593, line: 104, baseType: !415, size: 128, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1592, file: !1593, line: 105, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1593, line: 21, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !568, file: !548, line: 557, baseType: !203, size: 32, offset: 7232)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !565, file: !548, line: 565, baseType: !1605, offset: 7296)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: -1)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !547, file: !548, line: 333, baseType: !1609, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !540, line: 284, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !540, line: 284, size: 64, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1610, file: !540, line: 284, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !591, line: 19, baseType: !144)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !547, file: !548, line: 334, baseType: !144, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !547, file: !548, line: 343, baseType: !1616, size: 256, offset: 704)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !547, file: !548, line: 340, size: 256, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1616, file: !548, line: 341, baseType: !555, size: 192, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1616, file: !548, line: 342, baseType: !144, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !547, file: !548, line: 351, baseType: !415, size: 128, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !547, file: !548, line: 353, baseType: !1622, size: 64, offset: 1088)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !548, line: 353, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !547, file: !548, line: 356, baseType: !1625, size: 64, offset: 1152)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !548, line: 356, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !547, file: !548, line: 359, baseType: !144, size: 64, offset: 1216)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !547, file: !548, line: 361, baseType: !538, size: 64, offset: 1280)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !547, file: !548, line: 362, baseType: !109, size: 64, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !547, file: !548, line: 365, baseType: !601, size: 64, offset: 1408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !547, file: !548, line: 373, baseType: !1633, offset: 1472)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !548, line: 296, elements: !145)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !517, file: !492, line: 90, baseType: !512, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !517, file: !492, line: 91, baseType: !1636, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !482, file: !411, line: 143, baseType: !1638, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1641, !421}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1644)
!1644 = !{!1645, !1646, !1650, !1654, !1662, !1666}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !16, line: 40, baseType: !15, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1643, file: !16, line: 41, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!379}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1643, file: !16, line: 42, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!109}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1643, file: !16, line: 43, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1658, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1643, file: !16, line: 44, baseType: !1663, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1658}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1643, file: !16, line: 45, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !109}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !482, file: !411, line: 144, baseType: !1671, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1658, !421}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !482, file: !411, line: 145, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !421, !1678, !1685}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1680, line: 23, baseType: !1681)
!1680 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 21, size: 32, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1681, file: !1680, line: 22, baseType: !1684, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !96, line: 32, baseType: !1167)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1680, line: 28, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 26, size: 32, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1687, file: !1680, line: 27, baseType: !1690, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !96, line: 33, baseType: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !142, line: 50, baseType: !5)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !410, file: !411, line: 70, baseType: !1693, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1695, line: 123, size: 1024, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1837, !1838, !1839, !1840, !1841}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1694, file: !1695, line: 124, baseType: !593, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1694, file: !1695, line: 125, baseType: !593, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1694, file: !1695, line: 135, baseType: !1693, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1694, file: !1695, line: 136, baseType: !220, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1694, file: !1695, line: 138, baseType: !555, size: 192, align: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1694, file: !1695, line: 140, baseType: !1658, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1694, file: !1695, line: 141, baseType: !5, size: 32, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1695, line: 142, baseType: !1705, size: 256, offset: 512)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !1695, line: 142, size: 256, elements: !1706)
!1706 = !{!1707, !1761, !1765}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1705, file: !1695, line: 143, baseType: !1708, size: 192)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1695, line: 91, size: 192, elements: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1708, file: !1695, line: 92, baseType: !144, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1708, file: !1695, line: 94, baseType: !572, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1708, file: !1695, line: 100, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1695, line: 180, size: 704, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1731, !1732, !1733, !1759, !1760}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1714, file: !1695, line: 182, baseType: !1693, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !1695, line: 183, baseType: !5, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1714, file: !1695, line: 186, baseType: !1719, size: 192, offset: 128)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1720, line: 19, size: 192, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1729, !1730}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1719, file: !1720, line: 20, baseType: !1723, size: 128)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1724, line: 292, size: 128, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1723, file: !1724, line: 293, baseType: !428)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1723, file: !1724, line: 295, baseType: !95, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1723, file: !1724, line: 296, baseType: !109, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1719, file: !1720, line: 21, baseType: !5, size: 32, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1719, file: !1720, line: 22, baseType: !5, size: 32, offset: 160)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1714, file: !1695, line: 187, baseType: !203, size: 32, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1714, file: !1695, line: 188, baseType: !203, size: 32, offset: 352)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1714, file: !1695, line: 189, baseType: !1734, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1695, line: 168, size: 320, elements: !1736)
!1736 = !{!1737, !1743, !1747, !1751, !1755}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1735, file: !1695, line: 169, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!153, !1741, !1713}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !540, line: 539, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1735, file: !1695, line: 171, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!153, !1693, !220, !506}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1735, file: !1695, line: 173, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!153, !1693}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1735, file: !1695, line: 174, baseType: !1752, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!153, !1693, !1693, !220}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1735, file: !1695, line: 176, baseType: !1756, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!153, !1741, !1693, !1713}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1714, file: !1695, line: 192, baseType: !415, size: 128, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1714, file: !1695, line: 194, baseType: !978, size: 128, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1705, file: !1695, line: 144, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1695, line: 103, size: 64, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1762, file: !1695, line: 104, baseType: !1693, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1705, file: !1695, line: 145, baseType: !1766, size: 256)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1695, line: 107, size: 256, elements: !1767)
!1767 = !{!1768, !1832, !1835, !1836}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1766, file: !1695, line: 108, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1695, line: 217, size: 768, elements: !1772)
!1772 = !{!1773, !1793, !1797, !1801, !1806, !1810, !1814, !1818, !1819, !1820, !1821, !1828}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1771, file: !1695, line: 222, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!153, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1695, line: 197, size: 1088, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1778, file: !1695, line: 199, baseType: !1693, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1778, file: !1695, line: 200, baseType: !538, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1778, file: !1695, line: 201, baseType: !1741, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1778, file: !1695, line: 202, baseType: !109, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1778, file: !1695, line: 205, baseType: !670, size: 192, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1778, file: !1695, line: 206, baseType: !670, size: 192, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1778, file: !1695, line: 207, baseType: !153, size: 32, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1778, file: !1695, line: 208, baseType: !415, size: 128, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1778, file: !1695, line: 209, baseType: !124, size: 64, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1778, file: !1695, line: 211, baseType: !140, size: 64, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1778, file: !1695, line: 212, baseType: !379, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1778, file: !1695, line: 213, baseType: !379, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1778, file: !1695, line: 214, baseType: !1625, size: 64, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1771, file: !1695, line: 223, baseType: !1794, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1777}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1771, file: !1695, line: 236, baseType: !1798, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!153, !1741, !109}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1771, file: !1695, line: 238, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!109, !1741, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1771, file: !1695, line: 239, baseType: !1807, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!109, !1741, !109, !1805}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1771, file: !1695, line: 240, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1741, !109}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1771, file: !1695, line: 242, baseType: !1815, size: 64, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!498, !1777, !124, !140, !286}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1771, file: !1695, line: 252, baseType: !140, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1771, file: !1695, line: 259, baseType: !379, size: 8, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1771, file: !1695, line: 260, baseType: !1815, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1771, file: !1695, line: 263, baseType: !1822, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1825, !1777, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !106, line: 52, baseType: !5)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1695, line: 27, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1771, file: !1695, line: 266, baseType: !1829, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!153, !1777, !546}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1766, file: !1695, line: 109, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1695, line: 31, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1766, file: !1695, line: 110, baseType: !286, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1766, file: !1695, line: 111, baseType: !1693, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1694, file: !1695, line: 148, baseType: !109, size: 64, offset: 768)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1694, file: !1695, line: 154, baseType: !206, size: 64, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1694, file: !1695, line: 156, baseType: !104, size: 16, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1694, file: !1695, line: 157, baseType: !506, size: 16, offset: 912)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1694, file: !1695, line: 158, baseType: !1842, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1695, line: 32, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !410, file: !411, line: 71, baseType: !1845, size: 32, offset: 448)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1846, line: 19, size: 32, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1845, file: !1846, line: 20, baseType: !710, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !410, file: !411, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !410, file: !411, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !410, file: !411, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !410, file: !411, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !410, file: !411, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !407, file: !28, line: 463, baseType: !1855, size: 64, offset: 512)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !407, file: !28, line: 465, baseType: !1857, size: 64, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !407, file: !28, line: 467, baseType: !220, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !28, line: 468, baseType: !1861, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1863)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1871, !1876, !1880}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1863, file: !28, line: 88, baseType: !220, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1863, file: !28, line: 89, baseType: !514, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1863, file: !28, line: 90, baseType: !1868, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!153, !1855, !463}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1863, file: !28, line: 91, baseType: !1872, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!124, !1855, !1875, !1678, !1685}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1863, file: !28, line: 93, baseType: !1877, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1855}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1863, file: !28, line: 95, baseType: !1881, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1884)
!1884 = !{!1885, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1883, file: !35, line: 279, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!153, !1855}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1883, file: !35, line: 280, baseType: !1877, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1883, file: !35, line: 281, baseType: !1886, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1883, file: !35, line: 282, baseType: !1886, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1883, file: !35, line: 283, baseType: !1886, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1883, file: !35, line: 284, baseType: !1886, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1883, file: !35, line: 285, baseType: !1886, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1883, file: !35, line: 286, baseType: !1886, size: 64, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1883, file: !35, line: 287, baseType: !1886, size: 64, offset: 512)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1883, file: !35, line: 288, baseType: !1886, size: 64, offset: 576)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1883, file: !35, line: 289, baseType: !1886, size: 64, offset: 640)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1883, file: !35, line: 290, baseType: !1886, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1883, file: !35, line: 291, baseType: !1886, size: 64, offset: 768)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1883, file: !35, line: 292, baseType: !1886, size: 64, offset: 832)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1883, file: !35, line: 293, baseType: !1886, size: 64, offset: 896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1883, file: !35, line: 294, baseType: !1886, size: 64, offset: 960)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1883, file: !35, line: 295, baseType: !1886, size: 64, offset: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1883, file: !35, line: 296, baseType: !1886, size: 64, offset: 1088)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1883, file: !35, line: 297, baseType: !1886, size: 64, offset: 1152)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1883, file: !35, line: 298, baseType: !1886, size: 64, offset: 1216)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1883, file: !35, line: 299, baseType: !1886, size: 64, offset: 1280)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1883, file: !35, line: 300, baseType: !1886, size: 64, offset: 1344)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1883, file: !35, line: 301, baseType: !1886, size: 64, offset: 1408)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !407, file: !28, line: 470, baseType: !1912, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1914, line: 82, size: 1408, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1998, !2001, !2004}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !1914, line: 83, baseType: !220, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1913, file: !1914, line: 84, baseType: !220, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1913, file: !1914, line: 85, baseType: !1855, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1913, file: !1914, line: 86, baseType: !514, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1913, file: !1914, line: 87, baseType: !514, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1913, file: !1914, line: 88, baseType: !514, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1913, file: !1914, line: 90, baseType: !1923, size: 64, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!153, !1855, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935, !1949, !1962, !1963, !1964, !1965, !1966, !1974, !1975, !1976, !1977, !1978, !1979}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1927, file: !22, line: 96, baseType: !220, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1927, file: !22, line: 97, baseType: !1912, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1927, file: !22, line: 99, baseType: !403, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1927, file: !22, line: 100, baseType: !220, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1927, file: !22, line: 102, baseType: !379, size: 8, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1927, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1927, file: !22, line: 105, baseType: !1936, size: 64, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1939, line: 262, size: 1600, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1943, !1944, !1948}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1938, file: !1939, line: 263, baseType: !1942, size: 256)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1488)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !1939, line: 264, baseType: !1942, size: 256, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1938, file: !1939, line: 265, baseType: !1945, size: 1024, offset: 512)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !1946)
!1946 = !{!1947}
!1947 = !DISubrange(count: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1938, file: !1939, line: 266, baseType: !1658, size: 64, offset: 1536)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1927, file: !22, line: 106, baseType: !1950, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1939, line: 210, size: 256, elements: !1953)
!1953 = !{!1954, !1958, !1960, !1961}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1952, file: !1939, line: 211, baseType: !1955, size: 72)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 72, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 9)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1952, file: !1939, line: 212, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1939, line: 14, baseType: !144)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1952, file: !1939, line: 213, baseType: !107, size: 32, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1952, file: !1939, line: 214, baseType: !107, size: 32, offset: 224)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1927, file: !22, line: 108, baseType: !1886, size: 64, offset: 448)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1927, file: !22, line: 109, baseType: !1877, size: 64, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1927, file: !22, line: 110, baseType: !1886, size: 64, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1927, file: !22, line: 111, baseType: !1877, size: 64, offset: 640)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1927, file: !22, line: 112, baseType: !1967, size: 64, offset: 704)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!153, !1855, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1971, file: !35, line: 51, baseType: !153, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1927, file: !22, line: 113, baseType: !1886, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1927, file: !22, line: 114, baseType: !514, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1927, file: !22, line: 115, baseType: !514, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1927, file: !22, line: 117, baseType: !1881, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1927, file: !22, line: 118, baseType: !1877, size: 64, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1927, file: !22, line: 120, baseType: !1980, size: 64, offset: 1088)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1913, file: !1914, line: 91, baseType: !1868, size: 64, offset: 448)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1913, file: !1914, line: 92, baseType: !1886, size: 64, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1913, file: !1914, line: 93, baseType: !1877, size: 64, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1913, file: !1914, line: 94, baseType: !1886, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1913, file: !1914, line: 95, baseType: !1877, size: 64, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1913, file: !1914, line: 97, baseType: !1886, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1913, file: !1914, line: 98, baseType: !1886, size: 64, offset: 832)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1913, file: !1914, line: 100, baseType: !1967, size: 64, offset: 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1913, file: !1914, line: 101, baseType: !1886, size: 64, offset: 960)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1913, file: !1914, line: 103, baseType: !1886, size: 64, offset: 1024)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1913, file: !1914, line: 105, baseType: !1886, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1913, file: !1914, line: 107, baseType: !1881, size: 64, offset: 1152)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1913, file: !1914, line: 109, baseType: !1995, size: 64, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1997)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1914, line: 109, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1913, file: !1914, line: 111, baseType: !1999, size: 64, offset: 1280)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1914, line: 111, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1913, file: !1914, line: 112, baseType: !2002, offset: 1344)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2003, line: 187, elements: !145)
!2003 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1913, file: !1914, line: 114, baseType: !379, size: 8, offset: 1344)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !407, file: !28, line: 471, baseType: !1926, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !407, file: !28, line: 473, baseType: !109, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !407, file: !28, line: 475, baseType: !109, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !407, file: !28, line: 480, baseType: !670, size: 192, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !407, file: !28, line: 484, baseType: !2010, size: 576, offset: 1216)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2010, file: !28, line: 362, baseType: !415, size: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2010, file: !28, line: 363, baseType: !415, size: 128, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2010, file: !28, line: 364, baseType: !415, size: 128, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2010, file: !28, line: 365, baseType: !415, size: 128, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2010, file: !28, line: 366, baseType: !379, size: 8, offset: 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2010, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !407, file: !28, line: 485, baseType: !2019, size: 2304, offset: 1792)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2116, !2120}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2019, file: !35, line: 566, baseType: !1970, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2019, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2019, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2019, file: !35, line: 569, baseType: !379, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2019, file: !35, line: 570, baseType: !379, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2019, file: !35, line: 571, baseType: !379, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2019, file: !35, line: 572, baseType: !379, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2019, file: !35, line: 573, baseType: !379, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2019, file: !35, line: 574, baseType: !379, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2019, file: !35, line: 575, baseType: !379, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2019, file: !35, line: 576, baseType: !379, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2019, file: !35, line: 577, baseType: !203, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !35, line: 578, baseType: !428, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2019, file: !35, line: 580, baseType: !415, size: 128, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2019, file: !35, line: 581, baseType: !1007, size: 192, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2019, file: !35, line: 582, baseType: !2037, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2039, line: 43, size: 1472, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2048, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2038, file: !2039, line: 44, baseType: !220, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2038, file: !2039, line: 45, baseType: !153, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2038, file: !2039, line: 46, baseType: !415, size: 128, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2038, file: !2039, line: 47, baseType: !428, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2038, file: !2039, line: 48, baseType: !2046, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2038, file: !2039, line: 49, baseType: !2049, size: 320, offset: 320)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2050, line: 11, size: 320, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054, !2059}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2049, file: !2050, line: 16, baseType: !971, size: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2049, file: !2050, line: 17, baseType: !144, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2049, file: !2050, line: 18, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2049, file: !2050, line: 19, baseType: !203, size: 32, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2038, file: !2039, line: 50, baseType: !144, size: 64, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2038, file: !2039, line: 51, baseType: !780, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2038, file: !2039, line: 52, baseType: !780, size: 64, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2038, file: !2039, line: 53, baseType: !780, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2038, file: !2039, line: 54, baseType: !780, size: 64, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2038, file: !2039, line: 55, baseType: !780, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2038, file: !2039, line: 56, baseType: !144, size: 64, offset: 1024)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2038, file: !2039, line: 57, baseType: !144, size: 64, offset: 1088)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2038, file: !2039, line: 58, baseType: !144, size: 64, offset: 1152)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2038, file: !2039, line: 59, baseType: !144, size: 64, offset: 1216)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2038, file: !2039, line: 60, baseType: !144, size: 64, offset: 1280)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2038, file: !2039, line: 61, baseType: !1855, size: 64, offset: 1344)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2038, file: !2039, line: 62, baseType: !379, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2038, file: !2039, line: 63, baseType: !379, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2019, file: !35, line: 583, baseType: !379, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2019, file: !35, line: 584, baseType: !379, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2019, file: !35, line: 585, baseType: !379, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2019, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2019, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2019, file: !35, line: 592, baseType: !772, size: 512, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2019, file: !35, line: 593, baseType: !206, size: 64, offset: 1088)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2019, file: !35, line: 594, baseType: !1592, size: 256, offset: 1152)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2019, file: !35, line: 595, baseType: !978, size: 128, offset: 1408)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2019, file: !35, line: 596, baseType: !2046, size: 64, offset: 1536)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2019, file: !35, line: 597, baseType: !593, size: 32, offset: 1600)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2019, file: !35, line: 598, baseType: !593, size: 32, offset: 1632)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2019, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2019, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2019, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2019, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2019, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2019, file: !35, line: 604, baseType: !379, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2019, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2019, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2019, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2019, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2019, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2019, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2019, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2019, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2019, file: !35, line: 613, baseType: !153, size: 32, offset: 1792)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2019, file: !35, line: 614, baseType: !153, size: 32, offset: 1824)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2019, file: !35, line: 615, baseType: !206, size: 64, offset: 1856)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2019, file: !35, line: 616, baseType: !206, size: 64, offset: 1920)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2019, file: !35, line: 617, baseType: !206, size: 64, offset: 1984)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2019, file: !35, line: 618, baseType: !206, size: 64, offset: 2048)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2019, file: !35, line: 620, baseType: !2107, size: 64, offset: 2112)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2108, file: !35, line: 537, baseType: !428)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2108, file: !35, line: 538, baseType: !5, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2108, file: !35, line: 540, baseType: !415, size: 128, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2108, file: !35, line: 543, baseType: !2114, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2019, file: !35, line: 621, baseType: !2117, size: 64, offset: 2176)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !1855, !931}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2019, file: !35, line: 622, baseType: !2121, size: 64, offset: 2240)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !407, file: !28, line: 486, baseType: !2124, size: 64, offset: 4096)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2133, !2134, !2135}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2125, file: !35, line: 643, baseType: !1883, size: 1472)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2125, file: !35, line: 644, baseType: !1886, size: 64, offset: 1472)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2125, file: !35, line: 645, baseType: !2130, size: 64, offset: 1536)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !1855, !379}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2125, file: !35, line: 646, baseType: !1886, size: 64, offset: 1600)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2125, file: !35, line: 647, baseType: !1877, size: 64, offset: 1664)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2125, file: !35, line: 648, baseType: !1877, size: 64, offset: 1728)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !407, file: !28, line: 493, baseType: !2137, size: 64, offset: 4160)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !407, file: !28, line: 499, baseType: !415, size: 128, offset: 4224)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !407, file: !28, line: 502, baseType: !2141, size: 64, offset: 4352)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !407, file: !28, line: 504, baseType: !2145, size: 64, offset: 4416)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !407, file: !28, line: 505, baseType: !206, size: 64, offset: 4480)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !407, file: !28, line: 510, baseType: !206, size: 64, offset: 4544)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !407, file: !28, line: 511, baseType: !2149, size: 64, offset: 4608)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !407, file: !28, line: 513, baseType: !2153, size: 64, offset: 4672)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2154, file: !28, line: 293, baseType: !5, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2154, file: !28, line: 294, baseType: !144, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !407, file: !28, line: 515, baseType: !415, size: 128, offset: 4736)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !407, file: !28, line: 526, baseType: !2160, offset: 4864)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2161, line: 5, elements: !145)
!2161 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !407, file: !28, line: 528, baseType: !2163, size: 64, offset: 4864)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2165, line: 51, size: 1344, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168, !2170, !2171, !2261, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2164, file: !2165, line: 52, baseType: !220, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2164, file: !2165, line: 53, baseType: !2169, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2165, line: 28, baseType: !203)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2164, file: !2165, line: 54, baseType: !220, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2164, file: !2165, line: 55, baseType: !2172, size: 192, offset: 192)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2173, line: 17, size: 192, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2177, !2260}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2172, file: !2173, line: 18, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2172, file: !2173, line: 19, baseType: !2178, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2173, line: 110, size: 1152, elements: !2181)
!2181 = !{!2182, !2186, !2190, !2196, !2202, !2206, !2210, !2215, !2219, !2220, !2224, !2228, !2232, !2243, !2244, !2245, !2246, !2256}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2180, file: !2173, line: 111, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!2176, !2176}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2180, file: !2173, line: 112, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2176}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2180, file: !2173, line: 113, baseType: !2191, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!379, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2180, file: !2173, line: 114, baseType: !2197, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!1658, !2194, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2180, file: !2173, line: 116, baseType: !2203, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!379, !2194, !220}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2180, file: !2173, line: 118, baseType: !2207, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!153, !2194, !220, !5, !109, !140}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2180, file: !2173, line: 123, baseType: !2211, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!153, !2194, !220, !2214, !140}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2180, file: !2173, line: 126, baseType: !2216, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!220, !2194}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2180, file: !2173, line: 127, baseType: !2216, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2180, file: !2173, line: 128, baseType: !2221, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!2176, !2194}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2180, file: !2173, line: 130, baseType: !2225, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!2176, !2194, !2176}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2180, file: !2173, line: 133, baseType: !2229, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!2176, !2194, !220}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2180, file: !2173, line: 135, baseType: !2233, size: 64, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!153, !2194, !220, !220, !5, !5, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2173, line: 43, size: 640, elements: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2237, file: !2173, line: 44, baseType: !2176, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2237, file: !2173, line: 45, baseType: !5, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2237, file: !2173, line: 46, baseType: !2242, size: 512, offset: 128)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 512, elements: !810)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2180, file: !2173, line: 140, baseType: !2225, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2180, file: !2173, line: 143, baseType: !2221, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2180, file: !2173, line: 145, baseType: !2183, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2180, file: !2173, line: 146, baseType: !2247, size: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!153, !2194, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2173, line: 29, size: 128, elements: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2251, file: !2173, line: 30, baseType: !5, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2251, file: !2173, line: 31, baseType: !5, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2251, file: !2173, line: 32, baseType: !2194, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2180, file: !2173, line: 148, baseType: !2257, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!153, !2194, !1855}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2172, file: !2173, line: 20, baseType: !1855, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2164, file: !2165, line: 57, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2165, line: 31, size: 704, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2268, !2269}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2263, file: !2165, line: 32, baseType: !124, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2263, file: !2165, line: 33, baseType: !153, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2263, file: !2165, line: 34, baseType: !109, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2263, file: !2165, line: 35, baseType: !2262, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2263, file: !2165, line: 43, baseType: !529, size: 448, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2164, file: !2165, line: 58, baseType: !2262, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2164, file: !2165, line: 59, baseType: !2163, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2164, file: !2165, line: 60, baseType: !2163, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2164, file: !2165, line: 61, baseType: !2163, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2164, file: !2165, line: 63, baseType: !410, size: 512, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2164, file: !2165, line: 65, baseType: !144, size: 64, offset: 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2164, file: !2165, line: 66, baseType: !109, size: 64, offset: 1280)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !407, file: !28, line: 529, baseType: !2176, size: 64, offset: 4928)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !407, file: !28, line: 534, baseType: !2279, size: 32, offset: 4992)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !96, line: 16, baseType: !2280)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !96, line: 13, baseType: !203)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !407, file: !28, line: 535, baseType: !203, size: 32, offset: 5024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !407, file: !28, line: 537, baseType: !428, offset: 5056)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !407, file: !28, line: 538, baseType: !415, size: 128, offset: 5056)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !407, file: !28, line: 540, baseType: !2285, size: 64, offset: 5184)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2287, line: 54, size: 960, elements: !2288)
!2287 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2299, !2303, !2304, !2305, !2306, !2310, !2314, !2315}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2286, file: !2287, line: 55, baseType: !220, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2286, file: !2287, line: 56, baseType: !403, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2286, file: !2287, line: 58, baseType: !514, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2286, file: !2287, line: 59, baseType: !514, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2286, file: !2287, line: 60, baseType: !421, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2286, file: !2287, line: 62, baseType: !1868, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2286, file: !2287, line: 63, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!124, !1855, !1875}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2286, file: !2287, line: 65, baseType: !2300, size: 64, offset: 448)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2285}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2286, file: !2287, line: 66, baseType: !1877, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2286, file: !2287, line: 68, baseType: !1886, size: 64, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2286, file: !2287, line: 70, baseType: !1641, size: 64, offset: 640)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2286, file: !2287, line: 71, baseType: !2307, size: 64, offset: 704)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!1658, !1855}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2286, file: !2287, line: 73, baseType: !2311, size: 64, offset: 768)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !1855, !1678, !1685}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2286, file: !2287, line: 75, baseType: !1881, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2286, file: !2287, line: 77, baseType: !1999, size: 64, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !407, file: !28, line: 541, baseType: !514, size: 64, offset: 5248)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !407, file: !28, line: 543, baseType: !1877, size: 64, offset: 5312)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !407, file: !28, line: 544, baseType: !2319, size: 64, offset: 5376)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !407, file: !28, line: 545, baseType: !2322, size: 64, offset: 5440)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !407, file: !28, line: 547, baseType: !379, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !407, file: !28, line: 548, baseType: !379, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !407, file: !28, line: 549, baseType: !379, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !407, file: !28, line: 550, baseType: !379, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !196, file: !197, line: 376, baseType: !153, size: 32, offset: 8832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !196, file: !197, line: 377, baseType: !2330, size: 192, offset: 8896)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !197, line: 191, size: 192, elements: !2331)
!2331 = !{!2332, !2335, !2336}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2330, file: !197, line: 192, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1695, line: 21, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2330, file: !197, line: 194, baseType: !220, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2330, file: !197, line: 195, baseType: !220, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !196, file: !197, line: 378, baseType: !2338, size: 64, offset: 9088)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2340, line: 16, flags: DIFlagFwdDecl)
!2340 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !197, line: 386, baseType: !232, size: 64, offset: 9152)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !196, file: !197, line: 389, baseType: !415, size: 128, offset: 9216)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !197, line: 391, baseType: !2344, size: 320, offset: 9344)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !197, line: 391, size: 320, elements: !2345)
!2345 = !{!2346, !2353}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2344, file: !197, line: 392, baseType: !2347, size: 320)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !197, line: 211, size: 320, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2347, file: !197, line: 212, baseType: !415, size: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2347, file: !197, line: 213, baseType: !206, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2347, file: !197, line: 214, baseType: !206, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !197, line: 215, baseType: !203, size: 32, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2344, file: !197, line: 393, baseType: !2354, size: 256)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !197, line: 230, size: 256, elements: !2355)
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2354, file: !197, line: 231, baseType: !670, size: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2354, file: !197, line: 232, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !193, file: !49, line: 321, baseType: !2359, size: 288, offset: 9664)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !49, line: 29, size: 288, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2359, file: !49, line: 30, baseType: !5, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2359, file: !49, line: 31, baseType: !5, size: 32, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2359, file: !49, line: 32, baseType: !5, size: 32, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2359, file: !49, line: 33, baseType: !5, size: 32, offset: 96)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2359, file: !49, line: 34, baseType: !5, size: 32, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2359, file: !49, line: 35, baseType: !5, size: 32, offset: 160)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2359, file: !49, line: 36, baseType: !5, size: 32, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2359, file: !49, line: 37, baseType: !5, size: 32, offset: 224)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2359, file: !49, line: 38, baseType: !5, size: 32, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !193, file: !49, line: 322, baseType: !2371, size: 1024, offset: 9984)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !49, line: 291, size: 1024, elements: !2372)
!2372 = !{!2373, !2382, !2383, !2384, !2390, !2439}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2371, file: !49, line: 292, baseType: !2374, size: 192)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !49, line: 187, size: 192, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2374, file: !49, line: 188, baseType: !48, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2374, file: !49, line: 189, baseType: !56, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2374, file: !49, line: 190, baseType: !61, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2374, file: !49, line: 191, baseType: !5, size: 32, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2374, file: !49, line: 192, baseType: !5, size: 32, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2374, file: !49, line: 193, baseType: !5, size: 32, offset: 160)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2371, file: !49, line: 293, baseType: !2374, size: 192, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2371, file: !49, line: 294, baseType: !2374, size: 192, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2371, file: !49, line: 295, baseType: !2385, size: 320, offset: 576)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !49, line: 238, size: 320, elements: !2386)
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2385, file: !49, line: 239, baseType: !2374, size: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2385, file: !49, line: 240, baseType: !5, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2385, file: !49, line: 241, baseType: !109, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2371, file: !49, line: 296, baseType: !2391, size: 64, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !49, line: 268, size: 64, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2392, file: !49, line: 269, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !49, line: 255, size: 256, elements: !2397)
!2397 = !{!2398, !2403, !2407, !2438}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2396, file: !49, line: 256, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!153, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2396, file: !49, line: 257, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2402}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2396, file: !49, line: 258, baseType: !2408, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!153, !2402, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !49, line: 112, size: 512, elements: !2413)
!2413 = !{!2414, !2415, !2423, !2424, !2425, !2430, !2431, !2432, !2437}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2412, file: !49, line: 113, baseType: !67, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2412, file: !49, line: 114, baseType: !2416, size: 160, offset: 32)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !49, line: 77, size: 160, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2416, file: !49, line: 78, baseType: !5, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2416, file: !49, line: 79, baseType: !5, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2416, file: !49, line: 80, baseType: !5, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2416, file: !49, line: 81, baseType: !5, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2416, file: !49, line: 82, baseType: !5, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2412, file: !49, line: 115, baseType: !5, size: 32, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2412, file: !49, line: 116, baseType: !5, size: 32, offset: 224)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2412, file: !49, line: 120, baseType: !2426, size: 64, offset: 256)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !49, line: 117, size: 64, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2426, file: !49, line: 118, baseType: !1658, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2426, file: !49, line: 119, baseType: !109, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2412, file: !49, line: 121, baseType: !5, size: 32, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2412, file: !49, line: 122, baseType: !5, size: 32, offset: 352)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2412, file: !49, line: 126, baseType: !2433, size: 64, offset: 384)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !49, line: 123, size: 64, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2433, file: !49, line: 124, baseType: !1658, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2433, file: !49, line: 125, baseType: !109, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2412, file: !49, line: 127, baseType: !153, size: 32, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2396, file: !49, line: 260, baseType: !2408, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2371, file: !49, line: 297, baseType: !2391, size: 64, offset: 960)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !193, file: !49, line: 323, baseType: !2441, size: 64, offset: 11008)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !49, line: 61, size: 64, elements: !2442)
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2441, file: !49, line: 62, baseType: !5, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2441, file: !49, line: 63, baseType: !5, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !193, file: !49, line: 324, baseType: !2446, size: 64, offset: 11072)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !49, line: 205, size: 64, elements: !2447)
!2447 = !{!2448}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2446, file: !49, line: 206, baseType: !271, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !193, file: !49, line: 325, baseType: !2450, size: 64, offset: 11136)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !49, line: 225, size: 192, elements: !2453)
!2453 = !{!2454, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2452, file: !49, line: 226, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!153, !2402, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2416)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2452, file: !49, line: 227, baseType: !2455, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2452, file: !49, line: 228, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!379, !2402, !2458}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !190, file: !72, line: 1098, baseType: !2466, size: 96, offset: 11200)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !72, line: 249, size: 96, elements: !2467)
!2467 = !{!2468, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2466, file: !72, line: 250, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !810)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2466, file: !72, line: 251, baseType: !153, size: 32, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !190, file: !72, line: 1099, baseType: !2472, size: 704, offset: 11328)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !72, line: 230, size: 704, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2478, !2479}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2472, file: !72, line: 232, baseType: !220, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2472, file: !72, line: 233, baseType: !379, size: 8, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2472, file: !72, line: 234, baseType: !2477, size: 256, offset: 128)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !652)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2472, file: !72, line: 235, baseType: !2477, size: 256, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2472, file: !72, line: 238, baseType: !2480, size: 64, offset: 640)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !114, line: 167, size: 832, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2481, file: !114, line: 168, baseType: !153, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2481, file: !114, line: 169, baseType: !137, size: 16, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2481, file: !114, line: 170, baseType: !137, size: 16, offset: 48)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2481, file: !114, line: 171, baseType: !137, size: 16, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2481, file: !114, line: 172, baseType: !137, size: 16, offset: 80)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2481, file: !114, line: 173, baseType: !137, size: 16, offset: 96)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2481, file: !114, line: 174, baseType: !137, size: 16, offset: 112)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2481, file: !114, line: 175, baseType: !2491, size: 704, offset: 128)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 704, elements: !2492)
!2492 = !{!2493}
!2493 = !DISubrange(count: 88)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !190, file: !72, line: 1100, baseType: !2495, size: 128, offset: 12032)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !72, line: 1036, size: 128, elements: !2496)
!2496 = !{!2497, !2585}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2495, file: !72, line: 1037, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2500)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !2501, line: 61, size: 192, elements: !2502)
!2501 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2500, file: !2501, line: 62, baseType: !153, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2500, file: !2501, line: 63, baseType: !124, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2500, file: !2501, line: 64, baseType: !2506, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !2501, line: 47, size: 256, elements: !2509)
!2509 = !{!2510, !2514, !2516, !2517}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2508, file: !2501, line: 48, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !189}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2508, file: !2501, line: 49, baseType: !2515, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2508, file: !2501, line: 50, baseType: !2511, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !2508, file: !2501, line: 51, baseType: !2518, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{null, !189, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !114, line: 54, size: 2048, elements: !2523)
!2523 = !{!2524, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2536, !2538, !2540, !2541, !2542, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2522, file: !114, line: 57, baseType: !2525, size: 32)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32, elements: !652)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2522, file: !114, line: 58, baseType: !105, size: 16, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2522, file: !114, line: 59, baseType: !105, size: 16, offset: 48)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2522, file: !114, line: 60, baseType: !105, size: 16, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2522, file: !114, line: 61, baseType: !121, size: 16, offset: 80)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2522, file: !114, line: 62, baseType: !105, size: 16, offset: 96)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2522, file: !114, line: 63, baseType: !98, size: 8, offset: 112)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2522, file: !114, line: 64, baseType: !2533, size: 136, offset: 120)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 136, elements: !2534)
!2534 = !{!2535}
!2535 = !DISubrange(count: 17)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2522, file: !114, line: 67, baseType: !2537, size: 96, offset: 256)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 96, elements: !1494)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2522, file: !114, line: 68, baseType: !2539, size: 160, offset: 352)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 160, elements: !1459)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2522, file: !114, line: 69, baseType: !98, size: 8, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2522, file: !114, line: 70, baseType: !105, size: 16, offset: 520)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2522, file: !114, line: 71, baseType: !2543, size: 104, offset: 536)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 104, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 13)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2522, file: !114, line: 74, baseType: !108, size: 32, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2522, file: !114, line: 75, baseType: !105, size: 16, offset: 672)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2522, file: !114, line: 76, baseType: !108, size: 32, offset: 688)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2522, file: !114, line: 77, baseType: !105, size: 16, offset: 720)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2522, file: !114, line: 78, baseType: !108, size: 32, offset: 736)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2522, file: !114, line: 79, baseType: !108, size: 32, offset: 768)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2522, file: !114, line: 80, baseType: !98, size: 8, offset: 800)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2522, file: !114, line: 81, baseType: !98, size: 8, offset: 808)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2522, file: !114, line: 82, baseType: !98, size: 8, offset: 816)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2522, file: !114, line: 83, baseType: !105, size: 16, offset: 824)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2522, file: !114, line: 84, baseType: !105, size: 16, offset: 840)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2522, file: !114, line: 85, baseType: !98, size: 8, offset: 856)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2522, file: !114, line: 86, baseType: !105, size: 16, offset: 864)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2522, file: !114, line: 87, baseType: !98, size: 8, offset: 880)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2522, file: !114, line: 88, baseType: !98, size: 8, offset: 888)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2522, file: !114, line: 89, baseType: !98, size: 8, offset: 896)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2522, file: !114, line: 90, baseType: !98, size: 8, offset: 904)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2522, file: !114, line: 91, baseType: !98, size: 8, offset: 912)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2522, file: !114, line: 92, baseType: !2543, size: 104, offset: 920)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2522, file: !114, line: 95, baseType: !98, size: 8, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2522, file: !114, line: 96, baseType: !105, size: 16, offset: 1032)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2522, file: !114, line: 97, baseType: !105, size: 16, offset: 1048)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2522, file: !114, line: 98, baseType: !105, size: 16, offset: 1064)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2522, file: !114, line: 99, baseType: !105, size: 16, offset: 1080)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2522, file: !114, line: 100, baseType: !105, size: 16, offset: 1096)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2522, file: !114, line: 101, baseType: !105, size: 16, offset: 1112)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2522, file: !114, line: 102, baseType: !105, size: 16, offset: 1128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2522, file: !114, line: 103, baseType: !98, size: 8, offset: 1144)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2522, file: !114, line: 104, baseType: !105, size: 16, offset: 1152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2522, file: !114, line: 105, baseType: !105, size: 16, offset: 1168)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2522, file: !114, line: 106, baseType: !105, size: 16, offset: 1184)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2522, file: !114, line: 107, baseType: !98, size: 8, offset: 1200)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2522, file: !114, line: 108, baseType: !98, size: 8, offset: 1208)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2522, file: !114, line: 109, baseType: !105, size: 16, offset: 1216)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2522, file: !114, line: 110, baseType: !105, size: 16, offset: 1232)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2522, file: !114, line: 111, baseType: !2469, size: 64, offset: 1248)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2522, file: !114, line: 114, baseType: !105, size: 16, offset: 1312)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2522, file: !114, line: 115, baseType: !2491, size: 704, offset: 1328)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2522, file: !114, line: 117, baseType: !105, size: 16, offset: 2032)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2495, file: !72, line: 1038, baseType: !109, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !190, file: !72, line: 1101, baseType: !2587, size: 384, offset: 12160)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !72, line: 1021, size: 384, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2595, !2596, !2600}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2587, file: !72, line: 1022, baseType: !2515, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2587, file: !72, line: 1023, baseType: !2511, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2587, file: !72, line: 1024, baseType: !2592, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!153, !189, !286, !205}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2587, file: !72, line: 1025, baseType: !2592, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2587, file: !72, line: 1026, baseType: !2597, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!153, !189, !153}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2587, file: !72, line: 1027, baseType: !2601, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!153, !189, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !72, line: 492, size: 1536, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2605, file: !72, line: 493, baseType: !71, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2605, file: !72, line: 499, baseType: !2609, size: 1472, offset: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !72, line: 494, size: 1472, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2609, file: !72, line: 495, baseType: !5, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !72, line: 496, baseType: !2613, size: 1408, offset: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2609, file: !72, line: 496, size: 1408, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2613, file: !72, line: 497, baseType: !2616, size: 1408)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !72, line: 436, size: 1408, elements: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2616, file: !72, line: 437, baseType: !206, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2616, file: !72, line: 438, baseType: !203, size: 32, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2616, file: !72, line: 439, baseType: !206, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2616, file: !72, line: 440, baseType: !206, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2616, file: !72, line: 441, baseType: !203, size: 32, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2616, file: !72, line: 442, baseType: !203, size: 32, offset: 288)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2616, file: !72, line: 443, baseType: !203, size: 32, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2616, file: !72, line: 444, baseType: !203, size: 32, offset: 352)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2616, file: !72, line: 445, baseType: !203, size: 32, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2616, file: !72, line: 446, baseType: !203, size: 32, offset: 416)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2616, file: !72, line: 447, baseType: !203, size: 32, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2616, file: !72, line: 448, baseType: !203, size: 32, offset: 480)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2616, file: !72, line: 449, baseType: !203, size: 32, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2616, file: !72, line: 450, baseType: !203, size: 32, offset: 544)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2616, file: !72, line: 451, baseType: !203, size: 32, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2616, file: !72, line: 452, baseType: !203, size: 32, offset: 608)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2616, file: !72, line: 453, baseType: !203, size: 32, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2616, file: !72, line: 454, baseType: !203, size: 32, offset: 672)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2616, file: !72, line: 455, baseType: !203, size: 32, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2616, file: !72, line: 456, baseType: !203, size: 32, offset: 736)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2616, file: !72, line: 457, baseType: !203, size: 32, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2616, file: !72, line: 458, baseType: !203, size: 32, offset: 800)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2616, file: !72, line: 459, baseType: !203, size: 32, offset: 832)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2616, file: !72, line: 460, baseType: !203, size: 32, offset: 864)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2616, file: !72, line: 461, baseType: !203, size: 32, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2616, file: !72, line: 462, baseType: !203, size: 32, offset: 928)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2616, file: !72, line: 463, baseType: !203, size: 32, offset: 960)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2616, file: !72, line: 464, baseType: !203, size: 32, offset: 992)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2616, file: !72, line: 465, baseType: !203, size: 32, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2616, file: !72, line: 466, baseType: !203, size: 32, offset: 1056)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2616, file: !72, line: 467, baseType: !203, size: 32, offset: 1088)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2616, file: !72, line: 468, baseType: !206, size: 64, offset: 1152)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2616, file: !72, line: 469, baseType: !203, size: 32, offset: 1216)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2616, file: !72, line: 470, baseType: !203, size: 32, offset: 1248)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2616, file: !72, line: 471, baseType: !203, size: 32, offset: 1280)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2616, file: !72, line: 472, baseType: !203, size: 32, offset: 1312)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2616, file: !72, line: 473, baseType: !203, size: 32, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2616, file: !72, line: 474, baseType: !203, size: 32, offset: 1376)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !190, file: !72, line: 1102, baseType: !2657, size: 1280, offset: 12544)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !72, line: 989, size: 1280, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2665, !2669, !2673, !2677, !2681, !2685, !2689, !2690, !2691, !2695, !2696, !2700, !2701, !2702}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2657, file: !72, line: 990, baseType: !109, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2657, file: !72, line: 991, baseType: !109, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2657, file: !72, line: 992, baseType: !2662, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !189, !153}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2657, file: !72, line: 993, baseType: !2666, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!98, !189}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2657, file: !72, line: 994, baseType: !2670, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !189, !98}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2657, file: !72, line: 995, baseType: !2674, size: 64, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !189, !138, !153}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2657, file: !72, line: 996, baseType: !2678, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !189, !97, !153}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2657, file: !72, line: 997, baseType: !2682, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !189, !153, !5}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2657, file: !72, line: 998, baseType: !2686, size: 64, offset: 512)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{null, !189, !5, !153, !153}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2657, file: !72, line: 1000, baseType: !2515, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2657, file: !72, line: 1001, baseType: !2515, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2657, file: !72, line: 1002, baseType: !2692, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!153, !189, !286}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2657, file: !72, line: 1003, baseType: !2692, size: 64, offset: 768)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2657, file: !72, line: 1004, baseType: !2697, size: 64, offset: 832)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!153, !189, !153, !97}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2657, file: !72, line: 1006, baseType: !2697, size: 64, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2657, file: !72, line: 1008, baseType: !153, size: 32, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2657, file: !72, line: 1009, baseType: !2703, size: 256, offset: 1024)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !72, line: 951, size: 256, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2703, file: !72, line: 952, baseType: !670, size: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2703, file: !72, line: 953, baseType: !2707, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !72, line: 935, size: 256, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2756}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2709, file: !72, line: 936, baseType: !2515, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2709, file: !72, line: 937, baseType: !2511, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2709, file: !72, line: 938, baseType: !2714, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!153, !189, !2717, !379}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !72, line: 860, size: 192, elements: !2720)
!2720 = !{!2721, !2722, !2755}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2719, file: !72, line: 861, baseType: !5, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2719, file: !72, line: 862, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !72, line: 593, size: 320, elements: !2726)
!2726 = !{!2727, !2728, !2754}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2725, file: !72, line: 594, baseType: !75, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2725, file: !72, line: 600, baseType: !2729, size: 192, offset: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2725, file: !72, line: 595, size: 192, elements: !2730)
!2730 = !{!2731, !2735, !2740, !2750}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2729, file: !72, line: 596, baseType: !2732, size: 8)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !72, line: 519, size: 8, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2732, file: !72, line: 520, baseType: !98, size: 8)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2729, file: !72, line: 597, baseType: !2736, size: 128)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !72, line: 528, size: 128, elements: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2736, file: !72, line: 529, baseType: !5, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2736, file: !72, line: 530, baseType: !138, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2729, file: !72, line: 598, baseType: !2741, size: 192)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !72, line: 545, size: 192, elements: !2742)
!2742 = !{!2743, !2744, !2749}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2741, file: !72, line: 546, baseType: !5, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2741, file: !72, line: 550, baseType: !2745, size: 64, offset: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2741, file: !72, line: 547, size: 64, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2745, file: !72, line: 548, baseType: !109, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2745, file: !72, line: 549, baseType: !1658, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2741, file: !72, line: 551, baseType: !379, size: 8, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2729, file: !72, line: 599, baseType: !2751, size: 32)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !72, line: 558, size: 32, elements: !2752)
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2751, file: !72, line: 559, baseType: !5, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2725, file: !72, line: 601, baseType: !5, size: 32, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2719, file: !72, line: 863, baseType: !5, size: 32, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2709, file: !72, line: 941, baseType: !2757, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!153, !189, !153, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !190, file: !72, line: 1103, baseType: !5, size: 32, offset: 13824)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !190, file: !72, line: 1106, baseType: !2760, size: 64, offset: 13888)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !190, file: !72, line: 1107, baseType: !2604, size: 64, offset: 13952)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !190, file: !72, line: 1110, baseType: !5, size: 32, offset: 14016)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !190, file: !72, line: 1111, baseType: !5, size: 32, offset: 14048)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !190, file: !72, line: 1112, baseType: !5, size: 32, offset: 14080)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !190, file: !72, line: 1113, baseType: !5, size: 32, offset: 14112)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !190, file: !72, line: 1114, baseType: !2770, size: 64, offset: 14144)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2772, line: 41, size: 576, elements: !2773)
!2772 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2773 = !{!2774, !2775, !2777, !2778, !2779, !2781, !2782, !2783, !2784}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2771, file: !2772, line: 42, baseType: !153, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2771, file: !2772, line: 43, baseType: !2776, size: 256, offset: 32)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !810)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2771, file: !2772, line: 44, baseType: !153, size: 32, offset: 288)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2771, file: !2772, line: 45, baseType: !153, size: 32, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2771, file: !2772, line: 46, baseType: !2780, size: 64, offset: 352)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !810)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2771, file: !2772, line: 47, baseType: !153, size: 32, offset: 416)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2771, file: !2772, line: 48, baseType: !153, size: 32, offset: 448)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2771, file: !2772, line: 49, baseType: !153, size: 32, offset: 480)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2771, file: !2772, line: 50, baseType: !110, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !190, file: !72, line: 1115, baseType: !2770, size: 64, offset: 14208)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !190, file: !72, line: 1116, baseType: !2770, size: 64, offset: 14272)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !190, file: !72, line: 1117, baseType: !97, size: 64, offset: 14336)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !190, file: !72, line: 1120, baseType: !5, size: 32, offset: 14400)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !190, file: !72, line: 1121, baseType: !5, size: 32, offset: 14432)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !190, file: !72, line: 1122, baseType: !5, size: 32, offset: 14464)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !190, file: !72, line: 1123, baseType: !5, size: 32, offset: 14496)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !190, file: !72, line: 1124, baseType: !5, size: 32, offset: 14528)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !190, file: !72, line: 1127, baseType: !97, size: 64, offset: 14592)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !190, file: !72, line: 1128, baseType: !97, size: 64, offset: 14656)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !190, file: !72, line: 1132, baseType: !2796, size: 64, offset: 14720)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !72, line: 1129, size: 64, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2796, file: !72, line: 1130, baseType: !5, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2796, file: !72, line: 1131, baseType: !153, size: 32, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !190, file: !72, line: 1133, baseType: !144, size: 64, offset: 14784)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !190, file: !72, line: 1136, baseType: !670, size: 192, offset: 14848)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !190, file: !72, line: 1137, baseType: !5, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !190, file: !72, line: 1138, baseType: !153, size: 32, offset: 15072)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !190, file: !72, line: 1139, baseType: !153, size: 32, offset: 15104)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !190, file: !72, line: 1142, baseType: !2806, size: 64, offset: 15168)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !190, file: !72, line: 1143, baseType: !2808, size: 1408, offset: 15232)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !72, line: 346, size: 1408, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2831, !2835, !2839, !2843, !2844, !2848, !2852, !2853, !2854, !2855, !2856}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2808, file: !72, line: 347, baseType: !48, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2808, file: !72, line: 348, baseType: !56, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2808, file: !72, line: 349, baseType: !61, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2808, file: !72, line: 350, baseType: !153, size: 32, offset: 96)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2808, file: !72, line: 351, baseType: !153, size: 32, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2808, file: !72, line: 352, baseType: !153, size: 32, offset: 160)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2808, file: !72, line: 353, baseType: !153, size: 32, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2808, file: !72, line: 354, baseType: !153, size: 32, offset: 224)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2808, file: !72, line: 355, baseType: !153, size: 32, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2808, file: !72, line: 356, baseType: !153, size: 32, offset: 288)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2808, file: !72, line: 357, baseType: !5, size: 32, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2808, file: !72, line: 358, baseType: !109, size: 64, offset: 384)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2808, file: !72, line: 359, baseType: !97, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2808, file: !72, line: 360, baseType: !97, size: 64, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2808, file: !72, line: 361, baseType: !2662, size: 64, offset: 576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2808, file: !72, line: 362, baseType: !2826, size: 64, offset: 640)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!153, !189, !2829, !110}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2808, file: !72, line: 364, baseType: !2832, size: 64, offset: 704)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!153, !189, !110, !110, !110}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2808, file: !72, line: 366, baseType: !2836, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!153, !189, !110, !153, !153}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2808, file: !72, line: 368, baseType: !2840, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!153, !189, !2829, !153, !153}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2808, file: !72, line: 370, baseType: !2836, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2808, file: !72, line: 372, baseType: !2845, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!153, !189, !202, !202, !110, !153}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2808, file: !72, line: 374, baseType: !2849, size: 64, offset: 1024)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!153, !189, !202, !202, !2829, !153, !153}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2808, file: !72, line: 377, baseType: !2840, size: 64, offset: 1088)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2808, file: !72, line: 379, baseType: !2597, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2808, file: !72, line: 380, baseType: !2597, size: 64, offset: 1216)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2808, file: !72, line: 381, baseType: !2597, size: 64, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2808, file: !72, line: 382, baseType: !2597, size: 64, offset: 1344)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !190, file: !72, line: 1144, baseType: !109, size: 64, offset: 16640)
!2858 = !DILocalVariable(name: "map", arg: 1, scope: !2859, file: !2860, line: 405, type: !271)
!2859 = distinct !DISubprogram(name: "bitmap_set", scope: !2860, file: !2860, line: 405, type: !2861, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!2860 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !271, !5, !5}
!2863 = !DILocation(line: 405, column: 55, scope: !2859, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 303, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !1, line: 299, column: 63)
!2866 = distinct !DILexicalBlock(scope: !186, file: !1, line: 299, column: 6)
!2867 = !DILocalVariable(name: "start", arg: 2, scope: !2859, file: !2860, line: 405, type: !5)
!2868 = !DILocation(line: 405, column: 73, scope: !2859, inlinedAt: !2864)
!2869 = !DILocalVariable(name: "nbits", arg: 3, scope: !2859, file: !2860, line: 406, type: !5)
!2870 = !DILocation(line: 406, column: 16, scope: !2859, inlinedAt: !2864)
!2871 = !DILocation(line: 405, column: 55, scope: !2859, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 301, column: 3, scope: !2865)
!2873 = !DILocation(line: 405, column: 73, scope: !2859, inlinedAt: !2872)
!2874 = !DILocation(line: 406, column: 16, scope: !2859, inlinedAt: !2872)
!2875 = !DILocalVariable(name: "x", arg: 1, scope: !2876, file: !2877, line: 324, type: !5)
!2876 = distinct !DISubprogram(name: "fls", scope: !2877, file: !2877, line: 324, type: !2878, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!2877 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!153, !5}
!2880 = !DILocation(line: 324, column: 45, scope: !2876, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 265, column: 9, scope: !186)
!2882 = !DILocalVariable(name: "r", scope: !2876, file: !2877, line: 326, type: !153)
!2883 = !DILocation(line: 326, column: 6, scope: !2876, inlinedAt: !2881)
!2884 = !DILocation(line: 324, column: 45, scope: !2876, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 254, column: 10, scope: !186)
!2886 = !DILocation(line: 326, column: 6, scope: !2876, inlinedAt: !2885)
!2887 = !DILocalVariable(name: "chip", arg: 1, scope: !186, file: !1, line: 144, type: !189)
!2888 = !DILocation(line: 144, column: 40, scope: !186)
!2889 = !DILocalVariable(name: "base", scope: !186, file: !1, line: 146, type: !2402)
!2890 = !DILocation(line: 146, column: 22, scope: !186)
!2891 = !DILocation(line: 146, column: 30, scope: !186)
!2892 = !DILocation(line: 146, column: 36, scope: !186)
!2893 = !DILocalVariable(name: "mtd", scope: !186, file: !1, line: 147, type: !232)
!2894 = !DILocation(line: 147, column: 19, scope: !186)
!2895 = !DILocation(line: 147, column: 37, scope: !186)
!2896 = !DILocation(line: 147, column: 25, scope: !186)
!2897 = !DILocalVariable(name: "memorg", scope: !186, file: !1, line: 148, type: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2899 = !DILocation(line: 148, column: 35, scope: !186)
!2900 = !DILocalVariable(name: "p", scope: !186, file: !1, line: 149, type: !2521)
!2901 = !DILocation(line: 149, column: 27, scope: !186)
!2902 = !DILocalVariable(name: "pbuf", scope: !186, file: !1, line: 149, type: !2521)
!2903 = !DILocation(line: 149, column: 38, scope: !186)
!2904 = !DILocalVariable(name: "onfi", scope: !186, file: !1, line: 150, type: !2480)
!2905 = !DILocation(line: 150, column: 22, scope: !186)
!2906 = !DILocalVariable(name: "use_datain", scope: !186, file: !1, line: 151, type: !379)
!2907 = !DILocation(line: 151, column: 7, scope: !186)
!2908 = !DILocalVariable(name: "onfi_version", scope: !186, file: !1, line: 152, type: !153)
!2909 = !DILocation(line: 152, column: 6, scope: !186)
!2910 = !DILocalVariable(name: "id", scope: !186, file: !1, line: 153, type: !2911)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32, elements: !652)
!2912 = !DILocation(line: 153, column: 7, scope: !186)
!2913 = !DILocalVariable(name: "i", scope: !186, file: !1, line: 154, type: !153)
!2914 = !DILocation(line: 154, column: 6, scope: !186)
!2915 = !DILocalVariable(name: "ret", scope: !186, file: !1, line: 154, type: !153)
!2916 = !DILocation(line: 154, column: 9, scope: !186)
!2917 = !DILocalVariable(name: "val", scope: !186, file: !1, line: 154, type: !153)
!2918 = !DILocation(line: 154, column: 14, scope: !186)
!2919 = !DILocalVariable(name: "crc", scope: !186, file: !1, line: 155, type: !137)
!2920 = !DILocation(line: 155, column: 6, scope: !186)
!2921 = !DILocation(line: 157, column: 31, scope: !186)
!2922 = !DILocation(line: 157, column: 37, scope: !186)
!2923 = !DILocation(line: 157, column: 11, scope: !186)
!2924 = !DILocation(line: 157, column: 9, scope: !186)
!2925 = !DILocation(line: 160, column: 23, scope: !186)
!2926 = !DILocation(line: 160, column: 35, scope: !186)
!2927 = !DILocation(line: 160, column: 8, scope: !186)
!2928 = !DILocation(line: 160, column: 6, scope: !186)
!2929 = !DILocation(line: 161, column: 6, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !186, file: !1, line: 161, column: 6)
!2931 = !DILocation(line: 161, column: 10, scope: !2930)
!2932 = !DILocation(line: 161, column: 21, scope: !2930)
!2933 = !DILocation(line: 161, column: 13, scope: !2930)
!2934 = !DILocation(line: 161, column: 6, scope: !186)
!2935 = !DILocation(line: 162, column: 3, scope: !2930)
!2936 = !DILocation(line: 165, column: 9, scope: !186)
!2937 = !DILocation(line: 165, column: 7, scope: !186)
!2938 = !DILocation(line: 166, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !186, file: !1, line: 166, column: 6)
!2940 = !DILocation(line: 166, column: 6, scope: !186)
!2941 = !DILocation(line: 167, column: 3, scope: !2939)
!2942 = !DILocation(line: 169, column: 24, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !186, file: !1, line: 169, column: 6)
!2944 = !DILocation(line: 169, column: 7, scope: !2943)
!2945 = !DILocation(line: 169, column: 30, scope: !2943)
!2946 = !DILocation(line: 170, column: 25, scope: !2943)
!2947 = !DILocation(line: 170, column: 32, scope: !2943)
!2948 = !DILocation(line: 170, column: 31, scope: !2943)
!2949 = !DILocation(line: 170, column: 7, scope: !2943)
!2950 = !DILocation(line: 169, column: 6, scope: !186)
!2951 = !DILocation(line: 171, column: 14, scope: !2943)
!2952 = !DILocation(line: 171, column: 3, scope: !2943)
!2953 = !DILocation(line: 173, column: 9, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !186, file: !1, line: 173, column: 2)
!2955 = !DILocation(line: 173, column: 7, scope: !2954)
!2956 = !DILocation(line: 173, column: 14, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !1, line: 173, column: 2)
!2958 = !DILocation(line: 173, column: 16, scope: !2957)
!2959 = !DILocation(line: 173, column: 2, scope: !2954)
!2960 = !DILocation(line: 174, column: 8, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 174, column: 7)
!2962 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 173, column: 41)
!2963 = !DILocation(line: 174, column: 7, scope: !2962)
!2964 = !DILocation(line: 175, column: 34, scope: !2961)
!2965 = !DILocation(line: 175, column: 44, scope: !2961)
!2966 = !DILocation(line: 175, column: 49, scope: !2961)
!2967 = !DILocation(line: 175, column: 43, scope: !2961)
!2968 = !DILocation(line: 175, column: 10, scope: !2961)
!2969 = !DILocation(line: 175, column: 8, scope: !2961)
!2970 = !DILocation(line: 175, column: 4, scope: !2961)
!2971 = !DILocation(line: 177, column: 12, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2961, file: !1, line: 177, column: 12)
!2973 = !DILocation(line: 177, column: 12, scope: !2961)
!2974 = !DILocation(line: 178, column: 28, scope: !2972)
!2975 = !DILocation(line: 178, column: 35, scope: !2972)
!2976 = !DILocation(line: 178, column: 40, scope: !2972)
!2977 = !DILocation(line: 178, column: 34, scope: !2972)
!2978 = !DILocation(line: 178, column: 10, scope: !2972)
!2979 = !DILocation(line: 178, column: 8, scope: !2972)
!2980 = !DILocation(line: 178, column: 4, scope: !2972)
!2981 = !DILocation(line: 181, column: 37, scope: !2972)
!2982 = !DILocation(line: 181, column: 59, scope: !2972)
!2983 = !DILocation(line: 181, column: 57, scope: !2972)
!2984 = !DILocation(line: 181, column: 43, scope: !2972)
!2985 = !DILocation(line: 182, column: 10, scope: !2972)
!2986 = !DILocation(line: 182, column: 15, scope: !2972)
!2987 = !DILocation(line: 182, column: 9, scope: !2972)
!2988 = !DILocation(line: 181, column: 10, scope: !2972)
!2989 = !DILocation(line: 181, column: 8, scope: !2972)
!2990 = !DILocation(line: 184, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 184, column: 7)
!2992 = !DILocation(line: 184, column: 7, scope: !2962)
!2993 = !DILocation(line: 185, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2991, file: !1, line: 184, column: 12)
!2995 = !DILocation(line: 186, column: 4, scope: !2994)
!2996 = !DILocation(line: 189, column: 42, scope: !2962)
!2997 = !DILocation(line: 189, column: 47, scope: !2962)
!2998 = !DILocation(line: 189, column: 35, scope: !2962)
!2999 = !DILocation(line: 189, column: 9, scope: !2962)
!3000 = !DILocation(line: 189, column: 7, scope: !2962)
!3001 = !DILocation(line: 190, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 190, column: 7)
!3003 = !DILocation(line: 190, column: 14, scope: !3002)
!3004 = !DILocation(line: 190, column: 11, scope: !3002)
!3005 = !DILocation(line: 190, column: 7, scope: !2962)
!3006 = !DILocation(line: 191, column: 9, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3002, file: !1, line: 190, column: 40)
!3008 = !DILocation(line: 191, column: 14, scope: !3007)
!3009 = !DILocation(line: 191, column: 6, scope: !3007)
!3010 = !DILocation(line: 192, column: 4, scope: !3007)
!3011 = !DILocation(line: 194, column: 2, scope: !2962)
!3012 = !DILocation(line: 173, column: 37, scope: !2957)
!3013 = !DILocation(line: 173, column: 2, scope: !2957)
!3014 = distinct !{!3014, !2959, !3015}
!3015 = !DILocation(line: 194, column: 2, scope: !2954)
!3016 = !DILocation(line: 196, column: 6, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !186, file: !1, line: 196, column: 6)
!3018 = !DILocation(line: 196, column: 8, scope: !3017)
!3019 = !DILocation(line: 196, column: 6, scope: !186)
!3020 = !DILocalVariable(name: "srcbufs", scope: !3021, file: !1, line: 197, type: !3022)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !1, line: 196, column: 29)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1658, size: 192, elements: !468)
!3023 = !DILocation(line: 197, column: 15, scope: !3021)
!3024 = !DILocalVariable(name: "j", scope: !3021, file: !1, line: 198, type: !5)
!3025 = !DILocation(line: 198, column: 16, scope: !3021)
!3026 = !DILocation(line: 200, column: 10, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3021, file: !1, line: 200, column: 3)
!3028 = !DILocation(line: 200, column: 8, scope: !3027)
!3029 = !DILocation(line: 200, column: 15, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !1, line: 200, column: 3)
!3031 = !DILocation(line: 200, column: 17, scope: !3030)
!3032 = !DILocation(line: 200, column: 3, scope: !3027)
!3033 = !DILocation(line: 201, column: 17, scope: !3030)
!3034 = !DILocation(line: 201, column: 24, scope: !3030)
!3035 = !DILocation(line: 201, column: 22, scope: !3030)
!3036 = !DILocation(line: 201, column: 12, scope: !3030)
!3037 = !DILocation(line: 201, column: 4, scope: !3030)
!3038 = !DILocation(line: 201, column: 15, scope: !3030)
!3039 = !DILocation(line: 200, column: 38, scope: !3030)
!3040 = !DILocation(line: 200, column: 3, scope: !3030)
!3041 = distinct !{!3041, !3032, !3042}
!3042 = !DILocation(line: 201, column: 24, scope: !3027)
!3043 = !DILocation(line: 203, column: 3, scope: !3021)
!3044 = !DILocation(line: 204, column: 26, scope: !3021)
!3045 = !DILocation(line: 204, column: 53, scope: !3021)
!3046 = !DILocation(line: 204, column: 3, scope: !3021)
!3047 = !DILocation(line: 207, column: 41, scope: !3021)
!3048 = !DILocation(line: 207, column: 35, scope: !3021)
!3049 = !DILocation(line: 207, column: 9, scope: !3021)
!3050 = !DILocation(line: 207, column: 7, scope: !3021)
!3051 = !DILocation(line: 208, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3021, file: !1, line: 208, column: 7)
!3053 = !DILocation(line: 208, column: 14, scope: !3052)
!3054 = !DILocation(line: 208, column: 11, scope: !3052)
!3055 = !DILocation(line: 208, column: 7, scope: !3021)
!3056 = !DILocation(line: 209, column: 4, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3052, file: !1, line: 208, column: 38)
!3058 = !DILocation(line: 210, column: 4, scope: !3057)
!3059 = !DILocation(line: 212, column: 7, scope: !3021)
!3060 = !DILocation(line: 212, column: 5, scope: !3021)
!3061 = !DILocation(line: 213, column: 2, scope: !3021)
!3062 = !DILocation(line: 215, column: 6, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !186, file: !1, line: 215, column: 6)
!3064 = !DILocation(line: 215, column: 12, scope: !3063)
!3065 = !DILocation(line: 215, column: 25, scope: !3063)
!3066 = !DILocation(line: 215, column: 30, scope: !3063)
!3067 = !DILocation(line: 215, column: 33, scope: !3063)
!3068 = !DILocation(line: 215, column: 39, scope: !3063)
!3069 = !DILocation(line: 215, column: 52, scope: !3063)
!3070 = !DILocation(line: 215, column: 58, scope: !3063)
!3071 = !DILocation(line: 215, column: 62, scope: !3063)
!3072 = !DILocation(line: 216, column: 6, scope: !3063)
!3073 = !DILocation(line: 216, column: 12, scope: !3063)
!3074 = !DILocation(line: 216, column: 25, scope: !3063)
!3075 = !DILocation(line: 216, column: 31, scope: !3063)
!3076 = !DILocation(line: 216, column: 36, scope: !3063)
!3077 = !DILocation(line: 215, column: 6, scope: !186)
!3078 = !DILocation(line: 217, column: 3, scope: !3063)
!3079 = !DILocation(line: 217, column: 9, scope: !3063)
!3080 = !DILocation(line: 217, column: 22, scope: !3063)
!3081 = !DILocation(line: 217, column: 28, scope: !3063)
!3082 = !DILocation(line: 217, column: 33, scope: !3063)
!3083 = !DILocation(line: 217, column: 55, scope: !3063)
!3084 = !DILocation(line: 217, column: 61, scope: !3063)
!3085 = !DILocation(line: 220, column: 8, scope: !186)
!3086 = !DILocation(line: 220, column: 6, scope: !186)
!3087 = !DILocation(line: 221, column: 6, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !186, file: !1, line: 221, column: 6)
!3089 = !DILocation(line: 221, column: 10, scope: !3088)
!3090 = !DILocation(line: 221, column: 6, scope: !186)
!3091 = !DILocation(line: 222, column: 16, scope: !3088)
!3092 = !DILocation(line: 222, column: 3, scope: !3088)
!3093 = !DILocation(line: 223, column: 11, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3088, file: !1, line: 223, column: 11)
!3095 = !DILocation(line: 223, column: 15, scope: !3094)
!3096 = !DILocation(line: 223, column: 11, scope: !3088)
!3097 = !DILocation(line: 224, column: 16, scope: !3094)
!3098 = !DILocation(line: 224, column: 3, scope: !3094)
!3099 = !DILocation(line: 225, column: 11, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 225, column: 11)
!3101 = !DILocation(line: 225, column: 15, scope: !3100)
!3102 = !DILocation(line: 225, column: 11, scope: !3094)
!3103 = !DILocation(line: 226, column: 16, scope: !3100)
!3104 = !DILocation(line: 226, column: 3, scope: !3100)
!3105 = !DILocation(line: 227, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !1, line: 227, column: 11)
!3107 = !DILocation(line: 227, column: 15, scope: !3106)
!3108 = !DILocation(line: 227, column: 11, scope: !3100)
!3109 = !DILocation(line: 228, column: 16, scope: !3106)
!3110 = !DILocation(line: 228, column: 3, scope: !3106)
!3111 = !DILocation(line: 229, column: 11, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3106, file: !1, line: 229, column: 11)
!3113 = !DILocation(line: 229, column: 15, scope: !3112)
!3114 = !DILocation(line: 229, column: 11, scope: !3106)
!3115 = !DILocation(line: 230, column: 16, scope: !3112)
!3116 = !DILocation(line: 230, column: 3, scope: !3112)
!3117 = !DILocation(line: 232, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !186, file: !1, line: 232, column: 6)
!3119 = !DILocation(line: 232, column: 6, scope: !186)
!3120 = !DILocation(line: 233, column: 3, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3118, file: !1, line: 232, column: 21)
!3122 = !DILocation(line: 234, column: 3, scope: !3121)
!3123 = !DILocation(line: 237, column: 18, scope: !186)
!3124 = !DILocation(line: 237, column: 21, scope: !186)
!3125 = !DILocation(line: 237, column: 2, scope: !186)
!3126 = !DILocation(line: 238, column: 18, scope: !186)
!3127 = !DILocation(line: 238, column: 21, scope: !186)
!3128 = !DILocation(line: 238, column: 2, scope: !186)
!3129 = !DILocation(line: 239, column: 35, scope: !186)
!3130 = !DILocation(line: 239, column: 38, scope: !186)
!3131 = !DILocation(line: 239, column: 27, scope: !186)
!3132 = !DILocation(line: 239, column: 2, scope: !186)
!3133 = !DILocation(line: 239, column: 8, scope: !186)
!3134 = !DILocation(line: 239, column: 19, scope: !186)
!3135 = !DILocation(line: 239, column: 25, scope: !186)
!3136 = !DILocation(line: 240, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !186, file: !1, line: 240, column: 6)
!3138 = !DILocation(line: 240, column: 13, scope: !3137)
!3139 = !DILocation(line: 240, column: 24, scope: !3137)
!3140 = !DILocation(line: 240, column: 6, scope: !186)
!3141 = !DILocation(line: 241, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3137, file: !1, line: 240, column: 31)
!3143 = !DILocation(line: 242, column: 3, scope: !3142)
!3144 = !DILocation(line: 245, column: 21, scope: !186)
!3145 = !DILocation(line: 245, column: 2, scope: !186)
!3146 = !DILocation(line: 245, column: 10, scope: !186)
!3147 = !DILocation(line: 245, column: 19, scope: !186)
!3148 = !DILocation(line: 246, column: 19, scope: !186)
!3149 = !DILocation(line: 246, column: 27, scope: !186)
!3150 = !DILocation(line: 246, column: 2, scope: !186)
!3151 = !DILocation(line: 246, column: 7, scope: !186)
!3152 = !DILocation(line: 246, column: 17, scope: !186)
!3153 = !DILocation(line: 254, column: 14, scope: !186)
!3154 = !DILocation(line: 340, column: 14, scope: !2876, inlinedAt: !2885)
!3155 = !DILocation(line: 338, column: 2, scope: !2876, inlinedAt: !2885)
!3156 = !{i32 307640}
!3157 = !DILocation(line: 351, column: 9, scope: !2876, inlinedAt: !2885)
!3158 = !DILocation(line: 351, column: 11, scope: !2876, inlinedAt: !2885)
!3159 = !DILocation(line: 254, column: 47, scope: !186)
!3160 = !DILocation(line: 254, column: 6, scope: !186)
!3161 = !DILocation(line: 253, column: 2, scope: !186)
!3162 = !DILocation(line: 253, column: 10, scope: !186)
!3163 = !DILocation(line: 253, column: 31, scope: !186)
!3164 = !DILocation(line: 255, column: 19, scope: !186)
!3165 = !DILocation(line: 255, column: 27, scope: !186)
!3166 = !DILocation(line: 255, column: 50, scope: !186)
!3167 = !DILocation(line: 255, column: 58, scope: !186)
!3168 = !DILocation(line: 255, column: 48, scope: !186)
!3169 = !DILocation(line: 255, column: 2, scope: !186)
!3170 = !DILocation(line: 255, column: 7, scope: !186)
!3171 = !DILocation(line: 255, column: 17, scope: !186)
!3172 = !DILocation(line: 257, column: 20, scope: !186)
!3173 = !DILocation(line: 257, column: 2, scope: !186)
!3174 = !DILocation(line: 257, column: 10, scope: !186)
!3175 = !DILocation(line: 257, column: 18, scope: !186)
!3176 = !DILocation(line: 258, column: 17, scope: !186)
!3177 = !DILocation(line: 258, column: 25, scope: !186)
!3178 = !DILocation(line: 258, column: 2, scope: !186)
!3179 = !DILocation(line: 258, column: 7, scope: !186)
!3180 = !DILocation(line: 258, column: 15, scope: !186)
!3181 = !DILocation(line: 260, column: 28, scope: !186)
!3182 = !DILocation(line: 260, column: 31, scope: !186)
!3183 = !DILocation(line: 260, column: 2, scope: !186)
!3184 = !DILocation(line: 260, column: 10, scope: !186)
!3185 = !DILocation(line: 260, column: 26, scope: !186)
!3186 = !DILocation(line: 261, column: 32, scope: !186)
!3187 = !DILocation(line: 261, column: 35, scope: !186)
!3188 = !DILocation(line: 261, column: 29, scope: !186)
!3189 = !DILocation(line: 261, column: 2, scope: !186)
!3190 = !DILocation(line: 261, column: 10, scope: !186)
!3191 = !DILocation(line: 261, column: 25, scope: !186)
!3192 = !DILocation(line: 265, column: 13, scope: !186)
!3193 = !DILocation(line: 340, column: 14, scope: !2876, inlinedAt: !2881)
!3194 = !DILocation(line: 338, column: 2, scope: !2876, inlinedAt: !2881)
!3195 = !DILocation(line: 351, column: 9, scope: !2876, inlinedAt: !2881)
!3196 = !DILocation(line: 351, column: 11, scope: !2876, inlinedAt: !2881)
!3197 = !DILocation(line: 265, column: 45, scope: !186)
!3198 = !DILocation(line: 265, column: 5, scope: !186)
!3199 = !DILocation(line: 264, column: 2, scope: !186)
!3200 = !DILocation(line: 264, column: 10, scope: !186)
!3201 = !DILocation(line: 264, column: 30, scope: !186)
!3202 = !DILocation(line: 266, column: 40, scope: !186)
!3203 = !DILocation(line: 266, column: 2, scope: !186)
!3204 = !DILocation(line: 266, column: 10, scope: !186)
!3205 = !DILocation(line: 266, column: 38, scope: !186)
!3206 = !DILocation(line: 267, column: 26, scope: !186)
!3207 = !DILocation(line: 267, column: 29, scope: !186)
!3208 = !DILocation(line: 267, column: 2, scope: !186)
!3209 = !DILocation(line: 267, column: 10, scope: !186)
!3210 = !DILocation(line: 267, column: 24, scope: !186)
!3211 = !DILocation(line: 269, column: 6, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !186, file: !1, line: 269, column: 6)
!3213 = !DILocation(line: 269, column: 31, scope: !3212)
!3214 = !DILocation(line: 269, column: 6, scope: !186)
!3215 = !DILocation(line: 270, column: 3, scope: !3212)
!3216 = !DILocation(line: 270, column: 9, scope: !3212)
!3217 = !DILocation(line: 270, column: 17, scope: !3212)
!3218 = !DILocation(line: 272, column: 6, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !186, file: !1, line: 272, column: 6)
!3220 = !DILocation(line: 272, column: 9, scope: !3219)
!3221 = !DILocation(line: 272, column: 18, scope: !3219)
!3222 = !DILocation(line: 272, column: 6, scope: !186)
!3223 = !DILocalVariable(name: "requirements", scope: !3224, file: !1, line: 273, type: !2374)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 272, column: 27)
!3225 = !DILocation(line: 273, column: 25, scope: !3224)
!3226 = !DILocation(line: 273, column: 40, scope: !3224)
!3227 = !DILocation(line: 274, column: 16, scope: !3224)
!3228 = !DILocation(line: 274, column: 19, scope: !3224)
!3229 = !DILocation(line: 278, column: 32, scope: !3224)
!3230 = !DILocation(line: 278, column: 3, scope: !3224)
!3231 = !DILocation(line: 279, column: 2, scope: !3224)
!3232 = !DILocation(line: 279, column: 13, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 279, column: 13)
!3234 = !DILocation(line: 279, column: 26, scope: !3233)
!3235 = !DILocation(line: 279, column: 32, scope: !3233)
!3236 = !DILocation(line: 280, column: 4, scope: !3233)
!3237 = !DILocation(line: 280, column: 29, scope: !3233)
!3238 = !DILocation(line: 279, column: 13, scope: !3219)
!3239 = !DILocation(line: 289, column: 30, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3233, file: !1, line: 280, column: 61)
!3241 = !DILocation(line: 289, column: 3, scope: !3240)
!3242 = !DILocation(line: 292, column: 40, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !1, line: 292, column: 7)
!3244 = !DILocation(line: 292, column: 46, scope: !3243)
!3245 = !DILocation(line: 292, column: 7, scope: !3243)
!3246 = !DILocation(line: 292, column: 7, scope: !3240)
!3247 = !DILocation(line: 293, column: 4, scope: !3243)
!3248 = !DILocation(line: 294, column: 2, scope: !3240)
!3249 = !DILocation(line: 295, column: 3, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3233, file: !1, line: 294, column: 9)
!3251 = !DILocation(line: 299, column: 6, scope: !2866)
!3252 = !DILocation(line: 299, column: 30, scope: !2866)
!3253 = !DILocation(line: 299, column: 6, scope: !186)
!3254 = !DILocation(line: 300, column: 3, scope: !2865)
!3255 = !DILocation(line: 300, column: 9, scope: !2865)
!3256 = !DILocation(line: 300, column: 20, scope: !2865)
!3257 = !DILocation(line: 300, column: 46, scope: !2865)
!3258 = !DILocation(line: 301, column: 14, scope: !2865)
!3259 = !DILocation(line: 301, column: 20, scope: !2865)
!3260 = !DILocation(line: 301, column: 31, scope: !2865)
!3261 = !DILocation(line: 408, column: 27, scope: !3262, inlinedAt: !2872)
!3262 = distinct !DILexicalBlock(scope: !2859, file: !2860, line: 408, column: 6)
!3263 = !DILocation(line: 408, column: 6, scope: !3262, inlinedAt: !2872)
!3264 = !DILocation(line: 408, column: 34, scope: !3262, inlinedAt: !2872)
!3265 = !DILocation(line: 408, column: 37, scope: !3262, inlinedAt: !2872)
!3266 = !DILocation(line: 408, column: 43, scope: !3262, inlinedAt: !2872)
!3267 = !DILocation(line: 408, column: 6, scope: !2859, inlinedAt: !2872)
!3268 = !DILocation(line: 409, column: 13, scope: !3262, inlinedAt: !2872)
!3269 = !DILocation(line: 409, column: 20, scope: !3262, inlinedAt: !2872)
!3270 = !DILocation(line: 409, column: 3, scope: !3262, inlinedAt: !2872)
!3271 = !DILocation(line: 410, column: 32, scope: !3272, inlinedAt: !2872)
!3272 = distinct !DILexicalBlock(scope: !3262, file: !2860, line: 410, column: 11)
!3273 = !DILocation(line: 410, column: 38, scope: !3272, inlinedAt: !2872)
!3274 = !DILocation(line: 410, column: 11, scope: !3272, inlinedAt: !2872)
!3275 = !DILocation(line: 410, column: 57, scope: !3272, inlinedAt: !2872)
!3276 = !DILocation(line: 411, column: 4, scope: !3272, inlinedAt: !2872)
!3277 = !DILocation(line: 411, column: 44, scope: !3272, inlinedAt: !2872)
!3278 = !DILocation(line: 412, column: 25, scope: !3272, inlinedAt: !2872)
!3279 = !DILocation(line: 412, column: 31, scope: !3272, inlinedAt: !2872)
!3280 = !DILocation(line: 412, column: 4, scope: !3272, inlinedAt: !2872)
!3281 = !DILocation(line: 412, column: 50, scope: !3272, inlinedAt: !2872)
!3282 = !DILocation(line: 413, column: 4, scope: !3272, inlinedAt: !2872)
!3283 = !DILocation(line: 410, column: 11, scope: !3262, inlinedAt: !2872)
!3284 = !DILocation(line: 414, column: 18, scope: !3272, inlinedAt: !2872)
!3285 = !DILocation(line: 414, column: 10, scope: !3272, inlinedAt: !2872)
!3286 = !DILocation(line: 414, column: 24, scope: !3272, inlinedAt: !2872)
!3287 = !DILocation(line: 414, column: 30, scope: !3272, inlinedAt: !2872)
!3288 = !DILocation(line: 414, column: 22, scope: !3272, inlinedAt: !2872)
!3289 = !DILocation(line: 414, column: 41, scope: !3272, inlinedAt: !2872)
!3290 = !DILocation(line: 414, column: 47, scope: !3272, inlinedAt: !2872)
!3291 = !DILocation(line: 414, column: 3, scope: !3272, inlinedAt: !2872)
!3292 = !DILocation(line: 416, column: 16, scope: !3272, inlinedAt: !2872)
!3293 = !DILocation(line: 416, column: 21, scope: !3272, inlinedAt: !2872)
!3294 = !DILocation(line: 416, column: 28, scope: !3272, inlinedAt: !2872)
!3295 = !DILocation(line: 416, column: 3, scope: !3272, inlinedAt: !2872)
!3296 = !DILocation(line: 303, column: 14, scope: !2865)
!3297 = !DILocation(line: 303, column: 20, scope: !2865)
!3298 = !DILocation(line: 303, column: 31, scope: !2865)
!3299 = !DILocation(line: 408, column: 27, scope: !3262, inlinedAt: !2864)
!3300 = !DILocation(line: 408, column: 6, scope: !3262, inlinedAt: !2864)
!3301 = !DILocation(line: 408, column: 34, scope: !3262, inlinedAt: !2864)
!3302 = !DILocation(line: 408, column: 37, scope: !3262, inlinedAt: !2864)
!3303 = !DILocation(line: 408, column: 43, scope: !3262, inlinedAt: !2864)
!3304 = !DILocation(line: 408, column: 6, scope: !2859, inlinedAt: !2864)
!3305 = !DILocation(line: 409, column: 13, scope: !3262, inlinedAt: !2864)
!3306 = !DILocation(line: 409, column: 20, scope: !3262, inlinedAt: !2864)
!3307 = !DILocation(line: 409, column: 3, scope: !3262, inlinedAt: !2864)
!3308 = !DILocation(line: 410, column: 32, scope: !3272, inlinedAt: !2864)
!3309 = !DILocation(line: 410, column: 38, scope: !3272, inlinedAt: !2864)
!3310 = !DILocation(line: 410, column: 11, scope: !3272, inlinedAt: !2864)
!3311 = !DILocation(line: 410, column: 57, scope: !3272, inlinedAt: !2864)
!3312 = !DILocation(line: 411, column: 4, scope: !3272, inlinedAt: !2864)
!3313 = !DILocation(line: 411, column: 44, scope: !3272, inlinedAt: !2864)
!3314 = !DILocation(line: 412, column: 25, scope: !3272, inlinedAt: !2864)
!3315 = !DILocation(line: 412, column: 31, scope: !3272, inlinedAt: !2864)
!3316 = !DILocation(line: 412, column: 4, scope: !3272, inlinedAt: !2864)
!3317 = !DILocation(line: 412, column: 50, scope: !3272, inlinedAt: !2864)
!3318 = !DILocation(line: 413, column: 4, scope: !3272, inlinedAt: !2864)
!3319 = !DILocation(line: 410, column: 11, scope: !3262, inlinedAt: !2864)
!3320 = !DILocation(line: 414, column: 18, scope: !3272, inlinedAt: !2864)
!3321 = !DILocation(line: 414, column: 10, scope: !3272, inlinedAt: !2864)
!3322 = !DILocation(line: 414, column: 24, scope: !3272, inlinedAt: !2864)
!3323 = !DILocation(line: 414, column: 30, scope: !3272, inlinedAt: !2864)
!3324 = !DILocation(line: 414, column: 22, scope: !3272, inlinedAt: !2864)
!3325 = !DILocation(line: 414, column: 41, scope: !3272, inlinedAt: !2864)
!3326 = !DILocation(line: 414, column: 47, scope: !3272, inlinedAt: !2864)
!3327 = !DILocation(line: 414, column: 3, scope: !3272, inlinedAt: !2864)
!3328 = !DILocation(line: 416, column: 16, scope: !3272, inlinedAt: !2864)
!3329 = !DILocation(line: 416, column: 21, scope: !3272, inlinedAt: !2864)
!3330 = !DILocation(line: 416, column: 28, scope: !3272, inlinedAt: !2864)
!3331 = !DILocation(line: 416, column: 3, scope: !3272, inlinedAt: !2864)
!3332 = !DILocation(line: 305, column: 2, scope: !2865)
!3333 = !DILocation(line: 307, column: 9, scope: !186)
!3334 = !DILocation(line: 307, column: 7, scope: !186)
!3335 = !DILocation(line: 308, column: 7, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !186, file: !1, line: 308, column: 6)
!3337 = !DILocation(line: 308, column: 6, scope: !186)
!3338 = !DILocation(line: 309, column: 7, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !1, line: 308, column: 13)
!3340 = !DILocation(line: 310, column: 3, scope: !3339)
!3341 = !DILocation(line: 313, column: 18, scope: !186)
!3342 = !DILocation(line: 313, column: 2, scope: !186)
!3343 = !DILocation(line: 313, column: 8, scope: !186)
!3344 = !DILocation(line: 313, column: 16, scope: !186)
!3345 = !DILocation(line: 314, column: 16, scope: !186)
!3346 = !DILocation(line: 314, column: 2, scope: !186)
!3347 = !DILocation(line: 314, column: 8, scope: !186)
!3348 = !DILocation(line: 314, column: 14, scope: !186)
!3349 = !DILocation(line: 315, column: 16, scope: !186)
!3350 = !DILocation(line: 315, column: 2, scope: !186)
!3351 = !DILocation(line: 315, column: 8, scope: !186)
!3352 = !DILocation(line: 315, column: 14, scope: !186)
!3353 = !DILocation(line: 316, column: 13, scope: !186)
!3354 = !DILocation(line: 316, column: 2, scope: !186)
!3355 = !DILocation(line: 316, column: 8, scope: !186)
!3356 = !DILocation(line: 316, column: 11, scope: !186)
!3357 = !DILocation(line: 317, column: 15, scope: !186)
!3358 = !DILocation(line: 317, column: 2, scope: !186)
!3359 = !DILocation(line: 317, column: 8, scope: !186)
!3360 = !DILocation(line: 317, column: 13, scope: !186)
!3361 = !DILocation(line: 318, column: 28, scope: !186)
!3362 = !DILocation(line: 318, column: 2, scope: !186)
!3363 = !DILocation(line: 318, column: 8, scope: !186)
!3364 = !DILocation(line: 318, column: 26, scope: !186)
!3365 = !DILocation(line: 319, column: 26, scope: !186)
!3366 = !DILocation(line: 319, column: 2, scope: !186)
!3367 = !DILocation(line: 319, column: 8, scope: !186)
!3368 = !DILocation(line: 319, column: 24, scope: !186)
!3369 = !DILocation(line: 320, column: 9, scope: !186)
!3370 = !DILocation(line: 320, column: 15, scope: !186)
!3371 = !DILocation(line: 320, column: 2, scope: !186)
!3372 = !DILocation(line: 320, column: 23, scope: !186)
!3373 = !DILocation(line: 320, column: 26, scope: !186)
!3374 = !DILocation(line: 321, column: 26, scope: !186)
!3375 = !DILocation(line: 321, column: 2, scope: !186)
!3376 = !DILocation(line: 321, column: 8, scope: !186)
!3377 = !DILocation(line: 321, column: 19, scope: !186)
!3378 = !DILocation(line: 321, column: 24, scope: !186)
!3379 = !DILocation(line: 324, column: 8, scope: !186)
!3380 = !DILocation(line: 324, column: 2, scope: !186)
!3381 = !DILocation(line: 326, column: 2, scope: !186)
!3382 = !DILabel(scope: !186, name: "free_model", file: !1, line: 328)
!3383 = !DILocation(line: 328, column: 1, scope: !186)
!3384 = !DILocation(line: 329, column: 8, scope: !186)
!3385 = !DILocation(line: 329, column: 14, scope: !186)
!3386 = !DILocation(line: 329, column: 25, scope: !186)
!3387 = !DILocation(line: 329, column: 2, scope: !186)
!3388 = !DILabel(scope: !186, name: "free_onfi_param_page", file: !1, line: 330)
!3389 = !DILocation(line: 330, column: 1, scope: !186)
!3390 = !DILocation(line: 331, column: 8, scope: !186)
!3391 = !DILocation(line: 331, column: 2, scope: !186)
!3392 = !DILocation(line: 333, column: 9, scope: !186)
!3393 = !DILocation(line: 333, column: 2, scope: !186)
!3394 = !DILocation(line: 334, column: 1, scope: !186)
!3395 = distinct !DISubprogram(name: "nand_to_mtd", scope: !72, file: !72, line: 1152, type: !3396, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!232, !189}
!3398 = !DILocalVariable(name: "chip", arg: 1, scope: !3395, file: !72, line: 1152, type: !189)
!3399 = !DILocation(line: 1152, column: 62, scope: !3395)
!3400 = !DILocation(line: 1154, column: 10, scope: !3395)
!3401 = !DILocation(line: 1154, column: 16, scope: !3395)
!3402 = !DILocation(line: 1154, column: 21, scope: !3395)
!3403 = !DILocation(line: 1154, column: 2, scope: !3395)
!3404 = distinct !DISubprogram(name: "nanddev_get_memorg", scope: !49, file: !49, line: 521, type: !3405, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!2898, !2402}
!3407 = !DILocalVariable(name: "nand", arg: 1, scope: !3404, file: !49, line: 521, type: !2402)
!3408 = !DILocation(line: 521, column: 40, scope: !3404)
!3409 = !DILocation(line: 523, column: 10, scope: !3404)
!3410 = !DILocation(line: 523, column: 16, scope: !3404)
!3411 = !DILocation(line: 523, column: 2, scope: !3404)
!3412 = distinct !DISubprogram(name: "kzalloc", scope: !88, file: !88, line: 662, type: !3413, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!109, !140, !95}
!3415 = !DILocalVariable(name: "s", arg: 1, scope: !3416, file: !88, line: 445, type: !1317)
!3416 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !88, file: !88, line: 445, type: !3417, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!109, !1317, !95, !140}
!3419 = !DILocation(line: 445, column: 72, scope: !3416, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 552, column: 10, scope: !3421, inlinedAt: !3424)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !88, line: 540, column: 34)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !88, line: 540, column: 6)
!3423 = distinct !DISubprogram(name: "kmalloc", scope: !88, file: !88, line: 538, type: !3413, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3424 = distinct !DILocation(line: 664, column: 9, scope: !3412)
!3425 = !DILocalVariable(name: "flags", arg: 2, scope: !3416, file: !88, line: 446, type: !95)
!3426 = !DILocation(line: 446, column: 9, scope: !3416, inlinedAt: !3420)
!3427 = !DILocalVariable(name: "size", arg: 3, scope: !3416, file: !88, line: 446, type: !140)
!3428 = !DILocation(line: 446, column: 23, scope: !3416, inlinedAt: !3420)
!3429 = !DILocalVariable(name: "ret", scope: !3416, file: !88, line: 448, type: !109)
!3430 = !DILocation(line: 448, column: 8, scope: !3416, inlinedAt: !3420)
!3431 = !DILocalVariable(name: "flags", arg: 1, scope: !3432, file: !88, line: 318, type: !95)
!3432 = distinct !DISubprogram(name: "kmalloc_type", scope: !88, file: !88, line: 318, type: !3433, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!87, !95}
!3435 = !DILocation(line: 318, column: 67, scope: !3432, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 553, column: 20, scope: !3421, inlinedAt: !3424)
!3437 = !DILocalVariable(name: "size", arg: 1, scope: !3438, file: !88, line: 346, type: !140)
!3438 = distinct !DISubprogram(name: "kmalloc_index", scope: !88, file: !88, line: 346, type: !3439, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!5, !140}
!3441 = !DILocation(line: 346, column: 58, scope: !3438, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 547, column: 11, scope: !3421, inlinedAt: !3424)
!3443 = !DILocalVariable(name: "size", arg: 1, scope: !3444, file: !88, line: 472, type: !140)
!3444 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !88, file: !88, line: 472, type: !3445, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!109, !140, !95, !5}
!3447 = !DILocation(line: 472, column: 28, scope: !3444, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 481, column: 9, scope: !3449, inlinedAt: !3450)
!3449 = distinct !DISubprogram(name: "kmalloc_large", scope: !88, file: !88, line: 478, type: !3413, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3450 = distinct !DILocation(line: 545, column: 11, scope: !3451, inlinedAt: !3424)
!3451 = distinct !DILexicalBlock(scope: !3421, file: !88, line: 544, column: 7)
!3452 = !DILocalVariable(name: "flags", arg: 2, scope: !3444, file: !88, line: 472, type: !95)
!3453 = !DILocation(line: 472, column: 40, scope: !3444, inlinedAt: !3448)
!3454 = !DILocalVariable(name: "order", arg: 3, scope: !3444, file: !88, line: 472, type: !5)
!3455 = !DILocation(line: 472, column: 60, scope: !3444, inlinedAt: !3448)
!3456 = !DILocalVariable(name: "size", arg: 1, scope: !3449, file: !88, line: 478, type: !140)
!3457 = !DILocation(line: 478, column: 51, scope: !3449, inlinedAt: !3450)
!3458 = !DILocalVariable(name: "flags", arg: 2, scope: !3449, file: !88, line: 478, type: !95)
!3459 = !DILocation(line: 478, column: 63, scope: !3449, inlinedAt: !3450)
!3460 = !DILocalVariable(name: "order", scope: !3449, file: !88, line: 480, type: !5)
!3461 = !DILocation(line: 480, column: 15, scope: !3449, inlinedAt: !3450)
!3462 = !DILocalVariable(name: "size", arg: 1, scope: !3423, file: !88, line: 538, type: !140)
!3463 = !DILocation(line: 538, column: 45, scope: !3423, inlinedAt: !3424)
!3464 = !DILocalVariable(name: "flags", arg: 2, scope: !3423, file: !88, line: 538, type: !95)
!3465 = !DILocation(line: 538, column: 57, scope: !3423, inlinedAt: !3424)
!3466 = !DILocalVariable(name: "index", scope: !3421, file: !88, line: 542, type: !5)
!3467 = !DILocation(line: 542, column: 16, scope: !3421, inlinedAt: !3424)
!3468 = !DILocalVariable(name: "size", arg: 1, scope: !3412, file: !88, line: 662, type: !140)
!3469 = !DILocation(line: 662, column: 36, scope: !3412)
!3470 = !DILocalVariable(name: "flags", arg: 2, scope: !3412, file: !88, line: 662, type: !95)
!3471 = !DILocation(line: 662, column: 48, scope: !3412)
!3472 = !DILocation(line: 664, column: 17, scope: !3412)
!3473 = !DILocation(line: 664, column: 23, scope: !3412)
!3474 = !DILocation(line: 664, column: 29, scope: !3412)
!3475 = !DILocation(line: 540, column: 27, scope: !3422, inlinedAt: !3424)
!3476 = !DILocation(line: 540, column: 6, scope: !3422, inlinedAt: !3424)
!3477 = !DILocation(line: 540, column: 6, scope: !3423, inlinedAt: !3424)
!3478 = !DILocation(line: 544, column: 7, scope: !3451, inlinedAt: !3424)
!3479 = !DILocation(line: 544, column: 12, scope: !3451, inlinedAt: !3424)
!3480 = !DILocation(line: 544, column: 7, scope: !3421, inlinedAt: !3424)
!3481 = !DILocation(line: 545, column: 25, scope: !3451, inlinedAt: !3424)
!3482 = !DILocation(line: 545, column: 31, scope: !3451, inlinedAt: !3424)
!3483 = !DILocation(line: 480, column: 33, scope: !3449, inlinedAt: !3450)
!3484 = !DILocation(line: 480, column: 23, scope: !3449, inlinedAt: !3450)
!3485 = !DILocation(line: 481, column: 29, scope: !3449, inlinedAt: !3450)
!3486 = !DILocation(line: 481, column: 35, scope: !3449, inlinedAt: !3450)
!3487 = !DILocation(line: 481, column: 42, scope: !3449, inlinedAt: !3450)
!3488 = !DILocation(line: 474, column: 23, scope: !3444, inlinedAt: !3448)
!3489 = !DILocation(line: 474, column: 29, scope: !3444, inlinedAt: !3448)
!3490 = !DILocation(line: 474, column: 36, scope: !3444, inlinedAt: !3448)
!3491 = !DILocation(line: 474, column: 9, scope: !3444, inlinedAt: !3448)
!3492 = !DILocation(line: 545, column: 4, scope: !3451, inlinedAt: !3424)
!3493 = !DILocation(line: 547, column: 25, scope: !3421, inlinedAt: !3424)
!3494 = !DILocation(line: 348, column: 7, scope: !3495, inlinedAt: !3442)
!3495 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 348, column: 6)
!3496 = !DILocation(line: 348, column: 6, scope: !3438, inlinedAt: !3442)
!3497 = !DILocation(line: 349, column: 3, scope: !3495, inlinedAt: !3442)
!3498 = !DILocation(line: 351, column: 6, scope: !3499, inlinedAt: !3442)
!3499 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 351, column: 6)
!3500 = !DILocation(line: 351, column: 11, scope: !3499, inlinedAt: !3442)
!3501 = !DILocation(line: 351, column: 6, scope: !3438, inlinedAt: !3442)
!3502 = !DILocation(line: 352, column: 3, scope: !3499, inlinedAt: !3442)
!3503 = !DILocation(line: 354, column: 32, scope: !3504, inlinedAt: !3442)
!3504 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 354, column: 6)
!3505 = !DILocation(line: 354, column: 37, scope: !3504, inlinedAt: !3442)
!3506 = !DILocation(line: 354, column: 42, scope: !3504, inlinedAt: !3442)
!3507 = !DILocation(line: 354, column: 45, scope: !3504, inlinedAt: !3442)
!3508 = !DILocation(line: 354, column: 50, scope: !3504, inlinedAt: !3442)
!3509 = !DILocation(line: 354, column: 6, scope: !3438, inlinedAt: !3442)
!3510 = !DILocation(line: 355, column: 3, scope: !3504, inlinedAt: !3442)
!3511 = !DILocation(line: 356, column: 32, scope: !3512, inlinedAt: !3442)
!3512 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 356, column: 6)
!3513 = !DILocation(line: 356, column: 37, scope: !3512, inlinedAt: !3442)
!3514 = !DILocation(line: 356, column: 43, scope: !3512, inlinedAt: !3442)
!3515 = !DILocation(line: 356, column: 46, scope: !3512, inlinedAt: !3442)
!3516 = !DILocation(line: 356, column: 51, scope: !3512, inlinedAt: !3442)
!3517 = !DILocation(line: 356, column: 6, scope: !3438, inlinedAt: !3442)
!3518 = !DILocation(line: 357, column: 3, scope: !3512, inlinedAt: !3442)
!3519 = !DILocation(line: 358, column: 6, scope: !3520, inlinedAt: !3442)
!3520 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 358, column: 6)
!3521 = !DILocation(line: 358, column: 11, scope: !3520, inlinedAt: !3442)
!3522 = !DILocation(line: 358, column: 6, scope: !3438, inlinedAt: !3442)
!3523 = !DILocation(line: 358, column: 26, scope: !3520, inlinedAt: !3442)
!3524 = !DILocation(line: 359, column: 6, scope: !3525, inlinedAt: !3442)
!3525 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 359, column: 6)
!3526 = !DILocation(line: 359, column: 11, scope: !3525, inlinedAt: !3442)
!3527 = !DILocation(line: 359, column: 6, scope: !3438, inlinedAt: !3442)
!3528 = !DILocation(line: 359, column: 26, scope: !3525, inlinedAt: !3442)
!3529 = !DILocation(line: 360, column: 6, scope: !3530, inlinedAt: !3442)
!3530 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 360, column: 6)
!3531 = !DILocation(line: 360, column: 11, scope: !3530, inlinedAt: !3442)
!3532 = !DILocation(line: 360, column: 6, scope: !3438, inlinedAt: !3442)
!3533 = !DILocation(line: 360, column: 26, scope: !3530, inlinedAt: !3442)
!3534 = !DILocation(line: 361, column: 6, scope: !3535, inlinedAt: !3442)
!3535 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 361, column: 6)
!3536 = !DILocation(line: 361, column: 11, scope: !3535, inlinedAt: !3442)
!3537 = !DILocation(line: 361, column: 6, scope: !3438, inlinedAt: !3442)
!3538 = !DILocation(line: 361, column: 26, scope: !3535, inlinedAt: !3442)
!3539 = !DILocation(line: 362, column: 6, scope: !3540, inlinedAt: !3442)
!3540 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 362, column: 6)
!3541 = !DILocation(line: 362, column: 11, scope: !3540, inlinedAt: !3442)
!3542 = !DILocation(line: 362, column: 6, scope: !3438, inlinedAt: !3442)
!3543 = !DILocation(line: 362, column: 26, scope: !3540, inlinedAt: !3442)
!3544 = !DILocation(line: 363, column: 6, scope: !3545, inlinedAt: !3442)
!3545 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 363, column: 6)
!3546 = !DILocation(line: 363, column: 11, scope: !3545, inlinedAt: !3442)
!3547 = !DILocation(line: 363, column: 6, scope: !3438, inlinedAt: !3442)
!3548 = !DILocation(line: 363, column: 26, scope: !3545, inlinedAt: !3442)
!3549 = !DILocation(line: 364, column: 6, scope: !3550, inlinedAt: !3442)
!3550 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 364, column: 6)
!3551 = !DILocation(line: 364, column: 11, scope: !3550, inlinedAt: !3442)
!3552 = !DILocation(line: 364, column: 6, scope: !3438, inlinedAt: !3442)
!3553 = !DILocation(line: 364, column: 26, scope: !3550, inlinedAt: !3442)
!3554 = !DILocation(line: 365, column: 6, scope: !3555, inlinedAt: !3442)
!3555 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 365, column: 6)
!3556 = !DILocation(line: 365, column: 11, scope: !3555, inlinedAt: !3442)
!3557 = !DILocation(line: 365, column: 6, scope: !3438, inlinedAt: !3442)
!3558 = !DILocation(line: 365, column: 26, scope: !3555, inlinedAt: !3442)
!3559 = !DILocation(line: 366, column: 6, scope: !3560, inlinedAt: !3442)
!3560 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 366, column: 6)
!3561 = !DILocation(line: 366, column: 11, scope: !3560, inlinedAt: !3442)
!3562 = !DILocation(line: 366, column: 6, scope: !3438, inlinedAt: !3442)
!3563 = !DILocation(line: 366, column: 26, scope: !3560, inlinedAt: !3442)
!3564 = !DILocation(line: 367, column: 6, scope: !3565, inlinedAt: !3442)
!3565 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 367, column: 6)
!3566 = !DILocation(line: 367, column: 11, scope: !3565, inlinedAt: !3442)
!3567 = !DILocation(line: 367, column: 6, scope: !3438, inlinedAt: !3442)
!3568 = !DILocation(line: 367, column: 26, scope: !3565, inlinedAt: !3442)
!3569 = !DILocation(line: 368, column: 6, scope: !3570, inlinedAt: !3442)
!3570 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 368, column: 6)
!3571 = !DILocation(line: 368, column: 11, scope: !3570, inlinedAt: !3442)
!3572 = !DILocation(line: 368, column: 6, scope: !3438, inlinedAt: !3442)
!3573 = !DILocation(line: 368, column: 26, scope: !3570, inlinedAt: !3442)
!3574 = !DILocation(line: 369, column: 6, scope: !3575, inlinedAt: !3442)
!3575 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 369, column: 6)
!3576 = !DILocation(line: 369, column: 11, scope: !3575, inlinedAt: !3442)
!3577 = !DILocation(line: 369, column: 6, scope: !3438, inlinedAt: !3442)
!3578 = !DILocation(line: 369, column: 26, scope: !3575, inlinedAt: !3442)
!3579 = !DILocation(line: 370, column: 6, scope: !3580, inlinedAt: !3442)
!3580 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 370, column: 6)
!3581 = !DILocation(line: 370, column: 11, scope: !3580, inlinedAt: !3442)
!3582 = !DILocation(line: 370, column: 6, scope: !3438, inlinedAt: !3442)
!3583 = !DILocation(line: 370, column: 26, scope: !3580, inlinedAt: !3442)
!3584 = !DILocation(line: 371, column: 6, scope: !3585, inlinedAt: !3442)
!3585 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 371, column: 6)
!3586 = !DILocation(line: 371, column: 11, scope: !3585, inlinedAt: !3442)
!3587 = !DILocation(line: 371, column: 6, scope: !3438, inlinedAt: !3442)
!3588 = !DILocation(line: 371, column: 26, scope: !3585, inlinedAt: !3442)
!3589 = !DILocation(line: 372, column: 6, scope: !3590, inlinedAt: !3442)
!3590 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 372, column: 6)
!3591 = !DILocation(line: 372, column: 11, scope: !3590, inlinedAt: !3442)
!3592 = !DILocation(line: 372, column: 6, scope: !3438, inlinedAt: !3442)
!3593 = !DILocation(line: 372, column: 26, scope: !3590, inlinedAt: !3442)
!3594 = !DILocation(line: 373, column: 6, scope: !3595, inlinedAt: !3442)
!3595 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 373, column: 6)
!3596 = !DILocation(line: 373, column: 11, scope: !3595, inlinedAt: !3442)
!3597 = !DILocation(line: 373, column: 6, scope: !3438, inlinedAt: !3442)
!3598 = !DILocation(line: 373, column: 26, scope: !3595, inlinedAt: !3442)
!3599 = !DILocation(line: 374, column: 6, scope: !3600, inlinedAt: !3442)
!3600 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 374, column: 6)
!3601 = !DILocation(line: 374, column: 11, scope: !3600, inlinedAt: !3442)
!3602 = !DILocation(line: 374, column: 6, scope: !3438, inlinedAt: !3442)
!3603 = !DILocation(line: 374, column: 26, scope: !3600, inlinedAt: !3442)
!3604 = !DILocation(line: 375, column: 6, scope: !3605, inlinedAt: !3442)
!3605 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 375, column: 6)
!3606 = !DILocation(line: 375, column: 11, scope: !3605, inlinedAt: !3442)
!3607 = !DILocation(line: 375, column: 6, scope: !3438, inlinedAt: !3442)
!3608 = !DILocation(line: 375, column: 27, scope: !3605, inlinedAt: !3442)
!3609 = !DILocation(line: 376, column: 6, scope: !3610, inlinedAt: !3442)
!3610 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 376, column: 6)
!3611 = !DILocation(line: 376, column: 11, scope: !3610, inlinedAt: !3442)
!3612 = !DILocation(line: 376, column: 6, scope: !3438, inlinedAt: !3442)
!3613 = !DILocation(line: 376, column: 32, scope: !3610, inlinedAt: !3442)
!3614 = !DILocation(line: 377, column: 6, scope: !3615, inlinedAt: !3442)
!3615 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 377, column: 6)
!3616 = !DILocation(line: 377, column: 11, scope: !3615, inlinedAt: !3442)
!3617 = !DILocation(line: 377, column: 6, scope: !3438, inlinedAt: !3442)
!3618 = !DILocation(line: 377, column: 32, scope: !3615, inlinedAt: !3442)
!3619 = !DILocation(line: 378, column: 6, scope: !3620, inlinedAt: !3442)
!3620 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 378, column: 6)
!3621 = !DILocation(line: 378, column: 11, scope: !3620, inlinedAt: !3442)
!3622 = !DILocation(line: 378, column: 6, scope: !3438, inlinedAt: !3442)
!3623 = !DILocation(line: 378, column: 32, scope: !3620, inlinedAt: !3442)
!3624 = !DILocation(line: 379, column: 6, scope: !3625, inlinedAt: !3442)
!3625 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 379, column: 6)
!3626 = !DILocation(line: 379, column: 11, scope: !3625, inlinedAt: !3442)
!3627 = !DILocation(line: 379, column: 6, scope: !3438, inlinedAt: !3442)
!3628 = !DILocation(line: 379, column: 33, scope: !3625, inlinedAt: !3442)
!3629 = !DILocation(line: 380, column: 6, scope: !3630, inlinedAt: !3442)
!3630 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 380, column: 6)
!3631 = !DILocation(line: 380, column: 11, scope: !3630, inlinedAt: !3442)
!3632 = !DILocation(line: 380, column: 6, scope: !3438, inlinedAt: !3442)
!3633 = !DILocation(line: 380, column: 33, scope: !3630, inlinedAt: !3442)
!3634 = !DILocation(line: 381, column: 6, scope: !3635, inlinedAt: !3442)
!3635 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 381, column: 6)
!3636 = !DILocation(line: 381, column: 11, scope: !3635, inlinedAt: !3442)
!3637 = !DILocation(line: 381, column: 6, scope: !3438, inlinedAt: !3442)
!3638 = !DILocation(line: 381, column: 33, scope: !3635, inlinedAt: !3442)
!3639 = !DILocation(line: 382, column: 2, scope: !3640, inlinedAt: !3442)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !88, line: 382, column: 2)
!3641 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 382, column: 2)
!3642 = !{i32 -2144646706, i32 -2144646677, i32 -2144646631, i32 -2144646573, i32 -2144646519, i32 -2144646465, i32 -2144646410, i32 -2144646379}
!3643 = !DILocation(line: 382, column: 2, scope: !3644, inlinedAt: !3442)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !88, line: 382, column: 2)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !88, line: 382, column: 2)
!3646 = !{i32 -2144645936, i32 -2144645929, i32 -2144645875, i32 -2144645844, i32 -2144645814}
!3647 = !DILocation(line: 382, column: 2, scope: !3645, inlinedAt: !3442)
!3648 = !DILocation(line: 386, column: 1, scope: !3438, inlinedAt: !3442)
!3649 = !DILocation(line: 547, column: 9, scope: !3421, inlinedAt: !3424)
!3650 = !DILocation(line: 549, column: 8, scope: !3651, inlinedAt: !3424)
!3651 = distinct !DILexicalBlock(scope: !3421, file: !88, line: 549, column: 7)
!3652 = !DILocation(line: 549, column: 7, scope: !3421, inlinedAt: !3424)
!3653 = !DILocation(line: 550, column: 4, scope: !3651, inlinedAt: !3424)
!3654 = !DILocation(line: 553, column: 33, scope: !3421, inlinedAt: !3424)
!3655 = !DILocation(line: 325, column: 6, scope: !3656, inlinedAt: !3436)
!3656 = distinct !DILexicalBlock(scope: !3432, file: !88, line: 325, column: 6)
!3657 = !DILocation(line: 325, column: 6, scope: !3432, inlinedAt: !3436)
!3658 = !DILocation(line: 326, column: 3, scope: !3656, inlinedAt: !3436)
!3659 = !DILocation(line: 332, column: 9, scope: !3432, inlinedAt: !3436)
!3660 = !DILocation(line: 332, column: 15, scope: !3432, inlinedAt: !3436)
!3661 = !DILocation(line: 332, column: 2, scope: !3432, inlinedAt: !3436)
!3662 = !DILocation(line: 336, column: 1, scope: !3432, inlinedAt: !3436)
!3663 = !DILocation(line: 553, column: 5, scope: !3421, inlinedAt: !3424)
!3664 = !DILocation(line: 553, column: 41, scope: !3421, inlinedAt: !3424)
!3665 = !DILocation(line: 554, column: 5, scope: !3421, inlinedAt: !3424)
!3666 = !DILocation(line: 554, column: 12, scope: !3421, inlinedAt: !3424)
!3667 = !DILocation(line: 448, column: 31, scope: !3416, inlinedAt: !3420)
!3668 = !DILocation(line: 448, column: 34, scope: !3416, inlinedAt: !3420)
!3669 = !DILocation(line: 448, column: 14, scope: !3416, inlinedAt: !3420)
!3670 = !DILocation(line: 450, column: 22, scope: !3416, inlinedAt: !3420)
!3671 = !DILocation(line: 450, column: 25, scope: !3416, inlinedAt: !3420)
!3672 = !DILocation(line: 450, column: 30, scope: !3416, inlinedAt: !3420)
!3673 = !DILocation(line: 450, column: 36, scope: !3416, inlinedAt: !3420)
!3674 = !DILocation(line: 450, column: 8, scope: !3416, inlinedAt: !3420)
!3675 = !DILocation(line: 450, column: 6, scope: !3416, inlinedAt: !3420)
!3676 = !DILocation(line: 451, column: 9, scope: !3416, inlinedAt: !3420)
!3677 = !DILocation(line: 552, column: 3, scope: !3421, inlinedAt: !3424)
!3678 = !DILocation(line: 557, column: 19, scope: !3423, inlinedAt: !3424)
!3679 = !DILocation(line: 557, column: 25, scope: !3423, inlinedAt: !3424)
!3680 = !DILocation(line: 557, column: 9, scope: !3423, inlinedAt: !3424)
!3681 = !DILocation(line: 557, column: 2, scope: !3423, inlinedAt: !3424)
!3682 = !DILocation(line: 558, column: 1, scope: !3423, inlinedAt: !3424)
!3683 = !DILocation(line: 664, column: 2, scope: !3412)
!3684 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !2501, file: !2501, line: 110, type: !3685, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!379, !189}
!3687 = !DILocalVariable(name: "chip", arg: 1, scope: !3684, file: !2501, line: 110, type: !189)
!3688 = !DILocation(line: 110, column: 55, scope: !3684)
!3689 = !DILocation(line: 112, column: 7, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3684, file: !2501, line: 112, column: 6)
!3691 = !DILocation(line: 112, column: 13, scope: !3690)
!3692 = !DILocation(line: 112, column: 24, scope: !3690)
!3693 = !DILocation(line: 112, column: 28, scope: !3690)
!3694 = !DILocation(line: 112, column: 34, scope: !3690)
!3695 = !DILocation(line: 112, column: 46, scope: !3690)
!3696 = !DILocation(line: 112, column: 50, scope: !3690)
!3697 = !DILocation(line: 113, column: 7, scope: !3690)
!3698 = !DILocation(line: 113, column: 13, scope: !3690)
!3699 = !DILocation(line: 113, column: 25, scope: !3690)
!3700 = !DILocation(line: 113, column: 30, scope: !3690)
!3701 = !DILocation(line: 112, column: 6, scope: !3684)
!3702 = !DILocation(line: 114, column: 3, scope: !3690)
!3703 = !DILocation(line: 116, column: 2, scope: !3684)
!3704 = !DILocation(line: 117, column: 1, scope: !3684)
!3705 = distinct !DISubprogram(name: "nand_bit_wise_majority", scope: !1, file: !1, line: 113, type: !3706, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !3708, !5, !109, !5}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!3709 = !DILocalVariable(name: "srcbufs", arg: 1, scope: !3705, file: !1, line: 113, type: !3708)
!3710 = !DILocation(line: 113, column: 49, scope: !3705)
!3711 = !DILocalVariable(name: "nsrcbufs", arg: 2, scope: !3705, file: !1, line: 114, type: !5)
!3712 = !DILocation(line: 114, column: 21, scope: !3705)
!3713 = !DILocalVariable(name: "dstbuf", arg: 3, scope: !3705, file: !1, line: 115, type: !109)
!3714 = !DILocation(line: 115, column: 14, scope: !3705)
!3715 = !DILocalVariable(name: "bufsize", arg: 4, scope: !3705, file: !1, line: 116, type: !5)
!3716 = !DILocation(line: 116, column: 21, scope: !3705)
!3717 = !DILocalVariable(name: "i", scope: !3705, file: !1, line: 118, type: !153)
!3718 = !DILocation(line: 118, column: 6, scope: !3705)
!3719 = !DILocalVariable(name: "j", scope: !3705, file: !1, line: 118, type: !153)
!3720 = !DILocation(line: 118, column: 9, scope: !3705)
!3721 = !DILocalVariable(name: "k", scope: !3705, file: !1, line: 118, type: !153)
!3722 = !DILocation(line: 118, column: 12, scope: !3705)
!3723 = !DILocation(line: 120, column: 9, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3705, file: !1, line: 120, column: 2)
!3725 = !DILocation(line: 120, column: 7, scope: !3724)
!3726 = !DILocation(line: 120, column: 14, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !1, line: 120, column: 2)
!3728 = !DILocation(line: 120, column: 18, scope: !3727)
!3729 = !DILocation(line: 120, column: 16, scope: !3727)
!3730 = !DILocation(line: 120, column: 2, scope: !3724)
!3731 = !DILocalVariable(name: "val", scope: !3732, file: !1, line: 121, type: !98)
!3732 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 120, column: 32)
!3733 = !DILocation(line: 121, column: 6, scope: !3732)
!3734 = !DILocation(line: 123, column: 10, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !1, line: 123, column: 3)
!3736 = !DILocation(line: 123, column: 8, scope: !3735)
!3737 = !DILocation(line: 123, column: 15, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !1, line: 123, column: 3)
!3739 = !DILocation(line: 123, column: 17, scope: !3738)
!3740 = !DILocation(line: 123, column: 3, scope: !3735)
!3741 = !DILocalVariable(name: "cnt", scope: !3742, file: !1, line: 124, type: !5)
!3742 = distinct !DILexicalBlock(scope: !3738, file: !1, line: 123, column: 27)
!3743 = !DILocation(line: 124, column: 17, scope: !3742)
!3744 = !DILocation(line: 126, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !1, line: 126, column: 4)
!3746 = !DILocation(line: 126, column: 9, scope: !3745)
!3747 = !DILocation(line: 126, column: 16, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3745, file: !1, line: 126, column: 4)
!3749 = !DILocation(line: 126, column: 20, scope: !3748)
!3750 = !DILocation(line: 126, column: 18, scope: !3748)
!3751 = !DILocation(line: 126, column: 4, scope: !3745)
!3752 = !DILocalVariable(name: "srcbuf", scope: !3753, file: !1, line: 127, type: !138)
!3753 = distinct !DILexicalBlock(scope: !3748, file: !1, line: 126, column: 35)
!3754 = !DILocation(line: 127, column: 15, scope: !3753)
!3755 = !DILocation(line: 127, column: 24, scope: !3753)
!3756 = !DILocation(line: 127, column: 32, scope: !3753)
!3757 = !DILocation(line: 129, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3753, file: !1, line: 129, column: 9)
!3759 = !DILocation(line: 129, column: 16, scope: !3758)
!3760 = !DILocation(line: 129, column: 21, scope: !3758)
!3761 = !DILocation(line: 129, column: 19, scope: !3758)
!3762 = !DILocation(line: 129, column: 9, scope: !3753)
!3763 = !DILocation(line: 130, column: 9, scope: !3758)
!3764 = !DILocation(line: 130, column: 6, scope: !3758)
!3765 = !DILocation(line: 131, column: 4, scope: !3753)
!3766 = !DILocation(line: 126, column: 31, scope: !3748)
!3767 = !DILocation(line: 126, column: 4, scope: !3748)
!3768 = distinct !{!3768, !3751, !3769}
!3769 = !DILocation(line: 131, column: 4, scope: !3745)
!3770 = !DILocation(line: 133, column: 8, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3742, file: !1, line: 133, column: 8)
!3772 = !DILocation(line: 133, column: 14, scope: !3771)
!3773 = !DILocation(line: 133, column: 23, scope: !3771)
!3774 = !DILocation(line: 133, column: 12, scope: !3771)
!3775 = !DILocation(line: 133, column: 8, scope: !3742)
!3776 = !DILocation(line: 134, column: 12, scope: !3771)
!3777 = !DILocation(line: 134, column: 9, scope: !3771)
!3778 = !DILocation(line: 134, column: 5, scope: !3771)
!3779 = !DILocation(line: 135, column: 3, scope: !3742)
!3780 = !DILocation(line: 123, column: 23, scope: !3738)
!3781 = !DILocation(line: 123, column: 3, scope: !3738)
!3782 = distinct !{!3782, !3740, !3783}
!3783 = !DILocation(line: 135, column: 3, scope: !3735)
!3784 = !DILocation(line: 137, column: 23, scope: !3732)
!3785 = !DILocation(line: 137, column: 10, scope: !3732)
!3786 = !DILocation(line: 137, column: 18, scope: !3732)
!3787 = !DILocation(line: 137, column: 3, scope: !3732)
!3788 = !DILocation(line: 137, column: 21, scope: !3732)
!3789 = !DILocation(line: 138, column: 2, scope: !3732)
!3790 = !DILocation(line: 120, column: 28, scope: !3727)
!3791 = !DILocation(line: 120, column: 2, scope: !3727)
!3792 = distinct !{!3792, !3730, !3793}
!3793 = !DILocation(line: 138, column: 2, scope: !3724)
!3794 = !DILocation(line: 139, column: 1, scope: !3705)
!3795 = distinct !DISubprogram(name: "nanddev_set_ecc_requirements", scope: !49, file: !49, line: 554, type: !3796, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !2402, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2374)
!3800 = !DILocalVariable(name: "nand", arg: 1, scope: !3795, file: !49, line: 554, type: !2402)
!3801 = !DILocation(line: 554, column: 50, scope: !3795)
!3802 = !DILocalVariable(name: "reqs", arg: 2, scope: !3795, file: !49, line: 555, type: !3798)
!3803 = !DILocation(line: 555, column: 38, scope: !3795)
!3804 = !DILocation(line: 557, column: 2, scope: !3795)
!3805 = !DILocation(line: 557, column: 8, scope: !3795)
!3806 = !DILocation(line: 557, column: 12, scope: !3795)
!3807 = !DILocation(line: 557, column: 28, scope: !3795)
!3808 = !DILocation(line: 557, column: 27, scope: !3795)
!3809 = !DILocation(line: 558, column: 1, scope: !3795)
!3810 = distinct !DISubprogram(name: "nand_flash_detect_ext_param_page", scope: !1, file: !1, line: 34, type: !3811, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!153, !189, !2521}
!3813 = !DILocation(line: 445, column: 72, scope: !3416, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 552, column: 10, scope: !3421, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 48, column: 7, scope: !3810)
!3816 = !DILocation(line: 446, column: 9, scope: !3416, inlinedAt: !3814)
!3817 = !DILocation(line: 446, column: 23, scope: !3416, inlinedAt: !3814)
!3818 = !DILocation(line: 448, column: 8, scope: !3416, inlinedAt: !3814)
!3819 = !DILocation(line: 318, column: 67, scope: !3432, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 553, column: 20, scope: !3421, inlinedAt: !3815)
!3821 = !DILocation(line: 346, column: 58, scope: !3438, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 547, column: 11, scope: !3421, inlinedAt: !3815)
!3823 = !DILocation(line: 472, column: 28, scope: !3444, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 481, column: 9, scope: !3449, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 545, column: 11, scope: !3451, inlinedAt: !3815)
!3826 = !DILocation(line: 472, column: 40, scope: !3444, inlinedAt: !3824)
!3827 = !DILocation(line: 472, column: 60, scope: !3444, inlinedAt: !3824)
!3828 = !DILocation(line: 478, column: 51, scope: !3449, inlinedAt: !3825)
!3829 = !DILocation(line: 478, column: 63, scope: !3449, inlinedAt: !3825)
!3830 = !DILocation(line: 480, column: 15, scope: !3449, inlinedAt: !3825)
!3831 = !DILocation(line: 538, column: 45, scope: !3423, inlinedAt: !3815)
!3832 = !DILocation(line: 538, column: 57, scope: !3423, inlinedAt: !3815)
!3833 = !DILocation(line: 542, column: 16, scope: !3421, inlinedAt: !3815)
!3834 = !DILocalVariable(name: "chip", arg: 1, scope: !3810, file: !1, line: 34, type: !189)
!3835 = !DILocation(line: 34, column: 63, scope: !3810)
!3836 = !DILocalVariable(name: "p", arg: 2, scope: !3810, file: !1, line: 35, type: !2521)
!3837 = !DILocation(line: 35, column: 35, scope: !3810)
!3838 = !DILocalVariable(name: "base", scope: !3810, file: !1, line: 37, type: !2402)
!3839 = !DILocation(line: 37, column: 22, scope: !3810)
!3840 = !DILocation(line: 37, column: 30, scope: !3810)
!3841 = !DILocation(line: 37, column: 36, scope: !3810)
!3842 = !DILocalVariable(name: "requirements", scope: !3810, file: !1, line: 38, type: !2374)
!3843 = !DILocation(line: 38, column: 24, scope: !3810)
!3844 = !DILocalVariable(name: "ep", scope: !3810, file: !1, line: 39, type: !3845)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_ext_param_page", file: !114, line: 142, size: 256, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3854}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !3846, file: !114, line: 143, baseType: !105, size: 16)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3846, file: !114, line: 144, baseType: !2525, size: 32, offset: 16)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !3846, file: !114, line: 145, baseType: !3851, size: 80, offset: 48)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 80, elements: !3852)
!3852 = !{!3853}
!3853 = !DISubrange(count: 10)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !3846, file: !114, line: 146, baseType: !3855, size: 128, offset: 128)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3856, size: 128, elements: !810)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_ext_section", file: !114, line: 134, size: 16, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3856, file: !114, line: 135, baseType: !98, size: 8)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3856, file: !114, line: 136, baseType: !98, size: 8, offset: 8)
!3860 = !DILocation(line: 39, column: 30, scope: !3810)
!3861 = !DILocalVariable(name: "s", scope: !3810, file: !1, line: 40, type: !3862)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3863 = !DILocation(line: 40, column: 27, scope: !3810)
!3864 = !DILocalVariable(name: "ecc", scope: !3810, file: !1, line: 41, type: !112)
!3865 = !DILocation(line: 41, column: 28, scope: !3810)
!3866 = !DILocalVariable(name: "cursor", scope: !3810, file: !1, line: 42, type: !110)
!3867 = !DILocation(line: 42, column: 11, scope: !3810)
!3868 = !DILocalVariable(name: "ret", scope: !3810, file: !1, line: 43, type: !153)
!3869 = !DILocation(line: 43, column: 6, scope: !3810)
!3870 = !DILocalVariable(name: "len", scope: !3810, file: !1, line: 44, type: !153)
!3871 = !DILocation(line: 44, column: 6, scope: !3810)
!3872 = !DILocalVariable(name: "i", scope: !3810, file: !1, line: 45, type: !153)
!3873 = !DILocation(line: 45, column: 6, scope: !3810)
!3874 = !DILocation(line: 47, column: 8, scope: !3810)
!3875 = !DILocation(line: 47, column: 46, scope: !3810)
!3876 = !DILocation(line: 47, column: 6, scope: !3810)
!3877 = !DILocation(line: 48, column: 15, scope: !3810)
!3878 = !DILocation(line: 540, column: 27, scope: !3422, inlinedAt: !3815)
!3879 = !DILocation(line: 540, column: 6, scope: !3422, inlinedAt: !3815)
!3880 = !DILocation(line: 540, column: 6, scope: !3423, inlinedAt: !3815)
!3881 = !DILocation(line: 544, column: 7, scope: !3451, inlinedAt: !3815)
!3882 = !DILocation(line: 544, column: 12, scope: !3451, inlinedAt: !3815)
!3883 = !DILocation(line: 544, column: 7, scope: !3421, inlinedAt: !3815)
!3884 = !DILocation(line: 545, column: 25, scope: !3451, inlinedAt: !3815)
!3885 = !DILocation(line: 545, column: 31, scope: !3451, inlinedAt: !3815)
!3886 = !DILocation(line: 480, column: 33, scope: !3449, inlinedAt: !3825)
!3887 = !DILocation(line: 480, column: 23, scope: !3449, inlinedAt: !3825)
!3888 = !DILocation(line: 481, column: 29, scope: !3449, inlinedAt: !3825)
!3889 = !DILocation(line: 481, column: 35, scope: !3449, inlinedAt: !3825)
!3890 = !DILocation(line: 481, column: 42, scope: !3449, inlinedAt: !3825)
!3891 = !DILocation(line: 474, column: 23, scope: !3444, inlinedAt: !3824)
!3892 = !DILocation(line: 474, column: 29, scope: !3444, inlinedAt: !3824)
!3893 = !DILocation(line: 474, column: 36, scope: !3444, inlinedAt: !3824)
!3894 = !DILocation(line: 474, column: 9, scope: !3444, inlinedAt: !3824)
!3895 = !DILocation(line: 545, column: 4, scope: !3451, inlinedAt: !3815)
!3896 = !DILocation(line: 547, column: 25, scope: !3421, inlinedAt: !3815)
!3897 = !DILocation(line: 348, column: 7, scope: !3495, inlinedAt: !3822)
!3898 = !DILocation(line: 348, column: 6, scope: !3438, inlinedAt: !3822)
!3899 = !DILocation(line: 349, column: 3, scope: !3495, inlinedAt: !3822)
!3900 = !DILocation(line: 351, column: 6, scope: !3499, inlinedAt: !3822)
!3901 = !DILocation(line: 351, column: 11, scope: !3499, inlinedAt: !3822)
!3902 = !DILocation(line: 351, column: 6, scope: !3438, inlinedAt: !3822)
!3903 = !DILocation(line: 352, column: 3, scope: !3499, inlinedAt: !3822)
!3904 = !DILocation(line: 354, column: 32, scope: !3504, inlinedAt: !3822)
!3905 = !DILocation(line: 354, column: 37, scope: !3504, inlinedAt: !3822)
!3906 = !DILocation(line: 354, column: 42, scope: !3504, inlinedAt: !3822)
!3907 = !DILocation(line: 354, column: 45, scope: !3504, inlinedAt: !3822)
!3908 = !DILocation(line: 354, column: 50, scope: !3504, inlinedAt: !3822)
!3909 = !DILocation(line: 354, column: 6, scope: !3438, inlinedAt: !3822)
!3910 = !DILocation(line: 355, column: 3, scope: !3504, inlinedAt: !3822)
!3911 = !DILocation(line: 356, column: 32, scope: !3512, inlinedAt: !3822)
!3912 = !DILocation(line: 356, column: 37, scope: !3512, inlinedAt: !3822)
!3913 = !DILocation(line: 356, column: 43, scope: !3512, inlinedAt: !3822)
!3914 = !DILocation(line: 356, column: 46, scope: !3512, inlinedAt: !3822)
!3915 = !DILocation(line: 356, column: 51, scope: !3512, inlinedAt: !3822)
!3916 = !DILocation(line: 356, column: 6, scope: !3438, inlinedAt: !3822)
!3917 = !DILocation(line: 357, column: 3, scope: !3512, inlinedAt: !3822)
!3918 = !DILocation(line: 358, column: 6, scope: !3520, inlinedAt: !3822)
!3919 = !DILocation(line: 358, column: 11, scope: !3520, inlinedAt: !3822)
!3920 = !DILocation(line: 358, column: 6, scope: !3438, inlinedAt: !3822)
!3921 = !DILocation(line: 358, column: 26, scope: !3520, inlinedAt: !3822)
!3922 = !DILocation(line: 359, column: 6, scope: !3525, inlinedAt: !3822)
!3923 = !DILocation(line: 359, column: 11, scope: !3525, inlinedAt: !3822)
!3924 = !DILocation(line: 359, column: 6, scope: !3438, inlinedAt: !3822)
!3925 = !DILocation(line: 359, column: 26, scope: !3525, inlinedAt: !3822)
!3926 = !DILocation(line: 360, column: 6, scope: !3530, inlinedAt: !3822)
!3927 = !DILocation(line: 360, column: 11, scope: !3530, inlinedAt: !3822)
!3928 = !DILocation(line: 360, column: 6, scope: !3438, inlinedAt: !3822)
!3929 = !DILocation(line: 360, column: 26, scope: !3530, inlinedAt: !3822)
!3930 = !DILocation(line: 361, column: 6, scope: !3535, inlinedAt: !3822)
!3931 = !DILocation(line: 361, column: 11, scope: !3535, inlinedAt: !3822)
!3932 = !DILocation(line: 361, column: 6, scope: !3438, inlinedAt: !3822)
!3933 = !DILocation(line: 361, column: 26, scope: !3535, inlinedAt: !3822)
!3934 = !DILocation(line: 362, column: 6, scope: !3540, inlinedAt: !3822)
!3935 = !DILocation(line: 362, column: 11, scope: !3540, inlinedAt: !3822)
!3936 = !DILocation(line: 362, column: 6, scope: !3438, inlinedAt: !3822)
!3937 = !DILocation(line: 362, column: 26, scope: !3540, inlinedAt: !3822)
!3938 = !DILocation(line: 363, column: 6, scope: !3545, inlinedAt: !3822)
!3939 = !DILocation(line: 363, column: 11, scope: !3545, inlinedAt: !3822)
!3940 = !DILocation(line: 363, column: 6, scope: !3438, inlinedAt: !3822)
!3941 = !DILocation(line: 363, column: 26, scope: !3545, inlinedAt: !3822)
!3942 = !DILocation(line: 364, column: 6, scope: !3550, inlinedAt: !3822)
!3943 = !DILocation(line: 364, column: 11, scope: !3550, inlinedAt: !3822)
!3944 = !DILocation(line: 364, column: 6, scope: !3438, inlinedAt: !3822)
!3945 = !DILocation(line: 364, column: 26, scope: !3550, inlinedAt: !3822)
!3946 = !DILocation(line: 365, column: 6, scope: !3555, inlinedAt: !3822)
!3947 = !DILocation(line: 365, column: 11, scope: !3555, inlinedAt: !3822)
!3948 = !DILocation(line: 365, column: 6, scope: !3438, inlinedAt: !3822)
!3949 = !DILocation(line: 365, column: 26, scope: !3555, inlinedAt: !3822)
!3950 = !DILocation(line: 366, column: 6, scope: !3560, inlinedAt: !3822)
!3951 = !DILocation(line: 366, column: 11, scope: !3560, inlinedAt: !3822)
!3952 = !DILocation(line: 366, column: 6, scope: !3438, inlinedAt: !3822)
!3953 = !DILocation(line: 366, column: 26, scope: !3560, inlinedAt: !3822)
!3954 = !DILocation(line: 367, column: 6, scope: !3565, inlinedAt: !3822)
!3955 = !DILocation(line: 367, column: 11, scope: !3565, inlinedAt: !3822)
!3956 = !DILocation(line: 367, column: 6, scope: !3438, inlinedAt: !3822)
!3957 = !DILocation(line: 367, column: 26, scope: !3565, inlinedAt: !3822)
!3958 = !DILocation(line: 368, column: 6, scope: !3570, inlinedAt: !3822)
!3959 = !DILocation(line: 368, column: 11, scope: !3570, inlinedAt: !3822)
!3960 = !DILocation(line: 368, column: 6, scope: !3438, inlinedAt: !3822)
!3961 = !DILocation(line: 368, column: 26, scope: !3570, inlinedAt: !3822)
!3962 = !DILocation(line: 369, column: 6, scope: !3575, inlinedAt: !3822)
!3963 = !DILocation(line: 369, column: 11, scope: !3575, inlinedAt: !3822)
!3964 = !DILocation(line: 369, column: 6, scope: !3438, inlinedAt: !3822)
!3965 = !DILocation(line: 369, column: 26, scope: !3575, inlinedAt: !3822)
!3966 = !DILocation(line: 370, column: 6, scope: !3580, inlinedAt: !3822)
!3967 = !DILocation(line: 370, column: 11, scope: !3580, inlinedAt: !3822)
!3968 = !DILocation(line: 370, column: 6, scope: !3438, inlinedAt: !3822)
!3969 = !DILocation(line: 370, column: 26, scope: !3580, inlinedAt: !3822)
!3970 = !DILocation(line: 371, column: 6, scope: !3585, inlinedAt: !3822)
!3971 = !DILocation(line: 371, column: 11, scope: !3585, inlinedAt: !3822)
!3972 = !DILocation(line: 371, column: 6, scope: !3438, inlinedAt: !3822)
!3973 = !DILocation(line: 371, column: 26, scope: !3585, inlinedAt: !3822)
!3974 = !DILocation(line: 372, column: 6, scope: !3590, inlinedAt: !3822)
!3975 = !DILocation(line: 372, column: 11, scope: !3590, inlinedAt: !3822)
!3976 = !DILocation(line: 372, column: 6, scope: !3438, inlinedAt: !3822)
!3977 = !DILocation(line: 372, column: 26, scope: !3590, inlinedAt: !3822)
!3978 = !DILocation(line: 373, column: 6, scope: !3595, inlinedAt: !3822)
!3979 = !DILocation(line: 373, column: 11, scope: !3595, inlinedAt: !3822)
!3980 = !DILocation(line: 373, column: 6, scope: !3438, inlinedAt: !3822)
!3981 = !DILocation(line: 373, column: 26, scope: !3595, inlinedAt: !3822)
!3982 = !DILocation(line: 374, column: 6, scope: !3600, inlinedAt: !3822)
!3983 = !DILocation(line: 374, column: 11, scope: !3600, inlinedAt: !3822)
!3984 = !DILocation(line: 374, column: 6, scope: !3438, inlinedAt: !3822)
!3985 = !DILocation(line: 374, column: 26, scope: !3600, inlinedAt: !3822)
!3986 = !DILocation(line: 375, column: 6, scope: !3605, inlinedAt: !3822)
!3987 = !DILocation(line: 375, column: 11, scope: !3605, inlinedAt: !3822)
!3988 = !DILocation(line: 375, column: 6, scope: !3438, inlinedAt: !3822)
!3989 = !DILocation(line: 375, column: 27, scope: !3605, inlinedAt: !3822)
!3990 = !DILocation(line: 376, column: 6, scope: !3610, inlinedAt: !3822)
!3991 = !DILocation(line: 376, column: 11, scope: !3610, inlinedAt: !3822)
!3992 = !DILocation(line: 376, column: 6, scope: !3438, inlinedAt: !3822)
!3993 = !DILocation(line: 376, column: 32, scope: !3610, inlinedAt: !3822)
!3994 = !DILocation(line: 377, column: 6, scope: !3615, inlinedAt: !3822)
!3995 = !DILocation(line: 377, column: 11, scope: !3615, inlinedAt: !3822)
!3996 = !DILocation(line: 377, column: 6, scope: !3438, inlinedAt: !3822)
!3997 = !DILocation(line: 377, column: 32, scope: !3615, inlinedAt: !3822)
!3998 = !DILocation(line: 378, column: 6, scope: !3620, inlinedAt: !3822)
!3999 = !DILocation(line: 378, column: 11, scope: !3620, inlinedAt: !3822)
!4000 = !DILocation(line: 378, column: 6, scope: !3438, inlinedAt: !3822)
!4001 = !DILocation(line: 378, column: 32, scope: !3620, inlinedAt: !3822)
!4002 = !DILocation(line: 379, column: 6, scope: !3625, inlinedAt: !3822)
!4003 = !DILocation(line: 379, column: 11, scope: !3625, inlinedAt: !3822)
!4004 = !DILocation(line: 379, column: 6, scope: !3438, inlinedAt: !3822)
!4005 = !DILocation(line: 379, column: 33, scope: !3625, inlinedAt: !3822)
!4006 = !DILocation(line: 380, column: 6, scope: !3630, inlinedAt: !3822)
!4007 = !DILocation(line: 380, column: 11, scope: !3630, inlinedAt: !3822)
!4008 = !DILocation(line: 380, column: 6, scope: !3438, inlinedAt: !3822)
!4009 = !DILocation(line: 380, column: 33, scope: !3630, inlinedAt: !3822)
!4010 = !DILocation(line: 381, column: 6, scope: !3635, inlinedAt: !3822)
!4011 = !DILocation(line: 381, column: 11, scope: !3635, inlinedAt: !3822)
!4012 = !DILocation(line: 381, column: 6, scope: !3438, inlinedAt: !3822)
!4013 = !DILocation(line: 381, column: 33, scope: !3635, inlinedAt: !3822)
!4014 = !DILocation(line: 382, column: 2, scope: !3640, inlinedAt: !3822)
!4015 = !DILocation(line: 382, column: 2, scope: !3644, inlinedAt: !3822)
!4016 = !DILocation(line: 382, column: 2, scope: !3645, inlinedAt: !3822)
!4017 = !DILocation(line: 386, column: 1, scope: !3438, inlinedAt: !3822)
!4018 = !DILocation(line: 547, column: 9, scope: !3421, inlinedAt: !3815)
!4019 = !DILocation(line: 549, column: 8, scope: !3651, inlinedAt: !3815)
!4020 = !DILocation(line: 549, column: 7, scope: !3421, inlinedAt: !3815)
!4021 = !DILocation(line: 550, column: 4, scope: !3651, inlinedAt: !3815)
!4022 = !DILocation(line: 553, column: 33, scope: !3421, inlinedAt: !3815)
!4023 = !DILocation(line: 325, column: 6, scope: !3656, inlinedAt: !3820)
!4024 = !DILocation(line: 325, column: 6, scope: !3432, inlinedAt: !3820)
!4025 = !DILocation(line: 326, column: 3, scope: !3656, inlinedAt: !3820)
!4026 = !DILocation(line: 332, column: 9, scope: !3432, inlinedAt: !3820)
!4027 = !DILocation(line: 332, column: 15, scope: !3432, inlinedAt: !3820)
!4028 = !DILocation(line: 332, column: 2, scope: !3432, inlinedAt: !3820)
!4029 = !DILocation(line: 336, column: 1, scope: !3432, inlinedAt: !3820)
!4030 = !DILocation(line: 553, column: 5, scope: !3421, inlinedAt: !3815)
!4031 = !DILocation(line: 553, column: 41, scope: !3421, inlinedAt: !3815)
!4032 = !DILocation(line: 554, column: 5, scope: !3421, inlinedAt: !3815)
!4033 = !DILocation(line: 554, column: 12, scope: !3421, inlinedAt: !3815)
!4034 = !DILocation(line: 448, column: 31, scope: !3416, inlinedAt: !3814)
!4035 = !DILocation(line: 448, column: 34, scope: !3416, inlinedAt: !3814)
!4036 = !DILocation(line: 448, column: 14, scope: !3416, inlinedAt: !3814)
!4037 = !DILocation(line: 450, column: 22, scope: !3416, inlinedAt: !3814)
!4038 = !DILocation(line: 450, column: 25, scope: !3416, inlinedAt: !3814)
!4039 = !DILocation(line: 450, column: 30, scope: !3416, inlinedAt: !3814)
!4040 = !DILocation(line: 450, column: 36, scope: !3416, inlinedAt: !3814)
!4041 = !DILocation(line: 450, column: 8, scope: !3416, inlinedAt: !3814)
!4042 = !DILocation(line: 450, column: 6, scope: !3416, inlinedAt: !3814)
!4043 = !DILocation(line: 451, column: 9, scope: !3416, inlinedAt: !3814)
!4044 = !DILocation(line: 552, column: 3, scope: !3421, inlinedAt: !3815)
!4045 = !DILocation(line: 557, column: 19, scope: !3423, inlinedAt: !3815)
!4046 = !DILocation(line: 557, column: 25, scope: !3423, inlinedAt: !3815)
!4047 = !DILocation(line: 557, column: 9, scope: !3423, inlinedAt: !3815)
!4048 = !DILocation(line: 557, column: 2, scope: !3423, inlinedAt: !3815)
!4049 = !DILocation(line: 558, column: 1, scope: !3423, inlinedAt: !3815)
!4050 = !DILocation(line: 48, column: 7, scope: !3810)
!4051 = !DILocation(line: 48, column: 5, scope: !3810)
!4052 = !DILocation(line: 49, column: 7, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 49, column: 6)
!4054 = !DILocation(line: 49, column: 6, scope: !3810)
!4055 = !DILocation(line: 50, column: 3, scope: !4053)
!4056 = !DILocation(line: 56, column: 35, scope: !3810)
!4057 = !DILocation(line: 57, column: 20, scope: !3810)
!4058 = !DILocation(line: 57, column: 23, scope: !3810)
!4059 = !DILocation(line: 57, column: 18, scope: !3810)
!4060 = !DILocation(line: 57, column: 7, scope: !3810)
!4061 = !DILocation(line: 58, column: 7, scope: !3810)
!4062 = !DILocation(line: 58, column: 11, scope: !3810)
!4063 = !DILocation(line: 56, column: 8, scope: !3810)
!4064 = !DILocation(line: 56, column: 6, scope: !3810)
!4065 = !DILocation(line: 59, column: 6, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 59, column: 6)
!4067 = !DILocation(line: 59, column: 6, scope: !3810)
!4068 = !DILocation(line: 60, column: 3, scope: !4066)
!4069 = !DILocation(line: 62, column: 6, scope: !3810)
!4070 = !DILocation(line: 63, column: 45, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 63, column: 6)
!4072 = !DILocation(line: 63, column: 34, scope: !4071)
!4073 = !DILocation(line: 63, column: 49, scope: !4071)
!4074 = !DILocation(line: 63, column: 54, scope: !4071)
!4075 = !DILocation(line: 63, column: 58, scope: !4071)
!4076 = !DILocation(line: 63, column: 7, scope: !4071)
!4077 = !DILocation(line: 64, column: 6, scope: !4071)
!4078 = !DILocation(line: 64, column: 3, scope: !4071)
!4079 = !DILocation(line: 63, column: 6, scope: !3810)
!4080 = !DILocation(line: 65, column: 3, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !1, line: 65, column: 3)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !1, line: 65, column: 3)
!4083 = distinct !DILexicalBlock(scope: !4071, file: !1, line: 64, column: 29)
!4084 = !DILocation(line: 65, column: 3, scope: !4082)
!4085 = !DILocation(line: 66, column: 3, scope: !4083)
!4086 = !DILocation(line: 73, column: 14, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 73, column: 6)
!4088 = !DILocation(line: 73, column: 18, scope: !4087)
!4089 = !DILocation(line: 73, column: 6, scope: !4087)
!4090 = !DILocation(line: 73, column: 6, scope: !3810)
!4091 = !DILocation(line: 74, column: 3, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !1, line: 74, column: 3)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !1, line: 74, column: 3)
!4094 = distinct !DILexicalBlock(scope: !4087, file: !1, line: 73, column: 35)
!4095 = !DILocation(line: 74, column: 3, scope: !4093)
!4096 = !DILocation(line: 75, column: 3, scope: !4094)
!4097 = !DILocation(line: 79, column: 23, scope: !3810)
!4098 = !DILocation(line: 79, column: 26, scope: !3810)
!4099 = !DILocation(line: 79, column: 11, scope: !3810)
!4100 = !DILocation(line: 79, column: 9, scope: !3810)
!4101 = !DILocation(line: 80, column: 9, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 80, column: 2)
!4103 = !DILocation(line: 80, column: 7, scope: !4102)
!4104 = !DILocation(line: 80, column: 14, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4102, file: !1, line: 80, column: 2)
!4106 = !DILocation(line: 80, column: 16, scope: !4105)
!4107 = !DILocation(line: 80, column: 2, scope: !4102)
!4108 = !DILocation(line: 81, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !1, line: 80, column: 45)
!4110 = !DILocation(line: 81, column: 11, scope: !4109)
!4111 = !DILocation(line: 81, column: 22, scope: !4109)
!4112 = !DILocation(line: 81, column: 20, scope: !4109)
!4113 = !DILocation(line: 81, column: 5, scope: !4109)
!4114 = !DILocation(line: 82, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 82, column: 7)
!4116 = !DILocation(line: 82, column: 10, scope: !4115)
!4117 = !DILocation(line: 82, column: 15, scope: !4115)
!4118 = !DILocation(line: 82, column: 7, scope: !4109)
!4119 = !DILocation(line: 83, column: 4, scope: !4115)
!4120 = !DILocation(line: 84, column: 13, scope: !4109)
!4121 = !DILocation(line: 84, column: 16, scope: !4109)
!4122 = !DILocation(line: 84, column: 23, scope: !4109)
!4123 = !DILocation(line: 84, column: 10, scope: !4109)
!4124 = !DILocation(line: 85, column: 2, scope: !4109)
!4125 = !DILocation(line: 80, column: 41, scope: !4105)
!4126 = !DILocation(line: 80, column: 2, scope: !4105)
!4127 = distinct !{!4127, !4107, !4128}
!4128 = !DILocation(line: 85, column: 2, scope: !4102)
!4129 = !DILocation(line: 86, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 86, column: 6)
!4131 = !DILocation(line: 86, column: 8, scope: !4130)
!4132 = !DILocation(line: 86, column: 6, scope: !3810)
!4133 = !DILocation(line: 87, column: 3, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !1, line: 87, column: 3)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !1, line: 87, column: 3)
!4136 = distinct !DILexicalBlock(scope: !4130, file: !1, line: 86, column: 33)
!4137 = !DILocation(line: 87, column: 3, scope: !4135)
!4138 = !DILocation(line: 88, column: 3, scope: !4136)
!4139 = !DILocation(line: 92, column: 36, scope: !3810)
!4140 = !DILocation(line: 92, column: 8, scope: !3810)
!4141 = !DILocation(line: 92, column: 6, scope: !3810)
!4142 = !DILocation(line: 94, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 94, column: 6)
!4144 = !DILocation(line: 94, column: 12, scope: !4143)
!4145 = !DILocation(line: 94, column: 6, scope: !3810)
!4146 = !DILocation(line: 95, column: 3, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !1, line: 95, column: 3)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !1, line: 95, column: 3)
!4149 = distinct !DILexicalBlock(scope: !4143, file: !1, line: 94, column: 27)
!4150 = !DILocation(line: 95, column: 3, scope: !4148)
!4151 = !DILocation(line: 96, column: 3, scope: !4149)
!4152 = !DILocation(line: 99, column: 26, scope: !3810)
!4153 = !DILocation(line: 99, column: 31, scope: !3810)
!4154 = !DILocation(line: 99, column: 15, scope: !3810)
!4155 = !DILocation(line: 99, column: 24, scope: !3810)
!4156 = !DILocation(line: 100, column: 32, scope: !3810)
!4157 = !DILocation(line: 100, column: 37, scope: !3810)
!4158 = !DILocation(line: 100, column: 29, scope: !3810)
!4159 = !DILocation(line: 100, column: 15, scope: !3810)
!4160 = !DILocation(line: 100, column: 25, scope: !3810)
!4161 = !DILocation(line: 101, column: 31, scope: !3810)
!4162 = !DILocation(line: 101, column: 2, scope: !3810)
!4163 = !DILocation(line: 103, column: 6, scope: !3810)
!4164 = !DILocation(line: 103, column: 2, scope: !3810)
!4165 = !DILabel(scope: !3810, name: "ext_out", file: !1, line: 105)
!4166 = !DILocation(line: 105, column: 1, scope: !3810)
!4167 = !DILocation(line: 106, column: 8, scope: !3810)
!4168 = !DILocation(line: 106, column: 2, scope: !3810)
!4169 = !DILocation(line: 107, column: 9, scope: !3810)
!4170 = !DILocation(line: 107, column: 2, scope: !3810)
!4171 = !DILocation(line: 108, column: 1, scope: !3810)
!4172 = distinct !DISubprogram(name: "get_order", scope: !4173, file: !4173, line: 29, type: !4174, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4173 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!153, !144}
!4176 = !DILocalVariable(name: "x", arg: 1, scope: !4177, file: !2877, line: 366, type: !207)
!4177 = distinct !DISubprogram(name: "fls64", scope: !2877, file: !2877, line: 366, type: !4178, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!153, !207}
!4180 = !DILocation(line: 366, column: 40, scope: !4177, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 46, column: 9, scope: !4172)
!4182 = !DILocalVariable(name: "bitpos", scope: !4177, file: !2877, line: 368, type: !153)
!4183 = !DILocation(line: 368, column: 6, scope: !4177, inlinedAt: !4181)
!4184 = !DILocalVariable(name: "size", arg: 1, scope: !4172, file: !4173, line: 29, type: !144)
!4185 = !DILocation(line: 29, column: 63, scope: !4172)
!4186 = !DILocation(line: 31, column: 27, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4172, file: !4173, line: 31, column: 6)
!4188 = !DILocation(line: 31, column: 6, scope: !4187)
!4189 = !DILocation(line: 31, column: 6, scope: !4172)
!4190 = !DILocation(line: 32, column: 8, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !4173, line: 32, column: 7)
!4192 = distinct !DILexicalBlock(scope: !4187, file: !4173, line: 31, column: 34)
!4193 = !DILocation(line: 32, column: 7, scope: !4192)
!4194 = !DILocation(line: 33, column: 4, scope: !4191)
!4195 = !DILocation(line: 35, column: 7, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4192, file: !4173, line: 35, column: 7)
!4197 = !DILocation(line: 35, column: 12, scope: !4196)
!4198 = !DILocation(line: 35, column: 7, scope: !4192)
!4199 = !DILocation(line: 36, column: 4, scope: !4196)
!4200 = !DILocation(line: 38, column: 10, scope: !4192)
!4201 = !DILocation(line: 38, column: 28, scope: !4192)
!4202 = !DILocation(line: 38, column: 41, scope: !4192)
!4203 = !DILocation(line: 38, column: 3, scope: !4192)
!4204 = !DILocation(line: 41, column: 6, scope: !4172)
!4205 = !DILocation(line: 42, column: 7, scope: !4172)
!4206 = !DILocation(line: 46, column: 15, scope: !4172)
!4207 = !DILocation(line: 374, column: 2, scope: !4177, inlinedAt: !4181)
!4208 = !DILocation(line: 376, column: 14, scope: !4177, inlinedAt: !4181)
!4209 = !{i32 308606}
!4210 = !DILocation(line: 377, column: 9, scope: !4177, inlinedAt: !4181)
!4211 = !DILocation(line: 377, column: 16, scope: !4177, inlinedAt: !4181)
!4212 = !DILocation(line: 46, column: 2, scope: !4172)
!4213 = !DILocation(line: 48, column: 1, scope: !4172)
!4214 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4215, file: !4215, line: 30, type: !4216, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4215 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!153, !206}
!4218 = !DILocation(line: 366, column: 40, scope: !4177, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 32, column: 9, scope: !4214)
!4220 = !DILocation(line: 368, column: 6, scope: !4177, inlinedAt: !4219)
!4221 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !4215, line: 30, type: !206)
!4222 = !DILocation(line: 30, column: 21, scope: !4214)
!4223 = !DILocation(line: 32, column: 15, scope: !4214)
!4224 = !DILocation(line: 374, column: 2, scope: !4177, inlinedAt: !4219)
!4225 = !DILocation(line: 376, column: 14, scope: !4177, inlinedAt: !4219)
!4226 = !DILocation(line: 377, column: 9, scope: !4177, inlinedAt: !4219)
!4227 = !DILocation(line: 377, column: 16, scope: !4177, inlinedAt: !4219)
!4228 = !DILocation(line: 32, column: 18, scope: !4214)
!4229 = !DILocation(line: 32, column: 2, scope: !4214)
!4230 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1386, file: !1386, line: 137, type: !4231, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!109, !1317, !1658, !140, !95}
!4233 = !DILocalVariable(name: "s", arg: 1, scope: !4230, file: !1386, line: 137, type: !1317)
!4234 = !DILocation(line: 137, column: 54, scope: !4230)
!4235 = !DILocalVariable(name: "object", arg: 2, scope: !4230, file: !1386, line: 137, type: !1658)
!4236 = !DILocation(line: 137, column: 69, scope: !4230)
!4237 = !DILocalVariable(name: "size", arg: 3, scope: !4230, file: !1386, line: 138, type: !140)
!4238 = !DILocation(line: 138, column: 12, scope: !4230)
!4239 = !DILocalVariable(name: "flags", arg: 4, scope: !4230, file: !1386, line: 138, type: !95)
!4240 = !DILocation(line: 138, column: 24, scope: !4230)
!4241 = !DILocation(line: 140, column: 17, scope: !4230)
!4242 = !DILocation(line: 140, column: 2, scope: !4230)
!4243 = distinct !DISubprogram(name: "__set_bit", scope: !4244, file: !4244, line: 25, type: !4245, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4244 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4245 = !DISubroutineType(types: !4246)
!4246 = !{null, !128, !4247}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!4249 = !DILocalVariable(name: "nr", arg: 1, scope: !4250, file: !2877, line: 66, type: !128)
!4250 = distinct !DISubprogram(name: "arch___set_bit", scope: !2877, file: !2877, line: 66, type: !4245, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4251 = !DILocation(line: 66, column: 21, scope: !4250, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 28, column: 2, scope: !4243)
!4253 = !DILocalVariable(name: "addr", arg: 2, scope: !4250, file: !2877, line: 66, type: !4247)
!4254 = !DILocation(line: 66, column: 49, scope: !4250, inlinedAt: !4252)
!4255 = !DILocalVariable(name: "v", arg: 1, scope: !4256, file: !4257, line: 39, type: !4260)
!4256 = distinct !DISubprogram(name: "instrument_write", scope: !4257, file: !4257, line: 39, type: !4258, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4257 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4260, !140}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!4262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4263 = !DILocation(line: 39, column: 67, scope: !4256, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 27, column: 2, scope: !4243)
!4265 = !DILocalVariable(name: "size", arg: 2, scope: !4256, file: !4257, line: 39, type: !140)
!4266 = !DILocation(line: 39, column: 77, scope: !4256, inlinedAt: !4264)
!4267 = !DILocalVariable(name: "nr", arg: 1, scope: !4243, file: !4244, line: 25, type: !128)
!4268 = !DILocation(line: 25, column: 35, scope: !4243)
!4269 = !DILocalVariable(name: "addr", arg: 2, scope: !4243, file: !4244, line: 25, type: !4247)
!4270 = !DILocation(line: 25, column: 63, scope: !4243)
!4271 = !DILocation(line: 27, column: 19, scope: !4243)
!4272 = !DILocation(line: 27, column: 26, scope: !4243)
!4273 = !DILocation(line: 27, column: 24, scope: !4243)
!4274 = !DILocation(line: 41, column: 20, scope: !4256, inlinedAt: !4264)
!4275 = !DILocation(line: 41, column: 23, scope: !4256, inlinedAt: !4264)
!4276 = !DILocation(line: 41, column: 2, scope: !4256, inlinedAt: !4264)
!4277 = !DILocation(line: 42, column: 2, scope: !4256, inlinedAt: !4264)
!4278 = !DILocation(line: 28, column: 17, scope: !4243)
!4279 = !DILocation(line: 28, column: 21, scope: !4243)
!4280 = !DILocation(line: 68, column: 44, scope: !4250, inlinedAt: !4252)
!4281 = !DILocation(line: 68, column: 56, scope: !4250, inlinedAt: !4252)
!4282 = !DILocation(line: 68, column: 2, scope: !4250, inlinedAt: !4252)
!4283 = !{i32 -2147142979}
!4284 = !DILocation(line: 29, column: 1, scope: !4243)
!4285 = distinct !DISubprogram(name: "kasan_check_write", scope: !4286, file: !4286, line: 38, type: !4287, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4286 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!379, !4260, !5}
!4289 = !DILocalVariable(name: "p", arg: 1, scope: !4285, file: !4286, line: 38, type: !4260)
!4290 = !DILocation(line: 38, column: 59, scope: !4285)
!4291 = !DILocalVariable(name: "size", arg: 2, scope: !4285, file: !4286, line: 38, type: !5)
!4292 = !DILocation(line: 38, column: 75, scope: !4285)
!4293 = !DILocation(line: 40, column: 2, scope: !4285)
!4294 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4295, file: !4295, line: 178, type: !4296, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !145)
!4295 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !4260, !140, !153}
!4298 = !DILocalVariable(name: "ptr", arg: 1, scope: !4294, file: !4295, line: 178, type: !4260)
!4299 = !DILocation(line: 178, column: 60, scope: !4294)
!4300 = !DILocalVariable(name: "size", arg: 2, scope: !4294, file: !4295, line: 178, type: !140)
!4301 = !DILocation(line: 178, column: 72, scope: !4294)
!4302 = !DILocalVariable(name: "type", arg: 3, scope: !4294, file: !4295, line: 179, type: !153)
!4303 = !DILocation(line: 179, column: 15, scope: !4294)
!4304 = !DILocation(line: 179, column: 23, scope: !4294)
